uint64_t sub_2575B3640()
{

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__scale, &qword_27F87A1A0, &qword_257745750);

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, &qword_27F87A1A0, &qword_257745750);
  return v0;
}

void sub_2575B3700(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87BFC0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2575B37DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_2575E28E8(a2, a1, a3, a4, MEMORY[0x277D217B8]);
        break;
      case 2:
        sub_2575B390C(a2, a1, a3, a4);
        break;
      case 3:
        sub_2575CBF70(a2, a1, a3, a4, &OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p);
        break;
      case 4:
        sub_2575B39E8(a2, a1, a3, a4, &OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shapeBias);
        break;
      case 5:
        sub_2575B3A40(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2575B390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

void sub_2575B39E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_404_0();
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_1();
  v5 = sub_257743354();
  OUTLINED_FUNCTION_306_0(v5);
  OUTLINED_FUNCTION_405_0();
}

uint64_t sub_2575B3A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575B3B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(*(a1 + 16) + 16) || (, sub_2577434A4(), result = , !v4))
  {
    result = sub_2575B3C8C(a1, a2, a3, a4);
    if (!v4)
    {
      v10 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
      swift_beginAccess();
      if (*(a1 + v10) == 1)
      {
        sub_2577434B4();
      }

      v11 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__shapeBias;
      swift_beginAccess();
      if (*(*(a1 + v11) + 16))
      {

        sub_2577434A4();
      }

      return sub_2575B3E80(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_2575B3C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__scale;
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

uint64_t sub_2575B3E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
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

BOOL sub_2575B40A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v39[2] = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v40 = v39 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v20 = v39 - v19;
  swift_beginAccess();
  swift_beginAccess();
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  v39[1] = v6;
  v39[0] = v10;
  v21 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__scale;
  swift_beginAccess();
  v41 = v4;
  sub_257487308(a1 + v21);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__scale;
  swift_beginAccess();
  v23 = *(v7 + 48);
  sub_257487308(v20);
  v24 = a2 + v22;
  v25 = v41;
  sub_257487308(v24);
  if (__swift_getEnumTagSinglePayload(v12, 1, v25) != 1)
  {
    sub_257487308(v12);
    if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v25) != 1)
    {
      sub_257609B78();

      sub_257598490();
      v27 = v26;
      sub_257609BCC();
      sub_2574695E4(v20, &qword_27F87A1A0, &qword_257745750);
      sub_257609BCC();
      sub_2574695E4(v12, &qword_27F87A1A0, &qword_257745750);
      if (v27)
      {
        goto LABEL_9;
      }

LABEL_14:

      return 0;
    }

    sub_2574695E4(v20, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
LABEL_7:
    sub_2574695E4(v12, &qword_27F87FA30, &qword_2577673D8);
    goto LABEL_14;
  }

  sub_2574695E4(v20, &qword_27F87A1A0, &qword_257745750);
  if (__swift_getEnumTagSinglePayload(&v12[v23], 1, v25) != 1)
  {
    goto LABEL_7;
  }

  sub_2574695E4(v12, &qword_27F87A1A0, &qword_257745750);
LABEL_9:
  v28 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  swift_beginAccess();
  LODWORD(v28) = *(a1 + v28);
  v29 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  swift_beginAccess();
  if (v28 != *(a2 + v29))
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  swift_beginAccess();
  if ((sub_257487374() & 1) == 0)
  {
    goto LABEL_14;
  }

  v30 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  swift_beginAccess();
  v31 = v40;
  sub_257487308(a1 + v30);
  v32 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_ScaleLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  swift_beginAccess();
  v33 = *(v7 + 48);
  v34 = v39[0];
  sub_257487308(v31);
  sub_257487308(a2 + v32);
  v35 = v41;
  if (__swift_getEnumTagSinglePayload(v34, 1, v41) == 1)
  {

    sub_2574695E4(v31, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(v34 + v33, 1, v35) == 1)
    {
      sub_2574695E4(v34, &qword_27F87A1A0, &qword_257745750);
      return 1;
    }

    goto LABEL_19;
  }

  sub_257487308(v34);
  if (__swift_getEnumTagSinglePayload(v34 + v33, 1, v35) == 1)
  {

    sub_2574695E4(v31, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
LABEL_19:
    sub_2574695E4(v34, &qword_27F87FA30, &qword_2577673D8);
    return 0;
  }

  sub_257609B78();
  sub_257598490();
  v38 = v37;

  sub_257609BCC();
  sub_2574695E4(v31, &qword_27F87A1A0, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v34, &qword_27F87A1A0, &qword_257745750);
  return (v38 & 1) != 0;
}

uint64_t sub_2575B4904(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F008, type metadata accessor for Proto_ScaleLayerParams, &unk_25775D368);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B49A4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E068, type metadata accessor for Proto_ScaleLayerParams, &unk_257763770);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B4A6C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87E068, type metadata accessor for Proto_ScaleLayerParams, &unk_257763770);

  return sub_257743424();
}

uint64_t sub_2575B4B2C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9288);
  __swift_project_value_buffer(v0, qword_27F8E9288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shape";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B4CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_LoadConstantLayerParams(0);
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  return sub_2577433D4();
}

uint64_t sub_2575B4DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  ConstantLayerParams = type metadata accessor for Proto_LoadConstantLayerParams(0);
  sub_257487308(a1 + *(ConstantLayerParams + 24));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575B507C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F818, type metadata accessor for Proto_LoadConstantLayerParams, &unk_25775D278);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B511C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E050, type metadata accessor for Proto_LoadConstantLayerParams, &unk_2577615B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B51E4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87E050, type metadata accessor for Proto_LoadConstantLayerParams, &unk_2577615B0);

  return sub_257743424();
}

uint64_t sub_2575B52AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_164_1(a1);
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

uint64_t sub_2575B53A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EEC8, type metadata accessor for Proto_L2NormalizeLayerParams, &unk_25775D188);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B5444(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E038, type metadata accessor for Proto_L2NormalizeLayerParams, &unk_2577647D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B550C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87E038, type metadata accessor for Proto_L2NormalizeLayerParams, &unk_2577647D8);

  return sub_257743424();
}

uint64_t sub_2575B563C()
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_224();
  if (v5)
  {
    v2 = v4;
  }

  if (v3 == 1)
  {
    if (v1)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v1)
  {
    return 0;
  }

  v0(0);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575B57AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F728, type metadata accessor for Proto_FlattenLayerParams, &unk_25775D098);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B584C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E020, type metadata accessor for Proto_FlattenLayerParams, &unk_2577621E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B5914(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87E020, type metadata accessor for Proto_FlattenLayerParams, &unk_2577621E0);

  return sub_257743424();
}

uint64_t sub_2575B59C0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E92D0);
  __swift_project_value_buffer(v0, qword_27F8E92D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CHANNEL_FIRST";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CHANNEL_LAST";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B5BAC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E92E8);
  __swift_project_value_buffer(v0, qword_27F8E92E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "targetShape";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mode";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575B5DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_415_0();
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_8_6(), sub_257743484(), !v3))
  {
    if (!*(v4 + 8) || (OUTLINED_FUNCTION_184_1(), sub_25760A10C(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v3))
    {
      type metadata accessor for Proto_ReshapeLayerParams(0);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_414_0();
}

uint64_t sub_2575B5E74(uint64_t a1)
{
  OUTLINED_FUNCTION_7_8(a1);
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_224();
  if (v5)
  {
    v2 = v4;
  }

  if (v3 == 1)
  {
    if (v1)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v1)
  {
    return 0;
  }

  type metadata accessor for Proto_ReshapeLayerParams(0);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575B5FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F1F8, type metadata accessor for Proto_ReshapeLayerParams, &unk_25775CF80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B6040(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87E008, type metadata accessor for Proto_ReshapeLayerParams, &unk_2577625A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B6108(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87E008, type metadata accessor for Proto_ReshapeLayerParams, &unk_2577625A0);

  return sub_257743424();
}

uint64_t sub_2575B6188()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9300);
  __swift_project_value_buffer(v0, qword_27F8E9300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CHANNEL_FIRST";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CHANNEL_LAST";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B6424(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F708, type metadata accessor for Proto_PermuteLayerParams, &unk_25775CE68);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B64C4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DFF0, type metadata accessor for Proto_PermuteLayerParams, &unk_2577623C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B658C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DFF0, type metadata accessor for Proto_PermuteLayerParams, &unk_2577623C0);

  return sub_257743424();
}

uint64_t sub_2575B664C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9330);
  __swift_project_value_buffer(v0, qword_27F8E9330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mode";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "blockSize";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B6814()
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
      OUTLINED_FUNCTION_112_1();
      sub_2577433B4();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2575B6878(v3, v4);
    }
  }

  return result;
}

uint64_t sub_2575B69C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED38, type metadata accessor for Proto_ReorganizeDataLayerParams, &unk_25775CD78);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B6A60(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A260, type metadata accessor for Proto_ReorganizeDataLayerParams, &unk_257765CF0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B6B28(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A260, type metadata accessor for Proto_ReorganizeDataLayerParams, &unk_257765CF0);

  return sub_257743424();
}

uint64_t sub_2575B6BA8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9348);
  __swift_project_value_buffer(v0, qword_27F8E9348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SPACE_TO_DEPTH";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DEPTH_TO_SPACE";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PIXEL_SHUFFLE";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B6DD0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9360);
  __swift_project_value_buffer(v0, qword_27F8E9360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startIndex";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endIndex";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stride";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "axis";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B7010()
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
        sub_2577433B4();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2575B70AC(v3, v4);
        break;
      default:
        continue;
    }
  }
}

void sub_2575B7114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_415_0();
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), sub_257743504(), !v3))
  {
    if (!v4[1] || (OUTLINED_FUNCTION_12_11(), sub_257743504(), !v3))
    {
      if (!v4[2] || (OUTLINED_FUNCTION_12_8(), sub_257743554(), !v3))
      {
        if (!v4[3] || (OUTLINED_FUNCTION_184_1(), sub_257609E18(), OUTLINED_FUNCTION_27_4(), sub_2577434C4(), !v3))
        {
          type metadata accessor for Proto_SliceLayerParams(0);
          OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_414_0();
}

uint64_t sub_2575B71DC()
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

  OUTLINED_FUNCTION_332_0();
  if (!v2 || !sub_257487360(*(v1 + 24), *(v1 + 32), *(v0 + 24)))
  {
    return 0;
  }

  type metadata accessor for Proto_SliceLayerParams(0);
  OUTLINED_FUNCTION_189_0();
  OUTLINED_FUNCTION_1_16();
  v5 = sub_2575FB760(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v5) & 1;
}

uint64_t sub_2575B72C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF00, type metadata accessor for Proto_SliceLayerParams, &unk_25775CC60);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B7364(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DFC8, type metadata accessor for Proto_SliceLayerParams, &unk_257764508);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B742C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DFC8, type metadata accessor for Proto_SliceLayerParams, &unk_257764508);

  return sub_257743424();
}

uint64_t sub_2575B74AC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9378);
  __swift_project_value_buffer(v0, qword_27F8E9378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CHANNEL_AXIS";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HEIGHT_AXIS";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WIDTH_AXIS";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B76D4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9390);
  __swift_project_value_buffer(v0, qword_27F8E9390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mode";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "epsilon";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "axis";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B78DC()
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
        v5 = OUTLINED_FUNCTION_6_8();
        sub_2575B79C4(v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_10_7();
        sub_2577432E4();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2575B795C(v3, v4);
        break;
    }
  }

  return result;
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV16ReduceParametersV2eeoiySbAG_AGtFZ_0()
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_387_0();
  if (*(v4 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v2 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v2 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v2 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v2 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v2 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v2 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v2 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v2)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v2 == v3)
  {
LABEL_6:
    OUTLINED_FUNCTION_172_0();
    if (v5)
    {
      v6 = *(v1 + 16);
      v7 = *(v0 + 16);
      if (*(v0 + 24) == 1)
      {
        switch(v7)
        {
          case 1:
            if (v6 != 1)
            {
              return 0;
            }

            goto LABEL_13;
          case 2:
            if (v6 != 2)
            {
              return 0;
            }

            goto LABEL_13;
          case 3:
            if (v6 != 3)
            {
              return 0;
            }

            goto LABEL_13;
          case 4:
            if (v6 != 4)
            {
              return 0;
            }

            goto LABEL_13;
          default:
            if (!v6)
            {
              goto LABEL_13;
            }

            return 0;
        }
      }

      if (v6 == v7)
      {
LABEL_13:
        type metadata accessor for Proto_ReduceLayerParams(0);
        OUTLINED_FUNCTION_327_0();
        OUTLINED_FUNCTION_1_16();
        v10 = sub_2575FB760(v8, v9, MEMORY[0x277D216D0]);
        return OUTLINED_FUNCTION_4_2(v10) & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2575B7CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE30, type metadata accessor for Proto_ReduceLayerParams, &unk_25775CB48);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B7D7C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DFB0, type metadata accessor for Proto_ReduceLayerParams, &unk_257764EE0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B7E44(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DFB0, type metadata accessor for Proto_ReduceLayerParams, &unk_257764EE0);

  return sub_257743424();
}

uint64_t sub_2575B7EC4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E93A8);
  __swift_project_value_buffer(v0, qword_27F8E93A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25774B5E0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v4 = "SUM";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 1;
  *v8 = "AVG";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "PROD";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "LOGSUM";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SUMSQUARE";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "L1";
  *(v16 + 1) = 2;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "L2";
  *(v18 + 1) = 2;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "MAX";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "MIN";
  *(v22 + 1) = 3;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ARGMAX";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_2575B8284()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E93C0);
  __swift_project_value_buffer(v0, qword_27F8E93C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CHW";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HW";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "C";
  *(v12 + 1) = 1;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "H";
  *(v14 + 1) = 1;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "W";
  *(v16 + 1) = 1;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B8518()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E93D8);
  __swift_project_value_buffer(v0, qword_27F8E93D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cropAmounts";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "offset";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B86E4()
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

    if (result == 5)
    {
      OUTLINED_FUNCTION_53();
      sub_257743354();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_2575B8748(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2575B8748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_CropLayerParams(0);
  type metadata accessor for Proto_BorderAmounts(0);
  sub_2575FB760(&qword_27F87E368, type metadata accessor for Proto_BorderAmounts, &unk_257763BA8);
  return sub_2577433D4();
}

uint64_t sub_2575B87FC()
{
  OUTLINED_FUNCTION_5_8();
  v4 = OUTLINED_FUNCTION_313_0();
  result = sub_2575B8884(v4, v5, v3, v2);
  if (!v1)
  {
    if (*(*v0 + 16))
    {
      OUTLINED_FUNCTION_12_8();
      sub_2577434A4();
    }

    type metadata accessor for Proto_CropLayerParams(0);
    return OUTLINED_FUNCTION_7_5();
  }

  return result;
}

uint64_t sub_2575B8884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AC8, &unk_257744010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_BorderAmounts(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_CropLayerParams(0);
  sub_257487308(a1 + *(v9 + 24));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879AC8, &unk_257744010);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E368, type metadata accessor for Proto_BorderAmounts, &unk_257763BA8);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575B8AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED18, type metadata accessor for Proto_CropLayerParams, &unk_25775CA08);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B8B90(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A210, type metadata accessor for Proto_CropLayerParams, &unk_257765ED0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B8C58(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A210, type metadata accessor for Proto_CropLayerParams, &unk_257765ED0);

  return sub_257743424();
}

uint64_t sub_2575B8D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE18, type metadata accessor for Proto_AverageLayerParams, &unk_25775C918);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B8DA0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DF88, type metadata accessor for Proto_AverageLayerParams, &unk_257765048);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B8E68(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DF88, type metadata accessor for Proto_AverageLayerParams, &unk_257765048);

  return sub_257743424();
}

uint64_t sub_2575B8F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE20, type metadata accessor for Proto_MaxLayerParams, &unk_25775C828);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B8FAC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DF70, type metadata accessor for Proto_MaxLayerParams, &unk_257764FD0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B9074(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DF70, type metadata accessor for Proto_MaxLayerParams, &unk_257764FD0);

  return sub_257743424();
}

uint64_t sub_2575B9118(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE28, type metadata accessor for Proto_MinLayerParams, &unk_25775C738);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B91B8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DF58, type metadata accessor for Proto_MinLayerParams, &unk_257764F58);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B9280(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DF58, type metadata accessor for Proto_MinLayerParams, &unk_257764F58);

  return sub_257743424();
}

