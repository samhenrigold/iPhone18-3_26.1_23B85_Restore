Swift::Void __swiftcall TipUIPopoverViewController.loadView()()
{
  type metadata accessor for TipUIPopoverViewController.Container();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

Swift::Void __swiftcall TipUIPopoverViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_1A361EA14();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  sub_1A362304C();
  swift_unknownObjectRelease();
}

void sub_1A3617E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1A3617F70();
  }

  else
  {
  }
}

uint64_t sub_1A3617F70()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for TipUIWrapperView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3614ED8(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1A35A6588(v4, &qword_1EB0EF8C0, &unk_1A362A740);
  }

  else
  {
    sub_1A3619D7C(v4, v7, type metadata accessor for TipUIWrapperView);
    v8 = *(MEMORY[0x1E69DE098] + 8);
    v9 = [v0 traitCollection];
    v10 = [v9 horizontalSizeClass];

    [v1 setPreferredContentSize_];
    sub_1A3619DDC(v7, type metadata accessor for TipUIWrapperView);
  }

  *&result = COERCE_DOUBLE(sub_1A3614F50());
  if ((v13 & 1) == 0)
  {
    v14 = result;
    v15 = v12;
    *&result = COERCE_DOUBLE(sub_1A3614FEC());
    if ((v17 & 1) != 0 || (*&v14 == *&result ? (v18 = *&v15 == v16) : (v18 = 0), !v18))
    {
      *&result = COERCE_DOUBLE(sub_1A36150F0(v14, v15, 0));
    }
  }

  return result;
}

Swift::Void __swiftcall TipUIPopoverViewController.viewDidLayoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  v1 = sub_1A3614F50();
  if ((v3 & 1) == 0)
  {
    v4 = v1;
    v5 = v2;
    v6 = COERCE_DOUBLE(sub_1A3614FEC());
    if ((v8 & 1) != 0 || (*&v4 == v6 ? (v9 = *&v5 == v7) : (v9 = 0), !v9))
    {
      sub_1A36150F0(v4, v5, 0);
    }
  }
}

void sub_1A3618234(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_5();
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = v4;
  a4();
}

Swift::Void __swiftcall TipUIPopoverViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  sub_1A3617F70();
}

Swift::Void __swiftcall TipUIPopoverViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidDisappear_, a1);
  v3 = *&v1[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear + 8];

    v3(v5);
    sub_1A35BBDF4(v3, v4);
  }
}

void sub_1A36183FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_11("TipKit/TipUIPopoverViewController (iOS visionOS).swift");
  }

  v8 = a1;
  a5(a3);
}

double sub_1A361856C(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9A0, &qword_1A362A938);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v7 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9A8, &qword_1A362A970);
  sub_1A362203C();
  *v11 = KeyPath;
  sub_1A35B4270(v3, v9);
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9B0, &qword_1A362A978));
  v13 = sub_1A36219FC();
  [v13 sizeThatFits_];
  v15 = v14;

  return v15;
}

id TipUIPopoverViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A3622B5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TipUIPopoverViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_delegate;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for TipUIPopoverViewController.Delegate()) init];
  v8 = &v3[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_hostingView] = 0;
  if (a2)
  {
    v9 = sub_1A3622B5C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id TipUIPopoverViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TipUIPopoverViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_delegate;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for TipUIPopoverViewController.Delegate()) init];
  v5 = &v1[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_hostingView] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1A3618B50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (sub_1A3622DBC())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = &unk_1EB0EF000;
    if (Strong && (v5 = Strong, v6 = [Strong arrowDirection], v5, v7 = sub_1A35FBD7C(v6), v7 != 4))
    {
      v1[OBJC_IVAR____TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container_arrowEdge] = v7;
LABEL_14:
      if (v1[v4[305]] == 4)
      {
        v20.receiver = v1;
        v20.super_class = ObjectType;
        objc_msgSendSuper2(&v20, sel_safeAreaInsets);
      }

      else
      {
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
        sub_1A362228C();
      }
    }

    else
    {
      v21.receiver = v1;
      v21.super_class = ObjectType;
      v19 = ObjectType;
      objc_msgSendSuper2(&v21, sel_safeAreaInsets);
      sub_1A361DC5C(v8, v9, v10, v11);
      v13 = v12;
      v14 = (v12 + 40);
      v15 = -*(v12 + 16);
      v16 = -1;
      while (1)
      {
        if (v15 + v16 == -1)
        {

          ObjectType = v19;
          v4 = &unk_1EB0EF000;
          goto LABEL_14;
        }

        if (++v16 >= *(v13 + 16))
        {
          break;
        }

        v17 = *(v14 - 8);
        v18 = *v14;
        sub_1A3622E3C();
        sub_1A3622E2C();
        sub_1A3622DFC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v14 += 2;

        if (v18 == 13.0)
        {

          v4 = &unk_1EB0EF000;
          v1[OBJC_IVAR____TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container_arrowEdge] = v17;
          ObjectType = v19;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v22.receiver = v0;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, sel_safeAreaInsets);
  }
}

id sub_1A3618DD8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container_arrowEdge] = 4;
  swift_unknownObjectWeakInit();
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1A3618F3C(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7609Container_arrowEdge] = 4;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1A3618FEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void *))
{
  OUTLINED_FUNCTION_17_5();
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_11("TipKit/TipUIPopoverViewController (iOS visionOS).swift");
  }

  v7 = a5(a3);

  return v7;
}

void *sub_1A361920C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 presentationController:a1 prepareAdaptivePresentationController:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A361938C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  if (([Strong respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = [v5 presentationController:a1 viewControllerForAdaptivePresentationStyle:a2];
  swift_unknownObjectRelease();
  return v6;
}

void *sub_1A36194FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 presentationController:a1 willPresentWithAdaptiveStyle:a2 transitionCoordinator:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A36196A4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v3 = Strong;
  if ([Strong respondsToSelector_])
  {
    v4 = [v3 presentationControllerShouldDismiss_];
  }

  else
  {
    v4 = 1;
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_1A361980C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  OUTLINED_FUNCTION_17_5();
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_11("TipKit/TipUIPopoverViewController (iOS visionOS).swift");
  }

  v8 = a3;
  v9 = v5;
  sub_1A36198F0(v8, a5);
}

void *sub_1A36198F0(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1A361998C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 popoverPresentationController:a1 willRepositionPopoverToRect:a2 inView:a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A3619B24()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1A3619C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF9B8, &unk_1A362A980);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A35ABFF4(a1, &v5 - v3, &qword_1EB0EF9B8, &unk_1A362A980);
  return sub_1A3621C1C();
}

void sub_1A3619CF8(uint64_t a1, void *a2)
{
  sub_1A35CDC10(0, &qword_1ED81D9A8, 0x1E69DD250);
  v3 = sub_1A3622CBC();

  [a2 setPassthroughViews_];
}

uint64_t sub_1A3619D7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1A3619DDC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1A3619E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    sub_1A3621A0C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for TipUIWrapperView(0);
  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t TipUIView.backgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TipViewEnvironment(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1A3619E9C(v13 - v9);
  v11 = type metadata accessor for TipUIWrapperView(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    sub_1A35A6588(v10, &qword_1EB0EF8C0, &unk_1A362A740);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    sub_1A35ADD70(v6);
    sub_1A35ABFF4(v6 + *(v2 + 32), v13, &qword_1EB0EED38, &unk_1A3627EB0);
    sub_1A361BC3C();
    result = sub_1A35A63BC(v13, a1);
    if (*(&v15 + 1))
    {
      return sub_1A35A6588(&v14, &unk_1EB0EF950, &unk_1A3629BF0);
    }
  }

  else
  {
    sub_1A35A6350((v10 + 112), &v14);
    sub_1A35A6588(v10, &qword_1EB0EF8C0, &unk_1A362A740);
    return sub_1A35A63BC(&v14, a1);
  }

  return result;
}

uint64_t TipUIView.backgroundStyle.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v25);
  type metadata accessor for TipUIWrapperView(0);
  v15 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20, &unk_1A362A740);
    sub_1A35B42D4(v2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22, v23);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((v1 + 112), a1);
    *(v1 + 152) = 1;
    sub_1A35B42D4(v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
}

void (*TipUIView.backgroundStyle.modify())(uint64_t *a1, uint64_t a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIView.backgroundStyle.getter(v1);
  return sub_1A361A238;
}

double TipUIView.cornerRadius.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_10(v3, v9);
  type metadata accessor for TipUIWrapperView(0);
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 160);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0, &unk_1A362A740);
  return v7;
}

