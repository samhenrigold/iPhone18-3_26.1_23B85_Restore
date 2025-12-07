uint64_t sub_274590BB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_2745943B4(a2, v7 & ~(v7 >> 63), a3, a2, a3);
  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = result;
  }

  if (v9 >= a2)
  {
    return a2;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_274590C28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  if (a4)
  {
    v16 = [*(v5 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
    v17 = [v16 validIndexForInsertingActionAtIndex_];

    return sub_27458FFA0(v17);
  }

  else
  {
    result = sub_27458FEAC(a2);
    if (a3 < a2 && __OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v19 = sub_27458FEAC(a3);
      v20 = [*(v5 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
      sub_27463BD7C();

      v21 = sub_27463BD9C();
      v22 = sub_27458FFA0(v21);
      result = (*(v11 + 8))(v15, v9);
      if (v19 >= v21)
      {
        return v22;
      }

      v23 = __OFSUB__(v22, 1);
      v22 = (v22 - 1);
      if (!v23)
      {
        return v22;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_274590E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = [*(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
  sub_27458FEAC(a2);
  sub_27463BD7C();

  v15 = *(v4 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions) + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    v18 = sub_27458FEAC(a3);
    (*(v16 + 40))(v13, v18, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_274590F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorOptions);
  sub_27443DB34(0);
  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    v8 = v5 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
    OUTLINED_FUNCTION_16_12();
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(*(v7 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);

      v12 = v11;
      v13 = sub_27458FEAC(a3);
      (*(v9 + 24))(v12, v13, ObjectType, v9);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

BOOL sub_2745910B4()
{
  if (sub_2745861DC())
  {
    return 0;
  }

  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    sub_2746383DC();
    if (swift_dynamicCastClass())
    {
      return 0;
    }
  }

  type metadata accessor for WFEditorSystemInputProviderItem();
  OUTLINED_FUNCTION_0_10();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  if (v0)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_21_2();
    if (swift_dynamicCastObjCClass())
    {
      return 0;
    }
  }

  type metadata accessor for WFEditorWorkflowOutputItem();
  OUTLINED_FUNCTION_0_10();
  return swift_dynamicCastClass() == 0;
}

uint64_t sub_274591184(uint64_t a1, uint64_t a2)
{
  v3 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  type metadata accessor for WFEditorActionItem();
  OUTLINED_FUNCTION_0_10();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = v10;

  v12 = OUTLINED_FUNCTION_31_10();
  sub_2744B2A84(v12, v13);
  v15 = v14;

  if (v15)
  {

    return MEMORY[0x277D84F90];
  }

  v17 = [*(v2 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actionTree];
  sub_27463BD7C();

  MEMORY[0x28223BE20](v18);
  *&v22[-16] = v11;
  *&v22[-8] = v9;

  sub_27448E91C();
  v20 = v19;
  if (v19 >> 62)
  {
    type metadata accessor for WFEditorItem();
    OUTLINED_FUNCTION_21_2();
    v16 = sub_27463C57C();
  }

  else
  {

    sub_27463C6CC();
    type metadata accessor for WFEditorItem();
    v16 = v20;
  }

  (*(v5 + 8))(v9, v3);
  return v16;
}

uint64_t sub_2745913A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_274599D28();
  if (v2 == sub_274599D28())
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_27463BD8C();
    v9 = *(*(v1 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
    MEMORY[0x28223BE20](v4);
    v8[2] = &v9;
    v6 = v5;
    v3 = sub_27446ECA4(sub_274594DD8, v8, v4);
  }

  return v3 & 1;
}

void *sub_2745914A8()
{
  sub_27458D458();
  sub_274591854();
  return sub_27443DB34(0);
}

void sub_2745914E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_38_6();
  v4 = v3;
  v25 = MEMORY[0x277D84F90];
  v5 = sub_274453594();
  if (v5)
  {
    v6 = v5;
    if (v5 < 1)
    {
      __break(1u);
      goto LABEL_23;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C58B20](i, v4);
      }

      else
      {
      }

      type metadata accessor for WFEditorActionItem();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        *(*(v8 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action);
        MEMORY[0x277C57F30]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_27463B85C();
        }

        sub_27463B8AC();
      }
    }
  }

  sub_27463BDCC();
  OUTLINED_FUNCTION_21_2();
  v9 = sub_274588EFC();
  v10 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
  *(v2 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree) = v9;
  v24 = v9;

  v11 = [*(v2 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v12 = sub_27463B81C();

  v13 = sub_274453594();
  if (v13)
  {
    v14 = v13;
    if (v13 >= 1)
    {
      for (j = 0; j != v14; ++j)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x277C58B20](j, v12);
        }

        else
        {
          v16 = *(v12 + 8 * j + 32);
        }

        v17 = v16;
        [v16 setActionTree_];
      }

      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_19:

  OUTLINED_FUNCTION_35_6();
  sub_274595CB8(v18, v19, v20, v21);
  OUTLINED_FUNCTION_28_14();
}

void sub_27459173C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree) = 0;

  v2 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_workflow) actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  v3 = sub_27463B81C();

  v4 = sub_274453594();
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = OUTLINED_FUNCTION_13_3();
        v8 = MEMORY[0x277C58B20](v7);
      }

      else
      {
        v8 = *(v3 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setActionTree_];
    }
  }

  sub_27458DC90(1);
}

void sub_274591854()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) != 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  v1 = v11;
  if (v14 != 1)
  {
    sub_27443C9D4(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
    return;
  }

  swift_unknownObjectRelease();

  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions);
  v3 = sub_274453594();

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

LABEL_17:
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v14 = 2;
      sub_27443CA58(&v11);

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C58B20](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(*(v5 + 32) + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) == v11)
    {

      v6 = sub_274589024();
      v7 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
      swift_beginAccess();
      v8 = *&v6[v7];

      v10 = sub_27452F0D0(v9, v8);

      swift_endAccess();
      if (v10)
      {

        sub_2745885D0(v10, 0);
      }

      else
      {
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_274591AA8()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_editorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  if (sub_274453594())
  {
    sub_274573FD0();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_cancellables) = v2;
  v3 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionObservationCancellables;
  type metadata accessor for WFEditorItem();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952678, &unk_27465C0C0);
  OUTLINED_FUNCTION_7_28();
  sub_274594370(v4, 255, v5);
  *(v0 + v3) = sub_27463B4DC();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___emptyStateView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___editorView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actions) = v1;
  v6 = OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_actionOutputItems;
  type metadata accessor for WFEditorActionOutputItem();
  *(v0 + v6) = sub_27463B4DC();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController____lazy_storage___systemInputProviderAction) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_inputAction) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_activeVariablePickingAnchoredAction) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_outputItem) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_draggingActionTree) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_currentVisibleActionIdentifiers) = v1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_prefixItemCount) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_keyboardIsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_isFocusedOnRevealedAction) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_parameterEditingHintView) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items) = v1;
  sub_27463C56C();
  __break(1u);
}

void sub_274591D38(void *a1)
{
  v1 = [a1 presentedViewController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525A8, &qword_27465C010);
  OUTLINED_FUNCTION_0_10();
  v2 = swift_dynamicCastClass();

  if (v2)
  {
    v3 = sub_27443C514();
    if (v3)
    {
      v4 = v3;
      [v3 finishEditingReturningToKeyboard_];
    }
  }
}

void sub_274591E5C(uint64_t a1, uint64_t a2)
{
  sub_27443B240(1);
  v4 = sub_274589024();
  v5 = objc_allocWithZone(MEMORY[0x277D44360]);
  OUTLINED_FUNCTION_13_5();

  v6 = sub_274593AE4(a1, a2, v4, 0, 0);
  [objc_opt_self() runTestWithParameters_];
}

uint64_t sub_274591F38(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 32) = a1;
  swift_unknownObjectWeakAssign();

  return WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(1, 0, 0);
}

void sub_27459200C()
{

  JUMPOUT(0x277C5A3A0);
}

uint64_t sub_27459203C()
{
  v1 = *(v0 + 32);

  MEMORY[0x277C5A3A0](v0 + 40);

  return MEMORY[0x2821FE8D8](v0);
}

char *sub_274592094()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView);
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ActionCellContentView());

    v6 = sub_274594410(v5, v4);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_27459211C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell_actionItem) = a1;
  swift_retain_n();

  sub_27459A464(a1);
}

char *sub_274592180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView) = 0;
  *(v3 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell_actionItem) = a1;
  v6 = swift_retain_n();
  v9 = sub_274599D88(v6, a2, a3, v7, v8);
  v10 = *(v9 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v11 = v9;
  v12 = v10;
  v13 = sub_274592094();
  [v12 addSubview_];

  sub_274592234();

  return v11;
}

void sub_274592234()
{
  v1 = v0;
  v2 = sub_274592094();
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell_actionItem);
  v4 = sub_274594370(&unk_280952570, 255, type metadata accessor for WFEditorActionItem);
  v5 = &v2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item];
  *v5 = v3;
  *(v5 + 1) = v4;

  v6 = swift_unknownObjectRelease();
  sub_2745384A0(v6);

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView);
  v9 = objc_opt_self();
  v10 = v8;
  if (v7)
  {
    v11 = [v9 systemYellowColor];
    v12 = [v11 colorWithAlphaComponent_];
  }

  else
  {
    v12 = [v9 clearColor];
  }

  [v10 setBackgroundColor_];
}

void sub_2745923D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFEditorActionCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_274592094();
  [*&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView] bounds];
  [v1 setFrame_];
}

double sub_274592494(double a1, double a2)
{
  v4 = sub_274592094();
  [v4 sizeThatFits_];
  v6 = v5;

  return v6;
}

void sub_274592508()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1918WFEditorActionCell____lazy_storage___actionContentView) = 0;
  sub_27463C56C();
  __break(1u);
}

uint64_t sub_2745925A8()
{
}

uint64_t sub_274592690()
{

  return MEMORY[0x2821FE8D8](v0);
}

char *sub_2745926C8(uint64_t a1)
{
  v3 = type metadata accessor for WorkflowOutputPreviewView(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_27440FB1C(*(a1 + 32), (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809525B8, &qword_27465C060));
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1926WFEditorWorkflowOutputCell_hostingView) = sub_27463959C();

  v9 = sub_274599D88(v6, 0xD000000000000012, 0x800000027468E120, v7, v8);
  v10 = *(v9 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v11 = *(v9 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1926WFEditorWorkflowOutputCell_hostingView);
  v12 = v9;
  [v10 addSubview_];

  return v12;
}

id sub_2745927EC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFEditorWorkflowOutputCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1926WFEditorWorkflowOutputCell_hostingView];
  [*&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView] bounds];
  return [v1 setFrame_];
}

uint64_t sub_27459299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[6] = a3;
  v7[7] = a4;
  v7[9] = a5;
  v7[10] = a6;
  v7[8] = a7;
  return WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(0, 0, 0);
}

uint64_t sub_2745929EC()
{

  swift_unknownObjectRelease();
}

uint64_t sub_274592A34()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_274592A74()
{
  v0 = sub_274592A34();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274592AB8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1925WFEditorActionOutputsCell_outputViews) = MEMORY[0x277D84F90];

  v6 = sub_274599D88(v3, 0xD000000000000011, 0x800000027468E100, v4, v5);
  v29 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView;
  v7 = *(v6 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor_];

  v11 = *(a1 + 32);
  result = sub_274453594();
  if (!result)
  {

    return v6;
  }

  v13 = result;
  if (result >= 1)
  {
    v14 = OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1925WFEditorActionOutputsCell_outputViews;

    v15 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x277C58B20](v15, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
        swift_unknownObjectRetain();
      }

      v17 = [v16 displayName];
      v18 = sub_27463B6AC();
      v20 = v19;

      v21 = [v16 icon];
      v22 = objc_allocWithZone(MEMORY[0x277D7D7E0]);
      v23 = sub_274593BF8(v18, v20, v21, 0, 1, 0, 24.0);
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = v16;
      v25 = objc_allocWithZone(type metadata accessor for WFEditorVariablePillViewTapGestureRecognizer());

      v26 = v23;
      swift_unknownObjectRetain();
      v27 = sub_2745932E4(sub_274594DF8, v24);
      [v26 addGestureRecognizer_];

      [*(v6 + v29) addSubview_];
      v28 = swift_beginAccess();
      MEMORY[0x277C57F30](v28);
      if (*((*(v6 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      ++v15;
      sub_27463B8AC();
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    while (v13 != v15);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_274592DB4(uint64_t a1, id a2)
{
  v2 = *(a1 + 48);
  v3 = [a2 variableWithProvider_];
  v2();

  memset(v5, 0, sizeof(v5));
  v6 = 2;
  return sub_27443CA58(v5);
}

uint64_t sub_274592E38()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for WFEditorActionOutputsCell();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1925WFEditorActionOutputsCell_outputViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  result = sub_274453594();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v5 = 0;
    v6 = 0.0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C58B20](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      [v7 intrinsicContentSize];
      v10 = v9;
      [v8 frame];
      [v8 setFrame_];

      v6 = v6 + v10;
    }

    while (v4 != v5);
  }

  result = sub_274453594();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  [v0 frame];
  v11 = [v0 traitCollection];
  [v11 displayScale];

  BSFloatRoundForScale();
  v13 = v12;
  v14 = *&v0[v1];
  result = sub_274453594();
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (result < 1)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v16 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x277C58B20](v16, v14);
    }

    else
    {
      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    ++v16;
    [v17 frame];
    [v18 setFrame_];
    [v18 frame];
    v20 = v19;

    v13 = v13 + v20 + 10.0;
  }

  while (v15 != v16);
}

void sub_2745930FC()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1925WFEditorActionOutputsCell_outputViews) = MEMORY[0x277D84F90];
  sub_27463C56C();
  __break(1u);
}

id sub_2745932E4(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14WorkflowEditorP33_614F1DFEBF3DEBC915070CB296BEEF1944WFEditorVariablePillViewTapGestureRecognizer_action];
  *v3 = a1;
  *(v3 + 1) = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for WFEditorVariablePillViewTapGestureRecognizer();

  v4 = objc_msgSendSuper2(&v6, sel_initWithTarget_action_, 0, 0);
  [v4 addTarget:v4 action:{sel_handleTap_, v6.receiver, v6.super_class}];

  return v4;
}

id WFEditorDrawerDragInteraction.__allocating_init(itemProvider:previewView:floatingViewOutsets:dragDidBeginHandler:)()
{
  OUTLINED_FUNCTION_16_18();
  v3 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_39();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = OUTLINED_FUNCTION_19_14();
  return sub_27459A888(v6, v7, v8, v9, v10, v5, v11, v12, v13);
}

id WFEditorDrawerDragInteraction.init(itemProvider:previewView:floatingViewOutsets:dragDidBeginHandler:)()
{
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_39();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v8 = OUTLINED_FUNCTION_19_14();

  return sub_27459A888(v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2745935F0(void (*a1)(__n128))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B6A8, &qword_27464B4E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_27463814C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  a1(v10);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_274415174(v4, &qword_28094B6A8, &qword_27464B4E0);
    return 0;
  }

  (*(v6 + 32))(v12, v4, v5);
  (*(v6 + 16))(v8, v12, v5);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D7BE50])
  {
    (*(v6 + 96))(v8, v5);
    v14 = *v8;
    type metadata accessor for ActionCellViewModel();
    v15 = sub_27444A2FC(v14);
    type metadata accessor for WFEditorActionItem();
    swift_allocObject();
    v13 = sub_274591F38(v15, 0);

    (*(v6 + 8))(v12, v5);
    return v13;
  }

  result = sub_27463C6AC();
  __break(1u);
  return result;
}

id sub_274593884(uint64_t a1, uint64_t (*a2)(uint64_t), SEL *a3)
{
  v6.receiver = v3;
  v6.super_class = a2(a1);
  return objc_msgSendSuper2(&v6, *a3);
}

uint64_t sub_274593A88(uint64_t a1)
{
  result = sub_274594370(&qword_280952568, 255, type metadata accessor for WFEditorActionItem);
  *(a1 + 8) = result;
  return result;
}

id sub_274593AE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_27463B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_27443E0E8;
  v13[3] = &block_descriptor_32;
  v10 = _Block_copy(v13);

LABEL_6:
  v11 = [v5 initWithTestName:v9 scrollView:a3 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

double block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_274593BF8(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6, double a7)
{
  v13 = sub_27463B66C();

  v14 = [v7 initWithName:v13 icon:a3 font:a4 available:a5 & 1 height:a6 controlState:a7];

  return v14;
}

uint64_t sub_274593C98(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v5 = a2;
    v6 = v2;
  }

  else
  {
    if (!v4)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }

      v8 = 0;
      v9 = 1 << *(a1 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(a1 + 64);
      v12 = (v9 + 63) >> 6;
      while (v11)
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_33:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v8 << 6)));

        sub_274534D60(v16);
        v18 = v17;

        if ((v18 & 1) == 0)
        {

          return 0;
        }

        v19 = sub_274599D28();
        v20 = sub_274599D28();

        if (v19 != v20)
        {
          return 0;
        }
      }

      v14 = v8;
      while (1)
      {
        v8 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v8 >= v12)
        {
          return 1;
        }

        v15 = *(v3 + 64 + 8 * v8);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v11 = (v15 - 1) & v15;
          goto LABEL_33;
        }
      }

      __break(1u);
      return MEMORY[0x2821FCF40](a1, a2);
    }

    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = v3;
  }

  return sub_274593E98(v5, v6);
}

uint64_t sub_274593E98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_27463C27C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_27463C53C();

    if (!v12)
    {

      return 0;
    }

    type metadata accessor for WFEditorActionOutputItem();
    swift_dynamicCast();
    v13 = sub_274599D28();
    v14 = sub_274599D28();

    if (v13 != v14)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 64 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_274594028(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_27463C71C();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;
    v10 = sub_274534DD8(v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952660, &unk_27465C0B0);
      sub_27463C4DC();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v20[6] + 8 * v15) = v8;
    *(v20[7] + 8 * v15) = v7;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v20[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_2744310A0(v14, a2 & 1);
  v18 = sub_274534DD8(v8);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v15 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280954320, &qword_27465F800);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_27463C38C();
  MEMORY[0x277C57EA0](0xD00000000000001BLL, 0x800000027468E230);
  sub_27463C4BC();
  MEMORY[0x277C57EA0](39, 0xE100000000000000);
  sub_27463C56C();
  __break(1u);
}

id sub_2745942EC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F500, &unk_27464ADC0);
  sub_27463B4BC();
  OUTLINED_FUNCTION_29_11();

  v4 = [a2 copyWithSerializedParameters_];

  return v4;
}

uint64_t sub_274594370(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2745943B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v5 <= 0 && v5 > a2)
    {
      return 0;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && v5 < a2)
  {
    return 0;
  }

  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_19;
  }

  if (result < a4 || result > a5)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_274594410(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FE90, &unk_274657610);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE60, &qword_27464A280);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v49 - v8;
  v10 = sub_274594370(&unk_280952570, 255, type metadata accessor for WFEditorActionItem);
  v11 = OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_progressLayer;
  *&a2[v11] = [objc_allocWithZone(type metadata accessor for ProgressLayer()) init];
  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___warningView] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___actionHeaderView] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___auxiliaryContentView] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView____lazy_storage___dimmingOverlayView] = 0;
  if (sub_274453594())
  {
    sub_274573FD0();
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  *&a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_cancellables] = v12;
  v13 = &a2[OBJC_IVAR____TtC14WorkflowEditor21ActionCellContentView_item];
  *v13 = a1;
  *(v13 + 1) = v10;
  v14 = type metadata accessor for ActionCellContentView();
  v54.receiver = a2;
  v54.super_class = v14;

  v15 = objc_msgSendSuper2(&v54, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = sub_27463BEEC();
  [v16 setMasksToBounds_];

  v17 = sub_27463BEEC();
  [v17 addSublayer_];

  sub_274538B90();
  sub_274538CC8();
  v19 = sub_274537C9C(v18);
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor_];

  [v15 addSubview_];
  v21 = sub_274537D40();
  [v15 addSubview_];

  v22 = sub_274537D74();
  [v15 addSubview_];

  v23 = sub_274537E4C();
  [v15 addSubview_];

  swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v49[0] = a1;
    v49[1] = v10;
    v27 = v6;
    v28 = AssociatedConformanceWitness;
    v29 = v7;
    v30 = *(AssociatedConformanceWitness + 24);
    v31 = swift_checkMetadataState();
    v32 = v30(v31, v28);

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AE58, &qword_27464A278);
    sub_274638F7C();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_274458A14(&qword_2809525A0, &qword_28094AE60, &qword_27464A280);
    sub_274638FFC();

    (*(v29 + 8))(v9, v27);
    swift_beginAccess();
    sub_274638EAC();
    swift_endAccess();
  }

  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    swift_getAssociatedTypeWitness();
    v35 = swift_getAssociatedConformanceWitness();
    v36 = *(v35 + 16);
    v37 = swift_checkMetadataState();
    v38 = v36(v37, v35);

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FEB0, &qword_2746565C0);
    v39 = v50;
    sub_274638F7C();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_274458A14(&unk_280952590, &unk_28094FE90, &unk_274657610);
    v40 = v52;
    sub_274638FFC();

    (*(v51 + 8))(v39, v40);
    swift_beginAccess();
    sub_274638EAC();
    swift_endAccess();
  }

  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41)
  {
    v42 = v41;
    swift_getAssociatedTypeWitness();
    v43 = swift_getAssociatedConformanceWitness();
    v44 = *(v43 + 16);
    v45 = swift_checkMetadataState();
    v46 = v44(v45, v43);

    v47 = *&v46[OBJC_IVAR____TtC14WorkflowEditor20EditorShortcutRunner_onLifecycleEvent];

    v53 = v47;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FEC0, &qword_2746565C8);
    sub_274458A14(&unk_280952580, &qword_28094FEC0, &qword_2746565C8);
    sub_274638FFC();

    swift_beginAccess();
    sub_274638EAC();
    swift_endAccess();
  }

  return v15;
}

void sub_274594CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  sub_274587448(v3, a2);
}

uint64_t sub_274594E5C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_274412734(255, a2, a3);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_295Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