void sub_2575B9318()
{
  OUTLINED_FUNCTION_188_0();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  if (*v0 != 1 || (OUTLINED_FUNCTION_12_8(), sub_2577434B4(), !v1))
  {
    v3(0);
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575B938C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_0_0();
  v4(v3);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v7 = sub_2575FB760(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v7) & 1;
}

uint64_t sub_2575B9484(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE78, type metadata accessor for Proto_DotProductLayerParams, &unk_25775C648);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B9524(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DF40, type metadata accessor for Proto_DotProductLayerParams, &unk_257764B98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B95EC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DF40, type metadata accessor for Proto_DotProductLayerParams, &unk_257764B98);

  return sub_257743424();
}

uint64_t sub_2575B9698()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9450);
  __swift_project_value_buffer(v0, qword_27F8E9450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "acrossChannels";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalizeVariance";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "epsilon";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575B98A0()
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
      OUTLINED_FUNCTION_10_7();
      sub_2577432E4();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743274();
    }
  }

  return result;
}

uint64_t sub_2575B991C()
{
  OUTLINED_FUNCTION_2_7();
  if (*v0 != 1 || (OUTLINED_FUNCTION_8_6(), result = sub_2577434B4(), !v1))
  {
    if (*(v2 + 1) != 1 || (OUTLINED_FUNCTION_12_11(), result = sub_2577434B4(), !v1))
    {
      OUTLINED_FUNCTION_305_0();
      if (!v4 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v1))
      {
        type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575B99C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v4 + 1) != *(v5 + 1) || *(v3 + 4) != *(v2 + 4))
  {
    return 0;
  }

  type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v8 = sub_2575FB760(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v8) & 1;
}

uint64_t sub_2575B9AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F030, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams, &unk_25775C598);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B9B50(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DF30, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams, &unk_257763518);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B9C18(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DF30, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams, &unk_257763518);

  return sub_257743424();
}

void sub_2575B9CB4()
{
  OUTLINED_FUNCTION_188_0();
  v2 = v1;
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), v3(), !v0))
  {
    v2(0);
    OUTLINED_FUNCTION_7_5();
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575B9DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED30, type metadata accessor for Proto_SequenceRepeatLayerParams, &unk_25775C4E8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575B9E4C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A258, type metadata accessor for Proto_SequenceRepeatLayerParams, &unk_257765D68);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575B9F14(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A258, type metadata accessor for Proto_SequenceRepeatLayerParams, &unk_257765D68);

  return sub_257743424();
}

uint64_t sub_2575B9FC0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9480);
  __swift_project_value_buffer(v0, qword_27F8E9480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257748730;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inputVectorSize";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "outputVectorSize";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "activation";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 15;
  *v14 = "sequenceOutput";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 20;
  *v16 = "hasBiasVector";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 30;
  *v18 = "weightMatrix";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 31;
  *v20 = "recursionMatrix";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 32;
  *v22 = "biasVector";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 100;
  *v24 = "reverseInput";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575BA370()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__activation;
  v2 = type metadata accessor for Proto_ActivationParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput) = 0;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p) = 0;
  v3 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weightMatrix;
  v4 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__recursionMatrix, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__biasVector, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput) = 0;
  return v0;
}

uint64_t sub_2575BA444(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ED10, &qword_257766D88);
  MEMORY[0x28223BE20](v4 - 8);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v5 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__activation;
  v6 = type metadata accessor for Proto_ActivationParams(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v19 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput) = 0;
  v20 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p) = 0;
  v7 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weightMatrix;
  v8 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__recursionMatrix, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__biasVector, 1, 1, v8);
  v21 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput) = 0;
  swift_beginAccess();
  v9 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v9;
  swift_beginAccess();
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v10;
  v11 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__activation;
  swift_beginAccess();
  sub_257487308(a1 + v11);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput;
  swift_beginAccess();
  LOBYTE(v12) = *(a1 + v12);
  swift_beginAccess();
  *(v1 + v19) = v12;
  v13 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + v13);
  swift_beginAccess();
  *(v1 + v20) = v13;
  v14 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weightMatrix;
  swift_beginAccess();
  sub_257487308(a1 + v14);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__recursionMatrix;
  swift_beginAccess();
  sub_257487308(a1 + v15);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__biasVector;
  swift_beginAccess();
  sub_257487308(a1 + v16);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + v17);

  swift_beginAccess();
  *(v1 + v21) = v17;
  return v1;
}

uint64_t sub_2575BA8C4()
{
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__activation, &qword_27F87ED10, &qword_257766D88);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weightMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__recursionMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__biasVector, &qword_27F87A1A0, &qword_257745750);
  return v0;
}

void sub_2575BA9A4(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87C140, type metadata accessor for Proto_ActivationParams, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25759B3F4(319, &qword_27F87BFC0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2575BAB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 100:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
LABEL_17:
        sub_2575CBF70(v11, v12, v13, v14, v15);
        break;
      case 2:
        sub_2575CBCAC();
        break;
      case 10:
        sub_2575BACCC(a2, a1, a3, a4);
        break;
      case 15:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput;
        goto LABEL_17;
      case 20:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p;
        goto LABEL_17;
      case 30:
        sub_2575BADA8(a2, a1, a3, a4);
        break;
      case 31:
        sub_2575BAE84(a2, a1, a3, a4);
        break;
      case 32:
        sub_2575BAF60(a2, a1, a3, a4);
        break;
      case 1:
        sub_2575E28E8(a2, a1, a3, a4, MEMORY[0x277D217F8]);
        break;
    }
  }
}

uint64_t sub_2575BACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_ActivationParams(0);
  sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams, &unk_257763428);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BAE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BAF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BB03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_257743554(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_257743554(), !v4))
    {
      result = sub_2575BB250(a1, a2, a3, a4);
      if (!v4)
      {
        v10 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput;
        swift_beginAccess();
        if (*(a1 + v10) == 1)
        {
          sub_2577434B4();
        }

        v11 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p;
        swift_beginAccess();
        if (*(a1 + v11) == 1)
        {
          sub_2577434B4();
        }

        sub_2575BB444(a1, a2, a3, a4);
        sub_2575BB638(a1, a2, a3, a4);
        sub_2575BB82C(a1, a2, a3, a4);
        v12 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
        result = swift_beginAccess();
        if (*(a1 + v12) == 1)
        {
          return sub_2577434B4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2575BB250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ED10, &qword_257766D88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_ActivationParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__activation;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87ED10, &qword_257766D88);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams, &unk_257763428);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575BB444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weightMatrix;
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

uint64_t sub_2575BB638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__recursionMatrix;
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

uint64_t sub_2575BB82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__biasVector;
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

uint64_t sub_2575BBA20(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v86);
  v81 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  v5 = MEMORY[0x28223BE20](v87);
  v77 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v79 = v76 - v8;
  MEMORY[0x28223BE20](v7);
  v85 = v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v76[1] = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v80 = v76 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v78 = v76 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v83 = v76 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v82 = v76 - v20;
  MEMORY[0x28223BE20](v19);
  v84 = v76 - v21;
  v22 = type metadata accessor for Proto_ActivationParams(0);
  MEMORY[0x28223BE20](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA88, &unk_257767440);
  MEMORY[0x28223BE20](v23);
  v25 = v76 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ED10, &qword_257766D88);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v76 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  swift_beginAccess();
  if (v30 != *(a2 + 16))
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v31 = *(a1 + 24);
  swift_beginAccess();
  if (v31 != *(a2 + 24))
  {
    goto LABEL_13;
  }

  v32 = a1;
  v33 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__activation;
  swift_beginAccess();
  sub_257487308(v32 + v33);
  v34 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__activation;
  swift_beginAccess();
  v35 = *(v23 + 48);
  sub_257487308(v29);
  sub_257487308(a2 + v34);
  if (__swift_getEnumTagSinglePayload(v25, 1, v22) == 1)
  {

    sub_2574695E4(v29, &qword_27F87ED10, &qword_257766D88);
    if (__swift_getEnumTagSinglePayload(&v25[v35], 1, v22) == 1)
    {
      sub_2574695E4(v25, &qword_27F87ED10, &qword_257766D88);
      v36 = v32;
      goto LABEL_10;
    }

LABEL_8:
    sub_2574695E4(v25, &qword_27F87FA88, &unk_257767440);
    goto LABEL_12;
  }

  sub_257487308(v25);
  if (__swift_getEnumTagSinglePayload(&v25[v35], 1, v22) == 1)
  {

    sub_2574695E4(v29, &qword_27F87ED10, &qword_257766D88);
    sub_257609BCC();
    goto LABEL_8;
  }

  sub_257609B78();
  v36 = v32;

  sub_2575401C0();
  v38 = v37;
  sub_257609BCC();
  sub_2574695E4(v29, &qword_27F87ED10, &qword_257766D88);
  sub_257609BCC();
  sub_2574695E4(v25, &qword_27F87ED10, &qword_257766D88);
  if ((v38 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v39 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput;
  swift_beginAccess();
  LODWORD(v39) = *(v36 + v39);
  v40 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__sequenceOutput;
  swift_beginAccess();
  if (v39 != *(a2 + v40))
  {
    goto LABEL_12;
  }

  v41 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p;
  swift_beginAccess();
  LODWORD(v41) = *(v36 + v41);
  v42 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBiasVector_p;
  swift_beginAccess();
  if (v41 != *(a2 + v42))
  {
    goto LABEL_12;
  }

  v45 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weightMatrix;
  swift_beginAccess();
  v76[0] = v36;
  v46 = v36 + v45;
  v47 = v84;
  sub_257487308(v46);
  v48 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weightMatrix;
  swift_beginAccess();
  v49 = *(v87 + 48);
  v50 = v85;
  sub_257487308(v47);
  sub_257487308(a2 + v48);
  v51 = v86;
  if (__swift_getEnumTagSinglePayload(v50, 1, v86) == 1)
  {
    sub_2574695E4(v47, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(v50 + v49, 1, v51) == 1)
    {
      sub_2574695E4(v50, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_22;
    }

LABEL_20:
    v52 = v50;
LABEL_35:
    sub_2574695E4(v52, &qword_27F87FA30, &qword_2577673D8);
    goto LABEL_12;
  }

  sub_257487308(v50);
  if (__swift_getEnumTagSinglePayload(v50 + v49, 1, v51) == 1)
  {
    sub_2574695E4(v47, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    goto LABEL_20;
  }

  sub_257609B78();
  sub_257598490();
  v54 = v53;
  sub_257609BCC();
  sub_2574695E4(v47, &qword_27F87A1A0, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v50, &qword_27F87A1A0, &qword_257745750);
  if ((v54 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_22:
  v55 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__recursionMatrix;
  v56 = v76[0];
  swift_beginAccess();
  v57 = v83;
  sub_257487308(v56 + v55);
  v58 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__recursionMatrix;
  swift_beginAccess();
  v59 = *(v87 + 48);
  v60 = v79;
  sub_257487308(v57);
  sub_257487308(a2 + v58);
  if (__swift_getEnumTagSinglePayload(v60, 1, v51) == 1)
  {
    sub_2574695E4(v57, &qword_27F87A1A0, &qword_257745750);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60 + v59, 1, v51);
    v62 = v80;
    if (EnumTagSinglePayload != 1)
    {
LABEL_34:
      v52 = v60;
      goto LABEL_35;
    }

    sub_2574695E4(v60, &qword_27F87A1A0, &qword_257745750);
LABEL_28:
    v67 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__biasVector;
    v68 = v76[0];
    swift_beginAccess();
    sub_257487308(v68 + v67);
    v69 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__biasVector;
    swift_beginAccess();
    v70 = *(v87 + 48);
    v60 = v77;
    sub_257487308(v62);
    sub_257487308(a2 + v69);
    if (__swift_getEnumTagSinglePayload(v60, 1, v51) == 1)
    {
      sub_2574695E4(v62, &qword_27F87A1A0, &qword_257745750);
      if (__swift_getEnumTagSinglePayload(v60 + v70, 1, v51) == 1)
      {
        sub_2574695E4(v60, &qword_27F87A1A0, &qword_257745750);
LABEL_38:
        v73 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
        v74 = v76[0];
        swift_beginAccess();
        LOBYTE(v73) = *(v74 + v73);

        v75 = OBJC_IVAR____TtCV20MLModelSpecification32Proto_SimpleRecurrentLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
        swift_beginAccess();
        LOBYTE(v75) = *(a2 + v75);

        v43 = v73 ^ v75 ^ 1;
        return v43 & 1;
      }

      goto LABEL_34;
    }

    sub_257487308(v60);
    if (__swift_getEnumTagSinglePayload(v60 + v70, 1, v51) == 1)
    {
      v64 = v62;
      goto LABEL_33;
    }

    sub_257609B78();
    sub_257598490();
    v72 = v71;
    sub_257609BCC();
    sub_2574695E4(v62, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    sub_2574695E4(v60, &qword_27F87A1A0, &qword_257745750);
    if (v72)
    {
      goto LABEL_38;
    }

    goto LABEL_12;
  }

  sub_257487308(v60);
  v63 = __swift_getEnumTagSinglePayload(v60 + v59, 1, v51);
  v62 = v80;
  if (v63 == 1)
  {
    v64 = v83;
LABEL_33:
    sub_2574695E4(v64, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    goto LABEL_34;
  }

  sub_257609B78();
  sub_257598490();
  v66 = v65;
  sub_257609BCC();
  sub_2574695E4(v83, &qword_27F87A1A0, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v60, &qword_27F87A1A0, &qword_257745750);
  if (v66)
  {
    goto LABEL_28;
  }

LABEL_12:

LABEL_13:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_2575BC860(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED08, type metadata accessor for Proto_SimpleRecurrentLayerParams, &unk_25775C3F8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575BC900(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A1A8, type metadata accessor for Proto_SimpleRecurrentLayerParams, &unk_257765F48);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575BC9C8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A1A8, type metadata accessor for Proto_SimpleRecurrentLayerParams, &unk_257765F48);

  return sub_257743424();
}

uint64_t sub_2575BCA88()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9498);
  __swift_project_value_buffer(v0, qword_27F8E9498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_257751110;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "inputVectorSize";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "outputVectorSize";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 10;
  *v10 = "activations";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 15;
  *v12 = "sequenceOutput";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 20;
  *v14 = "hasBiasVectors";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 30;
  *v16 = "updateGateWeightMatrix";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 31;
  *v18 = "resetGateWeightMatrix";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "outputGateWeightMatrix";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 50;
  *v22 = "updateGateRecursionMatrix";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "resetGateRecursionMatrix";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "outputGateRecursionMatrix";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 70;
  *v28 = "updateGateBiasVector";
  *(v28 + 1) = 20;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 71;
  *v30 = "resetGateBiasVector";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 72;
  *v32 = "outputGateBiasVector";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 100;
  *v34 = "reverseInput";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_2575BCFA4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = 0;
  v1 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix;
  v2 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput) = 0;
  return v0;
}

uint64_t sub_2575BD0F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v3 - 8);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = 0;
  v4 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix;
  v5 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
  *(v1 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput) = 0;
  swift_beginAccess();
  v6 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v6;
  swift_beginAccess();
  v7 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v7;
  swift_beginAccess();
  v8 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v8;
  swift_beginAccess();
  v9 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v9;
  swift_beginAccess();
  v10 = *(a1 + 41);
  swift_beginAccess();
  *(v1 + 41) = v10;
  v11 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix;
  swift_beginAccess();
  sub_257487308(a1 + v11);
  swift_beginAccess();

  sub_25751BB28();
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix;
  swift_beginAccess();
  sub_257487308(a1 + v12);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  swift_beginAccess();
  sub_257487308(a1 + v13);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix;
  swift_beginAccess();
  sub_257487308(a1 + v14);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix;
  swift_beginAccess();
  sub_257487308(a1 + v15);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix;
  swift_beginAccess();
  sub_257487308(a1 + v16);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector;
  swift_beginAccess();
  sub_257487308(a1 + v17);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector;
  swift_beginAccess();
  sub_257487308(a1 + v18);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
  swift_beginAccess();
  sub_257487308(a1 + v19);
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + v20);

  swift_beginAccess();
  *(v1 + v22) = v20;
  return v1;
}

uint64_t sub_2575BD7FC()
{

  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector, &qword_27F87A1A0, &qword_257745750);
  return v0;
}

void sub_2575BD954(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87BFC0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2575BDA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 100:
        sub_2575CBF70(a2, a1, a3, a4, &OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput);
        break;
      case 2:
        sub_2575CBCAC();
        break;
      case 10:
        sub_2575BDCD4(a2, a1, a3, a4);
        break;
      case 15:
        sub_2575CBD5C();
        break;
      case 20:
        sub_2575BDDA0(a2, a1, a3, a4);
        break;
      case 30:
        sub_2575BDE24(a2, a1, a3, a4);
        break;
      case 31:
        sub_2575BDF00(a2, a1, a3, a4);
        break;
      case 32:
        sub_2575BDFDC(a2, a1, a3, a4);
        break;
      case 50:
        sub_2575BE0B8(a2, a1, a3, a4);
        break;
      case 51:
        sub_2575BE194(a2, a1, a3, a4);
        break;
      case 52:
        sub_2575BE270(a2, a1, a3, a4);
        break;
      case 70:
        sub_2575BE34C(a2, a1, a3, a4);
        break;
      case 71:
        sub_2575BE428(a2, a1, a3, a4);
        break;
      case 72:
        sub_2575BE504(a2, a1, a3, a4);
        break;
      case 1:
        sub_2575E28E8(a2, a1, a3, a4, MEMORY[0x277D217F8]);
        break;
    }
  }
}