uint64_t TipUIView.cornerRadius.setter(double a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_4();
  sub_1A3619E9C(v1);
  type metadata accessor for TipUIWrapperView(0);
  v7 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v7, v8, v9))
  {
    v10 = OUTLINED_FUNCTION_17();
    sub_1A35ABFF4(v10, v11, v12, &unk_1A362A740);
    sub_1A35B42D4(v2);
    v13 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v13, v14, v15);
  }

  else
  {
    *(v1 + 160) = a1;
    sub_1A35B42D4(v1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
}

uint64_t TipUIView.cornerRadius.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = TipUIView.cornerRadius.getter();
  return OUTLINED_FUNCTION_18();
}

double TipUIView.imageSize.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_10(v3, v9);
  type metadata accessor for TipUIWrapperView(0);
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 224);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0, &unk_1A362A740);
  return v7;
}

uint64_t TipUIView.imageSize.setter(double a1, double a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_4();
  sub_1A3619E9C(v2);
  type metadata accessor for TipUIWrapperView(0);
  v9 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v9, v10, v11))
  {
    v12 = OUTLINED_FUNCTION_17();
    sub_1A35ABFF4(v12, v13, v14, &unk_1A362A740);
    sub_1A35B42D4(v3);
    v15 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v15, v16, v17);
  }

  else
  {
    *(v2 + 224) = a1;
    *(v2 + 232) = a2;
    *(v2 + 240) = 1;
    sub_1A35B42D4(v2);
  }

  return sub_1A35A6588(v2, &qword_1EB0EF8C0, &unk_1A362A740);
}

uint64_t TipUIView.imageSize.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = TipUIView.imageSize.getter();
  *(a1 + 8) = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t TipUIView.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_2(v5, v10);
  type metadata accessor for TipUIWrapperView(0);
  v6 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v6, v7, v8))
  {
    result = sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    sub_1A35ABFF4(v1 + 248, a1, &unk_1EB0EF950, &unk_1A3629BF0);
    return sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
  }

  return result;
}

uint64_t TipUIView.imageStyle.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v25);
  type metadata accessor for TipUIWrapperView(0);
  v15 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20, &unk_1A362A740);
    sub_1A35B42D4(v2);
    sub_1A35A6588(a1, &unk_1EB0EF950, &unk_1A3629BF0);
    v21 = OUTLINED_FUNCTION_4_16();
  }

  else
  {
    sub_1A36107DC(a1, v1 + 248);
    sub_1A35B42D4(v1);
    v22 = &unk_1EB0EF950;
    v23 = &unk_1A3629BF0;
    v21 = a1;
  }

  sub_1A35A6588(v21, v22, v23);
  return sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
}

void (*TipUIView.imageStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIView.imageStyle.getter(v1);
  return sub_1A361A950;
}

void sub_1A361A950(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A35ABFF4(*a1, v2 + 40, &unk_1EB0EF950, &unk_1A3629BF0);
    TipUIView.imageStyle.setter(v2 + 40);
    v3 = OUTLINED_FUNCTION_17();
    sub_1A35A6588(v3, v4, v5);
  }

  else
  {
    TipUIView.imageStyle.setter(*a1);
  }

  free(v2);
}

uint64_t TipUIView.viewStyle.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_2(v5, v13);
  v6 = type metadata accessor for TipUIWrapperView(0);
  v7 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v7, v8, v6))
  {
    sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
    a1[3] = type metadata accessor for MiniTipViewStyle(0);
    a1[4] = sub_1A35ADEFC();
    __swift_allocate_boxed_opaque_existential_0(a1);
    OUTLINED_FUNCTION_23_3();
    sub_1A362178C();
    v9 = OUTLINED_FUNCTION_10();
    return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  }

  else
  {
    sub_1A35A6350(v1 + *(v6 + 68), v14);
    sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
    return sub_1A35A63BC(v14, a1);
  }
}

uint64_t TipUIView.viewStyle.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v25);
  v15 = type metadata accessor for TipUIWrapperView(0);
  v16 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20, &unk_1A362A740);
    sub_1A35B42D4(v2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22, v23);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((v1 + *(v15 + 68)), a1);
    sub_1A35B42D4(v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
}

void (*TipUIView.viewStyle.modify())(uint64_t *a1, uint64_t a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIView.viewStyle.getter(v1);
  return sub_1A361AC90;
}

void sub_1A361ACA8(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1A35A6350(*a1, (v4 + 5));
    a3(v4 + 5);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t sub_1A361AD24@<X0>(uint64_t (**a1)()@<X8>)
{
  result = TipUIView.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A361CCD8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A361AD94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A361CCE4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1, v2);
  return TipUIView.closeHandler.setter(v4, v3);
}

uint64_t TipUIView.dismissalHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUIView.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A361AE84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_10(v3, v9);
  type metadata accessor for TipUIWrapperView(0);
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 72);
    sub_1A35B5EA0(v7, *(v0 + 80));
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0, &unk_1A362A740);
  return v7;
}

uint64_t sub_1A361AF38@<X0>(uint64_t (**a1)()@<X8>)
{
  result = TipUIView.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A361CCB0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A361AFA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A361CC88;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1, v2);
  return TipUIView.closeHandler.setter(v4, v3);
}

uint64_t sub_1A361B03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  sub_1A3619E9C(&v19 - v10);
  v12 = type metadata accessor for TipUIWrapperView(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    v13 = OUTLINED_FUNCTION_4_16();
    sub_1A35ABFF4(v13, v14, v15, &unk_1A362A740);
    sub_1A35B42D4(v8);
    sub_1A35BBDF4(a1, a2);
    sub_1A35A6588(v8, &qword_1EB0EF8C0, &unk_1A362A740);
  }

  else
  {
    v16 = *(v11 + 9);
    v17 = *(v11 + 10);
    *(v11 + 9) = a1;
    *(v11 + 10) = a2;
    sub_1A35B5EA0(a1, a2);
    sub_1A35BBDF4(v16, v17);
    sub_1A35B42D4(v11);
    sub_1A35BBDF4(a1, a2);
  }

  return sub_1A35A6588(v11, &qword_1EB0EF8C0, &unk_1A362A740);
}

uint64_t TipUIView.closeHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUIView.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A361B1F0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_8_15();
    sub_1A35B5EA0(v4, v5);
    v6 = OUTLINED_FUNCTION_8_15();
    a3(v6);
    v7 = OUTLINED_FUNCTION_8_15();

    return sub_1A35BBDF4(v7, v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_8_15();
    return a3(v10);
  }
}

uint64_t TipUIView.backgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_10(v3, v8);
  v4 = type metadata accessor for TipUIWrapperView(0);
  v5 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) || !*(v0 + *(v4 + 72)))
  {
    sub_1A35A6588(v0, &qword_1EB0EF8C0, &unk_1A362A740);
    return 0;
  }

  else
  {

    sub_1A35A6588(v0, &qword_1EB0EF8C0, &unk_1A362A740);
    sub_1A3611350();
    return sub_1A362309C();
  }
}

uint64_t TipUIView.backgroundColor.setter(id a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_11(v7, v8, v9, v10, v11, v12, v13, v14, v26);
  v15 = type metadata accessor for TipUIWrapperView(0);
  v16 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20, &unk_1A362A740);
    sub_1A35B42D4(v2);

    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22, v23);
  }

  else
  {
    if (a1)
    {
      a1 = a1;
      v24 = sub_1A362268C();
      *(v1 + *(v15 + 72)) = v24;

      v28 = MEMORY[0x1E69815C0];
      v29 = MEMORY[0x1E6981568];
      *&v27 = v24;
      __swift_destroy_boxed_opaque_existential_1((v1 + 112));
      sub_1A35A63BC(&v27, v1 + 112);
      *(v1 + 152) = 1;
    }

    else
    {
      *(v1 + *(v15 + 72)) = 0;
    }

    sub_1A35B42D4(v1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0, &unk_1A362A740);
}

uint64_t TipUIView.backgroundColor.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TipUIView.backgroundColor.getter();
  return OUTLINED_FUNCTION_18();
}

void sub_1A361B67C(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    TipUIView.backgroundColor.setter(v2);
  }

  else
  {
    TipUIView.backgroundColor.setter(*a1);
  }
}

id TipUIView.intrinsicContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  OUTLINED_FUNCTION_25_2(ObjectType, v3, v4);
  v5 = *&v0[v2];
  if (v5)
  {
    return [v5 intrinsicContentSize];
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_intrinsicContentSize);
}