char *sub_274594F20(void *a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = &a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_dataSource];
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession] = 0;
  v6 = MEMORY[0x277D84F90];
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions] = MEMORY[0x277D84F90];
  *(OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems + a2) = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems] = v6;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer] = 0;
  v7 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView;
  *&a2[v7] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView;
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  *&a2[v8] = [objc_allocWithZone(type metadata accessor for WFEditorVariableBlurView()) initWithFrame_];
  v13 = &a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_cachedSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_windowTouchObserver] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_indicesForVisibleRows] = v6;
  type metadata accessor for WFEditorCell();
  sub_27463832C();
  v14 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
  type metadata accessor for WFEditorItem();
  sub_274594370(&qword_28094BDF8, 255, type metadata accessor for WFEditorItem);
  *&a2[v14] = sub_27463B4DC();
  v15 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_queuedCells;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952670, &unk_27465C4F0);
  *&a2[v15] = sub_27463B4DC();
  if (sub_274453594())
  {
    sub_2745737B0();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells] = v16;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession] = 0;
  v17 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_rowHeightCache;
  *&a2[v17] = sub_27463B4DC();
  a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates] = 0;
  *&a2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___debugDropTargetView] = 0;
  *(v5 + 1) = &off_28836F8B8;
  v45 = a1;
  swift_unknownObjectWeakAssign();
  v47.receiver = a2;
  v47.super_class = ObjectType;
  v18 = &selRef_dropTargetUpdated;
  v19 = objc_msgSendSuper2(&v47, sel_initWithFrame_, v9, v10, v11, v12);
  [v19 setDelegate_];
  [v19 setAlwaysBounceVertical_];
  [v19 setKeyboardDismissMode_];
  v20 = sub_27459F2A0();
  [v20 setDelegate_];

  [*&v19[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer] setMinimumPressDuration_];
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = sub_27463B66C();
  v23 = [v21 BOOLForKey_];

  if (v23)
  {
    v24 = objc_opt_self();
    v46 = *MEMORY[0x277D74420];
    v25 = objc_opt_self();
    v26 = 0;
    while (1)
    {
      v27 = v26 * 50.0;
      CGSizeMake();
      result = [objc_allocWithZone(MEMORY[0x277D756B8]) v18[143]];
      if (v27 == INFINITY)
      {
        break;
      }

      if (v27 <= -9.22337204e18)
      {
        goto LABEL_12;
      }

      if (v27 >= 9.22337204e18)
      {
        goto LABEL_13;
      }

      v33 = result;
      v34 = sub_27463C66C();
      sub_27455AA28(v34, v35, v33);
      v36 = [v24 systemFontOfSize:6.0 weight:v46];
      [v33 setFont_];

      v37 = [v25 systemIndigoColor];
      [v33 setTextColor_];

      v38 = v33;
      [v19 addSubview_];
      [v38 intrinsicContentSize];

      CGSizeMake();
      v43 = [objc_allocWithZone(MEMORY[0x277D75D18]) v18[143]];
      v44 = [v25 systemIndigoColor];
      [v43 setBackgroundColor_];

      v18 = &selRef_dropTargetUpdated;
      [v19 addSubview_];

      if (++v26 == 201)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:
    [v19 addSubview_];

    return v19;
  }

  return result;
}

void sub_2745955E0()
{
  v1 = *(sub_274637C3C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_274588C90(v3, v0 + v2, v4);
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t result)
{
  *(v2 - 168) = v1;
  *(v2 - 160) = result;
  *(v2 - 200) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  return sub_274638FAC();
}

double OUTLINED_FUNCTION_24_10()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_25_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_27463C56C();
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_27463C56C();
}

uint64_t OUTLINED_FUNCTION_37_6()
{

  return sub_27463C38C();
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return sub_2744535A4();
}

uint64_t OUTLINED_FUNCTION_40_6(uint64_t a1)
{

  return swift_allocObject();
}

id sub_274595918(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_11();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_13_5();
  v3 = sub_27463B66C();

  v4 = OUTLINED_FUNCTION_92_0();
  v6 = [v4 v5];

  return v6;
}

