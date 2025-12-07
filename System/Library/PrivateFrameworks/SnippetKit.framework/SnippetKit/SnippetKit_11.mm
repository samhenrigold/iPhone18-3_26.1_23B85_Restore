uint64_t static _ProtoCommand.ChangeBackground.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  sub_26A0DDAD4(*v0, *v1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoCommand.ChangeBackground(0);
  sub_26A424794();
  OUTLINED_FUNCTION_0_28();
  sub_26A1DDCA4();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t static _ProtoCommand.ResponseGroup.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_73_3(v0);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoCommand.ResponseGroup(0);
  sub_26A424794();
  OUTLINED_FUNCTION_0_28();
  sub_26A1DDCA4();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t static _ProtoCommand.AppPunchout.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_73_3(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v6 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v7 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for _ProtoCommand.AppPunchout(0);
  sub_26A424794();
  OUTLINED_FUNCTION_0_28();
  sub_26A1DDCA4();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t _ProtoCommand.ResponseGroup.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoCommand.ResponseGroup(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.ChangeBackground.background.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t sub_26A1DA150()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_57_5();

  return v3(v2);
}

uint64_t sub_26A1DA1D8()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t _ProtoCommand.ChangeBackground.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoCommand.ChangeBackground(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.AppPunchout.punchOutUri.setter()
{
  OUTLINED_FUNCTION_60_5();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t _ProtoCommand.AppPunchout.bundleID.setter()
{
  OUTLINED_FUNCTION_60_5();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t _ProtoCommand.AppPunchout.appDisplayName.setter()
{
  OUTLINED_FUNCTION_60_5();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_26A1DA414()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_57_5();

  return v3(v2);
}

uint64_t sub_26A1DA49C()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t _ProtoCommand.AppPunchout.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoCommand.AppPunchout(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoCommand.init()()
{
  v1 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoCommand.OneOf_Value(v1);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_64_3();
  *(v0 + v7) = 0;
  *(v0 + *(v6 + 24)) = 0;
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoActionElement.command.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_7();
  type metadata accessor for _ProtoActionElement(0);
  sub_26A1E05A8();
  v5 = type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_23(v1);
  if (!v6)
  {
    return sub_26A1D8D5C();
  }

  type metadata accessor for _ProtoCommand.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(a1 + *(v5 + 20)) = 0;
  *(a1 + *(v5 + 24)) = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v1);
  if (!v6)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoActionElement.command.setter()
{
  v1 = OUTLINED_FUNCTION_110();
  v2 = *(type metadata accessor for _ProtoActionElement(v1) + 28);
  sub_26A13440C();
  OUTLINED_FUNCTION_7_10();
  sub_26A1D8D5C();
  v3 = type metadata accessor for _ProtoCommand(0);

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
}

void _ProtoActionElement.command.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for _ProtoCommand(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v0 + 32) = v8;
  *(v0 + 40) = *(type metadata accessor for _ProtoActionElement(0) + 28);
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v4, 1, v5);
  if (v9)
  {
    type metadata accessor for _ProtoCommand.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v8[*(v5 + 20)] = 0;
    v8[*(v5 + 24)] = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_37(v4, 1, v5);
    if (!v9)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A1D8D5C();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A1DA8F4()
{
  OUTLINED_FUNCTION_69_1();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 8);
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A1D901C();
    sub_26A13440C();
    OUTLINED_FUNCTION_7_10();
    sub_26A1D8D5C();
    OUTLINED_FUNCTION_30_6();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    sub_26A1D87EC();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_7_10();
    sub_26A1D8D5C();
    OUTLINED_FUNCTION_30_6();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  free(v2);
  free(v1);
  free(v3);
  OUTLINED_FUNCTION_67_1();

  free(v13);
}

uint64_t _ProtoActionElement.hasCommand.getter()
{
  v1 = OUTLINED_FUNCTION_133();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_7();
  type metadata accessor for _ProtoActionElement(0);
  sub_26A1E05A8();
  v5 = type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_37(v0, 1, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  sub_26A13440C();
  return v7;
}

Swift::Void __swiftcall _ProtoActionElement.clearCommand()()
{
  type metadata accessor for _ProtoActionElement(0);
  sub_26A13440C();
  type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoActionElement.idioms.setter()
{
  OUTLINED_FUNCTION_14_4();

  *(v1 + 8) = v0;
  return result;
}

uint64_t _ProtoActionElement.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoActionElement(v0);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_57_5();

  return v2(v1);
}

uint64_t _ProtoActionElement.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoActionElement(v2) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t _ProtoActionElement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoActionElement(v0);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoActionElement.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  type metadata accessor for _ProtoActionElement(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A1DAD30()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F458);
  __swift_project_value_buffer(v0, qword_28036F458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26A42B070;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "no_op";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "ace_command";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "utterance";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "change_background";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "sf_command";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "direct_invocation";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "response_group";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "app_punchout";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "is_navigation";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "should_use_searchui_button";
  *(v26 + 1) = 26;
  v26[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t _ProtoCommand.decodeMessage<A>(decoder:)()
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
        sub_26A1DB264(v3, v4, v5, v6);
        continue;
      case 2:
        v15 = OUTLINED_FUNCTION_5_6();
        v19 = 1;
        goto LABEL_14;
      case 3:
        v15 = OUTLINED_FUNCTION_5_6();
        v19 = 2;
        goto LABEL_14;
      case 4:
        v20 = OUTLINED_FUNCTION_5_6();
        sub_26A1DB5B0(v20, v21, v22, v23);
        continue;
      case 5:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A1DB754(v7, v8, v9, v10);
        continue;
      case 6:
        v15 = OUTLINED_FUNCTION_5_6();
        v19 = 5;
        goto LABEL_14;
      case 7:
        v15 = OUTLINED_FUNCTION_5_6();
        v19 = 6;
LABEL_14:
        sub_26A1DB3F0(v15, v16, v17, v18, v19);
        break;
      case 8:
        v24 = OUTLINED_FUNCTION_5_6();
        sub_26A1DBC4C(v24, v25, v26, v27);
        break;
      case 9:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A1DBCB0(v32, v33, v34, v35);
        break;
      case 10:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A1DC1A8(v11, v12, v13, v14);
        break;
      case 12:
        v28 = OUTLINED_FUNCTION_5_6();
        sub_26A1DC6A0(v28, v29, v30, v31);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1DB264(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v14 = 2;
  result = sub_26A424864();
  if (!v4)
  {
    v10 = v14;
    if (v14 != 2)
    {
      sub_26A1E05A8();
      v11 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
      sub_26A13440C();
      if (EnumTagSinglePayload != 1)
      {
        sub_26A424844();
      }

      sub_26A13440C();
      *a2 = v10 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
    }
  }

  return result;
}

uint64_t sub_26A1DB3F0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v27 = xmmword_26A427140;
  sub_26A4248B4();
  v12 = v27;
  if (v5 || *(&v27 + 1) >> 60 == 15)
  {
    v16 = OUTLINED_FUNCTION_65_4();
    return sub_26A10E794(v16, v17);
  }

  else
  {
    v28 = a5;
    sub_26A1E05A8();
    v26 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v26);
    v14 = OUTLINED_FUNCTION_65_4();
    sub_26A0E45C0(v14, v15);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    v19 = OUTLINED_FUNCTION_65_4();
    sub_26A10E794(v19, v20);
    sub_26A13440C();
    *a2 = v12;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_6();
    return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }
}

uint64_t sub_26A1DB5B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0;
  result = sub_26A424914();
  if (v4)
  {
  }

  v10 = v14;
  if (v14)
  {
    v15 = v13;
    sub_26A1E05A8();
    v11 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_26A13440C();
    if (EnumTagSinglePayload != 1)
    {
      sub_26A424844();
    }

    sub_26A13440C();
    *a2 = v15;
    a2[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_26A1DB754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F638, &qword_26A42D8C8);
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
    sub_26A1D8D5C();
    sub_26A1D8D5C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A13440C();
      sub_26A1D8D5C();
      sub_26A1D8D5C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A1D87EC();
    }
  }

  sub_26A1DDCA4();
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

  sub_26A1D8D5C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A1D8D5C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A1DBCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F640, &qword_26A42D8D0);
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
    sub_26A1D8D5C();
    sub_26A1D8D5C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26A13440C();
      sub_26A1D8D5C();
      sub_26A1D8D5C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A1D87EC();
    }
  }

  sub_26A1DDCA4();
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

  sub_26A1D8D5C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A1D8D5C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t sub_26A1DC1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v5 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  MEMORY[0x28223BE20](v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28036F648, &qword_26A42D8D8);
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
    sub_26A1D8D5C();
    sub_26A1D8D5C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26A13440C();
      sub_26A1D8D5C();
      sub_26A1D8D5C();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A1D87EC();
    }
  }

  sub_26A1DDCA4();
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

  sub_26A1D8D5C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v21 = v26;
  sub_26A13440C();
  v22 = v24;
  sub_26A13440C();
  sub_26A1D8D5C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
}

uint64_t _ProtoCommand.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v45[1] = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  v46 = v45 - v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = v45 - v13;
  sub_26A1E05A8();
  v15 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    sub_26A1E05A8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v16 = OUTLINED_FUNCTION_1_19();
        sub_26A1DCB84(v16, v17, v18, v19);
        goto LABEL_12;
      case 1u:
        sub_26A1D87EC();
        v29 = OUTLINED_FUNCTION_1_19();
        sub_26A1DCCC0(v29);
        goto LABEL_12;
      case 2u:
        sub_26A1D87EC();
        v24 = OUTLINED_FUNCTION_1_19();
        sub_26A1DCE1C(v24);
        goto LABEL_12;
      case 3u:
        sub_26A1D87EC();
        v25 = OUTLINED_FUNCTION_1_19();
        sub_26A1DCF78(v25, v26, v27, v28);
        goto LABEL_12;
      case 4u:
        v20 = OUTLINED_FUNCTION_1_19();
        sub_26A1DD0CC(v20, v21, v22, v23);
        v4 = v3;
        if (!v3)
        {
          goto LABEL_8;
        }

        sub_26A1D87EC();
        return sub_26A13440C();
      case 5u:
        sub_26A1D87EC();
        v30 = OUTLINED_FUNCTION_1_19();
        sub_26A1DD2E0(v30);
        goto LABEL_12;
      case 6u:
        sub_26A1D87EC();
        v31 = OUTLINED_FUNCTION_1_19();
        sub_26A1DD43C(v31);
LABEL_12:
        v4 = v3;
        if (!v3)
        {
          break;
        }

        return sub_26A13440C();
      default:
LABEL_8:
        sub_26A1D87EC();
        break;
    }
  }

  sub_26A13440C();
  v32 = type metadata accessor for _ProtoCommand(0);
  if (*(v5 + *(v32 + 20)) != 1 || (OUTLINED_FUNCTION_39_8(), result = sub_26A4249E4(), !v4))
  {
    v34 = v46;
    sub_26A1E05A8();
    if (__swift_getEnumTagSinglePayload(v34, 1, v15) != 1)
    {
      sub_26A1E05A8();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 8)
      {
        OUTLINED_FUNCTION_39_8();
        v36 = v4;
        sub_26A1DD7AC(v41, v42, v43, v44);
LABEL_20:
        v4 = v36;
        OUTLINED_FUNCTION_38_8();
        sub_26A1D87EC();
        if (v36)
        {
          return sub_26A13440C();
        }

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 7)
      {
        OUTLINED_FUNCTION_39_8();
        v36 = v4;
        sub_26A1DD598(v37, v38, v39, v40);
        goto LABEL_20;
      }

      sub_26A1D87EC();
    }

LABEL_23:
    sub_26A13440C();
    if (*(v5 + *(v32 + 24)) != 1)
    {
      return sub_26A424774();
    }

    OUTLINED_FUNCTION_39_8();
    result = sub_26A4249E4();
    if (!v4)
    {
      return sub_26A424774();
    }
  }

  return result;
}

uint64_t sub_26A1DCB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_26A1E05A8();
  v7 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_26A4249E4();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DCCC0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_26A424A14();
      return sub_26A0E4784(v6, v5);
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DCE1C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_26A424A14();
      return sub_26A0E4784(v6, v5);
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DCF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_26A1E05A8();
  v7 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A424A64();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoCommand.ChangeBackground(0);
  MEMORY[0x28223BE20](v7);
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A1D8D5C();
      sub_26A1DDCA4();
      sub_26A424A84();
      return sub_26A1D87EC();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD2E0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_26A424A14();
      return sub_26A0E4784(v6, v5);
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD43C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v8 - v2);
  sub_26A1E05A8();
  v4 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_26A424A14();
      return sub_26A0E4784(v6, v5);
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoCommand.ResponseGroup(0);
  MEMORY[0x28223BE20](v7);
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26A1D8D5C();
      sub_26A1DDCA4();
      sub_26A424A84();
      return sub_26A1D87EC();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A1DD7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  MEMORY[0x28223BE20](v7);
  sub_26A1E05A8();
  v8 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_26A1D8D5C();
      sub_26A1DDCA4();
      sub_26A424A84();
      return sub_26A1D87EC();
    }

    result = sub_26A1D87EC();
  }

  __break(1u);
  return result;
}