void TipUIView.init(_:arrowEdge:sourceView:actionHandler:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v47 = v3;
  v45 = v4;
  v43 = v5;
  v46 = v6;
  v8 = v7;
  v44 = v7;
  swift_getObjectType();
  v9 = OUTLINED_FUNCTION_23_3();
  v10 = type metadata accessor for TipViewEnvironment(v9);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v15 = type metadata accessor for TipUIWrapperView(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v20);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  *(v2 + OBJC_IVAR____TtC6TipKit9TipUIView_hostingView) = 0;
  v24 = swift_unknownObjectWeakInit();
  v51[5] = v2;
  v52 = v0;
  v25 = OUTLINED_FUNCTION_15_2(v24, sel_initWithFrame_);
  swift_unknownObjectWeakAssign();
  sub_1A35A6350(v8, v51);
  OUTLINED_FUNCTION_22_3();
  v50[24] = 1;
  v26 = sub_1A35B37E0();
  OUTLINED_FUNCTION_20_2(v26, &type metadata for AnyTip);
  swift_unknownObjectWeakInit();
  *(v19 + 88) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 104) = 1;
  v27 = v25;

  sub_1A35ADD70(v14);
  sub_1A35ABFF4(v14 + v11[10], v48, &qword_1EB0EED38, &unk_1A3627EB0);
  sub_1A361BC3C();
  v28 = v49;
  sub_1A35A63BC(v48, v19 + 112);
  *(v19 + 152) = v28;
  sub_1A35ADD70(v14);
  v29 = *(v14 + v11[11]);
  sub_1A361BC3C();
  *(v19 + 168) = 0;
  *(v19 + 160) = v29;
  *(v19 + 176) = 0;
  *(v19 + 184) = 0;
  *(v19 + 192) = 1;
  *(v19 + 200) = &type metadata for AnyTip;
  *(v19 + 208) = v26;
  swift_unknownObjectWeakInit();
  sub_1A35ADD70(v14);
  v30 = v14 + v11[12];
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v26) = *(v30 + 16);
  sub_1A361BC3C();
  *(v19 + 224) = v31;
  *(v19 + 232) = v32;
  *(v19 + 240) = v26;
  *(v19 + 280) = 0;
  OUTLINED_FUNCTION_21_2(v19);
  v33 = v15[15];
  v34 = sub_1A3621A4C();
  OUTLINED_FUNCTION_21(v19 + v33, v35, v36, v34);
  v37 = (v19 + v15[16]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v19 + v15[17]);
  v38[3] = type metadata accessor for MiniTipViewStyle(0);
  v38[4] = sub_1A35ADEFC();
  __swift_allocate_boxed_opaque_existential_0(v38);
  OUTLINED_FUNCTION_23_3();
  sub_1A362178C();
  v39 = OUTLINED_FUNCTION_10();
  __swift_storeEnumTagSinglePayload(v39, v40, 1, v41);
  *(v19 + v15[18]) = 0;
  sub_1A35A6350(v51, v19);
  *(v19 + 40) = OUTLINED_FUNCTION_26_3();
  sub_1A35B4214(v50, v19 + 168);
  v42 = v47;
  *(v19 + 56) = v45;
  *(v19 + 64) = v42;
  *(v19 + 48) = v46;
  sub_1A35B4270(v19, v23);
  __swift_destroy_boxed_opaque_existential_1(v51);
  OUTLINED_FUNCTION_0_32();
  sub_1A361BC3C();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v15);
  sub_1A35B42D4(v23);

  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1A35A6588(v23, &qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_28_2();
}

uint64_t sub_1A361BC3C()
{
  v1 = OUTLINED_FUNCTION_23_3();
  v2(v1);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(v0);
  return v0;
}

void TipUIView.init<A>(_:arrowEdge:actionHandler:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v49 = v1;
  v4 = v3;
  v54 = v5;
  v52 = v6;
  v53 = v7;
  v9 = v8;
  v50 = v8;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TipViewEnvironment(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for TipUIWrapperView(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_14(v21);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v22);
  v51 = &v46 - v23;
  *(v0 + OBJC_IVAR____TtC6TipKit9TipUIView_hostingView) = 0;
  v24 = swift_unknownObjectWeakInit();
  v59 = v0;
  v60 = ObjectType;
  v25 = OUTLINED_FUNCTION_15_2(v24, sel_initWithFrame_);
  swift_unknownObjectWeakAssign();
  v58[3] = v4;
  v58[4] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
  v26 = v4;
  v27 = *(v4 - 8);
  (*(v27 + 16))(boxed_opaque_existential_0, v9, v4);
  OUTLINED_FUNCTION_22_3();
  v57[24] = 1;
  v28 = sub_1A35B37E0();
  OUTLINED_FUNCTION_20_2(v28, &type metadata for AnyTip);
  swift_unknownObjectWeakInit();
  *(v20 + 88) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 104) = 1;
  v48 = v25;

  sub_1A35ADD70(v15);
  sub_1A35ABFF4(v15 + v12[10], v55, &qword_1EB0EED38, &unk_1A3627EB0);
  sub_1A361BC3C();
  LOBYTE(v25) = v56;
  sub_1A35A63BC(v55, v20 + 112);
  *(v20 + 152) = v25;
  sub_1A35ADD70(v15);
  v29 = *(v15 + v12[11]);
  sub_1A361BC3C();
  *(v20 + 168) = 0;
  *(v20 + 160) = v29;
  *(v20 + 176) = 0;
  *(v20 + 184) = 0;
  *(v20 + 192) = 1;
  *(v20 + 200) = &type metadata for AnyTip;
  *(v20 + 208) = v28;
  swift_unknownObjectWeakInit();
  sub_1A35ADD70(v15);
  v30 = v15 + v12[12];
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v28) = *(v30 + 16);
  sub_1A361BC3C();
  *(v20 + 224) = v31;
  *(v20 + 232) = v32;
  *(v20 + 240) = v28;
  *(v20 + 280) = 0;
  OUTLINED_FUNCTION_21_2(v20);
  v33 = v16[15];
  v34 = sub_1A3621A4C();
  OUTLINED_FUNCTION_21(v20 + v33, v35, v36, v34);
  v37 = (v20 + v16[16]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v20 + v16[17]);
  v38[3] = type metadata accessor for MiniTipViewStyle(0);
  v38[4] = sub_1A35ADEFC();
  v39 = __swift_allocate_boxed_opaque_existential_0(v38);
  v40 = sub_1A362178C();
  OUTLINED_FUNCTION_21(v39, v41, v42, v40);
  *(v20 + v16[18]) = 0;
  sub_1A35A6350(v58, v20);
  *(v20 + 40) = sub_1A35A6624(v26, v49);
  sub_1A35B4214(v57, v20 + 168);
  v43 = v54;
  *(v20 + 56) = v52;
  *(v20 + 64) = v43;
  *(v20 + 48) = v53;
  v44 = v51;
  sub_1A35B4270(v20, v51);
  __swift_destroy_boxed_opaque_existential_1(v58);
  OUTLINED_FUNCTION_0_32();
  sub_1A361BC3C();
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v16);
  v45 = v48;
  sub_1A35B42D4(v44);

  (*(v27 + 8))(v50, v26);
  sub_1A35A6588(v44, &qword_1EB0EF8C0, &unk_1A362A740);
  OUTLINED_FUNCTION_28_2();
}

id TipUIView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t TipUIView.init(coder:)(void *a1)
{
  swift_getObjectType();

  v3 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  *(v1 + OBJC_IVAR____TtC6TipKit9TipUIView_hostingView) = 0;
  v4 = OBJC_IVAR____TtC6TipKit9TipUIView_sourceView;
  swift_unknownObjectWeakInit();

  MEMORY[0x1A58F45C0](v1 + v4);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall TipUIView.didMoveToSuperview()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_didMoveToSuperview);
  v1 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

