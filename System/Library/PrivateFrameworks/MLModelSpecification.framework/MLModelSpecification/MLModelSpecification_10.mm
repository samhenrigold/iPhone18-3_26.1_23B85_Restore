uint64_t sub_257568E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_EmbeddingNDLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F550, &qword_257767180);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 105)
    {
      sub_2574695E4(v21, &qword_27F87F550, &qword_257767180);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E210, type metadata accessor for Proto_EmbeddingNDLayerParams, &unk_2577620F0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F550, &qword_257767180);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F550, &qword_257767180);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F550, &qword_257767180);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F550, &qword_257767180);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575693C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F558, &qword_257767188);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 106)
    {
      sub_2574695E4(v21, &qword_27F87F558, &qword_257767188);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DE30, type metadata accessor for Proto_BatchedMatMulLayerParams, &unk_257761AD8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F558, &qword_257767188);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F558, &qword_257767188);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F558, &qword_257767188);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F558, &qword_257767188);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257569938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  ShapeLayerParams = type metadata accessor for Proto_GetShapeLayerParams(0);
  v6 = MEMORY[0x28223BE20](ShapeLayerParams);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F560, &qword_257767190);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, ShapeLayerParams);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 107)
    {
      sub_2574695E4(v21, &qword_27F87F560, &qword_257767190);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, ShapeLayerParams);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D628, type metadata accessor for Proto_GetShapeLayerParams, &unk_257756500);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F560, &qword_257767190);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, ShapeLayerParams) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F560, &qword_257767190);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F560, &qword_257767190);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F560, &qword_257767190);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257569EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  ConstantNDLayerParams = type metadata accessor for Proto_LoadConstantNDLayerParams(0);
  v6 = MEMORY[0x28223BE20](ConstantNDLayerParams);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F568, &qword_257767198);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, ConstantNDLayerParams);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 108)
    {
      sub_2574695E4(v21, &qword_27F87F568, &qword_257767198);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, ConstantNDLayerParams);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DDD0, type metadata accessor for Proto_LoadConstantNDLayerParams, &unk_257761538);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F568, &qword_257767198);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, ConstantNDLayerParams) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F568, &qword_257767198);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F568, &qword_257767198);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F568, &qword_257767198);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_FillLikeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F570, &qword_2577671A0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 109)
    {
      sub_2574695E4(v21, &qword_27F87F570, &qword_2577671A0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A280, type metadata accessor for Proto_FillLikeLayerParams, &unk_257765B10);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F570, &qword_2577671A0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F570, &qword_2577671A0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F570, &qword_2577671A0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F570, &qword_2577671A0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_FillStaticLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F578, &qword_2577671A8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 110)
    {
      sub_2574695E4(v21, &qword_27F87F578, &qword_2577671A8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A288, type metadata accessor for Proto_FillStaticLayerParams, &unk_257765A98);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F578, &qword_2577671A8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F578, &qword_2577671A8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F578, &qword_2577671A8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F578, &qword_2577671A8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756AEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_FillDynamicLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F580, &qword_2577671B0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 111)
    {
      sub_2574695E4(v21, &qword_27F87F580, &qword_2577671B0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87A290, type metadata accessor for Proto_FillDynamicLayerParams, &unk_257765A20);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F580, &qword_2577671B0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F580, &qword_2577671B0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F580, &qword_2577671B0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F580, &qword_2577671B0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756B468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BroadcastToLikeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F588, &qword_2577671B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 112)
    {
      sub_2574695E4(v21, &qword_27F87F588, &qword_2577671B8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB58, type metadata accessor for Proto_BroadcastToLikeLayerParams, &unk_257763AB8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F588, &qword_2577671B8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F588, &qword_2577671B8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F588, &qword_2577671B8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F588, &qword_2577671B8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756B9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BroadcastToStaticLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F590, &qword_2577671C0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 113)
    {
      sub_2574695E4(v21, &qword_27F87F590, &qword_2577671C0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB40, type metadata accessor for Proto_BroadcastToStaticLayerParams, &unk_257763A40);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F590, &qword_2577671C0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F590, &qword_2577671C0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F590, &qword_2577671C0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F590, &qword_2577671C0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_BroadcastToDynamicLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F598, &qword_2577671C8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 114)
    {
      sub_2574695E4(v21, &qword_27F87F598, &qword_2577671C8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB28, type metadata accessor for Proto_BroadcastToDynamicLayerParams, &unk_2577639C8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F598, &qword_2577671C8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F598, &qword_2577671C8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F598, &qword_2577671C8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F598, &qword_2577671C8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756C4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SqueezeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5A0, &qword_2577671D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 115)
    {
      sub_2574695E4(v21, &qword_27F87F5A0, &qword_2577671D0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D770, type metadata accessor for Proto_SqueezeLayerParams, &unk_257764850);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5A0, &qword_2577671D0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5A0, &qword_2577671D0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5A0, &qword_2577671D0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5A0, &qword_2577671D0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756CA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ExpandDimsLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5A8, &qword_2577671D8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 116)
    {
      sub_2574695E4(v21, &qword_27F87F5A8, &qword_2577671D8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7E0, type metadata accessor for Proto_ExpandDimsLayerParams, &unk_257764B20);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5A8, &qword_2577671D8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5A8, &qword_2577671D8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5A8, &qword_2577671D8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5A8, &qword_2577671D8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_FlattenTo2DLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5B0, &qword_2577671E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 117)
    {
      sub_2574695E4(v21, &qword_27F87F5B0, &qword_2577671E0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7D0, type metadata accessor for Proto_FlattenTo2DLayerParams, &unk_257763950);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5B0, &qword_2577671E0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5B0, &qword_2577671E0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5B0, &qword_2577671E0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5B0, &qword_2577671E0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReshapeLikeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5B8, &qword_2577671E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 118)
    {
      sub_2574695E4(v21, &qword_27F87F5B8, &qword_2577671E8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7A0, type metadata accessor for Proto_ReshapeLikeLayerParams, &unk_2577638D8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5B8, &qword_2577671E8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5B8, &qword_2577671E8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5B8, &qword_2577671E8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5B8, &qword_2577671E8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756DA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReshapeStaticLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5C0, &qword_2577671F0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 119)
    {
      sub_2574695E4(v21, &qword_27F87F5C0, &qword_2577671F0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7B8, type metadata accessor for Proto_ReshapeStaticLayerParams, &unk_257762D20);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5C0, &qword_2577671F0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5C0, &qword_2577671F0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5C0, &qword_2577671F0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5C0, &qword_2577671F0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756DFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReshapeDynamicLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5C8, &qword_2577671F8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 120)
    {
      sub_2574695E4(v21, &qword_27F87F5C8, &qword_2577671F8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D788, type metadata accessor for Proto_ReshapeDynamicLayerParams, &unk_257763860);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5C8, &qword_2577671F8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5C8, &qword_2577671F8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5C8, &qword_2577671F8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5C8, &qword_2577671F8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5D0, &qword_257767200);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 121)
    {
      sub_2574695E4(v21, &qword_27F87F5D0, &qword_257767200);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D9F0, type metadata accessor for Proto_RankPreservingReshapeLayerParams, &unk_2577634A0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5D0, &qword_257767200);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5D0, &qword_257767200);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5D0, &qword_257767200);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5D0, &qword_257767200);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ConstantPaddingLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5D8, &qword_257767208);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 122)
    {
      sub_2574695E4(v21, &qword_27F87F5D8, &qword_257767208);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D9D8, type metadata accessor for Proto_ConstantPaddingLayerParams, &unk_2577637E8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5D8, &qword_257767208);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5D8, &qword_257767208);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5D8, &qword_257767208);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5D8, &qword_257767208);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomNormalLikeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5E0, &qword_257767210);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 123)
    {
      sub_2574695E4(v21, &qword_27F87F5E0, &qword_257767210);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D9C0, type metadata accessor for Proto_RandomNormalLikeLayerParams, &unk_257761A60);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5E0, &qword_257767210);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5E0, &qword_257767210);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5E0, &qword_257767210);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5E0, &qword_257767210);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756F5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomNormalStaticLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5E8, &qword_257767218);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 124)
    {
      sub_2574695E4(v21, &qword_27F87F5E8, &qword_257767218);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D9A8, type metadata accessor for Proto_RandomNormalStaticLayerParams, &unk_2577619E8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5E8, &qword_257767218);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5E8, &qword_257767218);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5E8, &qword_257767218);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5E8, &qword_257767218);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25756FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomNormalDynamicLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5F0, &qword_257767220);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 125)
    {
      sub_2574695E4(v21, &qword_27F87F5F0, &qword_257767220);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D990, type metadata accessor for Proto_RandomNormalDynamicLayerParams, &unk_257761970);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5F0, &qword_257767220);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5F0, &qword_257767220);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5F0, &qword_257767220);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5F0, &qword_257767220);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257570088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomUniformLikeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F5F8, &qword_257767228);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 126)
    {
      sub_2574695E4(v21, &qword_27F87F5F8, &qword_257767228);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D978, type metadata accessor for Proto_RandomUniformLikeLayerParams, &unk_2577618F8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F5F8, &qword_257767228);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F5F8, &qword_257767228);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F5F8, &qword_257767228);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F5F8, &qword_257767228);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575705F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomUniformStaticLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F600, &qword_257767230);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 127)
    {
      sub_2574695E4(v21, &qword_27F87F600, &qword_257767230);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D960, type metadata accessor for Proto_RandomUniformStaticLayerParams, &unk_257761880);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F600, &qword_257767230);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F600, &qword_257767230);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F600, &qword_257767230);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F600, &qword_257767230);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257570B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomUniformDynamicLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F608, &qword_257767238);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 128)
    {
      sub_2574695E4(v21, &qword_27F87F608, &qword_257767238);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D948, type metadata accessor for Proto_RandomUniformDynamicLayerParams, &unk_257761808);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F608, &qword_257767238);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F608, &qword_257767238);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F608, &qword_257767238);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F608, &qword_257767238);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575710D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomBernoulliLikeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F610, &qword_257767240);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 129)
    {
      sub_2574695E4(v21, &qword_27F87F610, &qword_257767240);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D930, type metadata accessor for Proto_RandomBernoulliLikeLayerParams, &unk_257761790);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F610, &qword_257767240);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F610, &qword_257767240);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F610, &qword_257767240);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F610, &qword_257767240);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257571648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F618, &qword_257767248);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 130)
    {
      sub_2574695E4(v21, &qword_27F87F618, &qword_257767248);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D918, type metadata accessor for Proto_RandomBernoulliStaticLayerParams, &unk_257761718);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F618, &qword_257767248);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F618, &qword_257767248);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F618, &qword_257767248);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F618, &qword_257767248);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257571BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_RandomBernoulliDynamicLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F620, &qword_257767250);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 131)
    {
      sub_2574695E4(v21, &qword_27F87F620, &qword_257767250);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D900, type metadata accessor for Proto_RandomBernoulliDynamicLayerParams, &unk_2577616A0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F620, &qword_257767250);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F620, &qword_257767250);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F620, &qword_257767250);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F620, &qword_257767250);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257572128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CategoricalDistributionLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F628, &qword_257767258);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 132)
    {
      sub_2574695E4(v21, &qword_27F87F628, &qword_257767258);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D8E8, type metadata accessor for Proto_CategoricalDistributionLayerParams, &unk_257761628);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F628, &qword_257767258);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F628, &qword_257767258);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F628, &qword_257767258);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F628, &qword_257767258);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257572698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceL1LayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F630, &qword_257767260);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 133)
    {
      sub_2574695E4(v21, &qword_27F87F630, &qword_257767260);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D8D0, type metadata accessor for Proto_ReduceL1LayerParams, &unk_257765570);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F630, &qword_257767260);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F630, &qword_257767260);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F630, &qword_257767260);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F630, &qword_257767260);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257572C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceL2LayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F638, &qword_257767268);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 134)
    {
      sub_2574695E4(v21, &qword_27F87F638, &qword_257767268);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D8B8, type metadata accessor for Proto_ReduceL2LayerParams, &unk_2577654F8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F638, &qword_257767268);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F638, &qword_257767268);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F638, &qword_257767268);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F638, &qword_257767268);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257573178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceMaxLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F640, &qword_257767270);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 135)
    {
      sub_2574695E4(v21, &qword_27F87F640, &qword_257767270);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D8A0, type metadata accessor for Proto_ReduceMaxLayerParams, &unk_257765480);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F640, &qword_257767270);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F640, &qword_257767270);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F640, &qword_257767270);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F640, &qword_257767270);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575736E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceMinLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F648, &qword_257767278);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 136)
    {
      sub_2574695E4(v21, &qword_27F87F648, &qword_257767278);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D888, type metadata accessor for Proto_ReduceMinLayerParams, &unk_257765408);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F648, &qword_257767278);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F648, &qword_257767278);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F648, &qword_257767278);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F648, &qword_257767278);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257573C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceSumLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F650, &qword_257767280);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 137)
    {
      sub_2574695E4(v21, &qword_27F87F650, &qword_257767280);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D870, type metadata accessor for Proto_ReduceSumLayerParams, &unk_257765390);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F650, &qword_257767280);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F650, &qword_257767280);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F650, &qword_257767280);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F650, &qword_257767280);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575741C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceProdLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F658, &qword_257767288);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 138)
    {
      sub_2574695E4(v21, &qword_27F87F658, &qword_257767288);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D858, type metadata accessor for Proto_ReduceProdLayerParams, &unk_257765318);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F658, &qword_257767288);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F658, &qword_257767288);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F658, &qword_257767288);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F658, &qword_257767288);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257574738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceMeanLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F660, &qword_257767290);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 139)
    {
      sub_2574695E4(v21, &qword_27F87F660, &qword_257767290);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D840, type metadata accessor for Proto_ReduceMeanLayerParams, &unk_2577652A0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F660, &qword_257767290);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F660, &qword_257767290);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F660, &qword_257767290);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F660, &qword_257767290);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257574CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceLogSumLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F668, &qword_257767298);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 140)
    {
      sub_2574695E4(v21, &qword_27F87F668, &qword_257767298);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D828, type metadata accessor for Proto_ReduceLogSumLayerParams, &unk_257765228);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F668, &qword_257767298);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F668, &qword_257767298);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F668, &qword_257767298);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F668, &qword_257767298);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257575218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceSumSquareLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F670, &qword_2577672A0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 141)
    {
      sub_2574695E4(v21, &qword_27F87F670, &qword_2577672A0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D810, type metadata accessor for Proto_ReduceSumSquareLayerParams, &unk_2577651B0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F670, &qword_2577672A0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F670, &qword_2577672A0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F670, &qword_2577672A0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F670, &qword_2577672A0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257575788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ReduceLogSumExpLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F678, &qword_2577672A8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 142)
    {
      sub_2574695E4(v21, &qword_27F87F678, &qword_2577672A8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D7F8, type metadata accessor for Proto_ReduceLogSumExpLayerParams, &unk_257765138);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F678, &qword_2577672A8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F678, &qword_2577672A8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F678, &qword_2577672A8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F678, &qword_2577672A8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257575CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_WhereNonZeroLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F680, &qword_2577672B0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 143)
    {
      sub_2574695E4(v21, &qword_27F87F680, &qword_2577672B0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DBB8, type metadata accessor for Proto_WhereNonZeroLayerParams, &unk_257764C88);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F680, &qword_2577672B0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F680, &qword_2577672B0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F680, &qword_2577672B0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F680, &qword_2577672B0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257576268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_MatrixBandPartLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F688, &qword_2577672B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 144)
    {
      sub_2574695E4(v21, &qword_27F87F688, &qword_2577672B8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DBA0, type metadata accessor for Proto_MatrixBandPartLayerParams, &unk_257762AC8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F688, &qword_2577672B8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F688, &qword_2577672B8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F688, &qword_2577672B8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F688, &qword_2577672B8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575767D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LowerTriangularLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F690, &qword_2577672C0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 145)
    {
      sub_2574695E4(v21, &qword_27F87F690, &qword_2577672C0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB70, type metadata accessor for Proto_LowerTriangularLayerParams, &unk_257762A50);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F690, &qword_2577672C0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F690, &qword_2577672C0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F690, &qword_2577672C0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F690, &qword_2577672C0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257576D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_UpperTriangularLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F698, &qword_2577672C8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 146)
    {
      sub_2574695E4(v21, &qword_27F87F698, &qword_2577672C8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DB88, type metadata accessor for Proto_UpperTriangularLayerParams, &unk_2577629D8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F698, &qword_2577672C8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F698, &qword_2577672C8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F698, &qword_2577672C8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F698, &qword_2577672C8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575772B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_WhereBroadcastableLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6A0, &qword_2577672D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 147)
    {
      sub_2574695E4(v21, &qword_27F87F6A0, &qword_2577672D0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87DD88, type metadata accessor for Proto_WhereBroadcastableLayerParams, &unk_2577650C0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6A0, &qword_2577672D0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6A0, &qword_2577672D0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6A0, &qword_2577672D0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6A0, &qword_2577672D0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257577828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_LayerNormalizationLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6A8, &qword_2577672D8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 148)
    {
      sub_2574695E4(v21, &qword_27F87F6A8, &qword_2577672D8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D598, type metadata accessor for Proto_LayerNormalizationLayerParams, &unk_2577646E8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6A8, &qword_2577672D8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6A8, &qword_2577672D8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6A8, &qword_2577672D8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6A8, &qword_2577672D8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257577D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6B0, &qword_2577672E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 149)
    {
      sub_2574695E4(v21, &qword_27F87F6B0, &qword_2577672E0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D580, type metadata accessor for Proto_NonMaximumSuppressionLayerParams, &unk_257761F10);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6B0, &qword_2577672E0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6B0, &qword_2577672E0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6B0, &qword_2577672E0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6B0, &qword_2577672E0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257578308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_OneHotLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6B8, &qword_2577672E8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 150)
    {
      sub_2574695E4(v21, &qword_27F87F6B8, &qword_2577672E8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D510, type metadata accessor for Proto_OneHotLayerParams, &unk_257761E98);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6B8, &qword_2577672E8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6B8, &qword_2577672E8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6B8, &qword_2577672E8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6B8, &qword_2577672E8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257578878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_CumSumLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6C0, &qword_2577672F0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 151)
    {
      sub_2574695E4(v21, &qword_27F87F6C0, &qword_2577672F0);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D4F8, type metadata accessor for Proto_CumSumLayerParams, &unk_257764C10);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6C0, &qword_2577672F0);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6C0, &qword_2577672F0);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6C0, &qword_2577672F0);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6C0, &qword_2577672F0);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257578DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ClampedReLULayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6C8, &qword_2577672F8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 152)
    {
      sub_2574695E4(v21, &qword_27F87F6C8, &qword_2577672F8);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D568, type metadata accessor for Proto_ClampedReLULayerParams, &unk_2577633B0);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6C8, &qword_2577672F8);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6C8, &qword_2577672F8);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6C8, &qword_2577672F8);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6C8, &qword_2577672F8);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257579358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_ArgSortLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6D0, &qword_257767300);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 153)
    {
      sub_2574695E4(v21, &qword_27F87F6D0, &qword_257767300);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D550, type metadata accessor for Proto_ArgSortLayerParams, &unk_257761E20);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6D0, &qword_257767300);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6D0, &qword_257767300);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6D0, &qword_257767300);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6D0, &qword_257767300);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575798C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Pooling3DLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6D8, &qword_257767308);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 154)
    {
      sub_2574695E4(v21, &qword_27F87F6D8, &qword_257767308);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E1A8, type metadata accessor for Proto_Pooling3DLayerParams, &unk_2577628E8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6D8, &qword_257767308);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6D8, &qword_257767308);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6D8, &qword_257767308);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6D8, &qword_257767308);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257579E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_GlobalPooling3DLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6E0, &qword_257767310);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 155)
    {
      sub_2574695E4(v21, &qword_27F87F6E0, &qword_257767310);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E190, type metadata accessor for Proto_GlobalPooling3DLayerParams, &unk_257762870);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6E0, &qword_257767310);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6E0, &qword_257767310);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6E0, &qword_257767310);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6E0, &qword_257767310);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25757A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_SliceBySizeLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6E8, &qword_257767318);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 156)
    {
      sub_2574695E4(v21, &qword_27F87F6E8, &qword_257767318);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87D538, type metadata accessor for Proto_SliceBySizeLayerParams, &unk_257764490);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6E8, &qword_257767318);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6E8, &qword_257767318);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6E8, &qword_257767318);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6E8, &qword_257767318);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25757A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Proto_Convolution3DLayerParams(0);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F6F0, &qword_257767320);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  v28[1] = v22;
  sub_257487308(a1 + v22);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v13, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    v28[0] = a1;
    sub_257609B78();
    sub_257609B78();
    if (swift_getEnumCaseMultiPayload() == 157)
    {
      sub_2574695E4(v21, &qword_27F87F6F0, &qword_257767320);
      sub_257609B78();
      sub_257609B78();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_257609BCC();
    }
  }

  sub_2575FB760(&qword_27F87E258, type metadata accessor for Proto_Convolution3DLayerParams, &unk_257761CB8);
  v23 = v34;
  sub_2577433D4();
  if (v23)
  {
    v24 = v21;
    return sub_2574695E4(v24, &qword_27F87F6F0, &qword_257767320);
  }

  sub_257487308(v21);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_2574695E4(v21, &qword_27F87F6F0, &qword_257767320);
    v24 = v19;
    return sub_2574695E4(v24, &qword_27F87F6F0, &qword_257767320);
  }

  sub_257609B78();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v26 = v31;
  sub_2574695E4(v21, &qword_27F87F6F0, &qword_257767320);
  v27 = v29;
  sub_257609B78();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25757AE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_257743534();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!sub_257701EC4(*(a1 + 32)))
  {

    sub_257743514();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!sub_257701EC4(*(a1 + 40)))
  {

    sub_257743514();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (sub_257701EC4(*(a1 + 48)))
  {
    goto LABEL_15;
  }

  type metadata accessor for Proto_Tensor(0);
  sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor, &unk_2577627F8);

  sub_257743564();
  if (v4)
  {
  }