void static _ProtoCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_45_3();
  v3 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_141_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C860, &unk_26A425E10);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_59_7();
  v10 = *(v9 + 56);
  sub_26A1E05A8();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v2, 1, v3);
  if (!v11)
  {
    OUTLINED_FUNCTION_12_2();
    sub_26A1E05A8();
    OUTLINED_FUNCTION_37(v2 + v10, 1, v3);
    if (!v11)
    {
      sub_26A1D8D5C();
      OUTLINED_FUNCTION_88();
      static _ProtoCommand.OneOf_Value.== infix(_:_:)();
      v13 = v12;
      sub_26A1D87EC();
      sub_26A1D87EC();
      sub_26A13440C();
      if ((v13 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_26A1D87EC();
LABEL_9:
    sub_26A13440C();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_37(v2 + v10, 1, v3);
  if (!v11)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_11:
  v14 = OUTLINED_FUNCTION_64_3();
  if (*(v1 + v15) == *(v0 + v15) && *(v1 + *(v14 + 24)) == *(v0 + *(v14 + 24)))
  {
    sub_26A424794();
    OUTLINED_FUNCTION_0_28();
    sub_26A1DDCA4();
    OUTLINED_FUNCTION_14_7();
  }

LABEL_14:
  OUTLINED_FUNCTION_75();
}

unint64_t sub_26A1DDCA4()
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

uint64_t sub_26A1DDD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DDDC4(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1DDE34(uint64_t a1, uint64_t a2)
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

uint64_t _ProtoCommand.ResponseGroup.decodeMessage<A>(decoder:)()
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
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoCommand.ResponseGroup.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_84_0();
  if (!v3 || (result = OUTLINED_FUNCTION_42_7(v1, v2, 1), !v0))
  {
    type metadata accessor for _ProtoCommand.ResponseGroup(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A1DE08C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DE10C(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1DE17C(uint64_t a1, uint64_t a2)
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

uint64_t sub_26A1DE1FC()
{
  result = MEMORY[0x26D65BA70](0xD000000000000011, 0x800000026A448490);
  qword_28036F498 = 0xD000000000000011;
  unk_28036F4A0 = 0x800000026A448410;
  return result;
}

void sub_26A1DE2AC()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26A424AC4();
  __swift_allocate_value_buffer(v8, v7);
  __swift_project_value_buffer(v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26A426410;
  v12 = v11 + v10 + v9[14];
  *(v11 + v10) = 1;
  *v12 = v5;
  *(v12 + 8) = v3;
  *(v12 + 16) = 2;
  v13 = *v1;
  sub_26A424A94();
  OUTLINED_FUNCTION_12();
  (*(v14 + 104))(v12, v13);
  sub_26A424AA4();
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoCommand.ChangeBackground.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A1DF194(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t _ProtoCommand.ChangeBackground.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoBackgroundElement(0), sub_26A1DDCA4(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
  {
    type metadata accessor for _ProtoCommand.ChangeBackground(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A1DE614(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DE694(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1DE704(uint64_t a1, uint64_t a2)
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

uint64_t sub_26A1DE7B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0xD000000000000011;
  *a5 = 0x800000026A448410;
  return result;
}

uint64_t sub_26A1DE83C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_246();
}

uint64_t sub_26A1DE88C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F4D0);
  __swift_project_value_buffer(v0, qword_28036F4D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "punch_out_uri";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundle_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "app_display_name";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoCommand.AppPunchout.decodeMessage<A>(decoder:)()
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

    if (result == 3 || result == 2 || result == 1)
    {
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoCommand.AppPunchout.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_84_0();
  if (!v3 || (result = OUTLINED_FUNCTION_42_7(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_84_0();
    if (!v7 || (result = OUTLINED_FUNCTION_42_7(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_84_0();
      if (!v10 || (result = OUTLINED_FUNCTION_42_7(v8, v9, 3), !v0))
      {
        type metadata accessor for _ProtoCommand.AppPunchout(0);
        return OUTLINED_FUNCTION_19_6();
      }
    }
  }

  return result;
}

uint64_t sub_26A1DEC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DECD4(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1DED44(uint64_t a1, uint64_t a2)
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

uint64_t sub_26A1DEDE0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F4E8);
  __swift_project_value_buffer(v0, qword_28036F4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "command";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_elements";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "idioms";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoActionElement.decodeMessage<A>(decoder:)()
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
        v12 = OUTLINED_FUNCTION_5_6();
        sub_26A1DF22C(v12, v13, v14, v15);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_6();
        sub_26A1DF194(v7, v8, v9, v10, v11);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A1DF0E0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_26A1DF0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoActionElement(0);
  type metadata accessor for _ProtoCommand(0);
  sub_26A1DDCA4();
  return sub_26A424944();
}

uint64_t sub_26A1DF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  OUTLINED_FUNCTION_157();
  sub_26A1DDCA4();
  return sub_26A424934();
}

uint64_t _ProtoActionElement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_87();
  result = sub_26A1DF3A0(v2, v3, v4, v5);
  if (!v0)
  {
    if (*(*v1 + 16))
    {
      type metadata accessor for _ProtoTextElement(0);
      sub_26A1DDCA4();
      OUTLINED_FUNCTION_48_8();
      sub_26A424A74();
    }

    if (*(v1[1] + 16))
    {
      sub_26A11EF50();
      OUTLINED_FUNCTION_48_8();
      sub_26A4249D4();
    }

    type metadata accessor for _ProtoActionElement(0);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A1DF3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for _ProtoCommand(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for _ProtoActionElement(0);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A1D8D5C();
  sub_26A1DDCA4();
  sub_26A424A84();
  return sub_26A1D87EC();
}

void static _ProtoActionElement.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for _ProtoCommand(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C870, &unk_26A425E20) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  type metadata accessor for _ProtoActionElement(0);
  v11 = *(v9 + 56);
  sub_26A1E05A8();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v0, 1, v5);
  if (!v12)
  {
    OUTLINED_FUNCTION_104();
    sub_26A1E05A8();
    OUTLINED_FUNCTION_37(v0 + v11, 1, v5);
    if (!v12)
    {
      sub_26A1D8D5C();
      static _ProtoCommand.== infix(_:_:)();
      v14 = v13;
      sub_26A1D87EC();
      sub_26A1D87EC();
      sub_26A13440C();
      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_26A1D87EC();
LABEL_9:
    sub_26A13440C();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_37(v0 + v11, 1, v5);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_11:
  sub_26A0D9294(*v4, *v2);
  if (v15 & 1) != 0 && (sub_26A0DB6A0(v4[1], v2[1]))
  {
    sub_26A424794();
    OUTLINED_FUNCTION_0_28();
    sub_26A1DDCA4();
    sub_26A424B64();
  }

LABEL_14:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1DF8AC(uint64_t (*a1)(void))
{
  sub_26A425504();
  a1(0);
  OUTLINED_FUNCTION_125();
  sub_26A1DDCA4();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1DFE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1DDCA4();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1DFF88(uint64_t a1)
{
  v2 = sub_26A1DDCA4();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1E0040(uint64_t a1, uint64_t a2)
{
  sub_26A1DDCA4();

  return sub_26A4249B4();
}

void sub_26A1E00E8(uint64_t a1)
{
  sub_26A1E035C(319, &qword_28036F5B8, type metadata accessor for _ProtoCommand.OneOf_Value, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A1E01AC(uint64_t a1)
{
  result = type metadata accessor for _ProtoCommand.ChangeBackground(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoCommand.ResponseGroup(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for _ProtoCommand.AppPunchout(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_26A1E02A8(uint64_t a1)
{
  sub_26A1E035C(319, &qword_28036F5F0, type metadata accessor for _ProtoBackgroundElement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A1E035C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A1E03E8(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26A1E0494(uint64_t a1)
{
  sub_26A1E035C(319, &qword_28036D480, type metadata accessor for _ProtoTextElement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A11FDC8();
    if (v2 <= 0x3F)
    {
      sub_26A424794();
      if (v3 <= 0x3F)
      {
        sub_26A1E035C(319, &qword_28036F608, type metadata accessor for _ProtoCommand, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26A1E05A8()
{
  OUTLINED_FUNCTION_45_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  v2 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  *(v0 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_28_6()
{
  v2 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t result)
{
  *v1 = result;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_26A1E05A8();
}

uint64_t OUTLINED_FUNCTION_42_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26A424A64();
}

uint64_t OUTLINED_FUNCTION_53_6()
{

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_67_4()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  type metadata accessor for _ProtoCommand.AppPunchout(0);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_76_3()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_79_6(uint64_t a1)
{

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A1E09C8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  v4 = v1;
  if (v5 <= 0x3F)
  {
    type metadata accessor for ProtoDescription.MessageProperty(255, v1, v2, v3);
    sub_26A424E44();
    v4 = sub_26A424D94();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_26A1E0A80(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26A1E0BD4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A1E0DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26A1E0E44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26A1E0E84(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_26A1E0EF4()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoControl_Switch(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoControl_Switch.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_99_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_24_14();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_99_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1098()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoControl_PlayerButton(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoControl_PlayerButton.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_95_2();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_95_2();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1254()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoFactItem_Standard(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoFactItem_Standard.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_94_2();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_94_2();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1410()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoFactItem_ShortNumber(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoFactItem_ShortNumber.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_92_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_22_10();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_92_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1768()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoFactItem_Button(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoFactItem_Button.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_88_5();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_88_5();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1924()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_Standard(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Standard.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_87_4();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_87_4();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1AE0()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_ShortNumber(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_ShortNumber.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_85_3();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_85_3();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1C9C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_Text(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Text.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_84_3();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_84_3();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E1E58()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_LargeText(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_LargeText.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_83_4();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_83_4();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E21D0()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_PairV2(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_PairV2.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_81_4();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_81_4();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E238C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_PairNumberV2(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_PairNumberV2.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_79_7();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_79_7();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2548()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_Button(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Button.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_78_4();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_78_4();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2704()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_Player(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Player.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_77_2();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_77_2();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E28C0()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_SwitchV2(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_SwitchV2.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_76_4();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_76_4();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2A7C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSystemText_ClarificationTitle(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSystemText_ClarificationTitle.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_75_4();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_75_4();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2DF4()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSimpleItem_Rich(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSimpleItem_Rich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_72_3();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_72_3();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E2FB0()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSimpleItem_ReverseRich(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSimpleItem_ReverseRich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_70_3();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_70_3();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E316C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSimpleItem_Visual(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSimpleItem_Visual.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_68_2();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_68_2();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E34E4()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSimpleItem_RichSearchResult(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSimpleItem_RichSearchResult.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_64_4();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_64_4();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E36A0()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoPrimaryHeader_Standard(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoPrimaryHeader_Standard.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_61_5();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_61_5();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E385C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoPrimaryHeader_Marquee(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoPrimaryHeader_Marquee.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_59_8();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_59_8();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E3A18()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoPrimaryHeader_Rich(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoPrimaryHeader_Rich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_57_6();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_57_6();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E3BD4()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSecondaryHeader_Standard(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSecondaryHeader_Standard.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_55_5();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_55_5();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E3D90()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSecondaryHeader_Emphasized(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSecondaryHeader_Emphasized.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_53_7();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_53_7();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E3F4C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSectionHeader_Standard(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSectionHeader_Standard.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_51_6();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_51_6();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E4108()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSectionHeader_Rich(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSectionHeader_Rich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_50_5();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_50_5();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E42C4()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoBinaryButton(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoBinaryButton.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_49_9();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_49_9();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E4480()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoReference_Standard(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoReference_Standard.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_48_9();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_48_9();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E463C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoReference_Logo(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoReference_Logo.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_47_5();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_47_5();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E47F8()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoReference_Rich(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoReference_Rich.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_46_5();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_46_5();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E49B4()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoReference_Button(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoReference_Button.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_45_5();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_45_5();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E4D2C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoStatusIndicator_Error(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A1F33A8(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_43_6();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_43_6();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E4EE8()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoStatusIndicator_InProgress(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A156AB0(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_110_1();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_110_1();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E50A4()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoStatusIndicator_Cancelled(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A380EA0(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_109_2();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_109_2();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5260()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoControl_Slider(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoControl_Slider.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_108_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_108_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E541C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoTable(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoTable.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_107_2();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_107_2();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E55D8()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoVisualization_Chart(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoVisualization_Chart.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_106_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_106_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5794()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoVisualization_Image(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoVisualization_Image.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_105_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_105_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5950()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoVisualization_Map(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoVisualization_Map.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_104_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_104_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5B68()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoIntentsUI_Standard(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    sub_26A2B3BB8();
    sub_26A4247C4();
    OUTLINED_FUNCTION_102_2();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_102_2();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5D24()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSash_Standard(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSash_Standard.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_101_2();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_101_2();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E5EE0()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoHeroHeader(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    HeroHeader.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_100_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_100_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E60F8()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v15 = v0;
  v4 = v3;
  v16 = sub_26A4247D4();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v14 - v12;
  sub_26A4247C4();
  v2(0);
  OUTLINED_FUNCTION_136_2();
  sub_26A424954();
  if ((v4 & 1) == 0)
  {
    v13 = v10;
  }

  (*(v6 + 8))(v13, v16);
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6290()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoTertiaryHeader_Standard(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoTertiaryHeader_Standard.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_98_1();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_98_1();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E644C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_Switch(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Switch.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_97_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_97_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6608()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_Pair(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_Pair.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_96_0();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_96_0();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E68D8()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoResponse.Section(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    sub_26A31C07C();
    sub_26A4247C4();
    OUTLINED_FUNCTION_19_12();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_19_12();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6A94()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSummaryItem_PairNumber(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoSummaryItem_PairNumber.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_93_1();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_93_1();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6C50()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoStandardPlayerButton(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A2917A8(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_91_3();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_91_3();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E6E0C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    HorizontalListStandard.Item.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_89_2();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_89_2();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E72F4()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_121_0();
  type metadata accessor for _ProtoTextElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_20();
  if (v3)
  {
    sub_26A1EDE38();
    v12 = *(v2 + 16);
    if (v12 != 255)
    {
      sub_26A0D6768(*v2, *(v2 + 8), *(v2 + 16));
      *v2 = xmmword_26A42D990;
      *(v2 + 16) = v12 & 1;
    }

    sub_26A4247C4();
    OUTLINED_FUNCTION_80_3();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_133_2();
    sub_26A424954();
    if (!v1)
    {
      OUTLINED_FUNCTION_132_2();
    }

    v13 = OUTLINED_FUNCTION_12_12();
    v14(v13);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_80_3();
    sub_26A1EDD4C();
    sub_26A424954();
    if (!v1)
    {
      OUTLINED_FUNCTION_132_2();
    }

    (*(v5 + 8))(v9, v0);
  }

  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E7538()
{
  OUTLINED_FUNCTION_40_5();
  v4 = v3;
  v19 = sub_26A4247D4();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_121_0();
  v12 = type metadata accessor for ImageElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v16 = (v15 - v14);
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_20();
  if (v4)
  {
    sub_26A1EDE38();
    if (qword_28036C790 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_2803A8980);
    sub_26A1EDE38();
    v18 = *v16;

    OUTLINED_FUNCTION_23_16();
    sub_26A1EDDE4();

    *v2 = v18;
    sub_26A4247C4();
    OUTLINED_FUNCTION_73_4();
    sub_26A1EDD4C();
    OUTLINED_FUNCTION_133_2();
    sub_26A424954();
    if (!v0)
    {
      OUTLINED_FUNCTION_132_2();
    }

    (*(v6 + 8))(v1, v19);
    OUTLINED_FUNCTION_23_16();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_73_4();
    sub_26A1EDD4C();
    sub_26A424954();
    if (!v0)
    {
      OUTLINED_FUNCTION_132_2();
    }

    (*(v6 + 8))(v10, v19);
  }

  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E781C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoPlayerButton(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoPlayerButton.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_71_3();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_71_3();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E79D8()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoActionElement(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _s10SnippetKit13ActionElementV13redactedProtoAA01_fcD0Vvg_0();
    sub_26A4247C4();
    OUTLINED_FUNCTION_69_4();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_69_4();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E7B94()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoCustomElement(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _s10SnippetKit13CustomElementV13redactedProtoAA01_fcD0Vvg_0(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_67_5();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_67_5();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E7D50()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoResponse.Group(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A3C1E64(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_65_5();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_65_5();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E7F68()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoCoreChartElement(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    CoreChartElement.redactedProto.getter(v6);
    sub_26A4247C4();
    OUTLINED_FUNCTION_62_6();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_62_6();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E8124()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoBackgroundElement(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    BackgroundElement.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_60_6();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_60_6();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E82E0()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoPlayer(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    Player.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_58_7();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_58_7();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E849C()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoSlider(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    _ProtoSlider.redactedProto.getter(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_56_5();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_56_5();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E8658()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoResponse(v5);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_20();
  if (v2)
  {
    sub_26A3D26D8(v1);
    sub_26A4247C4();
    OUTLINED_FUNCTION_54_7();
    v7 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v7);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_21();
    }

    v9(v8);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_54_7();
    v10 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v10);
    if (v0)
    {
      v11 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_20();
    }

    v12(v11);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

void sub_26A1E8814()
{
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_29();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_9_15();
  type metadata accessor for _ProtoTable.Row(v4);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_20();
  if (v1)
  {
    _ProtoTable.Row.redactedProto.getter();
    sub_26A4247C4();
    OUTLINED_FUNCTION_52_6();
    v6 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_15_14(v6);
    if (v0)
    {
      v7 = OUTLINED_FUNCTION_13_12();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_21();
    }

    v8(v7);
    OUTLINED_FUNCTION_29_8();
    sub_26A1EDDE4();
  }

  else
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_52_6();
    v9 = sub_26A1EDD4C();
    OUTLINED_FUNCTION_21_11(v9);
    if (v0)
    {
      v10 = OUTLINED_FUNCTION_12_12();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_4_20();
    }

    v11(v10);
  }

  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_41_5();
}

unint64_t sub_26A1E89D0(int a1)
{
  v787 = a1;
  v1 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v4 = OUTLINED_FUNCTION_35(v3);
  v5 = type metadata accessor for _ProtoSummaryItem_PairNumber(v4);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v8 = OUTLINED_FUNCTION_35(v7);
  v9 = type metadata accessor for _ProtoSummaryItem_Pair(v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v12 = OUTLINED_FUNCTION_35(v11);
  v13 = type metadata accessor for TertiaryHeaderStandard(v12);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v16 = OUTLINED_FUNCTION_35(v15);
  v17 = type metadata accessor for _ProtoTertiaryHeader_Standard(v16);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v20 = OUTLINED_FUNCTION_35(v19);
  v21 = type metadata accessor for KeyValueStandard(v20);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v24 = OUTLINED_FUNCTION_35(v23);
  v25 = type metadata accessor for _ProtoKeyValue_Standard(v24);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v28 = OUTLINED_FUNCTION_35(v27);
  v29 = type metadata accessor for HorizontalListStandard(v28);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v32 = OUTLINED_FUNCTION_35(v31);
  v33 = type metadata accessor for _ProtoHorizontalList_Standard(v32);
  v34 = OUTLINED_FUNCTION_41(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v36 = OUTLINED_FUNCTION_35(v35);
  v37 = type metadata accessor for HeroHeader(v36);
  v38 = OUTLINED_FUNCTION_41(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_11();
  v40 = OUTLINED_FUNCTION_35(v39);
  v41 = type metadata accessor for _ProtoHeroHeader(v40);
  v42 = OUTLINED_FUNCTION_41(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_11();
  v44 = OUTLINED_FUNCTION_35(v43);
  v45 = type metadata accessor for SashStandard(v44);
  v46 = OUTLINED_FUNCTION_41(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_11();
  v48 = OUTLINED_FUNCTION_35(v47);
  v49 = type metadata accessor for _ProtoSash_Standard(v48);
  v50 = OUTLINED_FUNCTION_41(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v51);
  v770 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFA0, &qword_26A426BC8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_42();
  v54 = OUTLINED_FUNCTION_35(v53);
  v55 = type metadata accessor for IntentsUIStandard(v54);
  v56 = OUTLINED_FUNCTION_41(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17();
  v784 = v57 - v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_48();
  v62 = OUTLINED_FUNCTION_35(v61);
  v63 = type metadata accessor for _ProtoIntentsUI_Standard(v62);
  v64 = OUTLINED_FUNCTION_41(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_11();
  v66 = OUTLINED_FUNCTION_35(v65);
  v67 = type metadata accessor for ButtonContainer(v66);
  v68 = OUTLINED_FUNCTION_41(v67);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_11();
  v70 = OUTLINED_FUNCTION_35(v69);
  v71 = type metadata accessor for _ProtoButton_Container(v70);
  v72 = OUTLINED_FUNCTION_41(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_11();
  v74 = OUTLINED_FUNCTION_35(v73);
  v75 = type metadata accessor for VisualizationMap(v74);
  v76 = OUTLINED_FUNCTION_41(v75);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_11();
  v78 = OUTLINED_FUNCTION_35(v77);
  v79 = type metadata accessor for _ProtoVisualization_Map(v78);
  v80 = OUTLINED_FUNCTION_41(v79);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_11();
  v82 = OUTLINED_FUNCTION_35(v81);
  v83 = type metadata accessor for VisualizationImage(v82);
  v84 = OUTLINED_FUNCTION_41(v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_11();
  v86 = OUTLINED_FUNCTION_35(v85);
  v87 = type metadata accessor for _ProtoVisualization_Image(v86);
  v88 = OUTLINED_FUNCTION_41(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_11();
  v90 = OUTLINED_FUNCTION_35(v89);
  v91 = type metadata accessor for VisualizationChart(v90);
  v92 = OUTLINED_FUNCTION_41(v91);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_11();
  v94 = OUTLINED_FUNCTION_35(v93);
  v95 = type metadata accessor for _ProtoVisualization_Chart(v94);
  v96 = OUTLINED_FUNCTION_41(v95);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_11();
  v98 = OUTLINED_FUNCTION_35(v97);
  v99 = type metadata accessor for LongItemText(v98);
  v100 = OUTLINED_FUNCTION_41(v99);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_11();
  v102 = OUTLINED_FUNCTION_35(v101);
  v103 = type metadata accessor for _ProtoLongItem_Text(v102);
  v104 = OUTLINED_FUNCTION_41(v103);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  OUTLINED_FUNCTION_41(v106);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_42();
  v782 = v108;
  v781 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_42();
  v783 = v110;
  v111 = type metadata accessor for Table(0);
  v112 = OUTLINED_FUNCTION_41(v111);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_17();
  v780 = v113 - v114;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_48();
  v118 = OUTLINED_FUNCTION_35(v117);
  v119 = type metadata accessor for _ProtoTable(v118);
  v120 = OUTLINED_FUNCTION_41(v119);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_11();
  v122 = OUTLINED_FUNCTION_35(v121);
  v123 = type metadata accessor for ControlPlayerButton(v122);
  v124 = OUTLINED_FUNCTION_41(v123);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_11();
  v126 = OUTLINED_FUNCTION_35(v125);
  v127 = type metadata accessor for _ProtoControl_PlayerButton(v126);
  v128 = OUTLINED_FUNCTION_41(v127);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_11();
  v130 = OUTLINED_FUNCTION_35(v129);
  v131 = type metadata accessor for ControlSlider(v130);
  v132 = OUTLINED_FUNCTION_41(v131);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_11();
  v134 = OUTLINED_FUNCTION_35(v133);
  v135 = type metadata accessor for _ProtoControl_Slider(v134);
  v136 = OUTLINED_FUNCTION_41(v135);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_11();
  v138 = OUTLINED_FUNCTION_35(v137);
  v139 = type metadata accessor for TextInput(v138);
  v140 = OUTLINED_FUNCTION_41(v139);
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_11();
  v142 = OUTLINED_FUNCTION_35(v141);
  v143 = type metadata accessor for _ProtoTextInput(v142);
  v144 = OUTLINED_FUNCTION_41(v143);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_11();
  v146 = OUTLINED_FUNCTION_35(v145);
  v147 = type metadata accessor for SystemTextClarificationTitle(v146);
  v148 = OUTLINED_FUNCTION_41(v147);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_11();
  v150 = OUTLINED_FUNCTION_35(v149);
  v151 = type metadata accessor for _ProtoSystemText_ClarificationTitle(v150);
  v152 = OUTLINED_FUNCTION_41(v151);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v153);
  v769 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF88, &qword_26A42DA20);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_42();
  v156 = OUTLINED_FUNCTION_35(v155);
  v157 = type metadata accessor for StatusIndicatorCancelled(v156);
  v158 = OUTLINED_FUNCTION_41(v157);
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_17();
  v779 = v159 - v160;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_48();
  v164 = OUTLINED_FUNCTION_35(v163);
  v165 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v164);
  v166 = OUTLINED_FUNCTION_41(v165);
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v167);
  v768 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD8, &unk_26A426C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_42();
  v170 = OUTLINED_FUNCTION_35(v169);
  v171 = type metadata accessor for StatusIndicatorInProgress(v170);
  v172 = OUTLINED_FUNCTION_41(v171);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_17();
  v778 = v173 - v174;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_48();
  v178 = OUTLINED_FUNCTION_35(v177);
  v179 = type metadata accessor for _ProtoStatusIndicator_InProgress(v178);
  v180 = OUTLINED_FUNCTION_41(v179);
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v181);
  v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF80, &unk_26A426B30);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_42();
  v184 = OUTLINED_FUNCTION_35(v183);
  v185 = type metadata accessor for StatusIndicatorError(v184);
  v186 = OUTLINED_FUNCTION_41(v185);
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_17();
  v776 = v187 - v188;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_48();
  v192 = OUTLINED_FUNCTION_35(v191);
  v193 = type metadata accessor for _ProtoStatusIndicator_Error(v192);
  v194 = OUTLINED_FUNCTION_41(v193);
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v195);
  v775 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF78, &qword_26A4354C0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_42();
  v777 = v197;
  v198 = type metadata accessor for StatusIndicatorSuccess(0);
  v199 = OUTLINED_FUNCTION_41(v198);
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_48();
  v203 = OUTLINED_FUNCTION_35(v202);
  v204 = type metadata accessor for _ProtoStatusIndicator_Success(v203);
  v205 = OUTLINED_FUNCTION_41(v204);
  MEMORY[0x28223BE20](v205);
  OUTLINED_FUNCTION_11();
  v207 = OUTLINED_FUNCTION_35(v206);
  v208 = type metadata accessor for ReferenceFootnote(v207);
  v209 = OUTLINED_FUNCTION_41(v208);
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_11();
  v211 = OUTLINED_FUNCTION_35(v210);
  v212 = type metadata accessor for _ProtoReference_Footnote(v211);
  v213 = OUTLINED_FUNCTION_41(v212);
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v214);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v215);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v216);
  OUTLINED_FUNCTION_42();
  v785 = v217;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v218);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_42();
  v786 = v220;
  v772 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF70, &unk_26A426B20);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_42();
  v774 = v222;
  v223 = type metadata accessor for ReferenceButton(0);
  v224 = OUTLINED_FUNCTION_41(v223);
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v225);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v226);
  OUTLINED_FUNCTION_48();
  v228 = OUTLINED_FUNCTION_35(v227);
  v229 = type metadata accessor for _ProtoReference_Button(v228);
  v230 = OUTLINED_FUNCTION_41(v229);
  MEMORY[0x28223BE20](v230);
  OUTLINED_FUNCTION_11();
  v232 = OUTLINED_FUNCTION_35(v231);
  v233 = type metadata accessor for ReferenceRich(v232);
  v234 = OUTLINED_FUNCTION_41(v233);
  MEMORY[0x28223BE20](v234);
  OUTLINED_FUNCTION_11();
  v236 = OUTLINED_FUNCTION_35(v235);
  v237 = type metadata accessor for _ProtoReference_Rich(v236);
  v238 = OUTLINED_FUNCTION_41(v237);
  MEMORY[0x28223BE20](v238);
  OUTLINED_FUNCTION_11();
  v240 = OUTLINED_FUNCTION_35(v239);
  v241 = type metadata accessor for ReferenceLogo(v240);
  v242 = OUTLINED_FUNCTION_41(v241);
  MEMORY[0x28223BE20](v242);
  OUTLINED_FUNCTION_11();
  v244 = OUTLINED_FUNCTION_35(v243);
  v245 = type metadata accessor for _ProtoReference_Logo(v244);
  v246 = OUTLINED_FUNCTION_41(v245);
  MEMORY[0x28223BE20](v246);
  OUTLINED_FUNCTION_11();
  v248 = OUTLINED_FUNCTION_35(v247);
  v249 = type metadata accessor for ReferenceStandard(v248);
  v250 = OUTLINED_FUNCTION_41(v249);
  MEMORY[0x28223BE20](v250);
  OUTLINED_FUNCTION_11();
  v252 = OUTLINED_FUNCTION_35(v251);
  v253 = type metadata accessor for _ProtoReference_Standard(v252);
  v254 = OUTLINED_FUNCTION_41(v253);
  MEMORY[0x28223BE20](v254);
  OUTLINED_FUNCTION_11();
  v256 = OUTLINED_FUNCTION_35(v255);
  v257 = type metadata accessor for BinaryButton(v256);
  v258 = OUTLINED_FUNCTION_41(v257);
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_11();
  v260 = OUTLINED_FUNCTION_35(v259);
  v261 = type metadata accessor for _ProtoBinaryButton(v260);
  v262 = OUTLINED_FUNCTION_41(v261);
  MEMORY[0x28223BE20](v262);
  OUTLINED_FUNCTION_11();
  v264 = OUTLINED_FUNCTION_35(v263);
  v265 = type metadata accessor for Button(v264);
  v266 = OUTLINED_FUNCTION_41(v265);
  MEMORY[0x28223BE20](v266);
  OUTLINED_FUNCTION_11();
  v268 = OUTLINED_FUNCTION_35(v267);
  v269 = type metadata accessor for _ProtoButton(v268);
  v270 = OUTLINED_FUNCTION_41(v269);
  MEMORY[0x28223BE20](v270);
  OUTLINED_FUNCTION_11();
  v272 = OUTLINED_FUNCTION_35(v271);
  v273 = type metadata accessor for SectionHeaderRich(v272);
  v274 = OUTLINED_FUNCTION_41(v273);
  MEMORY[0x28223BE20](v274);
  OUTLINED_FUNCTION_11();
  v276 = OUTLINED_FUNCTION_35(v275);
  v277 = type metadata accessor for _ProtoSectionHeader_Rich(v276);
  v278 = OUTLINED_FUNCTION_41(v277);
  MEMORY[0x28223BE20](v278);
  OUTLINED_FUNCTION_11();
  v280 = OUTLINED_FUNCTION_35(v279);
  v281 = type metadata accessor for SectionHeaderStandard(v280);
  v282 = OUTLINED_FUNCTION_41(v281);
  MEMORY[0x28223BE20](v282);
  OUTLINED_FUNCTION_11();
  v284 = OUTLINED_FUNCTION_35(v283);
  v285 = type metadata accessor for _ProtoSectionHeader_Standard(v284);
  v286 = OUTLINED_FUNCTION_41(v285);
  MEMORY[0x28223BE20](v286);
  OUTLINED_FUNCTION_11();
  v288 = OUTLINED_FUNCTION_35(v287);
  v289 = type metadata accessor for SecondaryHeaderEmphasized(v288);
  v290 = OUTLINED_FUNCTION_41(v289);
  MEMORY[0x28223BE20](v290);
  OUTLINED_FUNCTION_11();
  v292 = OUTLINED_FUNCTION_35(v291);
  v293 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v292);
  v294 = OUTLINED_FUNCTION_41(v293);
  MEMORY[0x28223BE20](v294);
  OUTLINED_FUNCTION_11();
  v296 = OUTLINED_FUNCTION_35(v295);
  v297 = type metadata accessor for SecondaryHeaderStandard(v296);
  v298 = OUTLINED_FUNCTION_41(v297);
  MEMORY[0x28223BE20](v298);
  OUTLINED_FUNCTION_11();
  v300 = OUTLINED_FUNCTION_35(v299);
  v301 = type metadata accessor for _ProtoSecondaryHeader_Standard(v300);
  v302 = OUTLINED_FUNCTION_41(v301);
  MEMORY[0x28223BE20](v302);
  OUTLINED_FUNCTION_11();
  v304 = OUTLINED_FUNCTION_35(v303);
  v305 = type metadata accessor for PrimaryHeaderRich(v304);
  v306 = OUTLINED_FUNCTION_41(v305);
  MEMORY[0x28223BE20](v306);
  OUTLINED_FUNCTION_11();
  v308 = OUTLINED_FUNCTION_35(v307);
  v309 = type metadata accessor for _ProtoPrimaryHeader_Rich(v308);
  v310 = OUTLINED_FUNCTION_41(v309);
  MEMORY[0x28223BE20](v310);
  OUTLINED_FUNCTION_11();
  v312 = OUTLINED_FUNCTION_35(v311);
  v313 = type metadata accessor for PrimaryHeaderMarquee(v312);
  v314 = OUTLINED_FUNCTION_41(v313);
  MEMORY[0x28223BE20](v314);
  OUTLINED_FUNCTION_11();
  v316 = OUTLINED_FUNCTION_35(v315);
  v317 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v316);
  v318 = OUTLINED_FUNCTION_41(v317);
  MEMORY[0x28223BE20](v318);
  OUTLINED_FUNCTION_11();
  v320 = OUTLINED_FUNCTION_35(v319);
  v321 = type metadata accessor for PrimaryHeaderStandard(v320);
  v322 = OUTLINED_FUNCTION_41(v321);
  MEMORY[0x28223BE20](v322);
  OUTLINED_FUNCTION_11();
  v324 = OUTLINED_FUNCTION_35(v323);
  v325 = type metadata accessor for _ProtoPrimaryHeader_Standard(v324);
  v326 = OUTLINED_FUNCTION_41(v325);
  MEMORY[0x28223BE20](v326);
  OUTLINED_FUNCTION_11();
  v328 = OUTLINED_FUNCTION_35(v327);
  v329 = type metadata accessor for SimpleItemRichSearchResult(v328);
  v330 = OUTLINED_FUNCTION_41(v329);
  MEMORY[0x28223BE20](v330);
  OUTLINED_FUNCTION_11();
  v332 = OUTLINED_FUNCTION_35(v331);
  v333 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v332);
  v334 = OUTLINED_FUNCTION_41(v333);
  MEMORY[0x28223BE20](v334);
  OUTLINED_FUNCTION_11();
  v336 = OUTLINED_FUNCTION_35(v335);
  v337 = type metadata accessor for SimpleItemPlayer(v336);
  v338 = OUTLINED_FUNCTION_41(v337);
  MEMORY[0x28223BE20](v338);
  OUTLINED_FUNCTION_11();
  v340 = OUTLINED_FUNCTION_35(v339);
  v341 = type metadata accessor for _ProtoSimpleItem_Player(v340);
  v342 = OUTLINED_FUNCTION_41(v341);
  MEMORY[0x28223BE20](v342);
  OUTLINED_FUNCTION_11();
  v344 = OUTLINED_FUNCTION_35(v343);
  v345 = type metadata accessor for SimpleItemVisual(v344);
  v346 = OUTLINED_FUNCTION_41(v345);
  MEMORY[0x28223BE20](v346);
  OUTLINED_FUNCTION_11();
  v348 = OUTLINED_FUNCTION_35(v347);
  v349 = type metadata accessor for _ProtoSimpleItem_Visual(v348);
  v350 = OUTLINED_FUNCTION_41(v349);
  MEMORY[0x28223BE20](v350);
  OUTLINED_FUNCTION_11();
  v352 = OUTLINED_FUNCTION_35(v351);
  v353 = type metadata accessor for SimpleItemReverseRich(v352);
  v354 = OUTLINED_FUNCTION_41(v353);
  MEMORY[0x28223BE20](v354);
  OUTLINED_FUNCTION_11();
  v356 = OUTLINED_FUNCTION_35(v355);
  v357 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v356);
  v358 = OUTLINED_FUNCTION_41(v357);
  MEMORY[0x28223BE20](v358);
  OUTLINED_FUNCTION_11();
  v360 = OUTLINED_FUNCTION_35(v359);
  v361 = type metadata accessor for SimpleItemRich(v360);
  v362 = OUTLINED_FUNCTION_41(v361);
  MEMORY[0x28223BE20](v362);
  OUTLINED_FUNCTION_11();
  v364 = OUTLINED_FUNCTION_35(v363);
  v365 = type metadata accessor for _ProtoSimpleItem_Rich(v364);
  v366 = OUTLINED_FUNCTION_41(v365);
  MEMORY[0x28223BE20](v366);
  OUTLINED_FUNCTION_11();
  v368 = OUTLINED_FUNCTION_35(v367);
  v369 = type metadata accessor for SimpleItemStandard(v368);
  v370 = OUTLINED_FUNCTION_41(v369);
  MEMORY[0x28223BE20](v370);
  OUTLINED_FUNCTION_11();
  v372 = OUTLINED_FUNCTION_35(v371);
  v373 = type metadata accessor for _ProtoSimpleItem_Standard(v372);
  v374 = OUTLINED_FUNCTION_41(v373);
  MEMORY[0x28223BE20](v374);
  OUTLINED_FUNCTION_11();
  v376 = OUTLINED_FUNCTION_35(v375);
  v377 = type metadata accessor for SummaryItemSwitchV2(v376);
  v378 = OUTLINED_FUNCTION_41(v377);
  MEMORY[0x28223BE20](v378);
  OUTLINED_FUNCTION_11();
  v380 = OUTLINED_FUNCTION_35(v379);
  v381 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v380);
  v382 = OUTLINED_FUNCTION_41(v381);
  MEMORY[0x28223BE20](v382);
  OUTLINED_FUNCTION_11();
  v384 = OUTLINED_FUNCTION_35(v383);
  v385 = type metadata accessor for SummaryItemPlayer(v384);
  v386 = OUTLINED_FUNCTION_41(v385);
  MEMORY[0x28223BE20](v386);
  OUTLINED_FUNCTION_11();
  v388 = OUTLINED_FUNCTION_35(v387);
  v389 = type metadata accessor for _ProtoSummaryItem_Player(v388);
  v390 = OUTLINED_FUNCTION_41(v389);
  MEMORY[0x28223BE20](v390);
  OUTLINED_FUNCTION_11();
  v392 = OUTLINED_FUNCTION_35(v391);
  v393 = type metadata accessor for SummaryItemButton(v392);
  v394 = OUTLINED_FUNCTION_41(v393);
  MEMORY[0x28223BE20](v394);
  OUTLINED_FUNCTION_11();
  v396 = OUTLINED_FUNCTION_35(v395);
  v397 = type metadata accessor for _ProtoSummaryItem_Button(v396);
  v398 = OUTLINED_FUNCTION_41(v397);
  MEMORY[0x28223BE20](v398);
  OUTLINED_FUNCTION_11();
  v400 = OUTLINED_FUNCTION_35(v399);
  v401 = type metadata accessor for SummaryItemPairNumberV2(v400);
  v402 = OUTLINED_FUNCTION_41(v401);
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_11();
  v404 = OUTLINED_FUNCTION_35(v403);
  v405 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v404);
  v406 = OUTLINED_FUNCTION_41(v405);
  MEMORY[0x28223BE20](v406);
  OUTLINED_FUNCTION_11();
  v408 = OUTLINED_FUNCTION_35(v407);
  v409 = type metadata accessor for SummaryItemPairV2(v408);
  v410 = OUTLINED_FUNCTION_41(v409);
  MEMORY[0x28223BE20](v410);
  OUTLINED_FUNCTION_11();
  v412 = OUTLINED_FUNCTION_35(v411);
  v413 = type metadata accessor for _ProtoSummaryItem_PairV2(v412);
  v414 = OUTLINED_FUNCTION_41(v413);
  MEMORY[0x28223BE20](v414);
  OUTLINED_FUNCTION_11();
  v416 = OUTLINED_FUNCTION_35(v415);
  v417 = type metadata accessor for SummaryItemDetailedText(v416);
  v418 = OUTLINED_FUNCTION_41(v417);
  MEMORY[0x28223BE20](v418);
  OUTLINED_FUNCTION_11();
  v420 = OUTLINED_FUNCTION_35(v419);
  v421 = type metadata accessor for _ProtoSummaryItem_DetailedText(v420);
  v422 = OUTLINED_FUNCTION_41(v421);
  MEMORY[0x28223BE20](v422);
  OUTLINED_FUNCTION_11();
  v424 = OUTLINED_FUNCTION_35(v423);
  v425 = type metadata accessor for SummaryItemLargeText(v424);
  v426 = OUTLINED_FUNCTION_41(v425);
  MEMORY[0x28223BE20](v426);
  OUTLINED_FUNCTION_11();
  v428 = OUTLINED_FUNCTION_35(v427);
  v429 = type metadata accessor for _ProtoSummaryItem_LargeText(v428);
  v430 = OUTLINED_FUNCTION_41(v429);
  MEMORY[0x28223BE20](v430);
  OUTLINED_FUNCTION_11();
  v432 = OUTLINED_FUNCTION_35(v431);
  v433 = type metadata accessor for SummaryItemText(v432);
  v434 = OUTLINED_FUNCTION_41(v433);
  MEMORY[0x28223BE20](v434);
  OUTLINED_FUNCTION_11();
  v436 = OUTLINED_FUNCTION_35(v435);
  v437 = type metadata accessor for _ProtoSummaryItem_Text(v436);
  v438 = OUTLINED_FUNCTION_41(v437);
  MEMORY[0x28223BE20](v438);
  OUTLINED_FUNCTION_11();
  v440 = OUTLINED_FUNCTION_35(v439);
  v441 = type metadata accessor for SummaryItemShortNumber(v440);
  v442 = OUTLINED_FUNCTION_41(v441);
  MEMORY[0x28223BE20](v442);
  OUTLINED_FUNCTION_11();
  v444 = OUTLINED_FUNCTION_35(v443);
  v445 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v444);
  v446 = OUTLINED_FUNCTION_41(v445);
  MEMORY[0x28223BE20](v446);
  OUTLINED_FUNCTION_11();
  v448 = OUTLINED_FUNCTION_35(v447);
  v449 = type metadata accessor for SummaryItemStandard(v448);
  v450 = OUTLINED_FUNCTION_41(v449);
  MEMORY[0x28223BE20](v450);
  OUTLINED_FUNCTION_11();
  v452 = OUTLINED_FUNCTION_35(v451);
  v453 = type metadata accessor for _ProtoSummaryItem_Standard(v452);
  v454 = OUTLINED_FUNCTION_41(v453);
  MEMORY[0x28223BE20](v454);
  OUTLINED_FUNCTION_11();
  v456 = OUTLINED_FUNCTION_35(v455);
  v457 = type metadata accessor for FactItemButton(v456);
  v458 = OUTLINED_FUNCTION_41(v457);
  MEMORY[0x28223BE20](v458);
  OUTLINED_FUNCTION_11();
  v460 = OUTLINED_FUNCTION_35(v459);
  v461 = type metadata accessor for _ProtoFactItem_Button(v460);
  v462 = OUTLINED_FUNCTION_41(v461);
  MEMORY[0x28223BE20](v462);
  OUTLINED_FUNCTION_11();
  v464 = OUTLINED_FUNCTION_35(v463);
  v465 = type metadata accessor for FactItemHeroNumber(v464);
  v466 = OUTLINED_FUNCTION_41(v465);
  MEMORY[0x28223BE20](v466);
  OUTLINED_FUNCTION_11();
  v468 = OUTLINED_FUNCTION_35(v467);
  v469 = type metadata accessor for _ProtoFactItem_HeroNumber(v468);
  v470 = OUTLINED_FUNCTION_41(v469);
  MEMORY[0x28223BE20](v470);
  OUTLINED_FUNCTION_11();
  v472 = OUTLINED_FUNCTION_35(v471);
  v473 = type metadata accessor for FactItemShortNumber(v472);
  v474 = OUTLINED_FUNCTION_41(v473);
  MEMORY[0x28223BE20](v474);
  OUTLINED_FUNCTION_18();
  v475 = type metadata accessor for _ProtoFactItem_ShortNumber(0);
  v476 = OUTLINED_FUNCTION_41(v475);
  MEMORY[0x28223BE20](v476);
  OUTLINED_FUNCTION_1_20();
  v477 = type metadata accessor for FactItemStandard(0);
  v478 = OUTLINED_FUNCTION_41(v477);
  MEMORY[0x28223BE20](v478);
  OUTLINED_FUNCTION_18();
  v479 = type metadata accessor for _ProtoFactItem_Standard(0);
  v480 = OUTLINED_FUNCTION_41(v479);
  MEMORY[0x28223BE20](v480);
  OUTLINED_FUNCTION_18();
  v483 = v482 - v481;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_41(v484);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v485);
  OUTLINED_FUNCTION_42();
  v487 = OUTLINED_FUNCTION_35(v486);
  v488 = type metadata accessor for CustomCanvas(v487);
  v489 = OUTLINED_FUNCTION_41(v488);
  MEMORY[0x28223BE20](v489);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v490);
  OUTLINED_FUNCTION_48();
  v492 = OUTLINED_FUNCTION_35(v491);
  v493 = type metadata accessor for _ProtoCustomCanvas(v492);
  v494 = OUTLINED_FUNCTION_41(v493);
  MEMORY[0x28223BE20](v494);
  OUTLINED_FUNCTION_11();
  v496 = OUTLINED_FUNCTION_35(v495);
  v497 = type metadata accessor for ControlSwitch(v496);
  v498 = OUTLINED_FUNCTION_41(v497);
  MEMORY[0x28223BE20](v498);
  OUTLINED_FUNCTION_18();
  v499 = type metadata accessor for _ProtoControl_Switch(0);
  v500 = OUTLINED_FUNCTION_41(v499);
  MEMORY[0x28223BE20](v500);
  OUTLINED_FUNCTION_18();
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v501);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v502);
  v504 = &v761 - v503;
  sub_26A10FD9C();
  v505 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v504, 1, v505) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v504 = 0x676E697373696D3CLL;
    v506 = sub_26A424AE4();
    __swift_project_value_buffer(v506, qword_2803A8950);
    v507 = sub_26A424AD4();
    v508 = sub_26A424E04();
    if (os_log_type_enabled(v507, v508))
    {
      v509 = swift_slowAlloc();
      *v509 = 0;
      _os_log_impl(&dword_26A0B8000, v507, v508, "Expected a Component value, but found none!", v509, 2u);
      MEMORY[0x26D65C950](v509, -1, -1);
    }
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A1EDD90();
        OUTLINED_FUNCTION_117_2();
        sub_26A1EDE38();
        v571 = OUTLINED_FUNCTION_36_7();
        FactItemStandard.description(redacted:)(v571);
        OUTLINED_FUNCTION_34_7();
        sub_26A1EDDE4();
        goto LABEL_75;
      case 2u:
        sub_26A1EDD90();
        OUTLINED_FUNCTION_122_2();
        sub_26A1EDE38();
        v567 = OUTLINED_FUNCTION_36_7();
        FactItemShortNumber.description(redacted:)(v567);
        OUTLINED_FUNCTION_34_7();
        sub_26A1EDDE4();
        OUTLINED_FUNCTION_22_10();
        goto LABEL_75;
      case 3u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v569 = OUTLINED_FUNCTION_36_7();
        FactItemHeroNumber.description(redacted:)(v569);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 4u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v561 = OUTLINED_FUNCTION_36_7();
        SummaryItemStandard.description(redacted:)(v561);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 5u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v576 = OUTLINED_FUNCTION_36_7();
        SummaryItemShortNumber.description(redacted:)(v576);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 6u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v578 = OUTLINED_FUNCTION_36_7();
        SummaryItemText.description(redacted:)(v578);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 7u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v570 = OUTLINED_FUNCTION_36_7();
        SummaryItemLargeText.description(redacted:)(v570);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 8u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v580 = OUTLINED_FUNCTION_36_7();
        SummaryItemDetailedText.description(redacted:)(v580);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 9u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v564 = OUTLINED_FUNCTION_36_7();
        SimpleItemStandard.description(redacted:)(v564);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0xAu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v579 = OUTLINED_FUNCTION_36_7();
        SimpleItemRich.description(redacted:)(v579);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0xBu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v559 = OUTLINED_FUNCTION_36_7();
        SimpleItemVisual.description(redacted:)(v559);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0xCu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v563 = OUTLINED_FUNCTION_36_7();
        PrimaryHeaderStandard.description(redacted:)(v563);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0xDu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v577 = OUTLINED_FUNCTION_36_7();
        PrimaryHeaderMarquee.description(redacted:)(v577);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0xEu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v554 = OUTLINED_FUNCTION_36_7();
        PrimaryHeaderRich.description(redacted:)(v554);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0xFu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v568 = OUTLINED_FUNCTION_36_7();
        SecondaryHeaderStandard.description(redacted:)(v568);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x10u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v552 = OUTLINED_FUNCTION_36_7();
        Button.description(redacted:)(v552);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x11u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v574 = OUTLINED_FUNCTION_36_7();
        BinaryButton.description(redacted:)(v574);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x12u:
        OUTLINED_FUNCTION_116_1();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A1EDE38();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128_2();
        if (v787)
        {
          sub_26A27E314(v773);
        }

        else
        {
          sub_26A1EDE38();
        }

        v691 = v786;
        v692 = v775;
        OUTLINED_FUNCTION_120_1();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_38_9();
        sub_26A1EDDE4();
        OUTLINED_FUNCTION_126_2(*(v692 + 28));
        StatusIndicatorSuccess.text.getter();
        v693 = type metadata accessor for TextProperty(0);
        v694 = OUTLINED_FUNCTION_25_13(v693);
        sub_26A105654(v694);
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7908(v695, v696, v697, v698, v699, v700, v701, v702, v761, v762);

        v703 = StatusIndicatorSuccess.showIndicator.getter();
        v704 = OUTLINED_FUNCTION_20_14(v703);
        sub_26A1461DC(v704, v705, v706, v707);
        StatusIndicatorSuccess.action.getter(v691);
        OUTLINED_FUNCTION_27_13();
        sub_26A105550();
        v708 = sub_26A13440C();
        sub_26A0FBE18(v708, v709, v710, v711, v712, v713, v714);
        OUTLINED_FUNCTION_34_7();
        sub_26A13440C();
        OUTLINED_FUNCTION_28_7();
        sub_26A1EDDE4();
        goto LABEL_75;
      case 0x13u:
        OUTLINED_FUNCTION_116_1();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A1EDE38();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128_2();
        if (v787)
        {
          sub_26A1F33A8(v776);
        }

        else
        {
          sub_26A1EDE38();
        }

        v737 = v786;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164();
        sub_26A1EDD90();
        v738 = v767;
        OUTLINED_FUNCTION_38_9();
        sub_26A1EDDE4();
        OUTLINED_FUNCTION_126_2(*(v738 + 28));
        StatusIndicatorError.text.getter();
        v739 = type metadata accessor for TextProperty(0);
        v740 = OUTLINED_FUNCTION_25_13(v739);
        sub_26A105528(v740);
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F78E0(v741, v742, v743, v744, v745, v746, v747, v748, v761, v762);

        v749 = StatusIndicatorError.showIndicator.getter();
        v750 = OUTLINED_FUNCTION_20_14(v749);
        sub_26A146140(v750, v751, v752, v753);
        StatusIndicatorError.action.getter(v737);
        OUTLINED_FUNCTION_27_13();
        sub_26A105424();
        v754 = sub_26A13440C();
        sub_26A0FBC48(v754, v755, v756, v757, v758, v759, v760);
        OUTLINED_FUNCTION_34_7();
        sub_26A13440C();
        OUTLINED_FUNCTION_28_7();
        sub_26A1EDDE4();
        goto LABEL_75;
      case 0x14u:
        OUTLINED_FUNCTION_116_1();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A1EDE38();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128_2();
        if (v787)
        {
          sub_26A156AB0(v778);
        }

        else
        {
          sub_26A1EDE38();
        }

        v643 = v786;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164();
        sub_26A1EDD90();
        v644 = v768;
        OUTLINED_FUNCTION_38_9();
        sub_26A1EDDE4();
        OUTLINED_FUNCTION_126_2(*(v644 + 28));
        StatusIndicatorInProgress.text.getter();
        v645 = type metadata accessor for TextProperty(0);
        v646 = OUTLINED_FUNCTION_25_13(v645);
        sub_26A1053FC(v646);
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F78B8(v647, v648, v649, v650, v651, v652, v653, v654, v761, v762);

        v655 = StatusIndicatorInProgress.showIndicator.getter();
        v656 = OUTLINED_FUNCTION_20_14(v655);
        sub_26A1460A4(v656, v657, v658, v659);
        StatusIndicatorInProgress.action.getter(v643);
        OUTLINED_FUNCTION_27_13();
        sub_26A1052F8();
        v660 = sub_26A13440C();
        sub_26A0FBA74(v660, v661, v662, v663, v664, v665, v666);
        OUTLINED_FUNCTION_34_7();
        sub_26A13440C();
        OUTLINED_FUNCTION_28_7();
        sub_26A1EDDE4();
        goto LABEL_75;
      case 0x15u:
        OUTLINED_FUNCTION_116_1();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A1EDE38();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128_2();
        if (v787)
        {
          sub_26A380EA0(v779);
        }

        else
        {
          sub_26A1EDE38();
        }

        v667 = v786;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164();
        sub_26A1EDD90();
        v668 = v769;
        OUTLINED_FUNCTION_38_9();
        sub_26A1EDDE4();
        OUTLINED_FUNCTION_126_2(*(v668 + 28));
        StatusIndicatorCancelled.text.getter();
        v669 = type metadata accessor for TextProperty(0);
        v670 = OUTLINED_FUNCTION_25_13(v669);
        sub_26A1052D0(v670);
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7890(v671, v672, v673, v674, v675, v676, v677, v678, v761, v762);

        v679 = StatusIndicatorCancelled.showIndicator.getter();
        v680 = OUTLINED_FUNCTION_20_14(v679);
        sub_26A146008(v680, v681, v682, v683);
        StatusIndicatorCancelled.action.getter(v667);
        OUTLINED_FUNCTION_27_13();
        sub_26A1051CC();
        v684 = sub_26A13440C();
        sub_26A0FB8A0(v684, v685, v686, v687, v688, v689, v690);
        OUTLINED_FUNCTION_34_7();
        sub_26A13440C();
        OUTLINED_FUNCTION_28_7();
        sub_26A1EDDE4();
        goto LABEL_75;
      case 0x16u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v584 = OUTLINED_FUNCTION_36_7();
        TextInput.description(redacted:)(v584);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x17u:
        sub_26A1EDD90();
        OUTLINED_FUNCTION_120_1();
        sub_26A1EDE38();
        v589 = OUTLINED_FUNCTION_36_7();
        ControlSwitch.description(redacted:)(v589);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        OUTLINED_FUNCTION_24_14();
        goto LABEL_75;
      case 0x18u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v566 = OUTLINED_FUNCTION_36_7();
        ControlSlider.description(redacted:)(v566);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x19u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v565 = OUTLINED_FUNCTION_36_7();
        ControlPlayerButton.description(redacted:)(v565);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x1Au:
        v788 = 0;
        v789 = 0xE000000000000000;
        sub_26A424EF4();

        v788 = 0xD00000000000001DLL;
        v789 = 0x800000026A448550;
        v593 = OUTLINED_FUNCTION_133();
        MEMORY[0x26D65BA70](v593);
        MEMORY[0x26D65BA70](10530, 0xE200000000000000);

        return v788;
      case 0x1Bu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v550 = OUTLINED_FUNCTION_36_7();
        ReferenceStandard.description(redacted:)(v550);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x1Cu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v590 = OUTLINED_FUNCTION_36_7();
        ReferenceLogo.description(redacted:)(v590);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x1Du:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v591 = OUTLINED_FUNCTION_36_7();
        ReferenceRich.description(redacted:)(v591);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x1Eu:
        OUTLINED_FUNCTION_116_1();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A1EDE38();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128_2();
        if (v787)
        {
          _ProtoReference_Button.redactedProto.getter(v771);
        }

        else
        {
          sub_26A1EDE38();
        }

        v716 = v785;
        v715 = v786;
        v717 = v774;
        v718 = v772;
        OUTLINED_FUNCTION_120_1();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_38_9();
        OUTLINED_FUNCTION_63_4();
        sub_26A1EDDE4();
        OUTLINED_FUNCTION_126_2(*(v718 + 28));
        ReferenceButton.action.getter();
        v719 = type metadata accessor for ActionProperty(0);
        __swift_storeEnumTagSinglePayload(v715, 0, 1, v719);
        OUTLINED_FUNCTION_125_2();
        sub_26A1081A0();
        sub_26A13440C();
        ReferenceButton.label.getter();
        v720 = type metadata accessor for TextProperty(0);
        __swift_storeEnumTagSinglePayload(v716, 0, 1, v720);
        sub_26A108178(v716);
        sub_26A13440C();
        v721 = 0;
        if (*(v717 + 24) == 1)
        {
          v721 = *(v717 + 16);
        }

        sub_26A146454(v721, 0x6F526E6F74747562, 0xEA0000000000656CLL, 0);
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7D90(v722, v723, v724, v725, v726, v727, v728, v729, v761, v762);

        sub_26A0FF490(v730, v731, v732, v733, v734, v735, v736);
        OUTLINED_FUNCTION_34_7();
        sub_26A13440C();
        OUTLINED_FUNCTION_63_4();
        sub_26A1EDDE4();
        goto LABEL_75;
      case 0x1Fu:
        OUTLINED_FUNCTION_128();
        sub_26A1EDD90();
        v790 = type metadata accessor for SummaryItemPair(0);
        v791 = &protocol witness table for SummaryItemPair;
        v792 = sub_26A1EDD4C();
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A1EDE38();
        __swift_project_boxed_opaque_existential_1(&v788, v790);
        v572 = OUTLINED_FUNCTION_33_6();
        v573(v572);
        OUTLINED_FUNCTION_34_7();
        goto LABEL_57;
      case 0x20u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v581 = OUTLINED_FUNCTION_36_7();
        SummaryItemPairV2.description(redacted:)(v581);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x21u:
        OUTLINED_FUNCTION_128();
        sub_26A1EDD90();
        v790 = type metadata accessor for SummaryItemPairNumber(0);
        v791 = &protocol witness table for SummaryItemPairNumber;
        v792 = sub_26A1EDD4C();
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A1EDE38();
        __swift_project_boxed_opaque_existential_1(&v788, v790);
        v555 = OUTLINED_FUNCTION_33_6();
        v556(v555);
        OUTLINED_FUNCTION_34_7();
        goto LABEL_57;
      case 0x22u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v551 = OUTLINED_FUNCTION_36_7();
        SummaryItemPairNumberV2.description(redacted:)(v551);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x23u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v548 = OUTLINED_FUNCTION_36_7();
        SummaryItemButton.description(redacted:)(v548);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x24u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v549 = OUTLINED_FUNCTION_36_7();
        FactItemButton.description(redacted:)(v549);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x25u:
        OUTLINED_FUNCTION_116_1();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148();
        sub_26A1EDE38();
        OUTLINED_FUNCTION_111_1();
        sub_26A1EDE38();
        v544 = v787;
        v504 = v780;
        if (v787)
        {
          _ProtoTable.redactedProto.getter();
        }

        else
        {
          sub_26A1EDE38();
        }

        v622 = v783;
        v623 = v781;
        sub_26A1EDD90();
        *(v622 + *(v623 + 32)) = v544 & 1;
        sub_26A1EDDE4();
        *(v622 + *(v623 + 28)) = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_130_1();
        sub_26A145ED0(v624, v625, 0xEE0073656E694C72, 0);
        Table.columns.getter();
        sub_26A3A2878(v626, 0x736E6D756C6F63, 0xE700000000000000, 0, v627, v628, v629);

        Table.header.getter();
        sub_26A104CFC();
        sub_26A13440C();
        KeyPath = swift_getKeyPath();
        sub_26A0F710C(KeyPath, 1937207154, 0xE400000000000000, v631, v632, v633, v634, v635, v761, v762, v763, v764, v765, v766);

        sub_26A0FB144(v636, v637, v638, v639, v640, v641, v642);
        OUTLINED_FUNCTION_34_7();
        sub_26A13440C();
        OUTLINED_FUNCTION_28_7();
        sub_26A1EDDE4();
        goto LABEL_75;
      case 0x26u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v592 = OUTLINED_FUNCTION_36_7();
        ReferenceFootnote.description(redacted:)(v592);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x27u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v585 = OUTLINED_FUNCTION_36_7();
        LongItemText.description(redacted:)(v585);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x28u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v562 = OUTLINED_FUNCTION_36_7();
        VisualizationChart.description(redacted:)(v562);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x29u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v575 = OUTLINED_FUNCTION_36_7();
        SummaryItemPlayer.description(redacted:)(v575);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x2Au:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v587 = OUTLINED_FUNCTION_36_7();
        SimpleItemPlayer.description(redacted:)(v587);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x2Bu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v543 = OUTLINED_FUNCTION_36_7();
        SimpleItemReverseRich.description(redacted:)(v543);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x2Cu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v553 = OUTLINED_FUNCTION_36_7();
        SecondaryHeaderEmphasized.description(redacted:)(v553);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x2Du:
        OUTLINED_FUNCTION_128();
        sub_26A1EDD90();
        v790 = type metadata accessor for SummaryItemSwitch(0);
        v791 = &protocol witness table for SummaryItemSwitch;
        v792 = sub_26A1EDD4C();
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A1EDE38();
        __swift_project_boxed_opaque_existential_1(&v788, v790);
        v582 = OUTLINED_FUNCTION_33_6();
        v583(v582);
        OUTLINED_FUNCTION_34_7();
LABEL_57:
        sub_26A1EDDE4();
        sub_26A1EDCF8(&v788);
        return v504;
      case 0x2Eu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        SystemTextClarificationTitle.description(redacted:)(1);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x2Fu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v546 = OUTLINED_FUNCTION_36_7();
        VisualizationImage.description(redacted:)(v546);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x30u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v557 = OUTLINED_FUNCTION_36_7();
        VisualizationMap.description(redacted:)(v557);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x31u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v560 = OUTLINED_FUNCTION_36_7();
        ButtonContainer.description(redacted:)(v560);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x32u:
        OUTLINED_FUNCTION_148();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A1EDE38();
        OUTLINED_FUNCTION_123_2();
        OUTLINED_FUNCTION_116_1();
        sub_26A1EDE38();
        sub_26A2B3BB8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDD90();
        v599 = v770;
        *(v483 + *(v770 + 32)) = -71;
        sub_26A1EDDE4();
        *(v483 + *(v599 + 28)) = MEMORY[0x277D84F90];
        v600 = IntentsUIStandard.interaction.getter();
        sub_26A145DF0(v600, 0x7463617265746E69, 0xEB000000006E6F69, 0);

        v601 = swift_getKeyPath();
        sub_26A0F6FF0(v601, 0x73746F6C73, 0xE500000000000000, v602, v603, v604, v605, v606, v761, v762, v763, v764);

        IntentsUIStandard.action.getter();
        OUTLINED_FUNCTION_125_2();
        sub_26A1047FC();
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7778(v607, v608, v609, v610, v611, v612, v613, v614, v761, v762);

        sub_26A0FAA04(v615, v616, v617, v618, v619, v620, v621);
        OUTLINED_FUNCTION_34_7();
        sub_26A13440C();
        sub_26A1EDDE4();
        goto LABEL_75;
      case 0x33u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v597 = OUTLINED_FUNCTION_36_7();
        SashStandard.description(redacted:)(v597);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x34u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v596 = OUTLINED_FUNCTION_36_7();
        HeroHeader.description(redacted:)(v596);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x35u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v545 = OUTLINED_FUNCTION_36_7();
        HorizontalListStandard.description(redacted:)(v545);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x36u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v594 = OUTLINED_FUNCTION_36_7();
        SectionHeaderStandard.description(redacted:)(v594);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x37u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v595 = OUTLINED_FUNCTION_36_7();
        SectionHeaderRich.description(redacted:)(v595);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x38u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v547 = OUTLINED_FUNCTION_36_7();
        KeyValueStandard.description(redacted:)(v547);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x39u:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v586 = OUTLINED_FUNCTION_36_7();
        TertiaryHeaderStandard.description(redacted:)(v586);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x3Au:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v558 = OUTLINED_FUNCTION_36_7();
        SimpleItemRichSearchResult.description(redacted:)(v558);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      case 0x3Bu:
        OUTLINED_FUNCTION_115_2();
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164();
        sub_26A1EDE38();
        v588 = OUTLINED_FUNCTION_36_7();
        SummaryItemSwitchV2.description(redacted:)(v588);
        OUTLINED_FUNCTION_34_7();
        OUTLINED_FUNCTION_114_1();
        goto LABEL_75;
      default:
        OUTLINED_FUNCTION_148();
        sub_26A1EDD90();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128();
        sub_26A1EDE38();
        OUTLINED_FUNCTION_123_2();
        sub_26A1EDE38();
        v510 = v765;
        sub_26A39F8C8();
        v511 = swift_getKeyPath();
        sub_26A0F7F70(v511, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, v512, v513, v514, v515, v761, v762);

        v516 = swift_getKeyPath();
        sub_26A0F7F70(v516, 0x644977656976, 0xE600000000000000, 1, v517, v518, v519, v520, v761, v762);

        v521 = OUTLINED_FUNCTION_133();
        sub_26A0E45C0(v521, v522);
        v523 = OUTLINED_FUNCTION_133();
        sub_26A3A7078(v523, v524, v525, 0xE800000000000000);
        v526 = OUTLINED_FUNCTION_133();
        sub_26A0E4784(v526, v527);
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7F70(v528, v529, v530, v531, v532, v533, v534, v535, v761, v762);

        sub_26A146B68(*(v510 + 65), 0xD000000000000011, 0x800000026A446720, 0);
        sub_26A146B68(*(v510 + 66), 0xD000000000000017, 0x800000026A446740, 0);
        sub_26A1018D0(v536, v537, v538, v539, v540, v541, v542);
        OUTLINED_FUNCTION_34_7();
        sub_26A13440C();
        sub_26A1EDDE4();
LABEL_75:
        sub_26A1EDDE4();
        break;
    }
  }

  return v504;
}

uint64_t ComponentWrapper.component.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = type metadata accessor for _ProtoResponse.Component(0);
  *(a1 + 32) = &protocol witness table for _ProtoResponse.Component;
  __swift_allocate_boxed_opaque_existential_1Tm();
  OUTLINED_FUNCTION_18_12();
  return sub_26A1EDE38();
}

uint64_t ComponentWrapper.separators.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  type metadata accessor for _ProtoResponse.Component(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v20;
  sub_26A13440C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
    {
      *v5 = 0;
      *(v5 + 8) = 1;
      *(v5 + 16) = 0;
      *(v5 + 24) = 1;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v10, 1, v1) != 1)
      {
        sub_26A13440C();
      }
    }

    else
    {
      sub_26A1EDD90();
    }

    sub_26A1EDD90();
    v14 = 0;
  }

  v17 = type metadata accessor for Separators(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v17);
}

uint64_t sub_26A1ED21C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoResponse.Component(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ComponentWrapper.init(_:separators:)(void *a1, uint64_t a2)
{
  type metadata accessor for _ProtoResponse.Component(0);
  sub_26A1EDD4C();
  sub_26A4249C4();
  sub_26A1EDDE4();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A1ED3A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for _ProtoSeparators(0);
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for _ProtoResponse.Component(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v8 + 8))(v9, v8);
  sub_26A13440C();
  sub_26A10FD9C();
  sub_26A1EDDE4();
  sub_26A1EDE38();
  v10 = *(v7 + 32);
  sub_26A13440C();
  sub_26A1EDD90();
  return __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v5);
}

Swift::String __swiftcall ComponentWrapper.description(redacted:)(Swift::Bool redacted)
{
  v1 = redacted;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF68, &qword_26A426B18);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = type metadata accessor for ComponentWrapper(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_121_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF60, &qword_26A426B10) - 8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  sub_26A1EDE38();
  sub_26A1EDE38();
  OUTLINED_FUNCTION_122_2();
  sub_26A1EDD90();
  v12[*(v9 + 40)] = v1;
  sub_26A1EDDE4();
  v13 = *(v9 + 36);
  *&v12[v13] = MEMORY[0x277D84F90];
  v14 = sub_26A1E89D0(v1);
  v16 = v15;
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = v14;

    sub_26A167BB4(0, 1, 1, MEMORY[0x277D84F90]);
    v20 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_26A167BB4(v21 > 1, v22 + 1, 1, v19);
      v20 = v33;
    }

    *(v20 + 16) = v22 + 1;
    v23 = (v20 + 32 * v22);
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v18;
    v23[7] = v16;
    *&v12[v13] = v20;
  }

  else
  {
  }

  ComponentWrapper.separators.getter(v5);
  OUTLINED_FUNCTION_130_1();
  sub_26A107DB4();
  v24 = sub_26A13440C();
  sub_26A0FEF20(v24, v25, v26, v27, v28, v29, v30);
  sub_26A13440C();
  v31 = OUTLINED_FUNCTION_133();
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t type metadata accessor for ComponentWrapper(uint64_t a1)
{
  result = qword_28036F758;
  if (!qword_28036F758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ComponentWrapper.jsonString(redacted:)(Swift::Bool redacted)
{
  v1 = type metadata accessor for Section(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for _ProtoResponse.Component(0);
  *(inited + 64) = &protocol witness table for _ProtoResponse.Component;
  __swift_allocate_boxed_opaque_existential_1Tm();
  OUTLINED_FUNCTION_18_12();
  sub_26A1EDE38();
  swift_beginAccess();

  sub_26A10BF5C(v4);
  type metadata accessor for _ProtoResponse.Section(0);
  OUTLINED_FUNCTION_19_12();
  sub_26A1EDD4C();
  sub_26A4249C4();

  swift_setDeallocating();
  sub_26A10C358();
  sub_26A1E68D8();
  sub_26A1EDDE4();
  v5 = OUTLINED_FUNCTION_175();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t ComponentWrapper.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for _ProtoResponse.Component(0);
  *(inited + 64) = &protocol witness table for _ProtoResponse.Component;
  __swift_allocate_boxed_opaque_existential_1Tm();
  OUTLINED_FUNCTION_18_12();
  sub_26A1EDE38();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  OUTLINED_FUNCTION_19_12();
  sub_26A1EDD4C();
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A1EDC30(uint64_t a1)
{
  result = type metadata accessor for _ProtoResponse.Component(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm()
{
  OUTLINED_FUNCTION_14_4();
  if ((*(*(*(v1 + 24) - 8) + 82) & 2) != 0)
  {
    *v0 = swift_allocBox();
    return v2;
  }

  return v0;
}

unint64_t sub_26A1EDD4C()
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

uint64_t sub_26A1EDD90()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1EDDE4()
{
  OUTLINED_FUNCTION_14_4();
  v1(0);
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A1EDE38()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_15_14(uint64_t a1)
{

  return sub_26A424954();
}

uint64_t OUTLINED_FUNCTION_21_11(uint64_t a1)
{

  return sub_26A424954();
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return sub_26A4247D4();
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return sub_26A1EDDE4();
}

uint64_t OUTLINED_FUNCTION_115_2()
{

  return sub_26A1EDD90();
}

uint64_t OUTLINED_FUNCTION_128_2()
{

  return sub_26A1EDE38();
}

uint64_t OUTLINED_FUNCTION_135_1()
{

  return type metadata accessor for _ProtoResponse.Component(0);
}

unint64_t OUTLINED_FUNCTION_136_2()
{

  return sub_26A1EDD4C();
}

uint64_t _ProtoHeroHeader.banner.getter()
{
  OUTLINED_FUNCTION_19_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_142(v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__banner, v1 - 72);
  sub_26A10FD9C();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_23(v5);
  if (!v6)
  {
    return sub_26A1F0660();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v7 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  result = OUTLINED_FUNCTION_23(v5);
  if (!v6)
  {
    return sub_26A0E48F0(v5, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoHeroHeader.banner.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_21();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F0300();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_35_10();
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoHeroHeader.banner.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoVisualProperty(v7);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1EED28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A1F06B4();
  return a7(v11);
}

uint64_t _ProtoHeroHeader.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_21();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F0300();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_35_10();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoHeroHeader.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_8();
  }

  OUTLINED_FUNCTION_75();
}

BOOL sub_26A1EF050()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v6);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_142(v0 + *v5, v1 - 72);
  sub_26A10FD9C();
  v14 = v3(0);
  v15 = __swift_getEnumTagSinglePayload(v13, 1, v14) != 1;
  sub_26A0E48F0(v13, v9, v7);
  return v15;
}

uint64_t sub_26A1EF154(uint64_t *a1, uint64_t *a2, void (*a3)(void), void *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = *(type metadata accessor for _ProtoHeroHeader(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F0300();
    v12 = v13;
    *(v7 + v10) = v13;
  }

  a3(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_211(v12 + *a4, v19);
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t sub_26A1EF25C()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_142(v0 + *v3, v1 - 72);
  sub_26A10FD9C();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v7);
  if (!v8)
  {
    return sub_26A1F0660();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v9 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  result = OUTLINED_FUNCTION_23(v7);
  if (!v8)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoHeroHeader.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_21();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F0300();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_35_10();
  v4 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoHeroHeader.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoHeroHeader.watchListButton.getter()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F8D0, &qword_26A42DBE0);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_142(v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__watchListButton, v1 - 72);
  sub_26A10FD9C();
  type metadata accessor for _ProtoWatchListButton(0);
  OUTLINED_FUNCTION_23(v7);
  if (!v8)
  {
    return sub_26A1F0660();
  }

  *v3 = 0;
  v3[1] = 0xE000000000000000;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v7);
  if (!v8)
  {
    return sub_26A0E48F0(v7, &qword_28036F8D0, &qword_26A42DBE0);
  }

  return result;
}

uint64_t _ProtoHeroHeader.watchListButton.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F8D0, &qword_26A42DBE0);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_21();
  if ((OUTLINED_FUNCTION_188_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F0300();
    OUTLINED_FUNCTION_42_1(v3);
  }

  OUTLINED_FUNCTION_35_10();
  v4 = type metadata accessor for _ProtoWatchListButton(0);
  OUTLINED_FUNCTION_50_4(v4);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoHeroHeader.watchListButton.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  type metadata accessor for _ProtoWatchListButton(v7);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036F8D0, &qword_26A42DBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_8();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A1EF9B4(uint64_t a1, char a2, void (*a3)(void *), void (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_26A1F06B4();
    a3(v6);
    sub_26A1F0708(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t _ProtoHeroHeader.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoHeroHeader(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_26A1EFB24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoHeroHeader.componentName.setter(v1, v2);
}

uint64_t _ProtoHeroHeader.componentName.setter(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for _ProtoHeroHeader(0);
  v7 = OUTLINED_FUNCTION_188_1(v6);
  v8 = *(v2 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F0300();
    OUTLINED_FUNCTION_42_1(v9);
  }

  v10 = (v8 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;
}

void (*_ProtoHeroHeader.componentName.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = *(type metadata accessor for _ProtoHeroHeader(0) + 20);
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v5, v3);
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return sub_26A1EFC8C;
}

void sub_26A1EFC8C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    _ProtoHeroHeader.componentName.setter(v3, v4);
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 72);
      v10 = *(v2 + 64);
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_5_3();
      sub_26A1F0300();
      v8 = v11;
      *(v10 + v9) = v11;
    }

    v12 = (v8 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
    swift_beginAccess();
    *v12 = v3;
    v12[1] = v4;
  }

  free(v2);
}

uint64_t _ProtoHeroHeader.unknownFields.getter()
{
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_175();

  return v1(v0);
}

uint64_t _ProtoHeroHeader.unknownFields.setter(uint64_t a1)
{
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t _ProtoHeroHeader.init()@<X0>(uint64_t a2@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v3 = *(type metadata accessor for _ProtoHeroHeader(0) + 20);
  if (qword_28036C248 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_28036F8B0;
}

uint64_t sub_26A1EFED4()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036F898);
  __swift_project_value_buffer(v0, qword_28036F898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "banner";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "watch_list_button";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "component_name";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoHeroHeader._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C240 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036F898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_26A1F0208()
{
  OUTLINED_FUNCTION_5_15();
  result = sub_26A1F0238();
  qword_28036F8B0 = result;
  return result;
}

uint64_t sub_26A1F0238()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__banner;
  v2 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text1;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text2, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__watchListButton;
  v6 = type metadata accessor for _ProtoWatchListButton(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return v0;
}

void sub_26A1F0300()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F8D0, &qword_26A42DBE0);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__banner;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text1;
  v16 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text2;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  v33 = OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__watchListButton;
  type metadata accessor for _ProtoWatchListButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = (v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__banner, &v39);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v10, v38);
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text1, v38);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v15, v37);
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text2, v37);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v20, v36);
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__watchListButton, v36);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_211(v0 + v33, v35);
  sub_26A10CF40();
  swift_endAccess();
  v29 = (v2 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v2 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName, v35);
  v31 = *v29;
  v30 = v29[1];

  swift_beginAccess();
  *v28 = v31;
  v28[1] = v30;

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1F0660()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1F06B4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1F0708(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A1F0760()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__banner, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__watchListButton, &qword_28036F8D0, &qword_26A42DBE0);

  return v0;
}

uint64_t sub_26A1F081C()
{
  v0 = sub_26A1F0760();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoHeroHeader.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for _ProtoHeroHeader(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for _ProtoHeroHeader._StorageClass(0);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A1F0300();
    v10 = v11;
    *(v4 + v8) = v11;
  }

  return sub_26A1F0910(v10, a1, a2, a3);
}

uint64_t sub_26A1F0910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A1F0A0C(a2, a1, a3, a4);
        break;
      case 2:
        sub_26A1F0AE8(a2, a1, a3, a4);
        break;
      case 3:
        sub_26A1F0BC4(a2, a1, a3, a4);
        break;
      case 4:
        sub_26A1F0CA0(a2, a1, a3, a4);
        break;
      case 6:
        sub_26A1F0D7C(a2, a1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A1F0A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A1F2728(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1F0AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1F2728(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1F0BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A1F2728(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1F0CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoWatchListButton(0);
  sub_26A1F2728(&qword_28036F778, type metadata accessor for _ProtoWatchListButton, &protocol conformance descriptor for _ProtoWatchListButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A1F0D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t _ProtoHeroHeader.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ProtoHeroHeader(0);
  result = sub_26A1F0E74(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A1F0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A1F0F90(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A1F1178(a1, a2, a3, a4);
    sub_26A1F1360(a1, a2, a3, a4);
    sub_26A1F1548(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
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

uint64_t sub_26A1F0F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A1F0660();
  sub_26A1F2728(qword_2815796B8, type metadata accessor for _ProtoVisualProperty, &protocol conformance descriptor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A1F0708(v9, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A1F1178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1F0660();
  sub_26A1F2728(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1F0708(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A1F1360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A1F0660();
  sub_26A1F2728(&qword_28036C930, type metadata accessor for _ProtoTextProperty, &protocol conformance descriptor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A1F0708(v9, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A1F1548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F8D0, &qword_26A42DBE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for _ProtoWatchListButton(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036F8D0, &qword_26A42DBE0);
  }

  sub_26A1F0660();
  sub_26A1F2728(&qword_28036F778, type metadata accessor for _ProtoWatchListButton, &protocol conformance descriptor for _ProtoWatchListButton);
  sub_26A424A84();
  return sub_26A1F0708(v9, type metadata accessor for _ProtoWatchListButton);
}

uint64_t static _ProtoHeroHeader.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for _ProtoHeroHeader(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_26A1F1818(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  sub_26A1F2728(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_26A424B64() & 1;
}

uint64_t sub_26A1F1818(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v93 = a1;
  v79 = type metadata accessor for _ProtoWatchListButton(0);
  MEMORY[0x28223BE20](v79);
  v76 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F930, &qword_26A42DD98);
  MEMORY[0x28223BE20](v78);
  v80 = &v75 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F8D0, &qword_26A42DBE0);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v75 - v7;
  v91 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v91);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  MEMORY[0x28223BE20](v89);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v85 = &v75 - v17;
  MEMORY[0x28223BE20](v18);
  v87 = &v75 - v19;
  v20 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v20);
  v86 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v75 - v30;
  swift_beginAccess();
  sub_26A10FD9C();
  v32 = v92;
  swift_beginAccess();
  v33 = *(v23 + 56);
  sub_26A10FD9C();
  v34 = v32;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v20) == 1)
  {

    sub_26A0E48F0(v31, &qword_28036CAE8, &unk_26A426430);
    if (__swift_getEnumTagSinglePayload(&v25[v33], 1, v20) == 1)
    {
      sub_26A0E48F0(v25, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_8;
    }

LABEL_6:
    v35 = &qword_28036D190;
    v36 = &unk_26A427130;
    v37 = v25;
LABEL_28:
    sub_26A0E48F0(v37, v35, v36);
    goto LABEL_29;
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(&v25[v33], 1, v20) == 1)
  {

    sub_26A0E48F0(v31, &qword_28036CAE8, &unk_26A426430);
    sub_26A1F0708(v28, type metadata accessor for _ProtoVisualProperty);
    goto LABEL_6;
  }

  v38 = v86;
  sub_26A1F0660();

  v39 = static _ProtoVisualProperty.== infix(_:_:)(v28, v38);
  sub_26A1F0708(v38, type metadata accessor for _ProtoVisualProperty);
  sub_26A0E48F0(v31, &qword_28036CAE8, &unk_26A426430);
  sub_26A1F0708(v28, type metadata accessor for _ProtoVisualProperty);
  sub_26A0E48F0(v25, &qword_28036CAE8, &unk_26A426430);
  if ((v39 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  swift_beginAccess();
  v40 = v87;
  sub_26A10FD9C();
  swift_beginAccess();
  v41 = v89;
  v42 = *(v89 + 48);
  v43 = v88;
  sub_26A10FD9C();
  v44 = v43;
  sub_26A10FD9C();
  v45 = v43;
  v46 = v91;
  if (__swift_getEnumTagSinglePayload(v45, 1, v91) == 1)
  {
    sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44 + v42, 1, v46);
    v48 = v90;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v49 = v85;
  sub_26A10FD9C();
  v50 = __swift_getEnumTagSinglePayload(v44 + v42, 1, v46);
  v48 = v90;
  if (v50 == 1)
  {
    sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1F0708(v49, type metadata accessor for _ProtoTextProperty);
LABEL_13:
    v35 = &qword_28036C7D0;
    v36 = &qword_26A426DE0;
    v37 = v44;
    goto LABEL_28;
  }

  v51 = v82;
  sub_26A1F0660();
  v52 = static _ProtoTextProperty.== infix(_:_:)(v49, v51);
  sub_26A1F0708(v51, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1F0708(v49, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v44, &qword_28036C7B8, &unk_26A425BF0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v53 = *(v41 + 48);
  v54 = v83;
  sub_26A10FD9C();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v54, 1, v46) == 1)
  {
    sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
    v55 = __swift_getEnumTagSinglePayload(v54 + v53, 1, v46);
    v56 = v84;
    if (v55 == 1)
    {
      sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v57 = v81;
  sub_26A10FD9C();
  v58 = __swift_getEnumTagSinglePayload(v54 + v53, 1, v46);
  v56 = v84;
  if (v58 == 1)
  {
    sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1F0708(v57, type metadata accessor for _ProtoTextProperty);
LABEL_20:
    v35 = &qword_28036C7D0;
    v36 = &qword_26A426DE0;
    v37 = v54;
    goto LABEL_28;
  }

  v59 = v82;
  sub_26A1F0660();
  v60 = static _ProtoTextProperty.== infix(_:_:)(v57, v59);
  sub_26A1F0708(v59, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1F0708(v57, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  swift_beginAccess();
  sub_26A10FD9C();
  swift_beginAccess();
  v61 = *(v78 + 48);
  v62 = v80;
  sub_26A10FD9C();
  sub_26A10FD9C();
  v63 = v79;
  if (__swift_getEnumTagSinglePayload(v62, 1, v79) != 1)
  {
    v64 = v77;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v62 + v61, 1, v63) == 1)
    {
      sub_26A0E48F0(v56, &qword_28036F8D0, &qword_26A42DBE0);
      sub_26A1F0708(v64, type metadata accessor for _ProtoWatchListButton);
      goto LABEL_27;
    }

    v66 = v76;
    sub_26A1F0660();
    v67 = *v64 == *v66 && v64[1] == v66[1];
    if (!v67 && (sub_26A425354() & 1) == 0)
    {
      sub_26A1F0708(v66, type metadata accessor for _ProtoWatchListButton);
      sub_26A0E48F0(v56, &qword_28036F8D0, &qword_26A42DBE0);
      sub_26A1F0708(v64, type metadata accessor for _ProtoWatchListButton);
      v37 = v62;
      v35 = &qword_28036F8D0;
      v36 = &qword_26A42DBE0;
      goto LABEL_28;
    }

    sub_26A424794();
    sub_26A1F2728(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v68 = sub_26A424B64();
    sub_26A1F0708(v66, type metadata accessor for _ProtoWatchListButton);
    sub_26A0E48F0(v56, &qword_28036F8D0, &qword_26A42DBE0);
    sub_26A1F0708(v64, type metadata accessor for _ProtoWatchListButton);
    sub_26A0E48F0(v62, &qword_28036F8D0, &qword_26A42DBE0);
    if (v68)
    {
      goto LABEL_37;
    }

LABEL_29:

    return 0;
  }

  sub_26A0E48F0(v56, &qword_28036F8D0, &qword_26A42DBE0);
  if (__swift_getEnumTagSinglePayload(v62 + v61, 1, v63) != 1)
  {
LABEL_27:
    v35 = &qword_28036F930;
    v36 = &qword_26A42DD98;
    v37 = v62;
    goto LABEL_28;
  }

  sub_26A0E48F0(v62, &qword_28036F8D0, &qword_26A42DBE0);
LABEL_37:
  v69 = (v93 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  v72 = (v34 + OBJC_IVAR____TtCV10SnippetKit16_ProtoHeroHeaderP33_DED55919226DED94E0316A346FE20FEA13_StorageClass__componentName);
  swift_beginAccess();
  if (v70 == *v72 && v71 == v72[1])
  {

    return 1;
  }

  v74 = sub_26A425354();

  result = 0;
  if (v74)
  {
    return 1;
  }

  return result;
}

uint64_t _ProtoHeroHeader.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoHeroHeader(0);
  sub_26A1F2728(&qword_28036F8E8, type metadata accessor for _ProtoHeroHeader, &protocol conformance descriptor for _ProtoHeroHeader);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A1F2728(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A1F2814(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A1F2728(&qword_28036F928, type metadata accessor for _ProtoHeroHeader, &protocol conformance descriptor for _ProtoHeroHeader);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A1F2924(uint64_t a1)
{
  v2 = sub_26A1F2728(&qword_28036F808, type metadata accessor for _ProtoHeroHeader, &protocol conformance descriptor for _ProtoHeroHeader);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A1F29DC(uint64_t a1, uint64_t a2)
{
  sub_26A1F2728(&qword_28036F808, type metadata accessor for _ProtoHeroHeader, &protocol conformance descriptor for _ProtoHeroHeader);

  return sub_26A4249B4();
}

uint64_t sub_26A1F2A84(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoHeroHeader._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A1F2B10(uint64_t a1)
{
  sub_26A1F2C70(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
  if (v1 <= 0x3F)
  {
    sub_26A1F2C70(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v2 <= 0x3F)
    {
      sub_26A1F2C70(319, &qword_28036F920, type metadata accessor for _ProtoWatchListButton);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A1F2C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return type metadata accessor for _ProtoHeroHeader(0);
}

uint64_t OUTLINED_FUNCTION_5_15()
{
  type metadata accessor for _ProtoHeroHeader._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return sub_26A1F0660();
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return sub_26A1F0660();
}

uint64_t StatusIndicatorError.text.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  type metadata accessor for _ProtoStatusIndicator_Error(0);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v4);
  if (v9)
  {
    *v8 = MEMORY[0x277D84F90];
    *(v8 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_15(v4);
    if (!v9)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1F4628();
  }

  return sub_26A1F4628();
}

uint64_t StatusIndicatorError.showIndicator.getter()
{
  v0 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v4 = (v3 - v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  type metadata accessor for _ProtoStatusIndicator_Error(0);
  sub_26A10FD9C();
  v13 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v0);
  sub_26A0E48F0(v12, &qword_28036D198, &qword_26A432940);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v9);
    if (v15)
    {
      *v4 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15(v9);
      if (!v15)
      {
        sub_26A0E48F0(v9, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A1F4628();
    }

    v13 = *v4;
    sub_26A1F4A14(v4, type metadata accessor for _ProtoOptionalBool);
  }

  return v13;
}

uint64_t StatusIndicatorError.action.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  type metadata accessor for _ProtoStatusIndicator_Error(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v24;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v17 = OUTLINED_FUNCTION_71();
    if (__swift_getEnumTagSinglePayload(v17, v18, v1) == 1)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v19 = OUTLINED_FUNCTION_71();
      if (__swift_getEnumTagSinglePayload(v19, v20, v1) != 1)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A1F4628();
    }

    sub_26A1F4628();
    v14 = 0;
  }

  v21 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v21);
}

uint64_t sub_26A1F33A8@<X0>(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v57 = (&v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v55 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  OUTLINED_FUNCTION_2_16();
  sub_26A1F45D4();
  v60 = type metadata accessor for _ProtoStatusIndicator_Error(0);
  v29 = *(v60 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v59;
  if (!v32)
  {
    sub_26A10FD9C();
    v34 = OUTLINED_FUNCTION_71();
    if (__swift_getEnumTagSinglePayload(v34, v35, v14) == 1)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
      v42 = OUTLINED_FUNCTION_71();
      if (__swift_getEnumTagSinglePayload(v42, v43, v14) != 1)
      {
        sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1F4628();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A1F4A14(v20, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A1F4628();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
  }

  v47 = *(v60 + 32);
  sub_26A10FD9C();
  v48 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v48 != 1)
  {
    v50 = v56;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v50, 1, v33) == 1)
    {
      v51 = v57;
      *v57 = v31;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v50, 1, v33) != 1)
      {
        sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A1F4628();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v58);
    sub_26A1F4A14(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v47, &off_28036C7C0, &off_26A427400);
    sub_26A1F4628();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  }

  return result;
}

uint64_t StatusIndicatorError.init(text:componentName:showIndicator:action:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ProtoStatusIndicator_Error(0);
  OUTLINED_FUNCTION_0_30();
  sub_26A1F48F0(v7, v8, &protocol conformance descriptor for _ProtoStatusIndicator_Error);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A1F39A0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v41 = a6;
  v40 = a5;
  v38 = a4;
  v39 = a3;
  v8 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v8 - 8);
  v36[3] = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = v36 - v11;
  v43 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v43);
  v36[2] = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36[1] = v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v36 - v16;
  v37 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v37);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v20);
  v21 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v21 - 8);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v23 + 8))(v22, v23);
  sub_26A1F4628();
  v24 = type metadata accessor for _ProtoStatusIndicator_Error(0);
  v25 = v24[6];
  sub_26A0E48F0(a1 + v25, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A1F4628();
  v26 = v20;
  v27 = v37;
  __swift_storeEnumTagSinglePayload(a1 + v25, 0, 1, v26);
  v28 = v38;

  *a1 = v39;
  a1[1] = v28;
  v29 = v24[7];
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v17, 1, v27) != 1)
    {
      sub_26A0E48F0(v17, &qword_28036D198, &qword_26A432940);
    }
  }

  else
  {
    sub_26A1F4628();
  }

  *v19 = v40 & 1;
  sub_26A0E48F0(a1 + v29, &qword_28036D198, &qword_26A432940);
  sub_26A1F4628();
  __swift_storeEnumTagSinglePayload(a1 + v29, 0, 1, v27);
  sub_26A10FD9C();
  v30 = v45;
  if (v45)
  {
    v31 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v31 + 8))(v30, v31);
    v32 = v42;
    sub_26A1F4628();
    v33 = v43;
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) != 1)
    {
      sub_26A1F4628();
      sub_26A1F4628();
      v34 = v24[8];
      sub_26A0E48F0(a1 + v34, &off_28036C7C0, &off_26A427400);
      sub_26A1F4628();
      return __swift_storeEnumTagSinglePayload(a1 + v34, 0, 1, v33);
    }
  }

  else
  {
    sub_26A0E48F0(v44, &qword_28036CAF8, &unk_26A426D30);
    v32 = v42;
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  }

  return sub_26A0E48F0(v32, &off_28036C7C0, &off_26A427400);
}

uint64_t StatusIndicatorError.init(text:componentName:showIndicator:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26A0E5D68(a1, v8);
  type metadata accessor for _ProtoStatusIndicator_Error(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_0_30();
  sub_26A1F48F0(v4, v5, &protocol conformance descriptor for _ProtoStatusIndicator_Error);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t StatusIndicatorError.init(text:componentName:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26A0E5D68(a1, v8);
  type metadata accessor for _ProtoStatusIndicator_Error(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_0_30();
  sub_26A1F48F0(v4, v5, &protocol conformance descriptor for _ProtoStatusIndicator_Error);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t StatusIndicatorError.init(text:)(void *a1)
{
  sub_26A0E5D68(a1, v6);
  type metadata accessor for _ProtoStatusIndicator_Error(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_0_30();
  sub_26A1F48F0(v2, v3, &protocol conformance descriptor for _ProtoStatusIndicator_Error);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::String __swiftcall StatusIndicatorError.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v42 - v8;
  v10 = type metadata accessor for StatusIndicatorError(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF80, &unk_26A426B30);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v42 - v20;
  OUTLINED_FUNCTION_4_22();
  sub_26A1F45D4();
  if (redacted)
  {
    sub_26A1F33A8(v14);
  }

  else
  {
    sub_26A1F45D4();
  }

  sub_26A1F4628();
  v21[*(v18 + 32)] = redacted;
  sub_26A1F4A14(v17, type metadata accessor for StatusIndicatorError);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  StatusIndicatorError.text.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A105528(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  KeyPath = swift_getKeyPath();
  sub_26A0F78E0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v42[0], v42[1]);

  v31 = StatusIndicatorError.showIndicator.getter();
  sub_26A146140(v31 & 1, 0x69646E49776F6873, 0xED0000726F746163, 0);
  StatusIndicatorError.action.getter(v5);
  sub_26A105424();
  v32 = sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  sub_26A0FBC48(v32, v33, v34, v35, v36, v37, v38);
  sub_26A0E48F0(v21, &qword_28036CF80, &unk_26A426B30);
  v39 = OUTLINED_FUNCTION_175();
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t type metadata accessor for StatusIndicatorError(uint64_t a1)
{
  result = qword_28036F938;
  if (!qword_28036F938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1F45D4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1F4628()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t StatusIndicatorError.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoStatusIndicator_Error(0);
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
  OUTLINED_FUNCTION_2_16();
  sub_26A1F45D4();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_16();
  sub_26A1F4628();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}