Swift::Void __swiftcall TipUIView.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0, &unk_1A362A740);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_4();
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v7 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  v8 = *&v1[v7];
  if (v8)
  {
    v9 = v8;
    [v1 bounds];
    [v9 setFrame_];
  }

  sub_1A3619E9C(v0);
  type metadata accessor for TipUIWrapperView(0);
  v10 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v10, v11, v12))
  {
    v13 = OUTLINED_FUNCTION_17();
    sub_1A35ABFF4(v13, v14, v15, &unk_1A362A740);
    sub_1A35B42D4(v2);
    v16 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v16, v17, v18);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = 0uLL;
    if (Strong)
    {
      v21 = Strong;
      v22 = swift_unknownObjectWeakLoadStrong();
      if (v22)
      {
        v23 = v22;
        [v22 bounds];

        v31.origin.x = OUTLINED_FUNCTION_27_1();
        MidX = CGRectGetMidX(v31);
        v32.origin.x = OUTLINED_FUNCTION_27_1();
        [v21 convertPoint:v1 toView:{MidX, CGRectGetMidY(v32)}];
        v28 = v25;
        v29 = v26;

        *&v20 = v28;
        v27 = 0;
        *(&v20 + 1) = v29;
      }

      else
      {

        v27 = 1;
        v20 = 0uLL;
      }
    }

    else
    {
      v27 = 1;
    }

    *(v0 + 88) = v20;
    *(v0 + 104) = v27;
    sub_1A35B42D4(v0);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0, &unk_1A362A740);
}

CGSize __swiftcall TipUIView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  OUTLINED_FUNCTION_25_2(ObjectType, v6, v7);
  v8 = *&v1[v5];
  if (v8)
  {
    [v8 sizeThatFits_];
  }

  else
  {
    v12.receiver = v1;
    v12.super_class = ObjectType;
    objc_msgSendSuper2(&v12, sel_sizeThatFits_, width, height);
  }

  result.height = v10;
  result.width = v9;
  return result;
}

Swift::Void __swiftcall TipUIView.updateConstraints()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  OUTLINED_FUNCTION_25_2(ObjectType, v3, v4);
  v5 = *&v0[v2];
  if (v5)
  {
    v6 = v5;
    if (([v0 translatesAutoresizingMaskIntoConstraints] & 1) != 0 || objc_msgSend(v6, sel_translatesAutoresizingMaskIntoConstraints))
    {
      [v0 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_1A35B474C(v5);
    }
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_updateConstraints);
}

void sub_1A361C838(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_1A361C904()
{
  v1 = OBJC_IVAR____TtC6TipKit9TipUIView_hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;
}

id TipUIView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_1A3622E3C();
  v4 = v0;
  sub_1A360F750(sub_1A361CC18, &v3, "TipKit/TipUIView (iOS visionOS).swift", 37, 2u, 181);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A361CA00()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A361C904();
}

id TipUIView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *sub_1A361CD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = [objc_allocWithZone(v9) initWithNibName:0 bundle:0];
  v19 = &v18[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear];
  v20 = *&v18[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear];
  v21 = *&v18[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear + 8];
  *v19 = a1;
  *(v19 + 1) = a2;
  v22 = v18;
  sub_1A35BBDF4(v20, v21);
  v23 = &v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear];
  v24 = *&v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear];
  v25 = *&v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear + 8];
  *v23 = a3;
  *(v23 + 1) = a4;
  sub_1A35BBDF4(v24, v25);
  v26 = &v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear];
  v27 = *&v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear];
  v28 = *&v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear + 8];
  *v26 = a5;
  *(v26 + 1) = a6;
  sub_1A35BBDF4(v27, v28);
  v29 = &v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear];
  v30 = *&v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear];
  v31 = *&v22[OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear + 8];
  *v29 = a7;
  *(v29 + 1) = a8;
  sub_1A35BBDF4(v30, v31);

  return v22;
}

void sub_1A361CE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, void *a6)
{
  v8 = a3;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1;
  sub_1A361CF6C(v8, a5, a6);
}

id sub_1A361CF6C(char a1, SEL *a2, void *a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v12, *a2, a1 & 1);
  v8 = &v3[*a3];
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 1);

    v9(v11);
    return sub_1A35BBDF4(v9, v10);
  }

  return result;
}

id sub_1A361D0AC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear);
  if (a2)
  {
    v7 = sub_1A3622B5C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1A361D250(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willAppear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didAppear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_willDisappear);
  OUTLINED_FUNCTION_0_33(OBJC_IVAR____TtC6TipKit19UIAppearanceMonitor_didDisappear);
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1A361D434()
{
  sub_1A361D5BC();
  v1 = v0;
  v2 = [v0 keyWindow];

  v3 = [v2 rootViewController];
  return v3;
}

uint64_t sub_1A361D498()
{
  if ((_UIApplicationIsExtension() & 1) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v1 = [ObjCClassFromMetadata performSelector_];
    v2 = ObjCClassFromMetadata;
    if (v1)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void *sub_1A361D538()
{
  v0 = sub_1A361D498();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 connectedScenes];

    sub_1A35CDC10(0, &qword_1EB0EE1A0, 0x1E69DCE70);
    sub_1A361DA34();
    v1 = sub_1A3622FCC();
  }

  return v1;
}

void sub_1A361D5BC()
{
  v4 = sub_1A361D538();
  if (v4)
  {
    v51 = v4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1A362312C();
      sub_1A35CDC10(0, &qword_1EB0EE1A0, 0x1E69DCE70);
      sub_1A361DA34();
      sub_1A3622FDC();
      v5 = v55;
      v1 = v56;
      v0 = v57;
      v6 = v58;
      v2 = v59;
    }

    else
    {
      v6 = 0;
      v5 = OUTLINED_FUNCTION_1_27(v4);
    }

    v49 = v0;
    v7 = (v0 + 64) >> 6;
    while (1)
    {
      v53 = v6;
      if (v5 < 0)
      {
        v9 = sub_1A362314C();
        if (!v9)
        {
          goto LABEL_24;
        }

        v54 = v9;
        sub_1A35CDC10(0, &qword_1EB0EE1A0, 0x1E69DCE70);
        swift_dynamicCast();
        v0 = v60;
        v3 = v2;
        if (!v60)
        {
LABEL_23:
          v6 = v53;
LABEL_24:
          v12 = OUTLINED_FUNCTION_0_34();
          OUTLINED_FUNCTION_3_22(v12, v13, v14, v6, v15, v16, v17, v18, v49, v51);
          break;
        }
      }

      else
      {
        v8 = v6;
        if (!v2)
        {
          while (1)
          {
            v6 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if (v6 >= v7)
            {
              v2 = 0;
              goto LABEL_23;
            }

            ++v8;
            if (*(v1 + 8 * v6))
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_51;
        }

LABEL_11:
        v0 = OUTLINED_FUNCTION_2_25();
        if (!v0)
        {
          goto LABEL_23;
        }
      }

      sub_1A3622E3C();
      sub_1A3622E2C();
      sub_1A3622DFC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 activationState];

        if (!v11)
        {
          v42 = OUTLINED_FUNCTION_0_34();
          OUTLINED_FUNCTION_3_22(v42, v43, v44, v53, v45, v46, v47, v48, v49, v51);
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {

            break;
          }

          return;
        }
      }

      else
      {
      }

      v2 = v3;
    }
  }

  v19 = sub_1A361D538();
  if (v19)
  {
    v52 = v19;
    if ((v19 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1A362312C();
      sub_1A35CDC10(0, &qword_1EB0EE1A0, 0x1E69DCE70);
      sub_1A361DA34();
      sub_1A3622FDC();
      v20 = v60;
      v1 = v61;
      v0 = v62;
      v21 = v63;
      v2 = v64;
    }

    else
    {
      v21 = 0;
      v20 = OUTLINED_FUNCTION_1_27(v19);
    }

    v50 = v0;
    v22 = (v0 + 64) >> 6;
    if (v20 < 0)
    {
      goto LABEL_36;
    }

LABEL_30:
    v23 = v21;
    v24 = v21;
    if (v2)
    {
LABEL_34:
      v25 = OUTLINED_FUNCTION_2_25();
      if (v25)
      {
        while (1)
        {
          sub_1A3622E3C();
          sub_1A3622E2C();
          sub_1A3622DFC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v21 = v24;
          v2 = v3;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

LABEL_36:
          if (sub_1A362314C())
          {
            sub_1A35CDC10(0, &qword_1EB0EE1A0, 0x1E69DCE70);
            swift_dynamicCast();
            v25 = v54;
            v24 = v21;
            v3 = v2;
            if (v54)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v33 = OUTLINED_FUNCTION_0_34();
        OUTLINED_FUNCTION_3_22(v33, v34, v35, v21, v36, v37, v38, v39, v50, v52);
        v40 = sub_1A361D538();
        if (!v40 || (v41 = sub_1A361DAA4(v40), , v41 != 1))
        {
        }
      }

      else
      {
LABEL_43:
        v26 = OUTLINED_FUNCTION_0_34();
        OUTLINED_FUNCTION_3_22(v26, v27, v28, v21, v29, v30, v31, v32, v50, v52);
      }
    }

    else
    {
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {
          goto LABEL_43;
        }

        ++v23;
        if (*(v1 + 8 * v24))
        {
          goto LABEL_34;
        }
      }

LABEL_51:
      __break(1u);
    }
  }
}

unint64_t sub_1A361DA34()
{
  result = qword_1EB0EE198;
  if (!qword_1EB0EE198)
  {
    sub_1A35CDC10(255, &qword_1EB0EE1A0, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE198);
  }

  return result;
}

uint64_t sub_1A361DAA4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1A362313C();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1A361DAC4@<X0>(_BYTE *a1@<X8>)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35CDC10(0, &unk_1ED81E078, 0x1E69DC668);
  v2 = sub_1A361D498();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 delegate];

    if (v4)
    {
      swift_getObjectType();
      v5 = sub_1A36230BC();
      v7 = v6;
      swift_unknownObjectRelease();
      if (v5 == 0xD000000000000013 && 0x80000001A363A050 == v7)
      {

        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = sub_1A362345C();
      }
    }

    else
    {
    }
  }

  else
  {

    LOBYTE(v4) = 0;
  }

  *a1 = v4 & 1;
  return result;
}

