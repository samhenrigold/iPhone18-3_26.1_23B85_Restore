id sub_27448A044(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFNumberFieldParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

id WFNumberFieldParameter.defaultStateForNewArrayElement()()
{
  sub_274412734(0, &unk_28094D720, 0x277CCACA8);
  v0 = sub_27463BFAC();
  v1 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

  return v1;
}

id sub_27448A124(void *a1)
{
  v1 = a1;
  v2 = WFNumberFieldParameter.defaultStateForNewArrayElement()();

  return v2;
}

uint64_t sub_27448A16C()
{
  static WFNumberFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_27448A214()
{
  OUTLINED_FUNCTION_79();
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_27448A2A8, v3, v2);
}

uint64_t sub_27448A2A8()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27448A3C0;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_58;
  v0[7].receiver = v2;
  v3 = type metadata accessor for NumberFieldParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_27448A3C0()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_27448A4C4, v2, v1);
}

uint64_t sub_27448A4C4()
{
  OUTLINED_FUNCTION_79();

  sub_27448A8A0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27448A5A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27448A638, v4, v3);
}

uint64_t sub_27448A638()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_27448A214();
}

id sub_27448A728()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  v1 = objc_msgSendSuper2(&v3, sel_variableProvider);

  return v1;
}

uint64_t sub_27448A7D0(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_setVariableProvider_, a1);
  sub_27448A820();
  return swift_unknownObjectRelease();
}

void sub_27448A820()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteDataSource];
  if (v1)
  {
    v2 = v1;
    sub_2745BEA48([v0 variableProvider]);
  }
}

id sub_27448A8A0()
{
  result = [v0 textEntry];
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 resignFirstResponder];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_27448A92C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithVariable_];
  }

  else
  {
    return 0;
  }
}

void sub_27448A9E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v23, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  [a1 setClearsZeroWhenTyping_];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [v3 parameter];
    v9 = [v8 allowsDecimalNumbers];

    if (v9)
    {
      v10 = 8;
    }

    else
    {
      v10 = 4;
    }

    [v7 setKeyboardType_];
  }

  v11 = [objc_allocWithZone(type metadata accessor for VariableAutocompleter()) init];
  sub_2745BEA48([v3 variableProvider]);
  if (([v3 isProcessing] & 1) != 0 || (v12 = sub_274505FCC(objc_msgSend(v3, sel_parameter))) == 0)
  {

    v12 = MEMORY[0x277D84FA0];
  }

  sub_2745BEB28(v12);
  v13 = *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteDataSource];
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteDataSource] = v11;
  v14 = v11;

  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v18 = [v3 parameter];
    v17 = [v18 allowsNegativeNumbers];
  }

  sub_2745BEB90(v17);
  v19 = [objc_allocWithZone(sub_274638A6C()) init];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRetain();
  }

  sub_274638A5C();
  sub_27463885C();
  swift_allocObject();
  sub_27448E730(&qword_28094CF90, 255, type metadata accessor for VariableAutocompleter, &unk_27465D338);
  v20 = v14;
  sub_27463886C();
  sub_274638A3C();
  sub_27448E730(&qword_28094CF98, v21, type metadata accessor for NumberFieldParameterSummaryEditor, &unk_27464F3C8);
  swift_unknownObjectRetain();
  sub_274638A4C();

  v22 = *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteCoordinator];
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteCoordinator] = v19;
}

void sub_27448AD88()
{
  v2 = [v0 textEntry];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 attributedText];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 string];

      v7 = sub_27463B6AC();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    v10 = objc_opt_self();
    v11 = sub_27448DF10(v7, v9, v10);
    OUTLINED_FUNCTION_8_8();
    v12 = sub_27463B72C();

    if (v1)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v1)
    {
      v14 = v1;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    sub_274412734(0, &qword_280953450, 0x277CCA898);
    v15 = sub_2745A9480(v13, v14);
    [v3 wf:0 replaceRange:v12 withAttributedText:v15];
    swift_unknownObjectRelease();
  }
}

id sub_27448AEFC(void *a1)
{
  if (a1)
  {
    v2 = [a1 string];
    sub_27463B6AC();

    v3 = sub_27463B66C();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = [v1 parameter];
  v6 = [v5 allowsNegativeNumbers];

  v7 = [v4 shouldChangeText:v3 allowMinus:v6];
  return v7;
}

void sub_27448B024(id a1)
{
  v22.receiver = v1;
  v22.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v22, sel_textEntryTextDidChange_, a1);
  if (a1)
  {
    v3 = [a1 string];
    v4 = sub_27463B6AC();
    a1 = v5;

    v6 = sub_27463B66C();
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

  v7 = objc_opt_self();
  v8 = [v1 parameter];
  v9 = [v8 allowsDecimalNumbers];

  v10 = [v7 stringBySanitizingNumberString:v6 allowDecimalNumbers:v9];
  if (v10)
  {
    v11 = sub_27463B6AC();
    v13 = v12;

    if (a1)
    {
      v14 = v11 == v4 && a1 == v13;
      if (v14 || (sub_27463C6BC() & 1) != 0)
      {

        v15 = sub_27463B66C();

        a1 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

LABEL_16:
        [v1 stageState_];

        return;
      }
    }
  }

  else if (!a1)
  {
    goto LABEL_16;
  }

  v16 = [v1 textEntry];
  if (v16)
  {
    v17 = v16;
    if (a1)
    {
      v18 = sub_27463B72C();
    }

    else
    {
      v18 = 0;
    }

    sub_274412734(0, &qword_280953450, 0x277CCA898);
    v19 = OUTLINED_FUNCTION_5_0();
    v21 = sub_2745A9480(v19, v20);
    [v17 wf:0 replaceRange:v18 withAttributedText:v21];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_27448B320()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v3, sel_textEntryDidFinish);
  v1 = OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_hasStagedChanges;
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_hasStagedChanges) == 1)
  {
    v2 = [v0 currentState];
    [v0 commitState_];

    *(v0 + v1) = 0;
  }

  if ((*(v0 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_isPickingActionOutput) & 1) == 0)
  {
    [v0 completeEditing];
  }
}

id sub_27448B418(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  result = objc_msgSendSuper2(&v4, sel_stageState_, a1);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_hasStagedChanges) = 1;
  return result;
}

void sub_27448B4D8(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_27448AD88();
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithVariable_];
      [v1 stageState_];

      sub_27448A8A0();
    }
  }

  else
  {
    v2 = [v1 variableProvider];
    if (v2)
    {
      v3 = v2;
      v4 = sub_274505FCC([v1 parameter]);
      if (v4)
      {
        v5 = sub_2744896FC(*MEMORY[0x277D7D068], v4);
      }

      else
      {
        v5 = 0;
      }

      *(v1 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_isPickingActionOutput) = 1;
      sub_27448A8A0();
      v7 = [v1 variableUIDelegate];
      if (v7)
      {
        v8 = v7;
        v9 = swift_allocObject();
        *(v9 + 16) = v1;
        v12[4] = sub_27448E164;
        v12[5] = v9;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 1107296256;
        v12[2] = sub_274486F8C;
        v12[3] = &block_descriptor_10;
        v10 = _Block_copy(v12);
        v11 = v1;

        [v8 showActionOutputPickerAllowingShortcutInput:v5 variableProvider:v3 completionHandler:v10];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v10);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_27448B730(void *a1, id a2)
{
  if (a1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D7C6A8]);
    v6 = a1;
    v5 = [v4 initWithVariable_];
    [a2 commitState_];

    [a2 completeEditing];
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_isPickingActionOutput) = 0;

    [a2 requestTextEntry];
  }
}

id sub_27448B810(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteDataSource] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_hasStagedChanges] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_isPickingActionOutput] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor33NumberFieldParameterSummaryEditor_autocompleteCoordinator] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_27448B8EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NumberFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_27448B96C()
{
  sub_27448E094();
  sub_27463880C();
  if (v0 != 2)
  {
    sub_27448B4D8(v0);
    sub_27448E0E8(v0);
  }
}

uint64_t sub_27448B9E4()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v8, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[15] != 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  if (v7)
  {
    if (v6)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v11 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    if (v13[14])
    {
      return MEMORY[0x277D84FA0];
    }
  }

  v12 = MEMORY[0x277D84FA0];
  result = sub_27448DF90(v5);
  if (!result)
  {
    return v12;
  }

  return result;
}

void sub_27448BC10(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x51uLL);
  v3 = *(v1 + 8);
  v4 = *(v1 + 40);
  v35 = *(v1 + 24);
  v36 = v4;
  v31 = v3;
  v32 = v35;
  v33 = v4;
  v34 = v3;
  v5 = __dst[0];
  sub_274412C20(&v34, &v28, &unk_28094C0E0, &qword_27464CCE8);
  v6 = sub_274465BE4();
  v8 = v7;
  v10 = v9;
  sub_27440CB1C(&v34, &unk_28094C0E0, &qword_27464CCE8);
  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_0_20();
  sub_27448E730(v11, 255, v12, &protocol conformance descriptor for WorkflowEditorOptions);
  *(a1 + 208) = sub_27463979C();
  *(a1 + 216) = v13;
  *(a1 + 224) = swift_getKeyPath();
  *(a1 + 232) = 0;
  *(a1 + 240) = swift_getKeyPath();
  *(a1 + 248) = 0;
  *(a1 + 256) = swift_getKeyPath();
  *(a1 + 264) = 0;
  *(a1 + 272) = swift_getKeyPath();
  *(a1 + 312) = 0;
  *(a1 + 320) = swift_getKeyPath();
  *(a1 + 328) = 0;
  sub_27463ACDC();
  v14 = v29;
  *(a1 + 336) = v28;
  *(a1 + 344) = v14;
  sub_27463ACDC();
  v15 = v29;
  *(a1 + 352) = v28;
  *(a1 + 360) = v15;
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v17 = v5;
  sub_27444A564(v17);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *a1 = sub_27463950C();
  *(a1 + 8) = v18;
  v19 = [v17 localizedLabel];
  v20 = sub_27463B6AC();
  v22 = v21;

  *(a1 + 16) = v20;
  *(a1 + 24) = v22;
  v23 = [v17 localizedDescription];
  if (v23)
  {
    v24 = v23;
    v25 = sub_27463B6AC();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  *(a1 + 32) = v25;
  *(a1 + 40) = v27;
  *(a1 + 48) = 1;
  *(a1 + 56) = v6;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  sub_27448BED4(__dst, a1 + 80);

  *(a1 + 200) = 0;
}

double sub_27448BED4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_27444C12C(*a1);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 48;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  memcpy(__dst, a1, sizeof(__dst));
  v9 = sub_27448B9E4();
  v10 = [v4 allowsDecimalNumbers];
  v11 = [v4 allowsNegativeNumbers];
  v12 = [v4 textAlignment];
  WFTextAlignmentFromString();

  LOBYTE(v12) = sub_27463944C();
  v22 = *(a1 + 8);
  v23 = *(a1 + 24);
  v24 = *(a1 + 40);
  *&v21[5] = v22;
  *&v21[21] = v23;
  *&v21[37] = v24;
  v20 = 0;
  sub_274412C20(&v22, v18, &unk_28094C0E0, &qword_27464CCE8);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27448E730(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v13 = sub_27463979C();
  v14 = *&v21[16];
  *(a2 + 27) = *v21;
  v15 = v20;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 25) = v11;
  *(a2 + 26) = v12;
  *(a2 + 43) = v14;
  result = *&v21[32];
  *(a2 + 59) = *&v21[32];
  *(a2 + 72) = *&v21[45];
  *(a2 + 80) = sub_27448C0A8;
  *(a2 + 88) = 0;
  *(a2 + 96) = v15;
  *(a2 + 104) = v13;
  *(a2 + 112) = v17;
  return result;
}

uint64_t sub_27448C0A8(__n128 a1)
{
  v1 = sub_2746382DC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2746382CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_27448C144@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v50 = type metadata accessor for VariableTextEditor(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFE0, &qword_27464F8B0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFE8, &qword_27464F8B8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  memcpy(v55, v1, sizeof(v55));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  v11 = sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v49 = v10;
  v47 = v11;
  sub_27463920C();
  v12 = v55[13];
  if (v55[13])
  {
    v57[0] = *v1;
    v56 = v55[2];
    OUTLINED_FUNCTION_7_13();
    v46 = swift_allocObject();
    memcpy((v46 + 16), v1, 0x78uLL);
    OUTLINED_FUNCTION_7_13();
    v45 = swift_allocObject();
    memcpy((v45 + 16), v1, 0x78uLL);
    if ((v55[3] & 0x100) != 0)
    {
      v13 = objc_opt_self();
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_5_15();
      v14 = v12;
      sub_27448E448(v57, v54);
      sub_274412C20(&v56, v54, &unk_280953A00, &qword_27464F8C0);
      v15 = [v13 currentDevice];
      v16 = [v15 userInterfaceIdiom];

      v17 = v16 == 0;
      if ((v55[3] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((v55[3] & 1) == 0)
      {
        OUTLINED_FUNCTION_5_15();
        OUTLINED_FUNCTION_5_15();
        v20 = v12;
        sub_27448E448(v57, v54);
        sub_274412C20(&v56, v54, &unk_280953A00, &qword_27464F8C0);
        v17 = 0;
LABEL_9:
        v19 = MEMORY[0x277D7A640];
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_5_15();
      v18 = v12;
      sub_27448E448(v57, v54);
      sub_274412C20(&v56, v54, &unk_280953A00, &qword_27464F8C0);
      v17 = 0;
    }

    v19 = MEMORY[0x277D7A620];
LABEL_10:
    v21 = *v19;
    v22 = *MEMORY[0x277D7A5C0];
    *(v4 + 18) = sub_2745BBDFC;
    *(v4 + 19) = 0;
    v4[160] = 0;
    *(v4 + 25) = swift_getKeyPath();
    v4[208] = 0;
    *(v4 + 27) = swift_getKeyPath();
    v4[224] = 0;
    *(v4 + 29) = swift_getKeyPath();
    v4[240] = 0;
    v23 = v50;
    v24 = *(v50 + 108);
    *&v4[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
    swift_storeEnumTagMultiPayload();
    v25 = &v4[*(v23 + 112)];
    *v25 = swift_getKeyPath();
    v25[9] = 0;
    *v4 = 1;
    *(v4 + 8) = v57[0];
    *(v4 + 12) = 0;
    *(v4 + 4) = 0;
    *(v4 + 20) = 0;
    *(v4 + 6) = v56;
    *(v4 + 8) = 0;
    v4[104] = v17;
    *(v4 + 14) = v21;
    *(v4 + 15) = v22;
    *(v4 + 8) = xmmword_27464F170;
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_0_20();
    sub_27448E730(v26, 255, v27, &protocol conformance descriptor for WorkflowEditorOptions);
    v28 = v12;
    v29 = v22;
    *(v4 + 21) = sub_27463950C();
    *(v4 + 22) = v30;
    v31 = sub_27463950C();
    v33 = v32;

    *(v4 + 23) = v31;
    *(v4 + 24) = v33;
    *(v4 + 7) = 1;
    v34 = v45;
    v35 = v46;
    *(v4 + 9) = sub_27448E400;
    *(v4 + 10) = v35;
    *(v4 + 11) = sub_27448E408;
    *(v4 + 12) = v34;
    LOBYTE(v23) = BYTE2(v55[3]);
    KeyPath = swift_getKeyPath();
    v37 = v48;
    sub_27448E4A4(v4, v48);
    v38 = v37 + *(v51 + 36);
    *v38 = KeyPath;
    *(v38 + 8) = v23;
    OUTLINED_FUNCTION_7_13();
    v39 = swift_allocObject();
    memcpy((v39 + 16), v55, 0x78uLL);
    sub_27441277C(v37, v9, &qword_28094CFE0, &qword_27464F8B0);
    v40 = v53;
    v41 = &v9[*(v52 + 36)];
    *v41 = sub_27448E570;
    v41[1] = v39;
    v41[2] = 0;
    v41[3] = 0;
    sub_27441277C(v9, v40, &qword_28094CFE8, &qword_27464F8B8);
    return OUTLINED_FUNCTION_5_15();
  }

  type metadata accessor for WorkflowEditorOptions(0);
  OUTLINED_FUNCTION_0_20();
  sub_27448E730(v43, 255, v44, &protocol conformance descriptor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_27448C728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(MEMORY[0x277D7C6A8]);
  sub_27448E410(a4, v10);
  v7 = [v6 initWithVariable_];
  v8 = *(a4 + 64);
  v10[0] = v7;
  v8(v10);

  return sub_27448E578(a4);
}

uint64_t sub_27448C7B0(void *a1, __n128 a2)
{
  v3 = sub_2746382DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = a1[10];
  v10 = a1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  v23[1] = v10;
  v23[2] = v9;
  sub_27463920C();
  sub_27463896C();

  v11 = sub_2746382BC();
  v12 = *(v4 + 8);
  v12(v8, v3);
  if (sub_274453594())
  {
    sub_2744535A4();
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x277C58B20](0, v11);
    }

    else
    {
      v13 = *(v11 + 32);
    }

    v14 = v13;

    v15 = objc_allocWithZone(MEMORY[0x277D7C6A8]);
    sub_27448E410(a1, v24);
    v16 = [v15 initWithVariable_];
    v17 = a1[8];
    v24[0] = v16;
    v17(v24);
  }

  else
  {

    sub_27448E410(a1, v24);
    sub_27463920C();
    v18 = v23[0];
    sub_27463896C();

    sub_27463826C();
    v12(v18, v3);
    v19 = sub_27463B66C();

    v20 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

    v21 = a1[8];
    v24[0] = v20;
    v21(v24);
  }

  return sub_27448E578(a1);
}

uint64_t sub_27448CA9C(uint64_t a1, __n128 a2)
{
  v3 = sub_2746382DC();
  MEMORY[0x28223BE20](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
  sub_27463920C();
  (*(a1 + 48))(&v7);
  v4 = v7;
  if (!v7 || (v5 = [v7 value], v4, !v5))
  {
    sub_274412734(0, &unk_28094D720, 0x277CCACA8);
    v5 = sub_27463BFAC();
  }

  sub_27463B6AC();

  sub_27463828C();
  sub_27463897C();
}

uint64_t sub_27448CC38()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v0 + 40);
  v5 = *(v0 + 32);
  v14 = v5;
  if (v15 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v14, &qword_28094CD80, &qword_27464ED40);
    (*(v2 + 8))(v4, v1);
    if (v12 != 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  v13 = *(v0 + 24);
  v7 = *(v0 + 16);
  v12 = v7;
  if (v13 == 1)
  {
    if (v7)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v12, &qword_28094CD80, &qword_27464ED40);
    (*(v2 + 8))(v4, v1);
    if (v11[15])
    {
      return MEMORY[0x277D84FA0];
    }
  }

  v10 = MEMORY[0x277D84FA0];
  result = sub_27448DF90(*v0);
  if (!result)
  {
    return v10;
  }

  return result;
}

BOOL sub_27448CE8C()
{
  v0 = sub_27448CC38();
  v1 = sub_2744896FC(*MEMORY[0x277D7D040], v0);

  result = 0;
  if (!v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      if ([v2 isTimePickerParameter])
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_27448CF18@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CF48, &qword_27464F498);
  MEMORY[0x28223BE20](v3);
  v5 = (v22 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CF50, &qword_27464F4A0);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  if (sub_27448CE8C() && (v9 = *v1, objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v12 = *(v1 + 8);
    type metadata accessor for ParameterStateStore();
    v22[1] = a1;
    sub_27448E730(&qword_28094B550, 255, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);
    v13 = v9;
    swift_retain_n();
    v22[0] = v13;
    v14 = sub_27463950C();
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_27448DF08;
    *(v17 + 24) = v12;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_274458A90;
    *(v18 + 24) = v12;
    KeyPath = swift_getKeyPath();
    v23[0] = 0;
    v20 = swift_getKeyPath();
    v23[88] = 0;
    __src[0] = v11;
    __src[1] = v14;
    __src[2] = v16;
    __src[3] = sub_274458A60;
    __src[4] = v17;
    __src[5] = sub_274458A98;
    __src[6] = v18;
    __src[7] = KeyPath;
    LOBYTE(__src[8]) = v23[0];
    __src[9] = v20;
    LOBYTE(__src[10]) = 0;
    memcpy(v8, __src, 0x51uLL);
    swift_storeEnumTagMultiPayload();

    sub_27448E02C(__src, v23);
    sub_27448DEB4();
    sub_27440CA78(&unk_28094CF60, &qword_28094CF48, &qword_27464F498, &protocol conformance descriptor for ParameterLayoutView<A>);
    sub_274639DDC();

    return sub_27448E064(__src);
  }

  else
  {
    sub_27448D2C8(v5);
    sub_274412C20(v5, v8, &qword_28094CF48, &qword_27464F498);
    swift_storeEnumTagMultiPayload();
    sub_27448DEB4();
    sub_27440CA78(&unk_28094CF60, &qword_28094CF48, &qword_27464F498, &protocol conformance descriptor for ParameterLayoutView<A>);
    sub_274639DDC();
    return sub_27440CB1C(v5, &qword_28094CF48, &qword_27464F498);
  }
}

uint64_t sub_27448D2C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CF48, &qword_27464F498);
  v5 = v4[14];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[15];
  *v6 = swift_getKeyPath();
  *(v6 + 4) = 0;
  v7 = a1 + v4[16];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = a1 + v4[17];
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v10 = v3;
  sub_27444A564(v10);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *a1 = sub_27463950C();
  a1[1] = v11;
  v12 = [v10 localizedLabel];
  v13 = sub_27463B6AC();
  v15 = v14;

  v16 = [v10 localizedDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_27463B6AC();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  a1[2] = v13;
  a1[3] = v15;
  a1[4] = v18;
  a1[5] = v20;
  v21 = a1 + v4[12];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = v4[11];

  result = sub_27444ACA0(v10, 0, 4, 0, 0, a1 + v22);
  *(a1 + v4[13]) = 0;
  return result;
}

void *sub_27448D520@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x51uLL);
  v3 = sub_274639B2C();
  v9 = 0;
  sub_27448D604(__dst, __src);
  memcpy(v11, __src, 0x81uLL);
  memcpy(v12, __src, 0x81uLL);
  sub_274412C20(v11, v6, &qword_28094CFC8, &qword_27464F898);
  sub_27440CB1C(v12, &qword_28094CFC8, &qword_27464F898);
  memcpy(&v8[7], v11, 0x81uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x88uLL);
}

uint64_t sub_27448D604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v17 = *(a1 + 8);
  v18 = v3;
  v19 = *(a1 + 40);
  v4 = *a1;
  sub_274412C20(&v17, v21, &qword_28094CFD0, &qword_27464F8A0);
  v5 = [v4 possibleUnits];
  v6 = sub_27463B81C();

  v7 = v17;
  v8 = v18;
  v9 = v19;
  sub_27463B0CC();
  sub_2746392FC();
  *&__src[56] = v14;
  v13[112] = 1;
  *__src = v7;
  *&__src[16] = v8;
  *&__src[32] = v9;
  *&__src[48] = v6;
  *&__src[72] = v15;
  *&__src[88] = v16;
  memcpy(&v13[7], __src, 0x68uLL);
  v12[104] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  memcpy((a2 + 9), v13, 0x6FuLL);
  v10 = v15;
  v23 = v14;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v21[0] = v7;
  v21[1] = v8;
  v21[2] = v9;
  v22 = v6;
  v24 = v10;
  v25 = v16;
  sub_274412C20(__src, v12, &qword_28094CFD8, &qword_27464F8A8);
  return sub_27440CB1C(v21, &qword_28094CFD8, &qword_27464F8A8);
}