uint64_t sub_2575BDCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_ActivationParams(0);
  sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams, &unk_257763428);
  sub_2577433C4();
  return swift_endAccess();
}

uint64_t sub_2575BDDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_257743274();
  return swift_endAccess();
}

uint64_t sub_2575BDE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BDF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BDFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BE0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BE194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BE270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BE34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BE428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BE504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575BE5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_257743554(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 24) || (result = sub_257743554(), !v4))
    {
      swift_beginAccess();
      if (!*(*(a1 + 32) + 16) || (type metadata accessor for Proto_ActivationParams(0), sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams, &unk_257763428), , sub_257743564(), result = , !v4))
      {
        swift_beginAccess();
        if (*(a1 + 40) != 1 || (result = sub_2577434B4(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 41) != 1 || (result = sub_2577434B4(), !v4))
          {
            result = sub_2575BE920(a1, a2, a3, a4);
            if (!v4)
            {
              sub_2575BEB14(a1, a2, a3, a4);
              sub_2575BED08(a1, a2, a3, a4);
              sub_2575BEEFC(a1, a2, a3, a4);
              sub_2575BF0F0(a1, a2, a3, a4);
              sub_2575BF2E4(a1, a2, a3, a4);
              sub_2575BF4D8(a1, a2, a3, a4);
              sub_2575BF6CC(a1, a2, a3, a4);
              sub_2575BF8C0(a1, a2, a3, a4);
              v10 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
              result = swift_beginAccess();
              if (*(a1 + v10) == 1)
              {
                return sub_2577434B4();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2575BE920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix;
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

uint64_t sub_2575BEB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix;
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

uint64_t sub_2575BED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
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

uint64_t sub_2575BEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix;
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

uint64_t sub_2575BF0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix;
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

uint64_t sub_2575BF2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix;
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

uint64_t sub_2575BF4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector;
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

uint64_t sub_2575BF6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector;
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

uint64_t sub_2575BF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
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

uint64_t sub_2575BFAE0(void *a1, void *a2)
{
  v183 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v183);
  v5 = &v155[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  v6 = MEMORY[0x28223BE20](v182);
  v8 = &v155[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v165 = &v155[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v168 = &v155[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v169 = &v155[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v172 = &v155[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v175 = &v155[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v179 = &v155[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v181 = &v155[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v155[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v160 = &v155[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v161 = &v155[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v162 = &v155[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v163 = &v155[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v164 = &v155[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v167 = &v155[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v166 = &v155[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v171 = &v155[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v170 = &v155[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v174 = &v155[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v173 = &v155[-v47];
  v48 = MEMORY[0x28223BE20](v46);
  v177 = &v155[-v49];
  v50 = MEMORY[0x28223BE20](v48);
  v176 = &v155[-v51];
  v52 = MEMORY[0x28223BE20](v50);
  v178 = &v155[-v53];
  v54 = MEMORY[0x28223BE20](v52);
  v180 = &v155[-v55];
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v155[-v57];
  v59 = MEMORY[0x28223BE20](v56);
  MEMORY[0x28223BE20](v59);
  v61 = &v155[-v60];
  swift_beginAccess();
  v62 = a1[2];
  swift_beginAccess();
  if (v62 != a2[2])
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  v63 = a1[3];
  swift_beginAccess();
  if (v63 != a2[3])
  {
    goto LABEL_25;
  }

  v158 = v8;
  v159 = v5;
  swift_beginAccess();
  swift_beginAccess();

  sub_257480228();
  v64 = a1;
  v65 = a2;
  v67 = v66;

  if ((v67 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v68 = *(v64 + 40);
  swift_beginAccess();
  v69 = v65;
  if (v68 != *(v65 + 40))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v70 = *(v64 + 41);
  swift_beginAccess();
  v71 = *(v65 + 41);
  v72 = v64;
  if (v70 != v71)
  {
    goto LABEL_24;
  }

  v157 = v69;
  v73 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix;
  swift_beginAccess();
  sub_257487308(v64 + v73);
  v74 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateWeightMatrix;
  swift_beginAccess();
  v75 = *(v182 + 48);
  sub_257487308(v61);
  v76 = v157 + v74;
  v77 = v157;
  sub_257487308(v76);
  v78 = v183;
  if (__swift_getEnumTagSinglePayload(v24, 1, v183) == 1)
  {
    sub_2574695E4(v61, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(&v24[v75], 1, v78) != 1)
    {
LABEL_15:
      v80 = v24;
LABEL_23:
      sub_2574695E4(v80, &qword_27F87FA30, &qword_2577673D8);
      goto LABEL_24;
    }

    sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    sub_257487308(v24);
    if (__swift_getEnumTagSinglePayload(&v24[v75], 1, v78) == 1)
    {
      v79 = v61;
      goto LABEL_13;
    }

    sub_257609B78();
    sub_257598490();
    v156 = v81;
    sub_257609BCC();
    sub_2574695E4(v61, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    v77 = v157;
    sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
    if ((v156 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v82 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix;
  swift_beginAccess();
  sub_257487308(v72 + v82);
  v83 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateWeightMatrix;
  swift_beginAccess();
  v84 = v181;
  v85 = *(v182 + 48);
  sub_257487308(v58);
  sub_257487308(v77 + v83);
  v86 = v183;
  if (__swift_getEnumTagSinglePayload(v84, 1, v183) == 1)
  {
    sub_2574695E4(v58, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(v84 + v85, 1, v86) == 1)
    {
      sub_2574695E4(v84, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_28;
    }

LABEL_22:
    v80 = v84;
    goto LABEL_23;
  }

  sub_257487308(v84);
  if (__swift_getEnumTagSinglePayload(v84 + v85, 1, v86) == 1)
  {
    sub_2574695E4(v58, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    goto LABEL_22;
  }

  sub_257609B78();
  sub_257598490();
  v156 = v89;
  sub_257609BCC();
  sub_2574695E4(v58, &qword_27F87A1A0, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v84, &qword_27F87A1A0, &qword_257745750);
  if ((v156 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  v90 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  swift_beginAccess();
  v91 = v178;
  sub_257487308(v72 + v90);
  v92 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  swift_beginAccess();
  v93 = *(v182 + 48);
  v24 = v179;
  sub_257487308(v91);
  sub_257487308(v77 + v92);
  v94 = v183;
  if (__swift_getEnumTagSinglePayload(v24, 1, v183) == 1)
  {
    sub_2574695E4(v91, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(&v24[v93], 1, v94) != 1)
    {
      goto LABEL_15;
    }

    sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    sub_257487308(v24);
    if (__swift_getEnumTagSinglePayload(&v24[v93], 1, v94) == 1)
    {
      sub_2574695E4(v91, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_14;
    }

    sub_257609B78();
    sub_257598490();
    LODWORD(v181) = v95;
    sub_257609BCC();
    sub_2574695E4(v91, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
    if ((v181 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v96 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix;
  swift_beginAccess();
  v97 = v177;
  sub_257487308(v72 + v96);
  v98 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateRecursionMatrix;
  swift_beginAccess();
  v99 = *(v182 + 48);
  v24 = v175;
  sub_257487308(v97);
  sub_257487308(v77 + v98);
  v100 = v183;
  if (__swift_getEnumTagSinglePayload(v24, 1, v183) == 1)
  {
    sub_2574695E4(v97, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(&v24[v99], 1, v100) != 1)
    {
      goto LABEL_15;
    }

    sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    sub_257487308(v24);
    if (__swift_getEnumTagSinglePayload(&v24[v99], 1, v100) == 1)
    {
      sub_2574695E4(v177, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_14;
    }

    sub_257609B78();
    sub_257598490();
    v102 = v101;
    sub_257609BCC();
    sub_2574695E4(v177, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
    if ((v102 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v103 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix;
  swift_beginAccess();
  v104 = v174;
  sub_257487308(v72 + v103);
  v105 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateRecursionMatrix;
  swift_beginAccess();
  v106 = *(v182 + 48);
  v24 = v172;
  sub_257487308(v104);
  sub_257487308(v77 + v105);
  v107 = v183;
  if (__swift_getEnumTagSinglePayload(v24, 1, v183) != 1)
  {
    sub_257487308(v24);
    if (__swift_getEnumTagSinglePayload(&v24[v106], 1, v107) != 1)
    {
      sub_257609B78();
      sub_257598490();
      v109 = v108;
      sub_257609BCC();
      sub_2574695E4(v174, &qword_27F87A1A0, &qword_257745750);
      sub_257609BCC();
      sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
      if ((v109 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    }

    v79 = v174;
LABEL_13:
    sub_2574695E4(v79, &qword_27F87A1A0, &qword_257745750);
LABEL_14:
    sub_257609BCC();
    goto LABEL_15;
  }

  sub_2574695E4(v104, &qword_27F87A1A0, &qword_257745750);
  if (__swift_getEnumTagSinglePayload(&v24[v106], 1, v107) != 1)
  {
    goto LABEL_15;
  }

  sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
LABEL_46:
  v110 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix;
  swift_beginAccess();
  v111 = v171;
  sub_257487308(v72 + v110);
  v112 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix;
  swift_beginAccess();
  v113 = *(v182 + 48);
  v114 = v111;
  v24 = v169;
  sub_257487308(v114);
  sub_257487308(v77 + v112);
  v115 = v183;
  if (__swift_getEnumTagSinglePayload(v24, 1, v183) == 1)
  {
    sub_2574695E4(v171, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(&v24[v113], 1, v115) == 1)
    {
      sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_52;
    }

    goto LABEL_15;
  }

  sub_257487308(v24);
  if (__swift_getEnumTagSinglePayload(&v24[v113], 1, v115) == 1)
  {
    v79 = v171;
    goto LABEL_13;
  }

  sub_257609B78();
  sub_257598490();
  v117 = v116;
  sub_257609BCC();
  sub_2574695E4(v171, &qword_27F87A1A0, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v24, &qword_27F87A1A0, &qword_257745750);
  if ((v117 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_52:
  v118 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector;
  swift_beginAccess();
  v119 = v72;
  v120 = v167;
  sub_257487308(v72 + v118);
  v121 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__updateGateBiasVector;
  swift_beginAccess();
  v122 = *(v182 + 48);
  v123 = v120;
  v124 = v168;
  sub_257487308(v123);
  sub_257487308(v77 + v121);
  v125 = v183;
  if (__swift_getEnumTagSinglePayload(v124, 1, v183) != 1)
  {
    sub_257487308(v124);
    if (__swift_getEnumTagSinglePayload(&v124[v122], 1, v125) != 1)
    {
      v127 = v168;
      sub_257609B78();
      sub_257598490();
      v129 = v128;
      sub_257609BCC();
      sub_2574695E4(v167, &qword_27F87A1A0, &qword_257745750);
      sub_257609BCC();
      sub_2574695E4(v127, &qword_27F87A1A0, &qword_257745750);
      if ((v129 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_59;
    }

    sub_2574695E4(v167, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
LABEL_57:
    v126 = v168;
LABEL_72:
    sub_2574695E4(v126, &qword_27F87FA30, &qword_2577673D8);
    goto LABEL_24;
  }

  sub_2574695E4(v167, &qword_27F87A1A0, &qword_257745750);
  if (__swift_getEnumTagSinglePayload(&v124[v122], 1, v125) != 1)
  {
    goto LABEL_57;
  }

  sub_2574695E4(v168, &qword_27F87A1A0, &qword_257745750);
LABEL_59:
  v130 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector;
  swift_beginAccess();
  v131 = v163;
  sub_257487308(v119 + v130);
  v132 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__resetGateBiasVector;
  v133 = v157;
  swift_beginAccess();
  v134 = *(v182 + 48);
  v135 = v131;
  v136 = v165;
  sub_257487308(v135);
  sub_257487308(v133 + v132);
  if (__swift_getEnumTagSinglePayload(v136, 1, v183) == 1)
  {
    sub_2574695E4(v163, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(&v165[v134], 1, v183) == 1)
    {
      sub_2574695E4(v165, &qword_27F87A1A0, &qword_257745750);
LABEL_66:
      v141 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
      swift_beginAccess();
      v142 = v161;
      sub_257487308(v119 + v141);
      v143 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
      v144 = v157;
      swift_beginAccess();
      v145 = *(v182 + 48);
      v146 = v142;
      v147 = v158;
      sub_257487308(v146);
      sub_257487308(v144 + v143);
      if (__swift_getEnumTagSinglePayload(v147, 1, v183) == 1)
      {
        sub_2574695E4(v161, &qword_27F87A1A0, &qword_257745750);
        if (__swift_getEnumTagSinglePayload(&v158[v145], 1, v183) == 1)
        {
          sub_2574695E4(v158, &qword_27F87A1A0, &qword_257745750);
LABEL_75:
          v152 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
          swift_beginAccess();
          LOBYTE(v152) = *(v119 + v152);

          v153 = OBJC_IVAR____TtCV20MLModelSpecification20Proto_GRULayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__reverseInput;
          v154 = v157;
          swift_beginAccess();
          LOBYTE(v153) = *(v154 + v153);

          v87 = v152 ^ v153 ^ 1;
          return v87 & 1;
        }
      }

      else
      {
        v148 = v158;
        sub_257487308(v158);
        if (__swift_getEnumTagSinglePayload(v148 + v145, 1, v183) != 1)
        {
          v149 = v158;
          sub_257609B78();
          sub_257598490();
          v151 = v150;
          sub_257609BCC();
          sub_2574695E4(v161, &qword_27F87A1A0, &qword_257745750);
          sub_257609BCC();
          sub_2574695E4(v149, &qword_27F87A1A0, &qword_257745750);
          if (v151)
          {
            goto LABEL_75;
          }

          goto LABEL_24;
        }

        sub_2574695E4(v161, &qword_27F87A1A0, &qword_257745750);
        sub_257609BCC();
      }

      v126 = v158;
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  v137 = v165;
  sub_257487308(v165);
  if (__swift_getEnumTagSinglePayload(&v137[v134], 1, v183) == 1)
  {
    sub_2574695E4(v163, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
LABEL_64:
    v126 = v165;
    goto LABEL_72;
  }

  v138 = v165;
  sub_257609B78();
  sub_257598490();
  v140 = v139;
  sub_257609BCC();
  sub_2574695E4(v163, &qword_27F87A1A0, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v138, &qword_27F87A1A0, &qword_257745750);
  if (v140)
  {
    goto LABEL_66;
  }

LABEL_24:

LABEL_25:
  v87 = 0;
  return v87 & 1;
}

uint64_t sub_2575C14E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F720, type metadata accessor for Proto_GRULayerParams, &unk_25775C308);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575C1588(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DF00, type metadata accessor for Proto_GRULayerParams, &unk_257762258);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575C1650(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DF00, type metadata accessor for Proto_GRULayerParams, &unk_257762258);

  return sub_257743424();
}

uint64_t sub_2575C1710()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E94B0);
  __swift_project_value_buffer(v0, qword_27F8E94B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 10;
  *v6 = "sequenceOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 20;
  *v10 = "hasBiasVectors";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 30;
  *v12 = "forgetBias";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 40;
  *v14 = "hasPeepholeVectors";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 50;
  *v16 = "coupledInputAndForgetGate";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 60;
  *v18 = "cellClipThreshold";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575C19D8()
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

    if (result == 60)
    {
      OUTLINED_FUNCTION_89_2();
      sub_2577432E4();
    }

    else if (result == 20 || result == 30 || result == 40 || result == 50 || result == 10)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743274();
    }
  }

  return result;
}

uint64_t sub_2575C1A80()
{
  OUTLINED_FUNCTION_2_7();
  if (*v0 != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
  {
    if (v2[1] != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
    {
      if (v2[2] != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
      {
        if (v2[3] != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
        {
          if (v2[4] != 1 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v1))
          {
            OUTLINED_FUNCTION_284();
            if (!v4 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v1))
            {
              type metadata accessor for Proto_LSTMParams(0);
              return OUTLINED_FUNCTION_7_5();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2575C1B9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if (*(v4 + 1) != *(v5 + 1))
  {
    return 0;
  }

  if (v3[2] != v2[2])
  {
    return 0;
  }

  if (v3[3] != v2[3])
  {
    return 0;
  }

  if (v3[4] != v2[4])
  {
    return 0;
  }

  OUTLINED_FUNCTION_334_0();
  if (!v6)
  {
    return 0;
  }

  type metadata accessor for Proto_LSTMParams(0);
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575C1CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F878, type metadata accessor for Proto_LSTMParams, &unk_25775C1A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575C1D58(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DEE0, type metadata accessor for Proto_LSTMParams, &unk_25775C1D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575C1E20(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DEE0, type metadata accessor for Proto_LSTMParams, &unk_25775C1D8);

  return sub_257743424();
}

uint64_t sub_2575C1EA0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E94C8);
  __swift_project_value_buffer(v0, qword_27F8E94C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_257751110;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "inputGateWeightMatrix";
  *(v4 + 8) = 21;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "forgetGateWeightMatrix";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "blockInputWeightMatrix";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "outputGateWeightMatrix";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 20;
  *v14 = "inputGateRecursionMatrix";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 21;
  *v16 = "forgetGateRecursionMatrix";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 22;
  *v18 = "blockInputRecursionMatrix";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 23;
  *v20 = "outputGateRecursionMatrix";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 40;
  *v22 = "inputGateBiasVector";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 41;
  *v24 = "forgetGateBiasVector";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 42;
  *v26 = "blockInputBiasVector";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 43;
  *v28 = "outputGateBiasVector";
  *(v28 + 1) = 20;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 60;
  *v30 = "inputGatePeepholeVector";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 61;
  *v32 = "forgetGatePeepholeVector";
  *(v32 + 1) = 24;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 62;
  *v34 = "outputGatePeepholeVector";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_2575C23B8()
{
  v1 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateWeightMatrix;
  v2 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateWeightMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputWeightMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateRecursionMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateRecursionMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputRecursionMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateBiasVector, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGatePeepholeVector, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGatePeepholeVector, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGatePeepholeVector, 1, 1, v2);
  return v0;
}

void sub_2575C2590()
{
  OUTLINED_FUNCTION_31();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_74_0();
  v2 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  v12 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix);
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v2);
  v15 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateRecursionMatrix);
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v2);
  v18 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateRecursionMatrix);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
  v21 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputRecursionMatrix);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v2);
  v24 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix);
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v2);
  v27 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateBiasVector);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v2);
  v30 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v2);
  v33 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v2);
  v36 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v2);
  v39 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGatePeepholeVector);
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v2);
  v42 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGatePeepholeVector);
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v2);
  v45 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGatePeepholeVector);
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v2);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_152();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_152();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_152();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_109_0();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_2();

  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_152();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575C2B34()
{
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateWeightMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateWeightMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputWeightMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateRecursionMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateRecursionMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputRecursionMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateBiasVector, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGatePeepholeVector, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGatePeepholeVector, &qword_27F87A1A0, &qword_257745750);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGatePeepholeVector, &qword_27F87A1A0, &qword_257745750);
  return v0;
}

void sub_2575C2D14(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87BFC0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2575C2DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    if (!v10 & v9)
    {
      switch(result)
      {
        case '<':
          sub_2575C3AC4(a2, a1, a3, a4);
          break;
        case '=':
          sub_2575C3BA0(a2, a1, a3, a4);
          break;
        case '>':
          sub_2575C3C7C(a2, a1, a3, a4);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_2575C3074(a2, a1, a3, a4);
          break;
        case 2:
          sub_2575C3150(a2, a1, a3, a4);
          break;
        case 3:
          sub_2575C322C(a2, a1, a3, a4);
          break;
        case 4:
          sub_2575C3308(a2, a1, a3, a4);
          break;
        default:
          JUMPOUT(0);
      }
    }
  }

  return result;
}

uint64_t sub_2575C3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C33E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C34C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C39E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575C3D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2575C3EE0(a1, a2, a3, a4);
  if (!v4)
  {
    sub_2575C40D4(a1, a2, a3, a4);
    sub_2575C42C8(a1, a2, a3, a4);
    sub_2575C44BC(a1, a2, a3, a4);
    sub_2575C46B0(a1, a2, a3, a4);
    sub_2575C48A4(a1, a2, a3, a4);
    sub_2575C4A98(a1, a2, a3, a4);
    sub_2575C4C8C(a1, a2, a3, a4);
    sub_2575C4E80(a1, a2, a3, a4);
    sub_2575C5074(a1, a2, a3, a4);
    sub_2575C5268(a1, a2, a3, a4);
    sub_2575C545C(a1, a2, a3, a4);
    sub_2575C5650(a1, a2, a3, a4);
    sub_2575C5844(a1, a2, a3, a4);
    return sub_2575C5A38(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_2575C3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateWeightMatrix;
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

uint64_t sub_2575C40D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateWeightMatrix;
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

uint64_t sub_2575C42C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputWeightMatrix;
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

uint64_t sub_2575C44BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
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

uint64_t sub_2575C46B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateRecursionMatrix;
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

uint64_t sub_2575C48A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateRecursionMatrix;
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

uint64_t sub_2575C4A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputRecursionMatrix;
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

uint64_t sub_2575C4C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix;
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

uint64_t sub_2575C4E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateBiasVector;
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

uint64_t sub_2575C5074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector;
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

uint64_t sub_2575C5268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector;
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

uint64_t sub_2575C545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
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

uint64_t sub_2575C5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGatePeepholeVector;
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

uint64_t sub_2575C5844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGatePeepholeVector;
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

uint64_t sub_2575C5A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGatePeepholeVector;
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

void sub_2575C5C58()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v333 = v2;
  v4 = OUTLINED_FUNCTION_273_0();
  v331 = type metadata accessor for Proto_WeightParams(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v330 = v6;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_25_0();
  v291 = v8;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_167();
  v294 = v10;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_167();
  v297 = v12;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_167();
  v300 = v14;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_167();
  v304 = v16;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_167();
  v303 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_167();
  v307 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_167();
  v310 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_167();
  v313 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_167();
  v316 = v26;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_167();
  v319 = v28;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_167();
  v322 = v30;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_167();
  v326 = v32;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_167();
  v329 = v34;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_134_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v37 = OUTLINED_FUNCTION_13(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_0();
  v288[1] = v38;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_167();
  v289 = v40;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_167();
  v290 = v42;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_167();
  v292 = v44;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_167();
  v293 = v46;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_167();
  v295 = v48;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_167();
  v296 = v50;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_167();
  v298 = v52;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_167();
  v299 = v54;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_167();
  v302 = v56;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_167();
  v301 = v58;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_167();
  v306 = v60;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_167();
  v305 = v62;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_167();
  v309 = v64;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_167();
  v308 = v66;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_167();
  v312 = v68;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_167();
  v311 = v70;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_167();
  v315 = v72;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_167();
  v314 = v74;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_167();
  v318 = v76;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_167();
  v317 = v78;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_167();
  v321 = v80;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_167();
  v320 = v82;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_167();
  v324 = v84;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_167();
  v323 = v86;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_167();
  v325 = v88;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_167();
  v327 = v90;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_167();
  v328 = v92;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_260_0();
  MEMORY[0x28223BE20](v94);
  v96 = v288 - v95;
  v97 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateWeightMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  sub_257487308(v0 + v97);
  v98 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateWeightMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v99 = *(v332 + 48);
  sub_257487308(v96);
  v100 = v331;
  sub_257487308(v3 + v98);
  OUTLINED_FUNCTION_35_2(v1);
  if (v103)
  {

    sub_2574695E4(v96, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_35_2(v1 + v99);
    v101 = v0;
    if (!v103)
    {
      goto LABEL_10;
    }

    sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    v102 = OUTLINED_FUNCTION_389_0();
    sub_257487308(v102);
    OUTLINED_FUNCTION_35_2(v1 + v99);
    if (v103)
    {

      v104 = v96;
LABEL_9:
      sub_2574695E4(v104, &qword_27F87A1A0, &qword_257745750);
      OUTLINED_FUNCTION_4_10();
      sub_257609BCC();
LABEL_10:
      v105 = v1;
LABEL_87:
      sub_2574695E4(v105, &qword_27F87FA30, &qword_2577673D8);
      goto LABEL_88;
    }

    OUTLINED_FUNCTION_54_2();
    sub_257609B78();

    OUTLINED_FUNCTION_167_1();
    sub_257598490();
    v107 = v106;
    sub_257609BCC();
    sub_2574695E4(v96, &qword_27F87A1A0, &qword_257745750);
    sub_257609BCC();
    v101 = v0;
    sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
    if ((v107 & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  v108 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateWeightMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v109 = v101;
  v110 = v328;
  sub_257487308(v101 + v108);
  v111 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateWeightMatrix;
  v112 = v333;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v113 = *(v332 + 48);
  v114 = v329;
  sub_257487308(v110);
  sub_257487308(v112 + v111);
  OUTLINED_FUNCTION_35_2(v114);
  if (v103)
  {
    sub_2574695E4(v110, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_35_2(v114 + v113);
    if (v103)
    {
      sub_2574695E4(v114, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_22;
    }

LABEL_20:
    v105 = v114;
    goto LABEL_87;
  }

  sub_257487308(v114);
  OUTLINED_FUNCTION_35_2(v114 + v113);
  if (v115)
  {
    sub_2574695E4(v110, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_4_10();
    sub_257609BCC();
    goto LABEL_20;
  }

  sub_257609B78();
  sub_257598490();
  v116 = v114;
  v118 = v117;
  OUTLINED_FUNCTION_3_15();
  sub_257609BCC();
  v119 = OUTLINED_FUNCTION_277();
  sub_2574695E4(v119, v120, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v116, &qword_27F87A1A0, &qword_257745750);
  v101 = v109;
  if ((v118 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_22:
  v121 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputWeightMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v122 = v325;
  OUTLINED_FUNCTION_185_1(v101 + v121);
  v123 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputWeightMatrix;
  v124 = v333;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v125 = OUTLINED_FUNCTION_182_1();
  v126 = v326;
  OUTLINED_FUNCTION_186_1(v125);
  OUTLINED_FUNCTION_278_0(v124 + v123);
  OUTLINED_FUNCTION_35_2(v126);
  if (v103)
  {
    sub_2574695E4(v122, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_35_2(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v126);
    if (!v103)
    {
      goto LABEL_86;
    }

    sub_2574695E4(v126, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    sub_257487308(v126);
    OUTLINED_FUNCTION_35_2(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v126);
    if (v127)
    {
      sub_2574695E4(v122, &qword_27F87A1A0, &qword_257745750);
      OUTLINED_FUNCTION_4_10();
LABEL_85:
      sub_257609BCC();
      goto LABEL_86;
    }

    sub_257609B78();
    OUTLINED_FUNCTION_415();
    sub_257598490();
    v129 = v128;
    OUTLINED_FUNCTION_3_15();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v130, v131, v132);
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v133, v134, v135);
    if ((v129 & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  v136 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v137 = v324;
  OUTLINED_FUNCTION_278_0(v101 + v136);
  v138 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateWeightMatrix;
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v139 = *(v332 + 48);
  v126 = v322;
  OUTLINED_FUNCTION_186_1(v137);
  OUTLINED_FUNCTION_278_0(v122 + v138);
  OUTLINED_FUNCTION_35_2(v126);
  if (v103)
  {
    sub_2574695E4(v137, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_35_2(v126 + v139);
    if (!v103)
    {
      goto LABEL_86;
    }

    sub_2574695E4(v126, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    sub_257487308(v126);
    OUTLINED_FUNCTION_35_2(v126 + v139);
    if (v140)
    {
      v141 = v324;
      goto LABEL_84;
    }

    sub_257609B78();
    OUTLINED_FUNCTION_188_1();
    sub_257598490();
    v137 = v142;
    OUTLINED_FUNCTION_3_15();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v143, v144, v145);
    OUTLINED_FUNCTION_288();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v146, v147, v148);
    if ((v137 & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  v149 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateRecursionMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v150 = v321;
  OUTLINED_FUNCTION_278_0(v101 + v149);
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v151 = OUTLINED_FUNCTION_181_1();
  v126 = v319;
  OUTLINED_FUNCTION_186_1(v151);
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_35_2(v126);
  if (v103)
  {
    sub_2574695E4(v150, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_35_2(v126 + v137);
    if (!v103)
    {
      goto LABEL_86;
    }

    sub_2574695E4(v126, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    sub_257487308(v126);
    OUTLINED_FUNCTION_35_2(v126 + v137);
    if (v152)
    {
      v141 = v321;
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_188_1();
    sub_257598490();
    v137 = v153;
    OUTLINED_FUNCTION_3_15();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v154, v155, v156);
    OUTLINED_FUNCTION_288();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v157, v158, v159);
    if ((v137 & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  v160 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateRecursionMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v161 = v318;
  OUTLINED_FUNCTION_278_0(v101 + v160);
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v162 = OUTLINED_FUNCTION_181_1();
  v126 = v316;
  OUTLINED_FUNCTION_186_1(v162);
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_35_2(v126);
  if (v103)
  {
    sub_2574695E4(v161, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_35_2(v126 + v137);
    if (!v103)
    {
      goto LABEL_86;
    }

    sub_2574695E4(v126, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    sub_257487308(v126);
    OUTLINED_FUNCTION_35_2(v126 + v137);
    if (v163)
    {
      v141 = v318;
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_188_1();
    sub_257598490();
    v137 = v164;
    OUTLINED_FUNCTION_3_15();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v165, v166, v167);
    OUTLINED_FUNCTION_288();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v168, v169, v170);
    if ((v137 & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  v171 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputRecursionMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v172 = v315;
  OUTLINED_FUNCTION_278_0(v101 + v171);
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v173 = OUTLINED_FUNCTION_181_1();
  v126 = v313;
  OUTLINED_FUNCTION_186_1(v173);
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_35_2(v126);
  if (v103)
  {
    sub_2574695E4(v172, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_35_2(v126 + v137);
    if (!v103)
    {
      goto LABEL_86;
    }

    sub_2574695E4(v126, &qword_27F87A1A0, &qword_257745750);
  }

  else
  {
    sub_257487308(v126);
    OUTLINED_FUNCTION_35_2(v126 + v137);
    if (v174)
    {
      v141 = v315;
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_188_1();
    sub_257598490();
    v137 = v175;
    OUTLINED_FUNCTION_3_15();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v176, v177, v178);
    OUTLINED_FUNCTION_288();
    sub_257609BCC();
    OUTLINED_FUNCTION_153_0();
    sub_2574695E4(v179, v180, v181);
    if ((v137 & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  v182 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateRecursionMatrix;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v183 = v312;
  OUTLINED_FUNCTION_278_0(v101 + v182);
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v184 = OUTLINED_FUNCTION_181_1();
  v126 = v310;
  OUTLINED_FUNCTION_186_1(v184);
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_35_2(v126);
  if (!v103)
  {
    sub_257487308(v126);
    OUTLINED_FUNCTION_35_2(v126 + v137);
    if (!v185)
    {
      OUTLINED_FUNCTION_282_0();
      OUTLINED_FUNCTION_188_1();
      sub_257598490();
      v137 = v186;
      OUTLINED_FUNCTION_3_15();
      sub_257609BCC();
      OUTLINED_FUNCTION_153_0();
      sub_2574695E4(v187, v188, v189);
      OUTLINED_FUNCTION_288();
      sub_257609BCC();
      OUTLINED_FUNCTION_153_0();
      sub_2574695E4(v190, v191, v192);
      if ((v137 & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_76;
    }

    v141 = v312;
LABEL_84:
    sub_2574695E4(v141, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_4_10();
    goto LABEL_85;
  }

  sub_2574695E4(v183, &qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_35_2(v126 + v137);
  if (!v103)
  {
    goto LABEL_86;
  }

  sub_2574695E4(v126, &qword_27F87A1A0, &qword_257745750);
LABEL_76:
  v193 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGateBiasVector;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v194 = v309;
  OUTLINED_FUNCTION_278_0(v101 + v193);
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v195 = OUTLINED_FUNCTION_181_1();
  v126 = v307;
  OUTLINED_FUNCTION_186_1(v195);
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_35_2(v126);
  if (v103)
  {
    sub_2574695E4(v194, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_35_2(v126 + v137);
    if (v103)
    {
      sub_2574695E4(v126, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_91;
    }

LABEL_86:
    v105 = v126;
    goto LABEL_87;
  }

  sub_257487308(v126);
  OUTLINED_FUNCTION_35_2(v126 + v137);
  if (v196)
  {
    v141 = v309;
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_282_0();
  OUTLINED_FUNCTION_188_1();
  sub_257598490();
  v198 = v197;
  OUTLINED_FUNCTION_3_15();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v199, v200, v201);
  OUTLINED_FUNCTION_288();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v202, v203, v204);
  if ((v198 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_91:
  v205 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v206 = v306;
  OUTLINED_FUNCTION_186_1(v101 + v205);
  v207 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGateBiasVector;
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v208 = *(v332 + 48);
  v1 = v303;
  OUTLINED_FUNCTION_278_0(v206);
  OUTLINED_FUNCTION_278_0(v122 + v207);
  OUTLINED_FUNCTION_35_2(v1);
  if (v103)
  {
    sub_2574695E4(v306, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_155(v1 + v208, 1, v100);
    if (v103)
    {
      v209 = v333;
      sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_100;
    }

    goto LABEL_10;
  }

  v209 = v333;
  sub_257487308(v1);
  OUTLINED_FUNCTION_155(v1 + v208, 1, v100);
  if (v210)
  {
    v104 = v306;
    goto LABEL_9;
  }

  sub_257609B78();
  OUTLINED_FUNCTION_188_1();
  sub_257598490();
  v212 = v211;
  OUTLINED_FUNCTION_3_15();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v213, v214, v215);
  OUTLINED_FUNCTION_320_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v216, v217, v218);
  if ((v212 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_100:
  v219 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v220 = v101;
  v221 = v101 + v219;
  v222 = v302;
  OUTLINED_FUNCTION_278_0(v221);
  v223 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__blockInputBiasVector;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v224 = *(v332 + 48);
  v225 = v222;
  v226 = v304;
  OUTLINED_FUNCTION_278_0(v225);
  OUTLINED_FUNCTION_278_0(v209 + v223);
  OUTLINED_FUNCTION_65(v226);
  if (v103)
  {
    sub_2574695E4(v302, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_65(v304 + v224);
    if (v103)
    {
      sub_2574695E4(v304, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_111;
    }

LABEL_108:
    v229 = v304;
LABEL_140:
    sub_2574695E4(v229, &qword_27F87FA30, &qword_2577673D8);
    goto LABEL_88;
  }

  v227 = v304;
  sub_257487308(v304);
  OUTLINED_FUNCTION_65(v227 + v224);
  if (v228)
  {
    sub_2574695E4(v302, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_4_10();
    sub_257609BCC();
    goto LABEL_108;
  }

  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_406();
  sub_257598490();
  v231 = v230;
  OUTLINED_FUNCTION_3_15();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v232, v233, v234);
  OUTLINED_FUNCTION_319_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v235, v236, v237);
  if ((v231 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_111:
  v238 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGateBiasVector;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_185_1(v220 + v238);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v239 = OUTLINED_FUNCTION_182_1();
  v240 = v300;
  OUTLINED_FUNCTION_185_1(v239);
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_65(v240);
  if (v103)
  {
    sub_2574695E4(v298, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_65(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v300);
    if (v103)
    {
      sub_2574695E4(v300, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_121;
    }

    goto LABEL_119;
  }

  v241 = v300;
  sub_257487308(v300);
  OUTLINED_FUNCTION_65(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v241);
  if (v242)
  {
    sub_2574695E4(v298, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_4_10();
    sub_257609BCC();
LABEL_119:
    v229 = v300;
    goto LABEL_140;
  }

  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_406();
  sub_257598490();
  v244 = v243;
  OUTLINED_FUNCTION_3_15();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v245, v246, v247);
  OUTLINED_FUNCTION_319_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v248, v249, v250);
  if ((v244 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_121:
  v251 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__inputGatePeepholeVector;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_185_1(v220 + v251);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v252 = OUTLINED_FUNCTION_182_1();
  v253 = v297;
  OUTLINED_FUNCTION_185_1(v252);
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_65(v253);
  if (v103)
  {
    sub_2574695E4(v295, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_65(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v297);
    if (v103)
    {
      sub_2574695E4(v297, &qword_27F87A1A0, &qword_257745750);
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v254 = v297;
  sub_257487308(v297);
  OUTLINED_FUNCTION_65(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v254);
  if (v255)
  {
    sub_2574695E4(v295, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_4_10();
    sub_257609BCC();
LABEL_129:
    v229 = v297;
    goto LABEL_140;
  }

  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_406();
  sub_257598490();
  v257 = v256;
  OUTLINED_FUNCTION_3_15();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v258, v259, v260);
  OUTLINED_FUNCTION_319_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_153_0();
  sub_2574695E4(v261, v262, v263);
  if ((v257 & 1) == 0)
  {
    goto LABEL_88;
  }

LABEL_131:
  v264 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__forgetGatePeepholeVector;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_185_1(v220 + v264);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v265 = OUTLINED_FUNCTION_182_1();
  v266 = v294;
  OUTLINED_FUNCTION_185_1(v265);
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_65(v266);
  if (!v103)
  {
    v267 = v294;
    sub_257487308(v294);
    OUTLINED_FUNCTION_65(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v267);
    if (!v268)
    {
      OUTLINED_FUNCTION_281_0();
      OUTLINED_FUNCTION_406();
      sub_257598490();
      v270 = v269;
      OUTLINED_FUNCTION_3_15();
      sub_257609BCC();
      OUTLINED_FUNCTION_153_0();
      sub_2574695E4(v271, v272, v273);
      OUTLINED_FUNCTION_319_0();
      sub_257609BCC();
      OUTLINED_FUNCTION_153_0();
      sub_2574695E4(v274, v275, v276);
      if (v270)
      {
        goto LABEL_143;
      }

LABEL_88:

      goto LABEL_89;
    }

    sub_2574695E4(v292, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_4_10();
    sub_257609BCC();
    goto LABEL_139;
  }

  sub_2574695E4(v292, &qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_65(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v294);
  if (!v103)
  {
LABEL_139:
    v229 = v294;
    goto LABEL_140;
  }

  sub_2574695E4(v294, &qword_27F87A1A0, &qword_257745750);
LABEL_143:
  v277 = OBJC_IVAR____TtCV20MLModelSpecification22Proto_LSTMWeightParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputGatePeepholeVector;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_185_1(v220 + v277);
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v278 = OUTLINED_FUNCTION_182_1();
  v279 = v291;
  OUTLINED_FUNCTION_185_1(v278);
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_65(v279);
  if (!v103)
  {
    v280 = v291;
    sub_257487308(v291);
    OUTLINED_FUNCTION_65(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v280);
    if (!v281)
    {
      OUTLINED_FUNCTION_281_0();
      sub_257598490();

      OUTLINED_FUNCTION_3_15();
      sub_257609BCC();
      OUTLINED_FUNCTION_153_0();
      sub_2574695E4(v282, v283, v284);
      OUTLINED_FUNCTION_413_0();
      OUTLINED_FUNCTION_153_0();
      sub_2574695E4(v285, v286, v287);
      goto LABEL_89;
    }

    sub_2574695E4(v289, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_4_10();
    sub_257609BCC();
LABEL_151:
    sub_2574695E4(v291, &qword_27F87FA30, &qword_2577673D8);
    goto LABEL_89;
  }

  sub_2574695E4(v289, &qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_65(&OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__customPaddingLeft + v291);
  if (!v103)
  {
    goto LABEL_151;
  }

  sub_2574695E4(v291, &qword_27F87A1A0, &qword_257745750);
LABEL_89:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575C7A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDB0, type metadata accessor for Proto_LSTMWeightParams, &unk_25775C0B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575C7ADC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DEC8, type metadata accessor for Proto_LSTMWeightParams, &unk_257765660);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575C7BA4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DEC8, type metadata accessor for Proto_LSTMWeightParams, &unk_257765660);

  return sub_257743424();
}

uint64_t sub_2575C7C64()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E94E0);
  __swift_project_value_buffer(v0, qword_27F8E94E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inputVectorSize";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "outputVectorSize";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "activations";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 15;
  *v14 = "params";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 20;
  *v16 = "weightParams";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 100;
  *v18 = "reverseInput";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575C7F24()
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
      case 100:
        OUTLINED_FUNCTION_10_7();
        sub_257743274();
        break;
      case 2:
        goto LABEL_14;
      case 10:
        OUTLINED_FUNCTION_216_0();
        OUTLINED_FUNCTION_6_8();
        sub_2575C9F04();
        break;
      case 15:
        v7 = OUTLINED_FUNCTION_6_8();
        sub_2575C8028(v7, v8, v9, v10);
        break;
      case 20:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2575C80DC(v3, v4, v5, v6);
        break;
      case 1:
LABEL_14:
        OUTLINED_FUNCTION_10_7();
        sub_2577433B4();
        break;
    }
  }
}

uint64_t sub_2575C8028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  type metadata accessor for Proto_LSTMParams(0);
  sub_2575FB760(&qword_27F87DEE0, type metadata accessor for Proto_LSTMParams, &unk_25775C1D8);
  return sub_2577433D4();
}

uint64_t sub_2575C80DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  type metadata accessor for Proto_LSTMWeightParams(0);
  sub_2575FB760(&qword_27F87DEC8, type metadata accessor for Proto_LSTMWeightParams, &unk_257765660);
  return sub_2577433D4();
}

void sub_2575C8190()
{
  OUTLINED_FUNCTION_188_0();
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), sub_257743554(), !v0))
  {
    if (!*(v1 + 8) || (OUTLINED_FUNCTION_12_11(), sub_257743554(), !v0))
    {
      if (!*(*(v1 + 16) + 16) || (type metadata accessor for Proto_ActivationParams(0), OUTLINED_FUNCTION_95_2(), sub_2575FB760(v2, v3, &unk_257763428), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v0))
      {
        v4 = OUTLINED_FUNCTION_3_9();
        sub_2575C82A0(v4, v5, v6, v7);
        if (!v0)
        {
          v8 = OUTLINED_FUNCTION_3_9();
          sub_2575C8480(v8, v9, v10, v11);
          if (*(v1 + 24) == 1)
          {
            OUTLINED_FUNCTION_12_8();
            sub_2577434B4();
          }

          type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
          OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575C82A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_LSTMParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  sub_257487308(a1 + *(v9 + 36));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87CA40, &qword_257752538);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87DEE0, type metadata accessor for Proto_LSTMParams, &unk_25775C1D8);
  sub_257743574();
  return sub_257609BCC();
}

uint64_t sub_2575C8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA48, &unk_257752540);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_LSTMWeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  sub_257487308(a1 + *(v9 + 40));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87CA48, &unk_257752540);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87DEC8, type metadata accessor for Proto_LSTMWeightParams, &unk_257765660);
  sub_257743574();
  return sub_257609BCC();
}

void _s20MLModelSpecification13NeuralNetworkV5LayerV28UnidirectionalLSTMParametersV2eeoiySbAG_AGtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v8 = OUTLINED_FUNCTION_118_1();
  v9 = type metadata accessor for Proto_LSTMWeightParams(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_1();
  v43 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA48, &unk_257752540);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_198();
  v44 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA60, &qword_257767410);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_3();
  type metadata accessor for Proto_LSTMParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_227();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_157_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA68, &unk_257767418);
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_262_0();
  if (*v1 != *v0)
  {
    goto LABEL_25;
  }

  if (*(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_25;
  }

  sub_257480228();
  if ((v20 & 1) == 0)
  {
    goto LABEL_25;
  }

  v42 = v2;
  v21 = *(type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0) + 36);
  v22 = *(v3 + 48);
  sub_257487308(v1 + v21);
  sub_257487308(v0 + v21);
  OUTLINED_FUNCTION_34_0(v7);
  if (v24)
  {
    OUTLINED_FUNCTION_34_0(v7 + v22);
    if (v24)
    {
      sub_2574695E4(v7, &qword_27F87CA40, &qword_257752538);
      goto LABEL_14;
    }

LABEL_12:
    v25 = &qword_27F87FA68;
    v26 = &unk_257767418;
    v27 = v7;
LABEL_24:
    sub_2574695E4(v27, v25, v26);
    goto LABEL_25;
  }

  v23 = OUTLINED_FUNCTION_405();
  sub_257487308(v23);
  OUTLINED_FUNCTION_34_0(v7 + v22);
  if (v24)
  {
    OUTLINED_FUNCTION_177_0();
    sub_257609BCC();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_215_0();
  sub_257609B78();
  v28 = sub_2575C1B9C(v4, v6);
  sub_257609BCC();
  OUTLINED_FUNCTION_194();
  sub_257609BCC();
  sub_2574695E4(v7, &qword_27F87CA40, &qword_257752538);
  if ((v28 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v29 = *(v5 + 48);
  OUTLINED_FUNCTION_317_0();
  sub_257487308(v30);
  OUTLINED_FUNCTION_317_0();
  sub_257487308(v31);
  OUTLINED_FUNCTION_42_0(v42);
  if (!v24)
  {
    sub_257487308(v42);
    OUTLINED_FUNCTION_42_0(v42 + v29);
    if (!v32)
    {
      sub_257609B78();
      if (*(v44 + *(v9 + 20)) == *(v43 + *(v9 + 20)) || (, , OUTLINED_FUNCTION_167_1(), sub_2575C5C58(), v35 = v34, , , (v35 & 1) != 0))
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_1_16();
        sub_2575FB760(v36, v37, MEMORY[0x277D216D0]);
        v38 = sub_257743644();
        sub_257609BCC();
        sub_257609BCC();
        sub_2574695E4(v42, &qword_27F87CA48, &unk_257752540);
        if ((v38 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }

      sub_257609BCC();
      sub_257609BCC();
      v25 = &qword_27F87CA48;
      v26 = &unk_257752540;
      goto LABEL_23;
    }

    sub_257609BCC();
LABEL_22:
    v25 = &qword_27F87FA60;
    v26 = &qword_257767410;
LABEL_23:
    v27 = v42;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_42_0(v42 + v29);
  if (!v24)
  {
    goto LABEL_22;
  }

  sub_2574695E4(v42, &qword_27F87CA48, &unk_257752540);
LABEL_30:
  if (*(v1 + 24) == *(v0 + 24))
  {
    sub_2577431B4();
    OUTLINED_FUNCTION_1_16();
    v41 = sub_2575FB760(v39, v40, MEMORY[0x277D216D0]);
    v33 = OUTLINED_FUNCTION_19_3(v41);
    goto LABEL_26;
  }

LABEL_25:
  v33 = 0;
LABEL_26:
  OUTLINED_FUNCTION_65_0(v33);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575C8C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF50, type metadata accessor for Proto_UniDirectionalLSTMLayerParams, &unk_25775BFC0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575C8CBC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DEB0, type metadata accessor for Proto_UniDirectionalLSTMLayerParams, &unk_2577640D0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575C8D84(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DEB0, type metadata accessor for Proto_UniDirectionalLSTMLayerParams, &unk_2577640D0);

  return sub_257743424();
}

uint64_t sub_2575C8E04()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E94F8);
  __swift_project_value_buffer(v0, qword_27F8E94F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inputVectorSize";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "outputVectorSize";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "activationsForwardLSTM";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "activationsBackwardLSTM";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 15;
  *v16 = "params";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 20;
  *v18 = "weightParams";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575C90C8()
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
      case 20:
        v11 = OUTLINED_FUNCTION_6_8();
        sub_2575C931C(v11, v12, v13, v14);
        break;
      case 2:
        goto LABEL_14;
      case 10:
        OUTLINED_FUNCTION_216_0();
        OUTLINED_FUNCTION_6_8();
        sub_2575C9F04();
        break;
      case 11:
        v7 = OUTLINED_FUNCTION_6_8();
        sub_2575C91C8(v7, v8, v9, v10);
        break;
      case 15:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2575C9268(v3, v4, v5, v6);
        break;
      case 1:
LABEL_14:
        OUTLINED_FUNCTION_10_7();
        sub_2577433B4();
        break;
    }
  }
}

uint64_t sub_2575C91C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_ActivationParams(0);
  sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams, &unk_257763428);
  return sub_2577433C4();
}

uint64_t sub_2575C9268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  type metadata accessor for Proto_LSTMParams(0);
  sub_2575FB760(&qword_27F87DEE0, type metadata accessor for Proto_LSTMParams, &unk_25775C1D8);
  return sub_2577433D4();
}

uint64_t sub_2575C931C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_LSTMWeightParams(0);
  sub_2575FB760(&qword_27F87DEC8, type metadata accessor for Proto_LSTMWeightParams, &unk_257765660);
  return sub_2577433C4();
}

void sub_2575C93BC()
{
  OUTLINED_FUNCTION_188_0();
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), sub_257743554(), !v0))
  {
    if (!v1[1] || (OUTLINED_FUNCTION_12_11(), sub_257743554(), !v0))
    {
      if (!*(v1[2] + 16) || (type metadata accessor for Proto_ActivationParams(0), OUTLINED_FUNCTION_95_2(), sub_2575FB760(v2, v3, &unk_257763428), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v0))
      {
        if (!*(v1[3] + 16) || (type metadata accessor for Proto_ActivationParams(0), OUTLINED_FUNCTION_95_2(), sub_2575FB760(v4, v5, &unk_257763428), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), sub_257743564(), !v0))
        {
          v6 = OUTLINED_FUNCTION_3_9();
          sub_2575C9558(v6, v7, v8, v9);
          if (!v0)
          {
            if (*(v1[4] + 16))
            {
              type metadata accessor for Proto_LSTMWeightParams(0);
              sub_2575FB760(&qword_27F87DEC8, type metadata accessor for Proto_LSTMWeightParams, &unk_257765660);
              OUTLINED_FUNCTION_55_0();
              OUTLINED_FUNCTION_27_4();
              sub_257743564();
            }

            type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
            OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575C9558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_LSTMParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  sub_257487308(a1 + *(v9 + 40));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87CA40, &qword_257752538);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87DEE0, type metadata accessor for Proto_LSTMParams, &unk_25775C1D8);
  sub_257743574();
  return sub_257609BCC();
}

void _s20MLModelSpecification13NeuralNetworkV5LayerV27BidirectionalLSTMParametersV2eeoiySbAG_AGtFZ_0()
{
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_LSTMParams(v4);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_6();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87CA40, &qword_257752538);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA68, &unk_257767418);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_338_0();
  if (!v13)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_330_0();
  if (!v13)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_269_0();
  sub_257480228();
  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_182_0();
  sub_257480228();
  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

  type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  v11 = *(v3 + 48);
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_65(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_65(v2 + v11);
    if (v13)
    {
      sub_2574695E4(v2, &qword_27F87CA40, &qword_257752538);
      goto LABEL_17;
    }

LABEL_15:
    sub_2574695E4(v2, &qword_27F87FA68, &unk_257767418);
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v12 = OUTLINED_FUNCTION_277();
  sub_257487308(v12);
  OUTLINED_FUNCTION_65(v2 + v11);
  if (v13)
  {
    OUTLINED_FUNCTION_168_1();
    sub_257609BCC();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_215_0();
  sub_257609B78();
  v14 = OUTLINED_FUNCTION_360();
  v16 = sub_2575C1B9C(v14, v15);
  sub_257609BCC();
  OUTLINED_FUNCTION_357_0();
  sub_2574695E4(v2, &qword_27F87CA40, &qword_257752538);
  if ((v16 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_25748066C(*(v1 + 32), *(v0 + 32));
  if ((v17 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v20 = sub_2575FB760(v18, v19, MEMORY[0x277D216D0]);
  v21 = OUTLINED_FUNCTION_4_2(v20);
LABEL_20:
  OUTLINED_FUNCTION_65_0(v21);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575C99F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDB8, type metadata accessor for Proto_BiDirectionalLSTMLayerParams, &unk_25775BED0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575C9A94(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DE98, type metadata accessor for Proto_BiDirectionalLSTMLayerParams, &unk_2577655E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575C9B5C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DE98, type metadata accessor for Proto_BiDirectionalLSTMLayerParams, &unk_2577655E8);

  return sub_257743424();
}

uint64_t sub_2575C9BDC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9510);
  __swift_project_value_buffer(v0, qword_27F8E9510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 10;
  *v6 = "className";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 20;
  *v10 = "weights";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 30;
  *v12 = "parameters";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 40;
  *v14 = "description";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575C9E24()
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
      case 40:
        goto LABEL_11;
      case 20:
        OUTLINED_FUNCTION_6_8();
        sub_2575C9F04();
        break;
      case 30:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_2575C9F6C(v3, v4, v5, v6);
        break;
      case 10:
LABEL_11:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
    }
  }
}

void sub_2575C9F04()
{
  OUTLINED_FUNCTION_165_0();
  v2 = v1;
  OUTLINED_FUNCTION_243_0();
  v3 = OUTLINED_FUNCTION_396_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_131_0();
  v7 = sub_2575FB760(v5, v6, v2);
  OUTLINED_FUNCTION_162_0(v0 + 16, v8, v7);
  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2575C9F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_257743184();
  type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(0);
  sub_2575FB760(&qword_27F87DE60, type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue, &unk_25775BCB0);
  sub_2575FB760(&qword_27F87DE68, type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue, &unk_25775BBE8);
  return sub_257743214();
}

uint64_t sub_2575CA064()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_6();
  if (!v3 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v1) == 0))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Proto_WeightParams(0), sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_27_4(), result = sub_257743564(), (v0 = v1) == 0))
    {
      if (!*(*(v2 + 24) + 16) || (sub_257743184(), type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(0), sub_2575FB760(&qword_27F87DE60, type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue, &unk_25775BCB0), sub_2575FB760(&qword_27F87DE68, type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue, &unk_25775BBE8), v1 = v0, result = sub_257743434(), !v0))
      {
        OUTLINED_FUNCTION_1_6();
        if (!v5 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), !v1))
        {
          type metadata accessor for Proto_CustomLayerParams(0);
          return OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2575CA338(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F758, type metadata accessor for Proto_CustomLayerParams, &unk_25775BDE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CA3D8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DE80, type metadata accessor for Proto_CustomLayerParams, &unk_257761F88);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CA4A0(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DE80, type metadata accessor for Proto_CustomLayerParams, &unk_257761F88);

  return sub_257743424();
}

uint64_t sub_2575CA520()
{
  result = MEMORY[0x259C64E90](0xD000000000000016, 0x800000025777F7D0);
  qword_27F8E9528 = 0xD000000000000017;
  qword_27F8E9530 = 0x800000025777DF60;
  return result;
}

uint64_t sub_2575CA594()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9538);
  __swift_project_value_buffer(v0, qword_27F8E9538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 10;
  *v6 = "doubleValue";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 20;
  *v10 = "stringValue";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 30;
  *v12 = "intValue";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 40;
  *v14 = "longValue";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 50;
  *v16 = "BOOLValue";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575CA818()
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
      case 50:
        v17 = OUTLINED_FUNCTION_6_8();
        sub_2575CAB3C(v17, v18, v19, v20);
        break;
      case 20:
        v9 = OUTLINED_FUNCTION_6_8();
        sub_2575CA8EC(v9, v10, v11, v12);
        break;
      case 30:
        v13 = OUTLINED_FUNCTION_6_8();
        sub_2575CA9BC(v13, v14, v15, v16);
        break;
      case 40:
        v3 = OUTLINED_FUNCTION_6_8();
        v8 = 3;
LABEL_12:
        sub_2575CAA78(v3, v4, v5, v6, v7, v8);
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_6_8();
        v8 = 0;
        goto LABEL_12;
    }
  }
}

uint64_t sub_2575CA8EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = sub_257743384();
  if (v4)
  {
  }

  if (v10)
  {
    if (*(a2 + 16) == 255)
    {
      v7 = -1;
    }

    else
    {
      sub_257743244();
      v7 = *(a2 + 16);
    }

    v8 = *a2;
    v9 = a2[1];
    *a2 = 0;
    a2[1] = v10;
    *(a2 + 16) = 1;
    return sub_25760A304(v8, v9, v7);
  }

  return result;
}

uint64_t sub_2575CAA78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t), char a6)
{
  v14 = 0;
  v15 = 1;
  result = a5(&v14, a3, a4);
  if (!v6 && (v15 & 1) == 0)
  {
    v10 = v14;
    if (*(a2 + 16) == 255)
    {
      v11 = -1;
    }

    else
    {
      OUTLINED_FUNCTION_194();
      sub_257743244();
      v11 = *(a2 + 16);
    }

    v12 = *a2;
    v13 = a2[1];
    *a2 = v10;
    a2[1] = 0;
    *(a2 + 16) = a6;
    return sub_25760A304(v12, v13, v11);
  }

  return result;
}

uint64_t sub_2575CABF8()
{
  OUTLINED_FUNCTION_5_8();
  switch(*(v0 + 16))
  {
    case 0:
      v2 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF7D8(v2);
      goto LABEL_7;
    case 1:
      v10 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF818(v10, v11, v12, v13);
      goto LABEL_7;
    case 2:
      v5 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF85C(v5);
      goto LABEL_7;
    case 3:
      v6 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF898(v6, v7, v8, v9);
      goto LABEL_7;
    case 4:
      v4 = OUTLINED_FUNCTION_5_10();
      result = sub_2574AF8D4(v4);
LABEL_7:
      if (!v1)
      {
        goto LABEL_8;
      }

      return result;
    default:
LABEL_8:
      type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(0);
      OUTLINED_FUNCTION_10_7();
      return sub_257743194();
  }
}

uint64_t sub_2575CACC4()
{
  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v3 == 255)
  {
    if (v5 == 255)
    {
LABEL_4:
      type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(0);
      OUTLINED_FUNCTION_95_0();
      sub_2577431B4();
      OUTLINED_FUNCTION_1_16();
      v8 = sub_2575FB760(v6, v7, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_4_2(v8) & 1;
    }
  }

  else if (v5 != 255 && (sub_257533068(*v1, v1[1], v3, *v0, v0[1], v5) & 1) != 0)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_2575CADC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F880, type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue, &unk_25775BC78);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CAE60(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DE60, type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue, &unk_25775BCB0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CAF28(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DE60, type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue, &unk_25775BCB0);

  return sub_257743424();
}

uint64_t sub_2575CB058(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED80, type metadata accessor for Proto_TransposeLayerParams, &unk_25775BB88);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CB0F8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DE48, type metadata accessor for Proto_TransposeLayerParams, &unk_257765930);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CB1C0(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DE48, type metadata accessor for Proto_TransposeLayerParams, &unk_257765930);

  return sub_257743424();
}

uint64_t sub_2575CB280()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9568);
  __swift_project_value_buffer(v0, qword_27F8E9568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577503A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "transposeA";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "transposeB";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "weightMatrixFirstDimension";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "weightMatrixSecondDimension";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "hasBias";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "weights";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "bias";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "int8DynamicQuantize";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575CB5F8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v1 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  v2 = type metadata accessor for Proto_WeightParams(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize) = 0;
  return v0;
}

void sub_2575CB67C()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74_0();
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 24) = 0;
  v5 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = OUTLINED_FUNCTION_79_1(OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias);
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  v18 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize) = 0;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  LOBYTE(v5) = *(v2 + 16);
  OUTLINED_FUNCTION_447(v0 + 16, &v24);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  LOBYTE(v5) = *(v2 + 17);
  OUTLINED_FUNCTION_447(v0 + 17, &v23);
  *(v0 + 17) = v5;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  v12 = *(v2 + 24);
  OUTLINED_FUNCTION_447(v0 + 24, &v22);
  *(v0 + 24) = v12;
  OUTLINED_FUNCTION_76_1();
  v13 = swift_beginAccess();
  v14 = *(v2 + 32);
  OUTLINED_FUNCTION_250_0(v13, &v21);
  *(v0 + 32) = v14;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  LOBYTE(v14) = *(v2 + 40);
  OUTLINED_FUNCTION_447(v0 + 40, &v20);
  *(v0 + 40) = v14;
  v15 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  sub_257487308(v2 + v15);
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_148_1();
  sub_257487308(v16);
  OUTLINED_FUNCTION_143_1();
  swift_beginAccess();
  sub_25751BB28();
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_76_1();
  swift_beginAccess();
  LOBYTE(v17) = *(v2 + v17);

  OUTLINED_FUNCTION_447(v0 + v18, &v19);
  *(v0 + v18) = v17;
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_35();
}

void sub_2575CB948(uint64_t a1)
{
  sub_25759B3F4(319, &qword_27F87BFC0, type metadata accessor for Proto_WeightParams, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2575CBA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_2575CBBA4(a2, a1, a3, a4);
        break;
      case 2:
        sub_2575CBC28(a2, a1, a3, a4);
        break;
      case 5:
        sub_2575CBCAC();
        break;
      case 6:
        sub_2575CBD08(a2, a1, a3, a4, MEMORY[0x277D217F8]);
        break;
      case 7:
        sub_2575CBD5C();
        break;
      case 8:
        sub_2575CBDB8(a2, a1, a3, a4);
        break;
      case 9:
        sub_2575CBE94(a2, a1, a3, a4);
        break;
      case 10:
        sub_2575CBF70(a2, a1, a3, a4, &OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_2575CBBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_257743274();
  return swift_endAccess();
}

uint64_t sub_2575CBC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_257743274();
  return swift_endAccess();
}

uint64_t sub_2575CBCAC()
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_1();
  v0 = sub_2577433B4();
  return OUTLINED_FUNCTION_306_0(v0);
}

void sub_2575CBD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_2575CBD5C()
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_1();
  v0 = sub_257743274();
  return OUTLINED_FUNCTION_306_0(v0);
}

uint64_t sub_2575CBDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575CBE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_2577433D4();
  return swift_endAccess();
}

void sub_2575CBF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_404_0();
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_82_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_64_1();
  v5 = sub_257743274();
  OUTLINED_FUNCTION_306_0(v5);
  OUTLINED_FUNCTION_405_0();
}

uint64_t sub_2575CBFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 16) != 1 || (result = sub_2577434B4(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 17) != 1 || (result = sub_2577434B4(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 24) || (result = sub_257743554(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 32) || (result = sub_257743554(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 40) != 1 || (result = sub_2577434B4(), !v4))
          {
            result = sub_2575CC1C8(a1, a2, a3, a4);
            if (!v4)
            {
              sub_2575CC3BC(a1, a2, a3, a4);
              v10 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
              result = swift_beginAccess();
              if (*(a1 + v10) == 1)
              {
                return sub_2577434B4();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2575CC1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
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

uint64_t sub_2575CC3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
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

uint64_t sub_2575CC5DC(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v42);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  v6 = MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  if (v18 != *(a2 + 16))
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v19 = *(a1 + 17);
  swift_beginAccess();
  if (v19 != *(a2 + 17))
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v20 = *(a1 + 24);
  swift_beginAccess();
  if (v20 != *(a2 + 24))
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  swift_beginAccess();
  if (v21 != *(a2 + 32))
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v22 = *(a1 + 40);
  swift_beginAccess();
  if (v22 != *(a2 + 40))
  {
    goto LABEL_20;
  }

  v23 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  swift_beginAccess();
  sub_257487308(a1 + v23);
  v39 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  swift_beginAccess();
  v24 = *(v5 + 48);
  sub_257487308(v17);
  v25 = a2 + v39;
  v39 = v24;
  sub_257487308(v25);
  v26 = v42;
  if (__swift_getEnumTagSinglePayload(v9, 1, v42) == 1)
  {

    sub_2574695E4(v17, &qword_27F87A1A0, &qword_257745750);
    if (__swift_getEnumTagSinglePayload(&v9[v39], 1, v26) != 1)
    {
LABEL_18:
      sub_2574695E4(v9, &qword_27F87FA30, &qword_2577673D8);
      goto LABEL_19;
    }

    sub_2574695E4(v9, &qword_27F87A1A0, &qword_257745750);
    goto LABEL_12;
  }

  sub_257487308(v9);
  if (__swift_getEnumTagSinglePayload(&v9[v39], 1, v26) == 1)
  {

    sub_2574695E4(v17, &qword_27F87A1A0, &qword_257745750);
LABEL_17:
    sub_257609BCC();
    goto LABEL_18;
  }

  sub_257609B78();

  sub_257598490();
  LODWORD(v39) = v27;
  sub_257609BCC();
  sub_2574695E4(v17, &qword_27F87A1A0, &qword_257745750);
  sub_257609BCC();
  sub_2574695E4(v9, &qword_27F87A1A0, &qword_257745750);
  if (v39)
  {
LABEL_12:
    v28 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
    swift_beginAccess();
    sub_257487308(a1 + v28);
    v29 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
    swift_beginAccess();
    v30 = *(v5 + 48);
    v9 = v41;
    sub_257487308(v14);
    sub_257487308(a2 + v29);
    v31 = v42;
    if (__swift_getEnumTagSinglePayload(v9, 1, v42) == 1)
    {
      sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
      if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v31) == 1)
      {
        sub_2574695E4(v9, &qword_27F87A1A0, &qword_257745750);
LABEL_23:
        v36 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
        swift_beginAccess();
        LOBYTE(v36) = *(a1 + v36);

        v37 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
        swift_beginAccess();
        LOBYTE(v37) = *(a2 + v37);

        v32 = v36 ^ v37 ^ 1;
        return v32 & 1;
      }

      goto LABEL_18;
    }

    sub_257487308(v9);
    if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v31) != 1)
    {
      sub_257609B78();
      sub_257598490();
      v35 = v34;
      sub_257609BCC();
      sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
      sub_257609BCC();
      sub_2574695E4(v9, &qword_27F87A1A0, &qword_257745750);
      if (v35)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

    sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
    goto LABEL_17;
  }

LABEL_19:

LABEL_20:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_2575CCE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7C0, type metadata accessor for Proto_BatchedMatMulLayerParams, &unk_25775BA98);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CCF20(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DE30, type metadata accessor for Proto_BatchedMatMulLayerParams, &unk_257761AD8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CCFE8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DE30, type metadata accessor for Proto_BatchedMatMulLayerParams, &unk_257761AD8);

  return sub_257743424();
}

uint64_t sub_2575CD0A8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9580);
  __swift_project_value_buffer(v0, qword_27F8E9580);
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
  *v10 = "interleave";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575CD2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F718, type metadata accessor for Proto_ConcatNDLayerParams, &unk_25775B9A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CD388(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DE18, type metadata accessor for Proto_ConcatNDLayerParams, &unk_2577622D0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CD450(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DE18, type metadata accessor for Proto_ConcatNDLayerParams, &unk_2577622D0);

  return sub_257743424();
}

uint64_t sub_2575CD5A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED90, type metadata accessor for Proto_SoftmaxNDLayerParams, &unk_25775B8B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CD644(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DE00, type metadata accessor for Proto_SoftmaxNDLayerParams, &unk_257765840);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CD70C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DE00, type metadata accessor for Proto_SoftmaxNDLayerParams, &unk_257765840);

  return sub_257743424();
}

uint64_t sub_2575CD894(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED50, type metadata accessor for Proto_ReverseLayerParams, &unk_25775B808);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CD934(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A270, type metadata accessor for Proto_ReverseLayerParams, &unk_257765C00);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CD9FC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A270, type metadata accessor for Proto_ReverseLayerParams, &unk_257765C00);

  return sub_257743424();
}

uint64_t sub_2575CDABC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E95C8);
  __swift_project_value_buffer(v0, qword_27F8E95C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "batchAxis";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sequenceAxis";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575CDC84()
{
  OUTLINED_FUNCTION_165_0();
  v3 = v2;
  v5 = v4;
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_12_8(), v5(), !v0))
  {
    if (!*(v1 + 8) || (OUTLINED_FUNCTION_12_8(), v5(), !v0))
    {
      v3(0);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_166_0();
}

uint64_t sub_2575CDDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED58, type metadata accessor for Proto_ReverseSeqLayerParams, &unk_25775B718);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CDE48(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A278, type metadata accessor for Proto_ReverseSeqLayerParams, &unk_257765B88);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CDF10(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A278, type metadata accessor for Proto_ReverseSeqLayerParams, &unk_257765B88);

  return sub_257743424();
}

uint64_t sub_2575CDFBC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E95E0);
  __swift_project_value_buffer(v0, qword_27F8E95E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shape";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575CE184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_LoadConstantNDLayerParams(0);
  type metadata accessor for Proto_WeightParams(0);
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  return sub_2577433D4();
}

void sub_2575CE238()
{
  OUTLINED_FUNCTION_102_0();
  v2 = v1;
  v4 = v3;
  if (!*(OUTLINED_FUNCTION_6_15() + 16) || (OUTLINED_FUNCTION_8_6(), sub_2577434A4(), !v0))
  {
    v5 = OUTLINED_FUNCTION_3_9();
    v4(v5);
    if (!v0)
    {
      v2(0);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_103_0();
}

uint64_t sub_2575CE2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_WeightParams(0);
  MEMORY[0x28223BE20](v8);
  ConstantNDLayerParams = type metadata accessor for Proto_LoadConstantNDLayerParams(0);
  sub_257487308(a1 + *(ConstantNDLayerParams + 24));
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F87A1A0, &qword_257745750);
  }

  sub_257609B78();
  sub_2575FB760(&qword_27F87E2D0, type metadata accessor for Proto_WeightParams, &unk_2577624B0);
  sub_257743574();
  return sub_257609BCC();
}

void sub_2575CE4B0()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_0_0();
  type metadata accessor for Proto_WeightParams(v5);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87FA30, &qword_2577673D8);
  OUTLINED_FUNCTION_41_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_32_3();
  if ((sub_257487374() & 1) == 0)
  {
    goto LABEL_11;
  }

  v4(0);
  v10 = *(v2 + 48);
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_129_1();
  OUTLINED_FUNCTION_65(v0);
  if (v12)
  {
    OUTLINED_FUNCTION_65(v0 + v10);
    if (v12)
    {
      sub_2574695E4(v0, &qword_27F87A1A0, &qword_257745750);
LABEL_14:
      OUTLINED_FUNCTION_372_0();
      OUTLINED_FUNCTION_1_16();
      v16 = sub_2575FB760(v14, v15, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_4_2(v16);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v11 = OUTLINED_FUNCTION_277();
  sub_257487308(v11);
  OUTLINED_FUNCTION_65(v0 + v10);
  if (v12)
  {
    sub_257609BCC();
LABEL_10:
    sub_2574695E4(v0, &qword_27F87FA30, &qword_2577673D8);
    goto LABEL_11;
  }

  sub_257609B78();
  OUTLINED_FUNCTION_360();
  sub_257598490();
  OUTLINED_FUNCTION_213_0();
  sub_257609BCC();
  OUTLINED_FUNCTION_357_0();
  sub_2574695E4(v0, &qword_27F87A1A0, &qword_257745750);
  if (v1)
  {
    goto LABEL_14;
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  OUTLINED_FUNCTION_65_0(v13);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2575CE7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F820, type metadata accessor for Proto_LoadConstantNDLayerParams, &unk_25775B628);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CE86C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DDD0, type metadata accessor for Proto_LoadConstantNDLayerParams, &unk_257761538);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CE934(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DDD0, type metadata accessor for Proto_LoadConstantNDLayerParams, &unk_257761538);

  return sub_257743424();
}

uint64_t sub_2575CEA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED60, type metadata accessor for Proto_FillLikeLayerParams, &unk_25775B538);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CEB14(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A280, type metadata accessor for Proto_FillLikeLayerParams, &unk_257765B10);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CEBDC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A280, type metadata accessor for Proto_FillLikeLayerParams, &unk_257765B10);

  return sub_257743424();
}

uint64_t sub_2575CEC88()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9610);
  __swift_project_value_buffer(v0, qword_27F8E9610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "targetShape";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575CEE50()
{
  OUTLINED_FUNCTION_100_1();
  while (1)
  {
    OUTLINED_FUNCTION_194();
    result = sub_257743234();
    if (v1 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v0(v3 + 8, v5, v4);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_144_0();
      v2(v8);
    }
  }

  return result;
}

uint64_t sub_2575CEED0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_267_0();
  if (!v1 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
  {
    OUTLINED_FUNCTION_285_0();
    if (!v3 || (OUTLINED_FUNCTION_12_11(), result = sub_2577434A4(), !v0))
    {
      type metadata accessor for Proto_FillStaticLayerParams(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2575CEFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED68, type metadata accessor for Proto_FillStaticLayerParams, &unk_25775B448);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CF068(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A288, type metadata accessor for Proto_FillStaticLayerParams, &unk_257765A98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CF130(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A288, type metadata accessor for Proto_FillStaticLayerParams, &unk_257765A98);

  return sub_257743424();
}

uint64_t sub_2575CF1CC()
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
      OUTLINED_FUNCTION_53();
      sub_2577432E4();
    }
  }

  return result;
}

uint64_t sub_2575CF290(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87ED70, type metadata accessor for Proto_FillDynamicLayerParams, &unk_25775B358);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CF330(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87A290, type metadata accessor for Proto_FillDynamicLayerParams, &unk_257765A20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CF3F8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87A290, type metadata accessor for Proto_FillDynamicLayerParams, &unk_257765A20);

  return sub_257743424();
}

uint64_t sub_2575CF4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE10, type metadata accessor for Proto_WhereBroadcastableLayerParams, &unk_25775B268);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CF56C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DD88, type metadata accessor for Proto_WhereBroadcastableLayerParams, &unk_2577650C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CF634(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DD88, type metadata accessor for Proto_WhereBroadcastableLayerParams, &unk_2577650C0);

  return sub_257743424();
}

uint64_t sub_2575CF6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F888, type metadata accessor for Proto_SinLayerParams, &unk_25775B100);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CF778(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DD68, type metadata accessor for Proto_SinLayerParams, &unk_25775B138);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CF840(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DD68, type metadata accessor for Proto_SinLayerParams, &unk_25775B138);

  return sub_257743424();
}

uint64_t sub_2575CF8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F890, type metadata accessor for Proto_CosLayerParams, &unk_25775AF98);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CF984(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DD48, type metadata accessor for Proto_CosLayerParams, &unk_25775AFD0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CFA4C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DD48, type metadata accessor for Proto_CosLayerParams, &unk_25775AFD0);

  return sub_257743424();
}

uint64_t sub_2575CFAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F898, type metadata accessor for Proto_TanLayerParams, &unk_25775AE30);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CFB90(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DD28, type metadata accessor for Proto_TanLayerParams, &unk_25775AE68);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CFC58(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DD28, type metadata accessor for Proto_TanLayerParams, &unk_25775AE68);

  return sub_257743424();
}

uint64_t sub_2575CFCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8A0, type metadata accessor for Proto_AsinLayerParams, &unk_25775ACC8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CFD9C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DD08, type metadata accessor for Proto_AsinLayerParams, &unk_25775AD00);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575CFE64(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DD08, type metadata accessor for Proto_AsinLayerParams, &unk_25775AD00);

  return sub_257743424();
}

uint64_t sub_2575CFF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8A8, type metadata accessor for Proto_AcosLayerParams, &unk_25775AB60);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575CFFA8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DCE8, type metadata accessor for Proto_AcosLayerParams, &unk_25775AB98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D0070(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DCE8, type metadata accessor for Proto_AcosLayerParams, &unk_25775AB98);

  return sub_257743424();
}

uint64_t sub_2575D0114(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8B0, type metadata accessor for Proto_AtanLayerParams, &unk_25775A9F8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D01B4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DCC8, type metadata accessor for Proto_AtanLayerParams, &unk_25775AA30);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D027C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DCC8, type metadata accessor for Proto_AtanLayerParams, &unk_25775AA30);

  return sub_257743424();
}

uint64_t sub_2575D0320(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8B8, type metadata accessor for Proto_SinhLayerParams, &unk_25775A890);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D03C0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DCA8, type metadata accessor for Proto_SinhLayerParams, &unk_25775A8C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D0488(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DCA8, type metadata accessor for Proto_SinhLayerParams, &unk_25775A8C8);

  return sub_257743424();
}

uint64_t sub_2575D052C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8C0, type metadata accessor for Proto_CoshLayerParams, &unk_25775A728);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D05CC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DC88, type metadata accessor for Proto_CoshLayerParams, &unk_25775A760);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D0694(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DC88, type metadata accessor for Proto_CoshLayerParams, &unk_25775A760);

  return sub_257743424();
}

uint64_t sub_2575D0738(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8C8, type metadata accessor for Proto_TanhLayerParams, &unk_25775A5C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D07D8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DC68, type metadata accessor for Proto_TanhLayerParams, &unk_25775A5F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D08A0(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DC68, type metadata accessor for Proto_TanhLayerParams, &unk_25775A5F8);

  return sub_257743424();
}

uint64_t sub_2575D0944(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8D0, type metadata accessor for Proto_AsinhLayerParams, &unk_25775A458);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D09E4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DC48, type metadata accessor for Proto_AsinhLayerParams, &unk_25775A490);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D0AAC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DC48, type metadata accessor for Proto_AsinhLayerParams, &unk_25775A490);

  return sub_257743424();
}

uint64_t sub_2575D0B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8D8, type metadata accessor for Proto_AcoshLayerParams, &unk_25775A2F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D0BF0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DC28, type metadata accessor for Proto_AcoshLayerParams, &unk_25775A328);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D0CB8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DC28, type metadata accessor for Proto_AcoshLayerParams, &unk_25775A328);

  return sub_257743424();
}

uint64_t sub_2575D0D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8E0, type metadata accessor for Proto_AtanhLayerParams, &unk_25775A188);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D0DFC(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DC08, type metadata accessor for Proto_AtanhLayerParams, &unk_25775A1C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D0EC4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DC08, type metadata accessor for Proto_AtanhLayerParams, &unk_25775A1C0);

  return sub_257743424();
}

uint64_t sub_2575D0F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF38, type metadata accessor for Proto_PowBroadcastableLayerParams, &unk_25775A098);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D1008(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DBF0, type metadata accessor for Proto_PowBroadcastableLayerParams, &unk_257764238);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D10D0(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DBF0, type metadata accessor for Proto_PowBroadcastableLayerParams, &unk_257764238);

  return sub_257743424();
}

uint64_t sub_2575D1174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F8E8, type metadata accessor for Proto_Exp2LayerParams, &unk_257759F30);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D1214(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DBD0, type metadata accessor for Proto_Exp2LayerParams, &unk_257759F68);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D12DC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DBD0, type metadata accessor for Proto_Exp2LayerParams, &unk_257759F68);

  return sub_257743424();
}

uint64_t sub_2575D1380(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE68, type metadata accessor for Proto_WhereNonZeroLayerParams, &unk_257759E40);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D1420(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DBB8, type metadata accessor for Proto_WhereNonZeroLayerParams, &unk_257764C88);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D14E8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DBB8, type metadata accessor for Proto_WhereNonZeroLayerParams, &unk_257764C88);

  return sub_257743424();
}

uint64_t sub_2575D1564()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E97C0);
  __swift_project_value_buffer(v0, qword_27F8E97C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "numLower";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numUpper";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D172C()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_148_1();
      v0();
    }
  }

  return result;
}

uint64_t sub_2575D1828(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F150, type metadata accessor for Proto_MatrixBandPartLayerParams, &unk_257759D50);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D18C8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DBA0, type metadata accessor for Proto_MatrixBandPartLayerParams, &unk_257762AC8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D1990(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DBA0, type metadata accessor for Proto_MatrixBandPartLayerParams, &unk_257762AC8);

  return sub_257743424();
}