double sub_1A361DC5C(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0EFA08, &unk_1A362AA80);
  v8 = swift_allocObject();
  *&result = 4;
  *(v8 + 16) = xmmword_1A362AA70;
  *(v8 + 32) = 0;
  *(v8 + 40) = a1;
  *(v8 + 48) = 1;
  *(v8 + 56) = a2;
  *(v8 + 64) = 2;
  *(v8 + 72) = a3;
  *(v8 + 80) = 3;
  *(v8 + 88) = a4;
  return result;
}

uint64_t sub_1A361DD2C(void *a1)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  canShowWhileLockedSbyF_0 = j___s6TipKit0A23UIPopoverViewControllerC19_canShowWhileLockedSbyF_0();

  return canShowWhileLockedSbyF_0 & 1;
}

uint64_t sub_1A361DE00(uint64_t a1)
{
  OUTLINED_FUNCTION_0_35();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + qword_1EB0F2C70);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v10 - v7, a1, v3, v6);
  v8 = sub_1A3621E4C();
  (*(v4 + 8))(a1, v3);
  return v8;
}

void *sub_1A361DF64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_35();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + qword_1EB0F2C70);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v13 - v8, v7);
  v9 = sub_1A3621E3C();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_1A361E098(void *a1)
{
  OUTLINED_FUNCTION_0_35();
  v5 = type metadata accessor for UIHostingControllerSecureDrawable(0, *((*MEMORY[0x1E69E7D40] & v3) + qword_1EB0F2C70), *((*MEMORY[0x1E69E7D40] & v3) + qword_1EB0F2C70 + 8), v4);
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1A361E140(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1A361E098(a3);

  return v4;
}

id sub_1A361E1EC()
{
  OUTLINED_FUNCTION_0_35();
  v3 = type metadata accessor for UIHostingControllerSecureDrawable(0, *((*MEMORY[0x1E69E7D40] & v1) + qword_1EB0F2C70), *((*MEMORY[0x1E69E7D40] & v1) + qword_1EB0F2C70 + 8), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A361E27C()
{
  result = sub_1A361E2C0(v0);
  if (result)
  {
    v2 = sub_1A36208D0();

    return v2 != 0;
  }

  return result;
}

uint64_t sub_1A361E2C0(void *a1)
{
  v1 = [a1 passthroughViews];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A360F4F0();
  v3 = sub_1A3622CCC();

  return v3;
}

uint64_t sub_1A361E320(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFA90, &qword_1A362AAE8);
  v1[4] = swift_task_alloc();
  sub_1A3622E3C();
  v1[5] = sub_1A3622E2C();
  v3 = sub_1A3622DFC();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A361E3F0, v3, v2);
}

uint64_t sub_1A361E3F0()
{
  sub_1A361F19C(*(v0 + 24));
  *(v0 + 64) = v1;
  if (v1)
  {
    v3 = v1;
    *(v0 + 72) = v2;
    v4 = [objc_opt_self() defaultCenter];
    v5 = v3;
    v6 = sub_1A362306C();
    *(v0 + 80) = v6;

    *(v0 + 16) = v6;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    v8 = sub_1A362305C();
    v9 = sub_1A361E840();
    *v7 = v0;
    v7[1] = sub_1A361E56C;
    v10 = *(v0 + 32);

    return MEMORY[0x1EEE499D8](v10, v8, v9);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

void sub_1A361E56C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[4];

    sub_1A361E898(v3);
    v4 = v2[6];
    v5 = v2[7];

    MEMORY[0x1EEE6DFA0](sub_1A361E6B0, v4, v5);
  }
}

uint64_t sub_1A361E6B0()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

void sub_1A361E724(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 isBeingPresented])
  {
    v4 = MEMORY[0x1E69DE2D8];
LABEL_5:
    v5 = *v4;
    *a2 = a1;
    a2[1] = v5;
    v6 = a1;
    v7 = v5;
    return;
  }

  if ([a1 isBeingDismissed])
  {
    v4 = MEMORY[0x1E69DE2C8];
    goto LABEL_5;
  }

  v8 = [a1 popoverPresentationController];
  if (v8 && (v9 = v8, v10 = [v8 presentedViewController], v9, v10) && (sub_1A361E900(), v11 = a1, v12 = sub_1A36230AC(), v11, v10, (v12 & 1) != 0))
  {
    v13 = *MEMORY[0x1E69DE2C8];
    *a2 = v11;
    a2[1] = v13;
    v14 = v11;
    v15 = v13;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

unint64_t sub_1A361E840()
{
  result = qword_1EB0EE1C0;
  if (!qword_1EB0EE1C0)
  {
    sub_1A362305C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE1C0);
  }

  return result;
}

uint64_t sub_1A361E898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFA90, &qword_1A362AAE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A361E900()
{
  result = qword_1EB0EE1D8;
  if (!qword_1EB0EE1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0EE1D8);
  }

  return result;
}

uint64_t sub_1A361E944()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentedViewController];
    if (v3)
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFA98, &qword_1A362AAF0);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        return v5;
      }
    }

    v8 = v0;
    return v2;
  }

  v6 = [v0 nextResponder];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v2 = sub_1A361E944();

  return v2;
}