uint64_t sub_2745959AC(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

uint64_t sub_274595A60(uint64_t a1, void (*a2)(uint64_t))
{
  MEMORY[0x277C57F30]();
  a2(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_27463B8AC();
}

unint64_t sub_274595AC0(uint64_t a1, uint64_t a2)
{
  result = sub_274453594();
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x277C58B20](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_274595B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0, &qword_27465C078);
  sub_27440CA78(&qword_280952A90, &unk_2809525E0, &qword_27465C078, MEMORY[0x277D7BEB0]);
  sub_27463BACC();
  sub_27463BB0C();
  return sub_27463BAFC();
}

void (*sub_274595C44(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_2745A806C(v6, a2, a3);
  return sub_27444F5C4;
}

void sub_274595CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_71_0();
  v617 = v5;
  v618 = v7;
  v8 = v4;
  v578 = v9;
  v11 = v10;
  v582 = v12;
  v593 = v13;
  v14 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v569 = v18 - v19;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v20);
  v568 = &v556 - v21;
  OUTLINED_FUNCTION_51_3();
  v22 = sub_27463B1EC();
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_3_0();
  v567 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952A80, &qword_27465C508);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v581 = &v556 - v27;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0, &qword_27465C078);
  OUTLINED_FUNCTION_1();
  v605 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2();
  v570 = v30 - v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_50_3();
  v596 = v33;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_50_3();
  v597 = v35;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_50_3();
  v587 = v37;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_50_3();
  v586 = v39;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_50_3();
  v599 = v41;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v42);
  v580 = &v556 - v43;
  OUTLINED_FUNCTION_51_3();
  v44 = sub_27463B27C();
  OUTLINED_FUNCTION_1();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_0();
  v50 = (v49 - v48);
  v566 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  *v50 = sub_27463BCEC();
  (*(v46 + 104))(v50, *MEMORY[0x277D85200], v44);
  v51 = sub_27463B29C();
  (*(v46 + 8))(v50, v44);
  if ((v51 & 1) == 0)
  {
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
    goto LABEL_328;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_315:
    OUTLINED_FUNCTION_25_16();
    return;
  }

  v563 = v16;
  v564 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates;
  *(v8 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates) = 1;
  v562 = v14;
  v575 = v25;
  if (v11)
  {
    v52 = sub_2745904B0();
    v582 = sub_27459FC30(v52, v582);
  }

  else
  {
  }

  v53 = v600;
  v54 = v605;
  v55 = sub_27459AD34();
  v56 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells;
  OUTLINED_FUNCTION_29_3(v8 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells, &v615);
  v606 = *(v54 + 16);
  (v606)(v580, v8 + v56, v53);
  v57 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
  OUTLINED_FUNCTION_35_6();
  swift_beginAccess();
  v58 = *(v8 + v57);
  v59 = type metadata accessor for WFEditorCell();

  v60 = v599;
  sub_27463832C();
  v61 = OUTLINED_FUNCTION_19_15(v8 + v56);
  v62 = *(v54 + 40);
  v602 = v56;
  v62(v8 + v56, v60, v53, v61);
  swift_endAccess();
  type metadata accessor for WFEditorItem();
  OUTLINED_FUNCTION_10_28();
  sub_2745A8678(v63, v64, v65, &protocol conformance descriptor for WFEditorItem);
  v66 = MEMORY[0x277D84F90];
  v67 = sub_27463B4DC();
  v594 = v57;
  *(v8 + v57) = v67;

  [v8 contentOffset];
  if (v68 + -500.0 < 0.0)
  {
    v69 = 0.0;
  }

  else
  {
    v69 = v68 + -500.0;
  }

  [v8 bounds];
  v71 = v70;
  [v8 contentOffset];
  LODWORD(v588) = v72 > 0.0;
  OUTLINED_FUNCTION_5();
  v73 = swift_allocObject();
  v565 = v73;
  *(v73 + 16) = 0;
  v74 = (v73 + 16);
  v614 = v66;
  v76 = sub_2745A8678(&qword_280952A88, v75, type metadata accessor for WFEditorCell, MEMORY[0x277D85378]);
  v590 = v59;
  v573 = v76;
  v613 = sub_27463B4DC();
  v604 = v8;
  v601 = v54 + 16;
  v592 = v58;
  v577 = v74;
  if (v578)
  {

    v78 = sub_27452F0D0(v77, v58);
    v79 = v602;
    v80 = v58;
    if (v78)
    {
      v583 = v78;

      v607 = 0;
    }

    else
    {
      v81 = sub_27463831C();
      v603 = sub_274453594();
      v82 = 0;
      v607 = 0;
      v53 = (v81 & 0xC000000000000001);
      while (1)
      {
        if (v603 == v82)
        {

          v583 = 0;
          OUTLINED_FUNCTION_65_2();
          goto LABEL_23;
        }

        sub_2744535A4();
        if (v53)
        {
          v83 = MEMORY[0x277C58B20](v82, v81);
        }

        else
        {
          v83 = *(v81 + 8 * v82 + 32);
        }

        if (__OFADD__(v82, 1))
        {
          goto LABEL_325;
        }

        v79 = v83;
        v84 = sub_274599B58();
        v610.a = *&v79[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item];
        MEMORY[0x28223BE20](v84);
        OUTLINED_FUNCTION_58_3();
        *(v85 - 16) = &v610;

        OUTLINED_FUNCTION_45_5();
        v87 = v86;
        OUTLINED_FUNCTION_98_0();

        if (v87)
        {
          break;
        }

        ++v82;
        v8 = v604;
        v80 = v592;
      }

      v583 = v79;

      v8 = v604;
      OUTLINED_FUNCTION_65_2();
      v80 = v592;
LABEL_23:
      v74 = v577;
    }
  }

  else
  {
    v583 = 0;
    v607 = 0;
    v79 = v602;
    v80 = v58;
  }

  sub_274599B58();
  v88 = sub_274453594();

  if (v88 < 0)
  {
    goto LABEL_327;
  }

  v589 = v55 + 0.45;
  v89 = &selRef_dropTargetUpdated;
  v90 = MEMORY[0x277CDA4F0];
  v91 = v71 + v69 + 1000.0;
  if (v88)
  {
    v598 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_rowHeightCache;
    v574 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems;
    OUTLINED_FUNCTION_35_6();
    v93 = v92;
    v95 = v94;
    v603 = v88;
    v97 = v96;
    swift_beginAccess();
    v98 = 0;
    v595 = (v80 & 0xC000000000000001);
    v99 = v80 & 0xFFFFFFFFFFFFFF8;
    if (v80 < 0)
    {
      v99 = v80;
    }

    v584 = v99;
    p_c = &v610.c;
    v100 = *v97;
    v101 = &v610;
    v571 = *v90;
    *&v572 = v100;
    v591 = MEMORY[0x277D84F90];
    v102 = *v95;
    v560 = *v93;
    v561 = v102;
    v559 = *MEMORY[0x277CDA4E8];
    v558 = *MEMORY[0x277CDA4B8];
    v103 = 6.0;
    v104 = 0.0;
    while (1)
    {
      v105 = sub_274599B58();
      if ((v105 & 0xC000000000000001) != 0)
      {
        v106 = COERCE_DOUBLE(MEMORY[0x277C58B20](v98, v105));
      }

      else
      {
        if (v98 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_318;
        }

        v106 = *(v105 + 8 * v98 + 32);
      }

      if ((*(*&v106 + 25) & 1) == 0)
      {
        break;
      }

LABEL_118:
      if (v603 == ++v98)
      {
        if (v593)
        {
          v89 = &selRef_dropTargetUpdated;
          v74 = v577;
          goto LABEL_124;
        }

        v593 = 0;
LABEL_150:
        v305 = v104 == 0.0;
        goto LABEL_151;
      }
    }

    if (v595)
    {

      v107 = sub_27463C53C();

      if (!v107)
      {
        goto LABEL_43;
      }

      v616[0] = v107;
      swift_dynamicCast();
      v108 = *&v610.a;
      if (!*&v610.a)
      {
        goto LABEL_43;
      }
    }

    else if (!*(v80 + 16) || (v109 = sub_274534D60(*&v106), (v110 & 1) == 0) || (v108 = *(*(v80 + 56) + 8 * v109)) == 0)
    {
LABEL_43:
      if (v69 < v103 + sub_27459FCC0(v98) && v103 < v91)
      {
        v579 = v69;
        v116 = sub_274590094(v8, *&v106);
        MEMORY[0x277C57F30]();
        v117 = *((v614 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v614 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v117 >> 1)
        {
          OUTLINED_FUNCTION_0_8(v117);
          sub_27463B85C();
        }

        v118 = v91;
        sub_27463B8AC();
        v591 = v614;
        [v8 frame];
        [v116 setFrame_];
        v119 = sub_274599D28();
        v120 = v598;
        OUTLINED_FUNCTION_20_16(v8 + v598);
        sub_27452F200(v119, *(v8 + v120));
        LOBYTE(v119) = v121;
        swift_endAccess();
        v91 = v104;
        if ((v119 & 1) == 0)
        {
          OUTLINED_FUNCTION_57_3();
          MEMORY[0x28223BE20](v122);
          OUTLINED_FUNCTION_16_19();
          *(v123 - 16) = &v610;
          sub_27446ECD4(sub_2745A8D58, v124, v582);
          OUTLINED_FUNCTION_87_0();
        }

        [v116 setNeedsLayout];
        [v116 layoutIfNeeded];
        [v8 bounds];
        CGRectGetWidth(v619);
        CGSizeMake();
        [v116 sizeThatFits_];
        v126 = v125;
        [v8 contentSize];
        v128 = v127;
        [v8 adjustedContentInset];
        OUTLINED_FUNCTION_73_2();
        v130 = v583;
        if (v583)
        {
          v104 = v129;
          v131 = v116;
          v132 = v130;
          v133 = sub_27463BF7C();

          if ((v133 & 1) != 0 && ([v8 bounds], CGRectGetHeight(v620) <= v128 + v6 + v104))
          {
            [v131 frame];
            v104 = v91;
            v194 = v103 - (v91 + v193);
            *v577 = v194;
            v579 = v579 + v194;
            v91 = v118 + v194;
          }

          else
          {
            OUTLINED_FUNCTION_63_3();
          }

          v101 = &v610;
        }

        else
        {
          OUTLINED_FUNCTION_63_3();
        }

        v195 = OUTLINED_FUNCTION_60_3();
        [v195 v196];
        v197 = COERCE_DOUBLE(sub_274599D28());
        v198 = v598;
        OUTLINED_FUNCTION_20_16(v8 + v598);
        sub_27452F200(*&v197, *(v8 + v198));
        OUTLINED_FUNCTION_39_8();
        v69 = v579;
        if ((v198 & 1) != 0 || v126 != v197)
        {
          if (v588)
          {
            v199 = sub_274599D28();
            v200 = v598;
            OUTLINED_FUNCTION_20_16(v8 + v598);
            sub_27452F200(v199, *(v8 + v200));
            OUTLINED_FUNCTION_39_8();
            v201 = OUTLINED_FUNCTION_54_3();
            if (!v304)
            {
              v201 = v202;
            }

            OUTLINED_FUNCTION_78(v201);
          }

          else
          {
            v200 = v598;
          }

          v203 = sub_274599D28();
          OUTLINED_FUNCTION_19_15(v8 + v200);
          sub_2745FB78C(v203, v126);
          swift_endAccess();
          v101 = &v610;
        }

        OUTLINED_FUNCTION_20_16(&v79[v8]);
        v612[0] = v98 - 1;
        sub_27463837C();
        v204 = v616[0];
        swift_endAccess();
        if (v204)
        {
          [*&v204[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView] setAlpha_];
        }

        v108 = v116;
        [v8 addSubview_];
        v205 = swift_unknownObjectWeakAssign();
        if (v593)
        {
          v610.a = v106;
          MEMORY[0x28223BE20](v205);
          OUTLINED_FUNCTION_58_3();
          *(v206 - 16) = &v610;

          OUTLINED_FUNCTION_45_5();
          v208 = v207;
          OUTLINED_FUNCTION_98_0();
          if (v208)
          {
          }

          else
          {
            v209 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView;
            [*(v108 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView) setAlpha_];
            v210 = *(v108 + v209);
            CGAffineTransformMakeScale(&v610, 0.96, 0.95);
            [v210 setTransform_];
            v579 = COERCE_DOUBLE(sub_274412734(0, &qword_2809525F0, 0x277CD9EA0));
            v211 = sub_27463B6AC();
            v213 = sub_274595918(v211, v212);
            v214 = sub_2746386DC();
            [v213 setValue:v214 forKey:v571];

            sub_27463B95C();
            v215 = OUTLINED_FUNCTION_17_15();
            [v215 v216];

            sub_27463B95C();
            v217 = OUTLINED_FUNCTION_17_15();
            [v217 v218];

            sub_27463B66C();
            v219 = OUTLINED_FUNCTION_17_15();
            [v219 v220];

            sub_27463B66C();
            v221 = OUTLINED_FUNCTION_17_15();
            [v221 v222];

            v223 = [v108 layer];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40, &unk_27465C4E0);
            OUTLINED_FUNCTION_8_4();
            v224 = swift_allocObject();
            *(v224 + 16) = xmmword_274648570;
            *(v224 + 56) = v579;
            *(v224 + 32) = v213;
            v579 = COERCE_DOUBLE(v213);
            sub_2745A85DC(v224, v223, &selRef_setFilters_);

            v557 = objc_opt_self();
            OUTLINED_FUNCTION_5();
            v225 = swift_allocObject();
            *(v225 + 16) = v108;
            *&v610.tx = sub_2745A8A68;
            *&v610.ty = v225;
            *&v610.a = MEMORY[0x277D85DD0];
            OUTLINED_FUNCTION_29_12();
            v610.c = v226;
            *&v610.d = &block_descriptor_300_0;
            v227 = _Block_copy(&v610);
            v228 = v108;

            OUTLINED_FUNCTION_5();
            v229 = swift_allocObject();
            *(v229 + 16) = v228;
            *&v610.tx = sub_2745A8A70;
            *&v610.ty = v229;
            *&v610.a = MEMORY[0x277D85DD0];
            OUTLINED_FUNCTION_31_11();
            v610.c = v230;
            *&v610.d = &block_descriptor_306;
            v231 = _Block_copy(&v610);
            v232 = v228;

            OUTLINED_FUNCTION_0_39();
            [v557 v233];
            _Block_release(v231);
            _Block_release(v227);
            OUTLINED_FUNCTION_5();
            *(swift_allocObject() + 16) = v232;
            v234 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v235 = v232;
            OUTLINED_FUNCTION_26_12();
            v240 = sub_2745FB6C4(v236, v237, v238, v239);
            [v240 startAnimationAfterDelay_];

            OUTLINED_FUNCTION_5();
            *(swift_allocObject() + 16) = v235;
            v241 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v108 = v235;
            OUTLINED_FUNCTION_26_12();
            v246 = sub_2745FB6C4(v242, v243, v244, v245);
            [v246 startAnimationAfterDelay_];
          }

          v53 = v600;
          v101 = &v610;
        }

        else
        {
        }

        goto LABEL_114;
      }

      v134 = sub_27459FCC0(v98);
      v135 = sub_274599D28();
      v136 = v598;
      OUTLINED_FUNCTION_20_16(v8 + v598);
      v137 = *(v8 + v136);
      if (*(v137 + 16) && (v138 = sub_274534DD8(v135), (v139 & 1) != 0))
      {
        v140 = *(*(v137 + 56) + 8 * v138);
        swift_endAccess();
        if (v140 == v134)
        {
LABEL_64:

          v103 = v103 + v134;
LABEL_117:
          v80 = v592;
          goto LABEL_118;
        }
      }

      else
      {
        swift_endAccess();
      }

      if (v588)
      {
        v141 = sub_274599D28();
        v142 = v598;
        OUTLINED_FUNCTION_20_16(v8 + v598);
        sub_27452F200(v141, *(v8 + v142));
        OUTLINED_FUNCTION_39_8();
        v143 = OUTLINED_FUNCTION_54_3();
        if (!v304)
        {
          v143 = v144;
        }

        OUTLINED_FUNCTION_78(v143);
      }

      else
      {
        v142 = v598;
      }

      v145 = sub_274599D28();
      OUTLINED_FUNCTION_19_15(v8 + v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v616[0] = *(v8 + v142);
      *(v8 + v142) = 0x8000000000000000;
      sub_2745FC098(v145, isUniquelyReferenced_nonNull_native, v134);
      *(v8 + v142) = v616[0];
      swift_endAccess();
      v101 = &v610;
      goto LABEL_64;
    }

    v111 = sub_274599D28();
    v112 = v598;
    OUTLINED_FUNCTION_20_16(v8 + v598);
    *&v113 = COERCE_DOUBLE(sub_27452F200(v111, *&v112[v8]));
    if (v114)
    {
      *&v588 = v103;
      v115 = v69;
      swift_endAccess();
    }

    else
    {
      v147 = *&v113;
      swift_endAccess();
      OUTLINED_FUNCTION_57_3();
      MEMORY[0x28223BE20](v148);
      OUTLINED_FUNCTION_16_19();
      *(v149 - 16) = &v610;
      v112 = v607;
      sub_27446ECD4(sub_2745A8D58, v150, v582);
      OUTLINED_FUNCTION_87_0();
      if ((v151 & 1) == 0)
      {
        v180 = v69;
        v181 = v91;
        v91 = v104;
        [v108 bounds];
        v183 = v182;
        v588 = v184;
        [v8 contentSize];
        v186 = v185;
        [v8 adjustedContentInset];
        OUTLINED_FUNCTION_73_2();
        if (v583)
        {
          v104 = v187;
          v188 = v583;
          v189 = OUTLINED_FUNCTION_46_6(v108);

          if (v189)
          {
            v190 = v186 + v6 + v104;
            [v8 bounds];
            v104 = v91;
            v91 = v181;
            v69 = v180;
            v101 = &v610;
            if (CGRectGetHeight(v623) <= v190)
            {
              [v112 frame];
              OUTLINED_FUNCTION_51_4(v191, v192);
            }
          }

          else
          {
            OUTLINED_FUNCTION_63_3();
            v69 = v180;
            v101 = &v610;
          }
        }

        else
        {
          OUTLINED_FUNCTION_63_3();
          v69 = v180;
        }

        v126 = v147;
        if (v593)
        {
          OUTLINED_FUNCTION_100();
          v6 = v103 - (v104 + v247);
          OUTLINED_FUNCTION_19_15(&v613);
          sub_2745FB774(v108, v6);
          swift_endAccess();
          OUTLINED_FUNCTION_100();
          OUTLINED_FUNCTION_96_0(v248, v249);
          v250 = *(v108 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView);
          [v250 frame];
          v101 = &v610;
          [v250 &STACK[0xB48]];
          OUTLINED_FUNCTION_12_1();
          v251 = swift_allocObject();
          *(v251 + 16) = v108;
          *(v251 + 24) = 0;
          *(v251 + 32) = v103;
          *(v251 + 40) = v183;
          *(v251 + 48) = *&v588;
          v252 = objc_allocWithZone(MEMORY[0x277D75D40]);
          v253 = v108;
          v254 = OUTLINED_FUNCTION_9_22();
          [v254 startAnimation];
        }

        else
        {
          v255 = OUTLINED_FUNCTION_60_3();
          [v255 v256];
        }

        goto LABEL_109;
      }

      *&v588 = v103;
      v115 = v69;
    }

    v152 = v91;
    v153 = v598;
    v91 = v104;
    if (v593)
    {
      OUTLINED_FUNCTION_5();
      *(swift_allocObject() + 16) = v108;
      v112 = objc_allocWithZone(MEMORY[0x277D75D40]);
      v154 = v108;
      v155 = OUTLINED_FUNCTION_9_22();
      [v155 startAnimation];
    }

    else
    {
      [v108 setNeedsLayout];
      [v108 layoutIfNeeded];
    }

    [v8 bounds];
    CGRectGetWidth(v621);
    CGSizeMake();
    [v108 sizeThatFits_];
    v157 = v156;
    v126 = v158;
    [v8 contentSize];
    v160 = v159;
    [v8 adjustedContentInset];
    OUTLINED_FUNCTION_73_2();
    if (v583 && (v104 = v161, v101 = v583, v162 = OUTLINED_FUNCTION_46_6(v108), v101, v112, (v162 & 1) != 0))
    {
      v163 = v160 + v6 + v104;
      [v8 bounds];
      Height = CGRectGetHeight(v622);
      v104 = v91;
      v91 = v152;
      v69 = v115;
      v103 = *&v588;
      if (Height <= v163)
      {
        [v112 frame];
        OUTLINED_FUNCTION_51_4(v165, v166);
      }
    }

    else
    {
      OUTLINED_FUNCTION_63_3();
      v69 = v115;
      v103 = *&v588;
    }

    if (v593)
    {
      OUTLINED_FUNCTION_100();
      v168 = v103 - (v104 + v167);
      OUTLINED_FUNCTION_19_15(&v613);
      sub_2745FB774(v108, v168);
      swift_endAccess();
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_96_0(v169, v170);
      v171 = *(v108 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView);
      [v171 frame];
      [v171 v101 + 2424];
      OUTLINED_FUNCTION_12_1();
      v172 = swift_allocObject();
      *(v172 + 16) = v108;
      *(v172 + 24) = 0;
      *(v172 + 32) = v103;
      *(v172 + 40) = v157;
      *(v172 + 48) = v126;
      v173 = objc_allocWithZone(MEMORY[0x277D75D40]);
      LOBYTE(v112) = v173;
      v174 = v108;
      v175 = OUTLINED_FUNCTION_9_22();
      [v175 startAnimation];
    }

    else
    {
      v176 = OUTLINED_FUNCTION_60_3();
      [v176 v177];
    }

    v101 = &v610;
    v178 = COERCE_DOUBLE(sub_274599D28());
    OUTLINED_FUNCTION_20_16(v8 + v153);
    sub_27452F200(*&v178, *(v8 + v153));
    OUTLINED_FUNCTION_39_8();
    if ((v112 & 1) != 0 || v126 != v178)
    {
      v179 = sub_274599D28();
      OUTLINED_FUNCTION_19_15(v8 + v153);
      sub_2745FB78C(v179, v126);
      swift_endAccess();
    }

LABEL_109:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      LODWORD(v588) = 0;
      goto LABEL_116;
    }

    v204 = Strong;
    [v108 frame];
    v258 = &v204[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_dropTargetReferenceSize];
    *v258 = v259;
    *(v258 + 1) = v260;
    sub_27459C170();
    if (*(v108 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) == 2 && (v261 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v262 = v261;
      *&v588 = COERCE_DOUBLE(objc_opt_self());
      OUTLINED_FUNCTION_39();
      v263 = swift_allocObject();
      *(v263 + 16) = v262;
      *(v263 + 24) = v108;
      *&v610.tx = sub_2745A8A9C;
      *&v610.ty = v263;
      *&v610.a = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_29_12();
      v610.c = v264;
      *&v610.d = &block_descriptor_319;
      v579 = COERCE_DOUBLE(_Block_copy(&v610));
      v108 = v108;
      v265 = v262;

      *&v610.tx = CGSizeMake;
      v610.ty = 0.0;
      OUTLINED_FUNCTION_2_31();
      OUTLINED_FUNCTION_31_11();
      v610.c = v266;
      *&v610.d = &block_descriptor_322;
      v267 = _Block_copy(&v610);
      OUTLINED_FUNCTION_0_39();
      v268 = v579;
      [v588 v269];
      v270 = v267;
      v101 = &v610;
      _Block_release(v270);
      _Block_release(*&v268);
      sub_27459A504();

      LODWORD(v588) = 0;
      v204 = v265;
    }

    else
    {
      LODWORD(v588) = 0;
    }

LABEL_114:

LABEL_116:
    v103 = v103 + v126;
    v616[0] = v108;
    v612[0] = v98;
    v79 = v602;
    OUTLINED_FUNCTION_19_15(&v602[v8]);
    v271 = v108;
    sub_27463838C();
    swift_endAccess();
    OUTLINED_FUNCTION_19_15(v8 + v594);

    sub_2745FB818();
    swift_endAccess();

    goto LABEL_117;
  }

  v104 = 0.0;
  v591 = MEMORY[0x277D84F90];
  if ((v593 & 1) == 0)
  {
    v593 = 0;
    goto LABEL_153;
  }

LABEL_124:
  v272 = v599;
  OUTLINED_FUNCTION_64_2();
  v273();
  sub_27463831C();
  v274 = v605 + 8;
  v595 = *(v605 + 8);
  v595(v272, v53);
  sub_274453594();
  OUTLINED_FUNCTION_29_11();

  if (v80 < 1)
  {
    OUTLINED_FUNCTION_82();
    if (v104 != 0.0)
    {
LABEL_147:
      [v8 contentOffset];
      [v8 setContentOffset_];
      v306 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells;
      OUTLINED_FUNCTION_29_3(v8 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells, v612);
      v307 = *(v8 + v306);
      if ((v307 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_27463C23C();
        sub_27463BA7C();
        v308 = v616[0];
        v80 = v616[1];
        v309 = v616[2];
        v79 = v616[3];
        v310 = v616[4];
      }

      else
      {
        v311 = -1 << *(v307 + 32);
        v80 = v307 + 56;
        v309 = ~v311;
        v312 = -v311;
        if (v312 < 64)
        {
          v313 = ~(-1 << v312);
        }

        else
        {
          v313 = -1;
        }

        v310 = v313 & *(v307 + 56);
        swift_bridgeObjectRetain_n();
        v79 = 0;
        v308 = v307;
      }

      v603 = v309;
      v53 = ((v309 + 64) >> 6);
      if ((v308 & 0x8000000000000000) == 0)
      {
        goto LABEL_163;
      }

LABEL_160:
      v314 = sub_27463C2BC();
      if (v314)
      {
        v611[0] = v314;
        swift_dynamicCast();
        a = v610.a;
        v316 = v79;
        v317 = v310;
        if (*&v610.a)
        {
          while (1)
          {
            [*&a frame];
            [*&a setFrame_];

            v79 = v316;
            v310 = v317;
            if (v308 < 0)
            {
              goto LABEL_160;
            }

LABEL_163:
            v318 = v79;
            v319 = v310;
            v316 = v79;
            if (!v310)
            {
              break;
            }

LABEL_167:
            v317 = (v319 - 1) & v319;
            a = COERCE_DOUBLE(*(*(v308 + 48) + ((v316 << 9) | (8 * __clz(__rbit64(v319))))));
            if (a == 0.0)
            {
              goto LABEL_170;
            }
          }

          while (1)
          {
            v316 = (v318 + 1);
            if (__OFADD__(v318, 1))
            {
              break;
            }

            if (v316 >= v53)
            {
              goto LABEL_170;
            }

            v319 = *(v80 + 8 * v316);
            ++v318;
            if (v319)
            {
              goto LABEL_167;
            }
          }

LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
          goto LABEL_326;
        }
      }

LABEL_170:
      sub_274406A24(v308);

      v8 = v604;
      v320 = *(v604 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView);
      v89 = &selRef_dropTargetUpdated;
      [v320 frame];
      [v320 setFrame_];
      OUTLINED_FUNCTION_65_2();
      v74 = v577;
      goto LABEL_171;
    }

LABEL_153:
    OUTLINED_FUNCTION_29_3(v74, v616);
    if (*v74 == 0.0)
    {
LABEL_175:
      sub_274599B58();
      sub_274453594();
      OUTLINED_FUNCTION_29_11();

      if (v80 < 0)
      {
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
        goto LABEL_331;
      }

      if (v80)
      {
        v326 = 0;
        v327 = 0.0;
        do
        {
          v328 = v326 + 1;
          v327 = v327 + sub_27459FCC0(v326);
          v326 = v328;
        }

        while (v80 != v328);
        v329 = v327 + 20.0;
        v53 = v600;
      }

      else
      {
        v329 = 20.0;
      }

      [v8 contentSize];
      if (v330 != v329)
      {
        [v8 contentSize];
        if (v329 >= v331)
        {
          [v8 contentSize];
          [v8 setContentSize_];
        }

        else
        {
          OUTLINED_FUNCTION_39();
          v332 = swift_allocObject();
          *(v332 + 16) = v8;
          *(v332 + 24) = v329;
          v333 = objc_allocWithZone(MEMORY[0x277D75D40]);
          v334 = v8;
          v335 = OUTLINED_FUNCTION_9_22();
          [v335 startAnimation];
        }
      }

      v336 = v599;
      v337 = v606;
      (v606)(v599, &v79[v8], v53);
      v338 = sub_274595B98();
      v339 = v605 + 8;
      v340 = *(v605 + 8);
      v340(v336, v53);
      if (v338 < 1)
      {
        v341 = 1;
      }

      else
      {
        v341 = v593;
      }

      v603 = v340;
      v605 = v339;
      if ((v341 & 1) == 0)
      {
        (v337)(v336, &v79[v8], v53);
        v342 = v581;
        v337();
        v343 = *(v575 + 36);
        sub_27440CA78(&qword_280952A90, &unk_2809525E0, &qword_27465C078, MEMORY[0x277D7BEB0]);
        sub_27463BACC();
        v344 = v336;
        v345 = v342;
        (v603)(v344, v53);
        v598 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_queuedCells;
        while (1)
        {
          sub_27463BB0C();
          if (*(v345 + v343) == *&v610.a)
          {
            break;
          }

          v346 = sub_27463BB3C();
          v53 = *v347;
          v348 = *(v347 + 8);
          v349 = OUTLINED_FUNCTION_55_2();
          v346(v349);
          sub_27463BB1C();
          v350 = v348;
          [v350 v89[52]];
          if (CGRectGetMaxY(v624) >= v69 && ([v350 v89[52]], v91 >= CGRectGetMinY(v625)) || v350[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState])
          {
          }

          else
          {
            v351 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem;
            if (*&v350[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem])
            {

              sub_27463B25C();
            }

            *&v350[v351] = 0;

            [*&v350[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView] removeFromSuperview];
            [v350 removeFromSuperview];
            swift_unknownObjectWeakAssign();
            v353 = *&v350[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_reuseIdentifier];
            v352 = *&v350[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_reuseIdentifier + 8];
            OUTLINED_FUNCTION_30_1(v604 + v598, v609);

            v355 = sub_274595C44(&v610, v353, v352);
            if (*v354)
            {
              v356 = v354;
              v357 = v350;
              MEMORY[0x277C57F30]();
              v358 = *((*v356 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((*v356 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v358 >> 1)
              {
                OUTLINED_FUNCTION_0_8(v358);
                sub_27463B85C();
              }

              sub_27463B8AC();
              v359 = OUTLINED_FUNCTION_55_2();
              v355(v359);
              swift_endAccess();
              v345 = v581;
            }

            else
            {
              v360 = OUTLINED_FUNCTION_55_2();
              v355(v360);
              swift_endAccess();
            }

            v608 = v53;
            v53 = v604;
            OUTLINED_FUNCTION_19_15(&v602[v604]);
            sub_27463830C();
            swift_endAccess();

            OUTLINED_FUNCTION_19_15(v53 + v594);

            v362 = sub_2745A7E4C(v361);
            swift_endAccess();

            v350 = v362;
            v89 = &selRef_dropTargetUpdated;
          }

          OUTLINED_FUNCTION_65_2();
        }

        sub_27440CB1C(v345, &qword_280952A80, &qword_27465C508);
      }

      v363 = v580;
      v594 = sub_27463831C();
      v364 = sub_274453594();
      if (v364 < 0)
      {
        goto LABEL_329;
      }

      if (v364)
      {
        v365 = 0;
        v598 = v594 & 0xC000000000000001;
        v366 = (v594 + 32);
        v581 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells;
        v587 = &v610.c;
        v588 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems;
        v579 = *MEMORY[0x277CDA328];
        v577 = *MEMORY[0x277CDA4F0];
        p_c = *MEMORY[0x277CDA4C8];
        v575 = *MEMORY[0x277CDA4A0];
        v574 = *MEMORY[0x277CDA4E8];
        v573 = *MEMORY[0x277CDA4B8];
        v572 = xmmword_274648570;
        v571 = 0x3FD3333333333333;
        v595 = v364;
        do
        {
          if (v598)
          {
            v367 = MEMORY[0x277C58B20](v365, v594);
          }

          else
          {
            v367 = *v366;
          }

          v368 = v367;
          v369 = OUTLINED_FUNCTION_36_7();
          v370(v369);
          OUTLINED_FUNCTION_68_3();
          sub_27463831C();
          v371 = OUTLINED_FUNCTION_23_14();
          v372 = (v603)(v371);
          *&v610.a = v368;
          MEMORY[0x28223BE20](v372);
          OUTLINED_FUNCTION_16_19();
          *(v373 - 16) = &v610;
          v375 = sub_27446ECA4(sub_2745A894C, v374, v363);
          OUTLINED_FUNCTION_98_0();
          if (v375)
          {
            v53 = v600;
          }

          else
          {
            v376 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem;
            if (*&v368[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem])
            {

              sub_27463B25C();
            }

            *&v368[v376] = 0;

            v377 = [*&v368[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView] removeFromSuperview];
            if (!v593)
            {
              v53 = v600;
LABEL_223:
              v363 = v595;
              [v368 removeFromSuperview];
              goto LABEL_224;
            }

            v53 = &v556;
            v610.a = *&v368[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item];
            MEMORY[0x28223BE20](v377);
            OUTLINED_FUNCTION_58_3();
            *(v378 - 16) = &v610;

            OUTLINED_FUNCTION_45_5();
            v380 = v379;
            OUTLINED_FUNCTION_98_0();

            if ((v380 & 1) == 0)
            {
              OUTLINED_FUNCTION_65_2();
              goto LABEL_223;
            }

            v53 = v600;
            if (v365)
            {
              v381 = v598;
              v382 = v594;
              sub_2744535A4();
              if (v381)
              {
                v383 = MEMORY[0x277C58B20](v365 - 1, v382);
              }

              else
              {
                v383 = *(v366 - 1);
              }

              v384 = v383;
            }

            else
            {
              v384 = 0;
              v382 = v594;
            }

            v385 = v604;
            v386 = sub_27455C158(v382);
            if (v386)
            {
              v387 = v386;
              LODWORD(v586) = OUTLINED_FUNCTION_46_6(v368);
            }

            else
            {
              LODWORD(v586) = 0;
            }

            OUTLINED_FUNCTION_19_15(&v581[v385]);
            v388 = v368;
            sub_274521DE8(v609, v388, v389, v390, v391, v392, v393, v394, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565, v566, v567, v568, v569);
            swift_endAccess();

            v395 = v388;
            v396 = [v395 superview];
            [v396 sendSubviewToBack_];

            v395[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_suppressLayout] = 1;
            v584 = v384;
            if (v384)
            {
              v397 = v384;
              v398 = [v397 layer];
              v399 = [v398 presentationLayer];

              v400 = 0.0;
              if (v399)
              {
                [v399 frame];
                v402 = v401;
                v404 = v403;
                v406 = v405;
                v408 = v407;

                v626.origin.x = v402;
                v626.origin.y = v404;
                v626.size.width = v406;
                v626.size.height = v408;
                CGRectGetMaxY(v626);
              }

              [v395 frame];
              [v395 setFrame_];
              [v397 frame];
              MinY = CGRectGetMinY(v627);
              v410 = [v397 layer];

              v411 = [v410 presentationLayer];
              if (v411)
              {
                [v411 frame];
                v413 = v412;
                v415 = v414;
                v417 = v416;
                v419 = v418;

                v628.origin.x = v413;
                v628.origin.y = v415;
                v628.size.width = v417;
                v628.size.height = v419;
                v400 = CGRectGetMinY(v628);
              }

              v420 = swift_allocObject();
              v421 = OUTLINED_FUNCTION_90_0(v420);
              *(v421 + 24) = MinY - v400;
              *(v421 + 32) = v586 & 1;
              v422 = objc_allocWithZone(MEMORY[0x277D75D40]);
              v423 = v395;
              v424 = OUTLINED_FUNCTION_9_22();
              [v424 startAnimation];
            }

            v425 = sub_274412734(0, &qword_2809525F0, 0x277CD9EA0);
            v426 = sub_27463B6AC();
            v428 = sub_274595918(v426, v427);
            v429 = sub_27463BAAC();
            [v428 setValue:v429 forKey:v577];

            sub_27463B95C();
            v430 = OUTLINED_FUNCTION_18_13();
            [v430 v431];

            sub_27463B95C();
            v432 = OUTLINED_FUNCTION_18_13();
            [v432 v433];

            sub_27463B66C();
            v434 = OUTLINED_FUNCTION_18_13();
            [v434 v435];

            sub_27463B66C();
            v436 = OUTLINED_FUNCTION_18_13();
            [v436 v437];

            v438 = [v395 layer];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40, &unk_27465C4E0);
            OUTLINED_FUNCTION_8_4();
            v439 = swift_allocObject();
            *(v439 + 16) = v572;
            *(v439 + 56) = v425;
            *(v439 + 32) = v428;
            v586 = v428;
            sub_2745A85DC(v439, v438, &selRef_setFilters_);

            v440 = objc_opt_self();
            sub_27459AD34();
            OUTLINED_FUNCTION_5();
            v441 = swift_allocObject();
            *(v441 + 16) = v395;
            *&v610.tx = sub_2745A89C8;
            *&v610.ty = v441;
            OUTLINED_FUNCTION_2_31();
            *&v610.b = 1107296256;
            *&v610.c = sub_27443E0E8;
            *&v610.d = &block_descriptor_265;
            v442 = _Block_copy(&v610);
            v443 = v395;

            *&v610.tx = CGSizeMake;
            v610.ty = 0.0;
            OUTLINED_FUNCTION_2_31();
            *&v610.b = 1107296256;
            *&v610.c = sub_27456009C;
            *&v610.d = &block_descriptor_268;
            v444 = _Block_copy(&v610);
            OUTLINED_FUNCTION_0_39();
            [v440 v445];
            _Block_release(v444);
            _Block_release(v442);
            v446 = sub_27459AD34() + 0.25;
            OUTLINED_FUNCTION_5();
            v447 = swift_allocObject();
            *(v447 + 16) = v443;
            v448 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v449 = v443;
            v450 = OUTLINED_FUNCTION_32_10();
            v452 = sub_2745FB6C4(v450, v447, v446, v451);
            [v452 startAnimation];

            v453 = sub_27459AD34() + 0.15;
            OUTLINED_FUNCTION_5();
            v454 = swift_allocObject();
            *(v454 + 16) = v449;
            v455 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v456 = v449;
            v457 = OUTLINED_FUNCTION_32_10();
            v459 = sub_2745FB6C4(v457, v454, v453, v458);
            OUTLINED_FUNCTION_39();
            v460 = swift_allocObject();
            v461 = v604;
            *(v460 + 16) = v456;
            *(v460 + 24) = v461;
            *&v610.tx = sub_2745A89F4;
            *&v610.ty = v460;
            OUTLINED_FUNCTION_2_31();
            *&v610.b = 1107296256;
            *&v610.c = sub_2745F3724;
            *&v610.d = &block_descriptor_280;
            v462 = _Block_copy(&v610);
            v463 = v461;
            v368 = v456;

            [v459 addCompletion_];
            _Block_release(v462);
            [v459 startAnimationAfterDelay_];
            v464 = v584;
            if (v584)
            {
              v465 = *&v584[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView];
              [v465 setAlpha_];

              v368 = v465;
            }

            else
            {
            }
          }

          v363 = v595;
LABEL_224:
          ++v365;

          ++v366;
        }

        while (v363 != v365);
      }

      v466 = v604;
      v467 = v599;
      v468 = OUTLINED_FUNCTION_42_7();
      (v606)(v468);
      OUTLINED_FUNCTION_68_3();
      sub_27463831C();
      v469 = OUTLINED_FUNCTION_23_14();
      v470 = v603;
      (v603)(v469);
      sub_274453594();
      OUTLINED_FUNCTION_29_11();

      v471 = v467 - 1;
      if (__OFSUB__(v467, 1))
      {
        goto LABEL_330;
      }

      if (v471 >= 1)
      {
        v472 = 0;
        v599 = v471 & ~(v471 >> 63);
        v595 = &v610.c;
        v590 = (v563 + 8);
        *&v588 = 0.22;
        v598 = v471;
        while (1)
        {
          if (v599 == v472)
          {
            goto LABEL_319;
          }

          v473 = v597;
          OUTLINED_FUNCTION_64_2();
          v474();
          sub_27463831C();
          v475 = OUTLINED_FUNCTION_69_2();
          (v470)(v475, v53);
          if ((v473 & 0xC000000000000001) != 0)
          {
            v476 = MEMORY[0x277C58B20](v472, v473);
          }

          else
          {
            if (v472 >= *((v473 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_320;
            }

            v476 = *(v473 + 8 * v472 + 32);
          }

          v477 = v476;
          v478 = v472 + 1;

          v479 = v596;
          OUTLINED_FUNCTION_64_2();
          v480();
          sub_27463831C();
          v481 = OUTLINED_FUNCTION_69_2();
          (v603)(v481, v53);
          if ((v479 & 0xC000000000000001) != 0)
          {
            v482 = MEMORY[0x277C58B20](v472 + 1, v479);
          }

          else
          {
            if (v478 >= *((v479 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_321;
            }

            v482 = *(v479 + 8 * v472 + 40);
          }

          v483 = v482;

          if (*(*&v477[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item] + 24) != 1 || v477[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] == 1 || v483[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] == 1)
          {
            v484 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem;
            if (*&v477[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem])
            {

              sub_27463B25C();
            }

            *&v477[v484] = 0;

            OUTLINED_FUNCTION_5();
            v485 = swift_allocObject();
            OUTLINED_FUNCTION_90_0(v485);
            v486 = objc_allocWithZone(MEMORY[0x277D75D40]);
            v487 = v477;
            OUTLINED_FUNCTION_32_10();
            OUTLINED_FUNCTION_26_12();
            v363 = sub_2745FB6C4(v488, v489, v490, v491);
            OUTLINED_FUNCTION_5();
            v492 = swift_allocObject();
            *(v492 + 16) = v487;
            *&v610.tx = sub_2745A8988;
            *&v610.ty = v492;
            *&v610.a = MEMORY[0x277D85DD0];
            *&v610.b = 1107296256;
            *&v610.c = sub_2745F3724;
            *&v610.d = &block_descriptor_245;
            v493 = _Block_copy(&v610);
            v494 = v487;

            v495 = OUTLINED_FUNCTION_92_0();
            [v495 v496];
            _Block_release(v493);
            [v363 startAnimation];

            goto LABEL_257;
          }

          v498 = sub_274442C1C(v497);

          if (v498)
          {
            v499 = sub_274599D28();
            sub_274599D28();
            OUTLINED_FUNCTION_69_2();

            if (v499 == v498)
            {
              [v477 frame];
              v501 = v500 == 0.0;
            }

            else
            {
              v501 = 0;
            }
          }

          else
          {

            v501 = 0;
          }

          [v466 bounds];
          CGRectGetWidth(v629);
          [*&v483[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView] frame];
          CGRectGetMinX(v630);
          v502 = [v466 traitCollection];
          [v502 displayScale];

          BSFloatRoundForScale();
          v504 = v503;
          [v477 frame];
          v505 = CGRectGetMaxY(v631) + -2.0;
          v506 = v501 ? v505 + -4.0 : v505;
          v507 = v501 ? 18.0 : 14.0;
          v508 = v466;
          v509 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView;
          v510 = [*&v477[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView] superview];
          if (v510)
          {
          }

          else
          {
            [v508 insertSubview:*&v477[v509] atIndex:0];
          }

          v511 = *&v477[v509];
          v512 = v501;
          v363 = v511;
          sub_27459D734(v512);

          v513 = *&v477[v509];
          if (v593)
          {
            [v513 alpha];
            if (v514 == 1.0)
            {
              OUTLINED_FUNCTION_12_1();
              v515 = swift_allocObject();
              v516 = OUTLINED_FUNCTION_90_0(v515);
              *(v516 + 24) = v504;
              *(v516 + 32) = v506;
              *(v516 + 40) = 0x4000000000000000;
              *(v516 + 48) = v507;
              v517 = objc_allocWithZone(MEMORY[0x277D75D40]);
              v518 = v477;
            }

            else
            {
              OUTLINED_FUNCTION_94(*&v477[v509], sel_setFrame_);
              OUTLINED_FUNCTION_20_16(&v613);
              sub_27452F218(v477, v613);
              OUTLINED_FUNCTION_39_8();
              v519 = OUTLINED_FUNCTION_54_3();
              v521 = v304 ? v519 : v520;
              v522 = *&v477[v509];
              [v522 frame];
              [v522 setFrame_];

              OUTLINED_FUNCTION_39();
              v523 = swift_allocObject();
              *(OUTLINED_FUNCTION_90_0(v523) + 24) = v521;
              v524 = objc_allocWithZone(MEMORY[0x277D75D40]);
              v525 = v477;
            }

            OUTLINED_FUNCTION_26_12();
            v363 = sub_2745FB6C4(v526, v527, v528, v529);
            [v363 startAnimation];
          }

          else
          {
            OUTLINED_FUNCTION_94(v513, sel_setFrame_);
          }

          [*&v477[v509] alpha];
          if (v530 == 1.0)
          {
            break;
          }

          OUTLINED_FUNCTION_57_3();
          MEMORY[0x28223BE20](v531);
          OUTLINED_FUNCTION_16_19();
          *(v532 - 16) = &v610;
          sub_27446ECA4(sub_2745A8D3C, v533, v591);
          OUTLINED_FUNCTION_87_0();
          if (!(v593 & 1 | ((v534 & 1) == 0)))
          {
            v363 = *&v477[v509];
            [v363 setAlpha_];

            goto LABEL_288;
          }

          OUTLINED_FUNCTION_5();
          v535 = swift_allocObject();
          *(v535 + 16) = v477;
          *&v610.tx = sub_2745A8990;
          *&v610.ty = v535;
          *&v610.a = MEMORY[0x277D85DD0];
          *&v610.b = 1107296256;
          *&v610.c = sub_27443E0E8;
          *&v610.d = &block_descriptor_252;
          _Block_copy(&v610);
          v536 = v477;
          sub_27459EF48();
          sub_27463B26C();
          swift_allocObject();
          v537 = sub_27463B24C();

          v538 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem;
          v587 = v536;
          *(v536 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem) = v537;

          v363 = sub_27463BCEC();
          v539 = v569;
          sub_27463B22C();
          v540 = v568;
          sub_27463B28C();
          v541 = *v590;
          v542 = v562;
          (*v590)(v539, v562);
          if (!*(v587 + v538))
          {
            goto LABEL_333;
          }

          v543 = v587;

          sub_27463BCCC();

          v541(v540, v542);
          v466 = v604;
          v53 = v600;
LABEL_257:
          v472 = v478;
          v470 = v603;
          if (v598 == v478)
          {
            goto LABEL_291;
          }
        }

LABEL_288:
        v466 = v604;
        goto LABEL_257;
      }

LABEL_291:

      if (sub_27459ACB0())
      {
        v544 = OUTLINED_FUNCTION_42_7();
        (v606)(v544);
        OUTLINED_FUNCTION_68_3();
        sub_27463831C();
        v545 = OUTLINED_FUNCTION_23_14();
        (v470)(v545);
        v546 = sub_274453594();
        for (i = 0; v546 != i; ++i)
        {
          if ((v363 & 0xC000000000000001) != 0)
          {
            v548 = MEMORY[0x277C58B20](i, v363);
          }

          else
          {
            if (i >= *((v363 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_323;
            }

            v548 = *(v363 + 8 * i + 32);
          }

          v549 = v548;
          if (__OFADD__(i, 1))
          {
            goto LABEL_322;
          }

          [v548 setAlpha_];
        }
      }

      if (v578)
      {

        sub_2745995F0(v550);
      }

      v551 = sub_274599B58();
      *&v610.a = MEMORY[0x277D84F90];
      v552 = sub_274453594();
      for (j = 0; ; ++j)
      {
        if (v552 == j)
        {

          v555 = v604;
          *(v604 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems) = v610.a;

          sub_27459C880();
          swift_unknownObjectRelease();

          (v470)(v580, v600);

          v555[v564] = 0;
          goto LABEL_315;
        }

        if ((v551 & 0xC000000000000001) != 0)
        {
          v554 = MEMORY[0x277C58B20](j, v551);
        }

        else
        {
          if (j >= *((v551 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_317;
          }

          v554 = *(v551 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          break;
        }

        if (*(v554 + 25))
        {
        }

        else
        {
          sub_27463C41C();
          sub_27463C46C();
          sub_27463C47C();
          sub_27463C42C();
        }
      }

      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
      goto LABEL_324;
    }

LABEL_171:
    OUTLINED_FUNCTION_29_3(v74, v611);
    if (*v74 != 0.0)
    {
      if (v593)
      {
        OUTLINED_FUNCTION_39();
        v321 = swift_allocObject();
        v322 = v565;
        *(v321 + 16) = v8;
        *(v321 + 24) = v322;
        v80 = objc_allocWithZone(MEMORY[0x277D75D40]);
        v323 = v8;

        v324 = OUTLINED_FUNCTION_9_22();
        [v324 startAnimation];

        OUTLINED_FUNCTION_82();
      }

      else
      {
        [v8 contentOffset];
        [v8 setContentOffset_];
        v325 = *(v8 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView);
        [v325 v89[52]];
        [v325 setFrame_];
        v593 = 0;
      }
    }

    goto LABEL_175;
  }

  OUTLINED_FUNCTION_64_2();
  v275();
  v276 = v272;
  v80 = sub_27463831C();
  v277 = v595;
  v595(v272, v53);
  sub_274453594();
  OUTLINED_FUNCTION_13_5();

  if (!__OFSUB__(v272, 1))
  {
    if (((v272 - 1) & 0x8000000000000000) != 0)
    {
      goto LABEL_332;
    }

    if (v272 == 1)
    {
      OUTLINED_FUNCTION_82();
      goto LABEL_150;
    }

    v278 = 0;
    v603 = v272 - 2;
    v598 = v274;
    do
    {
      v279 = OUTLINED_FUNCTION_36_7();
      v280(v279);
      OUTLINED_FUNCTION_68_3();
      sub_27463831C();
      v281 = OUTLINED_FUNCTION_23_14();
      v277(v281);
      sub_2744535A4();
      if ((v276 & 0xC000000000000001) != 0)
      {
        v282 = MEMORY[0x277C58B20](v278, v276);
      }

      else
      {
        v282 = v276[v278 + 4];
      }

      v283 = v282;

      v284 = OUTLINED_FUNCTION_36_7();
      v285(v284);
      OUTLINED_FUNCTION_68_3();
      sub_27463831C();
      v286 = OUTLINED_FUNCTION_23_14();
      v277(v286);
      sub_2744535A4();
      if ((v276 & 0xC000000000000001) != 0)
      {
        v287 = MEMORY[0x277C58B20](v278 + 1, v276);
      }

      else
      {
        v287 = v276[v278 + 5];
      }

      v288 = v287;

      v276 = &v556;
      *&v610.a = v288;
      MEMORY[0x28223BE20](v289);
      OUTLINED_FUNCTION_16_19();
      *(v290 - 16) = &v610;
      v80 = v607;
      sub_27446ECA4(sub_2745A8D3C, v291, v591);
      OUTLINED_FUNCTION_87_0();
      if (v292)
      {
        OUTLINED_FUNCTION_20_16(&v613);
        v293 = v613;
        v294 = 0.0;
        if (*(v613 + 16))
        {
          v295 = sub_274534E1C();
          if (v296)
          {
            v294 = *(*(v293 + 56) + 8 * v295);
          }
        }

        swift_endAccess();
        v297 = v288;
        [v297 frame];
        [v297 setFrame_];

        OUTLINED_FUNCTION_39();
        v298 = swift_allocObject();
        *(v298 + 16) = v297;
        *(v298 + 24) = v294;
        v299 = objc_allocWithZone(MEMORY[0x277D75D40]);
        v300 = v297;
        v301 = OUTLINED_FUNCTION_32_10();
        v303 = sub_2745FB6C4(v301, v298, v589, v302);
        [v303 startAnimation];

        OUTLINED_FUNCTION_19_15(&v613);
        v80 = v300;
        v276 = &v613;
        sub_2745FB774(v80, v294);
        swift_endAccess();

        v79 = v602;
        v304 = v603 == v278++;
      }

      else
      {

        v79 = v602;
        v304 = v603 == v278++;
      }
    }

    while (!v304);
    OUTLINED_FUNCTION_82();
    v305 = v104 == 0.0;
    v8 = v604;
LABEL_151:
    v89 = &selRef_dropTargetUpdated;
    v74 = v577;
    if (!v305)
    {
      goto LABEL_147;
    }

    goto LABEL_153;
  }

LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
}

void sub_2745995F0(uint64_t a1)
{
  v2 = v1;
  [v1 adjustedContentInset];
  v5 = v4 + 6.0;
  [v1 adjustedContentInset];
  v7 = v6 + 14.0;
  [v1 contentOffset];
  v9 = v5 + v8;
  [v1 contentOffset];
  v11 = v10;
  [v1 bounds];
  v13 = v11 + v12 - v7;
  v14 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
  OUTLINED_FUNCTION_44_5(&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem], v78);
  v15 = sub_27452F0D0(a1, *&v1[v14]);
  if (v15)
  {
    v16 = v15;
    swift_endAccess();
    OUTLINED_FUNCTION_42_5();
    if (v9 < CGRectGetMinY(v79))
    {
      OUTLINED_FUNCTION_42_5();
      if (CGRectGetMaxY(v80) < v13)
      {
        v17 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession;
        v18 = *&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession];
        if (v18)
        {
          v19 = v18;
          v20 = sub_27459C45C();
          [v20 invalidate];

          v16 = v20;
        }

        v21 = *&v2[v17];
        *&v2[v17] = 0;

        return;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_274599B58();
  v22 = OUTLINED_FUNCTION_13_5();
  sub_2744B2A84(v22, v1);
  v24 = v23;
  v26 = v25;

  if (v26)
  {
    return;
  }

  OUTLINED_FUNCTION_44_5(&v1[v14], v78);
  v27 = sub_27452F0D0(a1, *&v1[v14]);
  if (v27)
  {
    v28 = v27;
    swift_endAccess();
    OUTLINED_FUNCTION_42_5();
    v30 = v29;
    OUTLINED_FUNCTION_42_5();
    MinY = CGRectGetMinY(v81);
    v32 = MinY;
    if (v13 - v9 >= v30)
    {
      OUTLINED_FUNCTION_42_5();
      if (v32 >= v9)
      {
        if (v13 >= CGRectGetMaxY(*&v64))
        {
LABEL_36:

          return;
        }

        OUTLINED_FUNCTION_42_5();
        MaxY = CGRectGetMaxY(v82);
        [v1 bounds];
        v33 = MaxY - (CGRectGetHeight(v83) - v7);
      }

      else
      {
        v33 = CGRectGetMinY(*&v64) - v5;
      }
    }

    else
    {
      v33 = MinY - v5;
    }

    OUTLINED_FUNCTION_39();
    v69 = swift_allocObject();
    *(v69 + 16) = v1;
    *(v69 + 24) = v33;
    v70 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v71 = v1;
    OUTLINED_FUNCTION_26_12();
    v76 = sub_2745FB6C4(v72, v73, v74, v75);
    [v76 startAnimation];

    goto LABEL_36;
  }

  swift_endAccess();
  if (v24 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v34 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v77 = a1;
  v78[0] = MEMORY[0x277D84F90];
  sub_2744512CC(0, v34 & ~(v34 >> 63), 0);
  if (v34 < 0)
  {
    goto LABEL_42;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = v78[0];
  do
  {
    v39 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v37)
    {
      goto LABEL_43;
    }

    v40 = sub_27459FCC0(v36);
    v78[0] = v38;
    v42 = *(v38 + 16);
    v41 = *(v38 + 24);
    if (v42 >= v41 >> 1)
    {
      v44 = OUTLINED_FUNCTION_0_8(v41);
      sub_2744512CC(v44, v42 + 1, 1);
      v38 = v78[0];
    }

    *(v38 + 16) = v42 + 1;
    *(v38 + 8 * v42 + 32) = v40;
    v37 = v36 == v24;
    if (v36 == v24)
    {
      v36 = 0;
    }

    else if (__OFADD__(v36++, 1))
    {
      goto LABEL_39;
    }

    ++v35;
  }

  while (v39 != v34);
  v45 = v42 + 1;
  v46 = 0.0;
  v47 = 32;
  do
  {
    v46 = v46 + *(v38 + v47);
    v47 += 8;
    --v45;
  }

  while (v45);

  [v1 contentOffset];
  v49 = dbl_27465C1C0[v46 < v48];
  v50 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession;
  v51 = *&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession];
  if (v51)
  {
    v52 = v51;
    v53 = sub_27459C45C();
    [v53 invalidate];

    v51 = *&v2[v50];
  }

  *&v2[v50] = 0;

  v54 = objc_allocWithZone(type metadata accessor for WFEditorDragAutoscrollSession());
  v55 = sub_27459C584(v2, v49);
  v56 = *&v2[v50];
  *&v2[v50] = v55;

  v57 = *&v2[v50];
  if (v57)
  {
    OUTLINED_FUNCTION_5();
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_8_4();
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v77;
    *(v59 + 32) = v13;
    *(v59 + 40) = v9;
    *(v59 + 48) = v5;
    *(v59 + 56) = v7;
    v60 = &v57[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler];
    v61 = *&v57[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler];
    v62 = *&v57[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler + 8];
    *v60 = sub_2745A8B2C;
    v60[1] = v59;
    v63 = v57;

    sub_274406A94(v61, v62);
  }
}

void sub_274599AE0()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession))
  {
  }
}

uint64_t sub_274599B58()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
  OUTLINED_FUNCTION_29_3(OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems + v0, v6);
  v2 = *&v1[v0];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_274599BF8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_1(v2 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_queuedCells, v11);
  v5 = sub_274595C44(v10, a1, a2);
  if (*v6)
  {
    v7 = sub_2745A0C64();
    (v5)(v10, 0);
    v8 = swift_endAccess();
    (*((*MEMORY[0x277D85000] & *v7) + 0x160))(v8);
  }

  else
  {
    (v5)(v10, 0);
    swift_endAccess();
    return 0;
  }

  return v7;
}

uint64_t WFEditorItem.init(drawsShadow:drawsRim:showsConnector:)(char a1, char a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 25) = 0;
  *(v3 + 26) = a1;
  *(v3 + 27) = a2;
  *(v3 + 24) = a3;
  return v3;
}

uint64_t sub_274599D28()
{
  sub_27463C74C();
  (*(*v0 + 200))(v2);
  return sub_27463C7AC();
}

void *sub_274599D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_71_0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView;
  *(v5 + v12) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v13 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView;
  *(v5 + v13) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v5 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView) = 0;
  OUTLINED_FUNCTION_4_6();
  v14 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView;
  type metadata accessor for WFEditorConnectorView();
  *(v5 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v5 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem) = 0;
  *(v5 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_suppressLayout) = 0;
  *(v5 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) = 0;
  OUTLINED_FUNCTION_4_6();
  *(v5 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_converterViewRemovalWorkItem) = 0;
  *(v5 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item) = v11;
  v15 = (v5 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_reuseIdentifier);
  *v15 = v9;
  v15[1] = v7;
  type metadata accessor for WFEditorCell();

  v16 = OUTLINED_FUNCTION_7_16();
  v19 = objc_msgSendSuper2(v17, v18, v16);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor_];

  v23 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView;
  [v21 addSubview_];
  v24 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView;
  [*(v21 + v23) addSubview_];
  v25 = *(v21 + v24);
  v26 = objc_allocWithZone(MEMORY[0x277D75348]);
  v27 = v25;
  v28 = sub_27451A6B0(sub_2745A8D34, 0);
  [v27 setBackgroundColor_];

  v29 = [*(v21 + v24) layer];
  [v29 setMasksToBounds_];

  if (*(v11 + 26) == 1)
  {
    v30 = OUTLINED_FUNCTION_56_1();
    LODWORD(v31) = 1032805417;
    [v30 setShadowOpacity_];

    v32 = OUTLINED_FUNCTION_56_1();
    [v32 setShadowRadius_];

    v33 = OUTLINED_FUNCTION_56_1();
    [v33 setShadowOffset_];

    v34 = OUTLINED_FUNCTION_56_1();
    [v34 setShadowPathIsBounds_];

    v35 = OUTLINED_FUNCTION_56_1();
    [v35 setPunchoutShadow_];
  }

  if (*(v11 + 27) == 1)
  {
    v36 = OUTLINED_FUNCTION_56_1();
    [v36 setRimWidth_];

    v37 = OUTLINED_FUNCTION_56_1();
    LODWORD(v38) = 1036831949;
    [v37 setRimOpacity_];

    v39 = OUTLINED_FUNCTION_56_1();
    v40 = [v20 labelColor];
    v41 = [v40 CGColor];

    [v39 setRimColor_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809512E0, &qword_274659ED8);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_274648570;
    v43 = sub_274638DBC();
    v44 = MEMORY[0x277D74BF0];
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    OUTLINED_FUNCTION_5();
    *(swift_allocObject() + 16) = ObjectType;
    sub_27463BF0C();
    swift_unknownObjectRelease();
  }

  v45 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_40_7();
  v46 = sub_27463B66C();
  v47 = [v45 BOOLForKey_];

  if (v47)
  {
    sub_274638B2C();
    v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v49 = [v48 layer];
    v50 = [*(v21 + v24) layer];
    [v50 cornerRadius];
    v52 = v51;

    [v49 setCornerRadius_];
    [v48 setAlpha_];
    [v48 setUserInteractionEnabled_];

    [*(v21 + v24) addSubview_];
    v53 = *(v21 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView);
    *(v21 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView) = v48;
  }

  v54 = [*(v21 + v24) layer];
  v55 = *MEMORY[0x277CDA138];
  [v54 setCornerCurve_];

  v56 = OUTLINED_FUNCTION_56_1();
  [v56 setCornerCurve_];

  v57 = [*(v21 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView) setAlpha_];
  (*((*MEMORY[0x277D85000] & *v21) + 0x168))(v57);

  return v21;
}

id sub_27459A414()
{
  [*&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView] setAlpha_];

  return [v0 _removeAllRetargetableAnimations_];
}

uint64_t sub_27459A464(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item) = a1;

  (*((*MEMORY[0x277D85000] & *v1) + 0x168))(v2);
}

void *sub_27459A504()
{
  v1 = v0;
  v2 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  sub_27463B1EC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v34 = v4;
    v35 = v2;
    v33 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_converterViewRemovalWorkItem;
    if (*&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_converterViewRemovalWorkItem])
    {

      sub_27463B25C();
    }

    OUTLINED_FUNCTION_39();
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    *(v18 + 24) = v17;
    aBlock[4] = sub_2745A8C70;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_7_19();
    aBlock[2] = v19;
    aBlock[3] = &block_descriptor_499;
    v31 = _Block_copy(aBlock);
    v36 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_33();
    sub_2745A8678(v20, 255, v21, MEMORY[0x277D851A0]);
    v22 = v1;
    v32 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    OUTLINED_FUNCTION_19_5();
    sub_27440CA78(v23, v24, &unk_27464D1A0, v25);
    sub_27463C1EC();
    sub_27463B26C();
    swift_allocObject();
    v26 = sub_27463B24C();

    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v27 = sub_27463BCEC();
    sub_27463B22C();
    sub_27463B28C();
    v28 = *(v34 + 8);
    v29 = v8;
    v30 = v35;
    v28(v29, v35);
    sub_27459AD34();
    sub_27463B28C();
    v28(v11, v30);
    sub_27463BCCC();

    v28(v14, v30);
    *&v1[v33] = v26;
  }

  return result;
}

id sub_27459A888(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_6();
  swift_unknownObjectWeakAssign();
  v19 = &v9[OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_floatingViewOutsets];
  *v19 = a6;
  v19[1] = a7;
  v19[2] = a8;
  v19[3] = a9;
  v20 = &v9[OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_itemProvider];
  *v20 = a2;
  *(v20 + 1) = a3;
  v21 = &v9[OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_dragDidBeginHandler];
  *v21 = a4;
  *(v21 + 1) = a5;
  v24.receiver = v9;
  v24.super_class = type metadata accessor for WFEditorDragInteraction();
  v22 = objc_msgSendSuper2(&v24, sel_init);

  return v22;
}

void sub_27459A9BC(void *a1)
{
  OUTLINED_FUNCTION_35_6();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_27459AA14(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_view;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_30_1(v1 + v4, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_27459AA90;
}

void sub_27459AA90(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

double sub_27459AB0C(uint64_t a1)
{
  OUTLINED_FUNCTION_35_6();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return result;
}

uint64_t WFEditorItem.__allocating_init(drawsShadow:drawsRim:showsConnector:)(char a1, char a2, char a3)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 25) = 0;
  *(result + 26) = a1;
  *(result + 27) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t sub_27459AC2C(uint64_t a1)
{
  sub_27463C74C();
  (*(**v1 + 200))(v3);
  return sub_27463C7AC();
}

id sub_27459ACB0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_40_7();
  v1 = sub_27463B66C();
  v2 = OUTLINED_FUNCTION_4_28();
  v4 = [v2 v3];

  return v4;
}

double sub_27459AD34()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_40_7();
  v1 = sub_27463B66C();
  v2 = OUTLINED_FUNCTION_4_28();
  v4 = [v2 v3];

  result = 0.0;
  if (v4)
  {
    return 2.0;
  }

  return result;
}

id sub_27459ADC4()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = OUTLINED_FUNCTION_75_1();
  v3 = OUTLINED_FUNCTION_42_7();
  v5 = [v3 v4];

  if (v5)
  {
    sub_27463C13C();
    swift_unknownObjectRelease();
    sub_27440CB1C(v14, &unk_28094A230, &qword_27464D1B0);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    sub_27440CB1C(v14, &unk_28094A230, &qword_27464D1B0);
    v6 = [v0 standardUserDefaults];
    v7 = OUTLINED_FUNCTION_75_1();
    [v6 setBool:1 forKey:v7];
  }

  v8 = [v0 standardUserDefaults];
  v9 = OUTLINED_FUNCTION_75_1();
  v10 = OUTLINED_FUNCTION_4_28();
  v12 = [v10 v11];

  return v12;
}

