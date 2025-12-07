uint64_t sub_26A2449B0()
{
  type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
  OUTLINED_FUNCTION_100_0();
  v0 = swift_allocObject();
  type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  result = __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  qword_28157A0A0 = v0;
  return result;
}

void sub_26A244A48()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_133();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_141_0();
  type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_142(v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value, &v10);
  OUTLINED_FUNCTION_125_3();
  sub_26A1E05A8();

  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_125_3();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A244B94()
{
  sub_26A13440C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A244C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A244D94(a1, a2, a3, a4);
        break;
      case 2:
        sub_26A2452E8(a1, a2, a3, a4);
        break;
      case 3:
        sub_26A245858(a1, a2, a3, a4);
        break;
      case 4:
        sub_26A245DC8(a1, a2, a3, a4);
        break;
      case 5:
        sub_26A246338(a1, a2, a3, a4);
        break;
      case 6:
        sub_26A2468A8(a1, a2, a3, a4);
        break;
      case 7:
        sub_26A246E18(a1, a2, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A244D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = a3;
  v34 = a2;
  v5 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370B90, &qword_26A4347B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v29 = a1;
  v27 = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A23838C();
    }

    else
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_26A252D48();
  v24 = v32;
  sub_26A424944();
  if (v24)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v14);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A2452E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Bundle(0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370B98, &qword_26A4347C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v27[1] = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v30 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v27[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A245858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Url(0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BB8, &qword_26A4347E8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v27[1] = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v30 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v27[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A245DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Symbol(0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BA0, &qword_26A4347C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v27[1] = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v30 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v27[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A246338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.AppIcon(0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BC0, &qword_26A4347F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v27[1] = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v30 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v27[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A2468A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Contact(0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BC8, &qword_26A4347F8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v27[1] = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v30 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v27[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A246E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BD0, &qword_26A434800);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v27[1] = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v30 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v27[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A2473B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  swift_beginAccess();
  sub_26A1E05A8();
  v11 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A2477FC(a1, a2, a3, a4);
        break;
      case 2u:
        sub_26A247A30(a1, a2, a3, a4);
        break;
      case 3u:
        sub_26A247C64(a1, a2, a3, a4);
        break;
      case 4u:
        sub_26A247E98(a1, a2, a3, a4);
        break;
      case 5u:
        sub_26A2480CC(a1, a2, a3, a4);
        break;
      case 6u:
        sub_26A248300(a1, a2, a3, a4);
        break;
      default:
        sub_26A2475CC(a1, a2, a3, a4);
        break;
    }

    return sub_26A23838C();
  }

  return result;
}

uint64_t sub_26A2475CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2477FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Bundle(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A247A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Url(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A247C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Symbol(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A247E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.AppIcon(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2480CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Contact(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A248300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A248560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_45_3();
  v8 = v7(0);
  if (*(v5 + *(v8 + 20)) != *(v4 + *(v8 + 20)))
  {

    v9 = OUTLINED_FUNCTION_12_2();
    v10 = a4(v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

BOOL sub_26A248638(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  MEMORY[0x28223BE20](v2);
  v15[0] = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C908, &qword_26A4347E0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v15[1] = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  swift_beginAccess();
  sub_26A1E05A8();
  swift_beginAccess();
  v11 = *(v5 + 56);
  sub_26A1E05A8();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) != 1)
  {
    sub_26A1E05A8();
    if (__swift_getEnumTagSinglePayload(&v7[v11], 1, v2) != 1)
    {
      sub_26A2356C8();
      static _ProtoImageElement.Source.OneOf_Value.== infix(_:_:)();
      v14 = v13;
      sub_26A23838C();
      sub_26A13440C();
      sub_26A23838C();
      sub_26A13440C();
      return (v14 & 1) != 0;
    }

    sub_26A13440C();
    sub_26A23838C();
LABEL_6:
    sub_26A13440C();
    return 0;
  }

  sub_26A13440C();
  if (__swift_getEnumTagSinglePayload(&v7[v11], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_26A13440C();
  return 1;
}

uint64_t sub_26A248A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A248A9C(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A248B0C(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A248BD8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370750);
  __swift_project_value_buffer(v0, qword_280370750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "badge";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A248DC4()
{
  type metadata accessor for _ProtoImageElement.BadgedImage._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__image;
  v2 = type metadata accessor for _ProtoImageElement.Source(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  result = __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__badge, 1, 1, v2);
  qword_28157A8F0 = v0;
  return result;
}

uint64_t sub_26A248E4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__image;
  v4 = type metadata accessor for _ProtoImageElement.Source(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__badge, 1, 1, v4);
  swift_beginAccess();
  sub_26A1E05A8();
  swift_beginAccess();
  sub_26A252CF0();
  swift_endAccess();
  swift_beginAccess();
  sub_26A1E05A8();

  swift_beginAccess();
  sub_26A252CF0();
  swift_endAccess();
  return v1;
}

uint64_t sub_26A248FF0()
{
  sub_26A13440C();
  sub_26A13440C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A2490EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_26A2491B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_26A249318(a2, a1, a3, a4);
    }

    else if (result == 1)
    {
      sub_26A24923C(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_26A24923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoImageElement.Source(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A249318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoImageElement.Source(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A249424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_185_2();
  v7(0);
  OUTLINED_FUNCTION_12_7();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A249498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2494E8(a1, a2, a3, a4);
  if (!v4)
  {
    return sub_26A2496DC(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26A2494E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Source(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A2496DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Source(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

void sub_26A2498D0()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_185_2();
  v40 = type metadata accessor for _ProtoImageElement.Source(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v36 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v38 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BE0, &unk_26A434810);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v39 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_206_1();
  v12 = OUTLINED_FUNCTION_21_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v37 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_142(v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__image, &v44);
  OUTLINED_FUNCTION_187_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_142(v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__image, &v43);
  v20 = *(v8 + 48);
  OUTLINED_FUNCTION_189_2();
  v21 = v0;
  OUTLINED_FUNCTION_189_2();
  OUTLINED_FUNCTION_17_3(v3);
  if (!v23)
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_17_3(v3 + v20);
    if (v23)
    {

      sub_26A13440C();
      OUTLINED_FUNCTION_149_2();
      sub_26A23838C();
    }

    else
    {
      sub_26A2356C8();
      v24 = *(v40 + 20);
      v25 = *(v2 + v24);
      v26 = *(v38 + v24);
      v22 = v1;

      if (v25 == v26 || (, , v27 = OUTLINED_FUNCTION_21_3(), v29 = sub_26A248638(v27, v28), , , v29))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        OUTLINED_FUNCTION_37_0();
        v35 = sub_26A424B64();
        sub_26A23838C();
        OUTLINED_FUNCTION_126();
        sub_26A13440C();
        OUTLINED_FUNCTION_217_0();
        sub_26A23838C();
        sub_26A13440C();
        if (v35)
        {
          goto LABEL_14;
        }

LABEL_10:

        goto LABEL_21;
      }

      sub_26A23838C();
      OUTLINED_FUNCTION_105();
      sub_26A13440C();
      OUTLINED_FUNCTION_234_1();
      sub_26A23838C();
    }

LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A13440C();
  OUTLINED_FUNCTION_17_3(v3 + v20);
  v22 = v1;
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_14:
  OUTLINED_FUNCTION_142(v22 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__badge, &v42);
  OUTLINED_FUNCTION_187_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_142(v21 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__badge, &v41);
  v30 = *(v8 + 48);
  OUTLINED_FUNCTION_182_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_189_2();
  OUTLINED_FUNCTION_17_3(v39);
  if (v23)
  {

    sub_26A13440C();
    OUTLINED_FUNCTION_17_3(v39 + v30);
  }

  else
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_17_3(v39 + v30);
    if (v31)
    {

      sub_26A13440C();
      OUTLINED_FUNCTION_149_2();
      sub_26A23838C();
    }

    else
    {
      sub_26A2356C8();
      if (*(v37 + *(v40 + 20)) == *(v36 + *(v40 + 20)) || (, , v32 = OUTLINED_FUNCTION_21_3(), v34 = sub_26A248638(v32, v33), , , v34))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        OUTLINED_FUNCTION_187_2();
        sub_26A424B64();

        OUTLINED_FUNCTION_148_2();
        sub_26A23838C();
        sub_26A13440C();
        sub_26A23838C();
        OUTLINED_FUNCTION_217_0();
        sub_26A13440C();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_148_2();
      sub_26A23838C();
      sub_26A13440C();
      sub_26A23838C();
      OUTLINED_FUNCTION_234_1();
    }
  }

  sub_26A13440C();
LABEL_21:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A24A038(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24A0B8(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24A128(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24A1EC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370778);
  __swift_project_value_buffer(v0, qword_280370778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "monogram";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "avatar";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_style";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.Contact.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_5_6();
        sub_26A24AE94(v11, v12);
        break;
      case 2:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A24A99C(v7, v8, v9, v10);
        break;
      case 1:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A24A4A4(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_26A24A4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BA8, &qword_26A4347D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A23838C();
    }

    else
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A252D48();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A24A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BB0, &qword_26A4347D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, v5);
  v24 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v26 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v19 = v28;
  sub_26A424944();
  if (v19)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A24AE94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoImageElement.Contact(0);
  sub_26A252D8C();
  return sub_26A424894();
}

uint64_t _ProtoImageElement.Contact.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_234_1();
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v4) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = OUTLINED_FUNCTION_3_5();
    sub_26A24B288(v5, v6, v7, v8);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_5();
    sub_26A24B074(v9, v10, v11, v12);
  }

  OUTLINED_FUNCTION_52_9();
  result = sub_26A23838C();
  if (!v1)
  {
LABEL_6:
    type metadata accessor for _ProtoImageElement.Contact(0);
    if (!_ProtoImageElement.ImageStyle.rawValue.getter())
    {
      return OUTLINED_FUNCTION_19_6();
    }

    sub_26A252D8C();
    OUTLINED_FUNCTION_48_8();
    result = sub_26A4249F4();
    if (!v1)
    {
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t sub_26A24B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  MEMORY[0x28223BE20](v7);
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A24B288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  MEMORY[0x28223BE20](v7);
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A24B524(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24B5A4(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24B614(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t _ProtoImageElement.Contact.Monogram.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoImageElement.Contact.Monogram.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_84_0();
  if (!v1 || (OUTLINED_FUNCTION_16_4(), result = sub_26A424A64(), !v0))
  {
    type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A24B860(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24B8E0(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24B950(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24B9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_28036C320 != -1)
  {
    swift_once();
  }

  v9 = qword_280370768;
  v10 = qword_280370770;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_103();
  MEMORY[0x26D65BA70](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

void sub_26A24BAE4()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26A424AC4();
  __swift_allocate_value_buffer(v8, v7);
  v9 = OUTLINED_FUNCTION_37_5();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26A426410;
  v14 = v13 + v12 + v11[14];
  *(v13 + v12) = 1;
  *v14 = v5;
  *(v14 + 8) = v3;
  *(v14 + 16) = 2;
  v15 = *v1;
  sub_26A424A94();
  OUTLINED_FUNCTION_12();
  (*(v16 + 104))(v14, v15);
  sub_26A424AA4();
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoImageElement.Contact.Avatar.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A4248F4();
    }
  }

  return result;
}

uint64_t _ProtoImageElement.Contact.Avatar.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A424A44(), !v1))
  {
    type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A24BDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24BE28(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24BE98(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24BF5C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803707F0);
  __swift_project_value_buffer(v0, qword_2803707F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "application_bundle_identifier";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_style";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.AppIcon.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A0C2EA8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A424924();
    }
  }

  return result;
}

void _ProtoImageElement.AppIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_84_0();
  if (!v4 || (OUTLINED_FUNCTION_16_4(), sub_26A424A64(), !v3))
  {
    if (!OUTLINED_FUNCTION_166_2() || (OUTLINED_FUNCTION_180_2(), sub_26A252D8C(), OUTLINED_FUNCTION_48_8(), sub_26A4249F4(), !v3))
    {
      type metadata accessor for _ProtoImageElement.AppIcon(0);
      OUTLINED_FUNCTION_19_6();
    }
  }

  OUTLINED_FUNCTION_248_1();
}

uint64_t sub_26A24C2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24C354(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24C3C4(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24C484()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370818);
  __swift_project_value_buffer(v0, qword_280370818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42DE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "png_data";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_style";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "aspect_ratio";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fixed_height";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "fixed_width";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "dark_mode_png_data";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "asset_data";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.DataMessage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
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
      case 6:
      case 7:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248C4();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A0C2EA8();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A24C87C(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A24C930(v7, v8, v9, v10);
        break;
      case 5:
        OUTLINED_FUNCTION_5_6();
        sub_26A24D6B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A24C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A24C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  return sub_26A424944();
}

void _ProtoImageElement.DataMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_1_26();
  if (sub_26A13BEE8(*v3, *(v5 + 8)) || (OUTLINED_FUNCTION_16_4(), sub_26A424A14(), !v4))
  {
    if (!OUTLINED_FUNCTION_166_2() || (OUTLINED_FUNCTION_180_2(), sub_26A252D8C(), OUTLINED_FUNCTION_48_8(), sub_26A4249F4(), !v4))
    {
      v6 = OUTLINED_FUNCTION_3_5();
      sub_26A24CB24(v6, v7, v8, v9);
      if (!v4)
      {
        v10 = OUTLINED_FUNCTION_3_5();
        sub_26A24CD04(v10, v11, v12, v13);
        v14 = OUTLINED_FUNCTION_3_5();
        sub_26A24DB28(v14, v15, v16, v17, v18, 5);
        if (!sub_26A13BEE8(*(v5 + 32), *(v5 + 40)))
        {
          OUTLINED_FUNCTION_16_4();
          sub_26A424A14();
        }

        if (!sub_26A13BEE8(*(v5 + 48), *(v5 + 56)))
        {
          OUTLINED_FUNCTION_16_4();
          sub_26A424A14();
        }

        type metadata accessor for _ProtoImageElement.DataMessage(0);
        OUTLINED_FUNCTION_19_6();
      }
    }
  }

  OUTLINED_FUNCTION_248_1();
}

uint64_t sub_26A24CB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A24CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A24CF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24D010(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24D080(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24D144()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370840);
  __swift_project_value_buffer(v0, qword_280370840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26A429A40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bundle_id";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "image_style";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "aspect_ratio";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "bundle_path";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "fixed_height";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "fixed_width";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dark_mode_name";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.Bundle.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
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
      case 2:
      case 5:
      case 8:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A24D594(v3, v4);
        break;
      case 4:
        v5 = OUTLINED_FUNCTION_5_6();
        sub_26A24D5FC(v5, v6, v7, v8);
        break;
      case 6:
        OUTLINED_FUNCTION_5_6();
        sub_26A24D6B0();
        break;
      case 7:
        v9 = OUTLINED_FUNCTION_5_6();
        sub_26A24D73C(v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A24D5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.Bundle(0);
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A24D6B0()
{
  OUTLINED_FUNCTION_213_0();
  v0(0);
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_157_2();
  sub_26A252D48();
  OUTLINED_FUNCTION_246_1();
  return sub_26A424944();
}

uint64_t sub_26A24D73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.Bundle(0);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  return sub_26A424944();
}

void _ProtoImageElement.Bundle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_84_0();
  if (!v4 || (OUTLINED_FUNCTION_16_4(), sub_26A424A64(), !v3))
  {
    OUTLINED_FUNCTION_84_0();
    if (!v5 || (OUTLINED_FUNCTION_16_4(), sub_26A424A64(), !v3))
    {
      OUTLINED_FUNCTION_180_2();
      if (!_ProtoImageElement.ImageStyle.rawValue.getter() || (OUTLINED_FUNCTION_180_2(), sub_26A252D8C(), OUTLINED_FUNCTION_48_8(), sub_26A4249F4(), !v3))
      {
        v6 = OUTLINED_FUNCTION_3_5();
        sub_26A24D948(v6, v7, v8, v9);
        if (!v3)
        {
          OUTLINED_FUNCTION_84_0();
          if (v10)
          {
            OUTLINED_FUNCTION_16_4();
            sub_26A424A64();
          }

          v11 = OUTLINED_FUNCTION_3_5();
          sub_26A24DB28(v11, v12, v13, v14, v15, 6);
          v16 = OUTLINED_FUNCTION_3_5();
          sub_26A24DCCC(v16, v17, v18, v19);
          OUTLINED_FUNCTION_84_0();
          if (v20)
          {
            OUTLINED_FUNCTION_16_4();
            sub_26A424A64();
          }

          type metadata accessor for _ProtoImageElement.Bundle(0);
          OUTLINED_FUNCTION_19_6();
        }
      }
    }
  }

  OUTLINED_FUNCTION_248_1();
}

uint64_t sub_26A24D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.Bundle(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A24DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v8 = OUTLINED_FUNCTION_37_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_173_0();
  v12 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72_1();
  a5(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  OUTLINED_FUNCTION_157_2();
  sub_26A252D48();
  sub_26A424A84();
  OUTLINED_FUNCTION_54_9();
  return sub_26A23838C();
}

uint64_t sub_26A24DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.Bundle(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A24DF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24DFD8(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24E048(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24E104()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370868);
  __swift_project_value_buffer(v0, qword_280370868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26A432930;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "source";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "data_loading_image";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "bundle_loading_image";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "symbol_loading_image";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "content_mode";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "image_style";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "aspect_ratio";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "fixed_height";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "fixed_width";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "background_color";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "dark_mode_source";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "corner_rounding_mode";
  *(v29 + 1) = 20;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "rendering_mode";
  *(v31 + 1) = 14;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "inset_padding";
  *(v33 + 1) = 13;
  v33[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t sub_26A24E5D4()
{
  type metadata accessor for _ProtoImageElement.Url._StorageClass(0);
  swift_allocObject();
  result = sub_26A24E614();
  qword_28157A500 = result;
  return result;
}

uint64_t sub_26A24E614()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  v2 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__aspectRatio;
  v6 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedHeight;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedWidth, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__backgroundColor;
  v10 = type metadata accessor for _ProtoColor(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding) = 0;
  return v0;
}

uint64_t sub_26A24E76C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_42();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
  *v17 = 0;
  *(v17 + 8) = 1;
  OUTLINED_FUNCTION_58_10();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = (v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  v50 = (v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v34 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
  v51 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
  v52 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
  *v35 = 0;
  *(v35 + 8) = 1;
  v53 = (v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
  *(v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding) = 0;
  OUTLINED_FUNCTION_142(a1 + 16, v72);
  v37 = *(a1 + 16);
  v36 = *(a1 + 24);
  OUTLINED_FUNCTION_26_10(v1 + 16, v71);
  *(v1 + 16) = v37;
  *(v1 + 24) = v36;
  OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage, v70);
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();

  sub_26A252CF0();
  v38 = swift_endAccess();
  LOBYTE(v36) = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  OUTLINED_FUNCTION_122_1(v38, v69);
  OUTLINED_FUNCTION_238_1();
  v39 = OUTLINED_FUNCTION_26_10(v16, v68);
  *v16 = v11;
  *(v16 + 8) = v36;
  LOBYTE(v36) = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
  OUTLINED_FUNCTION_122_1(v39, v67);
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_26_10(v17, &v66);
  *v17 = v11;
  *(v17 + 8) = v36;
  OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__aspectRatio, &v65);
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedHeight, &v64);
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedWidth, &v63);
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__backgroundColor, &v62);
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A252CF0();
  v40 = swift_endAccess();
  v41 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  OUTLINED_FUNCTION_122_1(v40, &v61);
  v43 = *v41;
  v42 = v41[1];
  OUTLINED_FUNCTION_26_10(v50, &v60);
  *v50 = v43;
  v50[1] = v42;

  LOBYTE(v42) = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
  OUTLINED_FUNCTION_122_1(v44, &v59);
  OUTLINED_FUNCTION_238_1();
  v45 = OUTLINED_FUNCTION_26_10(v51, &v58);
  *v51 = v43;
  *(v51 + 8) = v42;
  LOBYTE(v42) = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
  OUTLINED_FUNCTION_122_1(v45, &v57);
  OUTLINED_FUNCTION_238_1();
  v46 = OUTLINED_FUNCTION_26_10(v52, &v56);
  *v52 = v43;
  *(v52 + 8) = v42;
  v47 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
  OUTLINED_FUNCTION_122_1(v46, &v55);
  v48 = *v47;

  OUTLINED_FUNCTION_26_10(v53, &v54);
  *v53 = v48;
  return v1;
}

uint64_t sub_26A24EE0C()
{
  OUTLINED_FUNCTION_45_3();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A24EE84()
{

  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();

  return v0;
}

uint64_t sub_26A24EF68()
{
  v0 = sub_26A24EE84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A24F014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A15BAB8(a2, a1);
        continue;
      case 2:
        sub_26A24F2B0(a1, a2, a3, a4);
        continue;
      case 3:
        sub_26A24F804(a1, a2, a3, a4);
        continue;
      case 4:
        sub_26A24FD74(a1, a2, a3, a4);
        continue;
      case 6:
        v11 = sub_26A257CD8;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
        goto LABEL_14;
      case 7:
        v11 = sub_26A252D8C;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
        goto LABEL_14;
      case 8:
        sub_26A2502E4(a2, a1, a3, a4);
        continue;
      case 9:
        sub_26A2503C0(a2, a1, a3, a4);
        continue;
      case 10:
        sub_26A25049C(a2, a1, a3, a4);
        continue;
      case 11:
        sub_26A250578(a2, a1, a3, a4);
        continue;
      case 12:
        sub_26A250654(a2, a1);
        continue;
      case 13:
        v11 = sub_26A257C84;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
        goto LABEL_14;
      case 14:
        v11 = sub_26A253AD4;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
LABEL_14:
        sub_26A2506E0(v12, v13, v14, v15, v16, v11);
        break;
      case 15:
        sub_26A250784(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A24F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = a3;
  v34 = a2;
  v5 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370B90, &qword_26A4347B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  swift_beginAccess();
  v29 = a1;
  v27 = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A23838C();
    }

    else
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_26A252D48();
  v24 = v32;
  sub_26A424944();
  if (v24)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v14);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A24F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Bundle(0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370B98, &qword_26A4347C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  swift_beginAccess();
  v27[1] = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v30 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v27[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A24FD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Symbol(0);
  MEMORY[0x28223BE20](v5);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BA0, &qword_26A4347C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  __swift_storeEnumTagSinglePayload(v27 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  swift_beginAccess();
  v27[1] = v22;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v30 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v27[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v33;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A2502E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2503C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A25049C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A250578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoColor(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A250654(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t sub_26A2506E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_21_8();
  v7 = swift_beginAccess();
  a6(v7);
  sub_26A424894();
  return swift_endAccess();
}

uint64_t sub_26A250784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26A4248D4();
  return swift_endAccess();
}

uint64_t sub_26A250840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_26A424A64();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_26A1E05A8();
  v15 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A250FA4(a1, a2, a3, a4);
      }

      else
      {
        sub_26A2511D8(a1, a2, a3, a4);
      }

      if (v4)
      {
        return sub_26A23838C();
      }

      sub_26A23838C();
    }

    else
    {
      sub_26A250D74(a1, a2, a3, a4);
      result = sub_26A23838C();
      if (v4)
      {
        return result;
      }
    }
  }

  v16 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode);
  swift_beginAccess();
  if (!*v16 || (v17 = *(v16 + 8), v36 = *v16, v37 = v17, sub_26A257CD8(), result = sub_26A4249F4(), !v4))
  {
    v18 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle);
    swift_beginAccess();
    v19 = *v18;
    v20 = *(v18 + 8);
    v34 = *v18;
    v35 = v20;
    if (!_ProtoImageElement.ImageStyle.rawValue.getter() || (v34 = v19, v35 = v20, sub_26A252D8C(), result = sub_26A4249F4(), !v4))
    {
      result = sub_26A25140C(a1, a2, a3, a4);
      if (!v4)
      {
        sub_26A251600(a1, a2, a3, a4);
        sub_26A2517F4(a1, a2, a3, a4);
        sub_26A2519E8(a1, a2, a3, a4);
        v21 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
        swift_beginAccess();
        v22 = v21[1];
        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = *v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {

          sub_26A424A64();
        }

        v24 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode);
        swift_beginAccess();
        if (*v24)
        {
          v25 = *(v24 + 8);
          v32 = *v24;
          v33 = v25;
          sub_26A257C84();
          sub_26A4249F4();
        }

        v26 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode);
        swift_beginAccess();
        if (*v26)
        {
          v27 = *(v26 + 8);
          v30 = *v26;
          v31 = v27;
          sub_26A253AD4();
          sub_26A4249F4();
        }

        v28 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
        result = swift_beginAccess();
        if (*v28 != 0.0)
        {
          return sub_26A424A24();
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A250D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A250FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Bundle(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2511D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Symbol(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A25140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A251600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A2517F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A2519E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

BOOL sub_26A251BDC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370908, &qword_26A432968);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  v10 = OUTLINED_FUNCTION_45();
  type metadata accessor for _ProtoOptionalBool(v10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FBC8, &unk_26A42EA70);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_48();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  v20 = OUTLINED_FUNCTION_45();
  type metadata accessor for _ProtoImageElement.AspectRatio(v20);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v110 = v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803708F8, &qword_26A432948);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_42();
  v114 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v112 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  v29 = OUTLINED_FUNCTION_45();
  v115 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(v29);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BD8, &qword_26A434808);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v34 = OUTLINED_FUNCTION_41(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_142(a1 + 16, v141);
  v36 = *(a1 + 16);
  v37 = *(a1 + 24);
  OUTLINED_FUNCTION_142(a2 + 16, v140);
  v38 = v36 == *(a2 + 16) && v37 == *(a2 + 24);
  if (v38 || (v39 = sub_26A425354(), result = 0, (v39 & 1) != 0))
  {
    OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage, v139);
    sub_26A1E05A8();
    OUTLINED_FUNCTION_142(a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage, v138);
    v41 = *(v31 + 48);
    OUTLINED_FUNCTION_234_1();
    sub_26A1E05A8();
    sub_26A1E05A8();
    OUTLINED_FUNCTION_37(v2, 1, v115);
    if (v38)
    {

      sub_26A13440C();
      OUTLINED_FUNCTION_23(v2 + v41);
      if (!v38)
      {
        goto LABEL_14;
      }

      v42 = sub_26A13440C();
    }

    else
    {
      sub_26A1E05A8();
      OUTLINED_FUNCTION_23(v2 + v41);
      if (v43)
      {

        sub_26A13440C();
        OUTLINED_FUNCTION_155_2();
        sub_26A23838C();
        goto LABEL_14;
      }

      sub_26A2356C8();

      static _ProtoImageElement.Url.OneOf_LoadingImage.== infix(_:_:)();
      v45 = v44;
      sub_26A23838C();
      OUTLINED_FUNCTION_124();
      sub_26A13440C();
      OUTLINED_FUNCTION_12_2();
      sub_26A23838C();
      v42 = sub_26A13440C();
      if ((v45 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v46 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode);
    v47 = OUTLINED_FUNCTION_135_2(v42, v137);
    v48 = *v46;
    v49 = *(v46 + 8);
    OUTLINED_FUNCTION_135_2(v47, v136);
    OUTLINED_FUNCTION_242_0();
    if (!v49)
    {
      v52 = v48;
    }

    if (v53 == 1)
    {
      if (v51)
      {
        if (v52 != 1)
        {
          goto LABEL_15;
        }
      }

      else if (v52)
      {
        goto LABEL_15;
      }
    }

    else if (v52 != v51)
    {
      goto LABEL_15;
    }

    v54 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle);
    v55 = OUTLINED_FUNCTION_135_2(v50, &v135);
    v56 = *v54;
    v57 = *(v54 + 8);
    v58 = (a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle);
    OUTLINED_FUNCTION_135_2(v55, &v134);
    v59 = *v58;
    v60 = *(v58 + 8);
    v132 = v56;
    v133 = v57;
    v130 = v59;
    v131 = v60;
    v61 = _ProtoImageElement.ImageStyle.rawValue.getter();
    if (v61 != _ProtoImageElement.ImageStyle.rawValue.getter())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__aspectRatio, &v132);
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_142(a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__aspectRatio, &v130);
    v62 = *(v113 + 48);
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_19(v114, 1);
    if (v38)
    {
      sub_26A13440C();
      OUTLINED_FUNCTION_9(v114 + v62);
      if (!v38)
      {
        goto LABEL_14;
      }

      sub_26A13440C();
      goto LABEL_33;
    }

    sub_26A1E05A8();
    OUTLINED_FUNCTION_9(v114 + v62);
    if (!v75)
    {
      sub_26A2356C8();
      if (*v112 != *v110 || v112[1] != v110[1])
      {
        sub_26A23838C();
        OUTLINED_FUNCTION_217_0();
        sub_26A13440C();
LABEL_69:
        sub_26A23838C();
        OUTLINED_FUNCTION_125();
        goto LABEL_14;
      }

      sub_26A424794();
      OUTLINED_FUNCTION_0_38();
      sub_26A252D48();
      v76 = sub_26A424B64();
      sub_26A23838C();
      OUTLINED_FUNCTION_167_0();
      sub_26A13440C();
      OUTLINED_FUNCTION_105();
      sub_26A23838C();
      OUTLINED_FUNCTION_12_2();
      sub_26A13440C();
      if ((v76 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_33:
      OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedHeight, &v129);
      OUTLINED_FUNCTION_182_2();
      sub_26A1E05A8();
      v63 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedHeight;
      OUTLINED_FUNCTION_142(a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedHeight, &v128);
      v64 = *(v111 + 48);
      OUTLINED_FUNCTION_182_2();
      sub_26A1E05A8();
      OUTLINED_FUNCTION_169_2();
      v65 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_19(v65, v66);
      if (v38)
      {
        sub_26A13440C();
        OUTLINED_FUNCTION_9(v63 + v64);
        if (!v38)
        {
          goto LABEL_14;
        }

        sub_26A13440C();
      }

      else
      {
        sub_26A1E05A8();
        OUTLINED_FUNCTION_9(v63 + v64);
        if (v77)
        {
LABEL_63:
          sub_26A13440C();
          OUTLINED_FUNCTION_54_9();
          sub_26A23838C();
          goto LABEL_14;
        }

        sub_26A2356C8();
        OUTLINED_FUNCTION_231_1();
        if (!v78)
        {
          sub_26A23838C();
LABEL_68:
          sub_26A13440C();
          goto LABEL_69;
        }

        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        v80 = OUTLINED_FUNCTION_253_1();
        sub_26A23838C();
        sub_26A13440C();
        OUTLINED_FUNCTION_217_0();
        sub_26A23838C();
        OUTLINED_FUNCTION_12_2();
        sub_26A13440C();
        if ((v80 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedWidth, &v127);
      OUTLINED_FUNCTION_187_2();
      sub_26A1E05A8();
      v67 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedWidth;
      OUTLINED_FUNCTION_142(a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedWidth, &v126);
      v68 = *(v111 + 48);
      OUTLINED_FUNCTION_182_2();
      sub_26A1E05A8();
      OUTLINED_FUNCTION_169_2();
      v69 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_19(v69, v70);
      if (v38)
      {
        sub_26A13440C();
        OUTLINED_FUNCTION_9(v67 + v68);
        if (!v38)
        {
          goto LABEL_14;
        }

        sub_26A13440C();
        goto LABEL_43;
      }

      sub_26A1E05A8();
      OUTLINED_FUNCTION_9(v67 + v68);
      if (!v79)
      {
        sub_26A2356C8();
        OUTLINED_FUNCTION_231_1();
        if (!v81)
        {
          sub_26A23838C();
          goto LABEL_68;
        }

        v83 = sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        OUTLINED_FUNCTION_253_1();
        OUTLINED_FUNCTION_12_15();
        sub_26A23838C();
        OUTLINED_FUNCTION_167_0();
        sub_26A13440C();
        OUTLINED_FUNCTION_105();
        sub_26A23838C();
        OUTLINED_FUNCTION_12_2();
        sub_26A13440C();
        if ((v83 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_43:
        OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__backgroundColor, &v125);
        OUTLINED_FUNCTION_189_2();
        v71 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__backgroundColor;
        OUTLINED_FUNCTION_142(a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__backgroundColor, &v124);
        v72 = *(v109 + 48);
        OUTLINED_FUNCTION_182_2();
        sub_26A1E05A8();
        OUTLINED_FUNCTION_169_2();
        v73 = OUTLINED_FUNCTION_166_1();
        OUTLINED_FUNCTION_19(v73, v74);
        if (v38)
        {
          sub_26A13440C();
          OUTLINED_FUNCTION_9(v71 + v72);
          if (!v38)
          {
            goto LABEL_14;
          }

          sub_26A13440C();
        }

        else
        {
          sub_26A1E05A8();
          OUTLINED_FUNCTION_9(v71 + v72);
          if (v82)
          {
            sub_26A13440C();
            OUTLINED_FUNCTION_152_2();
            sub_26A23838C();
            goto LABEL_14;
          }

          sub_26A2356C8();
          OUTLINED_FUNCTION_126();
          v84 = static _ProtoColor.== infix(_:_:)();
          OUTLINED_FUNCTION_151_2();
          sub_26A23838C();
          OUTLINED_FUNCTION_167_0();
          sub_26A13440C();
          OUTLINED_FUNCTION_105();
          sub_26A23838C();
          OUTLINED_FUNCTION_12_2();
          sub_26A13440C();
          if ((v84 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v85 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
        OUTLINED_FUNCTION_142(a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource, &v123);
        v86 = *v85;
        v87 = v85[1];
        v88 = (a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
        v89 = OUTLINED_FUNCTION_142(a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource, &v122);
        if (v86 != *v88 || v87 != v88[1])
        {
          v89 = sub_26A425354();
          if ((v89 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v91 = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
        OUTLINED_FUNCTION_135_2(v89, &v121);
        v92 = *v91;
        v93 = *(v91 + 8);
        v94 = (a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode);
        OUTLINED_FUNCTION_142(a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode, &v120);
        v95 = sub_26A0C2CA8(v92, v93, *v94);
        if (!v95)
        {
          goto LABEL_15;
        }

        v96 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode);
        v97 = OUTLINED_FUNCTION_135_2(v95, &v119);
        v98 = *v96;
        v99 = *(v96 + 8);
        OUTLINED_FUNCTION_135_2(v97, &v118);
        OUTLINED_FUNCTION_242_0();
        if (!v99)
        {
          v102 = v98;
        }

        if (v103 == 1)
        {
          if (v101)
          {
            if (v102 != 1)
            {
              goto LABEL_15;
            }
          }

          else if (v102)
          {
            goto LABEL_15;
          }
        }

        else if (v102 != v101)
        {
          goto LABEL_15;
        }

        v104 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
        OUTLINED_FUNCTION_135_2(v100, &v117);
        v105 = *v104;

        v107 = (a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
        OUTLINED_FUNCTION_135_2(v106, &v116);
        v108 = *v107;

        return v105 == v108;
      }

      goto LABEL_63;
    }

    sub_26A13440C();
    OUTLINED_FUNCTION_24_19();
    sub_26A23838C();
LABEL_14:
    sub_26A13440C();
LABEL_15:

    return 0;
  }

  return result;
}

uint64_t sub_26A252CF0()
{
  OUTLINED_FUNCTION_45_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

unint64_t sub_26A252D48()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A252D8C()
{
  result = qword_280370958;
  if (!qword_280370958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370958);
  }

  return result;
}

uint64_t sub_26A252E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A252EE0(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A252F50(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A253014()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370890);
  __swift_project_value_buffer(v0, qword_280370890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A42B0D0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "tint_color";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "image_style";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "rendering_mode";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "dark_mode_name";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "background";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "punches_through_background";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "symbol_rendering_mode";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "vibrancy";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.Symbol.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
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
      case 5:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A2534A4(v7, v8, v9, v10);
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A0C2EA8();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A253558(v3, v4);
        break;
      case 6:
        v11 = OUTLINED_FUNCTION_5_6();
        sub_26A2535C0(v11, v12, v13, v14);
        break;
      case 7:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      case 8:
        v5 = OUTLINED_FUNCTION_5_6();
        sub_26A253674(v5, v6);
        break;
      case 9:
        v15 = OUTLINED_FUNCTION_5_6();
        sub_26A2536DC(v15, v16);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2534A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.Symbol(0);
  type metadata accessor for _ProtoColor(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A2535C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.Symbol(0);
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  sub_26A252D48();
  return sub_26A424944();
}

void _ProtoImageElement.Symbol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_1_26();
  OUTLINED_FUNCTION_84_0();
  if (!v5 || (OUTLINED_FUNCTION_16_4(), sub_26A424A64(), !v3))
  {
    v6 = OUTLINED_FUNCTION_3_5();
    sub_26A2538F4(v6, v7, v8, v9);
    if (!v3)
    {
      if (OUTLINED_FUNCTION_166_2())
      {
        OUTLINED_FUNCTION_180_2();
        sub_26A252D8C();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249F4();
      }

      if (*(v4 + 32))
      {
        OUTLINED_FUNCTION_237_1();
        sub_26A253AD4();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249F4();
      }

      OUTLINED_FUNCTION_84_0();
      if (v10)
      {
        OUTLINED_FUNCTION_16_4();
        sub_26A424A64();
      }

      v11 = OUTLINED_FUNCTION_3_5();
      sub_26A253B28(v11, v12, v13, v14);
      if (*(v4 + 64) == 1)
      {
        OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_87();
        sub_26A4249E4();
      }

      if (*(v4 + 72))
      {
        OUTLINED_FUNCTION_237_1();
        sub_26A253D08();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249F4();
      }

      if (*(v4 + 88))
      {
        OUTLINED_FUNCTION_237_1();
        sub_26A14CD6C();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249F4();
      }

      type metadata accessor for _ProtoImageElement.Symbol(0);
      OUTLINED_FUNCTION_19_6();
    }
  }

  OUTLINED_FUNCTION_248_1();
}

uint64_t sub_26A2538F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.Symbol(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

unint64_t sub_26A253AD4()
{
  result = qword_280370980;
  if (!qword_280370980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370980);
  }

  return result;
}

uint64_t sub_26A253B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4C8, &qword_26A428228);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.Symbol(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

unint64_t sub_26A253D08()
{
  result = qword_280370988;
  if (!qword_280370988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370988);
  }

  return result;
}

uint64_t sub_26A253DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A253E64(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A253ED4(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A253F54()
{
  if (qword_28036C390 != -1)
  {
    swift_once();
  }

  v1 = qword_280370880;
  v2 = *algn_280370888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x26D65BA70](0x6F72676B6361422ELL, 0xEB00000000646E75);

  qword_2803708A8 = v1;
  unk_2803708B0 = v2;
  return result;
}

uint64_t sub_26A254020()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803708B8);
  __swift_project_value_buffer(v0, qword_2803708B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "color";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aspect_ratio";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fixed_height";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fixed_width";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.Symbol.Background.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
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
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A254330(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_5_6();
        sub_26A2543E4(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A254498(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_6();
        sub_26A25454C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A254330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  type metadata accessor for _ProtoColor(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A2543E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A254498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A25454C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t _ProtoImageElement.Symbol.Background.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_185_2();
  OUTLINED_FUNCTION_12_7();
  result = sub_26A254688(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_12_7();
    sub_26A254868(v9, v10, v11, a3);
    OUTLINED_FUNCTION_12_7();
    sub_26A254A48(v12, v13, v14, a3);
    OUTLINED_FUNCTION_12_7();
    sub_26A254C28(v15, v16, v17, a3);
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A254688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoColor(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A254868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A254A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A254C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A254E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A254F08(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A254F78(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A255024(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x800000026A448A20;
  return result;
}

uint64_t sub_26A2550B0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803708E0);
  __swift_project_value_buffer(v0, qword_2803708E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.AspectRatio.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A4248D4();
    }
  }

  return result;
}

uint64_t _ProtoImageElement.AspectRatio.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_12_7(), result = sub_26A424A24(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_12_7(), result = sub_26A424A24(), !v1))
    {
      type metadata accessor for _ProtoImageElement.AspectRatio(0);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t static _ProtoImageElement.AspectRatio.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_3();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A255470()
{
  OUTLINED_FUNCTION_101_3();
  v1 = v0;
  sub_26A425504();
  v1(0);
  OUTLINED_FUNCTION_125();
  sub_26A252D48();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A2554F4()
{
  result = qword_280370998;
  if (!qword_280370998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370998);
  }

  return result;
}

unint64_t sub_26A25554C()
{
  result = qword_2803709A0;
  if (!qword_2803709A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709A0);
  }

  return result;
}

unint64_t sub_26A2555A8()
{
  result = qword_2803709A8;
  if (!qword_2803709A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709A8);
  }

  return result;
}

unint64_t sub_26A255600()
{
  result = qword_2803709B0;
  if (!qword_2803709B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709B0);
  }

  return result;
}

unint64_t sub_26A25565C()
{
  result = qword_2803709B8;
  if (!qword_2803709B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709B8);
  }

  return result;
}

unint64_t sub_26A2556B4()
{
  result = qword_2803709C0;
  if (!qword_2803709C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709C0);
  }

  return result;
}

unint64_t sub_26A255710()
{
  result = qword_2803709C8;
  if (!qword_2803709C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709C8);
  }

  return result;
}

unint64_t sub_26A255768()
{
  result = qword_2803709D0;
  if (!qword_2803709D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709D0);
  }

  return result;
}

unint64_t sub_26A2557C4()
{
  result = qword_2803709D8;
  if (!qword_2803709D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709D8);
  }

  return result;
}

unint64_t sub_26A25581C()
{
  result = qword_2803709E0;
  if (!qword_2803709E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709E0);
  }

  return result;
}

unint64_t sub_26A255878()
{
  result = qword_2803709E8;
  if (!qword_2803709E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709E8);
  }

  return result;
}

unint64_t sub_26A2558D0()
{
  result = qword_2803709F0;
  if (!qword_2803709F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803709F0);
  }

  return result;
}

unint64_t sub_26A255A44()
{
  OUTLINED_FUNCTION_14_4();
  result = *v3;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A25689C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2569AC(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A256A64(uint64_t a1, uint64_t a2)
{
  sub_26A252D48();

  return sub_26A4249B4();
}

void sub_26A256B0C(uint64_t a1)
{
  sub_26A256F10(319, &qword_280370B00, type metadata accessor for _ProtoImageElement.Source, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A2570CC(319, &qword_28036D218, &type metadata for _ProtoIdiom);
    if (v2 <= 0x3F)
    {
      sub_26A424794();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A256C88(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement.DataMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoImageElement.Bundle(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for _ProtoImageElement.Url(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for _ProtoImageElement.Symbol(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for _ProtoImageElement.AppIcon(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for _ProtoImageElement.Contact(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for _ProtoImageElement.BadgedImage(319);
              if (v8 <= 0x3F)
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

  return result;
}

uint64_t sub_26A256DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void sub_26A256E54(uint64_t a1)
{
  sub_26A256F10(319, qword_281579CC8, type metadata accessor for _ProtoImageElement.Contact.OneOf_Content, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A256F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A256F74(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement.Contact.Monogram(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoImageElement.Contact.Avatar(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A257038(uint64_t a1)
{
  sub_26A2570CC(319, &qword_280370B08, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A2570CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26A424D94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A25717C(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157A6F0, type metadata accessor for _ProtoImageElement.AspectRatio, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A256F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A2572BC(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157A6F0, type metadata accessor for _ProtoImageElement.AspectRatio, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A256F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void __swift_store_extra_inhabitant_index_137Tm()
{
  OUTLINED_FUNCTION_130_2();
  sub_26A424794();
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_218_1();
    OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_26A2574A8(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement.DataMessage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoImageElement.Bundle(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for _ProtoImageElement.Symbol(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_26A257558(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157B5B8, type metadata accessor for _ProtoColor, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A256F10(319, qword_281579EC8, type metadata accessor for _ProtoImageElement.Symbol.Background, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A2576C8(uint64_t a1)
{
  sub_26A424794();
  if (v1 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157B5B8, type metadata accessor for _ProtoColor, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A256F10(319, qword_28157A6F0, type metadata accessor for _ProtoImageElement.AspectRatio, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26A256F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26A257844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_26A424794();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26A2578C0(uint64_t a1)
{
  sub_26A256F10(319, qword_28157A118, type metadata accessor for _ProtoImageElement.Source.OneOf_Value, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A257988(uint64_t a1)
{
  sub_26A256F10(319, qword_281579F80, type metadata accessor for _ProtoImageElement.Source, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A257A50(uint64_t a1)
{
  sub_26A256F10(319, qword_28157A5B0, type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A256F10(319, qword_28157A6F0, type metadata accessor for _ProtoImageElement.AspectRatio, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A256F10(319, qword_2815799A8, type metadata accessor for _ProtoOptionalBool, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26A256F10(319, qword_28157B5B8, type metadata accessor for _ProtoColor, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_26A257C84()
{
  result = qword_280370B78;
  if (!qword_280370B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370B78);
  }

  return result;
}

unint64_t sub_26A257CD8()
{
  result = qword_280370B80;
  if (!qword_280370B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370B80);
  }

  return result;
}

unint64_t sub_26A257D2C()
{
  result = qword_280370B88;
  if (!qword_280370B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370B88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);

  return sub_26A13440C();
}

uint64_t OUTLINED_FUNCTION_41_10@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_65_8()
{
  type metadata accessor for _ProtoImageElement.Url._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68_4()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_70_4()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return sub_26A23838C();
}

uint64_t OUTLINED_FUNCTION_74_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_75_6(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_78_5()
{

  return sub_26A1E05A8();
}

void OUTLINED_FUNCTION_106_2()
{
  v2 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_107_3@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 96) = a1;
  *(v4 - 88) = v1;
  *(v4 - 112) = v2;
  *(v4 - 104) = v3;
  _ProtoImageElement.ImageStyle.rawValue.getter();
  return _ProtoImageElement.ImageStyle.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_111_2()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_112_2(__n128 a1)
{
  *v1 = a1;
  v1[1].n128_u64[0] = 0;
  v1[1].n128_u8[8] = 1;
  v1[2] = a1;
  v1[3] = a1;
  type metadata accessor for _ProtoImageElement.DataMessage(0);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_136_3(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_141_1(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_166_2()
{

  return _ProtoImageElement.ImageStyle.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_167_1(uint64_t a1)
{
  type metadata accessor for _ProtoImageElement.Url(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_169_2()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_170_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_171_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_173_2(uint64_t a1)
{
  *v1 = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_179_1(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_186_1()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_189_2()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_191_1()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_197_1(uint64_t a1, __n128 a2)
{
  *v2 = a2;
  v2[1].n128_u64[0] = 0;
  v2[1].n128_u8[8] = 1;
  v2[2] = a2;
  v2[3] = a2;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_200_1(uint64_t a1)
{
  *v1 = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_209_1()
{

  return sub_26A2356C8();
}

uint64_t OUTLINED_FUNCTION_222_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_225_1(uint64_t a1)
{
  *v1 = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_226_1(uint64_t a1)
{

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_227_1()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_228_1()
{

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_249_1()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_250_1()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_251_1()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_253_1()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_254_1()
{

  return sub_26A2356C8();
}

uint64_t OUTLINED_FUNCTION_255_1()
{

  return sub_26A2356C8();
}

uint64_t OUTLINED_FUNCTION_256_1()
{

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_257_1()
{

  return sub_26A424794();
}

uint64_t _ProtoSimpleItem_Rich.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text7.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasText8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.text8.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Rich.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Rich.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A2597D8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A25986C(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142(v3, v6);
  v4 = *v3;

  return v4;
}

uint64_t _ProtoSimpleItem_Rich.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text7.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.text8.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSimpleItem_Rich.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_106_3(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_123_3();
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t sub_26A25A21C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
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
    v15 = a5(v16);
    *(v10 + v13) = v15;
  }

  v17 = (v15 + *a6);
  OUTLINED_FUNCTION_26_10(v17, v19);
  *v17 = a1;
  v17[1] = a2;
}

uint64_t _ProtoSimpleItem_Rich.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_29_11(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoSimpleItem_Standard.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Standard.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t sub_26A25A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A2695B8();
  return a7(v11);
}

uint64_t _ProtoSimpleItem_Standard.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Standard.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Standard.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25B5E4(uint64_t (*a1)(void), void *a2)
{
  v5 = OUTLINED_FUNCTION_124();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10 - 8];
  v12 = (a1)(0, v9);
  OUTLINED_FUNCTION_142(*(v2 + *(v12 + 20)) + *a2, v16);
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v11);
  if (!v13)
  {
    return sub_26A2597D8();
  }

  OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
  result = OUTLINED_FUNCTION_23(v11);
  if (!v13)
  {
    return sub_26A0E48F0(v11, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoActionProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25BAC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Standard.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Standard.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSimpleItem_Standard.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Standard.text6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_6(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Standard.text6.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Standard.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Standard.hasText6.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_6(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Standard.clearText6()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_58_11();
    OUTLINED_FUNCTION_5_3();
    sub_26A2656F4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25C4F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Standard.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Standard.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoSimpleItem_Rich.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText5()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoVisualProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoActionProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25D52C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Rich.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Rich.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Rich(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoSimpleItem_Rich.text6.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText6()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text7.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText7()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

void _ProtoSimpleItem_Rich.text8.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_16();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoSimpleItem_Rich.clearText8()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  if ((OUTLINED_FUNCTION_107_4(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_5_3();
    sub_26A268F00();
    OUTLINED_FUNCTION_52_3(v3);
  }

  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v4);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25DC64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Rich.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Rich.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Rich(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A25DDB4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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

uint64_t _ProtoSimpleItem_ReverseRich.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_ReverseRich.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_ReverseRich.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoMultilineTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_ReverseRich.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoVisualProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearThumbnail()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_ReverseRich.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoActionProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25F3C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_ReverseRich.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_ReverseRich.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSimpleItem_ReverseRich.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_54_10(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_ReverseRich.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_ReverseRich.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_31_1(v8);
  type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_14_8();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_ReverseRich.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_54_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_ReverseRich.clearText4()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_65_9();
    OUTLINED_FUNCTION_5_3();
    sub_26A26D9A8();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A25F988(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_ReverseRich.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_ReverseRich.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoSimpleItem_Visual.thumbnails.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _ProtoSimpleItem_Visual.action.getter()
{
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for _ProtoSimpleItem_Visual(v5);
  OUTLINED_FUNCTION_176(*(v6 + 32));
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v7)
  {
    return sub_26A2597D8();
  }

  OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
  result = OUTLINED_FUNCTION_23(v0);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Visual.action.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = type metadata accessor for _ProtoSimpleItem_Visual(v1);
  sub_26A0E48F0(v0 + *(v2 + 32), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_36_1();
  sub_26A2597D8();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*_ProtoSimpleItem_Visual.action.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 32);
  *(v3 + 10) = v10;
  OUTLINED_FUNCTION_176(v10);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_14_9(v6);
  if (v11)
  {
    *v9 = MEMORY[0x277D84F90];
    v9[1] = 0;
    v9[2] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_14_9(v6);
    if (!v11)
    {
      sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2597D8();
  }

  return sub_26A25FE68;
}

uint64_t _ProtoSimpleItem_Visual.hasAction.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for _ProtoSimpleItem_Visual(v5);
  OUTLINED_FUNCTION_176(*(v6 + 32));
  sub_26A10FD9C();
  v7 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return v0;
}

Swift::Void __swiftcall _ProtoSimpleItem_Visual.clearAction()()
{
  v1 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  sub_26A0E48F0(v0 + *(v1 + 32), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Visual.text1.getter()
{
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  type metadata accessor for _ProtoSimpleItem_Visual(v5);
  sub_26A10FD9C();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Visual.text1.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = type metadata accessor for _ProtoSimpleItem_Visual(v1);
  sub_26A0E48F0(v0 + *(v2 + 36), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_36_1();
  sub_26A2597D8();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*_ProtoSimpleItem_Visual.text1.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  *(v3 + 10) = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 36);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_1_4();
  if (v9)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v10 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v10);
    if (!v9)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  return sub_26A260274;
}

void sub_26A2602B0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[2];
  v20 = (*a1)[1];
  v13 = **a1;
  if (a2)
  {
    sub_26A2695B8();
    sub_26A0E48F0(v13 + v9, a3, a4);
    sub_26A2597D8();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_26A26960C();
  }

  else
  {
    sub_26A0E48F0(v13 + v9, a3, a4);
    sub_26A2597D8();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v11);
  free(v10);
  free(v20);

  free(v8);
}

uint64_t _ProtoSimpleItem_Visual.hasText1.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for _ProtoSimpleItem_Visual(v5);
  OUTLINED_FUNCTION_176(*(v6 + 36));
  sub_26A10FD9C();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return v0;
}

Swift::Void __swiftcall _ProtoSimpleItem_Visual.clearText1()()
{
  v1 = type metadata accessor for _ProtoSimpleItem_Visual(0);
  sub_26A0E48F0(v0 + *(v1 + 36), &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Visual.componentName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t _ProtoSimpleItem_Visual.linkIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t _ProtoSimpleItem_Visual.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoSimpleItem_Visual(0) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoSimpleItem_Visual.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoSimpleItem_Visual(v2) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*_ProtoSimpleItem_Visual.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  type metadata accessor for _ProtoSimpleItem_Visual(v0);
  return nullsub_1;
}

uint64_t _ProtoSimpleItem_Visual.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  type metadata accessor for _ProtoSimpleItem_Visual(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t _ProtoSimpleItem_Player.player.getter()
{
  v1 = type metadata accessor for _ProtoSimpleItem_Player(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v1 + 20)) + 16, v3);
}

uint64_t _ProtoSimpleItem_Player.player.setter()
{
  v3 = OUTLINED_FUNCTION_110();
  v4 = type metadata accessor for _ProtoSimpleItem_Player(v3);
  v5 = OUTLINED_FUNCTION_187_1(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v7);
  }

  OUTLINED_FUNCTION_26_10(v6 + 16, v9);
  *(v6 + 16) = v0;
}

uint64_t _ProtoSimpleItem_Player.player.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  v4 = *(type metadata accessor for _ProtoSimpleItem_Player(0) + 20);
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_142(v5 + 16, v3);
  v3[6] = *(v5 + 16);

  return OUTLINED_FUNCTION_133();
}

void sub_26A2608F4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    _ProtoSimpleItem_Player.player.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_66_5();
      OUTLINED_FUNCTION_5_3();
      sub_26A2722B4();
      v7 = v10;
      *(v9 + v8) = v10;
    }

    OUTLINED_FUNCTION_26_10(v7 + 16, v2 + 24);
    *(v7 + 16) = v3;
  }

  free(v2);
}

uint64_t _ProtoSimpleItem_Player.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_56_10(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Player.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.text1.modify()
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
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  OUTLINED_FUNCTION_56_10(v13);
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
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearText1()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Player.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_56_10(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Player.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.text2.modify()
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
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  OUTLINED_FUNCTION_56_10(v13);
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
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearText2()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Player.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_56_10(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoSimpleItem_Player.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.text3.modify()
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
  type metadata accessor for _ProtoMultilineTextProperty(v8);
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  OUTLINED_FUNCTION_56_10(v13);
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
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearText3()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t _ProtoSimpleItem_Player.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  if ((OUTLINED_FUNCTION_188_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_42_1(v4);
  }

  OUTLINED_FUNCTION_123_3();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_50_4(v5);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSimpleItem_Player.action.modify()
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
  OUTLINED_FUNCTION_14_8();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_8(v12);
  OUTLINED_FUNCTION_56_10(v13);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2597D8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoSimpleItem_Player.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_56_10(v4);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_9_11(v5);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoSimpleItem_Player.clearAction()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_3();
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  if ((OUTLINED_FUNCTION_187_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_66_5();
    OUTLINED_FUNCTION_5_3();
    sub_26A2722B4();
    OUTLINED_FUNCTION_52_3(v4);
  }

  v5 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_51_4(v5);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_36_1();
  sub_26A10CF40();
  swift_endAccess();
}

uint64_t sub_26A261AB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Player.componentName.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Player.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A261C08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoSimpleItem_Player.linkIdentifier.setter(v1, v2, v3, v4, v5);
}

uint64_t _ProtoSimpleItem_Player.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoSimpleItem_Player(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}