uint64_t sub_1A361EA14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAA0, &qword_1A362AAF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A362AA70;
  v1 = sub_1A362169C();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1A362168C();
  v4 = MEMORY[0x1E69DC0C8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_1A362167C();
  v6 = MEMORY[0x1E69DC0A0];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_1A36216AC();
  v8 = MEMORY[0x1E69DC2B0];
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

id sub_1A361EAB4(void *a1)
{
  v2 = [v1 constraints];
  sub_1A35CDC10(0, &qword_1ED81E000, 0x1E696ACD8);
  v3 = sub_1A3622CCC();

  result = sub_1A36208D0();
  v12 = result;
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {
LABEL_22:

      return (v12 != i);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1A58F3850](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      result = *(v3 + 8 * i + 32);
    }

    v6 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1A3622E3C();
    sub_1A3622E2C();
    sub_1A3622DFC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if ([v6 firstItem])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1A35CDC10(0, &qword_1ED81D9A8, 0x1E69DD250);
        v7 = a1;
        v8 = sub_1A36230AC();

        swift_unknownObjectRelease();
        if (v8)
        {

          return (v12 != i);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if ([v6 secondItem])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1A35CDC10(0, &qword_1ED81D9A8, 0x1E69DD250);
        v9 = a1;
        v10 = sub_1A36230AC();

        result = swift_unknownObjectRelease();
        if (v10)
        {
          goto LABEL_22;
        }
      }

      else
      {

        result = swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1A361ED90()
{
  result = [v0 superview];
  if (result)
  {
    v2 = result;
    v3 = result;
    LOBYTE(v2) = sub_1A361EDF4(v2);

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_1A361EDF4(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = a1;
  if (sub_1A3622DEC())
  {
    sub_1A35CDC10(0, &qword_1ED81D9A8, 0x1E69DD250);
    if (sub_1A36230CC() == 0xD000000000000021 && 0x80000001A363A0D0 == v3)
    {

      return 1;
    }

    v5 = sub_1A362345C();

    if (v5)
    {

      return 1;
    }
  }

  [v1 bounds];
  [v2 convertRect:v1 fromCoordinateSpace:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v2 bounds];
  v22.origin.x = v14;
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  if (CGRectIntersectsRect(v21, v22))
  {
    v18 = [v2 superview];
    v19 = sub_1A361EDF4(v18);

    return v19 & 1;
  }

  else
  {

    return 0;
  }
}

id sub_1A361EF70()
{
  result = [v0 isModalInPresentation];
  if (result)
  {
    return ([v0 modalPresentationStyle] == 2);
  }

  return result;
}

uint64_t sub_1A361EFB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1A361EFF4()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {

    v2 = [v0 presentedViewController];
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    v4 = [v2 isBeingDismissed];

    if (!v4)
    {
      return 0;
    }
  }

  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = sub_1A361ED90();

    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A361F0A8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a3)
    {
      v8[4] = a3;
      v8[5] = a4;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1A361EFB0;
      v8[3] = &block_descriptor;
      v7 = _Block_copy(v8);
    }

    else
    {
      v7 = 0;
    }

    [a1 presentViewController:v4 animated:a2 & 1 completion:v7];
    _Block_release(v7);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1A361F19C(void *a1)
{
  sub_1A361E724(a1, &v3);
  if (!v1 && !v3)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1A361E900();
    sub_1A360DC9C();
    v2 = sub_1A3622D3C();
    MEMORY[0x1EEE9AC00](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAA8, &qword_1A362AB30);
    sub_1A3622D4C();
  }
}

void sub_1A361F2F4(void *a1)
{
  v2 = [a1 presentedViewController];
  v199[0] = v2;
  v3 = sub_1A361E900();
  v186 = sub_1A3622D0C();

  v4 = [a1 presentedViewController];
  if (v4)
  {
    v2 = v4;
    OUTLINED_FUNCTION_13_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_16();
    *(v7 - 16) = v6;
    sub_1A360DC9C();
    OUTLINED_FUNCTION_0_37();
    v8 = sub_1A3622D3C();
  }

  else
  {
    v8 = 0;
  }

  v185 = MEMORY[0x1A58F3380](v8, v3);

  OUTLINED_FUNCTION_12_9([a1 childViewControllers]);

  v184 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

  v188 = a1;
  v9 = OUTLINED_FUNCTION_12_9([a1 childViewControllers]);

  v10 = sub_1A35DA268(v9);
  v11 = 0;
  OUTLINED_FUNCTION_7_13();
  v187 = v9;
  v193 = (v9 + 32);
  v12 = MEMORY[0x1E69E7CC0];
  v196 = v3;
  v189 = v13;
  while (1)
  {
    if (v11 == v10)
    {

      v187 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

      objc_opt_self();
      v40 = v188;
      if (swift_dynamicCastObjCClass())
      {
        v182 = v188;
        v41 = OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_12_9(v41);

        v181 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

        v42 = OUTLINED_FUNCTION_17_6();
        v43 = OUTLINED_FUNCTION_12_9(v42);

        v197 = sub_1A35DA268(v43);
        v44 = 0;
        OUTLINED_FUNCTION_7_13();
        v45 = MEMORY[0x1E69E7CC0];
        v183 = v43;
        v193 = (v43 + 32);
        while (1)
        {
          if (v44 == v197)
          {

            v2 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0, &unk_1A362AB40);
            v71 = OUTLINED_FUNCTION_18_2(v70);
            *(v71 + 16) = xmmword_1A36277E0;
            *(v71 + 32) = v181;
            *(v71 + 40) = v2;
            sub_1A3622CDC();
            OUTLINED_FUNCTION_20_3();
            OUTLINED_FUNCTION_21_3();
            v183 = v72;

            v40 = v188;
            goto LABEL_85;
          }

          if (v195)
          {
            v47 = MEMORY[0x1A58F3850](v44, v183);
          }

          else
          {
            OUTLINED_FUNCTION_15_3();
            if (v44 >= v46)
            {
              goto LABEL_219;
            }

            v47 = *&v193[8 * v44];
          }

          v48 = v47;
          v17 = __OFADD__(v44++, 1);
          if (v17)
          {
            goto LABEL_218;
          }

          MEMORY[0x1EEE9AC00](v47);
          *(&v178 - 2) = v48;
          sub_1A360DC9C();
          v49 = v48;
          v50 = sub_1A3622D3C();

          if (v50 >> 62)
          {
            v51 = sub_1A362313C();
          }

          else
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v52 = v45 >> 62;
          if (v45 >> 62)
          {
            v53 = OUTLINED_FUNCTION_19_5();
          }

          else
          {
            v53 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v54 = v53 + v51;
          if (__OFADD__(v53, v51))
          {
            goto LABEL_220;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            break;
          }

          if (v52)
          {
            goto LABEL_62;
          }

          v55 = v45 & 0xFFFFFFFFFFFFFF8;
          if (v54 > *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_63;
          }

LABEL_64:
          v56 = *(v55 + 16);
          v57 = (*(v55 + 24) >> 1) - v56;
          v58 = v55 + 8 * v56;
          v198 = v55;
          if (v50 >> 62)
          {
            v60 = sub_1A362313C();
            if (!v60)
            {
              goto LABEL_78;
            }

            v61 = v60;
            v62 = sub_1A362313C();
            if (v57 < v62)
            {
              goto LABEL_241;
            }

            if (v61 < 1)
            {
              goto LABEL_242;
            }

            v189 = v62;
            v190 = v51;
            v191 = v44;
            v192 = v45;
            v63 = v58 + 32;
            sub_1A362086C();
            for (i = 0; i != v61; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0, &qword_1A362AB38);
              v65 = sub_1A362078C(v199, i, v50);
              v67 = *v66;
              (v65)(v199, 0);
              *(v63 + 8 * i) = v67;
            }

            v3 = v196;
            v44 = v191;
            v45 = v192;
            v59 = v189;
            v51 = v190;
LABEL_74:

            if (v59 < v51)
            {
              goto LABEL_221;
            }

            if (v59 > 0)
            {
              OUTLINED_FUNCTION_4_18();
              if (v17)
              {
                goto LABEL_238;
              }

              *(v69 + 16) = v68;
            }
          }

          else
          {
            v59 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v59)
            {
              if (v57 < v59)
              {
                goto LABEL_240;
              }

              swift_arrayInitWithCopy();
              goto LABEL_74;
            }

LABEL_78:

            if (v51 > 0)
            {
              goto LABEL_221;
            }
          }
        }

        if (v52)
        {
LABEL_62:
          OUTLINED_FUNCTION_19_5();
          OUTLINED_FUNCTION_11_12();
        }

LABEL_63:
        v45 = sub_1A36231DC();
        v55 = v45 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_64;
      }

      v183 = MEMORY[0x1A58F33A0](0, v3);
LABEL_85:
      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v74 = v73;
        v182 = v40;
        sub_1A362072C(v74);
        v75 = MEMORY[0x1A58F3380]();

        v76 = sub_1A362072C(v74);
        if (v76)
        {
          v180 = v75;
          v77 = v76;
          v78 = sub_1A35DA268(v76);
          v79 = 0;
          v197 = v77 & 0xC000000000000001;
          v195 = v77 & 0xFFFFFFFFFFFFFF8;
          v80 = MEMORY[0x1E69E7CC0];
          v181 = v77;
          v194 = v77 + 32;
          v189 = v78;
          while (1)
          {
            if (v79 == v78)
            {

              v3 = v196;
              v40 = v188;
              v75 = v180;
              goto LABEL_127;
            }

            if (v197)
            {
              v81 = MEMORY[0x1A58F3850](v79, v181);
            }

            else
            {
              if (v79 >= *(v195 + 16))
              {
                goto LABEL_228;
              }

              v81 = *(v194 + 8 * v79);
            }

            v82 = v81;
            v17 = __OFADD__(v79++, 1);
            if (v17)
            {
              goto LABEL_227;
            }

            MEMORY[0x1EEE9AC00](v81);
            OUTLINED_FUNCTION_16();
            *(v83 - 16) = v82;
            sub_1A360DC9C();
            v84 = v82;
            v85 = sub_1A3622D3C();

            if (v85 >> 62)
            {
              v86 = OUTLINED_FUNCTION_16_5();
            }

            else
            {
              v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v87 = v80 >> 62;
            if (v80 >> 62)
            {
              v88 = sub_1A362313C();
            }

            else
            {
              v88 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v89 = v88 + v86;
            if (__OFADD__(v88, v86))
            {
              goto LABEL_229;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v87)
            {
              goto LABEL_103;
            }

            OUTLINED_FUNCTION_14_7();
            if (!(v29 ^ v17 | v28))
            {
              goto LABEL_104;
            }

LABEL_105:
            v91 = *(v90 + 16);
            v92 = (*(v90 + 24) >> 1) - v91;
            v93 = v90 + 8 * v91;
            v198 = v90;
            if (v85 >> 62)
            {
              if (!sub_1A362313C())
              {
                goto LABEL_119;
              }

              OUTLINED_FUNCTION_2_13();
              v95 = sub_1A362313C();
              if (v92 < v95)
              {
                goto LABEL_249;
              }

              if (v89 < 1)
              {
                goto LABEL_250;
              }

              v190 = v95;
              v191 = v86;
              v192 = v79;
              v193 = v80;
              v96 = v93 + 32;
              sub_1A362086C();
              for (j = 0; j != v89; ++j)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0, &qword_1A362AB38);
                v98 = sub_1A362078C(v199, j, v85);
                v100 = *v99;
                (v98)(v199, 0);
                *(v96 + 8 * j) = v100;
              }

              v79 = v192;
              v80 = v193;
              v78 = v189;
              v94 = v190;
              v86 = v191;
LABEL_115:

              if (v94 < v86)
              {
                goto LABEL_230;
              }

              if (v94 > 0)
              {
                OUTLINED_FUNCTION_4_18();
                if (v17)
                {
                  goto LABEL_246;
                }

                *(v102 + 16) = v101;
              }
            }

            else
            {
              v94 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v94)
              {
                if (v92 < v94)
                {
                  goto LABEL_248;
                }

                OUTLINED_FUNCTION_2_26();
                swift_arrayInitWithCopy();
                goto LABEL_115;
              }

LABEL_119:

              if (v86 > 0)
              {
                goto LABEL_230;
              }
            }
          }

          if (v87)
          {
LABEL_103:
            sub_1A362313C();
            OUTLINED_FUNCTION_11_12();
          }

LABEL_104:
          OUTLINED_FUNCTION_8_18();
          v80 = sub_1A36231DC();
          v90 = v80 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_105;
        }

        v80 = 0;
LABEL_127:
        v2 = MEMORY[0x1A58F3380](v80, v3);

        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0, &unk_1A362AB40);
        v105 = OUTLINED_FUNCTION_18_2(v104);
        *(v105 + 16) = xmmword_1A36277E0;
        *(v105 + 32) = v75;
        *(v105 + 40) = v2;
        sub_1A3622CDC();
        OUTLINED_FUNCTION_20_3();
        OUTLINED_FUNCTION_21_3();
        v103 = v106;
      }

      else
      {
        v103 = MEMORY[0x1A58F33A0](0, v3);
      }

      objc_opt_self();
      v107 = swift_dynamicCastObjCClass();
      v182 = v103;
      if (v107)
      {
        v180 = v40;
        v108 = OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_12_9(v108);

        v179 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

        v109 = OUTLINED_FUNCTION_17_6();
        v110 = OUTLINED_FUNCTION_12_9(v109);

        v197 = sub_1A35DA268(v110);
        v111 = 0;
        OUTLINED_FUNCTION_7_13();
        v112 = MEMORY[0x1E69E7CC0];
        v181 = v110;
        v193 = (v110 + 32);
        while (1)
        {
          if (v111 == v197)
          {

            v136 = _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();

            v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0, &unk_1A362AB40);
            v138 = OUTLINED_FUNCTION_18_2(v137);
            *(v138 + 16) = xmmword_1A36277E0;
            *(v138 + 32) = v179;
            *(v138 + 40) = v136;
            sub_1A3622CDC();
            OUTLINED_FUNCTION_20_3();
            OUTLINED_FUNCTION_21_3();
            v140 = v139;

            v40 = v188;
            v103 = v182;
            goto LABEL_169;
          }

          if (v195)
          {
            v114 = MEMORY[0x1A58F3850](v111, v181);
          }

          else
          {
            OUTLINED_FUNCTION_15_3();
            if (v111 >= v113)
            {
              goto LABEL_223;
            }

            v114 = *&v193[8 * v111];
          }

          v115 = v114;
          v17 = __OFADD__(v111++, 1);
          if (v17)
          {
            goto LABEL_222;
          }

          OUTLINED_FUNCTION_13_7();
          MEMORY[0x1EEE9AC00](v116);
          OUTLINED_FUNCTION_16();
          *(v117 - 16) = v115;
          v118 = sub_1A360DC9C();
          v119 = v115;
          OUTLINED_FUNCTION_0_37();
          v120 = sub_1A3622D3C();

          if (v120 >> 62)
          {
            v121 = sub_1A362313C();
          }

          else
          {
            v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v122 = v112 >> 62;
          if (v112 >> 62)
          {
            v123 = OUTLINED_FUNCTION_16_5();
          }

          else
          {
            v123 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v124 = v123 + v121;
          if (__OFADD__(v123, v121))
          {
            goto LABEL_224;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            break;
          }

          if (v122)
          {
            goto LABEL_145;
          }

          OUTLINED_FUNCTION_14_7();
          if (!(v29 ^ v17 | v28))
          {
            goto LABEL_146;
          }

LABEL_147:
          OUTLINED_FUNCTION_3_23();
          v198 = v125;
          if (v120 >> 62)
          {
            if (!sub_1A362313C())
            {
              goto LABEL_162;
            }

            OUTLINED_FUNCTION_2_13();
            v127 = sub_1A362313C();
            if (v118 < v127)
            {
              goto LABEL_244;
            }

            if (v124 < 1)
            {
              goto LABEL_245;
            }

            v189 = v127;
            v190 = v121;
            v191 = v111;
            v192 = v112;
            sub_1A362086C();
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0, &qword_1A362AB38);
              v128 = OUTLINED_FUNCTION_10_12();
              v130 = sub_1A362078C(v128, v129, v120);
              v132 = *v131;
              v133 = OUTLINED_FUNCTION_9_11();
              v130(v133);
              OUTLINED_FUNCTION_5_15();
            }

            while (!v28);
            v3 = v196;
            v111 = v191;
            v112 = v192;
            v126 = v189;
            v121 = v190;
LABEL_158:

            if (v126 < v121)
            {
              goto LABEL_225;
            }

            if (v126 > 0)
            {
              OUTLINED_FUNCTION_4_18();
              if (v17)
              {
                goto LABEL_239;
              }

              *(v135 + 16) = v134;
            }
          }

          else
          {
            v126 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v126)
            {
              if (v118 < v126)
              {
                goto LABEL_243;
              }

              OUTLINED_FUNCTION_2_26();
              swift_arrayInitWithCopy();
              goto LABEL_158;
            }

LABEL_162:

            if (v121 > 0)
            {
              goto LABEL_225;
            }
          }
        }

        if (v122)
        {
LABEL_145:
          OUTLINED_FUNCTION_16_5();
          OUTLINED_FUNCTION_11_12();
        }