char *sub_27448D7A8()
{
  v1 = v0[1];
  v41 = *v0;
  v42 = v1;
  v43 = v0[2];
  v44 = *(v0 + 6);
  type metadata accessor for DurationPickerView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = v42;
  v4 = v43;
  (v42)(v40);
  v5 = v40[0];
  v6 = 0.0;
  if (v40[0] && (v7 = [v40[0] magnitudeState], v5, v7) && (v8 = objc_msgSend(v7, sel_decimalNumber), v7, v8))
  {
    [v8 doubleValue];
    v6 = v9;

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v3(v40);
  if (v40[0] && (sub_2744A4BEC(v40[0]), v11))
  {
    v12 = sub_27463B66C();

    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      v14 = sub_27463B6AC();
      OUTLINED_FUNCTION_8_8();
      v15 = sub_27463B6AC();
      if (v14 == v15 && v10 == v16)
      {
      }

      else
      {
        v18 = OUTLINED_FUNCTION_6_7(v14, v16, v15);
        v19 = v12;

        if ((v18 & 1) == 0)
        {
          v35 = sub_27463B6AC();
          OUTLINED_FUNCTION_8_8();
          v36 = sub_27463B6AC();
          if (v35 == v36 && v10 == v37)
          {

            v34 = 60.0;
          }

          else
          {
            v39 = OUTLINED_FUNCTION_6_7(v35, v37, v36);

            v34 = 60.0;
            if ((v39 & 1) == 0)
            {
              v34 = 1.0;
            }
          }

          goto LABEL_23;
        }
      }

      v34 = 3600.0;
LABEL_23:
      v27 = v6 * v34;
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_27463BA1C();
  v20 = sub_27463B66C();

  v21 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

  v22 = sub_27463B6AC();
  v24 = v23;
  objc_allocWithZone(MEMORY[0x277D7C788]);
  sub_27448E7D0(&v41, v40);
  v25 = v21;
  v26 = sub_2744A4A84(v21, v22, v24);
  v40[0] = v26;
  v4(v40);

  sub_27448E808(&v41);
  v27 = 300.0;
LABEL_20:
  sub_2744CEAF0(v27);

  v28 = swift_allocObject();
  *(v28 + 64) = v44;
  v29 = v43;
  *(v28 + 32) = v42;
  *(v28 + 48) = v29;
  *(v28 + 16) = v41;
  v30 = &v2[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange];
  v31 = *&v2[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange];
  v32 = *&v2[OBJC_IVAR____TtC14WorkflowEditor18DurationPickerView_onDurationChange + 8];
  *v30 = sub_27448E838;
  v30[1] = v28;
  sub_27448E7D0(&v41, v40);
  sub_274406A94(v31, v32);
  return v2;
}

uint64_t sub_27448DB3C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a1;
  sub_27463BA1C();
  v5 = sub_27463B66C();

  v6 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

  v7 = **(&unk_279EDB558 + v4);
  v8 = sub_27463B6AC();
  v10 = v9;
  objc_allocWithZone(MEMORY[0x277D7C788]);
  v11 = v7;
  sub_27448E7D0(a2, v16);
  v12 = v6;
  v13 = sub_2744A4A84(v6, v8, v10);
  v14 = *(a2 + 32);
  v16[0] = v13;
  v14(v16);

  return sub_27448E808(a2);
}

uint64_t sub_27448DCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27448E840();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_27448DD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27448E840();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27448DD6C(uint64_t a1)
{
  sub_27448E840();
  sub_274639D9C();
  __break(1u);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27448DDE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_27448DE20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27448DEB4()
{
  result = qword_28094CF58;
  if (!qword_28094CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF58);
  }

  return result;
}

uint64_t sub_27448DF10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();
  v5 = [a3 negateText_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_27463B6AC();

  return v6;
}

uint64_t sub_27448DF90(void *a1)
{
  v1 = [a1 supportedVariableTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for WFVariableType(0);
  sub_27448E730(&qword_28094BAE0, 255, type metadata accessor for WFVariableType, &unk_274646ED4);
  OUTLINED_FUNCTION_5_0();
  v3 = sub_27463BA4C();

  return v3;
}

unint64_t sub_27448E094()
{
  result = qword_28094CF80;
  if (!qword_28094CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CF80);
  }

  return result;
}

void sub_27448E0E8(id result)
{
  if (result != 2)
  {
    sub_27448E0F8(result);
  }
}

void sub_27448E0F8(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27448E184()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27444C34C;
  v2 = OUTLINED_FUNCTION_5_0();

  return v3(v2);
}

uint64_t sub_27448E24C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_27448E28C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27448E310()
{
  result = qword_28094CFA8;
  if (!qword_28094CFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CFB0, &qword_27464F7E8);
    sub_27448DEB4();
    sub_27440CA78(&unk_28094CF60, &qword_28094CF48, &qword_27464F498, &protocol conformance descriptor for ParameterLayoutView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094CFA8);
  }

  return result;
}

uint64_t sub_27448E4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableTextEditor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_79Tm()
{

  sub_2743F459C(*(v0 + 96), *(v0 + 104));

  OUTLINED_FUNCTION_7_13();

  return swift_deallocObject();
}

unint64_t sub_27448E5B8()
{
  result = qword_28094D018;
  if (!qword_28094D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CFE8, &qword_27464F8B8);
    sub_27448E644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D018);
  }

  return result;
}

unint64_t sub_27448E644()
{
  result = qword_28094D020;
  if (!qword_28094D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094CFE0, &qword_27464F8B0);
    sub_27448E730(&qword_28094D028, 255, type metadata accessor for VariableTextEditor, &unk_27465D2A0);
    sub_27440CA78(&unk_28094D030, &qword_28094BC80, &qword_27464FA00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D020);
  }

  return result;
}

uint64_t sub_27448E730(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27448E77C()
{
  result = qword_28094D040;
  if (!qword_28094D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D040);
  }

  return result;
}

unint64_t sub_27448E840()
{
  result = qword_28094D048;
  if (!qword_28094D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D048);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_15()
{

  return sub_27448E410(v0 + 192, v0 + 72);
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_27463C6BC();
}

void sub_27448E91C()
{
  OUTLINED_FUNCTION_6_8();
  v20 = MEMORY[0x277D84F90];
  sub_274453594();
  OUTLINED_FUNCTION_4_13();
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if (v3)
    {
      MEMORY[0x277C58B20](v5, v1);
    }

    else
    {
      if (v5 >= *(v17 + 16))
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_7_14();
    v6 = v2();
    if (v0)
    {

      return;
    }

    if (v6)
    {
      v7 = sub_27463C41C();
      OUTLINED_FUNCTION_1_13(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
      OUTLINED_FUNCTION_2_12();
      sub_27463C42C();
    }

    else
    {
    }

    ++v5;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_27448EA3C(uint64_t (*result)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v18 = *(a3 + 16);
  v7 = (a3 + 40);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v19[0] = v9;
    v19[1] = v10;

    v11 = v5(v19);
    if (v3)
    {

LABEL_15:

      return;
    }

    if (v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27445128C(0, *(v8 + 16) + 1, 1);
        v8 = v20;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_27445128C(v13 > 1, v14 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      v4 = a3;
      v5 = result;
    }

    else
    {
    }

    v7 += 2;
    ++v6;
  }

  __break(1u);
}

void sub_27448EBA8()
{
  OUTLINED_FUNCTION_6_8();
  v22 = MEMORY[0x277D84F90];
  sub_274453594();
  OUTLINED_FUNCTION_4_13();
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if (v3)
    {
      v6 = MEMORY[0x277C58B20](v5, v1);
    }

    else
    {
      if (v5 >= *(v19 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(v1 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_7_14();
    v8 = v2();
    if (v0)
    {

      return;
    }

    if (v8)
    {
      v9 = sub_27463C41C();
      OUTLINED_FUNCTION_1_13(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      OUTLINED_FUNCTION_2_12();
      sub_27463C42C();
    }

    else
    {
    }

    ++v5;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t WFTagFieldParameter.view(with:)(uint64_t a1)
{
  sub_27448ED4C(a1, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D050, &qword_27464FAF0);
  sub_27440CA78(&qword_28094D058, &qword_28094D050, &qword_27464FAF0, &unk_274656A70);
  return sub_27463AE9C();
}

double sub_27448ED4C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ParameterStateStore();
  sub_274492BE0(&qword_28094B550, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);

  v6 = sub_27463950C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_274492C28;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274458A90;
  *(v10 + 24) = a1;
  *&v36 = v6;
  *(&v36 + 1) = v8;
  *&v37 = sub_274458A60;
  *(&v37 + 1) = v9;
  *&v38 = sub_274458A98;
  *(&v38 + 1) = v10;
  swift_retain_n();
  v11 = sub_274465CC8();
  v13 = v12;
  v15 = v14;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274492BE0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *(a3 + 168) = sub_27463979C();
  *(a3 + 176) = v16;
  *(a3 + 184) = swift_getKeyPath();
  *(a3 + 192) = 0;
  *(a3 + 200) = swift_getKeyPath();
  *(a3 + 208) = 0;
  *(a3 + 216) = swift_getKeyPath();
  *(a3 + 224) = 0;
  *(a3 + 232) = swift_getKeyPath();
  *(a3 + 272) = 0;
  *(a3 + 280) = swift_getKeyPath();
  *(a3 + 288) = 0;
  sub_27463ACDC();
  *(a3 + 296) = v34;
  *(a3 + 304) = v35;
  sub_27463ACDC();
  *(a3 + 312) = v34;
  *(a3 + 320) = v35;
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v18 = a2;
  sub_27444A564(v18);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *a3 = sub_27463950C();
  *(a3 + 8) = v19;
  v20 = [v18 localizedLabel];
  v21 = sub_27463B6AC();
  v23 = v22;

  *(a3 + 16) = v21;
  *(a3 + 24) = v23;
  v24 = [v18 localizedDescription];
  if (v24)
  {
    v25 = v24;
    v26 = sub_27463B6AC();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(a3 + 32) = v26;
  *(a3 + 40) = v28;
  *(a3 + 48) = 1;
  *(a3 + 56) = v11;
  *(a3 + 64) = v13;
  *(a3 + 72) = v15;
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B570, &unk_27464B3D0));
  sub_27444A5F0(v18);
  sub_27440CA78(&qword_28094D138, &qword_28094B570, &unk_27464B3D0, &unk_274648AD8);
  v30 = sub_27463950C();
  v32 = v31;
  sub_27463ACDC();
  *(a3 + 80) = v30;
  *(a3 + 88) = v32;
  *(a3 + 96) = v36;
  *(a3 + 112) = v37;
  result = *&v38;
  *(a3 + 128) = v38;
  *(a3 + 144) = v34;
  *(a3 + 152) = v35;
  *(a3 + 160) = 0;
  return result;
}

uint64_t sub_27448F148(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_27448F188(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for TagPickerView(uint64_t a1)
{
  result = qword_28094D060;
  if (!qword_28094D060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27448F260(uint64_t a1)
{
  sub_27448F34C(319, &unk_28094D070, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_274431930();
    if (v2 <= 0x3F)
    {
      sub_27448F34C(319, &qword_28094D080, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_274464604(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27448F34C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27448F3BC@<X0>(uint64_t a1@<X8>)
{
  memcpy(v5, v1, sizeof(v5));
  *a1 = sub_274639B2C();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D120, &qword_27464FCD8);
  return sub_27448F428(v5, a1 + *(v3 + 44));
}

uint64_t sub_27448F428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v67 = sub_27463A0AC();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_2746396BC();
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949460, &unk_27464FCE0);
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v53 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949450, &qword_2746467A8);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v73 = &v53 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D128, &qword_27464FCF0);
  v61 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v60 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D130, &unk_27464FCF8);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v53 - v11;
  v12 = type metadata accessor for TagFieldHostView(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v68 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = *(a1 + 8);
  v19 = qword_28094A100;
  v20 = *(v18 + qword_28094A100);
  v21 = *(a1 + 32);
  v78 = *(a1 + 16);
  v79 = v21;
  v80 = *(a1 + 48);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B570, &unk_27464B3D0));
  v23 = v20;
  sub_2744927E0(&v78, v75);
  sub_27444A5F0(v23);
  sub_27440CA78(&qword_28094D138, &qword_28094B570, &unk_27464B3D0, &unk_274648AD8);
  v24 = sub_27463950C();
  v26 = v25;

  *v17 = v24;
  *(v17 + 1) = v26;
  v27 = v79;
  *(v17 + 1) = v78;
  *(v17 + 2) = v27;
  *(v17 + 3) = v80;
  *(v17 + 8) = swift_getKeyPath();
  v17[72] = 0;
  v28 = *(v13 + 36);
  *&v17[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  v29 = &v17[*(v13 + 40)];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274492BE0(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *v29 = sub_27463979C();
  v29[1] = v30;
  v31 = *(v18 + v19);
  sub_274492850();
  if (([v31 isKindOfClass_] & 1) == 0)
  {
    v32 = v71;
    v33 = v72;
    if (!sub_2744A63E0(*(v18 + v19)))
    {
      v47 = 1;
      goto LABEL_5;
    }
  }

  v34 = swift_allocObject();
  memcpy((v34 + 16), a1, 0x50uLL);
  sub_274492958(a1, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D160, &qword_27464FD68);
  sub_274492990();
  v35 = v55;
  sub_27463AD5C();
  v36 = v57;
  sub_2746396AC();
  v54 = sub_27440CA78(&unk_28094D190, &unk_280949460, &unk_27464FCE0, MEMORY[0x277CDF028]);
  v53 = sub_274492BE0(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v37 = v59;
  v38 = v62;
  sub_27463A69C();
  (*(v58 + 8))(v36, v38);
  (*(v56 + 8))(v35, v37);
  v74 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
  sub_27463AD0C();
  LODWORD(v58) = v76;
  v39 = swift_allocObject();
  memcpy((v39 + 16), a1, 0x50uLL);
  sub_274492958(a1, v75);
  v40 = sub_27463AD3C();
  v41 = v65;
  *v65 = v40;
  v42 = v66;
  v43 = v67;
  (*(v66 + 104))(v41, *MEMORY[0x277CDE248], v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949458, &unk_2746467B0);
  v75[0] = v37;
  v75[1] = v38;
  v76 = v54;
  v77 = v53;
  swift_getOpaqueTypeConformance2();
  sub_27440AF10();
  v44 = v64;
  v45 = v60;
  v46 = v73;
  sub_27463A6DC();

  (*(v42 + 8))(v41, v43);
  (*(v63 + 8))(v46, v44);
  v32 = v71;
  v33 = v72;
  (*(v61 + 32))(v71, v45, v72);
  v47 = 0;
LABEL_5:
  __swift_storeEnumTagSinglePayload(v32, v47, 1, v33);
  v48 = v68;
  sub_274492894(v17, v68, type metadata accessor for TagFieldHostView);
  v49 = v69;
  sub_2743F9D74(v32, v69);
  v50 = v70;
  sub_274492894(v48, v70, type metadata accessor for TagFieldHostView);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D158, &qword_27464FD60);
  sub_2743F9D74(v49, v50 + *(v51 + 48));
  sub_2743F9DDC(v32);
  sub_2744928F4(v17);
  sub_2743F9DDC(v49);
  return sub_2744928F4(v48);
}

uint64_t sub_27448FE78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27463AC2C();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA38, &unk_274649820) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA48, &unk_27464FD80) + 28);
  v5 = *MEMORY[0x277CE1048];
  v6 = sub_27463AC8C();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  sub_27463A3AC();
  sub_27463A3CC();
  v7 = sub_27463A42C();

  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D178, &unk_27464FD70) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  v10 = sub_27463AB1C();
  v11 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D160, &qword_27464FD68);
  v13 = (a1 + *(result + 36));
  *v13 = v11;
  v13[1] = v10;
  return result;
}

void *sub_274490028@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TagPickerView(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, v2, sizeof(__dst));
  v8 = sub_2744A63E0(*(__dst[1] + qword_28094A100));
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = swift_allocObject();
  memcpy((v10 + 16), v2, 0x50uLL);
  *v7 = v9;
  *(v7 + 1) = sub_274492B60;
  *(v7 + 2) = v10;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_274492958(__dst, __src);
  sub_27463ACDC();
  v11 = *&__src[1];
  *(v7 + 24) = __src[0];
  *(v7 + 5) = v11;
  v12 = *(v5 + 36);
  *&v7[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  swift_storeEnumTagMultiPayload();
  sub_27463B0CC();
  sub_27463973C();
  sub_2744920B8(v7, a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949458, &unk_2746467B0);
  return memcpy((a1 + *(v13 + 36)), __src, 0x70uLL);
}

uint64_t sub_274490234(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = a3[2];
  v21 = a3[1];
  v22 = v5;
  v23 = a3[3];
  sub_27463B9CC();
  sub_2744927E0(&v21, v20);
  v6 = sub_27463B9BC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = v22;
  *(v7 + 32) = v21;
  *(v7 + 48) = v9;
  *(v7 + 64) = v23;
  *(v7 + 80) = 44;
  *(v7 + 88) = 0xE100000000000000;
  sub_2744927E0(&v21, v20);
  v10 = sub_27463B9BC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v8;
  v12 = v22;
  *(v11 + 32) = v21;
  *(v11 + 48) = v12;
  *(v11 + 64) = v23;
  *(v11 + 80) = 44;
  *(v11 + 88) = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110, &qword_27464FCD0);
  sub_27463AF0C();
  v17 = v20[0];
  v18 = v20[1];
  v19 = v20[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1C0, &unk_27464FDC8);
  MEMORY[0x277C575F0](&v16);
  v13 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809504E0, &qword_27464BAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_27445C1F4(inited);
  v17 = v13;
  sub_27463AEBC();
  swift_bridgeObjectRelease_n();
}

void sub_274490484(uint64_t a1@<X2>, void *a4@<X8>)
{
  (*(a1 + 16))(&v21);
  v5 = v21;
  if (v21 && (v6 = [v21 value], v5, v6))
  {
    v7 = sub_27463B66C();
    v8 = [v6 componentsSeparatedByString_];

    v9 = sub_27463B81C();
    v10 = 0;
    v11 = *(v9 + 16);
    v12 = MEMORY[0x277D84F90];
LABEL_4:
    v13 = (v9 + 40 + 16 * v10);
    while (1)
    {
      if (v11 == v10)
      {

        goto LABEL_17;
      }

      if (v10 >= *(v9 + 16))
      {
        break;
      }

      ++v10;
      v15 = *(v13 - 1);
      v14 = *v13;
      v13 += 2;
      v16 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v16 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_27445128C(0, v12[2] + 1, 1);
          v12 = v21;
        }

        v19 = v12[2];
        v18 = v12[3];
        if (v19 >= v18 >> 1)
        {
          sub_27445128C(v18 > 1, v19 + 1, 1);
          v12 = v21;
        }

        v12[2] = v19 + 1;
        v20 = &v12[2 * v19];
        v20[4] = v15;
        v20[5] = v14;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_17:
    *a4 = v12;
  }
}

void sub_27449063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110, &qword_27464FCD0);
  sub_27440CA78(&unk_28094D1D0, &qword_28094D110, &qword_27464FCD0, MEMORY[0x277D83958]);
  sub_27463B58C();
  v7 = sub_27463B66C();

  v8 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

  v9 = v8;
  (*(a4 + 32))(&v9);
}

uint64_t sub_274490734@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_274638AFC();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_274639E7C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_27463955C();
  v63 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagPickerView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D088, &qword_27464FC48);
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D090, &qword_27464FC50);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v16 = &v50 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D098, &qword_27464FC58);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v50 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0A0, &unk_27464FC60);
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x28223BE20](v18);
  v60 = &v50 - v19;
  v20 = sub_2744910AC();
  KeyPath = swift_getKeyPath();
  sub_274492894(v2, v11, type metadata accessor for TagPickerView);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  sub_2744920B8(v11, v23 + v22);
  v71 = v23;
  v72 = v20;
  v68 = &v72;
  v69 = KeyPath;
  v70 = sub_27449211C;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D0B0, &unk_27464FC90);
  sub_274492438();
  sub_27463A49C();

  sub_27463954C();
  v24 = sub_27440CA78(&qword_28094D0C0, &qword_28094D088, &qword_27464FC48, MEMORY[0x277CDE5A0]);
  v25 = MEMORY[0x277CDD980];
  v26 = v53;
  sub_27463AAAC();
  v27 = v7;
  v28 = v26;
  (*(v63 + 8))(v27, v26);
  (*(v51 + 8))(v14, v12);
  v29 = *(v2 + 24);
  v63 = v2;
  v30 = *(v2 + 40);
  v76 = v29;
  v77 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463AD0C();
  v31 = v55;
  sub_274639E6C();
  v72 = v12;
  v73 = v28;
  v32 = v52;
  v74 = v24;
  v75 = v25;
  v33 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_27463A68C();

  (*(v56 + 8))(v31, v57);
  (*(v54 + 8))(v16, v32);
  sub_27463B70C("Choose", 6);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v35 = qword_28094BB00;
  v36 = sub_27463B66C();
  v37 = sub_27463B66C();

  v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

  v39 = sub_27463B6AC();
  v41 = v40;

  v72 = v39;
  v73 = v41;
  *&v76 = v32;
  *(&v76 + 1) = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_274412BBC();
  v44 = v60;
  v45 = v59;
  sub_27463A79C();

  (*(v58 + 8))(v33, v45);
  v46 = v64;
  v47 = sub_274638AEC();
  MEMORY[0x28223BE20](v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D0D8, &qword_27464FCA8);
  v72 = v45;
  v73 = MEMORY[0x277D837D0];
  v74 = v42;
  v75 = v43;
  swift_getOpaqueTypeConformance2();
  sub_27440CA78(&qword_28094D0E0, &qword_28094D0D8, &qword_27464FCA8, MEMORY[0x277CDD978]);
  v48 = v62;
  sub_27463A5EC();
  (*(v66 + 8))(v46, v67);
  return (*(v61 + 8))(v44, v48);
}