uint64_t sub_2575D1AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F160, type metadata accessor for Proto_UpperTriangularLayerParams, &unk_257759C60);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D1B84(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DB88, type metadata accessor for Proto_UpperTriangularLayerParams, &unk_2577629D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D1C4C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DB88, type metadata accessor for Proto_UpperTriangularLayerParams, &unk_2577629D8);

  return sub_257743424();
}

uint64_t sub_2575D1DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F158, type metadata accessor for Proto_LowerTriangularLayerParams, &unk_257759B70);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D1E40(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DB70, type metadata accessor for Proto_LowerTriangularLayerParams, &unk_257762A50);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D1F08(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DB70, type metadata accessor for Proto_LowerTriangularLayerParams, &unk_257762A50);

  return sub_257743424();
}

uint64_t sub_2575D1FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFD0, type metadata accessor for Proto_BroadcastToLikeLayerParams, &unk_257759A80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D207C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DB58, type metadata accessor for Proto_BroadcastToLikeLayerParams, &unk_257763AB8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D2144(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DB58, type metadata accessor for Proto_BroadcastToLikeLayerParams, &unk_257763AB8);

  return sub_257743424();
}

uint64_t sub_2575D2270(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFD8, type metadata accessor for Proto_BroadcastToStaticLayerParams, &unk_257759990);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D2310(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DB40, type metadata accessor for Proto_BroadcastToStaticLayerParams, &unk_257763A40);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D23D8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DB40, type metadata accessor for Proto_BroadcastToStaticLayerParams, &unk_257763A40);

  return sub_257743424();
}