uint64_t sub_27459AF2C(void *a1, void *a2, void (*a3)(void, void))
{
  v47 = a2;
  v48 = a3;
  v51 = sub_27463B1EC();
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_27463B21C();
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v46 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_27463B23C();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v13 = *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView];
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView] = a1;
  v50 = v3;
  v14 = a1;
  [v3 addSubview_];
  [v14 setAlpha_];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v61 = sub_2745A8BDC;
  v62 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27443E0E8;
  v60 = &block_descriptor_449;
  v17 = _Block_copy(&aBlock);
  v18 = v13;

  v61 = CGSizeMake;
  v62 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27456009C;
  v60 = &block_descriptor_452;
  v19 = _Block_copy(&aBlock);
  [v15 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v19);
  _Block_release(v17);
  v45 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v20 = sub_27463BCEC();
  sub_27463B22C();
  sub_27463B28C();
  v21 = *(v7 + 8);
  v44 = v7 + 8;
  v52 = v21;
  v21(v9, v54);
  v22 = swift_allocObject();
  v23 = v47;
  v24 = v48;
  v22[2] = v18;
  v22[3] = v23;
  v22[4] = v24;
  v61 = sub_2745A8BE4;
  v62 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27443E0E8;
  v60 = &block_descriptor_458;
  v25 = _Block_copy(&aBlock);
  v47 = v18;

  v26 = v46;
  sub_27463B20C();
  aBlock = MEMORY[0x277D84F90];
  v41[1] = sub_2745A8678(&qword_28094E100, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v41[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  v43 = sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
  v27 = v49;
  v28 = v51;
  sub_27463C1EC();
  v29 = v27;
  MEMORY[0x277C58400](v12, v26, v27, v25);
  _Block_release(v25);

  v30 = *(v56 + 8);
  v56 += 8;
  v48 = v30;
  v30(v27, v28);
  v31 = *(v55 + 8);
  v55 += 8;
  v42 = v31;
  v31(v26, v53);
  v32 = v12;
  v33 = v54;
  v34 = v52;
  v52(v12, v54);
  v35 = sub_27463BCEC();
  sub_27463B22C();
  sub_27463B28C();
  v34(v9, v33);
  v36 = swift_allocObject();
  v37 = v50;
  *(v36 + 16) = v50;
  v61 = sub_2745A8C2C;
  v62 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_27443E0E8;
  v60 = &block_descriptor_464;
  v38 = _Block_copy(&aBlock);
  v39 = v37;

  sub_27463B20C();
  aBlock = MEMORY[0x277D84F90];
  sub_27463C1EC();
  MEMORY[0x277C58400](v32, v26, v29, v38);
  _Block_release(v38);

  v48(v29, v28);
  v42(v26, v53);
  return (v52)(v32, v54);
}

uint64_t sub_27459B684(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8C58;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_490;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_27459B834(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_2745A8C34;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_27443E0E8;
  v6[3] = &block_descriptor_470;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v4);
}

uint64_t sub_27459B93C(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8C3C;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_480;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

char *sub_27459BAEC(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel] = 0;
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_trackedConversionTranslation] = *MEMORY[0x277CBF348];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView] = a1;
  v7 = &v5[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_dropTargetReferenceSize];
  *v7 = a4;
  v7[1] = a5;
  CGSizeMake();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v37.receiver = v5;
  v37.super_class = type metadata accessor for WFConverterView();
  v16 = a1;
  v17 = objc_msgSendSuper2(&v37, sel_initWithFrame_, v9, v11, v13, v15);
  [v17 addSubview_];
  v18 = [objc_opt_self() standardUserDefaults];
  v19 = sub_27463B66C();
  v20 = [v18 BOOLForKey_];

  if (v20)
  {
    v21 = objc_opt_self();
    v22 = [v21 systemPurpleColor];
    v23 = [v22 colorWithAlphaComponent_];

    [v17 setBackgroundColor_];
    v24 = [v17 layer];
    v25 = [v21 systemPurpleColor];
    v26 = [v25 colorWithAlphaComponent_];

    v27 = [v26 CGColor];
    [v24 setBorderColor_];

    v28 = [v17 layer];
    [v28 setBorderWidth_];

    CGSizeMake();
    v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v34 = [objc_opt_self() monospacedSystemFontOfSize:7.0 weight:*MEMORY[0x277D74420]];
    [v33 setFont_];

    v35 = [v21 systemPurpleColor];
    [v33 setTextColor_];

    [v17 addSubview_];
    v16 = *&v17[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel];
    *&v17[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel] = v33;
  }

  return v17;
}