LABEL_15:
  swift_beginAccess();
  if (!sub_257701EC4(*(a1 + 56)))
  {
    type metadata accessor for Proto_Tensor(0);
    sub_2575FB760(&qword_27F87E4F8, type metadata accessor for Proto_Tensor, &unk_2577627F8);

    sub_257743564();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 64) != 1 || (result = sub_2577434B4(), !v4))
  {
    v15 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
    swift_beginAccess();
    sub_257487308(a1 + v15);
    v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
    result = __swift_getEnumTagSinglePayload(v11, 1, v16);
    if (result != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_25757C5CC(a1, a2, a3, a4);
          break;
        case 2u:
          sub_25757C800(a1, a2, a3, a4);
          break;
        case 3u:
          sub_25757CA34(a1, a2, a3, a4);
          break;
        case 4u:
          sub_25757CC68(a1, a2, a3, a4);
          break;
        case 5u:
          sub_25757CE9C(a1, a2, a3, a4);
          break;
        case 6u:
          sub_25757D0D0(a1, a2, a3, a4);
          break;
        case 7u:
          sub_25757D304(a1, a2, a3, a4);
          break;
        case 8u:
          sub_25757D538(a1, a2, a3, a4);
          break;
        case 9u:
          sub_25757D76C(a1, a2, a3, a4);
          break;
        case 0xAu:
          sub_25757D9A0(a1, a2, a3, a4);
          break;
        case 0xBu:
          sub_25757DBD4(a1, a2, a3, a4);
          break;
        case 0xCu:
          sub_25757DE08(a1, a2, a3, a4);
          break;
        case 0xDu:
          sub_25757E03C(a1, a2, a3, a4);
          break;
        case 0xEu:
          sub_25757E270(a1, a2, a3, a4);
          break;
        case 0xFu:
          sub_25757E4A4(a1, a2, a3, a4);
          break;
        case 0x10u:
          sub_25757E6D8(a1, a2, a3, a4);
          break;
        case 0x11u:
          sub_25757E90C(a1, a2, a3, a4);
          break;
        case 0x12u:
          sub_25757EB40(a1, a2, a3, a4);
          break;
        case 0x13u:
          sub_25757ED74(a1, a2, a3, a4);
          break;
        case 0x14u:
          sub_25757EFA8(a1, a2, a3, a4);
          break;
        case 0x15u:
          sub_25757F1DC(a1, a2, a3, a4);
          break;
        case 0x16u:
          sub_25757F410(a1, a2, a3, a4);
          break;
        case 0x17u:
          sub_25757F644(a1, a2, a3, a4);
          break;
        case 0x18u:
          sub_25757F878(a1, a2, a3, a4);
          break;
        case 0x19u:
          sub_25757FAAC(a1, a2, a3, a4);
          break;
        case 0x1Au:
          sub_25757FCE0(a1, a2, a3, a4);
          break;
        case 0x1Bu:
          sub_25757FF14(a1, a2, a3, a4);
          break;
        case 0x1Cu:
          sub_257580148(a1, a2, a3, a4);
          break;
        case 0x1Du:
          sub_25758037C(a1, a2, a3, a4);
          break;
        case 0x1Eu:
          sub_2575805B0(a1, a2, a3, a4);
          break;
        case 0x1Fu:
          sub_2575807E4(a1, a2, a3, a4);
          break;
        case 0x20u:
          sub_257580A18(a1, a2, a3, a4);
          break;
        case 0x21u:
          sub_257580C4C(a1, a2, a3, a4);
          break;
        case 0x22u:
          sub_257580E80(a1, a2, a3, a4);
          break;
        case 0x23u:
          sub_2575810B4(a1, a2, a3, a4);
          break;
        case 0x24u:
          sub_2575812E8(a1, a2, a3, a4);
          break;
        case 0x25u:
          sub_25758151C(a1, a2, a3, a4);
          break;
        case 0x26u:
          sub_257581750(a1, a2, a3, a4);
          break;
        case 0x27u:
          sub_257581984(a1, a2, a3, a4);
          break;
        case 0x28u:
          sub_257581BB8(a1, a2, a3, a4);
          break;
        case 0x29u:
          sub_257581DEC(a1, a2, a3, a4);
          break;
        case 0x2Au:
          sub_257582020(a1, a2, a3, a4);
          break;
        case 0x2Bu:
          sub_257582254(a1, a2, a3, a4);
          break;
        case 0x2Cu:
          sub_257582488(a1, a2, a3, a4);
          break;
        case 0x2Du:
          sub_2575826BC(a1, a2, a3, a4);
          break;
        case 0x2Eu:
          sub_2575828F0(a1, a2, a3, a4);
          break;
        case 0x2Fu:
          sub_257582B24(a1, a2, a3, a4);
          break;
        case 0x30u:
          sub_257582D58(a1, a2, a3, a4);
          break;
        case 0x31u:
          sub_257582F8C(a1, a2, a3, a4);
          break;
        case 0x32u:
          sub_2575831C0(a1, a2, a3, a4);
          break;
        case 0x33u:
          sub_2575833F4(a1, a2, a3, a4);
          break;
        case 0x34u:
          sub_257583628(a1, a2, a3, a4);
          break;
        case 0x35u:
          sub_25758385C(a1, a2, a3, a4);
          break;
        case 0x36u:
          sub_257583A90(a1, a2, a3, a4);
          break;
        case 0x37u:
          sub_257583CC4(a1, a2, a3, a4);
          break;
        case 0x38u:
          sub_257583EF8(a1, a2, a3, a4);
          break;
        case 0x39u:
          sub_25758412C(a1, a2, a3, a4);
          break;
        case 0x3Au:
          sub_257584360(a1, a2, a3, a4);
          break;
        case 0x3Bu:
          sub_257584594(a1, a2, a3, a4);
          break;
        case 0x3Cu:
          sub_2575847C8(a1, a2, a3, a4);
          break;
        case 0x3Du:
          sub_2575849FC(a1, a2, a3, a4);
          break;
        case 0x3Eu:
          sub_257584C30(a1, a2, a3, a4);
          break;
        case 0x3Fu:
          sub_257584E64(a1, a2, a3, a4);
          break;
        case 0x40u:
          sub_257585098(a1, a2, a3, a4);
          break;
        case 0x41u:
          sub_2575852CC(a1, a2, a3, a4);
          break;
        case 0x42u:
          sub_257585500(a1, a2, a3, a4);
          break;
        case 0x43u:
          sub_257585734(a1, a2, a3, a4);
          break;
        case 0x44u:
          sub_257585968(a1, a2, a3, a4);
          break;
        case 0x45u:
          sub_257585B9C(a1, a2, a3, a4);
          break;
        case 0x46u:
          sub_257585DD0(a1, a2, a3, a4);
          break;
        case 0x47u:
          sub_257586004(a1, a2, a3, a4);
          break;
        case 0x48u:
          sub_257586238(a1, a2, a3, a4);
          break;
        case 0x49u:
          sub_25758646C(a1, a2, a3, a4);
          break;
        case 0x4Au:
          sub_2575866A0(a1, a2, a3, a4);
          break;
        case 0x4Bu:
          sub_2575868D4(a1, a2, a3, a4);
          break;
        case 0x4Cu:
          sub_257586B08(a1, a2, a3, a4);
          break;
        case 0x4Du:
          sub_257586D3C(a1, a2, a3, a4);
          break;
        case 0x4Eu:
          sub_257586F70(a1, a2, a3, a4);
          break;
        case 0x4Fu:
          sub_2575871A4(a1, a2, a3, a4);
          break;
        case 0x50u:
          sub_2575873D8(a1, a2, a3, a4);
          break;
        case 0x51u:
          sub_25758760C(a1, a2, a3, a4);
          break;
        case 0x52u:
          sub_257587840(a1, a2, a3, a4);
          break;
        case 0x53u:
          sub_257587A74(a1, a2, a3, a4);
          break;
        case 0x54u:
          sub_257587CA8(a1, a2, a3, a4);
          break;
        case 0x55u:
          sub_257587EDC(a1, a2, a3, a4);
          break;
        case 0x56u:
          sub_257588110(a1, a2, a3, a4);
          break;
        case 0x57u:
          sub_257588344(a1, a2, a3, a4);
          break;
        case 0x58u:
          sub_257588578(a1, a2, a3, a4);
          break;
        case 0x59u:
          sub_2575887AC(a1, a2, a3, a4);
          break;
        case 0x5Au:
          sub_2575889E0(a1, a2, a3, a4);
          break;
        case 0x5Bu:
          sub_257588C14(a1, a2, a3, a4);
          break;
        case 0x5Cu:
          sub_257588E48(a1, a2, a3, a4);
          break;
        case 0x5Du:
          sub_25758907C(a1, a2, a3, a4);
          break;
        case 0x5Eu:
          sub_2575892B0(a1, a2, a3, a4);
          break;
        case 0x5Fu:
          sub_2575894E4(a1, a2, a3, a4);
          break;
        case 0x60u:
          sub_257589718(a1, a2, a3, a4);
          break;
        case 0x61u:
          sub_25758994C(a1, a2, a3, a4);
          break;
        case 0x62u:
          sub_257589B80(a1, a2, a3, a4);
          break;
        case 0x63u:
          sub_257589DB4(a1, a2, a3, a4);
          break;
        case 0x64u:
          sub_257589FE8(a1, a2, a3, a4);
          break;
        case 0x65u:
          sub_25758A21C(a1, a2, a3, a4);
          break;
        case 0x66u:
          sub_25758A450(a1, a2, a3, a4);
          break;
        case 0x67u:
          sub_25758A684(a1, a2, a3, a4);
          break;
        case 0x68u:
          sub_25758A8B8(a1, a2, a3, a4);
          break;
        case 0x69u:
          sub_25758AAEC(a1, a2, a3, a4);
          break;
        case 0x6Au:
          sub_25758AD20(a1, a2, a3, a4);
          break;
        case 0x6Bu:
          sub_25758AF54(a1, a2, a3, a4);
          break;
        case 0x6Cu:
          sub_25758B188(a1, a2, a3, a4);
          break;
        case 0x6Du:
          sub_25758B3BC(a1, a2, a3, a4);
          break;
        case 0x6Eu:
          sub_25758B5F0(a1, a2, a3, a4);
          break;
        case 0x6Fu:
          sub_25758B824(a1, a2, a3, a4);
          break;
        case 0x70u:
          sub_25758BA58(a1, a2, a3, a4);
          break;
        case 0x71u:
          sub_25758BC8C(a1, a2, a3, a4);
          break;
        case 0x72u:
          sub_25758BEC0(a1, a2, a3, a4);
          break;
        case 0x73u:
          sub_25758C0F4(a1, a2, a3, a4);
          break;
        case 0x74u:
          sub_25758C328(a1, a2, a3, a4);
          break;
        case 0x75u:
          sub_25758C55C(a1, a2, a3, a4);
          break;
        case 0x76u:
          sub_25758C790(a1, a2, a3, a4);
          break;
        case 0x77u:
          sub_25758C9C4(a1, a2, a3, a4);
          break;
        case 0x78u:
          sub_25758CBF8(a1, a2, a3, a4);
          break;
        case 0x79u:
          sub_25758CE2C(a1, a2, a3, a4);
          break;
        case 0x7Au:
          sub_25758D060(a1, a2, a3, a4);
          break;
        case 0x7Bu:
          sub_25758D294(a1, a2, a3, a4);
          break;
        case 0x7Cu:
          sub_25758D4C8(a1, a2, a3, a4);
          break;
        case 0x7Du:
          sub_25758D6FC(a1, a2, a3, a4);
          break;
        case 0x7Eu:
          sub_25758D930(a1, a2, a3, a4);
          break;
        case 0x7Fu:
          sub_25758DB64(a1, a2, a3, a4);
          break;
        case 0x80u:
          sub_25758DD98(a1, a2, a3, a4);
          break;
        case 0x81u:
          sub_25758DFCC(a1, a2, a3, a4);
          break;
        case 0x82u:
          sub_25758E200(a1, a2, a3, a4);
          break;
        case 0x83u:
          sub_25758E434(a1, a2, a3, a4);
          break;
        case 0x84u:
          sub_25758E668(a1, a2, a3, a4);
          break;
        case 0x85u:
          sub_25758E89C(a1, a2, a3, a4);
          break;
        case 0x86u:
          sub_25758EAD0(a1, a2, a3, a4);
          break;
        case 0x87u:
          sub_25758ED04(a1, a2, a3, a4);
          break;
        case 0x88u:
          sub_25758EF38(a1, a2, a3, a4);
          break;
        case 0x89u:
          sub_25758F16C(a1, a2, a3, a4);
          break;
        case 0x8Au:
          sub_25758F3A0(a1, a2, a3, a4);
          break;
        case 0x8Bu:
          sub_25758F5D4(a1, a2, a3, a4);
          break;
        case 0x8Cu:
          sub_25758F808(a1, a2, a3, a4);
          break;
        case 0x8Du:
          sub_25758FA3C(a1, a2, a3, a4);
          break;
        case 0x8Eu:
          sub_25758FC70(a1, a2, a3, a4);
          break;
        case 0x8Fu:
          sub_25758FEA4(a1, a2, a3, a4);
          break;
        case 0x90u:
          sub_2575900D8(a1, a2, a3, a4);
          break;
        case 0x91u:
          sub_25759030C(a1, a2, a3, a4);
          break;
        case 0x92u:
          sub_257590540(a1, a2, a3, a4);
          break;
        case 0x93u:
          sub_257590774(a1, a2, a3, a4);
          break;
        case 0x94u:
          sub_2575909A8(a1, a2, a3, a4);
          break;
        case 0x95u:
          sub_257590BDC(a1, a2, a3, a4);
          break;
        case 0x96u:
          sub_257590E10(a1, a2, a3, a4);
          break;
        case 0x97u:
          sub_257591044(a1, a2, a3, a4);
          break;
        case 0x98u:
          sub_257591278(a1, a2, a3, a4);
          break;
        case 0x99u:
          sub_2575914AC(a1, a2, a3, a4);
          break;
        case 0x9Au:
          sub_2575916E0(a1, a2, a3, a4);
          break;
        case 0x9Bu:
          sub_257591914(a1, a2, a3, a4);
          break;
        case 0x9Cu:
          sub_257591B48(a1, a2, a3, a4);
          break;
        case 0x9Du:
          sub_257591D7C(a1, a2, a3, a4);
          break;
        default:
          sub_25757C39C(a1, a2, a3, a4);
          break;
      }

      return sub_257609BCC();
    }
  }

  return result;
}