uint64_t sub_2744910AC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v10 = *(v0 + 24);
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463ACEC();

  v4 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v4 = v8[5] & 0xFFFFFFFFFFFFLL;
  }

  v5 = *v0;
  if (v4)
  {
    MEMORY[0x28223BE20](v3);
    v8[2] = v1;

    sub_27448EA3C(sub_2744927C0, v8, v5);
    return v6;
  }

  else
  {
  }

  return v5;
}

uint64_t sub_27449119C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for TagPickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v13[0] = v8;
  v13[1] = v7;
  sub_274492894(a2, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TagPickerView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_2744920B8(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v8;
  v11[1] = v7;
  sub_274412BBC();
  swift_bridgeObjectRetain_n();
  return sub_27463AD7C();
}

uint64_t sub_274491304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2746396DC();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(a1 + 8))(a2, a3, v8);
  type metadata accessor for TagPickerView(0);
  sub_2744C68E8();
  MEMORY[0x277C575F0](v7);
  sub_2746396CC();
  sub_27463AEBC();
  return sub_2744926AC(v10);
}

uint64_t sub_27449143C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D0E8, &qword_27464FCB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D0F0, &qword_27464FCB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0, &unk_27464FCC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D0A0, &unk_27464FC60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D098, &qword_27464FC58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D090, &qword_27464FC50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D088, &qword_27464FC48);
  sub_27463955C();
  sub_27440CA78(&qword_28094D0C0, &qword_28094D088, &qword_27464FC48, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_274412BBC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  sub_27440CA78(&qword_28094A700, &unk_28094D100, &qword_274649520, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2746394EC();
}

uint64_t sub_2744916DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a1;
  v27 = a2;
  v30 = a3;
  v3 = sub_274639AEC();
  v26[0] = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0F0, &qword_27464FCB8);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0A0, &unk_27464FC60);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D098, &qword_27464FC58);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D090, &qword_27464FC50);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D088, &qword_27464FC48);
  v16 = sub_27463955C();
  v17 = sub_27440CA78(&qword_28094D0C0, &qword_28094D088, &qword_27464FC48, MEMORY[0x277CDE5A0]);
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = MEMORY[0x277CDD980];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v14;
  v33 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_274412BBC();
  v32 = v13;
  v33 = MEMORY[0x277D837D0];
  v34 = v19;
  v35 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  sub_27463A8AC();
  (*(v4 + 8))(v6, v26[0]);
  v31 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A6F0, &unk_27464FCC0);
  v32 = v12;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100, &qword_274649520);
  v23 = sub_27440CA78(&qword_28094A700, &unk_28094D100, &qword_274649520, MEMORY[0x277CDD7A8]);
  v32 = v22;
  v33 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_27463AA0C();
  return (*(v29 + 8))(v11, v24);
}

uint64_t sub_274491AAC(uint64_t a1)
{
  v2 = sub_274639EBC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D100, &qword_274649520);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_274639E9C();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0, &unk_274646750);
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
  sub_27463925C();
  v7 = sub_27440CA78(&qword_28094A700, &unk_28094D100, &qword_274649520, MEMORY[0x277CDD7A8]);
  MEMORY[0x277C56680](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_274491C98(uint64_t a1)
{
  v2 = type metadata accessor for TagPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  sub_27463B70C("Cancel", 6, v5);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v6 = qword_28094BB00;
  v7 = sub_27463B66C();
  v8 = sub_27463B66C();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = sub_27463B6AC();
  v12 = v11;

  v16[0] = v10;
  v16[1] = v12;
  sub_274492894(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TagPickerView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_2744920B8(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_274412BBC();
  return sub_27463AD7C();
}

uint64_t sub_274491E98()
{
  v0 = sub_2746396DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  type metadata accessor for TagPickerView(0);
  sub_2744C68E8();
  MEMORY[0x277C575F0](v1);
  sub_2746396CC();
  sub_27463AEBC();
  return sub_2744926AC(v3);
}

uint64_t sub_274491FAC(uint64_t *a1, uint64_t a2)
{
  sub_274412BBC();
  sub_27463C0DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463ACEC();
  sub_27463C0DC();

  v2 = sub_27463C12C();

  return v2 & 1;
}

uint64_t sub_2744920B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27449211C(uint64_t *a1)
{
  v3 = *(type metadata accessor for TagPickerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27449119C(a1, v4);
}

uint64_t sub_27449219C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110, &qword_27464FCD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809493A0, &unk_274646750);
  sub_27440CA78(&qword_28094D118, &qword_28094D110, &qword_27464FCD0, MEMORY[0x277D83980]);
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
  return sub_27463AF7C();
}

uint64_t sub_274492300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_27449235C(uint64_t a1)
{
  v2 = sub_27463AC8C();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2746397CC();
}

unint64_t sub_274492438()
{
  result = qword_28094D0B8;
  if (!qword_28094D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D0B0, &unk_27464FC90);
    sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D0B8);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  type metadata accessor for TagPickerView(0);
  OUTLINED_FUNCTION_5_16();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();

  if (v3 == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v6 + 8))(v4 + v5);
  }

  return swift_deallocObject();
}

uint64_t sub_27449264C()
{
  type metadata accessor for TagPickerView(0);

  return sub_274491E98();
}

uint64_t sub_2744926AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274492730()
{
  v1 = *(type metadata accessor for TagPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_274491304(v0 + v2, v4, v5);
}

uint64_t sub_2744927E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C100, &qword_27464CD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_274492850()
{
  result = qword_28094D150;
  if (!qword_28094D150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094D150);
  }

  return result;
}

uint64_t sub_274492894(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2744928F4(uint64_t a1)
{
  v2 = type metadata accessor for TagFieldHostView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274492990()
{
  result = qword_28094D168;
  if (!qword_28094D168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D160, &qword_27464FD68);
    sub_274492A48();
    sub_27440CA78(&unk_28094D180, &qword_28094C600, &qword_27464FD90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D168);
  }

  return result;
}

unint64_t sub_274492A48()
{
  result = qword_28094D170;
  if (!qword_28094D170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D178, &unk_27464FD70);
    sub_274434B6C();
    sub_27440CA78(&unk_28094AA00, &qword_28094CC80, &qword_27464EA50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D170);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_42Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274492BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_27463C46C();
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_27463C47C();
}

uint64_t OUTLINED_FUNCTION_3_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t WFHomeServicePickerParameter.view(with:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D1F0, &qword_27464FF20);
  sub_27440CA78(&unk_28094D1F8, &qword_28094D1F0, &qword_27464FF20, &unk_27464BD40);
  return sub_27463AE9C();
}

uint64_t sub_274492DD8@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D218, &qword_27464FFB0);
  v6 = v5[14];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v7 = a3 + v5[15];
  *v7 = swift_getKeyPath();
  *(v7 + 4) = 0;
  v8 = a3 + v5[16];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v5[17];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v10 = a1;
  sub_27444A564(v10);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *a3 = sub_27463950C();
  a3[1] = v11;
  v12 = [v10 localizedLabel];
  v13 = sub_27463B6AC();
  v15 = v14;

  v16 = [v10 localizedDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_27463B6AC();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  a3[2] = v13;
  a3[3] = v15;
  a3[4] = v18;
  a3[5] = v20;
  v21 = a3 + v5[12];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = v5[11];
  v23 = v10;

  result = sub_27444ACB4(v23, 0, 4, 0, 0, a3 + v22);
  *(a3 + v5[13]) = 0;
  return result;
}

id WFHomeServicePickerParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274466DA4();
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (a1)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = [v2 localizedLabelForState_];
      [v12 populateWithString_];
      swift_unknownObjectRelease();
    }
  }

  return v12;
}

id sub_27449312C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFHomeServicePickerParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27449319C()
{
  static WFHomeServicePickerParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2744931C4(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v5 = v2;
  sub_2744076C8(v5, 0);
  v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_2032D7CE8BA73970A5B3569FA036E63530HomeServicePickerSummaryEditor_modal];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_2032D7CE8BA73970A5B3569FA036E63530HomeServicePickerSummaryEditor_modal] = v7;
  v8 = v7;

  sub_27440A42C(a2);
}

uint64_t sub_2744932E0()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_274493378, v3, v2);
}

uint64_t sub_274493378()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_274493494;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_11;
  v0[7].receiver = v2;
  v3 = type metadata accessor for HomeServicePickerSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_274493494()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_274493598, v2, v1);
}

uint64_t sub_274493598()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_2032D7CE8BA73970A5B3569FA036E63530HomeServicePickerSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_274493690(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274493728, v4, v3);
}

uint64_t sub_274493728()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2744932E0();
}

id sub_2744937D4()
{
  result = [v0 initialState];
  if (result)
  {
    v2 = result;
    v3 = [result homeIdentifier];

    v4 = sub_27463B6AC();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277D7C4C0]);
    return sub_274497A08(0, v4, v6);
  }

  return result;
}

id sub_2744938EC(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_2032D7CE8BA73970A5B3569FA036E63530HomeServicePickerSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for HomeServicePickerSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2744939A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeServicePickerSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274493A14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_274493690(v2, v3);
}

uint64_t sub_274493AD8()
{
  result = sub_27463B66C();
  qword_280965E78 = result;
  return result;
}

id sub_274493B10()
{
  v0 = sub_274493C14(&qword_2809492D0, &qword_280965E78, sub_274493AD8);

  return v0;
}

uint64_t sub_274493B58()
{
  result = sub_27463B66C();
  qword_280965E80 = result;
  return result;
}

id sub_274493B94()
{
  v0 = sub_274493C14(&qword_2809492D8, &qword_280965E80, sub_274493B58);

  return v0;
}

uint64_t sub_274493BDC()
{
  result = sub_27463B66C();
  qword_280965E88 = result;
  return result;
}

id sub_274493C14(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

id sub_274493C60()
{
  v0 = sub_274493C14(&qword_2809492E0, &qword_280965E88, sub_274493BDC);

  return v0;
}

uint64_t WFConditionalSubjectParameter.moduleSummarySlots(for:)(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
    OUTLINED_FUNCTION_28_1();
    swift_unknownObjectRetain();
    v4 = [v1 localizedLabel];
    v5 = sub_27463B6AC();
    v7 = v6;

    v8 = sub_27444C12C(v1);
    v10 = v9;
    if (qword_2809492D0 != -1)
    {
      OUTLINED_FUNCTION_0_21(&qword_2809492D0);
    }

    v11 = sub_27444AEE4(v5, v7, v8, v10, qword_280965E78);
    v12 = [v3 variable];
    [v11 populateWith_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_274648560;
    *(v13 + 32) = v11;
    swift_unknownObjectRelease();
    return v13;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v58 = MEMORY[0x277D84F90];
    sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
    swift_unknownObjectRetain();
    v16 = [v1 localizedLabel];
    v17 = sub_27463B6AC();
    v19 = v18;

    sub_27463B70C("Home Accessory", 14);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v20 = qword_28094BB00;
    v21 = sub_27463B66C();
    v22 = sub_27463B66C();

    v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

    v24 = sub_27463B6AC();
    v26 = v25;

    if (qword_2809492D8 != -1)
    {
      OUTLINED_FUNCTION_3_17(&qword_2809492D8);
    }

    v27 = sub_27444AEE4(v17, v19, v24, v26, qword_280965E80);
    MEMORY[0x277C57F30]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_27463B85C();
    }

    sub_27463B8AC();
    v13 = v58;
    v28 = [v15 service];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 name];
      v31 = sub_27463B6AC();
      v33 = v32;

      sub_274457D08(v31, v33, v27);
      sub_27463B70C("Characteristic", 14);
      v34 = sub_27463B66C();
      v35 = sub_27463B66C();

      v36 = [v20 localizedStringForKey:v34 value:v35 table:0];

      v37 = sub_27463B6AC();
      v39 = v38;

      if (qword_2809492E0 != -1)
      {
        swift_once();
      }

      v40 = sub_27444AEE4(0, 0, v37, v39, qword_280965E88);
      v41 = [v15 characteristic];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 localizedDescription];
        v44 = sub_27463B6AC();
        v46 = v45;

        if (WFHMCharacteristicIsBooleanFormat())
        {
          [v15 negatesValue];
          v47 = WFBooleanLocalizedDescriptionForHMCharacteristic();
          if (v47)
          {
            v48 = v47;

            v44 = sub_27463B6AC();
            v46 = v49;
          }
        }

        sub_274457D08(v44, v46, v40);
      }

      MEMORY[0x277C57F30]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v13 = v58;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_274648560;
    sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
    v50 = [v1 localizedLabel];
    v51 = sub_27463B6AC();
    v53 = v52;

    v54 = sub_27444C12C(v1);
    v56 = v55;
    if (qword_2809492D0 != -1)
    {
      OUTLINED_FUNCTION_0_21(&qword_2809492D0);
    }

    *(v13 + 32) = sub_27444AEE4(v51, v53, v54, v56, qword_280965E78);
  }

  return v13;
}

id sub_27449432C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = swift_unknownObjectRetain();
  v5 = WFConditionalSubjectParameter.moduleSummarySlots(for:)(v4);
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
    v6 = sub_27463B7FC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2744943D0()
{
  static WFConditionalSubjectParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_2744943F8(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_27463B9CC();
  v9 = a1;
  v10 = v2;
  v11 = a2;
  v12 = sub_27463B9BC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  sub_274512004();
}

uint64_t sub_27449451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_27463B9CC();
  v6[21] = sub_27463B9BC();
  v8 = sub_27463B96C();
  v6[22] = v8;
  v6[23] = v7;

  return MEMORY[0x2822009F8](sub_2744945B8, v8, v7);
}

uint64_t sub_2744945B8()
{
  OUTLINED_FUNCTION_42_1();
  v1 = [objc_opt_self() sharedManager];
  v0[24] = v1;
  v0[2] = v0;
  v0[3] = sub_2744946C4;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  OUTLINED_FUNCTION_2_13(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_14();
  [v1 ensureHomesAreLoadedWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2744946C4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v1 = v0;
  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x2822009F8](sub_2744947C0, v4, v3);
}

uint64_t sub_2744947C0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = [v2 key];
  if (qword_2809492D0 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_2809492D0);
  }

  v4 = sub_27463B6AC();
  v6 = v5;
  v7 = sub_27463B6AC();
  if (v4 != v7 || v6 != v8)
  {
    v10 = OUTLINED_FUNCTION_8_9(v7);

    if (v10)
    {
      goto LABEL_17;
    }

    v3 = [*(v0 + 144) key];
    if (qword_2809492D8 != -1)
    {
      OUTLINED_FUNCTION_3_17(&qword_2809492D8);
    }

    v11 = sub_27463B6AC();
    v13 = v12;
    v14 = sub_27463B6AC();
    if (v11 != v14 || v13 != v15)
    {
      v17 = OUTLINED_FUNCTION_8_9(v14);

      if ((v17 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

LABEL_17:
  v18 = sub_274494A14();
  if (v18)
  {
    v19 = v18;
    sub_274496C54(*(v0 + 160), v18);

    goto LABEL_20;
  }

LABEL_19:
  [*(v0 + 152) completeEditing];
LABEL_20:
  OUTLINED_FUNCTION_92();

  return v20();
}

id sub_274494A14()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_88919392127B4CC4A9712067A850793640ConditionalSubjectParameterSummaryEditor_pendingHome];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 initialState];
    if (!v3 || (sub_274497E64(v3, &selRef_homeIdentifier), !v4) || (v5 = [objc_opt_self() sharedManager], v6 = sub_27463B66C(), , v2 = objc_msgSend(v5, sel_homeWithIdentifier_, v6), v5, v6, !v2))
    {
      v2 = 0;
    }
  }

  v7 = v1;
  return v2;
}

uint64_t sub_274494AF4()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_274494B8C, v3, v2);
}

uint64_t sub_274494B8C()
{
  OUTLINED_FUNCTION_42_1();
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_274494CA4;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_60;
  v0[7].receiver = v2;
  v3 = type metadata accessor for ConditionalSubjectParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_274494CA4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v1 = v0;
  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x2822009F8](sub_274494DA0, v4, v3);
}

uint64_t sub_274494DA0()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_88919392127B4CC4A9712067A850793640ConditionalSubjectParameterSummaryEditor_homeServiceModal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  OUTLINED_FUNCTION_92();

  return v4();
}

uint64_t sub_274494E94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_274494F2C, v4, v3);
}

uint64_t sub_274494F2C()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_274494FD8;

  return sub_274494AF4();
}

uint64_t sub_274494FD8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_70();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_92();

  return v6();
}

uint64_t sub_274495100(void *a1)
{
  v2 = [a1 key];
  if (qword_2809492D0 != -1)
  {
    swift_once();
  }

  v3 = sub_27463B6AC();
  v5 = v4;
  if (v3 == sub_27463B6AC() && v5 == v6)
  {

    goto LABEL_16;
  }

  v8 = sub_27463C6BC();

  if (v8)
  {
LABEL_16:
    v15 = 1;
    return v15 & 1;
  }

  v9 = [a1 key];
  if (qword_2809492D8 != -1)
  {
    swift_once();
  }

  v10 = sub_27463B6AC();
  v12 = v11;
  if (v10 == sub_27463B6AC() && v12 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_27463C6BC();
  }

  return v15 & 1;
}

id sub_2744952FC(void *a1)
{
  v3 = [a1 key];
  if (qword_2809492D0 != -1)
  {
    swift_once();
  }

  v4 = sub_27463B6AC();
  v6 = v5;
  if (v4 == sub_27463B6AC() && v6 == v7)
  {
    goto LABEL_16;
  }

  v9 = sub_27463C6BC();

  if (v9)
  {
    goto LABEL_17;
  }

  v3 = [a1 key];
  if (qword_2809492D8 != -1)
  {
    swift_once();
  }

  v10 = sub_27463B6AC();
  v12 = v11;
  if (v10 == sub_27463B6AC() && v12 == v13)
  {
LABEL_16:

    goto LABEL_17;
  }

  v15 = sub_27463C6BC();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ConditionalSubjectParameterSummaryEditor();
  return objc_msgSendSuper2(&v17, sel_clearButtonMenuItemForSlotWithIdentifier_, a1);
}