uint64_t sub_2575D24C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFE0, type metadata accessor for Proto_BroadcastToDynamicLayerParams, &unk_2577598A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D2560(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DB28, type metadata accessor for Proto_BroadcastToDynamicLayerParams, &unk_2577639C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D2628(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DB28, type metadata accessor for Proto_BroadcastToDynamicLayerParams, &unk_2577639C8);

  return sub_257743424();
}

uint64_t sub_2575D26CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EDA8, type metadata accessor for Proto_AddBroadcastableLayerParams, &unk_2577597B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D276C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DB10, type metadata accessor for Proto_AddBroadcastableLayerParams, &unk_2577656D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D2834(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DB10, type metadata accessor for Proto_AddBroadcastableLayerParams, &unk_2577656D8);

  return sub_257743424();
}

uint64_t sub_2575D28D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE50, type metadata accessor for Proto_MaxBroadcastableLayerParams, &unk_257759700);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D2978(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DB00, type metadata accessor for Proto_MaxBroadcastableLayerParams, &unk_257764DF0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D2A40(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DB00, type metadata accessor for Proto_MaxBroadcastableLayerParams, &unk_257764DF0);

  return sub_257743424();
}

uint64_t sub_2575D2AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EE48, type metadata accessor for Proto_MinBroadcastableLayerParams, &unk_257759610);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D2B84(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DAE8, type metadata accessor for Proto_MinBroadcastableLayerParams, &unk_257764E68);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D2C4C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DAE8, type metadata accessor for Proto_MinBroadcastableLayerParams, &unk_257764E68);

  return sub_257743424();
}