uint64_t sub_25757C39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ConvolutionLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E270, type metadata accessor for Proto_ConvolutionLayerParams, &unk_257761C40);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757C5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PoolingLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E1E0, type metadata accessor for Proto_PoolingLayerParams, &unk_257762960);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ActivationParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E510, type metadata accessor for Proto_ActivationParams, &unk_257763428);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_InnerProductLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E240, type metadata accessor for Proto_InnerProductLayerParams, &unk_257762438);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757CC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_EmbeddingLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E228, type metadata accessor for Proto_EmbeddingLayerParams, &unk_257762168);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BatchnormLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E1F8, type metadata accessor for Proto_BatchnormLayerParams, &unk_257764940);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MeanVarianceNormalizeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF30, type metadata accessor for Proto_MeanVarianceNormalizeLayerParams, &unk_257763518);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_L2NormalizeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E038, type metadata accessor for Proto_L2NormalizeLayerParams, &unk_2577647D8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SoftmaxLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E100, type metadata accessor for Proto_SoftmaxLayerParams, &unk_2577658B8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LRNLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E118, type metadata accessor for Proto_LRNLayerParams, &unk_257764760);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757D9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CropLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A210, type metadata accessor for Proto_CropLayerParams, &unk_257765ED0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PaddingLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E178, type metadata accessor for Proto_PaddingLayerParams, &unk_257762780);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_UpsampleLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0B0, type metadata accessor for Proto_UpsampleLayerParams, &unk_257764058);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ResizeBilinearLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A218, type metadata accessor for Proto_ResizeBilinearLayerParams, &unk_257765E58);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CropResizeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A220, type metadata accessor for Proto_CropResizeLayerParams, &unk_257765DE0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_UnaryFunctionLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0C0, type metadata accessor for Proto_UnaryFunctionLayerParams, &unk_257763C98);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AddLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0E0, type metadata accessor for Proto_AddLayerParams, &unk_257765750);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MultiplyLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0D0, type metadata accessor for Proto_MultiplyLayerParams, &unk_257761B50);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757EB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AverageLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF88, type metadata accessor for Proto_AverageLayerParams, &unk_257765048);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ScaleLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E068, type metadata accessor for Proto_ScaleLayerParams, &unk_257763770);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757EFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BiasLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E080, type metadata accessor for Proto_BiasLayerParams, &unk_257762078);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MaxLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF70, type metadata accessor for Proto_MaxLayerParams, &unk_257764FD0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MinLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF58, type metadata accessor for Proto_MinLayerParams, &unk_257764F58);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DotProductLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF40, type metadata accessor for Proto_DotProductLayerParams, &unk_257764B98);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757F878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DFB0, type metadata accessor for Proto_ReduceLayerParams, &unk_257764EE0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  ConstantLayerParams = type metadata accessor for Proto_LoadConstantLayerParams(0);
  MEMORY[0x28223BE20](ConstantLayerParams);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E050, type metadata accessor for Proto_LoadConstantLayerParams, &unk_2577615B0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757FCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReshapeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E008, type metadata accessor for Proto_ReshapeLayerParams, &unk_2577625A0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25757FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FlattenLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E020, type metadata accessor for Proto_FlattenLayerParams, &unk_2577621E0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257580148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PermuteLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DFF0, type metadata accessor for Proto_PermuteLayerParams, &unk_2577623C0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758037C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ConcatLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E130, type metadata accessor for Proto_ConcatLayerParams, &unk_2577648C8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575805B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SplitLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E0F0, type metadata accessor for Proto_SplitLayerParams, &unk_257761DA8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575807E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SequenceRepeatLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A258, type metadata accessor for Proto_SequenceRepeatLayerParams, &unk_257765D68);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257580A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReorganizeDataLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A260, type metadata accessor for Proto_ReorganizeDataLayerParams, &unk_257765CF0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257580C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SliceLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DFC8, type metadata accessor for Proto_SliceLayerParams, &unk_257764508);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257580E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SimpleRecurrentLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A1A8, type metadata accessor for Proto_SimpleRecurrentLayerParams, &unk_257765F48);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575810B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GRULayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DF00, type metadata accessor for Proto_GRULayerParams, &unk_257762258);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575812E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_UniDirectionalLSTMLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DEB0, type metadata accessor for Proto_UniDirectionalLSTMLayerParams, &unk_2577640D0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BiDirectionalLSTMLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE98, type metadata accessor for Proto_BiDirectionalLSTMLayerParams, &unk_2577655E8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257581750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CustomLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE80, type metadata accessor for Proto_CustomLayerParams, &unk_257761F88);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257581984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CopyLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879B70, type metadata accessor for Proto_CopyLayerParams, &unk_257766308);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257581BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BranchLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A330, type metadata accessor for Proto_BranchLayerParams, &unk_2577659A8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257581DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LoopLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879B78, type metadata accessor for Proto_LoopLayerParams, &unk_257766290);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LoopBreakLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879B80, type metadata accessor for Proto_LoopBreakLayerParams, &unk_257766218);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LoopContinueLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F879B88, type metadata accessor for Proto_LoopContinueLayerParams, &unk_2577661A0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RangeStaticLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D5E0, type metadata accessor for Proto_RangeStaticLayerParams, &unk_257762C30);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575826BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RangeDynamicLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D5C8, type metadata accessor for Proto_RangeDynamicLayerParams, &unk_257762BB8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575828F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ClipLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D680, type metadata accessor for Proto_ClipLayerParams, &unk_2577657C8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CeilLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D6F8, type metadata accessor for Proto_CeilLayerParams, &unk_257756E20);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FloorLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D6B8, type metadata accessor for Proto_FloorLayerParams, &unk_257756B50);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257582F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SignLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D698, type metadata accessor for Proto_SignLayerParams, &unk_2577569E8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575831C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RoundLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D6D8, type metadata accessor for Proto_RoundLayerParams, &unk_257756CB8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575833F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Exp2LayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DBD0, type metadata accessor for Proto_Exp2LayerParams, &unk_257759F68);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257583628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SinLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD68, type metadata accessor for Proto_SinLayerParams, &unk_25775B138);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CosLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD48, type metadata accessor for Proto_CosLayerParams, &unk_25775AFD0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257583A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TanLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD28, type metadata accessor for Proto_TanLayerParams, &unk_25775AE68);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257583CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AsinLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DD08, type metadata accessor for Proto_AsinLayerParams, &unk_25775AD00);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257583EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AcosLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DCE8, type metadata accessor for Proto_AcosLayerParams, &unk_25775AB98);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AtanLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DCC8, type metadata accessor for Proto_AtanLayerParams, &unk_25775AA30);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257584360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SinhLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DCA8, type metadata accessor for Proto_SinhLayerParams, &unk_25775A8C8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257584594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoshLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC88, type metadata accessor for Proto_CoshLayerParams, &unk_25775A760);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575847C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TanhLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 60)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC68, type metadata accessor for Proto_TanhLayerParams, &unk_25775A5F8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575849FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AsinhLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 61)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC48, type metadata accessor for Proto_AsinhLayerParams, &unk_25775A490);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257584C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AcoshLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 62)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC28, type metadata accessor for Proto_AcoshLayerParams, &unk_25775A328);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257584E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AtanhLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 63)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DC08, type metadata accessor for Proto_AtanhLayerParams, &unk_25775A1C0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ErfLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 64)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D608, type metadata accessor for Proto_ErfLayerParams, &unk_257756398);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575852CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GeluLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 65)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D5F0, type metadata accessor for Proto_GeluLayerParams, &unk_257761BC8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_EqualLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 66)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E418, type metadata accessor for Proto_EqualLayerParams, &unk_257763F68);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NotEqualLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 67)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E400, type metadata accessor for Proto_NotEqualLayerParams, &unk_257763EF0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LessThanLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 68)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E448, type metadata accessor for Proto_LessThanLayerParams, &unk_257763E78);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LessEqualLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 69)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E430, type metadata accessor for Proto_LessEqualLayerParams, &unk_257763E00);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257585DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GreaterThanLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 70)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E478, type metadata accessor for Proto_GreaterThanLayerParams, &unk_257763D88);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GreaterEqualLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 71)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E460, type metadata accessor for Proto_GreaterEqualLayerParams, &unk_257763D10);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LogicalOrLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 72)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E3C0, type metadata accessor for Proto_LogicalOrLayerParams, &unk_25775F910);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LogicalXorLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 73)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E3A0, type metadata accessor for Proto_LogicalXorLayerParams, &unk_25775F7A8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575866A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LogicalNotLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 74)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E380, type metadata accessor for Proto_LogicalNotLayerParams, &unk_25775F640);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575868D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LogicalAndLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 75)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E3E0, type metadata accessor for Proto_LogicalAndLayerParams, &unk_25775FA78);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ModBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 76)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DAD0, type metadata accessor for Proto_ModBroadcastableLayerParams, &unk_2577642B0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MinBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 77)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DAE8, type metadata accessor for Proto_MinBroadcastableLayerParams, &unk_257764E68);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257586F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MaxBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 78)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB00, type metadata accessor for Proto_MaxBroadcastableLayerParams, &unk_257764DF0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575871A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_AddBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 79)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB10, type metadata accessor for Proto_AddBroadcastableLayerParams, &unk_2577656D8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575873D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PowBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 80)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DBF0, type metadata accessor for Proto_PowBroadcastableLayerParams, &unk_257764238);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DivideBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 81)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA78, type metadata accessor for Proto_DivideBroadcastableLayerParams, &unk_2577641C0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257587840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FloorDivBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 82)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DAB8, type metadata accessor for Proto_FloorDivBroadcastableLayerParams, &unk_257764148);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257587A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MultiplyBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 83)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA88, type metadata accessor for Proto_MultiplyBroadcastableLayerParams, &unk_257763C20);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257587CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SubtractBroadcastableLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 84)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DAA0, type metadata accessor for Proto_SubtractBroadcastableLayerParams, &unk_257762348);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257587EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TileLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 85)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A268, type metadata accessor for Proto_TileLayerParams, &unk_257765C78);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_StackLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 86)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA00, type metadata accessor for Proto_StackLayerParams, &unk_2577636F8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GatherLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 87)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA60, type metadata accessor for Proto_GatherLayerParams, &unk_257763680);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ScatterLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 88)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA50, type metadata accessor for Proto_ScatterLayerParams, &unk_257764670);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575887AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GatherNDLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 89)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA40, type metadata accessor for Proto_GatherNDLayerParams, &unk_257763608);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575889E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ScatterNDLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 90)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA30, type metadata accessor for Proto_ScatterNDLayerParams, &unk_2577645F8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SoftmaxNDLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 91)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE00, type metadata accessor for Proto_SoftmaxNDLayerParams, &unk_257765840);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257588E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GatherAlongAxisLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 92)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA20, type metadata accessor for Proto_GatherAlongAxisLayerParams, &unk_257763590);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ScatterAlongAxisLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 93)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DA10, type metadata accessor for Proto_ScatterAlongAxisLayerParams, &unk_257764580);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575892B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReverseLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 94)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A270, type metadata accessor for Proto_ReverseLayerParams, &unk_257765C00);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575894E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReverseSeqLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 95)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A278, type metadata accessor for Proto_ReverseSeqLayerParams, &unk_257765B88);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257589718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SplitNDLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 96)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D710, type metadata accessor for Proto_SplitNDLayerParams, &unk_257761D30);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ConcatNDLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 97)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE18, type metadata accessor for Proto_ConcatNDLayerParams, &unk_2577622D0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257589B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TransposeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 98)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE48, type metadata accessor for Proto_TransposeLayerParams, &unk_257765930);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257589DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SliceStaticLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 99)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D670, type metadata accessor for Proto_SliceStaticLayerParams, &unk_257764418);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_257589FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SliceDynamicLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 100)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D658, type metadata accessor for Proto_SliceDynamicLayerParams, &unk_2577643A0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SlidingWindowsLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 101)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D5B0, type metadata accessor for Proto_SlidingWindowsLayerParams, &unk_257764328);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758A450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TopKLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 102)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D758, type metadata accessor for Proto_TopKLayerParams, &unk_257762000);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ArgMinLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 103)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D728, type metadata accessor for Proto_ArgMinLayerParams, &unk_257764D78);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758A8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ArgMaxLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 104)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D740, type metadata accessor for Proto_ArgMaxLayerParams, &unk_257764D00);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758AAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_EmbeddingNDLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 105)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87E210, type metadata accessor for Proto_EmbeddingNDLayerParams, &unk_2577620F0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758AD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 106)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DE30, type metadata accessor for Proto_BatchedMatMulLayerParams, &unk_257761AD8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  ShapeLayerParams = type metadata accessor for Proto_GetShapeLayerParams(0);
  MEMORY[0x28223BE20](ShapeLayerParams);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 107)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D628, type metadata accessor for Proto_GetShapeLayerParams, &unk_257756500);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758B188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  ConstantNDLayerParams = type metadata accessor for Proto_LoadConstantNDLayerParams(0);
  MEMORY[0x28223BE20](ConstantNDLayerParams);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 108)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DDD0, type metadata accessor for Proto_LoadConstantNDLayerParams, &unk_257761538);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758B3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FillLikeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 109)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A280, type metadata accessor for Proto_FillLikeLayerParams, &unk_257765B10);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FillStaticLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 110)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A288, type metadata accessor for Proto_FillStaticLayerParams, &unk_257765A98);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758B824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FillDynamicLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 111)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87A290, type metadata accessor for Proto_FillDynamicLayerParams, &unk_257765A20);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BroadcastToLikeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 112)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB58, type metadata accessor for Proto_BroadcastToLikeLayerParams, &unk_257763AB8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BroadcastToStaticLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 113)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB40, type metadata accessor for Proto_BroadcastToStaticLayerParams, &unk_257763A40);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758BEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BroadcastToDynamicLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 114)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87DB28, type metadata accessor for Proto_BroadcastToDynamicLayerParams, &unk_2577639C8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SqueezeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 115)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D770, type metadata accessor for Proto_SqueezeLayerParams, &unk_257764850);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ExpandDimsLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 116)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7E0, type metadata accessor for Proto_ExpandDimsLayerParams, &unk_257764B20);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FlattenTo2DLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 117)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7D0, type metadata accessor for Proto_FlattenTo2DLayerParams, &unk_257763950);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReshapeLikeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 118)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7A0, type metadata accessor for Proto_ReshapeLikeLayerParams, &unk_2577638D8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758C9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReshapeStaticLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 119)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D7B8, type metadata accessor for Proto_ReshapeStaticLayerParams, &unk_257762D20);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReshapeDynamicLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 120)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D788, type metadata accessor for Proto_ReshapeDynamicLayerParams, &unk_257763860);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758CE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RankPreservingReshapeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 121)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D9F0, type metadata accessor for Proto_RankPreservingReshapeLayerParams, &unk_2577634A0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ConstantPaddingLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 122)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D9D8, type metadata accessor for Proto_ConstantPaddingLayerParams, &unk_2577637E8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomNormalLikeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 123)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D9C0, type metadata accessor for Proto_RandomNormalLikeLayerParams, &unk_257761A60);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomNormalStaticLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 124)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D9A8, type metadata accessor for Proto_RandomNormalStaticLayerParams, &unk_2577619E8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomNormalDynamicLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 125)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D990, type metadata accessor for Proto_RandomNormalDynamicLayerParams, &unk_257761970);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomUniformLikeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 126)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D978, type metadata accessor for Proto_RandomUniformLikeLayerParams, &unk_2577618F8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomUniformStaticLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 127)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D960, type metadata accessor for Proto_RandomUniformStaticLayerParams, &unk_257761880);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758DD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomUniformDynamicLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 128)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D948, type metadata accessor for Proto_RandomUniformDynamicLayerParams, &unk_257761808);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomBernoulliLikeLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 129)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D930, type metadata accessor for Proto_RandomBernoulliLikeLayerParams, &unk_257761790);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 130)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D918, type metadata accessor for Proto_RandomBernoulliStaticLayerParams, &unk_257761718);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758E434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_RandomBernoulliDynamicLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 131)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D900, type metadata accessor for Proto_RandomBernoulliDynamicLayerParams, &unk_2577616A0);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758E668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CategoricalDistributionLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 132)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D8E8, type metadata accessor for Proto_CategoricalDistributionLayerParams, &unk_257761628);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceL1LayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 133)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D8D0, type metadata accessor for Proto_ReduceL1LayerParams, &unk_257765570);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceL2LayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 134)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D8B8, type metadata accessor for Proto_ReduceL2LayerParams, &unk_2577654F8);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758ED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceMaxLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 135)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D8A0, type metadata accessor for Proto_ReduceMaxLayerParams, &unk_257765480);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceMinLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 136)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D888, type metadata accessor for Proto_ReduceMinLayerParams, &unk_257765408);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceSumLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 137)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D870, type metadata accessor for Proto_ReduceSumLayerParams, &unk_257765390);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}

uint64_t sub_25758F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ReduceProdLayerParams(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV20MLModelSpecification24Proto_NeuralNetworkLayerP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__layer;
  swift_beginAccess();
  sub_257487308(a1 + v9);
  v10 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F87A318, &qword_257745D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 138)
    {
      sub_257609B78();
      sub_2575FB760(&qword_27F87D858, type metadata accessor for Proto_ReduceProdLayerParams, &unk_257765318);
      sub_257743574();
      return sub_257609BCC();
    }

    result = sub_257609BCC();
  }

  __break(1u);
  return result;
}