uint64_t sub_274495538(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_274637EEC();
  v132 = *(v6 - 8);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 key];
  if (qword_2809492D0 != -1)
  {
    swift_once();
  }

  v11 = sub_27463B6AC();
  v13 = v12;
  if (v11 == sub_27463B6AC() && v13 == v14)
  {

    goto LABEL_17;
  }

  v16 = sub_27463C6BC();

  if (v16)
  {
    goto LABEL_17;
  }

  v17 = [a1 key];
  if (qword_2809492D8 != -1)
  {
    swift_once();
  }

  v18 = sub_27463B6AC();
  v20 = v19;
  if (v18 == sub_27463B6AC() && v20 == v21)
  {

    v24 = &selRef_dropTargetUpdated;
  }

  else
  {
    v23 = sub_27463C6BC();

    v24 = &selRef_dropTargetUpdated;
    if ((v23 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v39 = [v3 v24[206]];
  if (!v39 || (sub_274497E64(v39, &selRef_homeIdentifier), !v40) || (, a2 == 1))
  {
LABEL_17:
    v25 = objc_opt_self();
    v26 = [v25 sharedManager];
    v27 = [v25 sharedManager];
    v28 = [v27 hasLoadedHomes];

    if (v28)
    {
      v29 = [v26 homes];
      sub_274412734(0, &qword_28094D268, 0x277CD1A60);
      v30 = sub_27463B81C();

      v31 = sub_27449631C(v30, v3, a1);

      if (v31 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
        v32 = sub_27463C57C();
      }

      else
      {
        sub_27463C6CC();
        v32 = v31;
      }

      sub_274412734(0, &qword_28094D270, 0x277D7D7D0);
      v33 = sub_274446490(v32);
      [v33 setStyle_];
    }

    else
    {
      sub_274412734(0, &qword_28094D260, 0x277D7D740);
      v34 = swift_allocObject();
      v34[2] = v26;
      v34[3] = v3;
      v34[4] = a1;
      v26 = v26;
      v35 = v3;
      v36 = a1;
      v33 = sub_27463BE4C();
      [v33 setEstimatedItemCount_];
      [v33 setMayContainSelectedItem_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_274648560;
    *(v37 + 32) = v33;

    return v37;
  }

LABEL_28:
  v41 = [a1 key];
  if (qword_2809492E0 != -1)
  {
    swift_once();
  }

  v42 = sub_27463B6AC();
  v44 = v43;
  v46 = v42 == sub_27463B6AC() && v44 == v45;
  v47 = v3;
  if (v46)
  {
  }

  else
  {
    v48 = sub_27463C6BC();

    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  v49 = [v3 v24[206]];
  if (!v49)
  {
    return 0;
  }

  v50 = v49;
  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (!v51 || (v52 = v51, (v53 = [v51 service]) == 0))
  {

    return 0;
  }

  v54 = v53;
  v55 = [v52 home];
  if (!v55)
  {

    return 0;
  }

  v56 = v55;
  v120 = v50;
  v57 = [v55 uuid];

  sub_274637ECC();
  v130 = sub_274637E9C();
  v131 = v58;
  (*(v132 + 8))(v9, v6);
  v121 = v52;
  v59 = [v52 characteristic];
  v60 = WFSupportedCharacteristicsForHMService();
  v61 = MEMORY[0x277D84F90];
  if (v60)
  {
    v62 = v60;
    sub_274412734(0, &unk_28094D250, 0x277CD1970);
    v63 = sub_27463B81C();
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  v133 = v61;
  result = sub_274453594();
  v126 = v59;
  if (!result)
  {
    v125 = v61;
LABEL_107:

    v119 = v125;
    if (v125 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
      v37 = sub_27463C57C();

      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_27463C6CC();

      return v119;
    }

    return v37;
  }

  if (result >= 1)
  {
    v64 = 0;
    v127 = v63 & 0xC000000000000001;
    v124 = v54;
    v125 = MEMORY[0x277D84F90];
    v128 = result;
    v129 = v63;
    v123 = v3;
    while (1)
    {
      if (v127)
      {
        v65 = MEMORY[0x277C58B20](v64, v63);
      }

      else
      {
        v65 = *(v63 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = [v65 metadata];
      if (!v67)
      {
        goto LABEL_64;
      }

      v68 = sub_274497E64(v67, &selRef_manufacturerDescription);
      v70 = v69;
      if (!v69)
      {
        v132 = 0;
        goto LABEL_65;
      }

      v71 = v68;
      v72 = [v66 localizedDescription];
      v73 = sub_27463B6AC();
      v75 = v74;

      if (v71 == v73 && v70 == v75)
      {
        break;
      }

      v77 = sub_27463C6BC();

      if (v77)
      {
        goto LABEL_63;
      }

      v132 = v71;
LABEL_65:
      v78 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v79 = swift_allocObject();
      v79[2] = v78;
      v79[3] = v54;
      v80 = v130;
      v81 = v131;
      v79[4] = v66;
      v79[5] = v80;
      v79[6] = v81;
      v82 = v54;
      v83 = v66;

      if (!WFHMCharacteristicIsBooleanFormat())
      {
        v90 = v54;
        v91 = [v83 localizedDescription];
        v92 = sub_27463B6AC();
        v94 = v93;

        v95 = v126;
        v99 = 0;
        if (v126)
        {
          sub_274412734(0, &unk_28094D250, 0x277CD1970);
          v96 = v83;
          v97 = v95;
          v98 = sub_27463BF7C();

          if (v98)
          {
            v99 = 1;
          }
        }

        v100 = swift_allocObject();
        *(v100 + 16) = sub_274497DFC;
        *(v100 + 24) = v79;
        objc_allocWithZone(MEMORY[0x277D7D790]);

        sub_274497AF8(v92, v94, v132, v70, v99, sub_27449834C, v100);
        MEMORY[0x277C57F30]();
        if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_27463B85C();
        }

        sub_27463B8AC();

        v125 = v133;
        v54 = v90;
        v47 = v123;
        goto LABEL_104;
      }

      v84 = v47;
      v85 = WFBooleanLocalizedDescriptionForHMCharacteristic();
      if (v85)
      {
        v86 = v85;
        v87 = sub_27463B6AC();
        v89 = v88;
      }

      else
      {
        v87 = 0;
        v89 = 0;
      }

      v101 = WFBooleanLocalizedDescriptionForHMCharacteristic();
      if (v101)
      {
        v102 = v101;
        v103 = sub_27463B6AC();
        v105 = v104;

        if (v89)
        {
          if (v105)
          {
            v122 = v103;
            v125 = v105;
            v106 = v126;
            if (v126)
            {
              sub_274412734(0, &unk_28094D250, 0x277CD1970);
              v107 = v83;
              v108 = v106;
              v109 = sub_27463BF7C();

              if ((v109 & 1) != 0 && ![v121 negatesValue])
              {
                v110 = 1;
                goto LABEL_93;
              }
            }

            else
            {
              v111 = v83;
            }

            v110 = 0;
LABEL_93:
            v112 = swift_allocObject();
            *(v112 + 16) = sub_274497DFC;
            *(v112 + 24) = v79;
            objc_allocWithZone(MEMORY[0x277D7D790]);

            sub_274497AF8(v87, v89, v132, v70, v110, sub_274497E0C, v112);
            MEMORY[0x277C57F30]();
            if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_27463B85C();
            }

            sub_27463B8AC();
            v113 = v126;
            v47 = v84;
            if (v126)
            {
              sub_274412734(0, &unk_28094D250, 0x277CD1970);
              v114 = v113;
              v115 = sub_27463BF7C();

              v116 = v122;
              v54 = v124;
              if (v115 & 1) != 0 && ([v121 negatesValue])
              {
                v117 = 1;
LABEL_101:
                v118 = swift_allocObject();
                *(v118 + 16) = sub_274497DFC;
                *(v118 + 24) = v79;
                objc_allocWithZone(MEMORY[0x277D7D790]);

                sub_274497AF8(v116, v125, v132, v70, v117, sub_274497E38, v118);
                MEMORY[0x277C57F30]();
                if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_27463B85C();
                }

                sub_27463B8AC();

                v125 = v133;
                goto LABEL_104;
              }
            }

            else
            {

              v116 = v122;
              v54 = v124;
            }

            v117 = 0;
            goto LABEL_101;
          }

          v47 = v84;
LABEL_89:
          v54 = v124;
          goto LABEL_90;
        }

        v47 = v84;
      }

      else
      {
        v47 = v84;
        if (v89)
        {
          goto LABEL_89;
        }
      }

      v54 = v124;
LABEL_90:

LABEL_104:
      v63 = v129;
      if (v128 == ++v64)
      {
        goto LABEL_107;
      }
    }

LABEL_63:

LABEL_64:
    v132 = 0;
    v70 = 0;
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

uint64_t sub_27449631C(unint64_t a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    v4 = sub_27463C27C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_27463C44C();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      v26 = v3 & 0xC000000000000001;
      v27 = objc_opt_self();
      v28 = v4;
      v29 = v3;
      do
      {
        if (v26)
        {
          v7 = MEMORY[0x277C58B20](v6, v3);
        }

        else
        {
          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = [v7 name];
        v10 = sub_27463B6AC();
        v12 = v11;

        sub_27463B70C("Select Accessory", 16);
        if (qword_2809492C0 != -1)
        {
          swift_once();
        }

        ++v6;
        v13 = qword_28094BB00;
        v14 = sub_27463B66C();
        v15 = sub_27463B66C();

        v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

        v17 = sub_27463B6AC();
        v19 = v18;

        v20 = [v27 clearBackground];
        v21 = objc_allocWithZone(MEMORY[0x277D7A158]);
        v22 = sub_27446D8F0(0x74696B656D6F68, 0xE700000000000000, v20);
        v23 = swift_allocObject();
        v23[2] = a2;
        v23[3] = v8;
        v23[4] = a3;
        objc_allocWithZone(MEMORY[0x277D7D790]);
        v24 = a2;
        v25 = a3;
        sub_2744978D8(v10, v12, v17, v19, v22, sub_2744980A8, v23);
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
        v3 = v29;
      }

      while (v28 != v6);
      return v32;
    }
  }

  return result;
}

id sub_2744965EC(char *a1, void *a2, uint64_t a3)
{
  v5 = *&a1[OBJC_IVAR____TtC14WorkflowEditorP33_88919392127B4CC4A9712067A850793640ConditionalSubjectParameterSummaryEditor_pendingHome];
  *&a1[OBJC_IVAR____TtC14WorkflowEditorP33_88919392127B4CC4A9712067A850793640ConditionalSubjectParameterSummaryEditor_pendingHome] = a2;
  v6 = a2;

  return [a1 requestEditingSlotIdentifier_];
}

uint64_t sub_274496650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  sub_27463B9CC();
  v3[21] = sub_27463B9BC();
  v5 = sub_27463B96C();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x2822009F8](sub_2744966EC, v5, v4);
}

uint64_t sub_2744966EC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2744967D4;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  OUTLINED_FUNCTION_2_13(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_14();
  [v1 ensureHomesAreLoadedWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2744967D4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_70();
  *v1 = v0;
  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x2822009F8](sub_2744968D0, v4, v3);
}

uint64_t sub_2744968D0()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];

  v4 = [v3 homes];
  sub_274412734(0, &qword_28094D268, 0x277CD1A60);
  v5 = sub_27463B81C();

  v6 = sub_27449631C(v5, v2, v1);

  if (v6 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80, &unk_274648620);
    v7 = sub_27463C57C();
  }

  else
  {
    sub_27463C6CC();
    v7 = v6;
  }

  v8 = v0[1];

  return v8(v7);
}

void sub_274496A08(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    objc_allocWithZone(MEMORY[0x277D7C4E8]);

    v13 = a4;
    v14 = sub_274497A70(a3, a4, a5, a6, a1 & 1);
    [v12 commitState_];
    [v12 completeEditing];
  }
}

id sub_274496B88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [objc_allocWithZone(MEMORY[0x277D7CA08]) initWithVariable_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274496C54(void *a1, void *a2)
{
  v3 = v2;
  v84 = a1;
  v5 = sub_27463A2BC();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v64 - v8;
  sub_274412734(0, &unk_28094D230, 0x277D7C6E0);
  _s3__C3KeyVMa_0(0);
  sub_274497C48();
  v9 = sub_27463B4DC();
  v10 = sub_274497328(v9);
  v77 = [objc_allocWithZone(MEMORY[0x277D7C500]) initWithDefinition_];

  sub_27463B9CC();
  v11 = v3;
  v12 = a2;
  v13 = sub_27463B9BC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  v16 = v11;
  v17 = v12;
  v18 = sub_27463B9BC();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v15;
  v19[4] = v17;
  v19[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
  sub_27463AF0C();
  v21 = __dst[0];
  v20 = __dst[1];
  v22 = __dst[2];
  type metadata accessor for BindingParameterStateDataSource();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v20;
  v79 = v22;
  v80 = v21;
  v78 = v20;
  v23[4] = v22;
  type metadata accessor for ParameterStateStore();
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_27458265C(v23, v24, v25, v26, v27, v28, v29, v30, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  v32 = v31;
  v33 = type metadata accessor for SummaryModal();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = 0;
  v34[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = 0;
  v34[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = 0;
  v38 = &v34[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v38 = sub_274497D00;
  v38[1] = v35;
  v74 = v35;
  v39 = &v34[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v39 = sub_274497D08;
  v39[1] = v37;
  v73 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809523F0, &unk_27465BC90);
  v40 = swift_allocObject();
  *(v40 + 16) = v16;
  swift_allocObject();
  v75 = v16;
  v41 = v77;

  sub_2745827B0(v40);
  v77 = v42;
  v86.receiver = v34;
  v86.super_class = v33;
  v43 = objc_msgSendSuper2(&v86, sel_init);
  KeyPath = swift_getKeyPath();
  v72 = KeyPath;
  v45 = swift_allocObject();
  v71 = v45;
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  v69 = v46;
  swift_unknownObjectWeakInit();
  v47 = swift_getKeyPath();
  v68 = v47;
  v48 = swift_allocObject();
  v66 = v48;
  swift_unknownObjectWeakInit();
  __src[0] = v41;
  __src[1] = v32;
  v70 = sub_274497D14;
  __src[2] = KeyPath;
  __src[3] = sub_274497D14;
  v67 = sub_274497D1C;
  __src[4] = v45;
  __src[5] = sub_274497D1C;
  __src[6] = v46;
  __src[7] = v47;
  v64 = v32;
  v65 = sub_274409FFC;
  __src[8] = sub_274409FFC;
  __src[9] = v48;
  memcpy(__dst, __src, 0x50uLL);
  v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D240, &qword_274647540));
  v50 = v41;

  v51 = v43;
  sub_274497D24(__src, &v85);
  v52 = sub_274639CDC();
  v53 = v81;
  sub_27463A2AC();
  v54 = sub_274639CBC();
  v55 = v76;
  sub_27440A004(v76, v53);
  v56 = *(v82 + 8);
  v57 = v53;
  v58 = v83;
  v56(v57, v83);
  v56(v55, v58);
  v54(__dst, 0);
  v59 = v75;

  __dst[0] = v50;
  __dst[1] = v64;
  __dst[2] = v72;
  __dst[3] = v70;
  __dst[4] = v71;
  __dst[5] = v67;
  __dst[6] = v69;
  __dst[7] = v68;
  __dst[8] = v65;
  __dst[9] = v66;
  sub_274497D94(__dst);
  v60 = *&v51[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v51[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v52;

  v61 = *&v59[OBJC_IVAR____TtC14WorkflowEditorP33_88919392127B4CC4A9712067A850793640ConditionalSubjectParameterSummaryEditor_homeServiceModal];
  *&v59[OBJC_IVAR____TtC14WorkflowEditorP33_88919392127B4CC4A9712067A850793640ConditionalSubjectParameterSummaryEditor_homeServiceModal] = v43;
  v62 = v51;

  sub_27440A42C(v84);

  swift_unknownObjectRelease();
}

id sub_274497328(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s3__C3KeyVMa_0(0);
  sub_274497C48();
  v2 = sub_27463B4BC();

  v3 = [v1 initWithDictionary_];

  return v3;
}

id sub_2744973B8@<X0>(id a1@<X2>, void *a3@<X8>)
{
  v4 = [a1 currentState];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }

    v7 = v6;
    v8 = [v6 service];
    if (!v8)
    {
LABEL_14:

      goto LABEL_15;
    }

    v5 = v5;
    v9 = sub_274497E64(v7, &selRef_homeIdentifier);
    v11 = v10;
    v12 = WFSerializableHomeIdentifier();
    v13 = sub_27463B6AC();
    v15 = v14;

    if (!v11)
    {

      goto LABEL_13;
    }

    if (v9 == v13 && v11 == v15)
    {

      goto LABEL_14;
    }

    v17 = sub_27463C6BC();

    if ((v17 & 1) == 0)
    {
      v5 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_15:
  v18 = WFSerializableHomeIdentifier();
  v19 = sub_27463B6AC();
  v21 = v20;

  v22 = objc_allocWithZone(MEMORY[0x277D7C4C0]);
  result = sub_274497A08(v8, v19, v21);
  *a3 = result;
  return result;
}

void sub_274497560(uint64_t *a1, int a2, int a3, uint64_t a4, id a5)
{
  if (*a1)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRetain();
      v8 = [v7 service];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 defaultCharacteristic];
        if (!v10)
        {
          v10 = WFSupportedCharacteristicsForHMService();
          if (v10)
          {
            sub_274412734(0, &unk_28094D250, 0x277CD1970);
            v18 = sub_27463B81C();

            if (sub_274453594())
            {
              sub_2744535A4();
              if ((v18 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x277C58B20](0, v18);
              }

              else
              {
                v19 = *(v18 + 32);
              }

              v10 = v19;
            }

            else
            {

              v10 = 0;
            }
          }
        }

        v11 = v10;
        v12 = v9;
        v13 = WFSerializableHomeIdentifier();
        v14 = sub_27463B6AC();
        v16 = v15;

        v17 = objc_allocWithZone(MEMORY[0x277D7C4E8]);
        v20 = sub_274497A70(v12, v10, v14, v16, 0);
        [a5 commitState_];
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  [a5 commitState_];
}

id sub_27449778C(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_88919392127B4CC4A9712067A850793640ConditionalSubjectParameterSummaryEditor_homeServiceModal] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_88919392127B4CC4A9712067A850793640ConditionalSubjectParameterSummaryEditor_pendingHome] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ConditionalSubjectParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_274497854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConditionalSubjectParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2744978D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = sub_27463B66C();

  if (!a4)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_27463B66C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18[4] = a6;
  v18[5] = a7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_27443E0E8;
  v18[3] = &block_descriptor_12;
  v15 = _Block_copy(v18);

LABEL_6:
  v16 = [v8 initWithTitle:v13 subtitle:v14 icon:a5 handler:v15];
  _Block_release(v15);

  return v16;
}

id sub_274497A08(void *a1, uint64_t a2, uint64_t a3)
{
  sub_27463B66C();
  OUTLINED_FUNCTION_28_1();

  v6 = [v3 initWithService:a1 homeIdentifier:v4];

  return v6;
}

id sub_274497A70(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_27463B66C();

  v10 = [v5 initWithService:a1 characteristic:a2 homeIdentifier:v9 negatesValue:a5 & 1];

  return v10;
}

id sub_274497AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = sub_27463B66C();

  if (!a4)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_27463B66C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18[4] = a6;
  v18[5] = a7;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_27443E0E8;
  v18[3] = &block_descriptor_52_1;
  v15 = _Block_copy(v18);

LABEL_6:
  v16 = [v8 initWithTitle:v13 subtitle:v14 state:a5 handler:v15];
  _Block_release(v15);

  return v16;
}

unint64_t sub_274497C48()
{
  result = qword_280949AD8;
  if (!qword_280949AD8)
  {
    _s3__C3KeyVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949AD8);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274497D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949810, &qword_274647548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274497D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949810, &qword_274647548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274497E64(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_27463B6AC();

  return v4;
}

uint64_t sub_274497ED0()
{
  OUTLINED_FUNCTION_42_1();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_274497F70;
  v5 = OUTLINED_FUNCTION_28_1();

  return sub_274496650(v5, v2, v3);
}

uint64_t sub_274497F70()
{
  OUTLINED_FUNCTION_79();
  v2 = v1;
  OUTLINED_FUNCTION_28_2();
  v3 = *v0;
  OUTLINED_FUNCTION_70();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t objectdestroy_41Tm()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2744980E4()
{
  OUTLINED_FUNCTION_42_1();
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_274498188;
  v4 = OUTLINED_FUNCTION_28_1();

  return v5(v4, v2);
}

uint64_t sub_274498188()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t sub_27449826C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_274498348;

  return sub_27449451C(a1, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_14()
{
  v1[12] = sub_2745ECED0;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1)
{

  return sub_27463C6BC();
}

uint64_t type metadata accessor for ParameterValuePickerView(uint64_t a1)
{
  result = qword_28094D280;
  if (!qword_28094D280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274498464(uint64_t a1)
{
  sub_274498508(319);
  if (v1 <= 0x3F)
  {
    sub_2744645B4();
    if (v2 <= 0x3F)
    {
      sub_27449859C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_274498508(uint64_t a1)
{
  if (!qword_28094D290)
  {
    type metadata accessor for ParameterValuePickerModel(255);
    sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
    v1 = sub_27463922C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094D290);
    }
  }
}

void sub_27449859C(uint64_t a1)
{
  if (!qword_28094D2A0)
  {
    sub_27463936C();
    v1 = sub_27463919C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094D2A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ParameterValuePickerView.SelectionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2744986D4()
{
  result = qword_28094D2A8;
  if (!qword_28094D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D2A8);
  }

  return result;
}

BOOL sub_274498728()
{
  v0 = sub_274637DBC();
  v8 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27463BBCC();
  sub_2744A2178(&qword_2809542C0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  v9 = "No options available.";
  while (1)
  {
    sub_27463C0CC();
    v3 = v13;
    if (!v13)
    {
      break;
    }

    sub_274464A50(&v12, v11);
    sub_27444C44C(v11, v10);
    sub_2744A1F00();
    if (swift_dynamicCast())
    {
      v4 = v14;
      v5 = [v14 bundleIdentifier];
      sub_27463B6AC();

      LOBYTE(v5) = sub_27463B77C();

      __swift_destroy_boxed_opaque_existential_1(v11);
      if (v5)
      {
        break;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  (*(v8 + 8))(v2, v0);
  return v3 != 0;
}

uint64_t sub_27449895C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_274639C5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2B0, &unk_274650250);
  return sub_2744989AC(v2, a2 + *(v4 + 44));
}

uint64_t sub_2744989AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E070, &unk_274651B50);
  MEMORY[0x28223BE20](v3 - 8);
  v107 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = (v91 - v6);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2B8, &qword_274650260);
  MEMORY[0x28223BE20](v103);
  v98 = v91 - v7;
  v8 = type metadata accessor for ParameterValuePickerView(0);
  v93 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = v9;
  v95 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2C0, &qword_274650268);
  MEMORY[0x28223BE20](v96);
  v97 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = (v91 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2C8, &unk_274650270);
  MEMORY[0x28223BE20](v13 - 8);
  v105 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v109 = v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E060, &unk_274651B40);
  MEMORY[0x28223BE20](v17 - 8);
  v114 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v91 - v20;
  v104 = sub_27463AF6C();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v91 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v91 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v91 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E050, &qword_274650280);
  v33 = v32 - 8;
  MEMORY[0x28223BE20](v32);
  v112 = v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v91 - v36;
  *v37 = sub_274639C5C();
  *(v37 + 1) = 0x4020000000000000;
  v37[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2D0, &qword_274650288);
  sub_2744994AC(a1, &v37[*(v38 + 44)]);
  v39 = sub_27463A32C();
  sub_2746390AC();
  v40 = *(v33 + 44);
  v110 = v37;
  v111 = v31;
  v41 = &v37[v40];
  *v41 = v39;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  sub_27463AF5C();
  v113 = v21;
  sub_274499A90(a1, v21);
  v108 = a1;
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v46 = sub_27463920C();
  v47 = sub_27463920C();
  v48 = sub_274468A2C();
  v50 = v49;

  sub_27446BB0C(v48, v50);
  v52 = v51;

  if (!v52)
  {
    goto LABEL_5;
  }

  if (!*(v52 + 16))
  {

LABEL_5:
    v74 = 1;
    v67 = v104;
    v65 = v102;
    goto LABEL_6;
  }

  v53 = v28;
  v91[0] = v28;
  sub_27463AF5C();
  v54 = sub_274639C6C();
  v55 = v92;
  *v92 = v54;
  *(v55 + 8) = 0x4020000000000000;
  *(v55 + 16) = 0;
  v91[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2E0, &qword_274650298) + 44);
  v115 = v52;
  v56 = v95;
  sub_27449FE60(v108, v95);
  v57 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v58 = swift_allocObject();
  sub_27449FEC4(v56, v58 + v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2E8, &qword_2746502A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2F0, &qword_2746502B0);
  sub_27440CA78(&qword_28094D2F8, &qword_28094D2E8, &qword_2746502A8, MEMORY[0x277D83980]);
  sub_27440CA78(&qword_28094D300, &qword_28094D2F0, &qword_2746502B0, MEMORY[0x277CE1138]);
  sub_27449FF40();
  sub_27463AF8C();
  v59 = sub_27463A32C();
  sub_2746390AC();
  v60 = v55 + *(v96 + 36);
  *v60 = v59;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  v65 = v102;
  v66 = *(v102 + 16);
  v67 = v104;
  v66(v25, v53, v104);
  v68 = v97;
  sub_274412C20(v55, v97, &qword_28094D2C0, &qword_274650268);
  v69 = v98;
  v66(v98, v25, v67);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D310, &qword_2746502B8);
  sub_274412C20(v68, v69 + *(v70 + 48), &qword_28094D2C0, &qword_274650268);
  sub_27443FF80(v55, &qword_28094D2C0, &qword_274650268);
  v71 = *(v65 + 8);
  v72 = v91[0];
  v71(v91[0], v67);
  v73 = v68;
  v28 = v72;
  sub_27443FF80(v73, &qword_28094D2C0, &qword_274650268);
  v71(v25, v67);
  sub_27441277C(v69, v109, &qword_28094D2B8, &qword_274650260);
  v74 = 0;
LABEL_6:
  v99 = v25;
  v75 = v109;
  __swift_storeEnumTagSinglePayload(v109, v74, 1, v103);
  sub_27463AF5C();
  v76 = sub_274639B2C();
  v77 = v100;
  *v100 = v76;
  v77[1] = 0;
  *(v77 + 16) = 1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D2D8, &qword_274650290);
  sub_27449AF74(v108, (v77 + *(v78 + 44)));
  v79 = v112;
  sub_274412C20(v110, v112, &qword_28094E050, &qword_274650280);
  v115 = v79;
  v80 = *(v65 + 16);
  v80(v25, v111, v67);
  v116 = v25;
  v81 = v28;
  v82 = v114;
  sub_274412C20(v113, v114, &unk_28094E060, &unk_274651B40);
  v117 = v82;
  v83 = v75;
  v84 = v105;
  sub_274412C20(v75, v105, &qword_28094D2C8, &unk_274650270);
  v118 = v84;
  v85 = v101;
  v80(v101, v81, v67);
  v119 = v85;
  v86 = v77;
  v87 = v77;
  v88 = v107;
  sub_274412C20(v87, v107, &qword_28094E070, &unk_274651B50);
  v120 = v88;
  sub_2744B2408();
  sub_27443FF80(v86, &qword_28094E070, &unk_274651B50);
  v89 = *(v65 + 8);
  v89(v81, v67);
  sub_27443FF80(v83, &qword_28094D2C8, &unk_274650270);
  sub_27443FF80(v113, &unk_28094E060, &unk_274651B40);
  v89(v111, v67);
  sub_27443FF80(v110, &qword_28094E050, &qword_274650280);
  sub_27443FF80(v88, &qword_28094E070, &unk_274651B50);
  v89(v85, v67);
  sub_27443FF80(v84, &qword_28094D2C8, &unk_274650270);
  sub_27443FF80(v114, &unk_28094E060, &unk_274651B40);
  v89(v99, v67);
  return sub_27443FF80(v112, &qword_28094E050, &qword_274650280);
}

uint64_t sub_2744994AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D688, &qword_27465C710);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v36 - v7;
  v9 = a1[1];
  LODWORD(a1) = *(a1 + 16);
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v37 = v9;
  v36[3] = a1;
  v10 = sub_27463920C();
  v11 = sub_274468770();
  v13 = v12;

  if (v13)
  {
    v51 = v11;
    v52 = v13;
    sub_274412BBC();
    v49 = sub_27463A53C();
    v48 = v14;
    v16 = v15;
    v42 = v17;
    KeyPath = swift_getKeyPath();
    v41 = sub_27463A45C();
    v40 = swift_getKeyPath();
    LOBYTE(v51) = v16 & 1;
    v44 = v16 & 1;
    v46 = sub_27463ABCC();
    v45 = swift_getKeyPath();
    v38 = 1;
  }

  else
  {
    v49 = 0;
    v48 = 0;
    v42 = 0;
    KeyPath = 0;
    v40 = 0;
    v41 = 0;
    v45 = 0;
    v46 = 0;
    v38 = 0;
    v44 = 0;
  }

  sub_27463B70C("Search", 6);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v18 = qword_28094BB00;
  v19 = sub_27463B66C();
  v20 = sub_27463B66C();

  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v22 = sub_27463B6AC();
  v24 = v23;

  v25 = sub_27463921C();
  swift_getKeyPath();
  sub_27463952C();

  __src[0] = v22;
  __src[1] = v24;
  sub_274412BBC();
  sub_27463B17C();
  v26 = v39;
  v27 = *(v39 + 16);
  v27(v5, v8, v3);
  __src[0] = v49;
  __src[1] = v48;
  v28 = v42;
  __src[2] = v44;
  __src[3] = v42;
  v37 = v8;
  v29 = v38;
  __src[4] = KeyPath;
  __src[5] = v38;
  v30 = v40;
  v31 = v41;
  __src[6] = v40;
  __src[7] = v41;
  __src[8] = v45;
  __src[9] = v46;
  v32 = v43;
  memcpy(v43, __src, 0x50uLL);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D690, &qword_274650578);
  v27(&v32[*(v33 + 48)], v5, v3);
  sub_274412C20(__src, &v51, &qword_28094D698, &qword_274650580);
  v34 = *(v26 + 8);
  v34(v37, v3);
  v34(v5, v3);
  v51 = v49;
  v52 = v48;
  v53 = v44;
  v54 = v28;
  v55 = KeyPath;
  v56 = v29;
  v57 = v30;
  v58 = v31;
  v59 = v45;
  v60 = v46;
  return sub_27443FF80(&v51, &qword_28094D698, &qword_274650580);
}