uint64_t sub_2575D2CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF30, type metadata accessor for Proto_ModBroadcastableLayerParams, &unk_257759520);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D2D90(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DAD0, type metadata accessor for Proto_ModBroadcastableLayerParams, &unk_2577642B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D2E58(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DAD0, type metadata accessor for Proto_ModBroadcastableLayerParams, &unk_2577642B0);

  return sub_257743424();
}

uint64_t sub_2575D2EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF48, type metadata accessor for Proto_FloorDivBroadcastableLayerParams, &unk_257759430);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D2F9C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DAB8, type metadata accessor for Proto_FloorDivBroadcastableLayerParams, &unk_257764148);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D3064(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DAB8, type metadata accessor for Proto_FloorDivBroadcastableLayerParams, &unk_257764148);

  return sub_257743424();
}

uint64_t sub_2575D3108(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F710, type metadata accessor for Proto_SubtractBroadcastableLayerParams, &unk_257759340);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D31A8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DAA0, type metadata accessor for Proto_SubtractBroadcastableLayerParams, &unk_257762348);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D3270(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DAA0, type metadata accessor for Proto_SubtractBroadcastableLayerParams, &unk_257762348);

  return sub_257743424();
}

uint64_t sub_2575D3314(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EFB8, type metadata accessor for Proto_MultiplyBroadcastableLayerParams, &unk_257759250);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D33B4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA88, type metadata accessor for Proto_MultiplyBroadcastableLayerParams, &unk_257763C20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D347C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA88, type metadata accessor for Proto_MultiplyBroadcastableLayerParams, &unk_257763C20);

  return sub_257743424();
}