LABEL_146:
        OUTLINED_FUNCTION_8_18();
        v112 = sub_1A36231DC();
        goto LABEL_147;
      }

      v140 = MEMORY[0x1A58F33A0](0, v3);
LABEL_169:
      objc_opt_self();
      v141 = swift_dynamicCastObjCClass();
      if (v141)
      {
        v142 = v141;
        v143 = v40;
        sub_1A362072C(v142);
        v144 = MEMORY[0x1A58F3380]();

        v145 = sub_1A362072C(v142);
        if (v145)
        {
          v179 = v144;
          v180 = v143;
          v181 = v140;
          v146 = v145;
          v197 = sub_1A35DA268(v145);
          v147 = 0;
          v194 = v146 & 0xFFFFFFFFFFFFFF8;
          v195 = v146 & 0xC000000000000001;
          v148 = MEMORY[0x1E69E7CC0];
          v188 = v146;
          v193 = (v146 + 32);
          while (1)
          {
            if (v147 == v197)
            {

              v103 = v182;
              v140 = v181;
              v143 = v180;
              v144 = v179;
              goto LABEL_212;
            }

            if (v195)
            {
              v150 = MEMORY[0x1A58F3850](v147, v188);
            }

            else
            {
              OUTLINED_FUNCTION_15_3();
              if (v147 >= v149)
              {
                goto LABEL_232;
              }

              v150 = *&v193[8 * v147];
            }

            v151 = v150;
            v17 = __OFADD__(v147++, 1);
            if (v17)
            {
              goto LABEL_231;
            }

            OUTLINED_FUNCTION_13_7();
            MEMORY[0x1EEE9AC00](v152);
            OUTLINED_FUNCTION_16();
            *(v153 - 16) = v151;
            v154 = sub_1A360DC9C();
            v155 = v151;
            OUTLINED_FUNCTION_0_37();
            v156 = sub_1A3622D3C();

            if (v156 >> 62)
            {
              v157 = sub_1A362313C();
            }

            else
            {
              v157 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v158 = v148 >> 62;
            if (v148 >> 62)
            {
              v159 = sub_1A362313C();
            }

            else
            {
              v159 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v160 = v159 + v157;
            if (__OFADD__(v159, v157))
            {
              goto LABEL_233;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v158)
            {
              goto LABEL_187;
            }

            OUTLINED_FUNCTION_14_7();
            if (!(v29 ^ v17 | v28))
            {
              goto LABEL_188;
            }

LABEL_189:
            OUTLINED_FUNCTION_3_23();
            v198 = v161;
            if (v156 >> 62)
            {
              if (!sub_1A362313C())
              {
                goto LABEL_204;
              }

              OUTLINED_FUNCTION_2_13();
              v163 = sub_1A362313C();
              if (v154 < v163)
              {
                goto LABEL_252;
              }

              if (v160 < 1)
              {
                goto LABEL_253;
              }

              v189 = v163;
              v190 = v157;
              v191 = v147;
              v192 = v148;
              sub_1A362086C();
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0, &qword_1A362AB38);
                v164 = OUTLINED_FUNCTION_10_12();
                v166 = sub_1A362078C(v164, v165, v156);
                v168 = *v167;
                v169 = OUTLINED_FUNCTION_9_11();
                v166(v169);
                OUTLINED_FUNCTION_5_15();
              }

              while (!v28);
              v3 = v196;
              v147 = v191;
              v148 = v192;
              v162 = v189;
              v157 = v190;
LABEL_200:

              if (v162 < v157)
              {
                goto LABEL_234;
              }

              if (v162 > 0)
              {
                OUTLINED_FUNCTION_4_18();
                if (v17)
                {
                  goto LABEL_247;
                }

                *(v171 + 16) = v170;
              }
            }

            else
            {
              v162 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v162)
              {
                if (v154 < v162)
                {
                  goto LABEL_251;
                }

                OUTLINED_FUNCTION_2_26();
                swift_arrayInitWithCopy();
                goto LABEL_200;
              }

LABEL_204:

              if (v157 > 0)
              {
                goto LABEL_234;
              }
            }
          }

          if (v158)
          {
LABEL_187:
            sub_1A362313C();
            OUTLINED_FUNCTION_11_12();
          }

LABEL_188:
          v148 = sub_1A36231DC();
          goto LABEL_189;
        }

        v148 = 0;