uint64_t sub_274499A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274468A2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_274499A50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_274468A8C(v1, v2);
}

uint64_t sub_274499A90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3B0, &qword_274650340);
  MEMORY[0x28223BE20](v36);
  v40 = &v30[-v3];
  v37 = sub_27463955C();
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3B8, &qword_274650348);
  MEMORY[0x28223BE20](v35);
  v7 = &v30[-v6];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3C0, &qword_274650350);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v30[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3C8, &qword_274650358);
  MEMORY[0x28223BE20](v10);
  v38 = &v30[-v11];
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v12 = sub_27463920C();
  v13 = sub_2744686A0();
  v15 = v14;
  v16 = ~v14;

  if (v16)
  {
    v32 = v10;
    if (v15)
    {
      v17 = sub_274637D5C();
      v18 = sub_274639C5C();
      v43 = 0;
      sub_27449DD20(v17, __src);
      memcpy(v44, __src, 0x79uLL);
      memcpy(v45, __src, 0x79uLL);
      sub_274412C20(v44, v42, &qword_28094D3D0, &qword_274650360);
      sub_27443FF80(v45, &qword_28094D3D0, &qword_274650360);

      memcpy(v42 + 7, v44, 0x79uLL);
      __src[0] = v18;
      __src[1] = 0x4020000000000000;
      LOBYTE(__src[2]) = v43;
      memcpy(&__src[2] + 1, v42, 0x80uLL);
      memcpy(v40, __src, 0x91uLL);
      swift_storeEnumTagMultiPayload();
      sub_274412C20(__src, v42, &qword_28094D3D8, &qword_274650368);
      sub_274412C20(__src, v42, &qword_28094D3D8, &qword_274650368);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3D8, &qword_274650368);
      v19 = sub_2744A0AE4();
      v42[0] = v35;
      v42[1] = v37;
      v42[2] = v19;
      v42[3] = MEMORY[0x277CDD980];
      swift_getOpaqueTypeConformance2();
      sub_27440CA78(&qword_28094D420, &qword_28094D3D8, &qword_274650368, MEMORY[0x277CE1198]);
      v20 = v38;
      sub_274639DDC();
      sub_27446E848(v13, v15);
      sub_27443FF80(__src, &qword_28094D3D8, &qword_274650368);
      sub_27443FF80(__src, &qword_28094D3D8, &qword_274650368);
    }

    else
    {
      sub_27449A134(a1, v13, v7);
      sub_27463954C();
      v23 = sub_2744A0AE4();
      v31 = v15;
      v24 = v35;
      v25 = v37;
      sub_27463AAAC();
      (v33)[1](v5, v25);
      sub_27443FF80(v7, &qword_28094D3B8, &qword_274650348);
      v26 = v34;
      v27 = *(v34 + 16);
      v33 = v13;
      v28 = v39;
      v27(v40, v9, v39);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3D8, &qword_274650368);
      __src[0] = v24;
      __src[1] = v25;
      __src[2] = v23;
      __src[3] = MEMORY[0x277CDD980];
      swift_getOpaqueTypeConformance2();
      sub_27440CA78(&qword_28094D420, &qword_28094D3D8, &qword_274650368, MEMORY[0x277CE1198]);
      v20 = v38;
      sub_274639DDC();
      sub_27446E848(v33, v31);
      (*(v26 + 8))(v9, v28);
    }

    v29 = v41;
    sub_27441277C(v20, v41, &qword_28094D3C8, &qword_274650358);
    return __swift_storeEnumTagSinglePayload(v29, 0, 1, v32);
  }

  else
  {
    v21 = v41;

    return __swift_storeEnumTagSinglePayload(v21, 1, 1, v10);
  }
}

uint64_t sub_27449A134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D418, &qword_274650388);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D428, &qword_274650390);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v11 = sub_27463920C();
  v12 = sub_274468C00();

  if (v12)
  {
    MEMORY[0x28223BE20](v13);
    v14 = v39;
    *(&v38 - 2) = a1;
    *(&v38 - 1) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D430, &qword_2746503C8);
    sub_2744A0D60();
    sub_27463A49C();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D400, &unk_274650378);
    sub_2744A0C20();
    sub_27440CA78(&qword_28094D410, &qword_28094D418, &qword_274650388, MEMORY[0x277CDE5A0]);
    sub_274639DDC();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_27463B70C("No options available.", 21, v8, v4, v40);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v16 = qword_28094BB00;
    v17 = sub_27463B66C();
    v18 = sub_27463B66C();

    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    v20 = sub_27463B6AC();
    v22 = v21;

    *&v44 = v20;
    *(&v44 + 1) = v22;
    sub_274412BBC();
    v23 = sub_27463A53C();
    v25 = v24;
    v27 = v26;
    sub_27463ABCC();
    v28 = sub_27463A4DC();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    sub_274412C10(v23, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    v36 = sub_27463A32C();
    v32 &= 1u;
    v42 = v32;
    v41 = 1;
    sub_27463B0CC();
    sub_2746392FC();
    *&v43[39] = v46;
    *&v43[23] = v45;
    *&v43[7] = v44;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    v37 = *v43;
    *(v10 + 105) = *&v43[16];
    *(v10 + 121) = *&v43[32];
    *v10 = v28;
    *(v10 + 1) = v30;
    v10[16] = v32;
    *(v10 + 3) = v34;
    *(v10 + 4) = KeyPath;
    v10[40] = 1;
    v10[48] = v36;
    v10[88] = 1;
    *(v10 + 89) = v37;
    *(v10 + 17) = *&v43[47];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D400, &unk_274650378);
    sub_2744A0C20();
    sub_27440CA78(&qword_28094D410, &qword_28094D418, &qword_274650388, MEMORY[0x277CDE5A0]);
    return sub_274639DDC();
  }
}

void sub_27449A64C(uint64_t a1)
{
  v3 = type metadata accessor for ParameterValuePickerView(0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = *(a1 + 16);
  v8 = a1 + 24;
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = (v8 + 40 * v6);
  while (1)
  {
    if (v7 == v6)
    {
      v30 = v9;
      swift_getKeyPath();
      sub_27449FE60(v1, v5);
      v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v22 = swift_allocObject();
      sub_27449FEC4(v5, v22 + v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4A0, &qword_274650428);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D448, &qword_2746503D0);
      sub_27440CA78(&qword_28094D4A8, &qword_28094D4A0, &qword_274650428, MEMORY[0x277D83980]);
      sub_2744A0DE4();
      sub_27463AF7C();
      return;
    }

    if (v6 >= v7)
    {
      break;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    v12 = v10[3];
    ++v6;
    v10 += 5;
    if (*(v12 + 16))
    {
      v26 = v4;
      v27 = v5;
      v13 = *(v10 - 3);
      v14 = *(v10 - 1);
      v15 = *v10;
      v23 = *(v10 - 4);
      v24 = v14;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v9;
      v28 = v1;
      v25 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27445136C(0, *(v9 + 16) + 1, 1);
        v9 = v30;
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_27445136C((v17 > 1), v18 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v18 + 1;
      v19 = (v9 + 40 * v18);
      v20 = v24;
      v19[4] = v23;
      v19[5] = v13;
      v19[6] = v12;
      v19[7] = v20;
      v19[8] = v15;
      v6 = v11;
      v5 = v27;
      v1 = v28;
      v8 = v25;
      v4 = v26;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_27449A91C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  *a3 = sub_274639B2C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D318, &qword_2746502C0);
  return sub_27449A98C(a2, v5, v6, (a3 + *(v7 + 44)));
}

uint64_t sub_27449A98C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v37 = a3;
  v36 = a2;
  v43 = a4;
  v5 = sub_2746396BC();
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  MEMORY[0x28223BE20](v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ParameterValuePickerView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D320, &qword_2746502C8);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D328, &qword_2746502D0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  sub_27449FE60(a1, v11);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_27449FEC4(v11, v23 + v21);
  v24 = v23 + v22;
  v25 = v36;
  *v24 = v36;
  v26 = v37 & 1;
  *(v24 + 8) = v37 & 1;
  v44 = a1;
  v45 = v25;
  v46 = v26;
  v27 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D330, &qword_2746502D8);
  sub_27440CA78(&qword_28094D338, &qword_28094D330, &qword_2746502D8, MEMORY[0x277CE1138]);
  sub_27463AD5C();
  v28 = v39;
  sub_2746396AC();
  sub_27440CA78(&qword_28094D340, &qword_28094D320, &qword_2746502C8, MEMORY[0x277CDF028]);
  sub_2744A2178(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v29 = v38;
  v30 = v41;
  sub_27463A69C();
  (*(v42 + 8))(v28, v30);
  (*(v40 + 8))(v13, v29);
  v31 = *(v15 + 16);
  v31(v17, v20, v14);
  v32 = v43;
  v31(v43, v17, v14);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D348, &qword_2746502E0) + 48)];
  *v33 = 0;
  v33[8] = 1;
  v34 = *(v15 + 8);
  v34(v20, v14);
  return (v34)(v17, v14);
}

void sub_27449AE40(uint64_t *a1, void *a2, char a3)
{
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v5 = sub_27463920C();
  sub_27446A968(a2, a3 & 1 | 0x80);
}

uint64_t sub_27449AF0C@<X0>(void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = sub_274639B2C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D350, &qword_2746502E8);
  return sub_27449EFA8(a2, a3 & 1, a4 + *(v7 + 44));
}

uint64_t sub_27449AF74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D368, &qword_2746502F8);
  MEMORY[0x28223BE20](v88);
  v89 = &v80 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D370, &unk_274650300);
  MEMORY[0x28223BE20](v81);
  v80 = &v80 - v4;
  v5 = type metadata accessor for ParameterValuePickerView(0);
  v82 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = v6;
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C9C0, &qword_27464E5A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v80 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D378, &qword_274650310);
  MEMORY[0x28223BE20](v87);
  v85 = &v80 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D380, &qword_274650318);
  MEMORY[0x28223BE20](v86);
  v12 = &v80 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D388, &unk_274650320);
  MEMORY[0x28223BE20](v13 - 8);
  v90 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v18 = sub_27463920C();
  v19 = v18[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_allowsMultipleSelection];

  v20 = sub_27463920C();
  v21 = v20;
  if (v19 == 1)
  {
    v22 = sub_27446B0B4();

    if (v22)
    {
      sub_27463B70C("Deselect All", 12);
      v23 = v85;
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v24 = qword_28094BB00;
      v25 = sub_27463B66C();
      v26 = sub_27463B66C();

      v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

      v28 = sub_27463B6AC();
      v30 = v29;

      v92 = v28;
      v93 = v30;
      sub_27463904C();
      v31 = sub_27463905C();
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v31);
      v32 = v84;
      sub_27449FE60(a1, v84);
      v33 = (*(v82 + 80) + 16) & ~*(v82 + 80);
      v34 = swift_allocObject();
      sub_27449FEC4(v32, v34 + v33);
      sub_274412BBC();
      sub_27463AD6C();
    }

    else
    {
      sub_27463B70C("Select All", 10);
      v23 = v85;
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v40 = qword_28094BB00;
      v41 = sub_27463B66C();
      v42 = sub_27463B66C();

      v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

      v44 = sub_27463B6AC();
      v46 = v45;

      v92 = v44;
      v93 = v46;
      v47 = v84;
      sub_27449FE60(a1, v84);
      v48 = (*(v82 + 80) + 16) & ~*(v82 + 80);
      v49 = swift_allocObject();
      sub_27449FEC4(v47, v49 + v48);
      sub_274412BBC();
      sub_27463AD7C();
    }

    v50 = sub_27463A32C();
    sub_2746390AC();
    v51 = v23 + *(v87 + 36);
    *v51 = v50;
    *(v51 + 8) = v52;
    *(v51 + 16) = v53;
    *(v51 + 24) = v54;
    *(v51 + 32) = v55;
    *(v51 + 40) = 0;
    sub_274412C20(v23, v80, &qword_28094D378, &qword_274650310);
    swift_storeEnumTagMultiPayload();
    sub_2744A0998();
    sub_274639DDC();
    sub_27443FF80(v23, &qword_28094D378, &qword_274650310);
    sub_274412C20(v12, v89, &qword_28094D380, &qword_274650318);
    swift_storeEnumTagMultiPayload();
    sub_2744A0914();
    sub_274639DDC();
    v56 = v12;
    v57 = &qword_28094D380;
    v58 = &qword_274650318;
LABEL_15:
    sub_27443FF80(v56, v57, v58);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3A0, &qword_274650330);
    v38 = v17;
    v39 = 0;
    goto LABEL_16;
  }

  v35 = *(v20 + OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter);

  v36 = [v35 allowsMultipleValues];
  if ((v36 & 1) == 0)
  {
    sub_27463B70C("Clear", 5);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v59 = qword_28094BB00;
    v60 = sub_27463B66C();
    v61 = sub_27463B66C();

    v62 = [v59 localizedStringForKey:v60 value:v61 table:0];

    v63 = sub_27463B6AC();
    v65 = v64;

    v92 = v63;
    v93 = v65;
    sub_27463904C();
    v66 = sub_27463905C();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v66);
    v67 = v84;
    sub_27449FE60(a1, v84);
    v68 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v69 = swift_allocObject();
    sub_27449FEC4(v67, v69 + v68);
    sub_274412BBC();
    v70 = v85;
    sub_27463AD6C();
    LOBYTE(v62) = sub_27463A32C();
    sub_2746390AC();
    v71 = v70 + *(v87 + 36);
    *v71 = v62;
    *(v71 + 8) = v72;
    *(v71 + 16) = v73;
    *(v71 + 24) = v74;
    *(v71 + 32) = v75;
    *(v71 + 40) = 0;
    sub_274412C20(v70, v89, &qword_28094D378, &qword_274650310);
    swift_storeEnumTagMultiPayload();
    sub_2744A0914();
    sub_2744A0998();
    sub_274639DDC();
    v56 = v70;
    v57 = &qword_28094D378;
    v58 = &qword_274650310;
    goto LABEL_15;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3A0, &qword_274650330);
  v38 = v17;
  v39 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v38, v39, 1, v37);
  v76 = v90;
  sub_274412C20(v17, v90, &qword_28094D388, &unk_274650320);
  v77 = v91;
  *v91 = 0;
  *(v77 + 8) = 1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D3A8, &qword_274650338);
  sub_274412C20(v76, v77 + *(v78 + 48), &qword_28094D388, &unk_274650320);
  sub_27443FF80(v17, &qword_28094D388, &unk_274650320);
  return sub_27443FF80(v76, &qword_28094D388, &unk_274650320);
}