void sub_27459BE70()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_trackedConversionTranslation) = *MEMORY[0x277CBF348];
  sub_27463C56C();
  __break(1u);
}

id sub_27459BF28(void *a1)
{
  result = [v1 superview];
  if (result)
  {
    v4 = result;
    [v1 frame];
    [v4 convertPoint:a1 toCoordinateSpace:?];
    v6 = v5;
    v8 = v7;

    [a1 addSubview_];
    v9 = &v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_trackedConversionTranslation];
    v10 = v6 + *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_trackedConversionTranslation];
    [v1 frame];
    v12 = v10 - v11;
    v13 = v8 + v9[1];
    [v1 frame];
    v15 = v13 - v14;
    *v9 = v12;
    v9[1] = v15;
    CGAffineTransformMakeTranslation(&v16, v12, v15);
    return [v1 setTransform_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_27459C038(CGFloat a1, CGFloat a2)
{
  [*(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView) frame];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

void sub_27459C0EC()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for WFConverterView();
  objc_msgSendSuper2(&v1, sel_didMoveToSuperview);
  sub_27459C170();
}

void sub_27459C170()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_27463B66C();
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    v5 = [v1 superview];
    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_debugLabel];
      if (v6)
      {
        v11 = v5;
        v7 = v6;
        sub_27463C38C();

        [v11 classForCoder];
        swift_getObjCClassMetadata();
        v8 = sub_27463C7EC();
        MEMORY[0x277C57EA0](v8);

        MEMORY[0x277C57EA0](0xD00000000000001CLL, 0x800000027468EDC0);
        v9 = sub_27463BA1C();
        MEMORY[0x277C57EA0](v9);

        MEMORY[0x277C57EA0](8236, 0xE200000000000000);
        v10 = sub_27463BA1C();
        MEMORY[0x277C57EA0](v10);

        MEMORY[0x277C57EA0](41, 0xE100000000000000);
        sub_27455AA28(0x6569762074736F68, 0xEB00000000203A77, v7);

        v5 = v11;
      }
    }
  }
}

id sub_27459C45C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink];
  }

  else
  {
    v4 = v0;
    sub_274412734(0, &qword_280952AB8, 0x277CD9E48);
    v10[3] = type metadata accessor for WFEditorDragAutoscrollSession();
    v10[0] = v0;
    v5 = v0;
    v6 = sub_27459C504(v10, sel_autoscroll);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_27459C504(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_27463C69C();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

char *sub_27459C584(void *a1, double a2)
{
  *&v2[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink] = 0;
  v4 = &v2[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_editorView] = a1;
  *&v2[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse] = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for WFEditorDragAutoscrollSession();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v13, sel_init);
  v7 = sub_27459C45C();
  sub_27463BC8C();
  [v7 setPreferredFrameRateRange_];

  v8 = *&v6[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession____lazy_storage___displayLink];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 mainRunLoop];
  [v10 addToRunLoop:v11 forMode:*MEMORY[0x277CBE738]];

  return v6;
}

void sub_27459C6C0()
{
  v0 = sub_27459C45C();
  [v0 invalidate];
}

void sub_27459C74C(double a1)
{
  OUTLINED_FUNCTION_39();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v5 = v1;
  v6 = sub_2745FB6C4(sub_2745A8BD0, v3, 0.4, 1.0);
  [v6 startAnimation];

  v7 = sub_27459C45C();
  [v7 invalidate];
}

void sub_27459C824(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_editorView);
  [v1 contentOffset];
  [v1 setContentOffset_];
  sub_27459C880();
}

void sub_27459C880()
{
  v1 = v0;
  [v0 contentOffset];
  v3 = v2;
  [v0 bounds];
  v5 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView];
  v6 = v3 + v4 + -150.0 + 10.0;
  [v1 bounds];
  [v5 setFrame_];
  v7 = [v1 subviews];
  sub_274412734(0, &qword_28094A4D8, 0x277D75D18);
  v8 = sub_27463B81C();

  sub_2744535A4();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x277C58B20](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = v5;
  v12 = sub_27463BF7C();

  if ((v12 & 1) == 0)
  {

    [v1 bringSubviewToFront_];
  }
}

void sub_27459CA1C()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_editorView];
  [v1 adjustedContentInset];
  v3 = -v2;
  [v1 contentSize];
  v5 = v4;
  [v1 bounds];
  v6 = v5 - CGRectGetHeight(v18);
  [v1 adjustedContentInset];
  v8 = v6 + v7;
  [v1 contentOffset];
  if (v9 >= v3 && *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse] < 0.0 || ([v1 contentOffset], v10 <= v8) && *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse] > 0.0)
  {
    OUTLINED_FUNCTION_68_0();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = v3;
    *(v11 + 32) = v8;
    objc_allocWithZone(MEMORY[0x277D75D40]);
    v12 = v0;
    v13 = sub_2745FB6C4(sub_2745A8BC4, v11, 0.4, 1.0);
    [v13 startAnimation];

    v14 = *&v12[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler];
    if (v14)
    {
      v15 = *&v12[OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_offsetDidUpdateHandler + 8];

      v14(v16);

      sub_274406A94(v14, v15);
    }
  }
}

id sub_27459CBBC(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_editorView);
  [v4 contentOffset];
  v5 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse);
  v7 = v6 + v5 / 3.0;
  [v4 contentOffset];
  if (v5 >= 0.0 || v7 >= a2)
  {
    [v4 contentOffset];
  }

  return [v4 setContentOffset_];
}

id *sub_27459CDA0()
{

  return v0;
}

uint64_t sub_27459CDE0()
{
  v0 = sub_27459CDA0();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_27459CEA0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27459A9BC(v1);
}

id WFEditorDragInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_27459D2A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40, &unk_27465C4E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2746486A0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  v3 = [v2 CGColor];

  type metadata accessor for CGColor(0);
  v5 = v4;
  *(v1 + 56) = v4;
  *(v1 + 32) = v3;
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:1.0];
  v7 = [v6 CGColor];

  *(v1 + 88) = v5;
  *(v1 + 64) = v7;
  sub_2745A85DC(v1, v0, &selRef_setColors_);
  [v0 setStartPoint_];
  [v0 setEndPoint_];
  return v0;
}

id sub_27459D400(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView____lazy_storage___gradientMaskLayer] = 0;
  v4[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for WFEditorConnectorView();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 systemGray2Color];
  [v11 setBackgroundColor_];

  v13 = [v11 layer];
  [v13 setCornerRadius_];

  v14 = [v11 layer];
  [v14 setCornerCurve_];

  return v11;
}

void sub_27459D57C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFEditorConnectorView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled) == 1)
  {
    v1 = sub_27459D288();
    [v0 bounds];
    [v1 setFrame_];
  }
}

void sub_27459D644(char a1)
{
  if (v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled])
    {
      v2 = sub_27459D288();
      [v1 bounds];
      [v2 setFrame_];

      v3 = [v1 layer];
      [v3 setMask_];
    }

    else
    {
      v3 = [v1 layer];
      [v3 setMask_];
    }
  }
}

void sub_27459D734(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled) = a1;
  sub_27459D644(v2);
}

void sub_27459D74C()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView____lazy_storage___gradientMaskLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C421WFEditorConnectorView_isGradientMaskEnabled) = 0;
  sub_27463C56C();
  __break(1u);
}

void sub_27459D848()
{
  ObjectType = swift_getObjectType();
  v2 = sub_27463B1EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27463B21C();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_27463B66C();
  v11 = [v9 BOOLForKey_];

  if (v11)
  {
    if (v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] != 1 || (v12 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView, (v13 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView]) != 0) && ([v13 alpha], v14 == 1.0))
    {
      v15 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView];
      if (v15)
      {
        [v15 alpha];
        if (v16 == 1.0)
        {
          v33 = objc_opt_self();
          v17 = swift_allocObject();
          *(v17 + 16) = v0;
          *(v17 + 24) = ObjectType;
          v40 = sub_2745A8B48;
          v41 = v17;
          aBlock = MEMORY[0x277D85DD0];
          v37 = 1107296256;
          v38 = sub_27443E0E8;
          v39 = &block_descriptor_382;
          v18 = _Block_copy(&aBlock);
          v34 = v3;
          v19 = v0;

          [v33 _performWithoutRetargetingAnimations_];
          _Block_release(v18);
          sub_274412734(0, &qword_28094AF90, 0x277D85C78);
          v33 = sub_27463BCEC();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = ObjectType;
          v40 = sub_2745A8B50;
          v41 = v20;
          aBlock = MEMORY[0x277D85DD0];
          v37 = 1107296256;
          v38 = sub_27443E0E8;
          v39 = &block_descriptor_388;
          v21 = _Block_copy(&aBlock);
          v22 = v19;

          sub_27463B20C();
          aBlock = MEMORY[0x277D84F90];
          sub_2745A8678(&qword_28094E100, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
          sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
          sub_27463C1EC();
          v23 = v33;
          MEMORY[0x277C58440](0, v8, v5, v21);
          _Block_release(v21);

          (*(v34 + 8))(v5, v2);
          (*(v35 + 8))(v8, v6);
        }
      }
    }

    else
    {
      v24 = objc_opt_self();
      v25 = swift_allocObject();
      *(v25 + 16) = v0;
      v40 = sub_2745A8B58;
      v41 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_27443E0E8;
      v39 = &block_descriptor_394;
      v26 = _Block_copy(&aBlock);
      v27 = v0;

      v40 = CGSizeMake;
      v41 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_27456009C;
      v39 = &block_descriptor_397;
      v28 = _Block_copy(&aBlock);
      [v24 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
      _Block_release(v28);
      _Block_release(v26);
      v29 = *&v0[v12];
      if (v29)
      {
        v30 = *&v27[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView];
        v31 = v29;
        [v30 bounds];
        [v31 setFrame_];
      }
    }
  }
}

uint64_t sub_27459DE48(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8B60;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_407;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_27459DFF8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView);
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];
}

id sub_27459E098(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView;
  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView);
  v4 = 0.0;
  if (v3)
  {
    v5 = [v3 layer];
    v6 = [v5 presentationLayer];

    if (v6)
    {
      [v6 opacity];
      v4 = v7;
    }
  }

  v8 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v9 = [v8 layer];
  [v9 setShadowRadius_];

  v10 = [v8 layer];
  *&v11 = (v4 * 0.14) + 0.07;
  [v10 setShadowOpacity_];

  v12 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v13 = objc_allocWithZone(MEMORY[0x277D75348]);
  v14 = sub_27451A6B0(sub_2745A8D34, 0);
  [v12 setBackgroundColor_];

  result = *(a1 + v2);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_27459E24C(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v13 = sub_2745A8B68;
  v14 = v5;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_27443E0E8;
  v12 = &block_descriptor_413;
  v6 = _Block_copy(&v9);
  v7 = a1;

  v13 = CGSizeMake;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_27456009C;
  v12 = &block_descriptor_416;
  v8 = _Block_copy(&v9);
  [v4 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v8);
  _Block_release(v6);
}

uint64_t sub_27459E3C8(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745A8B70;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_426;
  v13 = _Block_copy(v19);
  v14 = a1;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_27459E57C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v2 = [v1 layer];
  [v2 setShadowRadius_];

  v4 = [v1 layer];
  LODWORD(v3) = 1032805417;
  [v4 setShadowOpacity_];
}

void sub_27459E624(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView) layer];
  v2 = [objc_opt_self() labelColor];
  v3 = [v2 CGColor];

  [v1 setRimColor_];
}

void sub_27459E6D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView);
  v2 = [v1 layer];
  [v1 frame];
  [v2 setCornerRadius_];

  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v4 = [v3 layer];
  [v1 frame];
  [v4 setCornerRadius_];

  v5 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView);
  if (v5)
  {
    v6 = [v5 layer];
    v7 = [v1 layer];
    [v7 cornerRadius];
    v9 = v8;

    [v6 setCornerRadius_];
  }

  v10 = *(*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item) + 16);
  [v0 bounds];
  Width = CGRectGetWidth(v47);
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v0) + 0x170);
  v14 = v13();
  v16 = Width - v15;
  (v13)(v14);
  v18 = v16 - v17;
  v19 = [v0 traitCollection];
  [v19 displayScale];

  sub_274446590(v10, v18);
  v21 = v20;
  [v0 bounds];
  v22 = CGRectGetWidth(v48);
  v23 = v13();
  v25 = v22 - v24;
  v26 = (v13)(v23);
  v28 = (*((*v12 & *v0) + 0x178))(v26, v25 - v27 - v21, 1.79769313e308);
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) != 1 && (*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_suppressLayout) & 1) == 0)
  {
    v29 = (v13)(v28);
    (v13)(v29);
    CGSizeMake();
    [v3 setFrame_];
    [v3 bounds];
    [v1 setFrame_];
    if (sub_27459ADC4())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        v32 = *(Strong + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
        [v3 frame];
        [v32 setFrame_];
      }
    }
  }

  v33 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_40_7();
  v34 = sub_27463B66C();
  v35 = [v33 BOOLForKey_];

  if (v35)
  {
    v36 = objc_opt_self();
    v37 = [v36 systemRedColor];
    v38 = [v37 colorWithAlphaComponent_];

    [v0 setBackgroundColor_];
    v39 = [v0 layer];
    v40 = [v36 systemRedColor];
    v41 = [v40 colorWithAlphaComponent_];

    v42 = [v41 CGColor];
    [v39 setBorderColor_];

    [objc_msgSend(v0 layer)];
    OUTLINED_FUNCTION_101();
  }

  else
  {
    OUTLINED_FUNCTION_101();
  }
}

double sub_27459EC40(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item;
  v6 = *(*(v2 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item) + 16);
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x170);
  v9 = v8();
  v11 = a1 - v10;
  (v8)(v9);
  v13 = v11 - v12;
  v14 = [v2 traitCollection];
  [v14 displayScale];

  v15 = sub_274446590(v6, v13);
  v17 = v16;
  v18 = (v8)(v15);
  v20 = v17 + v19;
  v21 = (v8)(v18);
  v23.n128_f64[0] = a1 - (v20 + v22);
  v24 = (*((*v7 & *v2) + 0x178))(v21, v23, a2);
  (v8)(v24);
  if ((*(*(v2 + v5) + 24) & 1) == 0)
  {
    v8();
  }

  return a1;
}

void sub_27459EE24(_BYTE *a1, void *a2)
{
  if (a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] == 2)
  {
    a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] = 0;
    sub_27459D848();
    [a2 removeFromSuperview];
    v4 = *&a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView];
    [a1 addSubview_];
    swift_unknownObjectWeakAssign();
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = sub_27463B66C();
    v7 = [v5 BOOLForKey_];

    if (v7)
    {

      [v4 setAlpha_];
    }
  }
}

uint64_t sub_27459EF48()
{
  sub_27463B1EC();
  sub_2745A8678(&qword_28094E100, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
  return sub_27463C1EC();
}

void sub_27459F038()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_floatingGlassView) = 0;
  OUTLINED_FUNCTION_4_6();
  v3 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView;
  type metadata accessor for WFEditorConnectorView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_suppressLayout) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) = 0;
  OUTLINED_FUNCTION_4_6();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_converterViewRemovalWorkItem) = 0;
  OUTLINED_FUNCTION_49_4("Fatal error", v4, v5, v6, v7, "WorkflowEditor/WFEditorView.swift", v8, v9, 579, 0);
  __break(1u);
}

id sub_27459F2A0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer];
  }

  else
  {
    v4 = v0;
    swift_getObjectType();
    v5 = objc_allocWithZone(MEMORY[0x277D75708]);
    v6 = v0;
    OUTLINED_FUNCTION_26_12();
    v9 = sub_2745A7BFC(v7, v8);
    v10 = *&v0[v1];
    *&v4[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_27459F340()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView];
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  [v1 setHidden_];
  v4 = &v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_cachedSize];
  if (v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_cachedSize + 16] == 1)
  {
    result = [v0 bounds];
    *v4 = v6;
    *(v4 + 1) = v7;
    v4[16] = 0;
  }

  else
  {
    v9 = *v4;
    v8 = *(v4 + 1);
    result = [v0 bounds];
    if (v9 != v11 || v8 != v10)
    {
      [v0 bounds];
      *v4 = v13;
      *(v4 + 1) = v14;
      v4[16] = 0;
      v15 = sub_274599B58();
      sub_274595CB8(0, v15, 1, 0);
    }
  }

  return result;
}

id sub_27459F4B8()
{
  v2 = v0;
  OUTLINED_FUNCTION_29_11();
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_willMoveToWindow_, v1);
  v3 = [v0 window];
  if (v3)
  {
    v4 = v3;
    v5 = sub_27459F2A0();
    [v4 removeGestureRecognizer_];
  }

  if (v1)
  {
    v6 = v1;
    v7 = sub_27459F2A0();
    [v6 addGestureRecognizer_];

    OUTLINED_FUNCTION_5();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = objc_allocWithZone(type metadata accessor for WFTouchObserver());
    v10 = sub_2745A7748(v6, sub_2745A8BBC, v8);
    v11 = *&v2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_windowTouchObserver];
    *&v2[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_windowTouchObserver] = v10;
  }

  return [v2 becomeFirstResponder];
}

void sub_27459F5F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = sub_274453594();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    v38 = MEMORY[0x277D84F90];

    sub_27463C44C();
    if (v7 < 0)
    {
      goto LABEL_34;
    }

    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x277C58B20](v8, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      ++v8;
      v10 = *(v9 + 40);

      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
    }

    while (v7 != v8);

    v6 = v38;
  }

  v11 = sub_274453594();
  if (!v11)
  {
LABEL_30:

    return;
  }

  v12 = v11;
  v13 = 0;
  v36 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession;
  v37 = v6 & 0xC000000000000001;
  v34 = v6 + 32;
  v35 = v6 & 0xFFFFFFFFFFFFFF8;
  v33 = v11;
  while (1)
  {
    if (v37)
    {
      v14 = MEMORY[0x277C58B20](v13, v6);
    }

    else
    {
      if (v13 >= *(v35 + 16))
      {
        goto LABEL_33;
      }

      v14 = *(v34 + 8 * v13);
    }

    v15 = v14;
    if (__OFADD__(v13++, 1))
    {
      break;
    }

    v17 = *&v2[v36];
    if (v17)
    {
      v18 = *(v17 + 40);
      type metadata accessor for WFConverterView();
      v19 = v18;
      v20 = v15;
      v21 = sub_27463BF7C();

      if (v21)
      {
        goto LABEL_29;
      }
    }

    v22 = [v15 superview];
    if (v22)
    {
      v20 = v22;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_28;
      }

      v23 = *&v15[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView];
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = v24;
        v20 = v23;
        v26 = [v25 sourceView];
        if (v26)
        {
          while (1)
          {
            objc_opt_self();
            v27 = swift_dynamicCastObjCClass();
            if (v27)
            {
              break;
            }

            v28 = [v26 superview];

            v26 = v28;
            if (!v28)
            {
              goto LABEL_28;
            }
          }

          v29 = v27;
          v30 = v6;
          v31 = v2;
          v32 = v26;
          sub_27459BF28(v29);

          v15 = v32;
          v20 = v32;
          v2 = v31;
          v6 = v30;
          v12 = v33;
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    v20 = v15;
LABEL_29:

    if (v13 == v12)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_27459F9B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_27459F2A0();
  v3 = [v2 view];

  if (v3)
  {
    [v3 removeGestureRecognizer_];
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for WFEditorView(uint64_t a1)
{
  result = qword_2809529F0;
  if (!qword_2809529F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27459FC30(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x277D84F90];
  v3 = sub_274453594();
  v4 = sub_2745A874C(a1);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_274547EA4();

    sub_27445BD8C(v7);

    sub_27445BD4C(v8);
    return v9;
  }

  return result;
}

double sub_27459FCC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_274599B58();
  sub_2744535A4();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277C58B20](a1, v4);
  }

  else
  {
    v5 = *(v4 + 8 * a1 + 32);
  }

  v6 = sub_274599D28();
  v7 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_rowHeightCache;
  swift_beginAccess();
  *&v8 = COERCE_DOUBLE(sub_27452F200(v6, *(v2 + v7)));
  LOBYTE(v7) = v9;
  swift_endAccess();
  if (v7)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2745903B0(v2, v5);
      v11 = v10;
      swift_unknownObjectRelease();
    }

    else
    {

      return 0.0;
    }
  }

  else
  {

    return *&v8;
  }

  return v11;
}