LABEL_212:
        v173 = MEMORY[0x1A58F3380](v148, v3);

        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0, &unk_1A362AB40);
        v172 = OUTLINED_FUNCTION_18_2(v174);
        *(v172 + 16) = xmmword_1A36277E0;
        *(v172 + 32) = v144;
        *(v172 + 40) = v173;
        sub_1A3622CDC();
        OUTLINED_FUNCTION_20_3();
        OUTLINED_FUNCTION_21_3();
        OUTLINED_FUNCTION_2_13();
      }

      else
      {
        v172 = MEMORY[0x1A58F33A0](0, v3);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAC0, &unk_1A362AB40);
      v175 = swift_allocObject();
      *(v175 + 16) = xmmword_1A362AB20;
      v176 = v185;
      *(v175 + 32) = v186;
      *(v175 + 40) = v176;
      v177 = v187;
      *(v175 + 48) = v184;
      *(v175 + 56) = v177;
      *(v175 + 64) = v183;
      *(v175 + 72) = v103;
      *(v175 + 80) = v140;
      *(v175 + 88) = v172;
      sub_1A3622CDC();
      OUTLINED_FUNCTION_2_13();

      return;
    }

    if (v195)
    {
      v15 = MEMORY[0x1A58F3850](v11, v187);
    }

    else
    {
      OUTLINED_FUNCTION_15_3();
      if (v11 >= v14)
      {
        goto LABEL_215;
      }

      v15 = *&v193[8 * v11];
    }

    v16 = v15;
    v17 = __OFADD__(v11, 1);
    v18 = v11 + 1;
    if (v17)
    {
      break;
    }

    v198 = v18;
    OUTLINED_FUNCTION_13_7();
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_16();
    *(v20 - 16) = v16;
    v21 = sub_1A360DC9C();
    v22 = v16;
    OUTLINED_FUNCTION_0_37();
    v23 = sub_1A3622D3C();

    if (v23 >> 62)
    {
      v24 = OUTLINED_FUNCTION_16_5();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v12 >> 62;
    if (v12 >> 62)
    {
      v26 = OUTLINED_FUNCTION_19_5();
    }

    else
    {
      v26 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v26 + v24;
    if (__OFADD__(v26, v24))
    {
      goto LABEL_216;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v25)
      {
LABEL_20:
        OUTLINED_FUNCTION_19_5();
        OUTLINED_FUNCTION_11_12();
      }

LABEL_21:
      OUTLINED_FUNCTION_8_18();
      v12 = sub_1A36231DC();
      goto LABEL_22;
    }

    if (v25)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_14_7();
    if (!(v29 ^ v17 | v28))
    {
      goto LABEL_21;
    }

LABEL_22:
    OUTLINED_FUNCTION_3_23();
    v197 = v30;
    if (v23 >> 62)
    {
      if (v23 < 0)
      {
        v2 = v23;
      }

      else
      {
        v2 = (v23 & 0xFFFFFFFFFFFFFF8);
      }

      if (!sub_1A362313C())
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_13();
      v31 = sub_1A362313C();
      if (v21 < v31)
      {
        goto LABEL_236;
      }

      if (v27 < 1)
      {
        goto LABEL_237;
      }

      v190 = v31;
      v191 = v24;
      v192 = v12;
      sub_1A362086C();
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EFAB0, &qword_1A362AB38);
        v32 = OUTLINED_FUNCTION_10_12();
        v34 = sub_1A362078C(v32, v33, v23);
        v36 = *v35;
        v37 = OUTLINED_FUNCTION_9_11();
        v34(v37);
        OUTLINED_FUNCTION_5_15();
      }

      while (!v28);
      v3 = v196;
      v24 = v191;
      v12 = v192;
      v10 = v189;
      v2 = v190;
LABEL_36:

      v11 = v198;
      if (v2 < v24)
      {
        goto LABEL_217;
      }

      if (v2 > 0)
      {
        v38 = *(v197 + 16);
        v17 = __OFADD__(v38, v2);
        v39 = &v2[v38];
        if (v17)
        {
          goto LABEL_226;
        }

        *(v197 + 16) = v39;
      }
    }

    else
    {
      v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        if (v21 < v2)
        {
          goto LABEL_235;
        }

        OUTLINED_FUNCTION_2_26();
        swift_arrayInitWithCopy();
        goto LABEL_36;
      }

LABEL_40:

      v11 = v198;
      if (v24 > 0)
      {
        goto LABEL_217;
      }
    }
  }

  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
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
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
}

void *sub_1A36206BC(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1A3620708(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A362072C(void *a1)
{
  v1 = [a1 viewControllers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A361E900();
  v3 = sub_1A3622CCC();

  return v3;
}

void (*sub_1A362078C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1A36206FC(a3);
  sub_1A3620708(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1A58F3850](a2, a3);
  }

  *a1 = v7;
  return sub_1A3620818;
}

void *sub_1A3620820@<X0>(uint64_t *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1A36206BC(*a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

unint64_t sub_1A362086C()
{
  result = qword_1EB0EFAB8;
  if (!qword_1EB0EFAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EFAB0, &qword_1A362AB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EFAB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_1A362313C();
}

uint64_t sub_1A3620910(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = sub_1A36216FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16 = *(v9 + 104);
  v16(&v19 - v14, *a4, v8, v13);
  (v16)(v11, *a5, v8);
  a2(v15, v11);
  v17 = *(v9 + 8);
  v17(v11, v8);
  return (v17)(v15, v8);
}

unint64_t sub_1A3620AC8()
{
  result = qword_1ED81E020;
  if (!qword_1ED81E020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EFAD8, &qword_1A362ABE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E020);
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}