void sub_27449B9BC(uint64_t *a1, void (*a2)(void))
{
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v3 = sub_27463920C();
  a2();
}

uint64_t sub_27449BA78(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = *(a1 + 4);
  sub_27449E05C(v5, *(&v5 + 1), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D458, &qword_2746503D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D468, &qword_2746503E0);
  sub_2744A0E7C();
  sub_2744A0F00();
  return sub_27463AFAC();
}

uint64_t sub_27449BB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValuePickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v12[3] = *(a1 + 16);
  sub_27449FE60(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_27449FEC4(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4B0, &qword_274650430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4B8, &qword_274650438);
  sub_27440CA78(&qword_28094D4C0, &qword_28094D4B0, &qword_274650430, MEMORY[0x277D83980]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D470, &qword_2746503E8);
  v10 = sub_2744A0FC0();
  v12[1] = v9;
  v12[2] = v10;
  swift_getOpaqueTypeConformance2();
  sub_2744A13A4();
  return sub_27463AF8C();
}

uint64_t sub_27449BD2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v81 = sub_274639C2C();
  v92 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v91 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v82 = &v68[-v8];
  v75 = sub_27463A19C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D490, &unk_2746503F8);
  MEMORY[0x28223BE20](v72);
  v71 = &v68[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4D0, &qword_274650440);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v68[-v12];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D488, &qword_2746503F0);
  MEMORY[0x28223BE20](v87);
  v95 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v85 = &v68[-v15];
  MEMORY[0x28223BE20](v16);
  v88 = &v68[-v17];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D470, &qword_2746503E8);
  MEMORY[0x28223BE20](v89);
  v90 = &v68[-v18];
  v19 = type metadata accessor for ParameterValuePickerView(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v68[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *a1;
  v24 = *(a1 + 8);
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v25 = sub_27463920C();
  v69 = sub_27446B1BC(v23, v24);

  v26 = a2;
  v96 = a2;
  sub_27449FE60(a2, v22);
  sub_27463B9CC();
  v27 = v23;
  v28 = sub_27463B9BC();
  v29 = *(v20 + 80);
  v30 = (v29 + 32) & ~v29;
  v78 = v21 + 7;
  v31 = (v21 + 7 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 16) = v28;
  *(v32 + 24) = v33;
  sub_27449FEC4(v22, v32 + v30);
  v34 = v32 + v31;
  *v34 = v23;
  *(v34 + 8) = v24;
  sub_27449FE60(v26, v22);
  v35 = v23;
  v36 = sub_27463B9BC();
  v94 = v29;
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = MEMORY[0x277D85700];
  v38 = v70;
  v83 = v22;
  sub_27449FEC4(v22, v37 + v30);
  v39 = v37 + v31;
  *v39 = v23;
  *(v39 + 8) = v24;
  sub_27463AEFC();
  v40 = v97;
  v41 = v98;
  LODWORD(v36) = v99;
  v42 = sub_274639B2C();
  v43 = v71;
  *v71 = v42;
  *(v43 + 8) = 0;
  *(v43 + 16) = 1;
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4D8, &unk_274650448) + 44);
  v77 = v40;
  v76 = v41;
  v86 = v23;
  v84 = v24;
  v45 = v24;
  v46 = v72;
  sub_27449C978(v96, v40, v41, v36, v23, v45, v44);
  v47 = v73;
  sub_27463A17C();
  v48 = sub_27440CA78(&qword_28094D498, &qword_28094D490, &unk_2746503F8, MEMORY[0x277CE1138]);
  sub_27463A82C();
  (*(v74 + 8))(v47, v75);
  sub_27443FF80(v43, &qword_28094D490, &unk_2746503F8);
  v49 = MEMORY[0x277D84F90];
  if (v69)
  {
    v50 = v82;
    sub_274639C0C();
    v51 = v81;
  }

  else
  {
    v97 = MEMORY[0x277D84F90];
    sub_2744A2178(&qword_28094C3B8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C3C0, &qword_27464D650);
    sub_27440CA78(&qword_28094C3C8, &qword_28094C3C0, &qword_27464D650, MEMORY[0x277D83970]);
    v51 = v81;
    v50 = v82;
    sub_27463C1EC();
  }

  v82 = ~v94;
  v97 = v46;
  v98 = v48;
  swift_getOpaqueTypeConformance2();
  v52 = v80;
  sub_27463A85C();
  v53 = *(v92 + 8);
  v53(v50, v51);
  (*(v79 + 8))(v38, v52);
  if (*(v96 + 17) == 3)
  {
    v97 = v49;
    sub_2744A2178(&qword_28094C3B8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C3C0, &qword_27464D650);
    sub_27440CA78(&qword_28094C3C8, &qword_28094C3C0, &qword_27464D650, MEMORY[0x277D83970]);
    v54 = v91;
    sub_27463C1EC();
  }

  else
  {
    v54 = v91;
    sub_274639C1C();
  }

  v55 = v85;
  v56 = v95;
  sub_27463964C();
  v53(v54, v51);
  sub_27443FF80(v56, &qword_28094D488, &qword_2746503F0);
  sub_274639BAC();
  v57 = v88;
  sub_27463960C();

  sub_27443FF80(v55, &qword_28094D488, &qword_2746503F0);
  v58 = v57;
  v59 = v90;
  sub_27441277C(v58, v90, &qword_28094D488, &qword_2746503F0);
  v59[*(v89 + 36)] = 0;
  v60 = v83;
  sub_27449FE60(v96, v83);
  v61 = (v94 + 16) & v82;
  v62 = (v78 + v61) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  sub_27449FEC4(v60, v63 + v61);
  v64 = v63 + v62;
  v65 = v86;
  *v64 = v86;
  *(v64 + 8) = v84;
  v66 = v65;
  sub_2744A0FC0();
  sub_27463A72C();

  return sub_27443FF80(v59, &qword_28094D470, &qword_2746503E8);
}

void sub_27449C788(void *a2@<X3>, char a3@<W4>, _BYTE *a4@<X8>)
{
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v7 = sub_27463920C();
  v8 = sub_27446B1BC(a2, a3);

  *a4 = v8 & 1;
}

uint64_t sub_27449C84C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_27463B13C();
  sub_27463946C();
}

void sub_27449C8BC(uint64_t *a1, void *a2, char a3)
{
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v5 = sub_27463920C();
  sub_27446A968(a2, a3);
}

uint64_t sub_27449C978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v90) = a6;
  v89 = a5;
  v93 = a4;
  v91 = a2;
  v92 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4E0, &qword_274650458);
  MEMORY[0x28223BE20](v9);
  v80 = &v68 - v10;
  v78 = sub_274639B0C();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4E8, &qword_274650460);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v68 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4F0, &qword_274650468);
  v13 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v68 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4F8, &qword_274650470);
  MEMORY[0x28223BE20](v84);
  v72 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = &v68 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D500, &qword_274650478);
  MEMORY[0x28223BE20](v95);
  v94 = &v68 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D508, &qword_274650480);
  MEMORY[0x28223BE20](v87);
  v86 = &v68 - v21;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D510, &qword_274650488);
  MEMORY[0x28223BE20](v96);
  v88 = &v68 - v22;
  v23 = sub_27463884C();
  v85 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D518, &qword_274650490);
  v83 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v68 - v27;
  v29 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D520, &qword_274650498);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = *(v29 + 17);
  v97 = a7;
  v98 = v9;
  if ((v33 - 1) >= 2)
  {
    v69 = v30;
    v70 = v13;
    if (v33)
    {
      v53 = v81;
      sub_27449D774(v89, v90, v81);
      sub_274639BAC();

      v54 = v71;
      sub_27463AE3C();
      v55 = v75;
      sub_274639AFC();
      sub_27440CA78(&unk_280950F40, &qword_28094D4E8, &qword_274650460, MEMORY[0x277CDF068]);
      sub_2744A2178(&unk_280950F80, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
      v56 = v82;
      v57 = v74;
      v58 = v78;
      sub_27463A6EC();
      (*(v77 + 8))(v55, v58);
      (*(v73 + 8))(v54, v57);
      v59 = v72;
      sub_274412C20(v53, v72, &qword_28094D4F8, &qword_274650470);
      v60 = v70;
      v61 = *(v70 + 16);
      v62 = v76;
      v63 = v79;
      v61(v76, v56, v79);
      v64 = v80;
      sub_274412C20(v59, v80, &qword_28094D4F8, &qword_274650470);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D528, &qword_2746504A0);
      v66 = v64 + *(v65 + 48);
      *v66 = 0;
      *(v66 + 8) = 1;
      v61((v64 + *(v65 + 64)), v62, v63);
      v67 = *(v60 + 8);
      v67(v62, v63);
      sub_27443FF80(v59, &qword_28094D4F8, &qword_274650470);
      sub_274412C20(v64, v94, &qword_28094D4E0, &qword_274650458);
      swift_storeEnumTagMultiPayload();
      sub_2744A16D4();
      sub_27440CA78(&qword_28094D548, &qword_28094D4E0, &qword_274650458, MEMORY[0x277CE14C0]);
      sub_274639DDC();
      sub_27443FF80(v64, &qword_28094D4E0, &qword_274650458);
      v67(v82, v63);
      return sub_27443FF80(v81, &qword_28094D4F8, &qword_274650470);
    }

    else
    {
      v82 = &v68;
      MEMORY[0x28223BE20](v89);
      *(&v68 - 4) = v29;
      *(&v68 - 3) = v42;
      *(&v68 - 16) = v43;
      v89 = v44;
      v90 = v31;
      sub_2744A1844();

      v45 = v28;
      sub_27463AE2C();
      sub_27463924C();
      v46 = sub_27440CA78(&qword_28094D538, &qword_28094D518, &qword_274650490, MEMORY[0x277CDF068]);
      v47 = sub_2744A2178(&qword_28094D540, MEMORY[0x277D7D3C8], MEMORY[0x277D7D3C0]);
      v48 = v89;
      v49 = v26;
      sub_27463A6EC();
      (*(v85 + 8))(v25, v23);
      (*(v83 + 8))(v45, v26);
      v50 = v90;
      v51 = v69;
      (*(v90 + 16))(v86, v48, v69);
      swift_storeEnumTagMultiPayload();
      v99 = v49;
      v100 = v23;
      v101 = v46;
      v102 = v47;
      swift_getOpaqueTypeConformance2();
      v52 = v88;
      sub_274639DDC();
      sub_274412C20(v52, v94, &qword_28094D510, &qword_274650488);
      swift_storeEnumTagMultiPayload();
      sub_2744A16D4();
      sub_27440CA78(&qword_28094D548, &qword_28094D4E0, &qword_274650458, MEMORY[0x277CE14C0]);
      sub_274639DDC();
      sub_27443FF80(v52, &qword_28094D510, &qword_274650488);
      return (*(v50 + 8))(v48, v51);
    }
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    v34 = v89;
    *(&v68 - 4) = v29;
    *(&v68 - 3) = v34;
    *(&v68 - 16) = v90;
    v89 = v35;
    v90 = v31;
    sub_2744A1844();

    sub_27463AE2C();
    sub_27463924C();
    v36 = sub_27440CA78(&qword_28094D538, &qword_28094D518, &qword_274650490, MEMORY[0x277CDF068]);
    v37 = sub_2744A2178(&qword_28094D540, MEMORY[0x277D7D3C8], MEMORY[0x277D7D3C0]);
    v38 = v89;
    sub_27463A6EC();
    (*(v85 + 8))(v25, v23);
    (*(v83 + 8))(v28, v26);
    v39 = v90;
    (*(v90 + 16))(v86, v38, v30);
    swift_storeEnumTagMultiPayload();
    v99 = v26;
    v100 = v23;
    v101 = v36;
    v102 = v37;
    swift_getOpaqueTypeConformance2();
    v40 = v88;
    sub_274639DDC();
    sub_274412C20(v40, v94, &qword_28094D510, &qword_274650488);
    swift_storeEnumTagMultiPayload();
    sub_2744A16D4();
    sub_27440CA78(&qword_28094D548, &qword_28094D4E0, &qword_274650458, MEMORY[0x277CE14C0]);
    sub_274639DDC();
    sub_27443FF80(v40, &qword_28094D510, &qword_274650488);
    return (*(v39 + 8))(v38, v30);
  }
}

uint64_t sub_27449D774@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D578, &qword_2746504B0);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D330, &qword_2746502D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D580, &qword_2746504B8);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D588, &qword_2746504C0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  if (a2 < 0)
  {
    *v12 = sub_274639B2C();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D350, &qword_2746502E8);
    sub_27449EFA8(a1, a2 & 1, &v12[*(v24 + 44)]);
    sub_274412C20(v12, v9, &qword_28094D330, &qword_2746502D8);
    *v6 = 0;
    v6[8] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D590, &qword_2746504C8);
    sub_274412C20(v9, &v6[*(v25 + 48)], &qword_28094D330, &qword_2746502D8);
    sub_27443FF80(v9, &qword_28094D330, &qword_2746502D8);
    sub_274412C20(v6, v15, &qword_28094D578, &qword_2746504B0);
    swift_storeEnumTagMultiPayload();
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D558, &qword_2746504A8);
    v27 = sub_27440CA78(&qword_28094D560, &qword_28094D558, &qword_2746504A8, MEMORY[0x277CDEFF0]);
    v28 = sub_2744A1980();
    v32 = v26;
    v33 = &type metadata for ParameterStateLabelStyle;
    v34 = v27;
    v35 = v28;
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094D570, &qword_28094D578, &qword_2746504B0, MEMORY[0x277CE14C0]);
    sub_274639DDC();
    sub_27443FF80(v6, &qword_28094D578, &qword_2746504B0);
    return sub_27443FF80(v12, &qword_28094D330, &qword_2746502D8);
  }

  else
  {
    sub_27449E230(a1);
    (*(v17 + 16))(v15, v19, v16);
    swift_storeEnumTagMultiPayload();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D558, &qword_2746504A8);
    v21 = sub_27440CA78(&qword_28094D560, &qword_28094D558, &qword_2746504A8, MEMORY[0x277CDEFF0]);
    v22 = sub_2744A1980();
    v32 = v20;
    v33 = &type metadata for ParameterStateLabelStyle;
    v34 = v21;
    v35 = v22;
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094D570, &qword_28094D578, &qword_2746504B0, MEMORY[0x277CE14C0]);
    sub_274639DDC();
    return (*(v17 + 8))(v19, v16);
  }
}

void sub_27449DC48(uint64_t *a1, void *a2, char a3)
{
  if (*(a1 + 17) != 3)
  {
    type metadata accessor for ParameterValuePickerModel(0);
    sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
    v6 = sub_27463920C();
    sub_27446A968(a2, a3);
  }
}

uint64_t sub_27449DD20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 localizedDescription];
  v4 = sub_27463B6AC();
  v6 = v5;

  v60 = v4;
  v61 = v6;
  sub_274412BBC();
  v7 = sub_27463A53C();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_27463A46C();
  v11 = sub_27463A50C();
  v13 = v12;
  v15 = v14;

  sub_274412C10(v7, v9, v6 & 1);

  sub_27463ABCC();
  v16 = sub_27463A4DC();
  v18 = v17;
  v50 = v19;
  v21 = v20;

  sub_274412C10(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v23 = sub_2744A089C(a1);
  if (v24)
  {
    v60 = v23;
    v61 = v24;
    v25 = sub_27463A53C();
    v27 = v26;
    v29 = v28;
    sub_27463A45C();
    v30 = sub_27463A50C();
    v49 = v21;
    v32 = v31;
    v48 = KeyPath;
    v33 = v16;
    v35 = v34;

    sub_274412C10(v25, v27, v29 & 1);

    sub_27463ABCC();
    v36 = sub_27463A4DC();
    v38 = v37;
    LOBYTE(v27) = v39;
    v41 = v40;

    v42 = v35 & 1;
    v16 = v33;
    KeyPath = v48;
    v43 = v32;
    v21 = v49;
    sub_274412C10(v30, v43, v42);

    v44 = swift_getKeyPath();
    v45 = v27 & 1;
    sub_27440B094(v36, v38, v27 & 1);

    v46 = 1;
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v45 = 0;
    v41 = 0;
    v44 = 0;
    v46 = 0;
  }

  v66 = 0;
  v67 = 1;
  v60 = v16;
  v61 = v18;
  v62 = v50 & 1;
  v63 = v21;
  v64 = KeyPath;
  v65 = 1;
  v68[0] = &v66;
  v68[1] = &v60;
  v54 = v36;
  v55 = v38;
  v56 = v45;
  v57 = v41;
  v58 = v44;
  v59 = v46;
  v52 = 0;
  v53 = 1;
  v68[2] = &v54;
  v68[3] = &v52;
  sub_2744B2528(v68, a2);
  sub_2744A1F64(v36, v38, v45, v41);
  sub_2744A1F64(v54, v55, v56, v57);
  sub_274412C10(v60, v61, v62);
}

double sub_27449E05C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    *&v20 = a1;
    *(&v20 + 1) = a2;
    sub_274412BBC();
    sub_27463C0EC();
    v4 = sub_27463A53C();
    v6 = v5;
    v8 = v7;
    sub_27463A45C();
    v9 = sub_27463A50C();
    v11 = v10;
    v13 = v12;

    sub_274412C10(v4, v6, v8 & 1);

    sub_27463A3FC();
    v14 = sub_27463A4CC();
    v16 = v15;
    v18 = v17;
    sub_274412C10(v9, v11, v13 & 1);

    sub_27463ABCC();
    sub_27463A4DC();

    sub_274412C10(v14, v16, v18 & 1);
  }

  sub_274639DDC();
  result = *&v20;
  *a3 = v20;
  *(a3 + 16) = v21;
  *(a3 + 32) = v22;
  return result;
}

uint64_t sub_27449E230(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D558, &qword_2746504A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v12 = v1;
  v13 = a1;
  v10 = v1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D598, &qword_2746504D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D5A0, &qword_2746504D8);
  sub_27440CA78(&qword_28094D5A8, &qword_28094D598, &qword_2746504D0, MEMORY[0x277CE1198]);
  sub_2744A1A04();
  sub_27463ACAC();
  v7 = *(v1 + 32);
  v15[0] = *(v1 + 24);
  v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
  sub_27463ACEC();
  v15[0] = v14;
  sub_27440CA78(&qword_28094D560, &qword_28094D558, &qword_2746504A8, MEMORY[0x277CDEFF0]);
  sub_2744A1980();
  sub_27463A67C();
  return (*(v4 + 8))(v6, v3);
}

void *sub_27449E460@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v5 = sub_27463920C();
  v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];

  v7 = [v6 wf:a2 pickerLocalizedTitleForState:?];
  if (v7)
  {
    sub_27463B6AC();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_27463920C();
  v11 = *&v10[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];

  v12 = [v11 wf:a2 pickerLocalizedSubtitleForState:?];
  if (v12)
  {
    v13 = sub_27463B6AC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_274639C6C();
  sub_27449E664(v9, v13, v15, v19);

  *&v18[7] = v19[0];
  *&v18[23] = v19[1];
  *&v18[39] = v19[2];
  *&v18[55] = v19[3];
  *a3 = v16;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  return memcpy((a3 + 17), v18, 0x47uLL);
}

uint64_t sub_27449E664@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  v6 = a2;
  if (a2)
  {
    v39 = a3;
    sub_274412BBC();

    v8 = sub_27463A53C();
    v10 = v9;
    v12 = v11;
    sub_27463A3AC();
    v40 = sub_27463A50C();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    sub_274412C10(v8, v10, v12 & 1);

    v19 = v16 & 1;
    v6 = v40;
    sub_27440B094(v40, v14, v19);

    a3 = v39;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    v19 = 0;
    v18 = 0;
    if (!a4)
    {
LABEL_10:
      v30 = 0;
      v34 = 0;
      v33 = 0;
      goto LABEL_11;
    }
  }

  v20 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v20 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v5 = 0;
    goto LABEL_10;
  }

  sub_274412BBC();
  v41 = v6;

  v21 = sub_27463A53C();
  v23 = v22;
  v25 = v24;
  sub_27463A44C();
  v26 = sub_27463A50C();
  v36 = v27;
  v38 = v28;

  sub_274412C10(v21, v23, v25 & 1);

  sub_27463ABCC();
  v5 = sub_27463A4DC();
  v30 = v29;
  v37 = v31;
  v33 = v32;
  v6 = v41;

  sub_274412C10(v26, v36, v38 & 1);

  v34 = v37 & 1;
  sub_27440B094(v5, v30, v37 & 1);

LABEL_11:
  sub_274483EE8(v6, v14, v19, v18);
  sub_274483EE8(v5, v30, v34, v33);
  sub_274483F2C(v6, v14, v19, v18);
  sub_274483F2C(v5, v30, v34, v33);
  *a5 = v6;
  a5[1] = v14;
  a5[2] = v19;
  a5[3] = v18;
  a5[4] = v5;
  a5[5] = v30;
  a5[6] = v34;
  a5[7] = v33;
  sub_274483F2C(v5, v30, v34, v33);
  return sub_274483F2C(v6, v14, v19, v18);
}

