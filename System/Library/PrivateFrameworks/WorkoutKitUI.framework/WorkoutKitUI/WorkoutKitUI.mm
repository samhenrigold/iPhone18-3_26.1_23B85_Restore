uint64_t WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a5;
  v49 = a1;
  v14 = type metadata accessor for WorkoutPlan();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  outlined copy of Data._Representation(a2, a3);
  WorkoutPlan.init(from:)();
  v46 = a6;
  v47 = a7;
  v44 = OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_lastPresenter;
  swift_unknownObjectWeakAssign();
  v45 = v8;
  v21 = (v8 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v22 = *(v8 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v23 = *(v8 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion + 8);
  v42 = a4;
  v24 = v48;
  *v21 = a4;
  v21[1] = v24;
  swift_retain_n();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v22, v23);
  v25 = v15;
  v26 = *(v15 + 16);
  v43 = v20;
  v26(v18, v20, v14);
  v27 = type metadata accessor for WorkoutHostingRemoteViewController(0);
  v28 = objc_allocWithZone(v27);
  v29 = v14;
  v30 = &v28[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion];
  *v30 = 0;
  v30[1] = 0;
  *&v28[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController] = 0;
  v26(&v28[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_workout], v18, v29);
  *v30 = v42;
  v30[1] = v24;
  v31 = v29;
  v51.receiver = v28;
  v51.super_class = v27;
  v32 = objc_msgSendSuper2(&v51, sel_initWithNibName_bundle_, 0, 0);
  v33 = *(v25 + 8);
  v33(v18, v31);
  v34 = v49;
  v35 = [v34 presentedViewController];
  if (v35)
  {
    do
    {
      v36 = v35;

      v35 = [v36 presentedViewController];
      v34 = v36;
    }

    while (v35);
  }

  else
  {
    v36 = v34;
  }

  swift_unknownObjectWeakAssign();
  v37 = swift_allocObject();
  v38 = v47;
  *(v37 + 16) = v46;
  *(v37 + 24) = v38;
  aBlock[4] = partial apply for closure #1 in WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:);
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v39 = _Block_copy(aBlock);

  [v36 presentViewController:v32 animated:1 completion:v39];
  _Block_release(v39);

  return (v33)(v43, v31);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v30 = a1;
  v10 = type metadata accessor for WorkoutPlan();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_lastPresenter;
  swift_unknownObjectWeakAssign();
  v32 = v6;
  v14 = (v6 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v16 = *(v6 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v15 = *(v6 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion + 8);
  *v14 = a3;
  v14[1] = a4;
  v17 = a3;
  swift_retain_n();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v16, v15);
  v18 = *(v11 + 16);
  v18(v13, a2, v10);
  v19 = type metadata accessor for WorkoutHostingRemoteViewController(0);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion];
  *v21 = 0;
  v21[1] = 0;
  *&v20[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController] = 0;
  v18(&v20[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_workout], v13, v10);
  *v21 = v17;
  v21[1] = a4;
  v36.receiver = v20;
  v36.super_class = v19;
  v22 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  (*(v11 + 8))(v13, v10);
  v23 = v30;
  v24 = [v23 presentedViewController];
  if (v24)
  {
    do
    {
      v25 = v24;

      v24 = [v25 presentedViewController];
      v23 = v25;
    }

    while (v24);
  }

  else
  {
    v25 = v23;
  }

  swift_unknownObjectWeakAssign();
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v33;
  *(v26 + 24) = v27;
  aBlock[4] = closure #1 in WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)partial apply;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_7;
  v28 = _Block_copy(aBlock);

  [v25 presentViewController:v22 animated:1 completion:v28];
  _Block_release(v28);
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for WorkoutHostingRemoteViewController(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutHostingRemoteViewController;
  if (!type metadata singleton initialization cache for WorkoutHostingRemoteViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274C93EE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall WorkoutRemoteViewServiceAdaptor.dismissRemoteViewController(on:)(UIViewController *on)
{
  v2 = [(UIViewController *)on presentedViewController];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for WorkoutHostingRemoteViewController(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }

  swift_unknownObjectWeakAssign();
  v5 = (v1 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v6 = *(v1 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v7 = *(v1 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion + 8);
  *v5 = 0;
  v5[1] = 0;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

uint64_t WorkoutRemoteViewServiceAdaptor.closeButtonTapped()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentedViewController];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for WorkoutHostingRemoteViewController(0);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        [v5 dismissViewControllerAnimated:1 completion:0];
        v6 = v4;
      }

      else
      {
        v6 = v2;
        v2 = v4;
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v7 = (v0 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  v8 = *(v0 + OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion);
  if (v8)
  {
    v9 = v7[1];

    v8(v10);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
    v11 = *v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7[1];
  *v7 = 0;
  v7[1] = 0;

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);
}

id WorkoutRemoteViewServiceAdaptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutRemoteViewServiceAdaptor.init()()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor_dismissCompletion];
  v2 = type metadata accessor for WorkoutRemoteViewServiceAdaptor();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t dispatch thunk of WorkoutRemoteViewServiceAdaptor.presentRemoteViewController(on:with:dismissCompletion:completion:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

Swift::Void __swiftcall WorkoutHostingRemoteViewController.viewDidLoad()()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for WorkoutHostingRemoteViewController(0);
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [objc_opt_self() systemBackgroundColor];
  [v5 setBackgroundColor_];

  [v1 startAnimating];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_274C96870;
  v8 = [v1 centerXAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 centerXAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = [v1 centerYAnchor];

  v14 = [v0 view];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v15 centerYAnchor];

    v18 = [v13 constraintEqualToAnchor_];
    *(v7 + 40) = v18;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints_];

    type metadata accessor for WorkoutRemoteViewController();
    v20 = OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_workout;
    v21 = swift_allocObject();
    *(v21 + 16) = v0;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v1;
    v24 = v1;
    v25 = v0;

    static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(v0 + v20, partial apply for closure #1 in WorkoutHostingRemoteViewController.viewDidLoad(), v21, partial apply for closure #2 in WorkoutHostingRemoteViewController.viewDidLoad(), v23);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t closure #1 in WorkoutHostingRemoteViewController.viewDidLoad()(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion + 8);

    v1(v3);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v1, v2);
  }

  return result;
}

void closure #2 in WorkoutHostingRemoteViewController.viewDidLoad()(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2 || !a1)
    {
      v9 = *(Strong + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion);
      if (!v9)
      {
LABEL_6:

        return;
      }

      v10 = *(Strong + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion + 8);

      v9(v11);
    }

    else
    {
      v16 = a1;
      v17 = [v16 view];
      if (v17)
      {
        v18 = v17;
        v19 = [objc_opt_self() currentDevice];
        v20 = [v19 userInterfaceIdiom];

        if (v20 == 1)
        {
          [v16 setModalPresentationStyle_];
          [v16 setPreferredContentSize_];
        }

        v21 = v8;
        [v21 addChildViewController_];
        [v18 setAlpha_];
        [v18 setTranslatesAutoresizingMaskIntoConstraints_];
        v22 = [v21 view];
        if (v22)
        {
          v23 = v22;
          [v22 addSubview_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_274C96880;
          v25 = [v18 leadingAnchor];
          v26 = [v21 view];

          if (v26)
          {
            v27 = [v26 leadingAnchor];

            v28 = [v25 constraintEqualToAnchor_];
            *(v24 + 32) = v28;
            v29 = [v18 trailingAnchor];
            v30 = [v21 view];

            if (v30)
            {
              v31 = [v30 trailingAnchor];

              v32 = [v29 constraintEqualToAnchor_];
              *(v24 + 40) = v32;
              v33 = [v18 topAnchor];
              v34 = [v21 view];

              if (v34)
              {
                v35 = [v34 topAnchor];

                v36 = [v33 constraintEqualToAnchor_];
                *(v24 + 48) = v36;
                v37 = [v18 bottomAnchor];
                v38 = [v21 0x279EF8AF8];

                if (v38)
                {
                  v39 = objc_opt_self();
                  v40 = [v38 bottomAnchor];

                  v41 = [v37 constraintEqualToAnchor_];
                  *(v24 + 56) = v41;
                  type metadata accessor for NSLayoutConstraint();
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v39 activateConstraints_];

                  [v16 didMoveToParentViewController_];
                  v43 = objc_opt_self();
                  v44 = swift_allocObject();
                  *(v44 + 16) = v18;
                  *(v44 + 24) = a4;
                  v57 = partial apply for closure #1 in closure #2 in WorkoutHostingRemoteViewController.viewDidLoad();
                  v58 = v44;
                  aBlock = MEMORY[0x277D85DD0];
                  v54 = 1107296256;
                  v55 = thunk for @escaping @callee_guaranteed () -> ();
                  v56 = &block_descriptor_40;
                  v45 = _Block_copy(&aBlock);
                  v46 = v18;
                  v47 = a4;

                  v48 = swift_allocObject();
                  *(v48 + 16) = v47;
                  v57 = partial apply for closure #2 in closure #2 in WorkoutHostingRemoteViewController.viewDidLoad();
                  v58 = v48;
                  aBlock = MEMORY[0x277D85DD0];
                  v54 = 1107296256;
                  v55 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
                  v56 = &block_descriptor_46;
                  v49 = _Block_copy(&aBlock);
                  v50 = v47;

                  [v43 animateWithDuration:v45 animations:v49 completion:0.2];

                  _Block_release(v49);
                  _Block_release(v45);
                  v51 = *&v21[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController];
                  *&v21[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_presentedRemoteViewController] = a1;

                  return;
                }

LABEL_28:
                __break(1u);
                return;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_26;
      }

      v9 = *&v8[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion];
      if (!v9)
      {

        return;
      }

      v10 = *&v8[OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion + 8];

      v9(v52);
    }

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion);
    v14 = *(v12 + OBJC_IVAR____TtC12WorkoutKitUI34WorkoutHostingRemoteViewController_dismissCompletion + 8);
    v15 = v12;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v13, v14);

    if (v13)
    {
      v13();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v13, v14);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id WorkoutRemoteViewServiceAdaptor.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata completion function for WorkoutHostingRemoteViewController(uint64_t a1)
{
  result = type metadata accessor for WorkoutPlan();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t sub_274C95228()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274C95268()
{
  MEMORY[0x277C67CD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274C952A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274C952F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id partial apply for closure #1 in closure #2 in WorkoutHostingRemoteViewController.viewDidLoad()()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t sub_274C95394()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a2;
  v8 = type metadata accessor for WorkoutPlan();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = MEMORY[0x277C67900](0xD000000000000035, 0x8000000274C96E60);
  v12 = MEMORY[0x277C67900](0xD000000000000022, 0x8000000274C96EA0);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v19;
  *(v14 + 24) = a5;
  (*(v9 + 32))(v14 + v13, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v20;
  v15[1] = a3;
  aBlock[4] = partial apply for closure #1 in static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIRemoteViewController?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  v17 = [ObjCClassFromMetadata requestViewController:v11 fromServiceWithBundleIdentifier:v12 connectionHandler:v16];
  _Block_release(v16);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutRemoteViewError()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C67990](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutRemoteViewError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C67990](0);
  return Hasher._finalize()();
}

id @objc static WorkoutRemoteViewController.serviceViewControllerInterface()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

void closure #1 in static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(void *a1, void *a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
    a3(0, a2);
    v17 = a2;
LABEL_7:

    return;
  }

  if (!a1 || (type metadata accessor for WorkoutRemoteViewController(), (v18 = swift_dynamicCastClass()) == 0))
  {
    lazy protocol witness table accessor for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError();
    v21 = swift_allocError();
    a3(0, v21);
    v17 = v21;
    goto LABEL_7;
  }

  v19 = v18;
  (*(v13 + 104))(v15, *MEMORY[0x277CE3FA0], v12);
  v33 = a1;
  v20 = WorkoutPlan.dataRepresentation(as:)();
  v23 = v22;
  v34 = v20;
  (*(v13 + 8))(v15, v12);
  v24 = WorkoutRemoteViewServiceInterfaceFunc([v19 serviceViewControllerProxy]);
  swift_unknownObjectRelease();
  v25 = v34;
  v26 = v23;
  if (v24)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v24 presentWorkoutDataRepresentation_];

    swift_unknownObjectRelease();
  }

  v28 = &v19[OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler];
  v29 = *&v19[OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler];
  v30 = *&v19[OBJC_IVAR____TtC12WorkoutKitUI27WorkoutRemoteViewController_dismissHandler + 8];
  *v28 = a6;
  *(v28 + 1) = a7;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v29, v30);
  v31 = v33;
  a3(v19, 0);

  outlined consume of Data._Representation(v25, v26);
}

void thunk for @escaping @callee_guaranteed (@guaranteed _UIRemoteViewController?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id WorkoutRemoteViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutRemoteViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_274C95DF4()
{
  v1 = type metadata accessor for WorkoutPlan();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void partial apply for closure #1 in static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for WorkoutPlan() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  closure #1 in static WorkoutRemoteViewController.retrieve(with:dismissHandler:completion:)(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError()
{
  result = lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError;
  if (!lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError;
  if (!lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutRemoteViewError and conformance WorkoutRemoteViewError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutRemoteViewError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WorkoutRemoteViewError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}