id sub_27459FDEC(void *a1)
{
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

uint64_t sub_27459FE34(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8AD0;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_354;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_27459FFE8(int a1, int a2, id a3)
{
  v3 = [a3 layer];
  [v3 setFilters_];
}

id sub_2745A0044(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform_];
}

uint64_t sub_2745A0094(void *a1, void *a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745A8AC8;
  *(v12 + 24) = v11;
  v20[4] = sub_27440D744;
  v20[5] = v12;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_2745F36FC;
  v20[3] = &block_descriptor_344;
  v13 = _Block_copy(v20);
  v14 = a1;
  v15 = a2;

  LODWORD(v16) = v6;
  LODWORD(v17) = v8;
  LODWORD(v18) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2745A0258(void *a1, id a2)
{
  result = [a2 superview];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [a2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = [a1 superview];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = result;
  [v5 convertRect:result toCoordinateSpace:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;

  [a1 frame];

  return [a1 setFrame_];
}

id sub_2745A0364(void *a1)
{
  [a1 frame];

  return [a1 setFrame_];
}

id sub_2745A03BC(char *a1, uint64_t a2)
{
  swift_beginAccess();
  [a1 contentOffset];
  [a1 setContentOffset_];
  v3 = *&a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView];
  swift_beginAccess();
  [v3 frame];
  return [v3 setFrame_];
}

id sub_2745A0474(void *a1)
{
  [a1 contentSize];

  return [a1 setContentSize_];
}

id sub_2745A04CC(void *a1)
{
  [a1 frame];

  return [a1 setFrame_];
}

uint64_t sub_2745A0534(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8AF0;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_364;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_2745A06E8(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_2746386DC();
  OUTLINED_FUNCTION_40_7();
  v5 = sub_27463B66C();
  v3 = OUTLINED_FUNCTION_4_28();
  [v3 v4];
}

id sub_2745A0788(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
  CGAffineTransformMakeScale(&v3, 0.95, 0.94);
  return [v1 setTransform_];
}

void sub_2745A07F4(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  swift_beginAccess();
  v4 = sub_2745FEDF8(a2);
  swift_endAccess();
}

id sub_2745A0870(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView);
  [v1 frame];

  return [v1 setFrame_];
}

void sub_2745A08D4(char *a1)
{
  *&a1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem] = 0;

  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v4 = a1;
  v5 = sub_2745FB6C4(sub_2745A8B10, v2, 0.65, 1.0);
  [v5 startAnimation];
}

id sub_2745A0998(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorView);
  result = [v3 alpha];
  if (v5 == 0.0 && !*(a2 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_connectorUpdateWorkItem))
  {

    return [v3 removeFromSuperview];
  }

  return result;
}

void sub_2745A0A14(void *a1)
{
  [a1 contentOffset];
  [a1 setContentOffset_];
  sub_27459C880();
}

void sub_2745A0A64(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
    swift_beginAccess();
    v14 = sub_27452F0D0(a2, *&v12[v13]);
    swift_endAccess();

    if (v14)
    {
      swift_beginAccess();
      v15 = swift_unknownObjectWeakLoadStrong();
      if (!v15)
      {
LABEL_12:

        return;
      }

      v16 = v15;
      v39 = a6;
      v17 = v14;
      [v17 frame];
      v19 = v18;
      v20 = a3 - a4;
      [v17 frame];
      v25 = v21;
      v26 = v22;
      v27 = v23;
      v28 = v24;
      if (v20 >= v19)
      {
        MinY = CGRectGetMinY(*&v21);
        [v17 frame];
        v25 = v30;
        v26 = v31;
        v27 = v32;
        v28 = v33;

        if (MinY >= a4)
        {
          v41.origin.x = v25;
          v41.origin.y = v26;
          v41.size.width = v27;
          v41.size.height = v28;
          MaxY = CGRectGetMaxY(v41);
          [v16 bounds];
          v34 = MaxY - (CGRectGetHeight(v42) - v39);
          goto LABEL_9;
        }
      }

      else
      {
      }

      v40.origin.x = v25;
      v40.origin.y = v26;
      v40.size.width = v27;
      v40.size.height = v28;
      v34 = CGRectGetMinY(v40) - a5;
LABEL_9:
      v36 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession;
      v37 = *&v16[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession];
      if (v37)
      {
        v38 = v37;
        sub_27459C74C(v34);
      }

      v14 = *&v16[v36];
      *&v16[v36] = 0;

      goto LABEL_12;
    }
  }
}

unint64_t sub_2745A0C64()
{
  result = sub_274453594();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2745A87F4(sub_27453BA6C);
  if (result)
  {
    return result;
  }

  v1 = sub_274453594();
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return sub_2745959AC(result, sub_27453BA6C, sub_274453590);
}

id sub_2745A0CE4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D76180]) initWithSourceView_];
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_27463B66C();
  v6 = [v4 BOOLForKey_];

  [v2 setHidesSourceView_];
  [v2 setAllowsHitTesting_];
  [v2 setMatchesAlpha_];
  [v2 setMatchesTransform_];
  [v2 setForwardsClientHitTestingToSourceView_];
  v7 = v2;
  [a1 frame];
  v9 = v8;
  v11 = v10;
  [v7 frame];
  [v7 setFrame_];
  v12 = [v3 standardUserDefaults];
  v13 = sub_27463B66C();
  LODWORD(v5) = [v12 BOOLForKey_];

  v14 = v7;
  if (v5)
  {
    [a1 setAlpha_];
    v15 = [v7 layer];
    v16 = [objc_opt_self() systemGreenColor];
    v17 = [v16 CGColor];

    [v15 setBorderColor_];
    v14 = [v7 layer];

    [v14 setBorderWidth_];
  }

  return v7;
}

void sub_2745A0F70()
{
  if ((v0[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates] & 1) == 0)
  {
    v1 = v0;
    v2 = [v0 panGestureRecognizer];
    v3 = [v2 numberOfTouches];

    if (v3 >= 1)
    {
      v4 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession;
      v5 = *&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession];
      if (v5)
      {
        v6 = v5;
        v7 = sub_27459C45C();
        [v7 invalidate];

        v5 = *&v1[v4];
      }

      *&v1[v4] = 0;
    }

    v8 = objc_opt_self();
    [v8 begin];
    [v8 setDisableActions_];
    sub_274595CB8(0, MEMORY[0x277D84F90], 0, 0);
    [v8 commit];
    if (*&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession])
    {
      v9 = sub_27459F2A0();
      [v9 setState_];

      v10 = *&v1[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer];
      sub_2745A110C(v10, v11, v12, v13, v14);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_274591854();

      swift_unknownObjectRelease();
    }
  }
}