uint64_t sub_27449E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_274638B7C();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_274638B6C();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_274638B8C();
  v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D650, &qword_274650530);
  MEMORY[0x28223BE20](v48);
  v50 = &v39 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D5D0, &qword_2746504E8);
  MEMORY[0x28223BE20](v49);
  v10 = &v39 - v9;
  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v11 = sub_27463920C();
  v12 = *&v11[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];

  v47 = a1;
  v13 = [v12 wf:a1 pickerLocalizedImageForState:?];

  if (v13)
  {
    if (!sub_27449F46C())
    {
      sub_27449F730(v13, v10);
      sub_274412C20(v10, v50, &qword_28094D5D0, &qword_2746504E8);
      swift_storeEnumTagMultiPayload();
      sub_2744A1B44();
      sub_2744A2178(&qword_28094D648, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
      v38 = v52;
      sub_274639DDC();

      sub_27443FF80(v10, &qword_28094D5D0, &qword_2746504E8);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D5C0, &qword_2746504E0);
      v34 = v38;
      return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
    }
  }

  v14 = sub_27463920C();
  v15 = *&v14[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];

  if ([v15 respondsToSelector_])
  {
    v16 = [v15 wf:v47 pickerLocalizedIconForState:?];

    if (v16)
    {
      __asm { FMOV            V0.2D, #16.0 }

      v22 = v40;
      v23 = v41;
      *v41 = _Q0;
      (*(v39 + 104))(v23, *MEMORY[0x277D7D690], v22);
      v24 = objc_opt_self();
      v25 = v16;
      v26 = [v24 wf_accentColor];
      v27 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

      v28 = v42;
      *v42 = v27;
      *(v28 + 8) = 1;
      (*(v44 + 104))(v28, *MEMORY[0x277D7D6C0], v45);
      v29 = v43;
      sub_274638B9C();
      v30 = v46;
      v31 = v51;
      (*(v46 + 16))(v50, v29, v51);
      swift_storeEnumTagMultiPayload();
      sub_2744A1B44();
      sub_2744A2178(&qword_28094D648, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
      v32 = v52;
      sub_274639DDC();

      (*(v30 + 8))(v29, v31);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D5C0, &qword_2746504E0);
      v34 = v32;
      return __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
    }
  }

  else
  {
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D5C0, &qword_2746504E0);
  v36 = v52;

  return __swift_storeEnumTagSinglePayload(v36, 1, 1, v35);
}

uint64_t sub_27449EFA8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_274638B4C();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D358, &qword_2746502F0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = sub_27463872C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v22 = a1;
    sub_27463871C();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_2744A2178(&qword_280953330, MEMORY[0x277D7D308], MEMORY[0x277D7D300]);
    sub_2744A2178(&qword_28094D360, MEMORY[0x277D7D598], MEMORY[0x277D7D590]);
    sub_274639DDC();
    return (*(v13 + 8))(v15, v12);
  }

  v29 = a3;
  v16 = sub_27463B6AC();
  v18 = v17;
  if (v16 == sub_27463B6AC() && v18 == v19)
  {

    goto LABEL_10;
  }

  v21 = sub_27463C6BC();

  if (v21)
  {
LABEL_10:
    sub_27463B70C("Select Variable", 15);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v24 = qword_28094BB00;
    v25 = sub_27463B66C();
    v26 = sub_27463B66C();

    v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

    sub_27463B6AC();
  }

  sub_27446848C(a1, 1);
  sub_274638B3C();
  v28 = v30;
  (*(v30 + 16))(v11, v8, v6);
  swift_storeEnumTagMultiPayload();
  sub_2744A2178(&qword_280953330, MEMORY[0x277D7D308], MEMORY[0x277D7D300]);
  sub_2744A2178(&qword_28094D360, MEMORY[0x277D7D598], MEMORY[0x277D7D590]);
  sub_274639DDC();
  return (*(v28 + 8))(v8, v6);
}

BOOL sub_27449F46C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 wf_isFocusConfigurationExtensionBundle];

  if (!v1)
  {
    return 0;
  }

  type metadata accessor for ParameterValuePickerModel(0);
  sub_2744A2178(&qword_28094D298, type metadata accessor for ParameterValuePickerModel, &unk_27464D168);
  v2 = sub_27463920C();
  v3 = *&v2[OBJC_IVAR____TtC14WorkflowEditor25ParameterValuePickerModel_parameter];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4 || (v5 = v4, ![v4 dataSource]))
  {

    return 0;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = [v6 metadata], v8 = objc_msgSend(v7, sel_effectiveBundleIdentifiers), v7, LOBYTE(v7) = sub_274498728(), v8, (v7 & 1) == 0) || (v9 = objc_msgSend(v5, sel_parameterMetadata), v10 = objc_msgSend(v9, sel_valueType), v9, v11 = objc_msgSend(v10, sel_wf_entityValueType), v10, !v11))
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v12 = [v11 identifier];
  v13 = sub_27463B6AC();
  v15 = v14;

  if (v13 != 0x7261646E656C6143 || v15 != 0xEE00797469746E45)
  {
    v17 = sub_27463C6BC();

    swift_unknownObjectRelease();
    return (v17 & 1) != 0;
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_27449F730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v41 = sub_27463970C();
  MEMORY[0x28223BE20](v41);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D658, &qword_274650538);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v39 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D610, &qword_274650508);
  MEMORY[0x28223BE20](v43);
  v7 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D5F0, &qword_2746504F8);
  MEMORY[0x28223BE20](v42);
  v9 = &v39 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D5E0, &qword_2746504F0);
  MEMORY[0x28223BE20](v47);
  v11 = &v39 - v10;
  v12 = sub_27463AC3C();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 tintColor])
  {
    v17 = sub_27463AB2C();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_opt_self() tintColor];
  v19 = sub_27463AB0C();
  v20 = [a1 symbolConfiguration];
  v49 = a1;
  if (v20)
  {

    v21 = sub_27463BF5C();
  }

  else
  {
    sub_27463BF5C();
    (*(v13 + 104))(v16, *MEMORY[0x277CE0FE0], v12);
    v21 = sub_27463AC9C();

    (*(v13 + 8))(v16, v12);
  }

  v50 = v21;

  v22 = v44;
  sub_27463A60C();

  if (v17)
  {
    v50 = v17;
    sub_2744A1EAC();

    v23 = sub_27463ABFC();
  }

  else
  {

    v23 = v19;
  }

  (*(v45 + 32))(v7, v22, v46);
  *&v7[*(v43 + 36)] = v23;
  *v9 = 0;
  v9[8] = 1;
  *(v9 + 2) = 0;
  v9[24] = 1;
  sub_27441277C(v7, &v9[*(v42 + 44)], &qword_28094D610, &qword_274650508);
  if ([v49 displayStyle] == 1)
  {
    sub_2744A1E58();
  }

  else
  {
    v24 = *(v41 + 20);
    v25 = *MEMORY[0x277CE0118];
    v26 = sub_274639BFC();
    v27 = v40;
    (*(*(v26 - 8) + 104))(&v40[v24], v25, v26);
    __asm { FMOV            V0.2D, #4.0 }

    *v27 = _Q0;
    sub_2744A2178(&qword_28094D660, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  }

  v33 = sub_27463AFFC();
  sub_27441277C(v9, v11, &qword_28094D5F0, &qword_2746504F8);
  v34 = &v11[*(v47 + 36)];
  *v34 = v33;
  *(v34 + 4) = 256;
  [v49 sizeInPoints];
  v36 = v35;

  v37 = v48;
  sub_27441277C(v11, v48, &qword_28094D5E0, &qword_2746504F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D5D0, &qword_2746504E8);
  *(v37 + *(result + 36)) = v36 <= 18.0;
  return result;
}

uint64_t sub_27449FD40@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D678, &unk_274650540);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = *MEMORY[0x277CE1020];
  v7 = sub_27463AC7C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  v8 = sub_27463AC4C();
  result = sub_27443FF80(v5, &qword_28094D678, &unk_274650540);
  *a2 = v8;
  return result;
}

uint64_t sub_27449FE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValuePickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27449FEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValuePickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27449FF40()
{
  result = qword_28094D308;
  if (!qword_28094D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D308);
  }

  return result;
}

void sub_27449FF94()
{
  v0 = type metadata accessor for ParameterValuePickerView(0);
  OUTLINED_FUNCTION_19_0(v0);
  OUTLINED_FUNCTION_3_18();
  v2 = OUTLINED_FUNCTION_10_11(v1);

  sub_27449AE40(v2, v3, v4);
}

void *sub_2744A0018(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2((&v8 + 1));
  v5 = *a1;
  if (v5 == 2 || BYTE1(v8) == 2)
  {
    result = (a2)(&v8, result);
    v7 = v8;
    if (v8 == 2)
    {
      v7 = v5;
    }

    *a1 = v7;
  }

  return result;
}

uint64_t sub_2744A009C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a1;
  v23 = a3;
  v3 = sub_27463A09C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D6B0, &qword_2746506C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D6B8, &qword_2746506D0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D6C0, &qword_2746506D8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20[-v16];
  if (v21)
  {
    *v17 = sub_274639B2C();
    *(v17 + 1) = 0x4024000000000000;
    v17[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D6D8, &qword_2746506E0);
    sub_2744A0474(v22, &v17[*(v18 + 44)]);
    sub_274412C20(v17, v13, &qword_28094D6C0, &qword_2746506D8);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_28094D6C8, &qword_28094D6C0, &qword_2746506D8, MEMORY[0x277CE1138]);
    sub_27440CA78(&qword_28094D6D0, &qword_28094D6B0, &qword_2746506C8, MEMORY[0x277CDEFF0]);
    sub_274639DDC();
    return sub_27443FF80(v17, &qword_28094D6C0, &qword_2746506D8);
  }

  else
  {
    (*(v4 + 16))(v6, v22, v3, v15);
    sub_27463ACBC();
    (*(v8 + 16))(v13, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_28094D6C8, &qword_28094D6C0, &qword_2746506D8, MEMORY[0x277CE1138]);
    sub_27440CA78(&qword_28094D6D0, &qword_28094D6B0, &qword_2746506C8, MEMORY[0x277CDEFF0]);
    sub_274639DDC();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_2744A0474@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D6E0, &qword_2746506E8);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_27463A05C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D6E8, &qword_2746506F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  sub_27463A06C();
  sub_27463A3DC();
  sub_2744A2178(&qword_28094D6F0, MEMORY[0x277CDE220], MEMORY[0x277CDE218]);
  v26 = v18;
  sub_27463A66C();
  (*(v9 + 8))(v11, v8);
  *v7 = sub_274639C6C();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D6F8, &qword_2746506F8);
  v29 = a1;
  sub_27463A07C();
  sub_2744A2178(&qword_28094D700, MEMORY[0x277CDE230], MEMORY[0x277CDE228]);
  sub_27463911C();
  v19 = *(v13 + 16);
  v19(v15, v18, v12);
  v20 = v27;
  sub_274412C20(v7, v27, &qword_28094D6E0, &qword_2746506E8);
  v21 = v28;
  v19(v28, v15, v12);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D708, &qword_274650700);
  sub_274412C20(v20, &v21[*(v22 + 48)], &qword_28094D6E0, &qword_2746506E8);
  sub_27443FF80(v7, &qword_28094D6E0, &qword_2746506E8);
  v23 = *(v13 + 8);
  v23(v26, v12);
  sub_27443FF80(v20, &qword_28094D6E0, &qword_2746506E8);
  return (v23)(v15, v12);
}

uint64_t sub_2744A0848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2746399BC();
  *a1 = result;
  return result;
}

uint64_t sub_2744A089C(void *a1)
{
  v1 = [a1 localizedFailureReason];
  if (v1)
  {
    v2 = v1;
    sub_27463B6AC();
  }

  return OUTLINED_FUNCTION_5_0();
}

unint64_t sub_2744A0914()
{
  result = qword_28094D390;
  if (!qword_28094D390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D380, &qword_274650318);
    sub_2744A0998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D390);
  }

  return result;
}

unint64_t sub_2744A0998()
{
  result = qword_28094D398;
  if (!qword_28094D398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D378, &qword_274650310);
    sub_27440CA78(&unk_2809493B0, &unk_2809493A0, &unk_274646750, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D398);
  }

  return result;
}

unint64_t sub_2744A0AE4()
{
  result = qword_28094D3E0;
  if (!qword_28094D3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D3B8, &qword_274650348);
    sub_2744A0B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D3E0);
  }

  return result;
}

unint64_t sub_2744A0B68()
{
  result = qword_28094D3E8;
  if (!qword_28094D3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D3F0, &qword_274650370);
    sub_2744A0C20();
    sub_27440CA78(&qword_28094D410, &qword_28094D418, &qword_274650388, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D3E8);
  }

  return result;
}

unint64_t sub_2744A0C20()
{
  result = qword_28094D3F8;
  if (!qword_28094D3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D400, &unk_274650378);
    sub_2744A0CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D3F8);
  }

  return result;
}

unint64_t sub_2744A0CAC()
{
  result = qword_28094D408;
  if (!qword_28094D408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C818, &qword_27464E350);
    sub_274458558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D408);
  }

  return result;
}

unint64_t sub_2744A0D60()
{
  result = qword_28094D438;
  if (!qword_28094D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D430, &qword_2746503C8);
    sub_2744A0DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D438);
  }

  return result;
}

unint64_t sub_2744A0DE4()
{
  result = qword_28094D440;
  if (!qword_28094D440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D448, &qword_2746503D0);
    sub_2744A0E7C();
    sub_2744A0F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D440);
  }

  return result;
}

unint64_t sub_2744A0E7C()
{
  result = qword_28094D450;
  if (!qword_28094D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D458, &qword_2746503D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D450);
  }

  return result;
}

unint64_t sub_2744A0F00()
{
  result = qword_28094D460;
  if (!qword_28094D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D468, &qword_2746503E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D470, &qword_2746503E8);
    sub_2744A0FC0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D460);
  }

  return result;
}

unint64_t sub_2744A0FC0()
{
  result = qword_28094D478;
  if (!qword_28094D478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D470, &qword_2746503E8);
    sub_2744A1078();
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D478);
  }

  return result;
}

unint64_t sub_2744A1078()
{
  result = qword_28094D480;
  if (!qword_28094D480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D488, &qword_2746503F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D490, &unk_2746503F8);
    sub_27440CA78(&qword_28094D498, &qword_28094D490, &unk_2746503F8, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_2744A2178(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D480);
  }

  return result;
}

uint64_t sub_2744A11A4()
{
  type metadata accessor for ParameterValuePickerView(0);
  v0 = OUTLINED_FUNCTION_8_10();

  return sub_27449BA78(v0, v1);
}

uint64_t objectdestroyTm_3()
{
  type metadata accessor for ParameterValuePickerView(0);
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_5_17();
  v2 = *(v0 + 36);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8, &qword_2746502A0);
  if (OUTLINED_FUNCTION_11_7(v3) == 1)
  {
    sub_27463936C();
    OUTLINED_FUNCTION_4_2();
    (*(v4 + 8))(v1 + v2);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2744A1320(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for ParameterValuePickerView(0);
  v2 = OUTLINED_FUNCTION_8_10();

  return a2(v2);
}

unint64_t sub_2744A13A4()
{
  result = qword_28094D4C8;
  if (!qword_28094D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D4C8);
  }

  return result;
}

void sub_2744A13F8(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for ParameterValuePickerView(0);
  OUTLINED_FUNCTION_19_0(v3);
  OUTLINED_FUNCTION_3_18();
  v5 = v1 + v4;
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_27449C788(v6, v7, a1);
}

uint64_t objectdestroy_30Tm()
{
  type metadata accessor for ParameterValuePickerView(0);
  OUTLINED_FUNCTION_5_16();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  swift_unknownObjectRelease();
  sub_27445429C(*(v1 + v3), *(v1 + v3 + 8), *(v1 + v3 + 16));

  v6 = *(v0 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8, &qword_2746502A0);
  if (OUTLINED_FUNCTION_11_7(v7) == 1)
  {
    sub_27463936C();
    OUTLINED_FUNCTION_4_2();
    (*(v8 + 8))(v1 + v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_15();

  return swift_deallocObject();
}

uint64_t sub_2744A15B4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ParameterValuePickerView(0);
  OUTLINED_FUNCTION_19_0(v5);
  OUTLINED_FUNCTION_3_18();
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = v2 + v10;
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_27449C84C(v7, a1, a2, v8, v9, v2 + v6, v12, v13);
}

void sub_2744A165C()
{
  v0 = type metadata accessor for ParameterValuePickerView(0);
  OUTLINED_FUNCTION_19_0(v0);
  OUTLINED_FUNCTION_3_18();
  v2 = OUTLINED_FUNCTION_10_11(v1);

  sub_27449DC48(v2, v3, v4);
}

unint64_t sub_2744A16D4()
{
  result = qword_28094D530;
  if (!qword_28094D530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D510, &qword_274650488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D518, &qword_274650490);
    sub_27463884C();
    sub_27440CA78(&qword_28094D538, &qword_28094D518, &qword_274650490, MEMORY[0x277CDF068]);
    sub_2744A2178(&qword_28094D540, MEMORY[0x277D7D3C8], MEMORY[0x277D7D3C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D530);
  }

  return result;
}

unint64_t sub_2744A1844()
{
  result = qword_28094D550;
  if (!qword_28094D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D4F8, &qword_274650470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D558, &qword_2746504A8);
    sub_27440CA78(&qword_28094D560, &qword_28094D558, &qword_2746504A8, MEMORY[0x277CDEFF0]);
    sub_2744A1980();
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094D570, &qword_28094D578, &qword_2746504B0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D550);
  }

  return result;
}

unint64_t sub_2744A1980()
{
  result = qword_28094D568;
  if (!qword_28094D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D568);
  }

  return result;
}

unint64_t sub_2744A1A04()
{
  result = qword_28094D5B0;
  if (!qword_28094D5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D5A0, &qword_2746504D8);
    sub_2744A1A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D5B0);
  }

  return result;
}

unint64_t sub_2744A1A88()
{
  result = qword_28094D5B8;
  if (!qword_28094D5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D5C0, &qword_2746504E0);
    sub_2744A1B44();
    sub_2744A2178(&qword_28094D648, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D5B8);
  }

  return result;
}

unint64_t sub_2744A1B44()
{
  result = qword_28094D5C8;
  if (!qword_28094D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D5D0, &qword_2746504E8);
    sub_2744A1BFC();
    sub_27440CA78(&qword_28094D638, &qword_28094D640, &unk_274650520, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D5C8);
  }

  return result;
}

unint64_t sub_2744A1BFC()
{
  result = qword_28094D5D8;
  if (!qword_28094D5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D5E0, &qword_2746504F0);
    sub_2744A1CB4();
    sub_27440CA78(&qword_28094D628, &qword_28094D630, &qword_274650518, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D5D8);
  }

  return result;
}

unint64_t sub_2744A1CB4()
{
  result = qword_28094D5E8;
  if (!qword_28094D5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D5F0, &qword_2746504F8);
    sub_27440CA78(&qword_28094D5F8, &qword_28094D600, &qword_274650500, MEMORY[0x277CDF510]);
    sub_2744A1D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D5E8);
  }

  return result;
}

unint64_t sub_2744A1D6C()
{
  result = qword_28094D608;
  if (!qword_28094D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D610, &qword_274650508);
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094D618, &qword_28094D620, &qword_274650510, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D608);
  }

  return result;
}

unint64_t sub_2744A1E58()
{
  result = qword_28094D668;
  if (!qword_28094D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D668);
  }

  return result;
}

unint64_t sub_2744A1EAC()
{
  result = qword_28094D670;
  if (!qword_28094D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D670);
  }

  return result;
}

unint64_t sub_2744A1F00()
{
  result = qword_28094D680;
  if (!qword_28094D680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28094D680);
  }

  return result;
}