uint64_t sub_2575D3520(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EF40, type metadata accessor for Proto_DivideBroadcastableLayerParams, &unk_2577591A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D35C0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA78, type metadata accessor for Proto_DivideBroadcastableLayerParams, &unk_2577641C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D3688(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA78, type metadata accessor for Proto_DivideBroadcastableLayerParams, &unk_2577641C0);

  return sub_257743424();
}

uint64_t sub_2575D37AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F018, type metadata accessor for Proto_GatherLayerParams, &unk_2577590B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D384C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA60, type metadata accessor for Proto_GatherLayerParams, &unk_257763680);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D3914(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA60, type metadata accessor for Proto_GatherLayerParams, &unk_257763680);

  return sub_257743424();
}

uint64_t sub_2575D39C0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9928);
  __swift_project_value_buffer(v0, qword_27F8E9928);
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
  *v10 = "mode";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D3C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EEE0, type metadata accessor for Proto_ScatterLayerParams, &unk_257759000);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D3CF4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA50, type metadata accessor for Proto_ScatterLayerParams, &unk_257764670);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D3DBC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA50, type metadata accessor for Proto_ScatterLayerParams, &unk_257764670);

  return sub_257743424();
}

uint64_t sub_2575D3E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F020, type metadata accessor for Proto_GatherNDLayerParams, &unk_257758F50);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D3F30(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA40, type metadata accessor for Proto_GatherNDLayerParams, &unk_257763608);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D3FF8(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA40, type metadata accessor for Proto_GatherNDLayerParams, &unk_257763608);

  return sub_257743424();
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV19ScatterNDParametersV2eeoiySbAG_AGtFZ_0()
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_387_0();
  if (*(v2 + 8) == 1)
  {
    switch(v1)
    {
      case 1:
        if (v0 == 1)
        {
          goto LABEL_6;
        }

        return 0;
      case 2:
        if (v0 == 2)
        {
          goto LABEL_6;
        }

        return 0;
      case 3:
        if (v0 == 3)
        {
          goto LABEL_6;
        }

        return 0;
      case 4:
        if (v0 == 4)
        {
          goto LABEL_6;
        }

        return 0;
      case 5:
        if (v0 == 5)
        {
          goto LABEL_6;
        }

        return 0;
      case 6:
        if (v0 == 6)
        {
          goto LABEL_6;
        }

        return 0;
      default:
        if (v0)
        {
          return 0;
        }

        goto LABEL_6;
    }
  }

  if (v0 != v1)
  {
    return 0;
  }