void sub_2745A110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_71_0();
  v519 = v6;
  v520 = v7;
  v8 = v5;
  v10 = v9;
  ObjectType = swift_getObjectType();
  v497 = sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v502 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v496 = v15 - v14;
  OUTLINED_FUNCTION_51_3();
  v499 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v501 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v498 = v19 - v18;
  OUTLINED_FUNCTION_51_3();
  v504 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v500 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v24 = (v22 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = &v477 - v26;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809525E0, &qword_27465C078);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v33 = v31 - v32;
  v35 = [v8 window];
  if (!v35)
  {
    goto LABEL_221;
  }

  v506 = v35;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    OUTLINED_FUNCTION_28_15();
    OUTLINED_FUNCTION_25_16();

    return;
  }

  v488 = ObjectType;
  v490 = v33;
  v503 = Strong;
  [v10 locationInView_];
  v38 = v37;
  v40 = v39;
  v41 = OUTLINED_FUNCTION_74_1();
  v42 = &unk_280952000;
  v512 = v8;
  v492 = v24;
  if (v41 == 1)
  {
    v493 = v10;
    v494 = v27;
    OUTLINED_FUNCTION_28_15();
    v45 = sub_2745A463C(v43, v44);
    if (v45)
    {
      v27 = v45;
      v46 = swift_unknownObjectWeakLoadStrong();
      if (v46)
      {
        v47 = v46;
        v48 = (*(v27 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_itemProvider))();
        if (v48)
        {
          v49 = v48;
          v491 = v29;
          OUTLINED_FUNCTION_80_0();
          v50 = *(v27 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_floatingViewOutsets);
          v51 = *(v27 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_floatingViewOutsets + 8);
          v52 = v27;

          v53 = v47;
          [v53 bounds];
          OUTLINED_FUNCTION_93_0();
          v55 = v54;
          [v53 bounds];
          v57 = v55 / v56;
          [v53 bounds];
          OUTLINED_FUNCTION_93_0();
          v523 = CGRectInset(v522, (1.0 - 1.0 / v57) * v522.size.width * 0.5, (1.0 - 1.0 / v57) * v522.size.height * 0.5);
          v58 = UIEdgeInsetsInsetRect(v523.origin.x, v523.origin.y, v523.size.width, v523.size.height, -v50, -v51);
          v60 = v59;
          v510 = v40;
          v61 = v38;
          v63 = v62;
          v65 = v64;
          v66 = [objc_allocWithZone(MEMORY[0x277D76180]) initWithSourceView_];

          [v66 setHidesSourceView_];
          CGSizeMake();
          v68 = v67;
          v70 = v69;
          v71 = v66;
          [v71 &selRef_pasteAttributedString_];
          [v71 setFrame_];
          v72 = objc_allocWithZone(type metadata accessor for WFConverterView());
          v73 = v63;
          v38 = v61;
          v40 = v510;
          v74 = sub_27459BAEC(v71, v58, v60, v73, v65);
          v75 = *&v74[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView];
          CGAffineTransformMakeScale(&v517, v57, v57);
          v509 = *&v517.a;
          v508 = *&v517.c;
          v507 = *&v517.tx;
          v76 = v74;
          *&v517.a = v509;
          *&v517.c = v508;
          *&v517.tx = v507;
          [v75 setTransform_];
          v77 = OUTLINED_FUNCTION_28_15();
          [v77 v78];

          *&v508 = v27;
          v79 = v49;
          goto LABEL_30;
        }
      }

      else
      {
        v47 = v27;
      }
    }

    v82 = v29;
    OUTLINED_FUNCTION_28_15();
    v85 = sub_2745A42C4(v83, v84);
    if (!v85)
    {

      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_25_16();

      swift_unknownObjectRelease();
      return;
    }

    v86 = v85;
    OUTLINED_FUNCTION_80_0();
    v53 = *(v87 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView);
    *&v508 = v87 | 0x8000000000000000;
    v79 = *(v87 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_item);
    v88 = swift_unknownObjectWeakLoadStrong();
    v89 = v86;
    v90 = v89;
    if (v88)
    {
      swift_retain_n();
      v91 = v90;
      v92 = v53;
      v76 = v88;
      v93 = OUTLINED_FUNCTION_28_15();
      sub_27459BF28(v93);
LABEL_29:
      *(v90 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) = 1;
      sub_27459D848();

      v27 = 0;
      v8 = v512;
      v491 = v82;
LABEL_30:
      v121 = v53;
      [v76 frame];
      v123 = v122;
      v125 = v124;
      type metadata accessor for WFEditorDragSession();
      v126 = swift_allocObject();
      *(v126 + 80) = 0;
      *(v126 + 88) = 1;
      *(v126 + 96) = 0;
      *(v126 + 104) = 1;
      *(v126 + 112) = 0;
      *(v126 + 16) = v79;
      *(v126 + 24) = v27;
      *&v507 = v121;
      *(v126 + 32) = v121;
      *(v126 + 40) = v76;
      *(v126 + 64) = v123;
      *(v126 + 72) = v125;
      *(v126 + 48) = v38;
      *(v126 + 56) = *&v40;
      v510 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession;
      *&v8[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession] = v126;
      *&v127 = COERCE_DOUBLE(v76);

      OUTLINED_FUNCTION_5();
      v128 = swift_allocObject();
      v505 = *&v127;
      *(v128 + 16) = *&v127;
      v129 = objc_allocWithZone(MEMORY[0x277D75D40]);
      v130 = sub_2745FB6C4(sub_2745A88B8, v128, 0.6, 1.0);
      [v130 startAnimation];

      *&v509 = v79;
      OUTLINED_FUNCTION_38_7();
      v133 = sub_274591184(v131, v132);
      sub_274453594();
      OUTLINED_FUNCTION_83_0();
      v29 = v491;
      if (v134)
      {
        v135 = v134;
        if (v134 < 1)
        {
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        for (i = 0; i != v135; ++i)
        {
          if ((v133 & 0xC000000000000001) != 0)
          {
            v137 = MEMORY[0x277C58B20](i, v133);
          }

          else
          {
          }

          *(v137 + 25) = 1;
        }
      }

      OUTLINED_FUNCTION_62_4();
      OUTLINED_FUNCTION_38_7();
      sub_2745914A8();

      v138 = v508;
      sub_2745A88C0(v508);
      if (v138 < 0)
      {
        v139 = *&v8[v510];
        if (v139)
        {
          v140 = v29;
          v27 = *(v133 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);
          v141 = sub_274453594();
          if (v141)
          {
            v142 = v141;
            OUTLINED_FUNCTION_80_0();
            v489 = v27 & 0xFFFFFFFFFFFFFF8;
            v487 = v139;

            v143 = 0;
            while (1)
            {
              if ((v27 & 0xC000000000000001) != 0)
              {
                MEMORY[0x277C58B20](v143, v27);
              }

              else
              {
                if (v143 >= *(v489 + 16))
                {
                  goto LABEL_232;
                }
              }

              v144 = *&v512[v510];
              if (v144)
              {
                v145 = *(v144 + 16);
                v146 = sub_274599D28();
                v133 = v145;
                sub_274599D28();
                OUTLINED_FUNCTION_69_2();

                if (v146 == v145)
                {

                  v149 = 0;
LABEL_53:
                  v148 = v487;
                  goto LABEL_54;
                }
              }

              else
              {
              }

              v147 = v143 + 1;
              if (__OFADD__(v143, 1))
              {
                break;
              }

              ++v143;
              if (v147 == v142)
              {

                v143 = 0;
                v149 = 1;
                goto LABEL_53;
              }
            }

LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
LABEL_232:
            __break(1u);
            goto LABEL_233;
          }

          v143 = 0;
          v149 = 1;
LABEL_54:
          *(v148 + 96) = v143;
          *(v148 + 104) = v149;

          v8 = v512;
          OUTLINED_FUNCTION_38_7();
          OUTLINED_FUNCTION_83_0();
          v29 = v140;
        }
      }

      v150 = *(v133 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);
      v151 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
      OUTLINED_FUNCTION_35_6();
      swift_beginAccess();
      *&v151[v8] = v150;

      v152 = sub_27459ADC4();
      v153 = v507;
      if ((v152 & 1) == 0)
      {
        v154 = *&v8[v510];
        if (!v154)
        {
LABEL_59:
          v155 = [v8 panGestureRecognizer];
          [v155 setEnabled_];

          v156 = [v8 panGestureRecognizer];
          [v156 setEnabled_];

          [v8 setShowsVerticalScrollIndicator_];
          v157 = OUTLINED_FUNCTION_59_4();
          sub_274595CB8(v157, v158, v159, v160);
          v161 = *&v8[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView];
          [v161 setAlpha_];
          v162 = [objc_opt_self() blackColor];
          v163 = OUTLINED_FUNCTION_92_0();
          [v163 v164];

          v24 = &selRef_tagPickerDidCancel_;
          v165 = [v8 traitCollection];
          [v165 displayScale];
          v167 = v166;

          v168 = [v8 traitCollection];
          [v168 displayScale];
          v170 = v169;

          [v161 setFrame_];
          v171 = [v8 window];
          if (v171)
          {
            v172 = v171;
            [v171 addSubview_];
          }

          v173 = objc_opt_self();
          OUTLINED_FUNCTION_5();
          v174 = swift_allocObject();
          *(v174 + 16) = v8;
          *&v517.tx = sub_2745A88C8;
          *&v517.ty = v174;
          OUTLINED_FUNCTION_1_36();
          *&v517.b = 1107296256;
          OUTLINED_FUNCTION_7_19();
          v517.c = v175;
          *&v517.d = &block_descriptor_185;
          v176 = _Block_copy(&v517);
          v177 = v8;

          [v173 animateWithDuration:196616 delay:v176 options:0 animations:0.2 completion:0.0];
          sub_2745A88C0(v508);

          _Block_release(v176);

          v10 = v493;
          v42 = &unk_280952000;
          goto LABEL_62;
        }

        v153 = *(v154 + 40);
      }

      [v153 setUserInteractionEnabled_];
      goto LABEL_59;
    }

    v95 = v89;
    swift_retain_n();
    v96 = v95;
    v97 = COERCE_DOUBLE(v53);
    v98 = [v96 superview];
    if (v98)
    {
      v99 = v98;
      *&v510 = v97;
      v100 = v79;
      v101 = [v96 layer];
      v102 = [v101 presentationLayer];

      if (v102)
      {
        [v102 frame];
        OUTLINED_FUNCTION_7_29();

        v103 = [v96 window];
        v104 = OUTLINED_FUNCTION_6_23();
        [v105 v106];
        OUTLINED_FUNCTION_61_4();

        v79 = v100;
        v97 = *&v510;
LABEL_25:

        if (sub_27459ADC4())
        {
          v110 = sub_2745A0CE4(*&v97);
          v111 = objc_allocWithZone(type metadata accessor for WFConverterView());
          OUTLINED_FUNCTION_53_4();
          v116 = v110;
        }

        else
        {
          v117 = objc_allocWithZone(type metadata accessor for WFConverterView());
          v118 = *&v97;
          OUTLINED_FUNCTION_53_4();
        }

        v76 = sub_27459BAEC(v116, v112, v113, v114, v115);
        v119 = OUTLINED_FUNCTION_28_15();
        [v119 v120];
        swift_unknownObjectWeakAssign();

        goto LABEL_29;
      }

      v79 = v100;
      v97 = *&v510;
    }

    [v96 bounds];
    OUTLINED_FUNCTION_7_29();
    v99 = [v96 window];

    v107 = OUTLINED_FUNCTION_6_23();
    [v108 v109];
    OUTLINED_FUNCTION_61_4();
    goto LABEL_25;
  }

LABEL_62:
  v178 = v42[289];
  v179 = *&v8[v178];
  if (!v179)
  {

    OUTLINED_FUNCTION_84_0();
    swift_unknownObjectRelease();
LABEL_221:
    OUTLINED_FUNCTION_25_16();
    return;
  }

  v487 = v178;

  if (OUTLINED_FUNCTION_74_1() == 2)
  {
    v180 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
    v181 = v512;
    OUTLINED_FUNCTION_29_3(OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems + v512, v513);
    if (!*&v180[v181])
    {
      goto LABEL_185;
    }

    v182 = v38 - *(v179 + 48);
    v183 = *&v40 - *(v179 + 56);
    v184 = objc_opt_self();
    v493 = v10;
    v185 = v184;
    OUTLINED_FUNCTION_68_0();
    v186 = swift_allocObject();
    *(v186 + 16) = v179;
    *(v186 + 24) = v182;
    *(v186 + 32) = v183;
    *&v517.tx = sub_2745A88AC;
    *&v517.ty = v186;
    v24 = &v517;
    *&v517.a = MEMORY[0x277D85DD0];
    *&v517.b = 1107296256;
    *&v517.c = sub_27443E0E8;
    *&v517.d = &block_descriptor_173_0;
    v187 = _Block_copy(&v517);
    v491 = v29;

    *&v517.tx = CGSizeMake;
    v517.ty = 0.0;
    *&v517.a = MEMORY[0x277D85DD0];
    *&v517.b = 1107296256;
    *&v517.c = sub_27456009C;
    *&v517.d = &block_descriptor_176;
    v188 = _Block_copy(&v517);
    OUTLINED_FUNCTION_0_39();
    v189 = v185;
    v10 = v493;
    [v189 v190];
    v29 = v491;
    _Block_release(v188);
    _Block_release(v187);
  }

  v191 = OUTLINED_FUNCTION_74_1();
  *&v509 = v179;
  if (v191 != 1 && OUTLINED_FUNCTION_74_1() != 2)
  {
    v489 = 0;
LABEL_174:
    if (OUTLINED_FUNCTION_74_1() == 3 || OUTLINED_FUNCTION_74_1() == 4)
    {
      v375 = sub_274599B58();
      v376 = sub_274453594();
      v377 = 0;
      do
      {
        v378 = v377;
        if (v376 == v377)
        {
          break;
        }

        if ((v375 & 0xC000000000000001) != 0)
        {
          MEMORY[0x277C58B20](v377, v375);
        }

        else
        {
          if (v377 >= *((v375 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_226;
          }
        }

        if (__OFADD__(v378, 1))
        {
          goto LABEL_225;
        }

        v379 = sub_274599D28();
        v380 = sub_274599D28();

        v377 = v378 + 1;
      }

      while (v379 != v380);
      v490 = v376;

      v381 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
      v382 = v512;
      OUTLINED_FUNCTION_35_6();
      swift_beginAccess();
      *(v381 + v382) = 0;

      OUTLINED_FUNCTION_62_4();
      v383 = v381[14];
      if (v383)
      {
        v384 = v383;
        v385 = sub_27459C45C();
        [v385 invalidate];

        v383 = v381[14];
      }

      v381[14] = 0;

      OUTLINED_FUNCTION_50_5();
      [v381 v386];
      *&v507 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
      *&v508 = sub_27463BCEC();
      v387 = v492;
      sub_27463B22C();
      sub_27463B28C();
      v388 = v27;
      v389 = v500 + 8;
      v511 = *(v500 + 8);
      (v511)(v387, v504);
      OUTLINED_FUNCTION_5();
      v390 = swift_allocObject();
      *(v390 + 16) = v381;
      *&v517.tx = sub_2745A876C;
      *&v517.ty = v390;
      OUTLINED_FUNCTION_1_36();
      *&v517.b = 1107296256;
      OUTLINED_FUNCTION_7_19();
      v517.c = v391;
      *&v517.d = &block_descriptor_33;
      v392 = _Block_copy(&v517);
      *&v510 = COERCE_DOUBLE(v381);

      v393 = v498;
      sub_27463B20C();
      *&v517.a = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_33();
      v396 = COERCE_DOUBLE(sub_2745A8678(v394, 255, v395, MEMORY[0x277D851A0]));
      v397 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0));
      OUTLINED_FUNCTION_19_5();
      v401 = sub_27440CA78(v398, v399, &unk_27464D1A0, v400);
      v402 = v496;
      v495 = v397;
      v493 = v401;
      OUTLINED_FUNCTION_35_7();
      v505 = v396;
      sub_27463C1EC();
      v403 = v508;
      MEMORY[0x277C58400](v388, v393, v402, v392);
      _Block_release(v392);

      v404 = *(v502 + 8);
      v502 += 8;
      *&v508 = v404;
      v404(v402, *&v397);
      v405 = *(v501 + 8);
      v501 += 8;
      v491 = v405;
      v405(v393, v499);
      v494 = v388;
      OUTLINED_FUNCTION_62_4();
      v500 = v389;
      v511();
      if ((*(*&v397 + 88) & 1) == 0)
      {
        v489 = *(*&v397 + 80);
        v406 = *(v503 + OBJC_IVAR____TtC14WorkflowEditor25UIKitEditorViewController_items);
        v407 = sub_274453594();
        *&v397 = v406 & 0xFFFFFFFFFFFFFF8;

        v408 = 0;
        while (1)
        {
          if (v407 == v408)
          {

            OUTLINED_FUNCTION_62_4();

            OUTLINED_FUNCTION_38_7();
            sub_274590F98(v411, v412, v413);

            goto LABEL_205;
          }

          if ((v406 & 0xC000000000000001) != 0)
          {
            MEMORY[0x277C58B20](v408, v406);
          }

          else
          {
            if (v408 >= *((v406 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_229;
            }
          }

          v409 = *(v509 + 16);
          v410 = sub_274599D28();
          sub_274599D28();
          OUTLINED_FUNCTION_13_5();

          if (v410 == v409)
          {
            break;
          }

          v246 = __OFADD__(v408++, 1);
          if (v246)
          {
            goto LABEL_230;
          }
        }

        OUTLINED_FUNCTION_62_4();
        if (*((v406 & 0xFFFFFFFFFFFFFF8) + 0x68))
        {
          v414 = 0;
          v415 = v489;
        }

        else
        {
          v415 = v489;
          v414 = *((v406 & 0xFFFFFFFFFFFFFF8) + 0x60) < v489;
        }

        if (__OFADD__(v415, v414))
        {
          goto LABEL_234;
        }

        OUTLINED_FUNCTION_38_7();
        sub_274590E08(v416, v417, v418);
      }

LABEL_205:
      v419 = sub_27459ADC4();
      v420 = 40;
      if (v419)
      {
        v420 = 32;
      }

      [*(*&v397 + v420) setUserInteractionEnabled_];
      if (v490 == v378)
      {
        v421 = objc_allocWithZone(MEMORY[0x277D75D40]);

        v422 = sub_2745FB6C4(sub_2745A878C, *&v397, 0.7, 1.0);
        *&v517.tx = sub_2745A8794;
        v517.ty = v397;
        *&v517.a = MEMORY[0x277D85DD0];
        *&v517.b = 1107296256;
        *&v517.c = sub_2745F3724;
        *&v517.d = &block_descriptor_131;
        v423 = _Block_copy(&v517);

        v424 = OUTLINED_FUNCTION_92_0();
        [v424 v425];
        _Block_release(v423);
        [v422 startAnimation];
        v426 = objc_opt_self();
        OUTLINED_FUNCTION_39();
        v427 = swift_allocObject();
        v428 = v506;
        *(v427 + 16) = v397;
        *(v427 + 24) = v428;
        *&v517.tx = sub_2745A87A4;
        *&v517.ty = v427;
        *&v517.a = MEMORY[0x277D85DD0];
        *&v517.b = 1107296256;
        *&v517.c = sub_27443E0E8;
        *&v517.d = &block_descriptor_137;
        v429 = _Block_copy(&v517);

        v430 = OUTLINED_FUNCTION_28_15();

        *&v517.tx = CGSizeMake;
        v517.ty = 0.0;
        *&v517.a = MEMORY[0x277D85DD0];
        *&v517.b = 1107296256;
        *&v517.c = sub_27456009C;
        *&v517.d = &block_descriptor_140;
        v431 = _Block_copy(&v517);
        OUTLINED_FUNCTION_0_39();
        [v426 v432];
        _Block_release(v431);
        _Block_release(v429);

        v433 = *&v397;
        v434 = v494;
      }

      else
      {
        v435 = v510;
        v436 = [v510 panGestureRecognizer];
        v437 = [v436 numberOfTouches];

        v434 = v494;
        if (v437 > 0 || ([v435 isDecelerating] & 1) != 0 || (v438 = objc_msgSend(v435, sel_traitCollection), v439 = objc_msgSend(v438, sel_horizontalSizeClass), v438, v439 == 1))
        {
          v440 = *(v509 + 40);
          sub_27459BF28(v435);
        }

        v433 = v509;
        v441 = *(v509 + 16);
        v442 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
        OUTLINED_FUNCTION_44_5(&v435[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem], &v517);
        v443 = sub_27452F0D0(v441, *&v435[v442]);
        if (v443)
        {
          v444 = v443;
          swift_endAccess();
          v444[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] = 2;
          sub_27459D848();
          sub_27459A504();
          v445 = objc_allocWithZone(MEMORY[0x277D75D40]);

          v446 = sub_2745FB6C4(sub_2745A87B4, v433, 0.7, 1.0);
          [v446 startAnimation];

          v447 = OUTLINED_FUNCTION_59_4();
          sub_274595CB8(v447, v448, v449, v450);
          OUTLINED_FUNCTION_39();
          v451 = swift_allocObject();
          *(v451 + 16) = v433;
          *(v451 + 24) = v444;
          v452 = objc_allocWithZone(MEMORY[0x277D75D40]);

          v453 = v444;
          v454 = sub_2745FB6C4(sub_2745A87BC, v451, 0.4, 1.0);
          [v454 startAnimation];

          v455 = objc_opt_self();
          OUTLINED_FUNCTION_39();
          v456 = swift_allocObject();
          *(v456 + 16) = v433;
          *(v456 + 24) = v453;
          *&v517.tx = sub_2745A87C4;
          *&v517.ty = v456;
          *&v517.a = MEMORY[0x277D85DD0];
          *&v517.b = 1107296256;
          *&v517.c = sub_27443E0E8;
          *&v517.d = &block_descriptor_155;
          v457 = _Block_copy(&v517);

          v458 = v453;

          *&v517.tx = CGSizeMake;
          v517.ty = 0.0;
          *&v517.a = MEMORY[0x277D85DD0];
          *&v517.b = 1107296256;
          *&v517.c = sub_27456009C;
          *&v517.d = &block_descriptor_158;
          v459 = _Block_copy(&v517);
          OUTLINED_FUNCTION_0_39();
          [v455 v460];
          _Block_release(v459);
          _Block_release(v457);
        }

        else
        {
          swift_endAccess();
        }
      }

      v461 = v510;
      OUTLINED_FUNCTION_30_1(v510 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions, &v517);

      sub_274595A60(v462, sub_2745C4440);
      swift_endAccess();
      *&v507 = sub_27463BCEC();
      v463 = v492;
      sub_27463B22C();
      sub_27463B28C();
      v464 = v463;
      v465 = v434;
      v466 = v433;
      v467 = v504;
      v468 = v511;
      (v511)(v464, v504);
      OUTLINED_FUNCTION_39();
      v469 = swift_allocObject();
      *(v469 + 16) = v461;
      *(v469 + 24) = v466;
      *&v517.tx = sub_2745A87AC;
      *&v517.ty = v469;
      *&v517.a = MEMORY[0x277D85DD0];
      *&v517.b = 1107296256;
      *&v517.c = sub_27443E0E8;
      *&v517.d = &block_descriptor_146;
      v470 = _Block_copy(&v517);
      v461;

      v471 = v498;
      sub_27463B20C();
      *&v517.a = MEMORY[0x277D84F90];
      v472 = v496;
      OUTLINED_FUNCTION_35_7();
      sub_27463C1EC();
      v473 = v507;
      MEMORY[0x277C58400](v465, v471, v472, v470);
      _Block_release(v470);

      (v508)(v472, v466);
      v491(v471, v499);
      (v468)(v465, v467);
      *&v512[v487] = 0;

      sub_27459173C();
      if (sub_27459ACB0())
      {
        OUTLINED_FUNCTION_30_11();
        v476 = sub_2745A4C04(v474, v475);
        [v476 setHidden_];
      }

LABEL_219:
      swift_unknownObjectRelease();
      goto LABEL_220;
    }

LABEL_185:

    OUTLINED_FUNCTION_84_0();
    swift_unknownObjectRelease();
LABEL_220:

    goto LABEL_221;
  }

  v192 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
  OUTLINED_FUNCTION_50_5();
  OUTLINED_FUNCTION_29_3(&v192[v24], &v516);
  v486 = v192;
  if (!*&v192[v24])
  {
    goto LABEL_185;
  }

  v493 = v10;
  v193 = [*(v179 + 40) superview];
  if (!v193)
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  v194 = v193;
  [*(v179 + 40) frame];
  v196 = v195;
  v198 = v197;
  v199 = [*(v179 + 40) window];
  [v194 convertPoint:v199 toView:{v196, v198}];
  *&v508 = v200;
  v202 = v201;

  v203 = *(v179 + 40) + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_dropTargetReferenceSize;
  v204 = *(v203 + 8);
  *&v507 = *v203;
  v206 = OUTLINED_FUNCTION_99(v205, sel_window);
  if (!v206)
  {
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v207 = v206;
  v208 = fmax(v202, 40.0);
  [v206 bounds];
  OUTLINED_FUNCTION_7_29();

  v524.origin.x = OUTLINED_FUNCTION_6_23();
  Height = CGRectGetHeight(v524);
  v505 = v204;
  v211 = Height - v204 + -40.0;
  if (v208 < v211)
  {
    v211 = v208;
  }

  *&v510 = v211;
  v212 = 0.0;
  if (*&v40 < 80.0)
  {
    *&v510 = 80.0;
    v213 = OUTLINED_FUNCTION_99(v209, sel_traitCollection);
    [v213 displayScale];

    v209 = BSFloatRoundForScale();
    v212 = v214;
  }

  v215 = OUTLINED_FUNCTION_99(v209, sel_window);
  if (!v215)
  {
    goto LABEL_243;
  }

  v216 = v215;
  [v215 bounds];
  OUTLINED_FUNCTION_7_29();

  v525.origin.x = OUTLINED_FUNCTION_6_23();
  v218 = CGRectGetHeight(v525) + -150.0;
  if (v218 >= *&v40)
  {
    if (*&v40 >= 80.0)
    {
      v221 = *(v179 + 112);
      if (v221)
      {
        v222 = v221;
        v223 = sub_27459C45C();
        [v223 invalidate];

        v221 = *(v179 + 112);
      }

      v224 = v505;
      *(v179 + 112) = 0;

      goto LABEL_89;
    }

    v218 = *&v510;
  }

  else
  {
    v219 = OUTLINED_FUNCTION_99(v217, sel_traitCollection);
    [v219 displayScale];

    BSFloatRoundForScale();
    v212 = v220;
  }

  v225 = *(v179 + 112);
  if (v225)
  {
    *(v225 + OBJC_IVAR____TtC14WorkflowEditor29WFEditorDragAutoscrollSession_scrollImpulse) = v212;
  }

  else
  {
    v226 = objc_allocWithZone(type metadata accessor for WFEditorDragAutoscrollSession());
    v227 = sub_27459C584(v512, v212);
    v228 = *(v179 + 112);
    *(v179 + 112) = v227;
  }

  *&v510 = v218;
  v224 = v505;
LABEL_89:
  OUTLINED_FUNCTION_80_0();
  v494 = v27;
  v229 = sub_27459ACB0();
  v230 = v512;
  if (v229)
  {
    OUTLINED_FUNCTION_30_11();
    v232 = sub_2745A4C04(&OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___debugDropTargetView, v231);
    [v232 setHidden_];

    v233 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___debugDropTargetView;
    v234 = OUTLINED_FUNCTION_14_16();
    [v235 v236];
    v237 = *&v230[v233];
    [v237 frame];
    [v237 setFrame_];

    v238 = *&v230[v233];
    [v238 frame];
    [v238 setFrame_];

    v239 = [v230 window];
    if (v239)
    {
      v240 = v239;
      [v239 addSubview_];
    }
  }

  v241 = sub_274599B58();
  v242 = sub_274453594();
  v243 = 0.0;
  while (1)
  {
    if (v242 == *&v243)
    {
      v247 = 0.0;
      goto LABEL_104;
    }

    if ((v241 & 0xC000000000000001) != 0)
    {
      MEMORY[0x277C58B20](*&v243, v241);
    }

    else
    {
      if (*&v243 >= *((v241 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
        goto LABEL_228;
      }
    }

    v244 = *(v179 + 16);
    v245 = sub_274599D28();
    sub_274599D28();
    OUTLINED_FUNCTION_69_2();

    if (v245 == v244)
    {
      break;
    }

    v246 = __OFADD__((*&v243)++, 1);
    v179 = v509;
    if (v246)
    {
      goto LABEL_224;
    }
  }

  v247 = v243;
LABEL_104:

  OUTLINED_FUNCTION_50_5();
  [v241 & 0xC000000000000001 v248];
  OUTLINED_FUNCTION_7_29();
  v249 = [v241 & 0xC000000000000001 window];
  v250 = OUTLINED_FUNCTION_6_23();
  [v251 v252];
  OUTLINED_FUNCTION_7_29();

  v253 = &unk_280965000;
  if (v242 != *&v243)
  {
    v273 = v29;
    v489 = 0;
    v274 = v490;
    v275 = v512;
    goto LABEL_125;
  }

  v526.origin.x = OUTLINED_FUNCTION_6_23();
  v521.x = v38;
  *&v521.y = v40;
  if (!CGRectContainsPoint(v526, v521))
  {
    goto LABEL_185;
  }

  v254 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells;
  OUTLINED_FUNCTION_29_3(&v512[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells], &v515);
  v255 = v495;
  v256 = OUTLINED_FUNCTION_91_0();
  v257(v256);
  v258 = sub_2746382FC();
  v491 = v29;
  (*(v29 + 1))(COERCE_CGFLOAT(*&v255), &unk_280965000);
  v495 = 0.0;
  v259 = 0;
  v489 = 0;
  v260 = *(v258 + 16);
  v261 = 0.0;
  v262 = 1;
LABEL_107:
  v263 = v262;
  while (1)
  {
    v264 = v512;
    if (v260 == v259)
    {
      break;
    }

    if (v259 >= *(v258 + 16))
    {
      goto LABEL_227;
    }

    v265 = *(v258 + 8 * v259 + 32);
    OUTLINED_FUNCTION_44_5(&v512[v254], &v517);
    v514 = *&v265;
    sub_27463837C();
    v266 = v518;
    swift_endAccess();
    if (!v266)
    {
      goto LABEL_240;
    }

    [v266 bounds];
    OUTLINED_FUNCTION_6_6();
    v267 = [v266 window];
    v268 = OUTLINED_FUNCTION_7_16();
    [v269 v270];
    OUTLINED_FUNCTION_6_6();

    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_15_18();
    v533.size.height = v224;
    if (CGRectIntersectsRect(v527, v533))
    {
      OUTLINED_FUNCTION_7_16();
      OUTLINED_FUNCTION_15_18();
      v534.size.height = v224;
      v529 = CGRectIntersection(v528, v534);
      v271 = CGRectGetHeight(v529);

      v272 = v263 | (v261 < v271);
      ++v259;
      v263 = 0;
      if (v272)
      {
        v262 = 0;
        v495 = v265;
        v261 = v271;
        goto LABEL_107;
      }
    }

    else
    {

      ++v259;
    }
  }

  *&v276 = v495;
  if (v262)
  {
    sub_274599B58();
    *&v276 = COERCE_DOUBLE(sub_274453594());
  }

  v277 = v486;
  OUTLINED_FUNCTION_30_1(&v486[v264], &v517);
  v278 = v509;
  if (*&v277[v264])
  {
    sub_274547EA0();

    sub_2745C373C(v276, v276);
  }

  swift_endAccess();
  *(v278 + 80) = *&v276;
  *(v278 + 88) = 0;
  v279 = MEMORY[0x277D84F90];
  sub_274595CB8(1, MEMORY[0x277D84F90], 1, 0);
  OUTLINED_FUNCTION_44_5(&v264[v254], &v517);
  v514 = v276;
  sub_27463837C();
  v280 = v518;
  swift_endAccess();
  if (v280)
  {
    v280[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState] = 1;
    sub_27459D848();
    swift_unknownObjectWeakAssign();
    v281 = sub_27459ADC4();
    v282 = *&v280[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView];
    v283 = *(v278 + 40);
    v284 = v282;
    v285 = v284;
    v495 = *&v276;
    v286 = v279;
    if (v281)
    {
      v287 = sub_2745A0CE4(v284);

      sub_27459AF2C(v287, sub_2745A4C64, 0);
      v285 = v287;
    }

    else
    {
      sub_27459AF2C(v284, CGSizeMake, 0);
    }

    v288 = *(v278 + 40);
    [v280 bounds];
    v289 = &v288[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_dropTargetReferenceSize];
    *v289 = v290;
    *(v289 + 1) = v291;
    sub_27459C170();

    v485 = sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v292 = sub_27463BCEC();
    v293 = v492;
    sub_27463B22C();
    sub_27463B28C();
    v483 = *(v500 + 8);
    v484 = v500 + 8;
    v294 = v504;
    v483(v293, v504);
    OUTLINED_FUNCTION_39();
    v295 = swift_allocObject();
    *(v295 + 16) = v280;
    *(v295 + 24) = v278;
    *&v517.tx = sub_2745A87CC;
    *&v517.ty = v295;
    OUTLINED_FUNCTION_1_36();
    *&v517.b = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v517.c = v296;
    *&v517.d = &block_descriptor_164;
    v297 = _Block_copy(&v517);

    v488 = v280;

    v298 = v498;
    sub_27463B20C();
    v517.a = v286;
    OUTLINED_FUNCTION_5_33();
    v480 = sub_2745A8678(v299, 255, v300, MEMORY[0x277D851A0]);
    v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    v479 = v301;
    OUTLINED_FUNCTION_19_5();
    v481 = sub_27440CA78(v302, v303, &unk_27464D1A0, v304);
    v305 = v496;
    OUTLINED_FUNCTION_35_7();
    sub_27463C1EC();
    v306 = OUTLINED_FUNCTION_66_1();
    MEMORY[0x277C58400](v306);
    _Block_release(v297);

    v482 = *(v502 + 8);
    v482(v305, v301);
    v478 = *(v501 + 8);
    v478(v298, v499);
    v307 = v483;
    v483(&unk_27464D1A0, v294);
    v485 = sub_27463BCEC();
    sub_27463B22C();
    sub_27463B28C();
    v307(v293, v294);
    *&v517.tx = sub_2745A87D4;
    *&v517.ty = v509;
    OUTLINED_FUNCTION_1_36();
    *&v517.b = 1107296256;
    OUTLINED_FUNCTION_7_19();
    v517.c = v308;
    *&v517.d = &block_descriptor_167_0;
    v309 = _Block_copy(&v517);

    v310 = v498;
    sub_27463B20C();
    *&v517.a = MEMORY[0x277D84F90];
    sub_27463C1EC();
    v311 = OUTLINED_FUNCTION_66_1();
    v312 = v485;
    MEMORY[0x277C58400](v311);
    _Block_release(v309);

    v482(v305, v301);
    v478(v310, v499);
    v307(v307, v504);
    v275 = v512;
    v273 = v491;
    v274 = v490;
    v247 = v495;
    v253 = &unk_280965000;
LABEL_125:
    v313 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells;
    OUTLINED_FUNCTION_29_3(&v275[OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCells], &v514);
    v314 = OUTLINED_FUNCTION_91_0();
    v315(v314);
    v316 = sub_2746382FC();
    v273[1](v274, &unk_280965000);
    v317 = *(v316 + 16);
    a = MEMORY[0x277D84F90];
    v495 = v247;
    if (v317)
    {
      v319 = (v316 + 32);
      do
      {
        v320 = *v319++;
        v253 = v320;
        if (v320 != *&v247)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v517.a = a;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_27445126C(0, *(*&a + 16) + 1, 1);
            a = v517.a;
          }

          v323 = *(*&a + 16);
          v322 = *(*&a + 24);
          if (v323 >= v322 >> 1)
          {
            v324 = OUTLINED_FUNCTION_0_8(v322);
            sub_27445126C(v324, v323 + 1, 1);
            a = v517.a;
          }

          *(*&a + 16) = v323 + 1;
          *(*&a + 8 * v323 + 32) = v253;
          v247 = v495;
        }

        --v317;
      }

      while (v317);
    }

    v325 = 0;
    v326 = 0;
    v27 = *(*&a + 16);
    LODWORD(v491) = 1;
    while (1)
    {
      v490 = v325;
      while (1)
      {
        if (v27 == v326)
        {
          goto LABEL_148;
        }

        if (v326 >= *(*&a + 16))
        {
          __break(1u);
          goto LABEL_223;
        }

        v327 = *(*&a + 8 * v326 + 32);
        OUTLINED_FUNCTION_50_5();
        OUTLINED_FUNCTION_44_5(v253 + v313, &v517);
        v513[4] = v327;
        sub_27463837C();
        v328 = v518;
        swift_endAccess();
        if (!v328)
        {
          goto LABEL_239;
        }

        v329 = v328;
        [v329 bounds];
        OUTLINED_FUNCTION_6_6();
        v253 = &selRef_tagPickerDidCancel_;
        v330 = [v329 window];
        v331 = OUTLINED_FUNCTION_7_16();
        [v332 v333];

        v334 = *&v329[OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_contentContainerView];
        [v334 bounds];
        OUTLINED_FUNCTION_61_4();
        v335 = [v329 window];

        OUTLINED_FUNCTION_53_4();
        [v336 v337];

        OUTLINED_FUNCTION_15_18();
        v338 = v505;
        v535.size.height = v505;
        if (CGRectIntersectsRect(v530, v535))
        {
          break;
        }

        ++v326;
      }

      ++v326;
      if (*&v495 < v327)
      {
        v531.origin.x = OUTLINED_FUNCTION_14_16();
        v531.size.height = v338;
        CGRectGetMaxY(v531);
        v339 = OUTLINED_FUNCTION_72_2();

        OUTLINED_FUNCTION_81_0();
        v325 = v327;
        if (v339 + 6.0 > v338)
        {
          OUTLINED_FUNCTION_81_0();
          v325 = v327 - 1;
        }

        continue;
      }

      v532.origin.x = OUTLINED_FUNCTION_14_16();
      v532.size.height = v338;
      CGRectGetMinY(v532);
      v340 = OUTLINED_FUNCTION_72_2();

      OUTLINED_FUNCTION_81_0();
      v325 = v327;
      if (v338 >= v340 + -6.0)
      {
        OUTLINED_FUNCTION_81_0();
        v325 = v327 + 1;
        if (__OFADD__(v327, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_148:

    if (v491)
    {

      OUTLINED_FUNCTION_84_0();
      goto LABEL_219;
    }

    v341 = *&v495;
    v342 = v509;
    if (v490 == *&v495)
    {
      goto LABEL_185;
    }

    OUTLINED_FUNCTION_50_5();
    v343 = v486;
    OUTLINED_FUNCTION_30_1(&v486[v253], &v517);
    if (!*&v343[v253])
    {
      swift_endAccess();
      OUTLINED_FUNCTION_83_0();
      goto LABEL_173;
    }

    v344 = sub_2745959AC(v341, sub_27453BA6C, sub_274453590);
    swift_endAccess();
    OUTLINED_FUNCTION_38_7();
    v349 = sub_274590C28(v345, v346, v347, v348);
    OUTLINED_FUNCTION_30_1(&v343[v253], &v517);
    if (*&v343[v253])
    {
      sub_274547EA0();

      sub_2745C373C(v349, v349);
    }

    swift_endAccess();
    *(v342 + 80) = v349;
    *(v342 + 88) = 0;
    v350 = *&v343[v253];
    if (!v350)
    {

      OUTLINED_FUNCTION_83_0();
      goto LABEL_173;
    }

    v511 = v344;
    OUTLINED_FUNCTION_38_7();
    v353 = sub_274591184(v351, v352);
    *&v517.a = MEMORY[0x277D84F90];
    v354 = sub_274453594();
    for (j = 0; v354 != j; ++j)
    {
      sub_2744535A4();
      if ((v350 & 0xC000000000000001) != 0)
      {
        v357 = MEMORY[0x277C58B20](j, v350);
        v356 = v357;
      }

      else
      {
        v356 = *(v350 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        goto LABEL_231;
      }

      v518 = v356;
      MEMORY[0x28223BE20](v357);
      OUTLINED_FUNCTION_16_19();
      *(v358 - 16) = &v518;
      v359 = v489;
      sub_27446ECD4(sub_2745A888C, v360, v353);
      v489 = v359;
      if (v361)
      {
      }

      else
      {
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }
    }

    v362 = *&v517.a;

    sub_2744B2A84(v511, v362);
    v364 = v363;
    v366 = v365;

    if (v366)
    {
      goto LABEL_245;
    }

    v246 = __OFADD__(v364, 1);
    v367 = v364 + 1;
    v27 = v494;
    if (v246)
    {
      goto LABEL_235;
    }

    if (v367 < 0)
    {
      goto LABEL_236;
    }

    if (sub_274453594() < v367)
    {
      goto LABEL_237;
    }

    v368 = sub_274453594();
    if (!__OFADD__(sub_274453594(), v368))
    {
      sub_274547EA4();
      sub_2745470D0();
      OUTLINED_FUNCTION_50_5();
      OUTLINED_FUNCTION_38_7();
      sub_2745914E0(v369, v370);

LABEL_173:
      v371 = OUTLINED_FUNCTION_59_4();
      sub_274595CB8(v371, v372, v373, v374);
      goto LABEL_174;
    }

    goto LABEL_238;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
}

uint64_t sub_2745A42C4(double a1, double a2)
{
  v5 = [v2 window];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 hitTest:0 withEvent:{a1, a2}];

  v8 = v7;
  v9 = v8;
  if (!v8)
  {
LABEL_5:

    return 0;
  }

  while (1)
  {
    type metadata accessor for WFEditorCell();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      break;
    }

    v11 = [v9 superview];

    v9 = v11;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v12 = v10;

  return v12;
}

uint64_t sub_2745A442C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  OUTLINED_FUNCTION_68_0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274648560;
  sub_274412734(0, &unk_280952AA8, 0x277D75650);
  v1 = sub_27463B6AC();
  *(v0 + 32) = sub_2745A44B8(v1, v2, 0, sel_escapeKeyPressed);
  return v0;
}

id sub_2745A44B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_27463B66C();

  v7 = [swift_getObjCClassFromMetadata() keyCommandWithInput:v6 modifierFlags:a3 action:a4];

  return v7;
}

void sub_2745A4534()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems;
  swift_beginAccess();
  *&v1[v0] = 0;

  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession);
  if (v2)
  {
    v3 = *(v2 + 104);
    *(v2 + 80) = *(v2 + 96);
    *(v2 + 88) = v3;
  }

  v4 = sub_27459F2A0();
  [v4 setEnabled_];

  [*(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer) setEnabled_];
  sub_274595CB8(1, MEMORY[0x277D84F90], 1, 0);
}

id sub_2745A463C(double a1, double a2)
{
  v5 = [v2 window];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 hitTest:0 withEvent:{a1, a2}];

  v8 = v7;
  v9 = v8;
  if (!v8)
  {
LABEL_15:

    return v9;
  }

  while (1)
  {
    v10 = v9;
    v11 = [v10 interactions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A70, &qword_27465C500);
    v12 = sub_27463B81C();

    if (v12 >> 62)
    {
      result = sub_27463C27C();
      if (!result)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_11;
      }
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x277C58B20](0, v12);
      goto LABEL_8;
    }

    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    swift_unknownObjectRetain();
LABEL_8:

    type metadata accessor for WFEditorDragInteraction();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v9 = v14;

      return v9;
    }

    swift_unknownObjectRelease();
LABEL_12:
    v9 = [v10 superview];

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_2745A4808(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView;
  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  CGAffineTransformMakeScale(&v10, 1.05, 1.05);
  [v3 setTransform_];
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_27463B66C();
  v6 = [v4 BOOLForKey_];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + v2) layer];
    [v7 setShadowRadius_];

    v8 = [*(a1 + v2) layer];
    LODWORD(v9) = 1046562734;
    [v8 setShadowOpacity_];
  }
}