uint64_t sub_2744A1F64(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274412C10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParameterStateLabelStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParameterStateLabelStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2744A2178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2744A21C0()
{
  result = qword_28094D710;
  if (!qword_28094D710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D718, &qword_274650708);
    sub_27440CA78(&qword_28094D6C8, &qword_28094D6C0, &qword_2746506D8, MEMORY[0x277CE1138]);
    sub_27440CA78(&qword_28094D6D0, &qword_28094D6B0, &qword_2746506C8, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D710);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_17()
{
  sub_27445429C(*(v0 + ((v1 + 16) & ~v1)), *(v0 + ((v1 + 16) & ~v1) + 8), *(v0 + ((v1 + 16) & ~v1) + 16));
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2744A2348()
{
  result = sub_27463B66C();
  qword_280965E90 = result;
  return result;
}

id sub_2744A2374()
{
  if (qword_2809492E8 != -1)
  {
    OUTLINED_FUNCTION_1_15(&qword_2809492E8);
  }

  v1 = qword_280965E90;

  return v1;
}

id sub_2744A23C0()
{
  v0 = sub_2744A2374();

  return v0;
}

uint64_t WFQuantityFieldParameter.moduleSummarySlots(for:)(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 magnitudeState];
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v5 = [v1 localizedLabel];
  v6 = sub_27463B6AC();
  v8 = v7;

  v9 = sub_27444C12C(v1);
  v11 = v10;
  if (qword_2809492C8 != -1)
  {
    OUTLINED_FUNCTION_0_22(&qword_2809492C8);
  }

  v12 = sub_27444AEE4(v6, v8, v9, v11, qword_280965E70);
  [v12 setPrefersNoWrapping_];
  if (v4)
  {
    v13 = [v4 variable];
    if (v13)
    {
      v14 = v13;
      [v12 populateWith_];
      goto LABEL_13;
    }

    v14 = [v4 value];
  }

  else
  {
    v14 = 0;
  }

  [v12 populateWithString_];
LABEL_13:

  sub_27463B70C("Unit", 4);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v15 = qword_28094BB00;
  v16 = sub_27463B66C();
  v17 = sub_27463B66C();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = sub_27463B6AC();
  v21 = v20;

  if (qword_2809492E8 != -1)
  {
    OUTLINED_FUNCTION_1_15(&qword_2809492E8);
  }

  v22 = sub_27444AEE4(0, 0, v19, v21, qword_280965E90);
  if (v3 && (v23 = sub_2744A4C9C(v3, &selRef_unitString), v24))
  {
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = sub_2744A4C3C(v2, &selRef_moduleDefaultUnitString);
    v26 = v27;

    if (!v26)
    {
      goto LABEL_26;
    }
  }

  v28 = sub_27463B66C();
  v29 = [v4 decimalNumber];
  if (!v29)
  {
    v29 = [objc_opt_self() zero];
  }

  v30 = [v2 localizedLabelForPossibleUnit:v28 magnitude:v29 style:0];

  if (v30)
  {
    v25 = sub_27463B6AC();
    v32 = v31;

    v26 = v32;
  }

  sub_274457D08(v25, v26, v22);
LABEL_26:
  [v22 setPrefersNoWrapping_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_27464AEE0;
  *(v33 + 32) = v12;
  *(v33 + 40) = v22;

  return v33;
}

id sub_2744A2828(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = swift_unknownObjectRetain();
  v5 = WFQuantityFieldParameter.moduleSummarySlots(for:)(v4);
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
    v6 = sub_27463B7FC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id WFQuantityFieldParameter.defaultStateForNewArrayElement()()
{
  v1 = v0;
  sub_274412734(0, &unk_28094D720, 0x277CCACA8);
  v2 = sub_27463BFAC();
  v3 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

  v4 = sub_2744A4C3C(v1, &selRef_moduleDefaultUnitString);
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277D7C788]);
  return sub_2744A4A84(v3, v4, v6);
}

id sub_2744A2980(void *a1)
{
  v1 = a1;
  v2 = WFQuantityFieldParameter.defaultStateForNewArrayElement()();

  return v2;
}

uint64_t sub_2744A29C8()
{
  static WFQuantityFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

uint64_t WFQuantityFieldParameter.moduleSummaryShowsAddButton(for:)(void *a1)
{
  if (a1)
  {
    v3 = swift_unknownObjectRetain();
    if (WFParameterStateIsMultipleValue(v3) && (v4 = WFMultipleParameterStateValues(a1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDA0, &qword_27464C280), sub_27463B81C(), v4, v5 = sub_274453594(), , v5))
    {
      v6 = [v1 allowsMultipleValues];
      swift_unknownObjectRelease();
      if (v6)
      {
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_2744A2AB0(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFQuantityFieldParameter.moduleSummaryShowsAddButton(for:)(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

id sub_2744A2B20(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_27463B66C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_2744A2BC4(void *a1)
{
  v2 = [a1 key];
  if (qword_2809492C8 != -1)
  {
    OUTLINED_FUNCTION_0_22(&qword_2809492C8);
  }

  v3 = sub_27463B6AC();
  v5 = v4;
  v6 = sub_27463B6AC();
  if (v3 == v6 && v5 == v7)
  {

    v10 = &selRef_requestTextEntry;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_19(v6);

    v10 = &selRef_completeEditing;
    if (v9)
    {
      v10 = &selRef_requestTextEntry;
    }
  }

  v11 = *v10;

  return [v1 v11];
}

uint64_t sub_2744A2D3C(void *a1)
{
  v1 = [a1 key];
  if (qword_2809492E8 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v2 = sub_27463B6AC();
    v4 = v3;
    v5 = sub_27463B6AC();
    if (v2 == v5 && v4 == v6)
    {
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_19(v5);

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = [v41 parameter];
    v11 = [v10 possibleUnits];

    v12 = sub_27463B81C();
    v13 = [v41 currentState];
    if (v13)
    {
      v36 = sub_2744A4C9C(v13, &selRef_unitString);
      v40 = v14;
      v15 = [v41 currentState];
    }

    else
    {
      v40 = 0;
      v15 = [v41 currentState];
    }

    v16 = v15;
    v17 = [v16 magnitudeState];

    v18 = *(v12 + 16);
    if (!v18)
    {
      break;
    }

    v42 = MEMORY[0x277D84F90];
    v1 = &v42;
    sub_27463C44C();
    v19 = 0;
    v20 = (v12 + 40);
    v38 = v18;
    v39 = v12;
    while (v19 < *(v12 + 16))
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      v23 = [v41 parameter];
      v24 = sub_27463B66C();
      v25 = v17;
      v26 = [v17 decimalNumber];
      if (!v26)
      {
        v26 = [objc_opt_self() zero];
      }

      v27 = [v23 localizedLabelForPossibleUnit:v24 magnitude:v26 style:1];

      if (v27)
      {
        v28 = sub_27463B6AC();
        v30 = v29;
      }

      else
      {

        v28 = v21;
        v30 = v22;
      }

      v32 = 0;
      if (v40)
      {
        v31 = v37 == v21 && v40 == v22;
        if (v31 || (sub_27463C6BC() & 1) != 0)
        {
          v32 = 1;
        }
      }

      ++v19;
      v33 = swift_allocObject();
      v33[2] = v41;
      v33[3] = v21;
      v33[4] = v22;
      v34 = objc_allocWithZone(MEMORY[0x277D7D790]);
      v35 = v41;
      sub_2744A4AFC(v28, v30, v32, sub_2744A4E10, v33);
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      v1 = &v42;
      sub_27463C42C();
      v20 += 2;
      v12 = v39;
      v17 = v25;
      if (v38 == v19)
      {

        return v42;
      }
    }

    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_1_15(&qword_2809492E8);
  }

  return MEMORY[0x277D84F90];
}

id sub_2744A3128(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 currentState];
  v7 = [v6 magnitudeState];

  v8 = objc_allocWithZone(MEMORY[0x277D7C788]);

  v9 = sub_2744A4A84(v7, a2, a3);
  [a1 commitState_];

  return [a1 completeEditing];
}

uint64_t sub_2744A3290()
{
  OUTLINED_FUNCTION_79();
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2744A3324, v3, v2);
}

uint64_t sub_2744A3324()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27448A3C0;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_19;
  v0[7].receiver = v2;
  v3 = type metadata accessor for QuantityFieldParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2744A34B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2744A3550, v4, v3);
}

uint64_t sub_2744A3550()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2744A3290();
}

id sub_2744A3640()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  v1 = objc_msgSendSuper2(&v3, sel_variableProvider);

  return v1;
}

uint64_t sub_2744A36E8(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_setVariableProvider_, a1);
  sub_2744A3738();
  return swift_unknownObjectRelease();
}

void sub_2744A3738()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_autocompleteDataSource];
  if (v1)
  {
    v2 = v1;
    sub_2745BEA48([v0 variableProvider]);
  }
}

id sub_2744A37C0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D7C6A8]);
  v5 = a2;
  [v4 initWithVariable_];
  v6 = [v2 currentState];
  if (v6)
  {
    sub_2744A4C9C(v6, &selRef_unitString);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x277D7C788]);
  v11 = OUTLINED_FUNCTION_15_2();
  v9 = sub_2744A4A84(v11, v12, v8);

  return v9;
}

uint64_t sub_2744A38FC(void *a1)
{
  v1 = [a1 key];
  if (qword_2809492C8 != -1)
  {
    OUTLINED_FUNCTION_0_22(&qword_2809492C8);
  }

  v2 = sub_27463B6AC();
  v4 = v3;
  if (v2 == sub_27463B6AC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27463C6BC();
  }

  return v7 & 1;
}

id sub_2744A3A14(void *a1)
{
  v3 = [a1 key];
  if (qword_2809492C8 != -1)
  {
    OUTLINED_FUNCTION_0_22(&qword_2809492C8);
  }

  v4 = sub_27463B6AC();
  v6 = v5;
  if (v4 == sub_27463B6AC() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_27463C6BC();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11.receiver = v1;
  v11.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v11, sel_clearButtonMenuItemForSlotWithIdentifier_, a1);
}

void sub_2744A3B88(void *a1, uint64_t a2)
{
  v3 = v2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v19, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  [a1 setClearsZeroWhenTyping_];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [v3 parameter];
    v9 = [v8 allowsDecimalNumbers];

    if (v9)
    {
      v10 = 8;
    }

    else
    {
      v10 = 4;
    }

    [v7 setKeyboardType_];
  }

  v11 = [objc_allocWithZone(type metadata accessor for VariableAutocompleter()) init];
  sub_2745BEA48([v3 variableProvider]);
  if (([v3 isProcessing] & 1) != 0 || (v12 = sub_274505FCC(objc_msgSend(v3, sel_parameter))) == 0)
  {

    v12 = MEMORY[0x277D84FA0];
  }

  sub_2745BEB28(v12);
  v13 = *&v3[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_autocompleteDataSource];
  *&v3[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_autocompleteDataSource] = v11;
  v14 = v11;

  v15 = [objc_allocWithZone(sub_274638A6C()) init];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRetain();
  }

  sub_274638A5C();
  sub_27463885C();
  swift_allocObject();
  sub_2744A4D04(&qword_28094CF90, 255, type metadata accessor for VariableAutocompleter, &unk_27465D338);
  v16 = v14;
  sub_27463886C();
  sub_274638A3C();
  sub_2744A4D04(&unk_28094D758, v17, type metadata accessor for QuantityFieldParameterSummaryEditor, &unk_274650744);
  swift_unknownObjectRetain();
  sub_274638A4C();

  v18 = *&v3[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_autocompleteCoordinator];
  *&v3[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_autocompleteCoordinator] = v15;
}

id sub_2744A3EA4(void *a1)
{
  if (a1)
  {
    v1 = [a1 string];
    sub_27463B6AC();
    OUTLINED_FUNCTION_4_14();

    v2 = sub_27463B66C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() shouldChangeText:v2 allowMinus:0];

  return v3;
}

void sub_2744A3F90(void *a1)
{
  v2 = v1;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v27, sel_textEntryTextDidChange_, a1);
  if (a1)
  {
    v4 = [a1 string];
    v5 = sub_27463B6AC();
    a1 = v6;

    OUTLINED_FUNCTION_15_2();
    v7 = sub_27463B66C();
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v8 = objc_opt_self();
  v9 = [v2 parameter];
  v10 = [v9 allowsDecimalNumbers];

  v11 = [v8 stringBySanitizingNumberString:v7 allowDecimalNumbers:v10];
  if (v11)
  {
    v12 = sub_27463B6AC();
    v14 = v13;

    if (a1)
    {
      v15 = v12 == v5 && a1 == v14;
      if (v15 || (sub_27463C6BC() & 1) != 0)
      {

        OUTLINED_FUNCTION_15_2();
        v5 = sub_27463B66C();

        v16 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithValue_];

        goto LABEL_16;
      }
    }

LABEL_13:
    v17 = [v2 textEntry];
    if (v17)
    {
      v18 = v17;
      if (a1)
      {
        OUTLINED_FUNCTION_15_2();
        v19 = sub_27463B72C();
      }

      else
      {
        v19 = 0;
      }

      if (v14)
      {
        v24 = v12;
      }

      else
      {
        v24 = 0;
      }

      if (v14)
      {
        v25 = v14;
      }

      else
      {
        v25 = 0xE000000000000000;
      }

      sub_274412734(0, &qword_280953450, 0x277CCA898);
      v26 = sub_2745A9480(v24, v25);
      [v18 wf:0 replaceRange:v19 withAttributedText:v26];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v16 = 0;
  v12 = 0;
  v14 = 0;
  if (a1)
  {
    goto LABEL_13;
  }

LABEL_16:
  v20 = [v2 currentState];
  if (v20 && (sub_2744A4C9C(v20, &selRef_unitString), v21))
  {
    OUTLINED_FUNCTION_4_14();
  }

  else
  {
    sub_2744A4C9C([v2 parameter], &selRef_moduleDefaultUnitString);
    OUTLINED_FUNCTION_4_14();
  }

  objc_allocWithZone(MEMORY[0x277D7C788]);
  v22 = v16;
  v23 = sub_2744A4A84(v16, a1, v5);
  [v2 stageState_];
}

void sub_2744A4320(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_textEntryDidFinish);
  v2 = OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_hasStagedChanges;
  if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_hasStagedChanges) == 1)
  {
    v3 = [v1 currentState];
    [v1 commitState_];

    *(v1 + v2) = 0;
  }

  if ((*(v1 + OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_isPickingActionOutput) & 1) == 0)
  {
    [v1 completeEditing];
  }
}

id sub_2744A4418(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  result = objc_msgSendSuper2(&v4, sel_stageState_, a1);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_hasStagedChanges) = 1;
  return result;
}

void sub_2744A44D8(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    if (a1 != 1)
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D7C6A8]) initWithVariable_];
      v4 = [v2 currentState];
      if (v4)
      {
        v5 = sub_2744A4C9C(v4, &selRef_unitString);
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 0;
      }

      v12 = objc_allocWithZone(MEMORY[0x277D7C788]);
      v13 = sub_2744A4A84(v3, v5, v7);
      [v2 stageState_];

      sub_27448A8A0();
    }
  }

  else
  {
    v8 = [v1 variableProvider];
    if (v8)
    {
      v9 = v8;
      v10 = sub_274505FCC([v1 parameter]);
      if (v10)
      {
        v11 = sub_2744896FC(*MEMORY[0x277D7D068], v10);
      }

      else
      {
        v11 = 0;
      }

      *(v1 + OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_isPickingActionOutput) = 1;
      sub_27448A8A0();
      v14 = [v1 variableUIDelegate];
      if (v14)
      {
        v15 = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = v2;
        v19[4] = sub_2744A4C1C;
        v19[5] = v16;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 1107296256;
        v19[2] = sub_274486F8C;
        v19[3] = &block_descriptor_13;
        v17 = _Block_copy(v19);
        v18 = v2;

        [v15 showActionOutputPickerAllowingShortcutInput:v11 variableProvider:v9 completionHandler:v17];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v17);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2744A4774(void *a1, id a2)
{
  if (a1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D7C6A8]);
    v12 = a1;
    v5 = [v4 initWithVariable_];
    v6 = [a2 currentState];
    if (v6)
    {
      v7 = sub_2744A4C9C(v6, &selRef_unitString);
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = objc_allocWithZone(MEMORY[0x277D7C788]);
    v11 = sub_2744A4A84(v5, v7, v9);
    [a2 commitState_];

    [a2 completeEditing];
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_isPickingActionOutput) = 0;

    [a2 requestTextEntry];
  }
}

id sub_2744A48B8(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_autocompleteDataSource] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_hasStagedChanges] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_isPickingActionOutput] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor35QuantityFieldParameterSummaryEditor_autocompleteCoordinator] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2744A4994(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QuantityFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2744A4A14()
{
  sub_27448E094();
  sub_27463880C();
  if (v0 != 2)
  {
    sub_2744A44D8(v0);
    sub_27448E0E8(v0);
  }
}

id sub_2744A4A84(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_27463B66C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithMagnitudeState:a1 unitString:v5];

  return v6;
}

id sub_2744A4AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_27463B66C();

  if (a4)
  {
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_27443E0E8;
    v14[3] = &block_descriptor_25;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithTitle:v10 state:a3 handler:v11];
  _Block_release(v11);

  return v12;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2744A4C3C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_27463B6AC();

  return v4;
}

void *sub_2744A4C9C(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_27463B6AC();
  OUTLINED_FUNCTION_4_14();

  return v2;
}

uint64_t sub_2744A4D04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2744A4D4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2744A34B8(v2, v3);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  return sub_27444C44C(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1)
{

  return sub_27463C6BC();
}

id sub_2744A4E94()
{
  result = [objc_allocWithZone(WFTagField) initWithFrame:0 showsAddButton:{0.0, 0.0, 0.0, 0.0}];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_2744A4EDC(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = type metadata accessor for TagFieldHostView(0);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  (*(v2 + 32))(aBlock);
  v13 = aBlock[0];
  if (aBlock[0])
  {
    v14 = [aBlock[0] value];
  }

  else
  {
    v14 = 0;
  }

  [a1 setTags_];

  v15 = *(v3 + 8);
  v16 = qword_28094A100;
  if (sub_2744A63E0(*(v15 + qword_28094A100)))
  {
    v17 = sub_27463B7FC();
  }

  else
  {
    v17 = 0;
  }

  [a1 setSuggestedTags_];

  v18 = [*(v15 + v16) textAlignment];
  WFTextAlignmentFromString();

  OUTLINED_FUNCTION_4_15(v19, sel_setTextAlignment_);
  v20 = sub_2745D36C8(*(v15 + v16));
  if (!v21)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  sub_2744A6444(v20, v21, a1);
  v22 = [*(v15 + v16) keyboardType];
  WFKeyboardTypeFromString();

  OUTLINED_FUNCTION_4_15(v23, sel_setKeyboardType_);
  v24 = [*(v15 + v16) autocorrectionType];
  WFAutocorrectionTypeFromString();

  OUTLINED_FUNCTION_4_15(v25, sel_setAutocorrectionType_);
  v26 = [*(v15 + v16) autocapitalizationType];
  WFAutocapitalizationTypeFromString();

  OUTLINED_FUNCTION_4_15(v27, sel_setAutocapitalizationType_);
  [a1 setAllowsTextEntry_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7D8, &unk_2746508C0);
  sub_27463A1CC();
  LOBYTE(v26) = sub_274639A6C();
  (*(v8 + 8))(v12, v32);
  [a1 setEditable_];
  sub_2744A637C(v3, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v29 = swift_allocObject();
  sub_2744A64A8(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  aBlock[4] = sub_2744A650C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2744A5368;
  aBlock[3] = &block_descriptor_14;
  v30 = _Block_copy(aBlock);

  [a1 setUpdateBlock_];
  _Block_release(v30);
}

void sub_2744A52D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_27463B66C();
    v5 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

    v6 = *(a3 + 48);
    v8 = v5;
    v6(&v8);
  }

  else
  {
    v7 = *(a3 + 48);
    v8 = 0;
    v7(&v8);
  }
}

uint64_t sub_2744A5368(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_27463B6AC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

id sub_2744A53E4()
{
  v1 = type metadata accessor for TagFieldHostView(0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3_0();
  v4 = v3 - v2;
  sub_2744A637C(v0, v3 - v2);
  v5 = type metadata accessor for TagFieldHostView.Coordinator(0);
  v6 = objc_allocWithZone(v5);
  sub_2744A637C(v4, v6 + OBJC_IVAR____TtCV14WorkflowEditor16TagFieldHostView11Coordinator_hostView);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_2744928F4(v4);
  return v7;
}

void sub_2744A54A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for TagFieldHostView(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  sub_2744A637C(v4 + OBJC_IVAR____TtCV14WorkflowEditor16TagFieldHostView11Coordinator_hostView, v12 - v11);
  v14 = *(v13 + *(v10 + 40));
  if (v14)
  {
    v15 = v14;
    sub_2744928F4(v13);
    *&v19 = a2;
    *(&v19 + 1) = a1 & 1;
    v20 = a3;
    v21 = a4;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    swift_unknownObjectRetain();

    sub_27443CA58(&v19);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_0_23();
    v18 = sub_2744A6334(v16, v17, &protocol conformance descriptor for WorkflowEditorOptions);
    OUTLINED_FUNCTION_2_14(v18);
    __break(1u);
  }
}

void sub_2744A5688(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a4;
  v41 = a7;
  v38 = type metadata accessor for TagFieldHostView(0);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_0();
  v39 = v12 - v11;
  v13 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v20 = v7 + OBJC_IVAR____TtCV14WorkflowEditor16TagFieldHostView11Coordinator_hostView;
  v21 = *(v7 + OBJC_IVAR____TtCV14WorkflowEditor16TagFieldHostView11Coordinator_hostView + 64);
  if (*(v7 + OBJC_IVAR____TtCV14WorkflowEditor16TagFieldHostView11Coordinator_hostView + 72) == 1)
  {
    v22 = swift_unknownObjectRetain();
    if (!v21)
    {
      return;
    }
  }

  else
  {

    sub_27463BC0C();
    v37 = a5;
    v23 = a1;
    v24 = sub_27463A2FC();
    sub_274638CEC();

    a1 = v23;
    a5 = v37;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v21, 0);
    v22 = (*(v15 + 8))(v19, v13);
    v21 = v42;
    if (!v42)
    {
      return;
    }
  }

  MEMORY[0x28223BE20](v22);
  *(&v36 - 2) = v7;
  *(&v36 - 1) = a1;
  sub_27463B13C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0, &unk_2746508D0);
  sub_27463946C();

  v25 = v39;
  sub_2744A637C(v20, v39);
  v26 = *(v25 + *(v38 + 32));
  if (v26)
  {
    v27 = v26;
    sub_2744928F4(v25);
    if (a6)
    {
      v28 = swift_allocObject();
      v29 = v41;
      *(v28 + 16) = a6;
      *(v28 + 24) = v29;
      v30 = sub_27440CBD0;
    }

    else
    {
      v30 = CGSizeMake;
      v28 = 0;
    }

    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v28;
    *&v42 = a1;
    *(&v42 + 1) = v21;
    v43 = sub_27440CB74;
    v44 = v31;
    v45 = v40;
    v46 = a5;
    v47 = 1;
    sub_2744069F0(a6, v41);

    v32 = a1;
    swift_unknownObjectRetain();
    sub_27443CA58(&v42);

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_0_23();
    v35 = sub_2744A6334(v33, v34, &protocol conformance descriptor for WorkflowEditorOptions);
    OUTLINED_FUNCTION_2_14(v35);
    __break(1u);
  }
}