LABEL_6:
  type metadata accessor for Proto_ScatterNDLayerParams(0);
  OUTLINED_FUNCTION_95_0();
  sub_2577431B4();
  OUTLINED_FUNCTION_1_16();
  v6 = sub_2575FB760(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2575D42A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EEF0, type metadata accessor for Proto_ScatterNDLayerParams, &unk_257758EA0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D4348(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA30, type metadata accessor for Proto_ScatterNDLayerParams, &unk_2577645F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D4410(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA30, type metadata accessor for Proto_ScatterNDLayerParams, &unk_2577645F8);

  return sub_257743424();
}

uint64_t sub_2575D4538(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F028, type metadata accessor for Proto_GatherAlongAxisLayerParams, &unk_257758DF0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D45D8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA20, type metadata accessor for Proto_GatherAlongAxisLayerParams, &unk_257763590);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D46A0(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA20, type metadata accessor for Proto_GatherAlongAxisLayerParams, &unk_257763590);

  return sub_257743424();
}

uint64_t sub_2575D474C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9988);
  __swift_project_value_buffer(v0, qword_27F8E9988);
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
  *v10 = "mode";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D4914()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_167_1();
      OUTLINED_FUNCTION_353_0();
      v0();
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_144_0();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_2575D4990(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v4))
  {
    if (!*(v5 + 8) || (OUTLINED_FUNCTION_184_1(), sub_257609DC4(), OUTLINED_FUNCTION_27_4(), result = sub_2577434C4(), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_7_5();
    }
  }

  return result;
}

uint64_t sub_2575D4A3C()
{
  OUTLINED_FUNCTION_104_0();
  if (!v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  v3 = *(v2 + 8);
  v5 = *(v4 + 8);
  if (*(v4 + 16) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 == 1)
        {
          goto LABEL_8;
        }

        return 0;
      case 2:
        if (v3 == 2)
        {
          goto LABEL_8;
        }

        return 0;
      case 3:
        if (v3 == 3)
        {
          goto LABEL_8;
        }

        return 0;
      case 4:
        if (v3 == 4)
        {
          goto LABEL_8;
        }

        return 0;
      case 5:
        if (v3 == 5)
        {
          goto LABEL_8;
        }

        return 0;
      case 6:
        if (v3 == 6)
        {
          goto LABEL_8;
        }

        return 0;
      default:
        if (v3)
        {
          return 0;
        }

        goto LABEL_8;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_8:
  v1(0);
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_1_16();
  v9 = sub_2575FB760(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v9) & 1;
}

uint64_t sub_2575D4BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87EEF8, type metadata accessor for Proto_ScatterAlongAxisLayerParams, &unk_257758D40);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D4C50(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA10, type metadata accessor for Proto_ScatterAlongAxisLayerParams, &unk_257764580);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D4D18(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA10, type metadata accessor for Proto_ScatterAlongAxisLayerParams, &unk_257764580);

  return sub_257743424();
}

uint64_t sub_2575D4E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F010, type metadata accessor for Proto_StackLayerParams, &unk_257758C90);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D4F0C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87DA00, type metadata accessor for Proto_StackLayerParams, &unk_2577636F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D4FD4(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87DA00, type metadata accessor for Proto_StackLayerParams, &unk_2577636F8);

  return sub_257743424();
}

uint64_t sub_2575D5130(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F038, type metadata accessor for Proto_RankPreservingReshapeLayerParams, &unk_257758BE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D51D0(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D9F0, type metadata accessor for Proto_RankPreservingReshapeLayerParams, &unk_2577634A0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D5298(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D9F0, type metadata accessor for Proto_RankPreservingReshapeLayerParams, &unk_2577634A0);

  return sub_257743424();
}

uint64_t sub_2575D5358()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E99D0);
  __swift_project_value_buffer(v0, qword_27F8E99D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "padAmounts";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "padToGivenOutputSizeMode";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D5560()
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
        sub_257743354();
        break;
      case 1:
        OUTLINED_FUNCTION_53();
        sub_2577432E4();
        break;
    }
  }

  return result;
}

uint64_t sub_2575D55DC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_267_0();
  if (!v1 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v0))
  {
    OUTLINED_FUNCTION_285_0();
    if (!v3 || (OUTLINED_FUNCTION_12_11(), result = sub_2577434A4(), !v0))
    {
      OUTLINED_FUNCTION_388_0();
      if (!v4 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434B4(), !v0))
      {
        type metadata accessor for Proto_ConstantPaddingLayerParams(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575D567C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_164_1(a1);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_267();
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_246_0();
  if (!v4)
  {
    return 0;
  }

  type metadata accessor for Proto_ConstantPaddingLayerParams(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v8 = sub_2575FB760(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v8) & 1;
}

uint64_t sub_2575D5758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F000, type metadata accessor for Proto_ConstantPaddingLayerParams, &unk_257758AF0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D57F8(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D9D8, type metadata accessor for Proto_ConstantPaddingLayerParams, &unk_2577637E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D58C0(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D9D8, type metadata accessor for Proto_ConstantPaddingLayerParams, &unk_2577637E8);

  return sub_257743424();
}

uint64_t sub_2575D5940()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E99E8);
  __swift_project_value_buffer(v0, qword_27F8E99E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
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
  *v10 = "mean";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stdDev";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D5BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7C8, type metadata accessor for Proto_RandomNormalLikeLayerParams, &unk_257758A00);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D5C5C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D9C0, type metadata accessor for Proto_RandomNormalLikeLayerParams, &unk_257761A60);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D5D24(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D9C0, type metadata accessor for Proto_RandomNormalLikeLayerParams, &unk_257761A60);

  return sub_257743424();
}

uint64_t sub_2575D5DD0()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9A00);
  __swift_project_value_buffer(v0, qword_27F8E9A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
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
  *v10 = "mean";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stdDev";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "outputShape";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D6084(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7D0, type metadata accessor for Proto_RandomNormalStaticLayerParams, &unk_257758910);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D6124(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D9A8, type metadata accessor for Proto_RandomNormalStaticLayerParams, &unk_2577619E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D61EC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D9A8, type metadata accessor for Proto_RandomNormalStaticLayerParams, &unk_2577619E8);

  return sub_257743424();
}

uint64_t sub_2575D6298()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9A18);
  __swift_project_value_buffer(v0, qword_27F8E9A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
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
  *v10 = "mean";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stdDev";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

void sub_2575D64A0()
{
  OUTLINED_FUNCTION_188_0();
  v2 = v1;
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), sub_257743504(), !v0))
  {
    OUTLINED_FUNCTION_284();
    if (!v3 || (OUTLINED_FUNCTION_64_1(), sub_2577434E4(), !v0))
    {
      v4.n128_f32[0] = OUTLINED_FUNCTION_309_0();
      if (!v5 || (OUTLINED_FUNCTION_64_1(), sub_2577434E4(), !v0))
      {
        v2(0, v4);
        OUTLINED_FUNCTION_7_5();
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575D65B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7D8, type metadata accessor for Proto_RandomNormalDynamicLayerParams, &unk_257758820);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D6658(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D990, type metadata accessor for Proto_RandomNormalDynamicLayerParams, &unk_257761970);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D6720(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D990, type metadata accessor for Proto_RandomNormalDynamicLayerParams, &unk_257761970);

  return sub_257743424();
}

uint64_t sub_2575D67CC()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9A30);
  __swift_project_value_buffer(v0, qword_27F8E9A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
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
  *v10 = "minVal";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxVal";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D6A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7E0, type metadata accessor for Proto_RandomUniformLikeLayerParams, &unk_257758730);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D6AE4(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D978, type metadata accessor for Proto_RandomUniformLikeLayerParams, &unk_2577618F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D6BAC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D978, type metadata accessor for Proto_RandomUniformLikeLayerParams, &unk_2577618F8);

  return sub_257743424();
}

uint64_t sub_2575D6C58()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9A48);
  __swift_project_value_buffer(v0, qword_27F8E9A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
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
  *v10 = "minVal";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxVal";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "outputShape";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D6E98()
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
        sub_257743324();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_10_7();
        sub_2577432E4();
        break;
      case 4:
        OUTLINED_FUNCTION_112_1();
        sub_257743354();
        break;
      default:
        continue;
    }
  }
}

void sub_2575D6F34()
{
  OUTLINED_FUNCTION_188_0();
  v2 = v1;
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), sub_257743504(), !v0))
  {
    OUTLINED_FUNCTION_284();
    if (!v3 || (OUTLINED_FUNCTION_64_1(), sub_2577434E4(), !v0))
    {
      OUTLINED_FUNCTION_309_0();
      if (!v4 || (OUTLINED_FUNCTION_64_1(), sub_2577434E4(), !v0))
      {
        OUTLINED_FUNCTION_307_0();
        if (!v5 || (OUTLINED_FUNCTION_12_8(), sub_2577434A4(), !v0))
        {
          v2(0);
          OUTLINED_FUNCTION_7_5();
        }
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2575D6FF4()
{
  OUTLINED_FUNCTION_104_0();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_119_0(v0);
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_172_0();
  if (!v1)
  {
    return 0;
  }

  v3 = v2;
  OUTLINED_FUNCTION_269_0();
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  v3(0);
  OUTLINED_FUNCTION_189_0();
  OUTLINED_FUNCTION_1_16();
  v6 = sub_2575FB760(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2575D70FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7E8, type metadata accessor for Proto_RandomUniformStaticLayerParams, &unk_257758640);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D719C(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D960, type metadata accessor for Proto_RandomUniformStaticLayerParams, &unk_257761880);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D7264(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D960, type metadata accessor for Proto_RandomUniformStaticLayerParams, &unk_257761880);

  return sub_257743424();
}

uint64_t sub_2575D7310()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9A60);
  __swift_project_value_buffer(v0, qword_27F8E9A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
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
  *v10 = "minVal";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "maxVal";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D7514()
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

    else if (result == 1)
    {
      OUTLINED_FUNCTION_53();
      sub_257743324();
    }
  }

  return result;
}

uint64_t sub_2575D758C()
{
  OUTLINED_FUNCTION_104_0();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_119_0(v0);
  if (!v1)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_172_0();
  if (!v1)
  {
    return 0;
  }

  v2(0, v3);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v6 = sub_2575FB760(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v6) & 1;
}

uint64_t sub_2575D7684(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7F0, type metadata accessor for Proto_RandomUniformDynamicLayerParams, &unk_257758550);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D7724(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D948, type metadata accessor for Proto_RandomUniformDynamicLayerParams, &unk_257761808);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D77EC(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D948, type metadata accessor for Proto_RandomUniformDynamicLayerParams, &unk_257761808);

  return sub_257743424();
}

uint64_t sub_2575D7898()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9A78);
  __swift_project_value_buffer(v0, qword_27F8E9A78);
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

uint64_t sub_2575D7AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2575FB760(&qword_27F87F7F8, type metadata accessor for Proto_RandomBernoulliLikeLayerParams, &unk_257758460);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575D7B74(uint64_t a1)
{
  v2 = sub_2575FB760(&qword_27F87D930, type metadata accessor for Proto_RandomBernoulliLikeLayerParams, &unk_257761790);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575D7C3C(uint64_t a1, uint64_t a2)
{
  sub_2575FB760(&qword_27F87D930, type metadata accessor for Proto_RandomBernoulliLikeLayerParams, &unk_257761790);

  return sub_257743424();
}

uint64_t sub_2575D7CE8()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E9A90);
  __swift_project_value_buffer(v0, qword_27F8E9A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
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
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "outputShape";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575D7EF0()
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
        sub_257743354();
        break;
      case 2:
        OUTLINED_FUNCTION_89_2();
        sub_2577432E4();
        break;
      case 1:
        OUTLINED_FUNCTION_53();
        sub_257743324();
        break;
    }
  }

  return result;
}

uint64_t sub_2575D7F6C(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_6_15() || (OUTLINED_FUNCTION_8_6(), result = sub_257743504(), !v1))
  {
    OUTLINED_FUNCTION_284();
    if (!v3 || (OUTLINED_FUNCTION_64_1(), result = sub_2577434E4(), !v1))
    {
      OUTLINED_FUNCTION_307_0();
      if (!v4 || (OUTLINED_FUNCTION_12_8(), result = sub_2577434A4(), !v1))
      {
        type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_2575D8004()
{
  OUTLINED_FUNCTION_104_0();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_119_0(v0);
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_269_0();
  if ((sub_257487374() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0);
  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_1_16();
  v4 = sub_2575FB760(v2, v3, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_4_2(v4) & 1;
}