id sub_2745A494C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView);
  [v1 frame];
  if (v2 == 100.0)
  {
    v3 = 200.0;
  }

  else
  {
    v3 = 100.0;
  }

  [v1 frame];

  return [v1 setFrame_];
}

uint64_t sub_2745A49D0(uint64_t a1, double a2, double a3)
{
  v6 = objc_opt_self();
  sub_27463BC8C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2745A88EC;
  *(v14 + 24) = v13;
  v20[4] = sub_27440CBD0;
  v20[5] = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_2745F36FC;
  v20[3] = &block_descriptor_194;
  v15 = _Block_copy(v20);

  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  LODWORD(v18) = v12;
  [v6 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v15);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id sub_2745A4B9C(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 64) + a2;
  v5 = *(a1 + 72) + a3;
  [v3 frame];

  return [v3 setFrame_];
}

id sub_2745A4C04(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_2745A4C64(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 sourceView];
    if (v5)
    {
      v6 = v5;
      [v5 setAlpha_];
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    v11[4] = sub_2745A88F8;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_27443E0E8;
    v11[3] = &block_descriptor_200;
    v9 = _Block_copy(v11);
    v10 = v4;

    [v7 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v9);
  }
}

uint64_t sub_2745A4DD4(void *a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2745A8900;
  *(v10 + 24) = v9;
  v17[4] = sub_27440D744;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2745F36FC;
  v17[3] = &block_descriptor_210;
  v11 = _Block_copy(v17);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_2745A4F84(void *a1)
{
  v1 = [a1 sourceView];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }
}

void sub_2745A4FEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorCell_dragState) == 1)
  {
    v15 = v5;
    v16 = v4;
    v17 = v2;
    v18 = v3;
    v7 = *(*(a2 + 40) + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
    CGAffineTransformMakeScale(&v14, 0.7, 0.7);
    [v7 setTransform_];
    v8 = sub_27459AD34() + 0.25;
    v9 = objc_allocWithZone(MEMORY[0x277D75D40]);

    v10 = sub_2745FB6C4(sub_2745A8908, a2, v8, 1.0);
    [v10 startAnimation];

    v11 = objc_opt_self();
    *&v14.tx = sub_2745A8910;
    *&v14.ty = a2;
    *&v14.a = MEMORY[0x277D85DD0];
    *&v14.b = 1107296256;
    *&v14.c = sub_27443E0E8;
    *&v14.d = &block_descriptor_213;
    v12 = _Block_copy(&v14);

    *&v14.tx = CGSizeMake;
    v14.ty = 0.0;
    *&v14.a = MEMORY[0x277D85DD0];
    *&v14.b = 1107296256;
    *&v14.c = sub_27456009C;
    *&v14.d = &block_descriptor_216;
    v13 = _Block_copy(&v14);
    [v11 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v13);
    _Block_release(v12);
  }
}

id sub_2745A520C(uint64_t a1)
{
  v1 = *(*(a1 + 40) + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  CGAffineTransformMakeScale(&v3, 1.05, 1.05);
  return [v1 setTransform_];
}

uint64_t sub_2745A5278(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_27463BC8C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2745A8918;
  *(v9 + 24) = a1;
  v15[4] = sub_27440D744;
  v15[5] = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2745F36FC;
  v15[3] = &block_descriptor_223_0;
  v10 = _Block_copy(v15);

  LODWORD(v11) = v4;
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v10);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_2745A5414(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_27463B66C();
  v4 = [v2 BOOLForKey_];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView;
    v7 = [*(v5 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView) layer];
    [v7 setShadowRadius_];

    v9 = [*(v5 + v6) layer];
    LODWORD(v8) = 1046562734;
    [v9 setShadowOpacity_];
  }
}

uint64_t sub_2745A553C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_dragDidBeginHandler);

    v2(v3);
  }

  return result;
}

void sub_2745A5598(uint64_t a1)
{
  v2 = sub_27459F2A0();
  v3 = [v2 numberOfTouches];

  if (!v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView);

    [v4 removeFromSuperview];
  }
}

void sub_2745A5614(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView;
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v12[0] = *MEMORY[0x277CBF2C0];
  v12[1] = v4;
  v12[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform_];
  v5 = 0;
  if ((sub_27459ADC4() & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_27463B66C();
    v8 = [v6 BOOLForKey_];

    if (v8)
    {
      return;
    }

    v9 = [*(v1 + v2) layer];
    [v9 setShadowRadius_];

    v5 = 1032805417;
  }

  v10 = [*(v1 + v2) layer];
  LODWORD(v11) = v5;
  [v10 setShadowOpacity_];
}

id sub_2745A5760(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  [v3 frame];
  [v4 setFrame_];

  [a2 setNeedsLayout];

  return [a2 layoutIfNeeded];
}

uint64_t sub_2745A57F0(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745A8920;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_233;
  v13 = _Block_copy(v19);

  v14 = a2;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2745A59B8(uint64_t a1, id a2)
{
  v2 = *(a1 + 40);
  [a2 frame];
  v4 = v3;
  v6 = v5;
  [v2 frame];

  return [v2 setFrame_];
}

void sub_2745A5A2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView;
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v10[0] = *MEMORY[0x277CBF2C0];
  v10[1] = v4;
  v10[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform_];
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_27463B66C();
  v7 = [v5 BOOLForKey_];

  if ((v7 & 1) == 0)
  {
    v8 = [*(v1 + v2) layer];
    [v8 setShadowRadius_];

    v9 = [*(v1 + v2) layer];
    [v9 setShadowOpacity_];
  }
}

uint64_t sub_2745A5B5C(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  sub_27463BC8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745A8BB4;
  *(v12 + 24) = v11;
  v19[4] = sub_27440D744;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2745F36FC;
  v19[3] = &block_descriptor_436;
  v13 = _Block_copy(v19);

  v14 = a2;

  LODWORD(v15) = v6;
  LODWORD(v16) = v8;
  LODWORD(v17) = v10;
  [v4 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v13);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_2745A5D24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = (v4 + OBJC_IVAR____TtC14WorkflowEditor23WFEditorDragInteraction_floatingViewOutsets);
  if (!v4)
  {
    v6 = MEMORY[0x277D768C8];
  }

  v8 = *v6;
  v7 = v6[1];
  [*(a1 + 32) bounds];
  [v5 convertRect:a2 toCoordinateSpace:?];
  v10 = v9;
  [v5 bounds];
  v11 = *(a1 + 40);
  v12 = *&v11[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFConverterView_contentContainerView];
  v14 = v10 / v13;
  CGAffineTransformMakeScale(&v28, v14, v14);
  [v12 setTransform_];
  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);
  v17 = [v11 superview];
  [v5 convertPoint:v17 toView:{v15, v16}];
  v19 = v18;
  v21 = v20;

  CGAffineTransformMakeTranslation(&v28, -v7, -v8);
  v29.x = v19;
  v29.y = v21;
  v22 = CGPointApplyAffineTransform(v29, &v28);
  [v5 bounds];
  v23 = 1.0 - 1.0 / v14;
  v24 = v23 * CGRectGetWidth(v30) * 0.5;
  [v5 bounds];
  Height = CGRectGetHeight(v31);
  CGAffineTransformMakeTranslation(&v28, v24, v23 * Height * 0.5);
  v26 = CGPointApplyAffineTransform(v22, &v28);
  [v11 frame];
  return [v11 setFrame_];
}

void sub_2745A5F34(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions;
  swift_beginAccess();

  v5 = sub_2745A83B4((a1 + v4), a2);
  v6 = sub_274453594();
  if (v6 < v5)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_2745C37E8(v5, v6);
    swift_endAccess();
  }
}

uint64_t sub_2745A604C()
{
  OUTLINED_FUNCTION_40_7();
  v0 = sub_27463B66C();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_42_7();
  if (![v2 v3])
  {
    return 0;
  }

  sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
  v4 = sub_27459F2A0();
  v5 = OUTLINED_FUNCTION_95_0(v4);

  return v5 & 1;
}

uint64_t sub_2745A615C(uint64_t a1, void *a2)
{
  v3 = sub_2745A86E8(a2);
  if (v4)
  {
    if (v3 == 0xD00000000000002FLL && v4 == 0x800000027468EC70)
    {
    }

    else
    {
      v6 = sub_27463C6BC();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    [a2 setEnabled_];
  }

  return 0;
}

BOOL sub_2745A625C(void *a1, id a2)
{
  v4 = [a2 view];
  result = 0;
  if (!v4 || (v5 = v4, objc_opt_self(), v2 = swift_dynamicCastObjCClass(), v5, !v2))
  {
    sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
    v6 = sub_27459F2A0();
    v7 = OUTLINED_FUNCTION_95_0(v6);

    if ((v7 & 1) == 0 || [a1 state] != 1)
    {
      return 1;
    }
  }

  return result;
}

void sub_2745A6384(uint64_t a1, id a2)
{
  v3 = v2;
  v5 = [a2 view];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2745A6EA4();
    if (v7)
    {
      v8 = v7;

      goto LABEL_33;
    }

    OUTLINED_FUNCTION_40_7();
    v9 = sub_27463B66C();
    v10 = NSClassFromString(v9);

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = [v6 isKindOfClass_];

    if (v11)
    {
      return;
    }
  }

  v12 = [v3 window];
  if (v12)
  {
    v8 = v12;
    sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
    v13 = sub_27459F2A0();
    v14 = sub_27463BF7C();

    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

    [a2 locationInView_];
    v17 = sub_2745A42C4(v15, v16);
    if (v17)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {

        v18 = sub_2745910B4();

        swift_unknownObjectRelease();
        if (!v18)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      [a2 locationInView_];
      v21 = sub_2745A463C(v19, v20);
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    [v3 contentOffset];
    v23 = v22;
    [v3 adjustedContentInset];
    v25 = v23 + v24;
    if (v23 + v24 >= 0.0)
    {
      [v3 contentSize];
      v30 = v29;
      [v3 adjustedContentInset];
      v32 = v30 + v31;
      [v3 adjustedContentInset];
      v34 = v32 + v33;
      OUTLINED_FUNCTION_97_0();
      Height = CGRectGetHeight(v40);
      if (v25 <= 0.0 || v34 > Height)
      {
        OUTLINED_FUNCTION_97_0();
        if (CGRectGetHeight(v41) >= v34)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_97_0();
        if (v34 - CGRectGetHeight(v42) >= v25)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_97_0();
        if (v25 >= v34 - CGRectGetHeight(v43) + 30.0)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_39();
        v26 = swift_allocObject();
        *(v26 + 16) = v3;
        *(v26 + 24) = v34;
        objc_allocWithZone(MEMORY[0x277D75D40]);
        v37 = v3;
        v28 = sub_2745A86C0;
        goto LABEL_31;
      }

      if (v25 < 30.0)
      {
        OUTLINED_FUNCTION_5();
        v26 = swift_allocObject();
        *(v26 + 16) = v3;
        objc_allocWithZone(MEMORY[0x277D75D40]);
        v38 = v3;
        v28 = sub_2745A86CC;
        goto LABEL_31;
      }
    }

    else if (v25 > -30.0)
    {
      OUTLINED_FUNCTION_5();
      v26 = swift_allocObject();
      *(v26 + 16) = v3;
      objc_allocWithZone(MEMORY[0x277D75D40]);
      v27 = v3;
      v28 = sub_2745A8D74;
LABEL_31:
      v39 = sub_2745FB6C4(v28, v26, 0.5, 1.0);
      [v39 startAnimation];
    }

LABEL_32:

    v8 = v17;
LABEL_33:
  }
}

id sub_2745A6750(void *a1)
{
  [a1 adjustedContentInset];
  CGSizeMake();

  return [a1 setContentOffset_];
}

id sub_2745A67A4(void *a1)
{
  [a1 bounds];
  CGRectGetHeight(v4);
  [a1 adjustedContentInset];
  CGSizeMake();

  return [a1 setContentOffset_];
}

void sub_2745A6888()
{
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_activeDragSession) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_settlingDragSessions) = MEMORY[0x277D84F90];
  *(OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_transientItems + v0) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_previousLayoutItems) = v1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___dragGestureRecognizer) = 0;
  v2 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_forceHighFrameRateOscillatingView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_bottomVariableBlurView;
  v4 = objc_allocWithZone(type metadata accessor for WFEditorVariableBlurView());
  v5 = OUTLINED_FUNCTION_7_16();
  *(v0 + v3) = [v6 v7];
  v8 = v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_cachedSize;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_windowTouchObserver) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_indicesForVisibleRows) = v1;
  type metadata accessor for WFEditorCell();
  sub_27463832C();
  v9 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_visibleCellsForItem;
  type metadata accessor for WFEditorItem();
  OUTLINED_FUNCTION_10_28();
  sub_2745A8678(v10, v11, v12, &protocol conformance descriptor for WFEditorItem);
  *(v0 + v9) = sub_27463B4DC();
  v13 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_queuedCells;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952670, &unk_27465C4F0);
  *(v0 + v13) = sub_27463B4DC();
  if (sub_274453594())
  {
    sub_2745737B0();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_outgoingCells) = v14;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_scrollToItemAutoscrollSession) = 0;
  v15 = OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_rowHeightCache;
  *(v0 + v15) = sub_27463B4DC();
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView_suppressScrollLayoutUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor12WFEditorView____lazy_storage___debugDropTargetView) = 0;
  OUTLINED_FUNCTION_49_4("Fatal error", v16, v17, v18, v19, "WorkflowEditor/WFEditorView.swift", v20, v21, 2054, 0);
  __break(1u);
}

id sub_2745A6B2C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = objc_opt_self();
  v2 = [v1 systemGreenColor];
  v3 = [v2 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  v4 = [v0 layer];
  [v4 setCornerCurve_];

  v5 = [v0 layer];
  [v5 setCornerRadius_];

  v6 = [v0 layer];
  v7 = [v1 systemGreenColor];
  v8 = [v7 colorWithAlphaComponent_];

  v9 = [v8 CGColor];
  [v6 setBorderColor_];

  v10 = [v0 layer];
  [v10 setBorderWidth_];

  [v0 setHidden_];
  return v0;
}

void sub_2745A6D50(uint64_t a1)
{
  sub_2745A6E40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2745A6E40(uint64_t a1)
{
  if (!qword_280952A00)
  {
    type metadata accessor for WFEditorCell();
    v1 = sub_27463835C();
    if (!v2)
    {
      atomic_store(v1, &qword_280952A00);
    }
  }
}

uint64_t sub_2745A6EA4()
{
  v1 = [v0 superview];
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      break;
    }

    v3 = [v1 superview];

    v1 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

char *sub_2745A6F90(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v35.receiver = v4;
  v35.super_class = type metadata accessor for WFEditorVariableBlurView();
  v11 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = sub_274412734(0, &qword_2809525F0, 0x277CD9EA0);
  v13 = sub_27463B6AC();
  v15 = v14;
  v16 = v11;
  v17 = sub_274595918(v13, v15);
  v18 = sub_2746386DC();
  [v17 setValue:v18 forKey:*MEMORY[0x277CDA4F0]];

  v19 = sub_27463B95C();
  [v17 setValue:v19 forKey:*MEMORY[0x277CDA4C8]];

  v20 = sub_27463B95C();
  [v17 setValue:v20 forKey:*MEMORY[0x277CDA448]];

  sub_274412734(0, &unk_280952A50, 0x277D79FC8);
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v21 = qword_280965DC8;
  v22 = qword_280965DC8;
  v23 = sub_2745A7374(0xD000000000000016, 0x800000027468EC00, v21);
  v24 = [v23 CGImage];

  [v17 setValue:v24 forKey:*MEMORY[0x277CDA4C0]];
  v25 = v16;
  v26 = [v25 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40, &unk_27465C4E0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_274648570;
  *(v27 + 56) = v12;
  *(v27 + 32) = v17;
  v28 = v17;
  sub_2745A85DC(v27, v26, &selRef_setFilters_);

  v29 = [v25 layer];
  v30 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer;
  [v29 addSublayer_];

  [*&v25[v30] setStartPoint_];
  [*&v25[v30] setEndPoint_];
  sub_2745A74BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809512E0, &qword_274659ED8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_274648570;
  v32 = sub_274638DBC();
  v33 = MEMORY[0x277D74BF0];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(swift_allocObject() + 16) = ObjectType;
  sub_27463BF0C();

  swift_unknownObjectRelease();

  return v25;
}

id sub_2745A7374(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

id sub_2745A7408()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFEditorVariableBlurView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer];
  [v0 bounds];
  return [v1 setFrame_];
}

void sub_2745A74BC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = objc_opt_self();
  v4 = &selRef_blackColor;
  if (v2 != 2)
  {
    v4 = &selRef_systemGray6Color;
  }

  v13 = [v3 *v4];
  v5 = *&v0[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952A40, &unk_27465C4E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2746486A0;
  v7 = [v13 colorWithAlphaComponent_];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v6 + 56) = v9;
  *(v6 + 32) = v8;
  v11 = [v13 colorWithAlphaComponent_];
  v12 = [v11 CGColor];

  *(v6 + 88) = v10;
  *(v6 + 64) = v12;
  sub_2745A85DC(v6, v5, &selRef_setColors_);
}

void sub_2745A764C()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C424WFEditorVariableBlurView_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_27463C56C();
  __break(1u);
}

id sub_2745A7748(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFTouchObserver_touchesBeganHandler];
  *v5 = a2;
  *(v5 + 1) = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WFTouchObserver();

  v6 = objc_msgSendSuper2(&v8, sel_initWithTarget_action_, 0, 0);
  [v6 setDelegate_];
  [v6 setCancelsTouchesInView_];
  [a1 addGestureRecognizer_];

  return v6;
}

id sub_2745A7814()
{
  (*&v0[OBJC_IVAR____TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFTouchObserver_touchesBeganHandler])();

  return [v0 setState_];
}

id sub_2745A79F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for WFEditorCell.DragState(_BYTE *result, unsigned int a2, unsigned int a3)
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