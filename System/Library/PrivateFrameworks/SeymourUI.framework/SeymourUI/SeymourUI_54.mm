uint64_t NavigationRouterInterceptionPresenter.cancel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  sub_20BB2C5B0(v1 + 32, &v24);
  if (v25)
  {
    sub_20B51C710(&v24, v26);
    v13 = v27;
    v14 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v14 + 24))(v13, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_20BB2C620;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_20B5DF3B8;
    *(v17 + 24) = v16;
    (*(v3 + 16))(v5, v8, v2);
    v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v3 + 32))(v20 + v18, v5, v2);
    v21 = (v20 + v19);
    *v21 = sub_20B5DF3D4;
    v21[1] = v17;
    sub_20C137C94();
    (*(v3 + 8))(v8, v2);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_20BB2AB68(&v24);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }
}

double sub_20BB2BAD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v3 = Strong;
    swift_beginAccess();
    sub_20BB2C72C(v4, v3 + 32);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BB2BB58()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BB2BC60()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v0;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v0 = v29;
    v3 = v28;
    v2 = v46;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BB2C5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A9B8, &qword_20C16DF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB2C628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BB2C72C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A9B8, &qword_20C16DF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB2C79C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *TabBarController.init(dependencies:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9SeymourUI16TabBarController_paletteView;
  if (qword_27C760C40 != -1)
  {
    swift_once();
  }

  v3 = qword_27C76F6C0;
  v4 = objc_allocWithZone(type metadata accessor for PaletteContainerView());
  v5 = v3;
  *&v1[v2] = sub_20BE4B8E8(v5, v6);
  *&v1[OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController] = 0;
  v7 = objc_allocWithZone(type metadata accessor for MiniPlayerHostPresenter());

  *&v1[OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerHostPresenter] = sub_20B62AE90(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v9 = v14[1];
  v10 = &v1[OBJC_IVAR____TtC9SeymourUI16TabBarController_eventHub];
  *v10 = v14[0];
  *(v10 + 1) = v9;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v1[OBJC_IVAR____TtC9SeymourUI16TabBarController_subscriptionToken] = sub_20C13A914();
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TabBarController();
  v11 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  swift_getObjectType();
  sub_20C13B1D4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v11;
  swift_unknownObjectRetain();

  sub_20C13A7A4();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v14);

  return v12;
}

void sub_20BB2CA98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerHostPresenter);

    sub_20B62B318(0, 0);
  }
}

void sub_20BB2CBD8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = [v0 tabBar];
  [v1 setSpringLoaded_];

  v2 = [v0 tabBar];
  [v2 setTintAdjustmentMode_];

  v3 = [v0 tabBar];
  v4 = [v0 tabBar];
  v5 = [v4 standardAppearance];

  [v3 setScrollEdgeAppearance_];
  *(*&v0[OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerHostPresenter] + OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_display + 8) = &off_2822CDBE0;
  swift_unknownObjectWeakAssign();
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI16TabBarController_paletteView];
  [v6 setHidden_];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v0 tabBar];
    [v8 insertSubview:v6 belowSubview:v9];
  }

  else
  {
    __break(1u);
  }
}

void sub_20BB2CDDC()
{
  v52.receiver = v0;
  v52.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v52, sel_viewDidLayoutSubviews);
  v1 = [v0 selectedViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [v0 tabBar];
  if (v3)
  {
    v5 = [v3 navigationBar];
    v6 = [v5 smu_backdropLayerGroupName];

    if (!v6)
    {
      sub_20C13C954();
      v6 = sub_20C13C914();
    }
  }

  else
  {
    v6 = 0;
  }

  [v4 _setBackdropViewLayerGroupName_];

  v7 = *&v0[OBJC_IVAR____TtC9SeymourUI16TabBarController_paletteView];
  if (v3)
  {
    v8 = [v3 navigationBar];
    v9 = [v8 smu_backdropLayerGroupName];

    sub_20C13C954();
    v10 = *&v7[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_backgroundView];
    v11 = sub_20C13C914();
  }

  else
  {
    v11 = 0;
    v10 = *&v7[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_backgroundView];
  }

  [v10 setSmu:v11 groupName:?];

  v12 = [v0 tabBar];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v53.origin.x = v14;
  v53.origin.y = v16;
  v53.size.width = v18;
  v53.size.height = v20;
  v21 = CGRectGetMinY(v53) + -64.0;
  v22 = [v0 tabBar];
  [v22 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v54.origin.x = v24;
  v54.origin.y = v26;
  v54.size.width = v28;
  v54.size.height = v30;
  Width = CGRectGetWidth(v54);
  v32 = [v0 tabBar];
  [v32 frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v55.origin.x = v34;
  v55.origin.y = v36;
  v55.size.width = v38;
  v55.size.height = v40;
  [v7 setFrame_];
  v41 = [v0 tabBar];
  [v41 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v56.origin.x = v43;
  v56.origin.y = v45;
  v56.size.width = v47;
  v56.size.height = v49;
  Height = CGRectGetHeight(v56);

  v51 = &v7[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_contentInsets];
  *v51 = 0.0;
  v51[1] = 0.0;
  v51[2] = Height;
  v51[3] = 0.0;
}

void sub_20BB2D19C(void *a1, char a2)
{
  v4 = a1;
  if (a1)
  {
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v4 = sub_20C13CC54();
  }

  v16.receiver = v2;
  v16.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v16, sel_setViewControllers_animated_, v4, a2 & 1);

  v5 = [v2 viewControllers];
  if (v5)
  {
    v6 = v5;
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v7 = sub_20C13CC74();

    if (!(v7 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_5:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_19:

      return;
    }
  }

  v8 = sub_20C13DB34();
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F2F5430](v9, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = *&v2[v10];
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        if (v13)
        {
          v15 = 64.0;
        }

        else
        {
          v15 = 0.0;
        }

        [v14 setAdditionalSafeAreaInsets_];
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_19;
  }

  __break(1u);
}

id TabBarController.__allocating_init(tabs:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_20B51C88C(0, &qword_27C76A9E8, 0x277D75B08);
  v3 = sub_20C13CC54();

  v4 = [v2 initWithTabs_];

  return v4;
}

id TabBarController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TabBarController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabBarController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TabBarController.hostSession(collapsing:)(char *a1)
{
  v2 = v1;
  sub_20B62B16C(a1);
  objc_allocWithZone(type metadata accessor for MiniPlayerViewController());
  v3 = swift_unknownObjectRetain();
  v4 = sub_20BB56824(v3);
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController;
  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController];
  *&v2[OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController] = v4;
  v26 = v4;

  v7 = *&v2[OBJC_IVAR____TtC9SeymourUI16TabBarController_paletteView];
  [v7 setHidden_];
  [v2 addChildViewController_];
  v8 = [v26 view];
  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView;
  [*&v7[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView] frame];
  [v9 setFrame_];
  [v9 setAutoresizingMask_];
  [*&v7[v10] addSubview_];

  v11 = [v26 view];
  if (!v11)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = v11;
  [v11 setInsetsLayoutMarginsFromSafeArea_];

  v13 = [v26 view];
  if (!v13)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 setDirectionalLayoutMargins_];

  v15 = [v2 viewControllers];
  if (v15)
  {
    v16 = v15;
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v17 = sub_20C13CC74();

    if (!(v17 >> 62))
    {
      goto LABEL_6;
    }

LABEL_19:
    v18 = sub_20C13DB34();
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v17 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_19;
  }

LABEL_6:
  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
LABEL_7:
    if (v18 >= 1)
    {
      for (i = 0; i != v18; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x20F2F5430](i, v17);
        }

        else
        {
          v20 = *(v17 + 8 * i + 32);
        }

        v21 = v20;
        v22 = *&v2[v5];
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (v23)
        {
          if (v22)
          {
            v24 = 64.0;
          }

          else
          {
            v24 = 0.0;
          }

          [v23 setAdditionalSafeAreaInsets_];
        }
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_20:

  v25 = [objc_opt_self() traitCollectionWithHorizontalSizeClass_];
  [v2 setOverrideTraitCollection:v25 forChildViewController:v26];

  [v26 didMoveToParentViewController_];
}

void sub_20BB2D9E8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_23;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController;
  v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController);
  if (!v6)
  {
LABEL_22:

LABEL_23:
    a2();
    return;
  }

  v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI16TabBarController_paletteView);
  v8 = v6;
  [v7 setHidden_];
  v9 = [v8 view];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  [v9 removeFromSuperview];

  [v8 removeFromParentViewController];
  v11 = [v4 viewControllers];
  if (v11)
  {
    v12 = v11;
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v13 = sub_20C13CC74();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v21 = v8;
  v22 = a2;
  if (v13 >> 62)
  {
    v14 = sub_20C13DB34();
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_21:

    a2 = v22;
    goto LABEL_22;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_9:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x20F2F5430](i, v13);
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      v18 = *&v4[v5];
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        if (v18)
        {
          v20 = 64.0;
        }

        else
        {
          v20 = 0.0;
        }

        [v19 setAdditionalSafeAreaInsets_];
      }
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

double sub_20BB2DC80()
{
  v20 = sub_20C13BB84();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_20C137FE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v6, &unk_27C768AC0, &unk_20C1523B0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C768AC0, &unk_20C1523B0);
LABEL_5:
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider), *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider + 24));
    sub_20C139524();
    v13 = v12;
    sub_20C13B4A4();
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v13;
      _os_log_impl(&dword_20B517000, v14, v15, "No workout, using standalone time of %f", v16, 0xCu);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v1 + 8))(v3, v20);
    return v13;
  }

  (*(v8 + 32))(v10, v6, v7);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_presentationTimestamp + 8))
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_5;
  }

  sub_20C137FA4();
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_previousElapsedTime);
  if (v13 <= v19)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_previousElapsedTime) = v19;
    return v19;
  }

  return v13;
}

uint64_t sub_20BB2DFE8()
{
  v1 = v0;
  v2 = sub_20C1337A4();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v45 - v7;
  v8 = sub_20C136544();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135274();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_displayPreferences;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v18, v17, &unk_27C765100, &unk_20C152450);
  if ((*(v12 + 48))(v17, 1, v11))
  {
    sub_20B520158(v17, &unk_27C765100, &unk_20C152450);
    v19 = 0;
    v20 = 1;
    v21 = 1;
  }

  else
  {
    (*(v12 + 16))(v14, v17, v11);
    sub_20B520158(v17, &unk_27C765100, &unk_20C152450);
    sub_20C135244();
    (*(v12 + 8))(v14, v11);
    v20 = sub_20C136534();
    v19 = v22;
    v21 = v23;
    (*(v47 + 8))(v10, v8);
  }

  v53 = v20;
  v54 = v19;
  v24 = v21 & 1;
  v55 = v21 & 1;
  v25 = 1;
  v52 = 1;
  sub_20B64B3D8();
  sub_20B64B42C();
  v26 = sub_20C133C04();
  sub_20B583F4C(v20, v19, v24);
  v27 = sub_20C1371F4();
  if (sub_20BB2E62C() != 2)
  {
    v28 = sub_20C134B34();
    v30 = v29;
    if (v28 == sub_20C134B34() && v30 == v31)
    {

      v25 = 0;
    }

    else
    {
      v32 = sub_20C13DFF4();

      v25 = v32 ^ 1;
    }
  }

  v33 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_userMassMetric;
  swift_beginAccess();
  v34 = v51;
  sub_20B52F9E8(v1 + v33, v51, &unk_27C765080, &unk_20C157450);
  v35 = sub_20C135364();
  LODWORD(v33) = (*(*(v35 - 8) + 48))(v34, 1, v35);
  sub_20B520158(v34, &unk_27C765080, &unk_20C157450);
  if (v33 == 1)
  {
    v36 = 0;
  }

  else
  {
    v37 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric;
    swift_beginAccess();
    v38 = v48;
    sub_20B52F9E8(v1 + v37, v48, &unk_27C768AE0, &unk_20C1523E0);
    v40 = v49;
    v39 = v50;
    if ((*(v49 + 48))(v38, 1, v50))
    {
      sub_20B520158(v38, &unk_27C768AE0, &unk_20C1523E0);
      v36 = 0;
    }

    else
    {
      v41 = v46;
      (*(v40 + 16))(v46, v38, v39);
      sub_20B520158(v38, &unk_27C768AE0, &unk_20C1523E0);
      sub_20C133714();
      v43 = v42;
      (*(v40 + 8))(v41, v39);
      v36 = 0;
      if (!(v25 & 1 | ((v26 & v27 & 1) == 0)) && v43 > 0.0)
      {
        v36 = sub_20BB2EFEC();
      }
    }
  }

  return v36 & 1;
}

uint64_t sub_20BB2E62C()
{
  v1 = sub_20C134B64();
  v12[3] = *(v1 - 8);
  v12[4] = v1;
  MEMORY[0x28223BE20](v1);
  v12[2] = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C133D84();
  v12[7] = *(v3 - 8);
  v12[8] = v3;
  MEMORY[0x28223BE20](v3);
  v12[1] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v5 - 8);
  v12[6] = v12 - v6;
  v7 = sub_20C136484();
  v12[9] = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v12[5] = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20C13BB84();
  MEMORY[0x28223BE20](v10);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_healthStore), *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_healthStore + 24));
  return sub_20C13B1F4() & 1;
}

BOOL sub_20BB2EC50()
{
  v1 = sub_20C136484();
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_20C134514();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_distanceMetric;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v13, v8, &unk_27C765050, &unk_20C153C10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &unk_27C765050, &unk_20C153C10);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B52F9E8(v0 + v15, v5, &unk_27C765CB0, &unk_20C1523C0);
    v16 = v23;
    if ((*(v23 + 48))(v5, 1, v1))
    {
      sub_20B520158(v5, &unk_27C765CB0, &unk_20C1523C0);
      v14 = 0;
    }

    else
    {
      v17 = v22;
      (*(v16 + 16))(v22, v5, v1);
      sub_20B520158(v5, &unk_27C765CB0, &unk_20C1523C0);
      v18 = sub_20C136434();
      (*(v16 + 8))(v17, v1);
      v19 = sub_20B8D8400(0, v18);

      v14 = 0;
      if (v19)
      {
        sub_20C134504();
        v14 = v20 > 0.0;
      }
    }

    (*(v10 + 8))(v12, v9);
  }

  return v14;
}

uint64_t sub_20BB2EFEC()
{
  v1 = sub_20C136484();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_heartRateMetric;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v10, &unk_27C7650E0, &unk_20C157490);
  v12 = sub_20C134914();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_20B520158(v10, &unk_27C7650E0, &unk_20C157490);
  if (v11 != 1)
  {
    v13 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B52F9E8(v0 + v13, v7, &unk_27C765CB0, &unk_20C1523C0);
    if (!(*(v2 + 48))(v7, 1, v1))
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_20B520158(v7, &unk_27C765CB0, &unk_20C1523C0);
      v16 = sub_20C136434();
      (*(v2 + 8))(v4, v1);
      v14 = sub_20B8D8400(3, v16);

      return v14 & 1;
    }

    sub_20B520158(v7, &unk_27C765CB0, &unk_20C1523C0);
  }

  v14 = 0;
  return v14 & 1;
}

double sub_20BB2F2C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB3E770();
  }

  return result;
}

double sub_20BB2F324(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20C13B024();
    v8 = sub_20C135364();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_userMassMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v7 + v9, &unk_27C765080, &unk_20C157450);
    swift_endAccess();
  }

  return result;
}

double sub_20BB2F458(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20C13AFC4();
    v8 = sub_20C135274();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_displayPreferences;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v7 + v9, &unk_27C765100, &unk_20C152450);
    swift_endAccess();
  }

  return result;
}

double sub_20BB2F58C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20C13AED4();
    v8 = sub_20C134C04();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_gymKitConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v7 + v9, &unk_27C7650F0, &unk_20C1574A0);
    swift_endAccess();
  }

  return result;
}

double sub_20BB2F6C0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20C13B2E4();
    v8 = sub_20C136484();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v7 + v9, &unk_27C765CB0, &unk_20C1523C0);
    swift_endAccess();
  }

  return result;
}

double sub_20BB2F7F4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13AE64();
    goto LABEL_10;
  }

  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v7, MEMORY[0x277D4DFB8]);

  v9 = sub_20C13A434();
  v11 = v10;
  sub_20BB412A4(v7, MEMORY[0x277D4DFB8]);
  v12 = sub_20C13AE64();
  if (!v11)
  {
LABEL_10:

    return result;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_20C13AE54();
    v19 = sub_20C134914();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_heartRateMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v18 + v20, &unk_27C7650E0, &unk_20C157490);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

double sub_20BB2FA9C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13AD24();
    goto LABEL_10;
  }

  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v7, MEMORY[0x277D4DFB8]);

  v9 = sub_20C13A434();
  v11 = v10;
  sub_20BB412A4(v7, MEMORY[0x277D4DFB8]);
  v12 = sub_20C13AD24();
  if (!v11)
  {
LABEL_10:

    return result;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_20C13AD14();
    v19 = sub_20C134514();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_distanceMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v18 + v20, &unk_27C765050, &unk_20C153C10);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

double sub_20BB2FD44(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20C13B114();
    v7 = sub_20C135B74();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mindfulMinutesMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v6 + v8, &unk_27C7650D0, &unk_20C157480);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

double sub_20BB2FEA8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00, &unk_20C152400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13A8D4();
    goto LABEL_10;
  }

  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v7, MEMORY[0x277D4DFB8]);

  v9 = sub_20C13A434();
  v11 = v10;
  sub_20BB412A4(v7, MEMORY[0x277D4DFB8]);
  v12 = sub_20C13A8D4();
  if (!v11)
  {
LABEL_10:

    return result;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_20C13A8C4();
    v19 = sub_20C133494();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_paceMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v18 + v20, &unk_27C768B00, &unk_20C152400);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

double sub_20BB30150(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13AA74();
    goto LABEL_10;
  }

  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v7, MEMORY[0x277D4DFB8]);

  v9 = sub_20C13A434();
  v11 = v10;
  sub_20BB412A4(v7, MEMORY[0x277D4DFB8]);
  v12 = sub_20C13AA74();
  if (!v11)
  {
LABEL_10:

    return result;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_20C13AA64();
    v19 = sub_20C133B04();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_energyMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v18 + v20, &qword_27C768B30, &unk_20C152440);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

double sub_20BB303F8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13AC24();
    goto LABEL_10;
  }

  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v7, MEMORY[0x277D4DFB8]);

  v9 = sub_20C13A434();
  v11 = v10;
  sub_20BB412A4(v7, MEMORY[0x277D4DFB8]);
  v12 = sub_20C13AC24();
  if (!v11)
  {
LABEL_10:

    return result;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_20C13AC14();
    v19 = sub_20C133DD4();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_cadenceMetric;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v18 + v20, &unk_27C7687F0, &unk_20C153C20);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

uint64_t sub_20BB306A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C137EA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13AA14();
    sub_20BB3A630();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_20BB307AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = v62 - v8;
  MEMORY[0x28223BE20](v9);
  v64 = v62 - v10;
  v11 = sub_20C134834();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_20C1337A4();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = v62 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v62 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v62 - v23;
  v25 = sub_20C13A484();
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13A9F4();
    goto LABEL_7;
  }

  v62[1] = a2;
  v62[0] = v6;
  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v27, MEMORY[0x277D4DFB8]);

  v29 = sub_20C13A434();
  v31 = v30;
  sub_20BB412A4(v27, MEMORY[0x277D4DFB8]);
  v66 = a1;
  v32 = sub_20C13A9F4();
  if (!v31)
  {
LABEL_7:

    return;
  }

  if (v29 == v32 && v31 == v33)
  {
  }

  else
  {
    v34 = sub_20C13DFF4();

    if ((v34 & 1) == 0)
    {
      return;
    }
  }

  sub_20C13A9E4();
  sub_20C133794();
  v35 = *(v67 + 8);
  v35(v24, v68);
  v36 = (*(v12 + 88))(v14, v11);
  v37 = *MEMORY[0x277D50AA0];
  (*(v12 + 8))(v14, v11);
  if (v36 == v37)
  {
    sub_20C13A9E4();
    sub_20C133744();
    v39 = v38;
    v40 = v68;
    v35(v21, v68);
    swift_beginAccess();
    v41 = swift_weakLoadStrong();
    v42 = 0.0;
    if (v41)
    {
      v43 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric;
      v44 = v41;
      swift_beginAccess();
      v45 = v44 + v43;
      v46 = v64;
      sub_20B52F9E8(v45, v64, &unk_27C768AE0, &unk_20C1523E0);

      v47 = v67;
      if ((*(v67 + 48))(v46, 1, v40))
      {
        sub_20B520158(v46, &unk_27C768AE0, &unk_20C1523E0);
      }

      else
      {
        v48 = v63;
        (*(v47 + 16))(v63, v46, v40);
        sub_20B520158(v46, &unk_27C768AE0, &unk_20C1523E0);
        sub_20C133744();
        v42 = v49;
        v35(v48, v40);
      }
    }

    else
    {
      v47 = v67;
    }

    sub_20C13A9E4();
    v50 = sub_20C133784();
    v35(v16, v40);
    swift_beginAccess();
    v51 = swift_weakLoadStrong();
    if (v51)
    {
      v52 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric;
      v53 = v51;
      swift_beginAccess();
      v54 = v53 + v52;
      v55 = v65;
      sub_20B52F9E8(v54, v65, &unk_27C768AE0, &unk_20C1523E0);

      if (!(*(v47 + 48))(v55, 1, v40))
      {
        v56 = v63;
        (*(v47 + 16))(v63, v55, v40);
        sub_20B520158(v55, &unk_27C768AE0, &unk_20C1523E0);
        v57 = sub_20C133784();
        v35(v56, v40);
        if (v42 < v39 || v57 < v50)
        {
LABEL_24:
          swift_beginAccess();
          v58 = swift_weakLoadStrong();
          if (v58)
          {
            v59 = v58;
            v60 = v62[0];
            sub_20C13A9E4();
            (*(v47 + 56))(v60, 0, 1, v40);
            v61 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric;
            swift_beginAccess();
            sub_20B5DF2D4(v60, v59 + v61, &unk_27C768AE0, &unk_20C1523E0);
            swift_endAccess();
          }
        }

LABEL_26:
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_20BB33554();
        }

        return;
      }

      sub_20B520158(v55, &unk_27C768AE0, &unk_20C1523E0);
    }

    if (v42 < v39 || v50 >= 1)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }
}

double sub_20BB30F68(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13A5F4();
    goto LABEL_10;
  }

  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v7, MEMORY[0x277D4DFB8]);

  v9 = sub_20C13A434();
  v11 = v10;
  sub_20BB412A4(v7, MEMORY[0x277D4DFB8]);
  v12 = sub_20C13A5F4();
  if (!v11)
  {
LABEL_10:

    return result;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_20C13A604();
    v19 = sub_20C137FE4();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v18 + v20, &unk_27C768AC0, &unk_20C1523B0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

double sub_20BB31210(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13ABD4();
    goto LABEL_10;
  }

  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v7, MEMORY[0x277D4DFB8]);

  v9 = sub_20C13A434();
  v11 = v10;
  sub_20BB412A4(v7, MEMORY[0x277D4DFB8]);
  v12 = sub_20C13ABD4();
  if (!v11)
  {
LABEL_10:

    return result;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_20C13ABC4();
    v19 = sub_20C133D84();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_activityRings;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v18 + v20, &unk_27C765120, &unk_20C152470);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

double sub_20BB314B8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_20C13A684();
    goto LABEL_10;
  }

  sub_20BB41304(Strong + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v7, MEMORY[0x277D4DFB8]);

  v9 = sub_20C13A434();
  v11 = v10;
  sub_20BB412A4(v7, MEMORY[0x277D4DFB8]);
  v12 = sub_20C13A684();
  if (!v11)
  {
LABEL_10:

    return result;
  }

  if (v9 == v12 && v11 == v13)
  {
  }

  else
  {
    v15 = sub_20C13DFF4();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    sub_20C13A694();
    v19 = sub_20C138184();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_playback;
    swift_beginAccess();
    sub_20B5DF2D4(v4, v18 + v20, &unk_27C768AF0, &unk_20C1523F0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB33554();
  }

  return result;
}

uint64_t sub_20BB31760()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_20C138184();
  v102 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v92 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v9 - 8);
  v104 = &v92 - v10;
  v100 = type metadata accessor for RemoteBrowsingWorkoutCompleted(0);
  MEMORY[0x28223BE20](v100);
  v97 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v12 - 8);
  v105 = &v92 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250, &qword_20C153CB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v92 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v92 - v21;
  v106 = sub_20C1344C4();
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  MEMORY[0x28223BE20](v23);
  v26 = &v92 - v25;
  v27 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_state;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_state))
  {
    sub_20C13B4A4();
    v28 = sub_20C13BB74();
    v29 = sub_20C13D1D4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20B517000, v28, v29, "Attempting to present summary while it's already being presented. Ignoring request", v30, 2u);
      MEMORY[0x20F2F6A40](v30, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  v95 = v24;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v32 + 168))(0, 0, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  *(v1 + v27) = 1;
  sub_20C13CE94();
  v34 = v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_presentationTimestamp;
  *v34 = v35;
  *(v34 + 8) = 0;
  v36 = [objc_opt_self() defaultCenter];
  [v36 addObserver:v1 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  v37 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout;
  sub_20BB3D980();
  v38 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_upNextCatalogWorkout;
  swift_beginAccess();
  v94 = v38;
  sub_20B52F9E8(v1 + v38, v22, &qword_27C766E88, &qword_20C16E290);
  v39 = v103;
  v40 = v106;
  v93 = *(v103 + 48);
  if (v93(v22, 1, v106) == 1)
  {
    sub_20B520158(v22, &qword_27C766E88, &qword_20C16E290);
  }

  else
  {
    (*(v39 + 32))(v26, v22, v40);
    sub_20BB3E078();
    (*(v39 + 8))(v26, v40);
  }

  sub_20C134414();
  v41 = sub_20C135B04();
  v42 = (*(*(v41 - 8) + 48))(v16, 1, v41);
  sub_20B520158(v16, &qword_27C763250, &qword_20C153CB0);
  if (v42 == 1 && (sub_20C137224() & 1) != 0)
  {
    if (*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_summaryType))
    {
      v43 = sub_20C13DFF4();
    }

    else
    {
      v43 = 1;
    }
  }

  else
  {
    v43 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = *(v1 + 24);
    v45 = swift_getObjectType();
    (*(v44 + 88))(v43 & 1, v45, v44);
    v40 = v106;
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v46 = *(v1 + 24);
    if (sub_20C1380B4())
    {
      if (*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_summaryType))
      {
        v47 = sub_20C13DFF4();
      }

      else
      {
        v47 = 1;
      }

      v40 = v106;
    }

    else
    {
      v47 = 0;
    }

    v48 = swift_getObjectType();
    (*(v46 + 104))(v47 & 1, v48, v46);
    swift_unknownObjectRelease();
  }

  v107[3] = &type metadata for Health;
  v107[4] = sub_20B7A31F0();
  v49 = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(v107);
  if ((v49 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v50 = *(v1 + 24);
    if (sub_20C1371C4() == 29)
    {
      if (*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_summaryType))
      {
        v51 = sub_20C13DFF4();
      }

      else
      {
        v51 = 1;
      }
    }

    else
    {
      v51 = 0;
    }

    v52 = swift_getObjectType();
    (*(v50 + 96))(v51 & 1, v52, v50);
    swift_unknownObjectRelease();
    v40 = v106;
  }

  sub_20BB33554();
  sub_20BB3ECF8();
  sub_20B52F9E8(v1 + v94, v19, &qword_27C766E88, &qword_20C16E290);
  v53 = v93(v19, 1, v40);
  v98 = v37;
  if (v53 != 1)
  {
    v57 = v103;
    (*(v103 + 32))(v95, v19, v40);
    v58 = sub_20C1344B4();
    v54 = v99;
    if (v60)
    {
      v61 = v58;
      Strong = swift_unknownObjectWeakLoadStrong();
      v63 = v61 == 2;
      v55 = v102;
      v56 = v101;
      if (v63)
      {
        if (Strong)
        {
          goto LABEL_45;
        }
      }

      else if (Strong)
      {
LABEL_45:
        v64 = *(v1 + 24);
        v65 = swift_getObjectType();
        type metadata accessor for SeymourLocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v67 = [objc_opt_self() bundleForClass_];
        v68 = sub_20C132964();
        v70 = v69;

        v56 = v101;
        v55 = v102;
        v57 = v103;
        v71 = v65;
        v40 = v106;
        (*(v64 + 136))(v68, v70, v71, v64);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_20B583F4C(v58, v59, 0);
      v55 = v102;
      v56 = v101;
    }

    (*(v57 + 8))(v95, v40);
    goto LABEL_47;
  }

  sub_20B520158(v19, &qword_27C766E88, &qword_20C16E290);
  v54 = v99;
  v55 = v102;
  v56 = v101;
LABEL_47:
  sub_20BB3E770();
  sub_20BB3264C();
  sub_20BB34818(v105);
  v72 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_activityRings;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v72, v104, &unk_27C765120, &unk_20C152470);
  v73 = sub_20C1371C4();
  v74 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_playback;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v74, v56, &unk_27C768AF0, &unk_20C1523F0);
  if ((*(v55 + 48))(v56, 1, v54))
  {
    sub_20B520158(v56, &unk_27C768AF0, &unk_20C1523F0);
    v75 = 0;
  }

  else
  {
    v76 = v96;
    (*(v55 + 16))(v96, v56, v54);
    sub_20B520158(v56, &unk_27C768AF0, &unk_20C1523F0);
    sub_20C138134();
    v75 = v77;
    (*(v55 + 8))(v76, v54);
  }

  v78 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_energyMetric;
  swift_beginAccess();
  v79 = v100;
  v80 = v97;
  sub_20B52F9E8(v1 + v78, &v97[*(v100 + 28)], &qword_27C768B30, &unk_20C152440);
  v81 = v105;
  sub_20B52F9E8(v105, v80 + v79[8], &unk_27C7650D0, &unk_20C157480);
  v82 = sub_20C13A434();
  v84 = v83;
  sub_20C134464();
  v86 = v85;
  v87 = sub_20C134324();
  v89 = v88;
  sub_20B5DF134(v104, v80, &unk_27C765120, &unk_20C152470);
  *(v80 + v79[5]) = v73;
  *(v80 + v79[6]) = v75;
  v90 = (v80 + v79[9]);
  *v90 = v82;
  v90[1] = v84;
  *(v80 + v79[10]) = v86;
  v91 = (v80 + v79[11]);
  *v91 = v87;
  v91[1] = v89;
  swift_getObjectType();
  sub_20B5268B4(&qword_27C769568, type metadata accessor for RemoteBrowsingWorkoutCompleted, &unk_20C15F000);
  sub_20C13A764();
  sub_20BB412A4(v80, type metadata accessor for RemoteBrowsingWorkoutCompleted);
  return sub_20B520158(v81, &unk_27C7650D0, &unk_20C157480);
}

uint64_t sub_20BB3264C()
{
  v1 = v0;
  v37 = sub_20C13BB84();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645D8, &qword_20C156020);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v36 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648, &qword_20C16E2D0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  (*(v14 + 16))(&v34 - v16, v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter__showBurnBarPrivacyPrompt, v13, v15);
  sub_20C13A344();
  result = (*(v14 + 8))(v17, v13);
  if (LOBYTE(v41[0]) != 2)
  {
    if ((v41[0] & 1) == 0)
    {
      return result;
    }

    v19 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_privacyPreferenceClient;
    sub_20B51CC64(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionPreferenceClient, v41);
    sub_20B51CC64(v1 + v19, v40);
    v20 = swift_allocObject();
    sub_20B51C710(v41, v20 + 16);
    sub_20B51C710(v40, v20 + 56);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v21 + 112))(sub_20BB410E8, v20, ObjectType, v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (sub_20BB2DFE8())
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_privacyPreferenceClient), *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_privacyPreferenceClient + 24));
    sub_20C139C34();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BB4109C;
    *(v23 + 24) = v1;
    (*(v5 + 16))(v7, v10, v4);
    v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v25 = swift_allocObject();
    (*(v5 + 32))(v25 + v24, v7, v4);
    v26 = (v25 + ((v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20BB410B8;
    v26[1] = v23;

    v27 = v36;
    sub_20C137C94();
    (*(v5 + 8))(v10, v4);
    v28 = v39;
    v29 = sub_20C137CB4();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29(sub_20B5DF6DC, v30);

    return (*(v38 + 8))(v27, v28);
  }

  else
  {
    sub_20C13B4A4();
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v31, v32, "Not showing Burn Bar in Summary, so not showing prompt.", v33, 2u);
      MEMORY[0x20F2F6A40](v33, -1, -1);
    }

    return (*(v35 + 8))(v3, v37);
  }
}

double sub_20BB32C20(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136034();
  v9 = v8;
  *&v23 = v7;
  *(&v23 + 1) = v8;
  v11 = v10 & 1;
  v24 = v10 & 1;
  v21 = 0uLL;
  v22 = 1;
  sub_20BB411BC();
  sub_20BB41210();
  v12 = sub_20C133BF4();
  sub_20B583F4C(v7, v9, v11);
  if (v12)
  {
    sub_20C13B4A4();
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20B517000, v14, v15, "Burn Bar Privacy Prompt isn't acknowledged. Presenting.", v16, 2u);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v17 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_privacyPreferenceClient;
    sub_20B51CC64(a2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionPreferenceClient, &v23);
    sub_20B51CC64(a2 + v17, &v21);
    v18 = swift_allocObject();
    sub_20B51C710(&v23, v18 + 16);
    sub_20B51C710(&v21, v18 + 56);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 112))(sub_20BB4136C, v18, ObjectType, v19);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20BB32EA8(char a1, void *a2, void *a3)
{
  v33 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - v7;
  MEMORY[0x28223BE20](v8);
  v38 = &v33 - v9;
  v10 = sub_20C137994();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C136544();
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x277D53870], v10, v15);
  v35 = v17;
  sub_20C136524();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v18 = *(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_20C14F320;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20C139CE4();
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_20C139C44();
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v19 = sub_20C13D374();
  sub_20C13A7C4();
  v20 = v34;
  sub_20C137C74();

  v21 = swift_allocObject();
  *(v21 + 16) = sub_20BB33378;
  *(v21 + 24) = 0;
  v23 = v36;
  v22 = v37;
  (*(v4 + 16))(v36, v20, v37);
  v24 = (v18 + 16) & ~v18;
  v25 = swift_allocObject();
  v26 = v22;
  (*(v4 + 32))(v25 + v24, v23, v22);
  v27 = (v25 + ((v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20B5DF204;
  v27[1] = v21;
  v28 = v38;
  sub_20C137C94();
  v29 = *(v4 + 8);
  v29(v20, v26);
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B5DF6DC, v31);

  v29(v28, v26);
  return (*(v39 + 8))(v35, v40);
}

uint64_t sub_20BB33378(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "Burn Bar Privacy - saving failed with error %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_20BB33554()
{
  v1 = sub_20C13BB84();
  MEMORY[0x28223BE20](v1);
  v2 = type metadata accessor for SessionSummaryViewModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_state) == 1)
  {
    sub_20BB3383C(v4);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v4, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v0 + 24);
      v8 = swift_getObjectType();
      (*(v7 + 56))(v8, v7);
      swift_unknownObjectRelease();
    }

    sub_20BB412A4(v4, type metadata accessor for SessionSummaryViewModel);
  }
}

void sub_20BB3383C(double *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v102 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765350, &unk_20C184B80);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770980, &unk_20C1588A0);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v86 - v10;
  v105 = sub_20C13BB84();
  v12 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();

  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v101 = v2;
    v18 = v17;
    *v17 = 134349312;
    *(v17 + 4) = sub_20BB2DC80();
    *(v18 + 12) = 1026;
    *(v18 + 14) = sub_20BB2DFE8() & 1;

    _os_log_impl(&dword_20B517000, v15, v16, "SessionSummaryPresenter: Making session summary view model with elapsedTime: %{public}f, should show burn bar: %{BOOL,public}d", v18, 0x12u);
    v19 = v18;
    v3 = v101;
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v14, v105);
  v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v20, v11, &unk_27C768AC0, &unk_20C1523B0);
  LOBYTE(v20) = MEMORY[0x20F2EF470](v11, v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
  sub_20B520158(v11, &unk_27C768AC0, &unk_20C1523B0);
  if (v20)
  {
    v21 = (v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
    v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
    v119 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
    v120 = v22;
    v121 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
    v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
    v117 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
    v118 = v23;
    v24 = sub_20BAAC21C();
    v25 = v21[1];
    v26 = v21[3];
    v124 = v21[2];
    v125 = v26;
    v27 = v21[1];
    v122 = *v21;
    v123 = v27;
    v28 = v21[3];
    v114 = v124;
    v115 = v28;
    v126 = *(v21 + 32);
    v116 = *(v21 + 32);
    v112 = v122;
    v113 = v25;
    sub_20B7A3194(&v122, &v107);
    v29 = sub_20BB2DC80();
    sub_20BAAC39C(v29);
    if (v3)
    {
      v109 = v114;
      v110 = v115;
      v111 = v116;
      v107 = v112;
      v108 = v113;
      sub_20B7A3B8C(&v107);

      return;
    }

    v46 = v30;
  }

  else
  {
    v31 = (v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
    v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
    v119 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
    v120 = v32;
    v121 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
    v33 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
    v117 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
    v118 = v33;
    v24 = sub_20BAAC21C();
    v34 = v31[1];
    v35 = v31[3];
    v124 = v31[2];
    v125 = v35;
    v36 = v31[1];
    v122 = *v31;
    v123 = v36;
    v37 = v31[3];
    v114 = v124;
    v115 = v37;
    v126 = *(v31 + 32);
    v116 = *(v31 + 32);
    v112 = v122;
    v113 = v34;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = objc_opt_self();
    sub_20B7A3194(&v122, &v107);
    v40 = [v39 bundleForClass_];
    v41 = sub_20C132964();
    v43 = v42;

    v106[0] = v41;
    v106[1] = v43;
    v106[2] = 0;
    v106[3] = 0xE000000000000000;
    sub_20BAAE2C0(v106, v44);
    if (v3)
    {

      v109 = v114;
      v110 = v115;
      v111 = v116;
      v107 = v112;
      v108 = v113;
      sub_20B7A3B8C(&v107);
      return;
    }

    v46 = v45;
  }

  v109 = v114;
  v110 = v115;
  v111 = v116;
  v107 = v112;
  v108 = v113;
  sub_20B7A3B8C(&v107);
  v47 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v48 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v119 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v120 = v48;
  v49 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v117 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v118 = v49;
  v50 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v114 = v119;
  v115 = v50;
  v121 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v116 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v112 = v117;
  v113 = v47;
  sub_20B7A3194(&v117, &v107);
  v51 = sub_20C134404();
  v53 = sub_20BAAEDB4(v51, v52);

  v124 = v114;
  v125 = v115;
  v126 = v116;
  v122 = v112;
  v123 = v113;
  sub_20B7A3B8C(&v122);
  sub_20C134464();
  v55 = v54;
  v56 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_healthKitActivityType);
  v105 = sub_20BB35D44();
  v58 = v57;
  v100 = sub_20BB36438();
  v101 = v59;
  v98 = sub_20BB36B48();
  v99 = v60;
  sub_20BB341E4();
  v96 = v61;
  v97 = v62;
  v94 = sub_20BB3862C();
  v95 = v63;
  v92 = sub_20BB34B5C();
  v93 = v64;
  v90 = sub_20BB3528C();
  v91 = v65;
  sub_20BB379E4(v104);
  v89 = v58;
  sub_20BB36F78(v103);
  v87 = sub_20BB38E5C();
  v88 = v66;
  sub_20BB39748(v127);
  v67 = v102;
  *v102 = v53;
  *(v67 + 1) = v55;
  v68 = v105;
  *(v67 + 2) = v56;
  *(v67 + 3) = v68;
  v69 = v100;
  v70 = v101;
  *(v67 + 4) = v89;
  *(v67 + 5) = v69;
  v72 = v98;
  v71 = v99;
  *(v67 + 6) = v70;
  *(v67 + 7) = v72;
  *(v67 + 8) = v71;
  *(v67 + 9) = v24;
  v73 = v96;
  v74 = v97;
  *(v67 + 10) = v46;
  *(v67 + 11) = v73;
  v75 = v94;
  v76 = v95;
  *(v67 + 12) = v74;
  *(v67 + 13) = v75;
  v77 = v92;
  v78 = v93;
  *(v67 + 14) = v76;
  *(v67 + 15) = v77;
  v80 = v90;
  v79 = v91;
  *(v67 + 16) = v78;
  *(v67 + 17) = v80;
  *(v67 + 18) = v79;
  v81 = type metadata accessor for SessionSummaryViewModel(0);
  sub_20B5DF134(v104, v67 + v81[15], &unk_27C770980, &unk_20C1588A0);
  sub_20B5DF134(v103, v67 + v81[16], &unk_27C765350, &unk_20C184B80);
  v82 = (v67 + v81[17]);
  v83 = v88;
  *v82 = v87;
  v82[1] = v83;
  v84 = (v67 + v81[18]);
  v85 = v127[1];
  *v84 = v127[0];
  v84[1] = v85;
  v84[2] = v127[2];
}

void sub_20BB341E4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v53 = sub_20C135B74();
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1344B4();
  v12 = v11;
  *&v64 = v10;
  *(&v64 + 1) = v11;
  v14 = v13 & 1;
  LOBYTE(v65) = v13 & 1;
  v59 = xmmword_20C14F2B0;
  LOBYTE(v60) = 1;
  sub_20B590B28();
  sub_20B590B7C();
  v15 = sub_20C133BF4();
  sub_20B583F4C(v10, v12, v14);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mindfulMinutesMetric;
    swift_beginAccess();
    sub_20B52F9E8(v1 + v16, v7, &unk_27C7650D0, &unk_20C157480);
    v17 = v8;
    v18 = *(v8 + 48);
    v19 = v53;
    if (v18(v7, 1, v53) == 1)
    {
      sub_20B520158(v7, &unk_27C7650D0, &unk_20C157480);
      v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
      v65 = v20;
      v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
      v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 40);
      v67 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v68 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = [objc_opt_self() bundleForClass_];
      v25 = sub_20C132964();
      v27 = v26;

      v28 = sub_20C138BA4();
      v53 = v1;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_20C14F320;
      v31 = MEMORY[0x277D837D0];
      *(v30 + 56) = MEMORY[0x277D837D0];
      v32 = sub_20B5D91B8();
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      *(v30 + 64) = v32;
      *(v30 + 72) = 0;
      *(v30 + 80) = 0xE000000000000000;

      v33 = sub_20C13C924();
      v35 = v34;

      *&v66 = v21;
      *(&v66 + 1) = v22;
      v36 = v69;
      sub_20BAACEB0(v33, v35, v25, v27, 0, 0xE000000000000000, v29, 0);
      if (v36)
      {

        return;
      }

      v1 = v53;
    }

    else
    {
      v40 = v50;
      (*(v17 + 32))(v50, v7, v19);
      v41 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v42 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v66 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
      v67 = v42;
      v43 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
      v65 = v43;
      v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v61 = v66;
      v62 = v44;
      v68 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v63 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v59 = v64;
      v60 = v41;
      sub_20B7A3194(&v64, &v54);
      v45 = sub_20C135B64();
      v46 = v69;
      sub_20BAAE460(v45, v47);
      if (v46)
      {
        v56 = v61;
        v57 = v62;
        v58 = v63;
        v54 = v59;
        v55 = v60;
        sub_20B7A3B8C(&v54);
        (*(v17 + 8))(v40, v19);
        return;
      }

      v56 = v61;
      v57 = v62;
      v58 = v63;
      v54 = v59;
      v55 = v60;
      sub_20B7A3B8C(&v54);
      (*(v17 + 8))(v40, v19);
    }

    v48 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
    v66 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
    v67 = v48;
    v68 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
    v49 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
    v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
    v65 = v49;
    sub_20BAAE2E0();
  }

  else
  {
    sub_20C13B4A4();
    v37 = sub_20C13BB74();
    v38 = sub_20C13D1F4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_20B517000, v37, v38, "SessionSummaryPresenter: Workout does not support mindful minutes, omitting mindful minutes from summary metrics", v39, 2u);
      MEMORY[0x20F2F6A40](v39, -1, -1);
    }

    (*(v51 + 8))(v4, v52);
  }
}

uint64_t sub_20BB34818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_20C1344B4();
  v12 = v11;
  v28 = v10;
  v29 = v11;
  v14 = v13 & 1;
  v30 = v13 & 1;
  v26 = xmmword_20C14F2B0;
  v15 = 1;
  v27 = 1;
  sub_20B590B28();
  sub_20B590B7C();
  v16 = sub_20C133BF4();
  sub_20B583F4C(v10, v12, v14);
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_remoteBrowsingSource), *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_remoteBrowsingSource + 24));
    sub_20C13B174();
    v17 = sub_20C136C64();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v6, 1, v17) == 1)
    {
      v19 = &qword_27C768690;
      v20 = &unk_20C14FD90;
      v21 = v6;
    }

    else
    {
      sub_20C136B14();
      (*(v18 + 8))(v6, v17);
      v22 = sub_20C135B74();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v9, 1, v22) != 1)
      {
        sub_20C135B64();
        (*(v23 + 8))(v9, v22);
        goto LABEL_8;
      }

      v19 = &unk_27C7650D0;
      v20 = &unk_20C157480;
      v21 = v9;
    }

    sub_20B520158(v21, v19, v20);
LABEL_8:
    sub_20BB2DC80();
    sub_20C13CEB4();
    sub_20C13CE94();
    sub_20C135B54();
    v15 = 0;
  }

  v24 = sub_20C135B74();
  return (*(*(v24 - 8) + 56))(a1, v15, 1, v24);
}

id sub_20BB34B5C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  v54 = sub_20C134514();
  v14 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C1371D4();
  v17 = sub_20B8899CC(0, v16);

  if (!v17)
  {
    sub_20C13B4A4();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20B517000, v23, v24, "Workout does not support distance, omitting distance from summary metrics", v25, 2u);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    (*(v55 + 8))(v4, v56);
    return 0;
  }

  if (!sub_20BB2EC50())
  {
    sub_20C13B4A4();
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20B517000, v26, v27, "Workout device does not support distance, omitting pace from summary metrics", v28, 2u);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    (*(v55 + 8))(v7, v56);
    return 0;
  }

  v18 = v0;
  v19 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_distanceMetric;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v13, &unk_27C765050, &unk_20C153C10);
  v20 = v14;
  v21 = *(v14 + 48);
  v22 = v54;
  if (v21(v13, 1, v54) == 1)
  {
    sub_20B520158(v13, &unk_27C765050, &unk_20C153C10);
  }

  else
  {
    (*(v20 + 32))(v53, v13, v22);
    v30 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
    swift_beginAccess();
    sub_20B52F9E8(v18 + v30, v10, &unk_27C768AC0, &unk_20C1523B0);
    LOBYTE(v30) = MEMORY[0x20F2EF470](v10, v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
    sub_20B520158(v10, &unk_27C768AC0, &unk_20C1523B0);
    if (v30)
    {
      v31 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v32 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v70 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
      v71 = v32;
      v33 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v68 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
      v69 = v33;
      v34 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v65 = v70;
      v66 = v34;
      v72 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v67 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v63 = v68;
      v64 = v31;
      sub_20B7A3194(&v68, &v58);
      v35 = v53;
      sub_20C134504();
      v36 = v73;
      sub_20BAABFD0(v37);
      if (v36)
      {
        v60 = v65;
        v61 = v66;
        v62 = v67;
        v58 = v63;
        v59 = v64;
        sub_20B7A3B8C(&v58);
        return (*(v20 + 8))(v35, v22);
      }

      v60 = v65;
      v61 = v66;
      v62 = v67;
      v58 = v63;
      v59 = v64;
      sub_20B7A3B8C(&v58);
      (*(v20 + 8))(v35, v22);
      goto LABEL_20;
    }

    (*(v20 + 8))(v53, v22);
  }

  v38 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v39 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v70 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v71 = v39;
  v40 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v68 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v69 = v40;
  v41 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v65 = v70;
  v66 = v41;
  v72 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v67 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v63 = v68;
  v64 = v38;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = objc_opt_self();
  sub_20B7A3194(&v68, &v58);
  v44 = [v43 bundleForClass_];
  v45 = sub_20C132964();
  v47 = v46;

  v57[0] = v45;
  v57[1] = v47;
  v57[2] = 0;
  v57[3] = 0xE000000000000000;
  v48 = v73;
  sub_20BAAE0F8(v57, v49);
  if (v48)
  {

    v60 = v65;
    v61 = v66;
    v62 = v67;
    v58 = v63;
    v59 = v64;
    return sub_20B7A3B8C(&v58);
  }

  v60 = v65;
  v61 = v66;
  v62 = v67;
  v58 = v63;
  v59 = v64;
  sub_20B7A3B8C(&v58);
LABEL_20:
  v50 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v70 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v71 = v50;
  v72 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v51 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v68 = *(v18 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v69 = v51;
  return sub_20BAABE50();
}

id sub_20BB3528C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v76 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v76 - v9;
  v10 = sub_20C134514();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00, &unk_20C152400);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v76 - v16;
  v18 = sub_20C133494();
  v80 = *(v18 - 8);
  v81 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C1371D4();
  v22 = sub_20B8899CC(0, v21);

  if (!v22)
  {
    sub_20C13B4A4();
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20B517000, v30, v31, "Workout does not support distance, omitting pace from summary metrics", v32, 2u);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    (*(v82 + 8))(v4, v83);
    return 0;
  }

  if (!sub_20BB2EC50())
  {
    sub_20C13B4A4();
    v33 = sub_20C13BB74();
    v34 = sub_20C13D1F4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20B517000, v33, v34, "Workout device does not support distance, omitting pace from summary metrics", v35, 2u);
      MEMORY[0x20F2F6A40](v35, -1, -1);
    }

    (*(v82 + 8))(v7, v83);
    return 0;
  }

  v23 = v0;
  v24 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_paceMetric;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v24, v17, &unk_27C768B00, &unk_20C152400);
  v25 = v80;
  v26 = v81;
  if ((*(v80 + 48))(v17, 1, v81) == 1)
  {
    sub_20B520158(v17, &unk_27C768B00, &unk_20C152400);
    v27 = v78;
    v28 = v79;
    v29 = v77;
  }

  else
  {
    v37 = *(v25 + 32);
    v83 = v20;
    v37(v20, v17, v26);
    v38 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
    swift_beginAccess();
    sub_20B52F9E8(v23 + v38, v14, &unk_27C768AC0, &unk_20C1523B0);
    LOBYTE(v38) = MEMORY[0x20F2EF470](v14, v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
    sub_20B520158(v14, &unk_27C768AC0, &unk_20C1523B0);
    v27 = v78;
    v28 = v79;
    v29 = v77;
    if (v38)
    {
      v39 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v98 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
      v99 = v39;
      v100 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v40 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v96 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
      v97 = v40;
      sub_20B7A3194(&v96, &v91);
      v41 = v83;
      sub_20C133484();
      v43 = v42;
      v93 = v98;
      v94 = v99;
      v95 = v100;
      v91 = v96;
      v92 = v97;
      v44 = v96.n128_i64[1];
      ObjectType = swift_getObjectType();
      v46 = sub_20BEC6E1C(ObjectType, v44, v43);
      v47 = v101;
      sub_20BB09EF8(v44, &v86, v46, 1.0);
      if (v47)
      {
        sub_20B7A3B8C(&v96);
        return (*(v80 + 8))(v41, v81);
      }

      v84 = v86;
      v85 = v87;
      sub_20BAAE2A0(&v84, v86);

      sub_20B7A3B8C(&v96);
      (*(v80 + 8))(v41, v81);
      goto LABEL_26;
    }

    (*(v25 + 8))(v83, v26);
  }

  v48 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_distanceMetric;
  swift_beginAccess();
  v49 = v23 + v48;
  v50 = v76;
  sub_20B52F9E8(v49, v76, &unk_27C765050, &unk_20C153C10);
  if ((*(v27 + 48))(v50, 1, v28) == 1)
  {
    sub_20B520158(v50, &unk_27C765050, &unk_20C153C10);
  }

  else
  {
    (*(v27 + 32))(v29, v50, v28);
    sub_20C134504();
    if (v51 > 0.0)
    {
      v52 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
      swift_beginAccess();
      sub_20B52F9E8(v23 + v52, v14, &unk_27C768AC0, &unk_20C1523B0);
      LOBYTE(v52) = MEMORY[0x20F2EF470](v14, v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
      sub_20B520158(v14, &unk_27C768AC0, &unk_20C1523B0);
      if (v52)
      {
        v53 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
        v98 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
        v99 = v53;
        v100 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
        v54 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
        v96 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
        v97 = v54;
        sub_20B7A3194(&v96, &v91);
        sub_20C134504();
        v56 = v55;
        v57 = sub_20BB2DC80();
        v93 = v98;
        v94 = v99;
        v95 = v100;
        v91 = v96;
        v92 = v97;
        v58 = v96.n128_i64[1];
        v59 = swift_getObjectType();
        v60 = sub_20BEC6E1C(v59, v58, v56);
        v61 = v101;
        sub_20BB09EF8(v58, &v86, v60, v57);
        if (v61)
        {
          sub_20B7A3B8C(&v96);
          return (*(v27 + 8))(v29, v28);
        }

        v84 = v86;
        v85 = v87;
        sub_20BAAE2A0(&v84, v86);

        sub_20B7A3B8C(&v96);
        (*(v27 + 8))(v29, v28);
        goto LABEL_26;
      }
    }

    (*(v27 + 8))(v29, v28);
  }

  v62 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v63 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v98 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v99 = v63;
  v64 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v96 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v97 = v64;
  v65 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v93 = v98;
  v94 = v65;
  v100 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v95 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v91 = v96;
  v92 = v62;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = objc_opt_self();
  sub_20B7A3194(&v96, &v86);
  v68 = [v67 bundleForClass_];
  v69 = sub_20C132964();
  v71 = v70;

  v84.n128_u64[0] = v69;
  v84.n128_u64[1] = v71;
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;
  v72 = v101;
  sub_20BAAE2A0(&v84, v73);
  if (v72)
  {

    v88 = v93;
    v89 = v94;
    v90 = v95;
    v86 = v91;
    v87 = v92;
    return sub_20B7A3B8C(&v86);
  }

  v88 = v93;
  v89 = v94;
  v90 = v95;
  v86 = v91;
  v87 = v92;
  sub_20B7A3B8C(&v86);
LABEL_26:
  v74 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v98 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v99 = v74;
  v100 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v75 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v96 = *(v23 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v97 = v75;
  return sub_20BAAE118();
}

id sub_20BB35D44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v50 - v5;
  v6 = sub_20C133B04();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v63 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v64 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v61 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v62 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v68 = v63;
  v69 = v12;
  v65 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v70 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v66 = v61;
  v67 = v9;
  sub_20BAADCAC();
  sub_20BAAD990();
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B5268B4(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
  v15 = sub_20C13C744();

  v16 = [v13 initWithString:v14 attributes:v15];

  v17 = sub_20C1371D4();
  LOBYTE(v15) = sub_20B8899CC(2, v17);

  if ((v15 & 1) == 0 || sub_20BB2E62C() == 2)
  {
    goto LABEL_3;
  }

  v19 = sub_20C134B34();
  v21 = v20;
  if (v19 == sub_20C134B34() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_20C13DFF4();

    if ((v23 & 1) == 0)
    {
LABEL_3:

      return 0;
    }
  }

  v24 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_energyMetric;
  swift_beginAccess();
  v25 = v51;
  sub_20B52F9E8(v1 + v24, v51, &qword_27C768B30, &unk_20C152440);
  v26 = v53;
  v27 = v54;
  if ((*(v53 + 48))(v25, 1, v54) == 1)
  {
    sub_20B520158(v25, &qword_27C768B30, &unk_20C152440);
LABEL_16:
    v38 = v8[1];
    v39 = v8[3];
    v68 = v8[2];
    v69 = v39;
    v40 = v8[1];
    v66 = *v8;
    v67 = v40;
    v41 = v8[3];
    v63 = v68;
    v64 = v41;
    v70 = *(v8 + 32);
    v65 = *(v8 + 32);
    v61 = v66;
    v62 = v38;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v43 = objc_opt_self();
    sub_20B7A3194(&v66, &v56);
    v44 = [v43 bundleForClass_];
    v45 = sub_20C132964();
    v47 = v46;

    v55[0] = v45;
    v55[1] = v47;
    v55[2] = 0;
    v55[3] = 0xE000000000000000;
    v48 = v71;
    sub_20BAAE0D8(v55, v49);
    if (v48)
    {
    }

    v58 = v63;
    v59 = v64;
    v60 = v65;
    v56 = v61;
    v57 = v62;
    sub_20B7A3B8C(&v56);
    return v16;
  }

  (*(v26 + 32))(v52, v25, v27);
  v28 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
  swift_beginAccess();
  v29 = v50;
  sub_20B52F9E8(v1 + v28, v50, &unk_27C768AC0, &unk_20C1523B0);
  LOBYTE(v28) = MEMORY[0x20F2EF470](v29, v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
  sub_20B520158(v29, &unk_27C768AC0, &unk_20C1523B0);
  if ((v28 & 1) == 0)
  {
    (*(v26 + 8))(v52, v54);
    goto LABEL_16;
  }

  v30 = v54;
  v31 = v8[1];
  v32 = v8[3];
  v68 = v8[2];
  v69 = v32;
  v33 = v8[1];
  v66 = *v8;
  v67 = v33;
  v34 = v8[3];
  v63 = v68;
  v64 = v34;
  v70 = *(v8 + 32);
  v65 = *(v8 + 32);
  v61 = v66;
  v62 = v31;
  sub_20B7A3194(&v66, &v56);
  v35 = v52;
  sub_20C133AF4();
  v36 = v71;
  sub_20BAAB954(v37);
  if (v36)
  {
  }

  v58 = v63;
  v59 = v64;
  v60 = v65;
  v56 = v61;
  v57 = v62;
  sub_20B7A3B8C(&v56);
  (*(v53 + 8))(v35, v30);
  return v16;
}

id sub_20BB36438()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v52 - v5;
  v6 = sub_20C133B04();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v67 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v68 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v65 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v66 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v72 = v67;
  v73 = v12;
  v69 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v74 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v70 = v65;
  v71 = v9;
  sub_20BAADDCC();
  sub_20BAAD990();
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B5268B4(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
  v15 = sub_20C13C744();

  v16 = [v13 initWithString:v14 attributes:v15];

  v17 = sub_20C1371D4();
  LOBYTE(v15) = sub_20B8899CC(2, v17);

  if ((v15 & 1) == 0 || sub_20BB2E62C() == 2)
  {
    goto LABEL_3;
  }

  v19 = sub_20C134B34();
  v21 = v20;
  if (v19 == sub_20C134B34() && v21 == v22)
  {

    v23 = v57;
  }

  else
  {
    v24 = sub_20C13DFF4();

    v23 = v57;
    if ((v24 & 1) == 0)
    {
LABEL_3:

      return 0;
    }
  }

  v25 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_energyMetric;
  swift_beginAccess();
  v26 = v54;
  sub_20B52F9E8(v1 + v25, v54, &qword_27C768B30, &unk_20C152440);
  v27 = v56;
  if ((*(v56 + 48))(v26, 1, v23) == 1)
  {
    sub_20B520158(v26, &qword_27C768B30, &unk_20C152440);
LABEL_16:
    v40 = v8[1];
    v41 = v8[3];
    v72 = v8[2];
    v73 = v41;
    v42 = v8[1];
    v70 = *v8;
    v71 = v42;
    v43 = v8[3];
    v67 = v72;
    v68 = v43;
    v74 = *(v8 + 32);
    v69 = *(v8 + 32);
    v65 = v70;
    v66 = v40;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v45 = objc_opt_self();
    sub_20B7A3194(&v70, &v60);
    v46 = [v45 bundleForClass_];
    v47 = sub_20C132964();
    v49 = v48;

    v59[0] = v47;
    v59[1] = v49;
    v59[2] = 0;
    v59[3] = 0xE000000000000000;
    v50 = v58;
    sub_20BAAE0D8(v59, v51);
    if (v50)
    {
    }

    v62 = v67;
    v63 = v68;
    v64 = v69;
    v60 = v65;
    v61 = v66;
    sub_20B7A3B8C(&v60);
    return v16;
  }

  (*(v27 + 32))(v55, v26, v23);
  v28 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
  swift_beginAccess();
  v29 = v53;
  sub_20B52F9E8(v1 + v28, v53, &unk_27C768AC0, &unk_20C1523B0);
  LOBYTE(v28) = MEMORY[0x20F2EF470](v29, v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
  sub_20B520158(v29, &unk_27C768AC0, &unk_20C1523B0);
  if ((v28 & 1) == 0)
  {
    (*(v27 + 8))(v55, v23);
    goto LABEL_16;
  }

  v30 = v55;
  sub_20C133AF4();
  v32 = v31;
  sub_20C133AD4();
  v34 = v32 + v33;
  v35 = v8[1];
  v36 = v8[3];
  v72 = v8[2];
  v73 = v36;
  v37 = v8[1];
  v70 = *v8;
  v71 = v37;
  v38 = v8[3];
  v67 = v72;
  v68 = v38;
  v74 = *(v8 + 32);
  v69 = *(v8 + 32);
  v65 = v70;
  v66 = v35;
  sub_20B7A3194(&v70, &v60);
  v39 = v58;
  sub_20BAAB954(v34);
  if (v39)
  {
  }

  v62 = v67;
  v63 = v68;
  v64 = v69;
  v60 = v65;
  v61 = v66;
  sub_20B7A3B8C(&v60);
  (*(v56 + 8))(v30, v23);
  return v16;
}

id sub_20BB36B48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_20C133DD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v38 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v39 = v12;
  v40 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v36 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v37 = v13;
  v14 = sub_20BAAE77C();
  v15 = sub_20C1371D4();
  v16 = sub_20B8899CC(4, v15);

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_cadenceMetric;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v17, v7, &unk_27C7687F0, &unk_20C153C20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_20B520158(v7, &unk_27C7687F0, &unk_20C153C20);
    return 0;
  }

  v18 = v29;
  (*(v9 + 32))(v29, v7, v8);
  v19 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v4, &unk_27C768AC0, &unk_20C1523B0);
  v20 = MEMORY[0x20F2EF470](v4, v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
  sub_20B520158(v4, &unk_27C768AC0, &unk_20C1523B0);
  if ((v20 & 1) == 0 || (sub_20C133DA4(), v21 <= 0.0))
  {
    (*(v9 + 8))(v18, v8);
LABEL_9:

    return 0;
  }

  v22 = *v11;
  v23 = v11[1];
  v24 = *(v11 + 2);
  v37 = *(v11 + 1);
  v38 = v24;
  v39 = *(v11 + 3);
  v40 = *(v11 + 32);
  sub_20C133DA4();
  *&v36 = v22;
  *(&v36 + 1) = v23;
  v26 = v41;
  sub_20BB093B8(&v33, floor(v25));
  if (v26)
  {

    (*(v9 + 8))(v18, v8);
  }

  else
  {
    v30 = v33;
    v31 = v34;
    v32 = v35;
    sub_20BAB02C4(&v30, v33);
    (*(v9 + 8))(v18, v8);
  }

  return v14;
}

void sub_20BB36F78(uint64_t a1@<X8>)
{
  v3 = v1;
  v87 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v72 - v7;
  v8 = sub_20C1337A4();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v72 - v11;
  MEMORY[0x28223BE20](v12);
  v73 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v72 - v15;
  v17 = sub_20C135364();
  v78 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769748, qword_20C168F00);
  MEMORY[0x28223BE20](v20 - 8);
  v81 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - v23;
  if ((sub_20C1371F4() & 1) == 0 || (v25 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout, swift_beginAccess(), v77 = v2, sub_20B52F9E8(v1 + v25, v24, &unk_27C768AC0, &unk_20C1523B0), LOBYTE(v25) = MEMORY[0x20F2EF470](v24, v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider), sub_20B520158(v24, &unk_27C768AC0, &unk_20C1523B0), (v25 & 1) == 0))
  {
    v32 = type metadata accessor for SummaryBurnBarMetricViewModel(0);
    (*(*(v32 - 8) + 56))(v87, 1, 1, v32);
    return;
  }

  v26 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_userMassMetric;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v26, v16, &unk_27C765080, &unk_20C157450);
  v27 = v78;
  v28 = v3;
  if ((*(v78 + 48))(v16, 1, v17) == 1)
  {
    sub_20B520158(v16, &unk_27C765080, &unk_20C157450);
    v29 = 1;
    v31 = v79;
    v30 = v80;
    goto LABEL_12;
  }

  (*(v27 + 32))(v19, v16, v17);
  v33 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric;
  swift_beginAccess();
  v34 = v3 + v33;
  v35 = v75;
  sub_20B52F9E8(v34, v75, &unk_27C768AE0, &unk_20C1523E0);
  v31 = v79;
  v30 = v80;
  if ((*(v79 + 48))(v35, 1, v80) == 1)
  {
    (*(v27 + 8))(v19, v17);
    sub_20B520158(v35, &unk_27C768AE0, &unk_20C1523E0);
  }

  else
  {
    v36 = v73;
    (*(v31 + 32))(v73, v35, v30);
    sub_20C133714();
    if (v37 > 0.0)
    {
      v38 = v72;
      sub_20C133754();
      sub_20C133764();
      v39 = *(v31 + 8);
      v39(v38, v30);
      v39(v73, v30);
      (*(v78 + 8))(v19, v17);
      v29 = 0;
      goto LABEL_12;
    }

    (*(v31 + 8))(v36, v30);
    (*(v27 + 8))(v19, v17);
  }

  v29 = 1;
LABEL_12:
  v40 = sub_20C133CB4();
  v41 = v81;
  (*(*(v40 - 8) + 56))(v81, v29, 1, v40);
  v42 = sub_20C138104();
  v43 = 0;
  if (v42 != sub_20C138104())
  {
LABEL_21:
    v66 = v87;
    sub_20B52F9E8(v41, v87, &qword_27C769748, qword_20C168F00);
    v67 = sub_20BB2DFE8();
    v68 = *(v28 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
    v84 = *(v28 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
    v85 = v68;
    v86 = *(v28 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
    v69 = *(v28 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
    v82 = *(v28 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
    v83 = v69;
    v70 = sub_20BAB0020();

    sub_20B520158(v41, &qword_27C769748, qword_20C168F00);
    v71 = type metadata accessor for SummaryBurnBarMetricViewModel(0);
    *(v66 + v71[5]) = v67 & 1;
    *(v66 + v71[6]) = v70;
    *(v66 + v71[7]) = v43;
    (*(*(v71 - 1) + 56))(v66, 0, 1, v71);
    return;
  }

  v44 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric;
  swift_beginAccess();
  v45 = v76;
  sub_20B52F9E8(v28 + v44, v76, &unk_27C768AE0, &unk_20C1523E0);
  if ((*(v31 + 48))(v45, 1, v30) == 1)
  {
    sub_20B520158(v45, &unk_27C768AE0, &unk_20C1523E0);
LABEL_20:
    v43 = 0;
    goto LABEL_21;
  }

  v46 = v74;
  (*(v31 + 32))(v74, v45, v30);
  sub_20C133714();
  if (v47 <= 0.0)
  {
    (*(v31 + 8))(v46, v30);
    goto LABEL_20;
  }

  v48 = v72;
  (*(v31 + 16))(v72, v46, v30);
  sub_20BEC5328(v48);
  SessionBurnBarPackPosition.description.getter(v49);
  v50 = [objc_opt_self() smu:*MEMORY[0x277D76920] preferredFontForTextStyle:1024 variant:?];
  v51 = [objc_opt_self() energyColors];
  if (v51)
  {
    v52 = v51;
    v78 = v28;
    v53 = [v51 nonGradientTextColor];

    if (v53)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F320;
      v55 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v56 = sub_20B51C88C(0, &qword_27C767A60, 0x277D74300);
      *(inited + 40) = v50;
      v57 = *MEMORY[0x277D740C0];
      *(inited + 64) = v56;
      *(inited + 72) = v57;
      *(inited + 104) = sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
      *(inited + 80) = v53;
      v58 = v55;
      v59 = v50;
      v60 = v57;
      v61 = v53;
      sub_20B6B1650(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978, &unk_20C163AF0);
      swift_arrayDestroy();
      v62 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v63 = sub_20C13C914();

      type metadata accessor for Key(0);
      sub_20B5268B4(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
      v64 = sub_20C13C744();

      v43 = [v62 initWithString:v63 attributes:v64];

      (*(v79 + 8))(v74, v80);
      v65 = v43;
      v28 = v78;
      v41 = v81;
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20BB379E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v3 = sub_20C13BB84();
  v114 = *(v3 - 8);
  v115 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v113 = &v98 - v7;
  v8 = sub_20C133984();
  v9 = *(v8 - 8);
  v104 = v8;
  v105 = v9;
  MEMORY[0x28223BE20](v8);
  v103 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - v12;
  v14 = sub_20C134B64();
  v107 = *(v14 - 1);
  v108 = v14;
  MEMORY[0x28223BE20](v14);
  v106 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v98 - v17;
  v19 = sub_20C136484();
  v111 = *(v19 - 8);
  v112 = v19;
  MEMORY[0x28223BE20](v19);
  v109 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v98 - v22;
  v24 = sub_20C133D84();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v110 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_20C1371B4() & 1) == 0)
  {
    sub_20C13B4A4();
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v31, v32, "Workout not eligible to rings to display", v33, 2u);
      MEMORY[0x20F2F6A40](v33, -1, -1);
    }

    (*(v114 + 8))(v5, v115);
    goto LABEL_12;
  }

  v27 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_activityRings;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v27, v23, &unk_27C765120, &unk_20C152470);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &unk_27C765120;
    v29 = &unk_20C152470;
    v30 = v23;
LABEL_9:
    sub_20B520158(v30, v28, v29);
    v38 = v113;
    sub_20C13B4A4();
    v39 = sub_20C13BB74();
    v40 = sub_20C13D1F4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_20B517000, v39, v40, "Exiting makeActivityRingsViewModel() early because no activityRings, workoutDeviceConnection", v41, 2u);
      MEMORY[0x20F2F6A40](v41, -1, -1);
    }

    (*(v114 + 8))(v38, v115);
    goto LABEL_12;
  }

  v102 = v13;
  v34 = v110;
  v100 = *(v25 + 32);
  v101 = v25 + 32;
  v100(v110, v23, v24);
  v35 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v35, v18, &unk_27C765CB0, &unk_20C1523C0);
  v37 = v111;
  v36 = v112;
  if ((*(v111 + 48))(v18, 1, v112) == 1)
  {
    (*(v25 + 8))(v34, v24);
    v28 = &unk_27C765CB0;
    v29 = &unk_20C1523C0;
    v30 = v18;
    goto LABEL_9;
  }

  v114 = v25;
  v115 = v24;
  v44 = v109;
  (*(v37 + 32))(v109, v18, v36);
  v45 = v34;
  if ((sub_20B8B5FD0() & 1) == 0)
  {
    (*(v37 + 8))(v44, v36);
    (*(v114 + 8))(v34, v115);
LABEL_12:
    v42 = type metadata accessor for SummaryActivityRingsMetricViewModel(0);
    return (*(*(v42 - 8) + 56))(v116, 1, 1, v42);
  }

  v46 = (v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v47 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v140 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v141 = v47;
  v142 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v48 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v138 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v139 = v48;
  v49 = sub_20C133D24();
  v51 = v50;
  *&v133 = v49;
  *(&v133 + 1) = v50;
  v53 = v52 & 1;
  LOBYTE(v134) = v52 & 1;
  LOBYTE(v128) = 1;
  v54 = sub_20B815F98();
  sub_20B815FEC();
  v113 = v54;
  LOBYTE(v54) = sub_20C133C04();
  sub_20B583F4C(v49, v51, v53);
  v135 = v140;
  v136 = v141;
  v137 = v142;
  v133 = v138;
  v134 = v139;
  if (v54)
  {
    v55 = sub_20BAAF004();
  }

  else
  {
    v55 = sub_20BAAF18C();
  }

  v56 = v55;
  v57 = v143;
  v58 = v106;
  v59 = v46[3];
  v135 = v46[2];
  v136 = v59;
  v137 = *(v46 + 32);
  v60 = v46[1];
  v133 = *v46;
  v134 = v60;
  sub_20C133D34();
  v61 = sub_20C133D24();
  sub_20B583F4C(v61, v63, v62 & 1);
  sub_20BAAF30C(v58);
  if (v57)
  {

    v107[1](v58, v108);
    (*(v111 + 8))(v109, v112);
    return (*(v114 + 8))(v45, v115);
  }

  v99 = v64;
  v106 = v56;
  v107[1](v58, v108);
  v65 = v46[3];
  v130 = v46[2];
  v131 = v65;
  v132 = *(v46 + 32);
  v66 = v46[1];
  v128 = *v46;
  v129 = v66;
  sub_20B7A3194(&v128, &v123);
  sub_20C133D64();
  v67 = sub_20C133D24();
  v69 = v68;
  v71 = v70;
  *&v123 = v67;
  *(&v123 + 1) = v68;
  v72 = v70 & 1;
  LOBYTE(v124) = v70 & 1;
  LOBYTE(v118) = 1;
  if (sub_20C133C04())
  {
    v143 = 0;
    v73 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v74 = sub_20C13C914();
    v108 = [v73 initWithString_];

    v75 = v67;
    v76 = v69;
    v77 = v72;
  }

  else
  {
    v126 = v131;
    v127 = v132;
    v124 = v129;
    v125 = v130;
    v123 = v128;
    sub_20BAAF484(v102);
    v108 = v78;
    v143 = 0;
    v77 = v71 & 1;
    v75 = v67;
    v76 = v69;
  }

  sub_20B583F4C(v75, v76, v77);
  v79 = *(v105 + 8);
  v105 += 8;
  v107 = v79;
  (v79)(v102, v104);
  sub_20B7A3B8C(&v128);
  v80 = v46[2];
  v126 = v46[3];
  v127 = *(v46 + 32);
  v81 = *v46;
  v124 = v46[1];
  v125 = v80;
  v123 = v81;
  sub_20B7A3194(&v123, &v118);
  v82 = v103;
  sub_20C133D44();
  v83 = sub_20C133D24();
  v85 = v84;
  v87 = v86;
  *&v118 = v83;
  *(&v118 + 1) = v84;
  v88 = v86 & 1;
  LOBYTE(v119) = v86 & 1;
  v117 = 1;
  if (sub_20C133C04())
  {
    v89 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v90 = sub_20C13C914();
    v91 = [v89 initWithString_];

    sub_20B583F4C(v83, v85, v88);
    v92 = v111;
    v93 = v109;
  }

  else
  {
    v120 = v125;
    v121 = v126;
    v122 = v127;
    v118 = v123;
    v119 = v124;
    v94 = v143;
    sub_20BAAF890(v82);
    v143 = v94;
    v93 = v109;
    if (v94)
    {

      sub_20B583F4C(v83, v85, v87 & 1);
      (v107)(v82, v104);
      sub_20B7A3B8C(&v123);
      (*(v111 + 8))(v93, v112);
      return (*(v114 + 8))(v110, v115);
    }

    v91 = v95;
    sub_20B583F4C(v83, v85, v87 & 1);
    v92 = v111;
  }

  (v107)(v82, v104);
  sub_20B7A3B8C(&v123);
  (*(v92 + 8))(v93, v112);
  v96 = v116;
  v100(v116, v110, v115);
  v97 = type metadata accessor for SummaryActivityRingsMetricViewModel(0);
  *&v96[v97[5]] = v99;
  *&v96[v97[6]] = v108;
  *&v96[v97[7]] = v91;
  *&v96[v97[8]] = v106;
  return (*(*(v97 - 1) + 56))(v96, 0, 1, v97);
}

id sub_20BB3862C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134914();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v70 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v70 - v15;
  if (sub_20BB2EFEC())
  {
    v17 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout;
    swift_beginAccess();
    sub_20B52F9E8(v0 + v17, v16, &unk_27C768AC0, &unk_20C1523B0);
    v18 = MEMORY[0x20F2EF470](v16, v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider);
    sub_20B520158(v16, &unk_27C768AC0, &unk_20C1523B0);
    if (v18)
    {
      v19 = sub_20C1344B4();
      v21 = v20;
      v90.n128_u64[0] = v19;
      v90.n128_u64[1] = v20;
      v23 = v22 & 1;
      LOBYTE(v91) = v22 & 1;
      v85 = xmmword_20C14F2B0;
      LOBYTE(v86) = 1;
      sub_20B590B28();
      sub_20B590B7C();
      v24 = sub_20C133BF4();
      sub_20B583F4C(v19, v21, v23);
      v25 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_heartRateMetric;
      v26 = v71;
      v27 = (v71 + 48);
      if (v24)
      {
        swift_beginAccess();
        sub_20B52F9E8(v1 + v25, v13, &unk_27C7650E0, &unk_20C157490);
        v28 = v72;
        if ((*v27)(v13, 1, v72))
        {
          sub_20B520158(v13, &unk_27C7650E0, &unk_20C157490);
          v29 = 0.0;
        }

        else
        {
          v51 = v70;
          (*(v26 + 16))(v70, v13, v28);
          sub_20B520158(v13, &unk_27C7650E0, &unk_20C157490);
          sub_20C1348A4();
          v29 = v52;
          (*(v26 + 8))(v51, v28);
        }

        v53 = v73;
        v54 = (v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
        v55 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
        v92 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
        v93 = v55;
        v94 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
        v56 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
        v90 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
        v91 = v56;
        v33 = sub_20BAAEA7C();
        v57 = *v54;
        v58 = v54[1];
        v59 = *(v54 + 2);
        v86 = *(v54 + 1);
        v87 = v59;
        v88 = *(v54 + 3);
        v89 = *(v54 + 32);
        *&v85 = v57;
        *(&v85 + 1) = v58;
        v60 = v53;
        sub_20BB09168(&v80, v29);
        if (v53)
        {
LABEL_17:

          return v33;
        }
      }

      else
      {
        swift_beginAccess();
        sub_20B52F9E8(v1 + v25, v10, &unk_27C7650E0, &unk_20C157490);
        v49 = v72;
        if ((*v27)(v10, 1, v72))
        {
          sub_20B520158(v10, &unk_27C7650E0, &unk_20C157490);
          v50 = 0.0;
        }

        else
        {
          v61 = v70;
          (*(v26 + 16))(v70, v10, v49);
          sub_20B520158(v10, &unk_27C7650E0, &unk_20C157490);
          sub_20C1348E4();
          v50 = v62;
          (*(v26 + 8))(v61, v49);
        }

        v63 = (v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
        v64 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
        v92 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
        v93 = v64;
        v94 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
        v65 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
        v90 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
        v91 = v65;
        v33 = sub_20BAAE8FC();
        v66 = *v63;
        v67 = v63[1];
        v68 = *(v63 + 2);
        v86 = *(v63 + 1);
        v87 = v68;
        v88 = *(v63 + 3);
        v89 = *(v63 + 32);
        *&v85 = v66;
        *(&v85 + 1) = v67;
        v60 = v73;
        sub_20BB09168(&v80, v50);
        if (v60)
        {
          goto LABEL_17;
        }
      }

      v75 = v80;
      v76 = v81;
      sub_20BAAEBFC(&v75, v80);
      if (v60)
      {
      }
    }

    else
    {
      v34 = v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder;
      v35 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v87 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
      v88 = v35;
      v89 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v36 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v85 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
      v86 = v36;
      v33 = sub_20BAAE8FC();
      v37 = *(v34 + 16);
      v38 = *(v34 + 48);
      v92 = *(v34 + 32);
      v93 = v38;
      v39 = *(v34 + 16);
      v90 = *v34;
      v91 = v39;
      v40 = *(v34 + 48);
      v82 = v92;
      v83 = v40;
      v94 = *(v34 + 64);
      v84 = *(v34 + 64);
      v80 = v90;
      v81 = v37;
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v42 = objc_opt_self();
      sub_20B7A3194(&v90, &v75);
      v43 = [v42 bundleForClass_];
      v44 = sub_20C132964();
      v46 = v45;

      v74[0] = v44;
      v74[1] = v46;
      v74[2] = 0;
      v74[3] = 0xE000000000000000;
      v47 = v73;
      sub_20BAAEBFC(v74, v48);
      if (v47)
      {
      }

      v77 = v82;
      v78 = v83;
      v79 = v84;
      v75 = v80;
      v76 = v81;
      sub_20B7A3B8C(&v75);
    }
  }

  else
  {
    sub_20C13B4A4();
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20B517000, v30, v31, "Workout device does not support heart rate.", v32, 2u);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v33;
}

id sub_20BB38E5C()
{
  v1 = v0;
  v91 = sub_20C133A74();
  v111 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_20C1382B4();
  v93 = *(v89 - 1);
  MEMORY[0x28223BE20](v89);
  v88 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_20C1333E4();
  v92 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v77 - v6;
  v8 = sub_20C1344C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_upNextCatalogWorkout;
  swift_beginAccess();
  v81 = v1;
  sub_20B52F9E8(v1 + v12, v7, &qword_27C766E88, &qword_20C16E290);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20B520158(v7, &qword_27C766E88, &qword_20C16E290);
    return 0;
  }

  v78 = v9;
  v79 = v8;
  (*(v9 + 32))(v11, v7, v8);
  v14 = sub_20C134354();
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  v80 = v11;
  if (v15)
  {
    *&v107[0] = MEMORY[0x277D84F90];
    sub_20B526D44(0, v15, 0);
    v17 = *&v107[0];
    v18 = *(v92 + 16);
    v19 = *(v92 + 80);
    v77[1] = v14;
    v20 = v14 + ((v19 + 32) & ~v19);
    v84 = *(v92 + 72);
    v85 = v18;
    v92 += 16;
    v83 = (v92 - 8);
    do
    {
      v21 = v86;
      v22 = v87;
      v85(v86, v20, v87);
      v23 = sub_20C1333D4();
      v25 = v24;
      (*v83)(v21, v22);
      *&v107[0] = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_20B526D44((v26 > 1), v27 + 1, 1);
        v17 = *&v107[0];
      }

      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += v84;
      --v15;
    }

    while (v15);
    v85 = v17;

    v11 = v80;
    v16 = MEMORY[0x277D84F90];
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  v29 = sub_20C1344A4();
  v30 = *(v29 + 16);
  if (v30)
  {
    *&v107[0] = v16;
    sub_20B526D44(0, v30, 0);
    v31 = *&v107[0];
    v92 = *(v93 + 16);
    v93 += 16;
    v32 = (*(v93 + 64) + 32) & ~*(v93 + 64);
    v84 = v29;
    v33 = v29 + v32;
    v34 = *(v93 + 56);
    v86 = (v93 - 8);
    v87 = v34;
    do
    {
      v35 = v88;
      v36 = v89;
      (v92)(v88, v33, v89);
      v37 = sub_20C1382A4();
      v39 = v38;
      (*v86)(v35, v36);
      *&v107[0] = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_20B526D44((v40 > 1), v41 + 1, 1);
        v31 = *&v107[0];
      }

      *(v31 + 16) = v41 + 1;
      v42 = v31 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v33 += v87;
      --v30;
    }

    while (v30);
    v88 = v31;

    v11 = v80;
    v16 = MEMORY[0x277D84F90];
  }

  else
  {

    v88 = MEMORY[0x277D84F90];
  }

  v43 = sub_20C134424();
  v44 = *(v43 + 16);
  if (v44)
  {
    *&v107[0] = v16;
    sub_20B526D44(0, v44, 0);
    v16 = *&v107[0];
    v45 = *(v111 + 16);
    v46 = *(v111 + 80);
    v87 = v43;
    v47 = v43 + ((v46 + 32) & ~v46);
    v92 = *(v111 + 72);
    v93 = v45;
    v111 += 16;
    v89 = (v111 - 8);
    do
    {
      v48 = v90;
      v49 = v91;
      (v93)(v90, v47, v91);
      v50 = sub_20C133A54();
      v52 = v51;
      (*v89)(v48, v49);
      *&v107[0] = v16;
      v54 = *(v16 + 16);
      v53 = *(v16 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_20B526D44((v53 > 1), v54 + 1, 1);
        v16 = *&v107[0];
      }

      *(v16 + 16) = v54 + 1;
      v55 = v16 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v47 += v92;
      --v44;
    }

    while (v44);

    v11 = v80;
  }

  else
  {
  }

  v56 = sub_20C1344B4();
  v59 = v78;
  v58 = v79;
  if ((v60 & 1) == 0)
  {
    v61 = v56;
    v62 = v57;

    sub_20B583F4C(v61, v62, 0);
LABEL_31:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  if (v56 == 2)
  {

    goto LABEL_32;
  }

  if (v56 != 3)
  {

    goto LABEL_31;
  }

  *&v107[0] = v85;
  sub_20B8DB710(v88);
  v16 = *&v107[0];
LABEL_32:
  v63 = v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder;
  v64 = *(v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v65 = *(v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v102 = *(v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v103 = v65;
  v66 = *(v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v101[0] = *(v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v101[1] = v66;
  v67 = *(v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v98 = v102;
  v99 = v67;
  v104 = *(v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v100 = *(v81 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v96 = v101[0];
  v97 = v64;
  sub_20B7A3194(v101, v94);
  v68 = sub_20C134404();
  v13 = sub_20BAAEDB4(v68, v69);

  v105[2] = v98;
  v105[3] = v99;
  v106 = v100;
  v105[0] = v96;
  v105[1] = v97;
  sub_20B7A3B8C(v105);
  v70 = *(v63 + 16);
  v71 = *(v63 + 48);
  v108 = *(v63 + 32);
  v109 = v71;
  v72 = *(v63 + 16);
  v107[0] = *v63;
  v107[1] = v72;
  v73 = *(v63 + 48);
  v98 = v108;
  v99 = v73;
  v110 = *(v63 + 64);
  v100 = *(v63 + 64);
  v96 = v107[0];
  v97 = v70;
  sub_20B7A3194(v107, v94);
  sub_20C134464();
  v74 = v82;
  sub_20BAAAE6C(v16, v75);
  if (v74)
  {
  }

  v94[2] = v98;
  v94[3] = v99;
  v95 = v100;
  v94[0] = v96;
  v94[1] = v97;
  sub_20B7A3B8C(v94);
  (*(v59 + 8))(v11, v58);
  return v13;
}

void sub_20BB39748(uint64_t *a1@<X8>)
{
  v3 = v1;
  v130 = a1;
  v4 = sub_20C1365F4();
  v5 = *(v4 - 8);
  v135 = v4;
  v136 = v5;
  MEMORY[0x28223BE20](v4);
  v134 = v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = (v124 - v8);
  v9 = sub_20C134514();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v132 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v12 - 8);
  v129 = (v124 - v13);
  v14 = sub_20C133B04();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v133 = v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalElapsedTime);
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalElapsedTime + 8) & 1) == 0)
  {
    v19 = *v18;
    if (*v18 > 0.0)
    {
      v20 = v16;
      v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v153 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
      v154 = v22;
      v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v151 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
      v152 = v23;
      v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v148 = v153;
      v149 = v24;
      v155 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v150 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v146 = v151;
      v147 = v21;
      sub_20B7A3194(&v151, &v141);
      sub_20BAAC39C(v19);
      if (!v2)
      {
        v127 = v15;
        v128 = v20;
        v126 = v25;
        v143 = v148;
        v144 = v149;
        v145 = v150;
        v141 = v146;
        v142 = v147;
        sub_20B7A3B8C(&v141);
        goto LABEL_9;
      }

LABEL_7:
      v143 = v148;
      v144 = v149;
      v145 = v150;
      v141 = v146;
      v142 = v147;
      sub_20B7A3B8C(&v141);
      return;
    }
  }

  v127 = v15;
  v128 = v16;
  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v153 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v154 = v27;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v151 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v152 = v28;
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v148 = v153;
  v149 = v29;
  v155 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v150 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v146 = v151;
  v147 = v26;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = objc_opt_self();
  sub_20B7A3194(&v151, &v141);
  v32 = [v31 bundleForClass_];
  v33 = sub_20C132964();
  v35 = v34;

  v137 = v33;
  v138 = v35;
  v139 = 0;
  v140 = 0xE000000000000000;
  sub_20BAAE2C0(&v137, v36);
  if (v2)
  {

    goto LABEL_7;
  }

  v126 = v37;

  v143 = v148;
  v144 = v149;
  v145 = v150;
  v141 = v146;
  v142 = v147;
  sub_20B7A3B8C(&v141);
LABEL_9:
  v38 = v133;
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_eligibleForQueueCompleteEnergyMetric) != 1)
  {
    goto LABEL_26;
  }

  if (sub_20BB2E62C() != 2)
  {
    v39 = sub_20C134B34();
    v41 = v40;
    if (v39 == sub_20C134B34() && v41 == v42)
    {

      goto LABEL_15;
    }

    v43 = sub_20C13DFF4();

    if (v43)
    {
LABEL_15:
      v44 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalEnergyMetric;
      swift_beginAccess();
      v45 = v3 + v44;
      v46 = v129;
      sub_20B52F9E8(v45, v129, &qword_27C768B30, &unk_20C152440);
      v48 = v127;
      v47 = v128;
      if ((*(v127 + 48))(v46, 1, v128) == 1)
      {
        sub_20B520158(v46, &qword_27C768B30, &unk_20C152440);
      }

      else
      {
        (*(v48 + 32))(v38, v46, v47);
        sub_20C133AF4();
        if (v49 > 0.0)
        {
          v50 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
          v51 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
          v153 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
          v154 = v51;
          v52 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
          v151 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
          v152 = v52;
          v53 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
          v148 = v153;
          v149 = v53;
          v155 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
          v150 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
          v146 = v151;
          v147 = v50;
          sub_20B7A3194(&v151, &v141);
          sub_20C133AF4();
          v55 = v38;
          v123 = sub_20BAAB954(v54);
          v143 = v148;
          v144 = v149;
          v145 = v150;
          v141 = v146;
          v142 = v147;
          sub_20B7A3B8C(&v141);
          (*(v48 + 8))(v55, v47);
          goto LABEL_27;
        }

        (*(v48 + 8))(v38, v47);
      }
    }
  }

  if (sub_20BB2E62C() == 2)
  {
LABEL_21:
    v56 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
    v57 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
    v153 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
    v154 = v57;
    v58 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
    v151 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
    v152 = v58;
    v59 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
    v148 = v153;
    v149 = v59;
    v155 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
    v150 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
    v146 = v151;
    v147 = v56;
    type metadata accessor for SeymourLocalizationBundle();
    v60 = swift_getObjCClassFromMetadata();
    v61 = objc_opt_self();
    sub_20B7A3194(&v151, &v141);
    v62 = [v61 bundleForClass_];
    v63 = sub_20C132964();
    v65 = v64;

    v137 = v63;
    v138 = v65;
    v139 = 0;
    v140 = 0xE000000000000000;
    sub_20BAAE0D8(&v137, v66);
    v123 = v83;

    v143 = v148;
    v144 = v149;
    v145 = v150;
    v141 = v146;
    v142 = v147;
    sub_20B7A3B8C(&v141);
    goto LABEL_27;
  }

  v67 = sub_20C134B34();
  v69 = v68;
  if (v67 == sub_20C134B34() && v69 == v70)
  {
  }

  else
  {
    v71 = sub_20C13DFF4();

    if ((v71 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_26:
  v123 = 0;
LABEL_27:
  v72 = v132;
  v73 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_eligibleForQueueCompleteDistanceMetric);
  v129 = v123;
  if (v73 == 1)
  {
    v74 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalDistanceMetric;
    swift_beginAccess();
    v75 = v3 + v74;
    v76 = v131;
    sub_20B52F9E8(v75, v131, &unk_27C765050, &unk_20C153C10);
    if ((*(v10 + 48))(v76, 1, v9) == 1)
    {
      sub_20B520158(v76, &unk_27C765050, &unk_20C153C10);
LABEL_34:
      v84 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v85 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v153 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
      v154 = v85;
      v86 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
      v151 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
      v152 = v86;
      v87 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
      v148 = v153;
      v149 = v87;
      v155 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v150 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
      v146 = v151;
      v147 = v84;
      type metadata accessor for SeymourLocalizationBundle();
      v88 = swift_getObjCClassFromMetadata();
      v89 = objc_opt_self();
      sub_20B7A3194(&v151, &v141);
      v90 = [v89 bundleForClass_];
      v91 = sub_20C132964();
      v93 = v92;

      v137 = v91;
      v138 = v93;
      v139 = 0;
      v140 = 0xE000000000000000;
      sub_20BAAE0F8(&v137, v94);
      v125 = v95;

      v143 = v148;
      v144 = v149;
      v145 = v150;
      v141 = v146;
      v142 = v147;
      sub_20B7A3B8C(&v141);
      goto LABEL_35;
    }

    (*(v10 + 32))(v72, v76, v9);
    sub_20C134504();
    if (v77 <= 0.0)
    {
      (*(v10 + 8))(v72, v9);
      goto LABEL_34;
    }

    v78 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
    v79 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
    v153 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
    v154 = v79;
    v80 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
    v151 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
    v152 = v80;
    v81 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
    v148 = v153;
    v149 = v81;
    v155 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
    v150 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
    v146 = v151;
    v147 = v78;
    sub_20B7A3194(&v151, &v141);
    sub_20C134504();
    v125 = sub_20BAABFD0(v82);
    v143 = v148;
    v144 = v149;
    v145 = v150;
    v141 = v146;
    v142 = v147;
    sub_20B7A3B8C(&v141);
    (*(v10 + 8))(v72, v9);
  }

  else
  {
    v125 = 0;
  }

LABEL_35:
  v127 = v3;
  v128 = 0;
  v96 = *(v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_completedModalities);
  v97 = *(v96 + 16);
  v98 = MEMORY[0x277D84F90];
  if (v97)
  {
    *&v151 = MEMORY[0x277D84F90];

    sub_20B526D44(0, v97, 0);
    v98 = v151;
    v99 = *(v136 + 16);
    v100 = *(v136 + 80);
    v124[1] = v96;
    v101 = v96 + ((v100 + 32) & ~v100);
    v132 = *(v136 + 72);
    v133 = v99;
    v136 += 16;
    v131 = (v136 - 8);
    do
    {
      v102 = v134;
      v103 = v135;
      (v133)(v134, v101, v135);
      v104 = sub_20C1365E4();
      v106 = v105;
      (*v131)(v102, v103);
      *&v151 = v98;
      v108 = *(v98 + 16);
      v107 = *(v98 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_20B526D44((v107 > 1), v108 + 1, 1);
        v98 = v151;
      }

      *(v98 + 16) = v108 + 1;
      v109 = v98 + 16 * v108;
      *(v109 + 32) = v104;
      *(v109 + 40) = v106;
      v101 += v132;
      --v97;
    }

    while (v97);
  }

  *&v151 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  sub_20B6D6ABC(&qword_27C766B60, &qword_27C765218, &qword_20C15F3D0, MEMORY[0x277D83958]);
  v110 = sub_20C13C824();
  v112 = v111;

  v113 = *(v127 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v114 = *(v127 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v148 = *(v127 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v149 = v114;
  v115 = *(v127 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v146 = *(v127 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v147 = v115;
  v116 = *(v127 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v153 = v148;
  v154 = v116;
  v150 = *(v127 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v155 = *(v127 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v151 = v146;
  v152 = v113;
  sub_20BAADFB8();
  sub_20BAAD990();
  v117 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v118 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B5268B4(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
  v119 = sub_20C13C744();

  v120 = [v117 initWithString:v118 attributes:v119];

  v121 = v130;
  *v130 = v110;
  v121[1] = v112;
  v121[2] = v126;
  v121[3] = v120;
  v122 = v125;
  v121[4] = v129;
  v121[5] = v122;
}

void sub_20BB3A630()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v22 - v15;
  sub_20C137D94();
  v17 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_distanceMetric;
  swift_beginAccess();
  sub_20B5DF2D4(v16, v1 + v17, &unk_27C765050, &unk_20C153C10);
  swift_endAccess();
  sub_20C137D54();
  v18 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_energyMetric;
  swift_beginAccess();
  sub_20B5DF2D4(v13, v1 + v18, &qword_27C768B30, &unk_20C152440);
  swift_endAccess();
  sub_20C137DB4();
  v19 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_heartRateMetric;
  swift_beginAccess();
  sub_20B5DF2D4(v10, v1 + v19, &unk_27C7650E0, &unk_20C157490);
  swift_endAccess();
  v22[1] = sub_20C137D64();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AA48, &qword_20C16E2C8);
  sub_20B6D6ABC(&qword_27C76AA50, &qword_27C76AA48, &qword_20C16E2C8, MEMORY[0x277D83B68]);
  sub_20C13CBC4();

  v20 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric;
  swift_beginAccess();
  sub_20B5DF2D4(v7, v1 + v20, &unk_27C768AE0, &unk_20C1523E0);
  swift_endAccess();
  sub_20C137E24();
  v21 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mindfulMinutesMetric;
  swift_beginAccess();
  sub_20B5DF2D4(v4, v1 + v21, &unk_27C7650D0, &unk_20C157480);
  swift_endAccess();
  sub_20BB33554();
}

uint64_t sub_20BB3AAF0()
{
  v1 = v0;
  v2 = sub_20C134F24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D51410], v2);
  v10 = sub_20C134324();
  sub_20BB3F40C(v5, v10, v11);

  result = (*(v3 + 8))(v5, v2);
  v13 = v1[4];
  if (v13)
  {
    v14 = v1[5];

    v13(v15);
    result = sub_20B583ECC(v13, v14);
  }

  v16 = v1[6];
  if (v16)
  {
    v17 = v1[7];

    v16(v18);
    return sub_20B583ECC(v16, v17);
  }

  return result;
}

uint64_t sub_20BB3AD3C()
{
  v29 = sub_20C13BB84();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - v5;
  v6 = sub_20C132E94();
  MEMORY[0x28223BE20](v6 - 8);
  v30 = sub_20C138034();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134F24();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_state) == 1)
  {
    (*(v11 + 104))(v14, *MEMORY[0x277D513C0], v10, v12);
    v29 = v4;
    v15 = sub_20C134324();
    sub_20BB3F40C(v14, v15, v16);

    (*(v11 + 8))(v14, v10);
    sub_20C134324();
    sub_20C132E84();
    sub_20C138014();
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20C14F980;
    v19 = v30;
    (*(v7 + 16))(v18 + v17, v9, v30);
    sub_20BE8BBF4(v18);
    swift_setDeallocating();
    v20 = *(v7 + 8);
    v20(v18 + v17, v19);
    swift_deallocClassInstance();
    v21 = v31;
    sub_20C13A1E4();

    v22 = v29;
    v23 = sub_20C137CB4();
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v23(sub_20B5DF6DC, v24);

    (*(v32 + 8))(v21, v22);
    return (v20)(v9, v19);
  }

  else
  {
    sub_20C13B4A4();
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20B517000, v26, v27, "Add bookmark tapped before summary is presented. This is unexpected", v28, 2u);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    return (*(v1 + 8))(v3, v29);
  }
}

uint64_t sub_20BB3B274()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630, &unk_20C16BB70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v38 = &v37 - v10;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_state) == 1)
  {
    sub_20C13B4A4();
    sub_20C13BB64();
    (*(v12 + 8))(v17, v11);
    __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
    sub_20C139FD4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20BB41020;
    *(v18 + 24) = v1;
    (*(v3 + 16))(v5, v8, v2);
    v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v20 = (v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    (*(v3 + 32))(v21 + v19, v5, v2);
    v22 = (v21 + v20);
    *v22 = sub_20BB4103C;
    v22[1] = v18;

    v23 = v38;
    sub_20C137C94();
    (*(v3 + 8))(v8, v2);
    v24 = v40;
    v25 = sub_20C137CB4();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v25(sub_20B5DF6DC, v26);

    result = (*(v39 + 8))(v23, v24);
    v28 = v1[4];
    if (v28)
    {
      v29 = v1[5];

      v28(v30);
      result = sub_20B583ECC(v28, v29);
    }

    v31 = v1[6];
    if (v31)
    {
      v32 = v1[7];

      v31(v33);
      return sub_20B583ECC(v31, v32);
    }
  }

  else
  {
    sub_20C13B4A4();
    v34 = sub_20C13BB74();
    v35 = sub_20C13D1D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20B517000, v34, v35, "Cooldowns tapped before summary is presented. This is unexpected", v36, 2u);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

void sub_20BB3B770(uint64_t *a1, uint64_t a2)
{
  v64 = a2;
  v67 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v67);
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v63);
  v65 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20C134F24();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1365F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v56 - v13;
  MEMORY[0x28223BE20](v14);
  v73 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v16 - 8);
  v69 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = &v56 - v19;
  v20 = *a1;
  v23 = *(*a1 + 56);
  v22 = *a1 + 56;
  v21 = v23;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v75 = (v10 + 32);
  v71 = (v10 + 8);

  v29 = 0;
  v74 = v9;
  v72 = v28;
  v68 = v10 + 16;
  if (v26)
  {
LABEL_4:
    v30 = v29;
LABEL_8:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v73;
    (*(v10 + 16))(v73, *(v28 + 48) + *(v10 + 72) * (v31 | (v30 << 6)), v9);
    v33 = *(v10 + 32);
    v33(v76, v32, v9);
    v34 = sub_20C1365C4();
    v35 = *(v34 + 16);
    v36 = 32;
    do
    {
      if (!v35)
      {

        v9 = v74;
        (*v71)(v76, v74);
        v29 = v30;
        v28 = v72;
        if (!v26)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      v37 = *(v34 + v36);
      v36 += 8;
      --v35;
    }

    while (v37 != 80);

    v38 = v70;
    v9 = v74;
    v33(v70, v76, v74);
    v39 = 0;
LABEL_15:
    (*(v10 + 56))(v38, v39, 1, v9);
    v40 = v69;
    sub_20B52F9E8(v38, v69, &qword_27C771090, &qword_20C15A040);
    if ((*(v10 + 48))(v40, 1, v9) == 1)
    {
      sub_20B520158(v40, &qword_27C771090, &qword_20C15A040);
      v41 = v57;
      sub_20C13B4A4();
      v42 = sub_20C13BB74();
      v43 = sub_20C13D1D4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_20B517000, v42, v43, "Error: Cooldown modality not found.", v44, 2u);
        MEMORY[0x20F2F6A40](v44, -1, -1);
      }

      (*(v60 + 8))(v41, v61);
    }

    else
    {
      v45 = v62;
      (*v75)(v62, v40, v9);
      v47 = v58;
      v46 = v59;
      v48 = v56;
      (*(v58 + 104))(v56, *MEMORY[0x277D51488], v59);
      v49 = sub_20C1365A4();
      sub_20BB3F40C(v48, v49, v50);

      (*(v47 + 8))(v48, v46);
      v51 = sub_20C1365A4();
      v52 = v65;
      *v65 = v51;
      *(v52 + 8) = v53;
      type metadata accessor for NavigationResource(0);
      swift_storeEnumTagMultiPayload();
      v54 = v63;
      *(v52 + *(v63 + 20)) = 1;
      type metadata accessor for NavigationIntent(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for NavigationSource(0);
      swift_storeEnumTagMultiPayload();
      *(v52 + v54[7]) = 0;
      *(v52 + v54[8]) = 2;
      *(v52 + v54[9]) = 0;
      swift_getObjectType();
      v55 = v66;
      sub_20BB41304(v52, v66, type metadata accessor for NavigationRequest);
      sub_20B5268B4(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
      sub_20C13A764();
      sub_20BB412A4(v55, type metadata accessor for NavigationRequested);
      sub_20BB412A4(v52, type metadata accessor for NavigationRequest);
      (*v71)(v45, v74);
    }

    sub_20B520158(v38, &qword_27C771090, &qword_20C15A040);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v27)
      {

        v39 = 1;
        v38 = v70;
        goto LABEL_15;
      }

      v26 = *(v22 + 8 * v30);
      ++v29;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20BB3BF40()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FA0, &unk_20C156060);
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v40 - v10;
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_state) == 1)
  {
    v15 = v0;
    v41 = sub_20C1371C4();
    (*(v12 + 104))(v14, *MEMORY[0x277D51418], v11);
    v42 = v9;
    v16 = sub_20C134324();
    sub_20BB3F40C(v14, v16, v17);

    (*(v12 + 8))(v14, v11);
    v18 = *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_dependencies);
    v40 = *(v15 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_unitPreferencesProvider);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
    sub_20C133AA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
    sub_20C133AA4();
    v49[10] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
    sub_20C133AA4();
    v50 = v40;
    sub_20BB3D2C8(v41, v51);
    v19 = sub_20C134324();
    v21 = v20;
    v48[3] = &type metadata for CompletedSessionSnapshot;
    v48[4] = &off_282307D80;
    v22 = swift_allocObject();
    v48[0] = v22;
    v23 = v51[1];
    *(v22 + 16) = v51[0];
    *(v22 + 32) = v23;
    *(v22 + 48) = v51[2];
    *(v22 + 64) = v52;
    v24 = v44;
    sub_20B659D28(v19, v21, v48, v44);

    __swift_destroy_boxed_opaque_existential_1(v48);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BB40F48;
    *(v26 + 24) = v25;
    v27 = v43;
    v28 = v46;
    (*(v5 + 16))(v43, v24, v46);
    v29 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v30 = swift_allocObject();
    (*(v5 + 32))(v30 + v29, v27, v28);
    v31 = (v30 + ((v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20BB40F64;
    v31[1] = v26;
    v32 = v45;
    sub_20C137C94();
    (*(v5 + 8))(v24, v28);
    v33 = v42;
    v34 = sub_20C137CB4();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v34(sub_20B5DF6DC, v35);

    (*(v47 + 8))(v32, v33);
    return sub_20BB40FC4(v49);
  }

  else
  {
    sub_20C13B4A4();
    v37 = sub_20C13BB74();
    v38 = sub_20C13D1D4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_20B517000, v37, v38, "Share tapped before summary is presented. This is unexpected", v39, 2u);
      MEMORY[0x20F2F6A40](v39, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_20BB3C61C(unint64_t *a1, uint64_t a2)
{
  v5 = sub_20C134F24();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &aBlock[-1] - v9;
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = *(v13 + 24);

    if (v14)
    {
      v24 = v2;
      sub_20BEF71DC(v11);
      v16 = objc_allocWithZone(MEMORY[0x277D546D8]);
      v17 = sub_20C13CC54();

      v18 = [v16 initWithActivityItems:v17 applicationActivities:0];

      if (qword_27C760900 != -1)
      {
        swift_once();
      }

      type metadata accessor for ActivityType(0);
      v19 = sub_20C13CC54();
      [v18 setExcludedActivityTypes_];

      aBlock[4] = sub_20BB41018;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B8AE2E8;
      aBlock[3] = &block_descriptor_86;
      v20 = _Block_copy(aBlock);

      [v18 setCompletionWithItemsHandler_];
      _Block_release(v20);
      ObjectType = swift_getObjectType();
      (*(v15 + 48))(v18, ObjectType, v15);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v22 = sub_20C136664();
        (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
        v23 = v26;
        (*(v26 + 104))(v7, *MEMORY[0x277D51390], v5);
        sub_20C0418B8(v7, v10);
        swift_unknownObjectRelease();

        (*(v23 + 8))(v7, v5);
        sub_20B520158(v10, &unk_27C7622E0, &unk_20C14FCF0);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_20BB3C9F4(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 1) != 0 && a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = a1;
      sub_20C03FA4C(v6);
    }
  }
}

double sub_20BB3CA68()
{
  v1 = v0;
  v26 = sub_20C134F24();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_20C1344C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  v16 = v1[8];
  if (v16)
  {
    v17 = v1[9];

    v16(v18);
    sub_20B583ECC(v16, v17);
  }

  v19 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_upNextCatalogWorkout;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v19, v7, &qword_27C766E88, &qword_20C16E290);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20B520158(v7, &qword_27C766E88, &qword_20C16E290);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v20 = v26;
    (*(v2 + 104))(v4, *MEMORY[0x277D513F8], v26);
    v21 = sub_20C134324();
    sub_20BB3F40C(v4, v21, v22);

    (*(v2 + 8))(v4, v20);
    (*(v9 + 8))(v11, v8);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v24 + 64))(ObjectType, v24);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BB3CE40()
{
  v0 = sub_20C1333A4();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v25 = sub_20C1352E4();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134F24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  v17 = v26;
  v29 = v26;
  (*(v10 + 104))(v12, *MEMORY[0x277D513C0], v9);
  v18 = v25;
  (*(v6 + 104))(v8, *MEMORY[0x277D51768], v25);
  v19 = sub_20C135ED4();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_20BFB4810(v2);
  type metadata accessor for SessionSummaryPresenter(0);
  sub_20B5268B4(&qword_27C76AA40, type metadata accessor for SessionSummaryPresenter, &unk_20C16E260);
  sub_20C138D94();
  (*(v27 + 8))(v2, v28);
  sub_20B520158(v5, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v6 + 8))(v8, v18);
  result = (*(v10 + 8))(v12, v9);
  v21 = *(v17 + 80);
  if (v21)
  {
    v22 = *(v17 + 88);

    v21(v23);
    return sub_20B583ECC(v21, v22);
  }

  return result;
}

void sub_20BB3D2C8(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v62 = a1;
  v4 = sub_20C134514();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v51 - v7;
  v8 = sub_20C133B04();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51 - v11;
  v57 = sub_20C134B64();
  v12 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v51 - v16;
  v18 = sub_20C133D84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_activityRings;
  swift_beginAccess();
  v23 = v3 + v22;
  v24 = v3;
  sub_20B52F9E8(v23, v17, &unk_27C765120, &unk_20C152470);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_20B520158(v17, &unk_27C765120, &unk_20C152470);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_20C133D34();
    v25 = sub_20C134B54();
    v27 = v26;
    v29 = v28;
    (*(v12 + 8))(v14, v57);
    v66 = v25;
    v67 = v27;
    v68 = v29 & 1;
    v63 = 0;
    v64 = 0;
    v65 = 1;
    sub_20B64BD18();
    sub_20B64BD6C();
    v30 = sub_20C133BF4();
    sub_20B583F4C(v25, v27, v29 & 1);
    if (v30)
    {
      v31 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_energyMetric;
      swift_beginAccess();
      v32 = v53;
      sub_20B52F9E8(v3 + v31, v53, &qword_27C768B30, &unk_20C152440);
      v34 = v54;
      v33 = v55;
      v35 = (*(v54 + 48))(v32, 1, v55);
      v36 = v60;
      if (v35)
      {
        (*(v19 + 8))(v21, v18);
        sub_20B520158(v32, &qword_27C768B30, &unk_20C152440);
        v37 = 1;
        v38 = 0;
      }

      else
      {
        v49 = v52;
        (*(v34 + 16))(v52, v32, v33);
        sub_20B520158(v32, &qword_27C768B30, &unk_20C152440);
        sub_20C133AF4();
        v38 = v50;
        (*(v34 + 8))(v49, v33);
        (*(v19 + 8))(v21, v18);
        v37 = 0;
      }

      goto LABEL_8;
    }

    (*(v19 + 8))(v21, v18);
  }

  v37 = 1;
  v38 = 0;
  v36 = v60;
LABEL_8:
  v39 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_distanceMetric;
  swift_beginAccess();
  v40 = v58;
  sub_20B52F9E8(v24 + v39, v58, &unk_27C765050, &unk_20C153C10);
  v41 = v59;
  v42 = (*(v59 + 48))(v40, 1, v36);
  if (v42)
  {
    sub_20B520158(v40, &unk_27C765050, &unk_20C153C10);
    v43 = 0;
  }

  else
  {
    v44 = v56;
    (*(v41 + 16))(v56, v40, v36);
    sub_20B520158(v40, &unk_27C765050, &unk_20C153C10);
    sub_20C134504();
    v43 = v45;
    (*(v41 + 8))(v44, v36);
  }

  v46 = sub_20BB2DC80();
  v48 = v61;
  v47 = v62;
  *v61 = v38;
  *(v48 + 8) = v37;
  *(v48 + 2) = v43;
  *(v48 + 24) = v42 != 0;
  v48[4] = v46;
  *(v48 + 40) = 0;
  *(v48 + 6) = v47;
}

uint64_t sub_20BB3D980()
{
  v1 = sub_20C13BB84();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v37 = *(v41 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v34 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v42 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_20C137C24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v14 + 120))(ObjectType, v14);
    swift_unknownObjectRelease();
  }

  sub_20C1344C4();
  sub_20C138D44();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &unk_27C766680, &unk_20C14F920);
    sub_20C13B4A4();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[SessionSummaryPresenter] failed to find artwork for workout", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    return (*(v38 + 8))(v3, v39);
  }

  else
  {
    (*(v12 + 32))(v43, v10, v11);
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    v20 = v34;
    sub_20C138B14();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_20BB40F2C;
    *(v22 + 24) = v21;
    v23 = v37;
    v24 = v35;
    v25 = v41;
    (*(v37 + 16))(v35, v20, v41);
    v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v27 = (v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    (*(v23 + 32))(v28 + v26, v24, v25);
    v29 = (v28 + v27);
    *v29 = sub_20BB41370;
    v29[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
    v30 = v40;
    sub_20C137C94();
    (*(v23 + 8))(v20, v25);
    v31 = v36;
    v32 = sub_20C137CB4();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_20B5DF6DC, v33);

    (*(v42 + 8))(v30, v31);
    return (*(v12 + 8))(v43, v11);
  }
}

void sub_20BB3DFAC(uint64_t *a1@<X0>, char *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v6 = Strong, v7 = swift_unknownObjectWeakLoadStrong(), v8 = *(v6 + 24), , v7))
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(v4, ObjectType, v8);
    swift_unknownObjectRelease();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  *a3 = v10;
}

uint64_t sub_20BB3E078()
{
  v1 = sub_20C13BB84();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v37 = *(v41 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v34 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v42 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_20C137C24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v14 + 128))(ObjectType, v14);
    swift_unknownObjectRelease();
  }

  sub_20C1344C4();
  sub_20C138D44();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &unk_27C766680, &unk_20C14F920);
    sub_20C13B4A4();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[SessionSummaryPresenter] failed to find artwork for workout", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    return (*(v38 + 8))(v3, v39);
  }

  else
  {
    (*(v12 + 32))(v43, v10, v11);
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    v20 = v34;
    sub_20C138B14();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_20BB40EE8;
    *(v22 + 24) = v21;
    v23 = v37;
    v24 = v35;
    v25 = v41;
    (*(v37 + 16))(v35, v20, v41);
    v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v27 = (v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    (*(v23 + 32))(v28 + v26, v24, v25);
    v29 = (v28 + v27);
    *v29 = sub_20BAC2FC0;
    v29[1] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
    v30 = v40;
    sub_20C137C94();
    (*(v23 + 8))(v20, v25);
    v31 = v36;
    v32 = sub_20C137CB4();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_20B52347C, v33);

    (*(v42 + 8))(v30, v31);
    return (*(v12 + 8))(v43, v11);
  }
}

void sub_20BB3E6A4(uint64_t *a1@<X0>, char *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v6 = Strong, v7 = swift_unknownObjectWeakLoadStrong(), v8 = *(v6 + 24), , v7))
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(v4, ObjectType, v8);
    swift_unknownObjectRelease();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  *a3 = v10;
}

double sub_20BB3E770()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250, &qword_20C153CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_20C134414();
  v11 = sub_20C135B04();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_20B520158(v10, &qword_27C763250, &qword_20C153CB0);
  if (v12 == 1)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0, &qword_20C14FCC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    *(inited + 32) = sub_20C134324();
    *(inited + 40) = v14;
    sub_20BE8C2E8(inited);
    v30 = v6;
    swift_setDeallocating();
    sub_20B5D9804(inited + 32);
    sub_20C13A1D4();

    v15 = swift_allocObject();
    *(v15 + 16) = sub_20BB40E9C;
    *(v15 + 24) = v0;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_20BB40EA4;
    *(v16 + 24) = v15;
    v17 = v31;
    v18 = v33;
    (*(v1 + 16))(v31, v5, v33);
    v19 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v20 = swift_allocObject();
    (*(v1 + 32))(v20 + v19, v17, v18);
    v21 = (v20 + ((v2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = sub_20B760084;
    v21[1] = v16;

    v22 = v32;
    sub_20C137C94();
    (*(v1 + 8))(v5, v18);
    v23 = v30;
    v24 = sub_20C137CB4();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v24(sub_20B52347C, v25);

    (*(v34 + 8))(v22, v23);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v27 + 80))(0, ObjectType, v27);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_20BB3EC28(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 80))(1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(a2 + 24);
    v8 = swift_getObjectType();
    (*(v7 + 72))(*(a1 + 16) != 0, v8, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_20BB3ECF8()
{
  v1 = v0;
  v54 = sub_20C1333E4();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20C133A74();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1344B4();
  v10 = v9;
  v57 = v8;
  v58 = v9;
  v12 = v11 & 1;
  v59 = v11 & 1;
  v55 = xmmword_20C14F2B0;
  v56 = 1;
  sub_20B590B28();
  sub_20B590B7C();
  v13 = sub_20C133BF4();
  sub_20B583F4C(v8, v10, v12);
  if (v13)
  {
    v14 = sub_20C134424();
    v15 = *(v14 + 16);
    if (v15)
    {
      v50 = v0;
      v57 = MEMORY[0x277D84F90];
      sub_20B526D44(0, v15, 0);
      v16 = v57;
      v18 = *(v5 + 16);
      v17 = v5 + 16;
      v19 = *(v17 + 64);
      v49 = v14;
      v20 = v14 + ((v19 + 32) & ~v19);
      v51 = *(v17 + 56);
      v52 = v18;
      v54 = v17;
      v21 = (v17 - 8);
      do
      {
        v22 = v53;
        v52(v7, v20, v53);
        v23 = sub_20C133A54();
        v25 = v24;
        (*v21)(v7, v22);
        v57 = v16;
        v27 = *(v16 + 16);
        v26 = *(v16 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_20B526D44((v26 > 1), v27 + 1, 1);
          v16 = v57;
        }

        *(v16 + 16) = v27 + 1;
        v28 = v16 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v20 += v51;
        --v15;
      }

      while (v15);

      v1 = v50;
      if (!*(v16 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_26;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v44 + 24))(v16, ObjectType, v44);
LABEL_25:

      swift_unknownObjectRelease();
      return result;
    }
  }

  else
  {
    v29 = sub_20C134354();
    v30 = *(v29 + 16);
    if (v30)
    {
      v50 = v0;
      v57 = MEMORY[0x277D84F90];
      sub_20B526D44(0, v30, 0);
      v31 = v57;
      v33 = *(v2 + 16);
      v32 = v2 + 16;
      v34 = *(v32 + 64);
      v49 = v29;
      v35 = v29 + ((v34 + 32) & ~v34);
      v51 = *(v32 + 56);
      v52 = v33;
      v53 = v32;
      v36 = (v32 - 8);
      do
      {
        v37 = v54;
        v52(v4, v35, v54);
        v38 = sub_20C1333D4();
        v40 = v39;
        (*v36)(v4, v37);
        v57 = v31;
        v42 = *(v31 + 16);
        v41 = *(v31 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_20B526D44((v41 > 1), v42 + 1, 1);
          v31 = v57;
        }

        *(v31 + 16) = v42 + 1;
        v43 = v31 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v35 += v51;
        --v30;
      }

      while (v30);

      v1 = v50;
      if (!*(v31 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_26;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = *(v1 + 24);
      v47 = swift_getObjectType();
      (*(v46 + 24))(v31, v47, v46);
      goto LABEL_25;
    }
  }

LABEL_26:

  return result;
}

void sub_20BB3F19C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = v3 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalElapsedTime;
  *v13 = a3;
  *(v13 + 8) = 0;
  v14 = sub_20C133B04();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a1, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v16 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalEnergyMetric;
  swift_beginAccess();
  sub_20B5DF2D4(v12, v3 + v16, &qword_27C768B30, &unk_20C152440);
  swift_endAccess();
  v17 = sub_20C134514();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v9, a2, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  v19 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalDistanceMetric;
  swift_beginAccess();
  sub_20B5DF2D4(v9, v3 + v19, &unk_27C765050, &unk_20C153C10);
  swift_endAccess();
  sub_20BB33554();
}

uint64_t sub_20BB3F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v80 = a2;
  v75 = a1;
  v4 = sub_20C1391E4();
  v91 = *(v4 - 8);
  v92 = v4;
  MEMORY[0x28223BE20](v4);
  v90 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134C44();
  MEMORY[0x28223BE20](v6 - 8);
  v88 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v10 - 8);
  v86 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v14 - 8);
  v82 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v16 - 8);
  v79 = &v68 - v17;
  v73 = sub_20C135D24();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v77 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C134F74();
  v83 = *(v19 - 8);
  v84 = v19;
  MEMORY[0x28223BE20](v19);
  v76 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = &v68 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v23 - 8);
  v71 = &v68 - v24;
  v69 = sub_20C1352E4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v68 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v68 - v30;
  v32 = sub_20C134F24();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v68 - v37;
  v94 = sub_20C133654();
  v74 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250, &qword_20C153CB0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v68 - v41;
  v89 = v3;
  sub_20C134414();
  v43 = sub_20C135B04();
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  result = sub_20B520158(v42, &qword_27C763250, &qword_20C153CB0);
  if (v44 == 1)
  {
    v46 = sub_20C136664();
    (*(*(v46 - 8) + 56))(v38, 1, 1, v46);
    (*(v33 + 16))(v35, v75, v32);
    v47 = sub_20C132C14();
    (*(*(v47 - 8) + 56))(v31, 1, 1, v47);
    v48 = *MEMORY[0x277D52408];
    v49 = sub_20C135ED4();
    v50 = *(v49 - 8);
    (*(v50 + 104))(v28, v48, v49);
    (*(v50 + 56))(v28, 0, 1, v49);
    (*(v68 + 104))(v70, *MEMORY[0x277D51768], v69);
    v51 = sub_20C136E94();
    (*(*(v51 - 8) + 56))(v71, 1, 1, v51);

    v52 = v93;
    sub_20C133644();
    v53 = v74;
    v54 = v77;
    (*(v74 + 16))(v77, v52, v94);
    (*(v72 + 104))(v54, *MEMORY[0x277D52120], v73);
    v55 = v79;
    sub_20BFB4810(v79);
    v56 = sub_20C1333A4();
    (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
    v57 = sub_20C135664();
    (*(*(v57 - 8) + 56))(v82, 1, 1, v57);
    v58 = sub_20C135674();
    (*(*(v58 - 8) + 56))(v85, 1, 1, v58);
    v59 = v86;
    sub_20C134F94();
    v60 = sub_20C134FB4();
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
    (*(*(v61 - 8) + 56))(v87, 1, 1, v61);
    v62 = sub_20C135F14();
    (*(*(v62 - 8) + 56))(v88, 1, 1, v62);
    v63 = v81;
    sub_20C134F54();
    v65 = v83;
    v64 = v84;
    (*(v83 + 16))(v76, v63, v84);
    v66 = v90;
    sub_20C1391F4();
    swift_getObjectType();
    sub_20B5268B4(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
    v67 = v92;
    sub_20C13A764();
    (*(v91 + 8))(v66, v67);
    (*(v65 + 8))(v63, v64);
    return (*(v53 + 8))(v93, v94);
  }

  return result;
}

uint64_t *sub_20BB40060()
{
  sub_20B583E6C((v0 + 2));
  sub_20B583ECC(v0[4], v0[5]);
  sub_20B583ECC(v0[6], v0[7]);
  sub_20B583ECC(v0[8], v0[9]);
  sub_20B583ECC(v0[10], v0[11]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);

  v1 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout;
  v4 = sub_20C1344C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionPreferenceClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_healthStore));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_privacyPreferenceClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_remoteBrowsingSource));
  sub_20BB412A4(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, MEMORY[0x277D4DFB8]);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_standaloneWorkoutTimeProvider));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_20B58CFB0(*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_pageContext), *(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_pageContext + 8));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_activityRings, &unk_27C765120, &unk_20C152470);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_displayPreferences, &unk_27C765100, &unk_20C152450);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_gymKitConnection, &unk_27C7650F0, &unk_20C1574A0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_playback, &unk_27C768AF0, &unk_20C1523F0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workoutDeviceConnection, &unk_27C765CB0, &unk_20C1523C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_workout, &unk_27C768AC0, &unk_20C1523B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_cadenceMetric, &unk_27C7687F0, &unk_20C153C20);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_distanceMetric, &unk_27C765050, &unk_20C153C10);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_energyMetric, &qword_27C768B30, &unk_20C152440);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_heartRateMetric, &unk_27C7650E0, &unk_20C157490);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mindfulMinutesMetric, &unk_27C7650D0, &unk_20C157480);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_mostRecentScoreMetric, &unk_27C768AE0, &unk_20C1523E0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_paceMetric, &unk_27C768B00, &unk_20C152400);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_userMassMetric, &unk_27C765080, &unk_20C157450);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalDistanceMetric, &unk_27C765050, &unk_20C153C10);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_totalEnergyMetric, &qword_27C768B30, &unk_20C152440);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_upNextCatalogWorkout, &qword_27C766E88, &qword_20C16E290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_textSizeChangedObserver, &unk_27C768A00, &qword_20C152F90);
  v5 = OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter__showBurnBarPrivacyPrompt;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648, &qword_20C16E2D0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_20BB404E4()
{
  sub_20BB40060();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionSummaryPresenter(uint64_t a1)
{
  result = qword_27C76AA00;
  if (!qword_27C76AA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB40590(uint64_t a1)
{
  sub_20C137254();
  if (v1 <= 0x3F)
  {
    sub_20C1344C4();
    if (v2 <= 0x3F)
    {
      sub_20C13A484();
      if (v3 <= 0x3F)
      {
        sub_20BB40CD4(319, &qword_27C766DC8, MEMORY[0x277D50400]);
        if (v4 <= 0x3F)
        {
          sub_20BB40CD4(319, &unk_27C767240, MEMORY[0x277D516E8]);
          if (v5 <= 0x3F)
          {
            sub_20BB40CD4(319, &qword_27C7631D8, MEMORY[0x277D50E70]);
            if (v6 <= 0x3F)
            {
              sub_20BB40CD4(319, &qword_27C7631D0, MEMORY[0x277D53C58]);
              if (v7 <= 0x3F)
              {
                sub_20BB40CD4(319, &qword_27C76B320, MEMORY[0x277D529D8]);
                if (v8 <= 0x3F)
                {
                  sub_20BB40CD4(319, &qword_27C76AA10, MEMORY[0x277D53B70]);
                  if (v9 <= 0x3F)
                  {
                    sub_20BB40CD4(319, &qword_27C764930, MEMORY[0x277D50498]);
                    if (v10 <= 0x3F)
                    {
                      sub_20BB40CD4(319, &qword_27C76AA18, MEMORY[0x277D50860]);
                      if (v11 <= 0x3F)
                      {
                        sub_20BB40CD4(319, &qword_27C766DD0, MEMORY[0x277D502A0]);
                        if (v12 <= 0x3F)
                        {
                          sub_20BB40CD4(319, &qword_27C762CE8, MEMORY[0x277D50BD0]);
                          if (v13 <= 0x3F)
                          {
                            sub_20BB40CD4(319, &qword_27C766DD8, MEMORY[0x277D51EA0]);
                            if (v14 <= 0x3F)
                            {
                              sub_20BB40CD4(319, &qword_27C76AA20, MEMORY[0x277D50128]);
                              if (v15 <= 0x3F)
                              {
                                sub_20BB40CD4(319, &qword_27C76AA28, MEMORY[0x277D4FEE8]);
                                if (v16 <= 0x3F)
                                {
                                  sub_20BB40CD4(319, &qword_27C76AA30, MEMORY[0x277D518B8]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_20BB40CD4(319, &qword_281103BE0, MEMORY[0x277D50820]);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_20BB40D28(319);
                                      if (v19 <= 0x3F)
                                      {
                                        swift_updateClassMetadata2();
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

void sub_20BB40CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20BB40D28(uint64_t a1)
{
  if (!qword_27C76BB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C768830, &unk_20C1723F0);
    sub_20B5EB060(&unk_27C76BB90, MEMORY[0x277D4F9F8], MEMORY[0x277D4FA50]);
    sub_20B5EB060(&unk_27C768840, MEMORY[0x277D839C8], MEMORY[0x277D84F50]);
    v1 = sub_20C13A374();
    if (!v2)
    {
      atomic_store(v1, &qword_27C76BB80);
    }
  }
}

unint64_t sub_20BB40E08()
{
  result = qword_27C76AA38;
  if (!qword_27C76AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AA38);
  }

  return result;
}

uint64_t sub_20BB410F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20BB411BC()
{
  result = qword_27C76AA58;
  if (!qword_27C76AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AA58);
  }

  return result;
}

unint64_t sub_20BB41210()
{
  result = qword_27C76BBE0;
  if (!qword_27C76BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BBE0);
  }

  return result;
}

uint64_t objectdestroy_198Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20BB412A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BB41304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BB41378(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_20C13CA84();
  return sub_20C13CB84();
}

uint64_t sub_20BB413F8()
{
  v1[4] = v0;
  v1[5] = sub_20C13CDA4();
  v1[6] = sub_20C13CD94();
  v3 = sub_20C13CD24();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_20BB41494, v3, v2);
}

uint64_t sub_20BB41494()
{
  v1 = [*(v0 + 32) asset];
  *(v0 + 72) = v1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AA68, &qword_20C16E2E8);
    v2 = sub_20C138354();
    *(v0 + 80) = v2;
    v3 = sub_20C13CD94();
    *(v0 + 88) = v3;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_20BB41610;
    v5 = MEMORY[0x277D85700];

    return MEMORY[0x2821FAF00](v0 + 16, v2, v3, v5);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(0, 0);
  }
}

uint64_t sub_20BB41610()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_20BB41B3C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_20BB41734;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20BB41734()
{
  v1 = v0[2];
  v0[14] = v1;
  v0[3] = v1;
  v2 = swift_allocObject();
  v0[15] = v2;
  *(v2 + 16) = 0xD000000000000029;
  *(v2 + 24) = 0x800000020C1A8D80;
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AA70, &unk_20C16E300);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AA78, &qword_20C16F310);
  v6 = sub_20BB420EC();
  *v3 = v0;
  v3[1] = sub_20BB41878;

  return MEMORY[0x2821AFB08](&unk_20C16E2F8, v2, v4, v5, v6);
}

uint64_t sub_20BB41878(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = v3[8];
    v6 = sub_20BB41BC8;
  }

  else
  {

    v4 = v3[7];
    v5 = v3[8];
    v6 = sub_20BB4199C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

void sub_20BB4199C()
{
  v12 = v0;
  v1 = v0[17];
  v2 = v0[18];

  v10 = v1;

  sub_20BB42150(&v10);
  if (v2)
  {
  }

  else
  {

    v3 = v10;
    v4 = *(v10 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v10 + 48);
      while (v5 < *(v3 + 16))
      {
        ++v5;
        v7 = *v6;
        v10 = *(v6 - 1);
        v11 = v7;
        swift_bridgeObjectRetain_n();
        MEMORY[0x20F2F4230](32, 0xE100000000000000);
        MEMORY[0x20F2F4230](v10, v11);

        v6 += 3;
        if (v4 == v5)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
      v8 = v0[9];

      v9 = v0[1];

      v9(0, 0);
    }
  }
}

uint64_t sub_20BB41B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BB41BC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BB41C54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a1;
  v4[12] = a3;
  v5 = *a2;
  v4[13] = a4;
  v4[14] = v5;
  return MEMORY[0x2822009F8](sub_20BB41C7C, 0, 0);
}

uint64_t sub_20BB41C7C()
{
  v1 = [*(v0 + 112) key];
  if (v1)
  {
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AA88, &qword_20C16E310);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 96);
      v2 = *(v0 + 104);
      v5 = *(v0 + 16);
      v4 = *(v0 + 24);
      *(v0 + 32) = v5;
      *(v0 + 40) = v4;
      *(v0 + 48) = v3;
      *(v0 + 56) = v2;
      sub_20BB42AC0();
      sub_20BB42B14();
      if (sub_20C13C814())
      {
        sub_20BB41378(v5, v4);
        v7 = v6;

        if (v7)
        {
          v8 = sub_20C13C7F4();
          v10 = v9;

          *(v0 + 120) = v8;
          if ((v10 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AAA0, &qword_20C16E318);
            v11 = sub_20C138344();
            *(v0 + 128) = v11;
            v12 = swift_task_alloc();
            *(v0 + 136) = v12;
            *v12 = v0;
            v12[1] = sub_20BB41E74;

            return MEMORY[0x2821FAF00](v0 + 64, v11, 0, 0);
          }
        }
      }

      else
      {
      }
    }
  }

  v13 = *(v0 + 88);
  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_20BB41E74()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20BB41FD4;
  }

  else
  {

    v2 = sub_20BB41F90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BB41F90()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 64);
    *v2 = *(v0 + 120);
    v2[1] = v3;
    v2[2] = v1;
  }

  else
  {
    v4 = *(v0 + 88);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  return (*(v0 + 8))();
}

uint64_t sub_20BB41FD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BB42038(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20B52A9D4;

  return sub_20BB41C54(a1, a2, v7, v6);
}

unint64_t sub_20BB420EC()
{
  result = qword_27C76AA80;
  if (!qword_27C76AA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76AA70, &unk_20C16E300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AA80);
  }

  return result;
}

void sub_20BB42150(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A0F9C(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  v4 = sub_20C13DF84();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 4];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          *(v13 + 1) = *(v13 - 1);
          v13[4] = v13[1];
          *(v13 - 1) = v11;
          *v13 = v14;
          v13[1] = v15;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AA78, &qword_20C16F310);
      v7 = sub_20C13CCD4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = (v7 + 32);
    v17[1] = v6;
    sub_20BB422BC(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_20BB422BC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_20B6A07A0(v7);
    }

    v85 = v7 + 16;
    v86 = *(v7 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_20BB42884((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_20BC05740(0, *(v7 + 2) + 1, 1, v7);
    }

    v38 = *(v7 + 2);
    v37 = *(v7 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v7 = sub_20BC05740((v37 > 1), v38 + 1, 1, v7);
    }

    *(v7 + 2) = v39;
    v40 = v7 + 32;
    v41 = &v7[16 * v38 + 32];
    *v41 = v8;
    *(v41 + 1) = v6;
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 4);
          v44 = *(v7 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[16 * v42];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[16 * v42 - 16];
        v81 = *v80;
        v82 = &v40[16 * v42];
        v83 = *(v82 + 1);
        sub_20BB42884((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *(v7 + 2);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        memmove(&v40[16 * v42], v82 + 16, 16 * (v84 - 1 - v42));
        *(v7 + 2) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[16 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[16 * v42];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_20BB42884(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

unint64_t sub_20BB42AC0()
{
  result = qword_27C76AA90;
  if (!qword_27C76AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AA90);
  }

  return result;
}

unint64_t sub_20BB42B14()
{
  result = qword_27C76AA98;
  if (!qword_27C76AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AA98);
  }

  return result;
}

id sub_20BB42B68(char a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = sub_20C13BB84();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C132C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  type metadata accessor for AudioFocusPresenter(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  if (a1)
  {
    v14 = 0xD000000000000015;
  }

  else
  {
    v14 = 0xD000000000000016;
  }

  if (a1)
  {
    v15 = "oduct-placement-info.text";
  }

  else
  {
    v15 = "Audio_Focus_Exit_Mode";
  }

  v46 = v14;
  v16 = sub_20C13C914();

  v17 = sub_20C13C914();
  v18 = [v13 pathForResource:v16 ofType:v17];

  if (v18)
  {
    sub_20C13C954();

    sub_20C132B44();

    (*(v6 + 16))(v8, v11, v5);
    v19 = objc_allocWithZone(MEMORY[0x277CB83D0]);
    v45 = sub_20BB430B4(v8, v20);
    v21 = [objc_opt_self() auxiliarySession];
    v49[0] = 0;
    v22 = [v21 setParticipatesInNowPlayingAppPolicy:0 error:v49];
    v23 = v49[0];
    if (v22)
    {
      v24 = *MEMORY[0x277CB8030];
      v25 = *MEMORY[0x277CB80A8];
      v49[0] = 0;
      v26 = v23;
      v27 = [v21 setCategory:v24 mode:v25 options:17 error:v49];
      v23 = v49[0];
      if (v27)
      {
        v28 = v49[0];

        v29 = v45;
        [v45 setAudioSession_];

        (*(v6 + 8))(v11, v5);
        return v29;
      }
    }

    v31 = v5;
    v32 = v23;
    v33 = sub_20C132A44();

    v34 = v31;
    swift_willThrow();
    v35 = v33;

    sub_20C13B534();

    v36 = sub_20C13BB74();
    v37 = sub_20C13D1F4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v44 = v13;
      v39 = v6;
      v40 = v38;
      v41 = swift_slowAlloc();
      v45 = v34;
      v42 = v41;
      v49[0] = v41;
      *v40 = 136315138;
      v43 = sub_20B51E694(v46, v15 | 0x8000000000000000, v49);

      *(v40 + 4) = v43;
      _os_log_impl(&dword_20B517000, v36, v37, "[AudioFocusPresenter] Couldn't configure AudioPlayer for %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x20F2F6A40](v42, -1, -1);
      MEMORY[0x20F2F6A40](v40, -1, -1);

      (*(v47 + 8))(v4, v48);
      (*(v39 + 8))(v11, v45);
    }

    else
    {

      (*(v47 + 8))(v4, v48);
      (*(v6 + 8))(v11, v31);
    }
  }

  else
  {
  }

  return 0;
}

id sub_20BB430B4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = sub_20C132B64();
  v14[0] = 0;
  v6 = [v3 initWithContentsOfURL:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_20C132C14();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_20C132A44();

    swift_willThrow();
    v12 = sub_20C132C14();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_20BB43208(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_20C13BB84();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_20C137EA4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB43324, 0, 0);
}

uint64_t sub_20BB43324()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_20C13A7D4();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for WorkoutAnalyticsReporter(0);
    v4 = sub_20BB46214(&qword_27C76AAC8, type metadata accessor for WorkoutAnalyticsReporter, &unk_20C16E4B0);
    *v2 = v0;
    v2[1] = sub_20BB43494;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20BB43494()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BB4367C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20BB4367C(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_20C13B564();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](*(v1 + 48), *(v1 + 56));
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v4, v5, "WorkoutAnalyticsReporter - Failed to start: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_20BB43864(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_20C13BB84();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_20C137EA4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB43980, 0, 0);
}

uint64_t sub_20BB43980()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_20C13AA14();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for WorkoutAnalyticsReporter(0);
    v4 = sub_20BB46214(&qword_27C76AAC8, type metadata accessor for WorkoutAnalyticsReporter, &unk_20C16E4B0);
    *v2 = v0;
    v2[1] = sub_20BB43AF0;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20BB43AF0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BB43CD8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20BB43CD8(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_20C13B564();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](*(v1 + 48), *(v1 + 56));
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v4, v5, "WorkoutAnalyticsReporter - Failed to report workout analytics: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_20BB43EC0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_20C13BB84();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_20C1341B4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB43FDC, 0, 0);
}

uint64_t sub_20BB43FDC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_20C13A5D4();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for WorkoutAnalyticsReporter(0);
    v4 = sub_20BB46214(&qword_27C76AAC8, type metadata accessor for WorkoutAnalyticsReporter, &unk_20C16E4B0);
    *v2 = v0;
    v2[1] = sub_20BB4414C;
    v5 = v0[16];

    return MEMORY[0x2821AE8D0](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20BB4414C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20BB44334, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20BB44334(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_20C13B564();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](*(v1 + 48), *(v1 + 56));
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v4, v5, "WorkoutAnalyticsReporter - Failed to update: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_20BB4451C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695A0, &qword_20C16E580);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_20C132E94();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_20C135734();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = sub_20C13BB84();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB44764, v1, 0);
}

uint64_t sub_20BB44764(uint64_t a1)
{
  v3 = v1[20];
  v2 = v1[21];
  v4 = v1[19];
  v5 = v1[6];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_1((v5 + 176), *(v5 + 200));
  sub_20C139D94();

  return MEMORY[0x2822009F8](sub_20BB44864, 0, 0);
}

uint64_t sub_20BB44864()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutAnalyticsReporter.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 89;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_20BB44974;
  v4 = v0[18];
  v5 = v0[16];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BB46204, v2, v5);
}

uint64_t sub_20BB44974()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_20BB44C68;
    v4 = 0;
  }

  else
  {
    v5 = v2[6];
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = sub_20BB44AD0;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_20BB44AD0(uint64_t a1)
{
  v3 = v1[17];
  v2 = v1[18];
  v5 = v1[11];
  v4 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[8];
  v14 = v1[16];
  v15 = v1[7];
  v16 = v1[6];
  v9 = sub_20C137D14();
  sub_20C132E84();
  v10 = sub_20C135704();
  (*(v5 + 8))(v4, v7);
  (*(v3 + 8))(v2, v14);
  *v6 = v9;
  *(v6 + 8) = v10 & 1;
  (*(v8 + 104))(v6, *MEMORY[0x277D4F250], v15);
  v11 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_state;
  swift_beginAccess();
  (*(v8 + 40))(v16 + v11, v6, v15);
  swift_endAccess();

  v12 = v1[1];

  return v12();
}

uint64_t sub_20BB44C68()
{
  v1 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return MEMORY[0x2822009F8](sub_20BB44CE4, v1, 0);
}

uint64_t sub_20BB44CE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BB44D80()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v1 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_lock;
  v2 = sub_20C13B7C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695A0, &qword_20C16E580);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for WorkoutAnalyticsReporter(uint64_t a1)
{
  result = qword_2811021B8;
  if (!qword_2811021B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB44EB8(uint64_t a1)
{
  sub_20C13B7C4();
  if (v1 <= 0x3F)
  {
    sub_20BB44FB8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BB44FB8()
{
  if (!qword_281103AE8)
  {
    v0 = sub_20C13AB14();
    if (!v1)
    {
      atomic_store(v0, &qword_281103AE8);
    }
  }
}

uint64_t sub_20BB45008(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BB45050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BB450E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695A0, &qword_20C16E580);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_20BB4517C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695A0, &qword_20C16E580);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_20BB4527C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BB4451C(a1);
}

uint64_t sub_20BB45310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WorkoutAnalyticsReporter(0);
  *v8 = v4;
  v8[1] = sub_20B52AC14;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_20BB453D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52A9D4;

  return sub_20BB45DC8(a1, v4);
}

uint64_t sub_20BB45490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WorkoutAnalyticsReporter(0);
  *v8 = v4;
  v8[1] = sub_20B52AC14;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20BB45558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WorkoutAnalyticsReporter(0);
  *v8 = v4;
  v8[1] = sub_20B52AC14;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20BB45620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for WorkoutAnalyticsReporter(0);
  *v8 = v4;
  v8[1] = sub_20B52AC14;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_20BB456E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for WorkoutAnalyticsReporter(0);
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_20BB457A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for WorkoutAnalyticsReporter(0);
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_20BB45858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for WorkoutAnalyticsReporter(0);
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

uint64_t sub_20BB45910@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_lock;
  swift_beginAccess();
  v4 = sub_20C13B7C4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_20BB45998(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_lock;
  swift_beginAccess();
  v4 = sub_20C13B7C4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_20BB45AD4()
{
  result = qword_27C76AAB8;
  if (!qword_27C76AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AAB8);
  }

  return result;
}

BOOL sub_20BB45B28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  sub_20C137E44();
  v6 = sub_20C136484();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) == 1)
  {
    v9 = v5;
LABEL_3:
    sub_20BB4619C(v9);
    return 0;
  }

  v10 = sub_20C136464();
  v12 = v11;
  v14 = v13;
  v23 = *(v7 + 8);
  v23(v5, v6);
  v25 = v10;
  v26 = v12;
  v27 = v14 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0, &unk_20C1574C0);
  sub_20C133BD4();
  sub_20B583F4C(v10, v12, v14 & 1);
  v15 = v24;
  if (v24 == 5)
  {
    return 0;
  }

  sub_20C137E44();
  if (v8(v2, 1, v6) == 1)
  {
    v9 = v2;
    goto LABEL_3;
  }

  v17 = sub_20C136474();
  v19 = v18;
  v23(v2, v6);
  v25 = v17;
  LOBYTE(v26) = v19 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC10, &qword_20C1724B0);
  sub_20C133BD4();
  if (v24 == 4 || v15 < 3)
  {
    return 0;
  }

  if (v15 != 3)
  {
    v20 = sub_20C136404();
    if (v20 == sub_20C136404())
    {
      return 1;
    }
  }

  v21 = sub_20C136404();
  return v21 == sub_20C136404();
}

uint64_t sub_20BB45DC8(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7695A0, &qword_20C16E580);
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  v5 = sub_20C13BB84();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB45EF4, v2, 0);
}

uint64_t sub_20BB45EF4(uint64_t a1)
{
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v21 = *(v1 + 144);
  v8 = *(v1 + 88);
  v20 = *(v1 + 80);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v5);
  (*(v7 + 104))(v4, *MEMORY[0x277D4F258], v6);
  v9 = OBJC_IVAR____TtC9SeymourUI24WorkoutAnalyticsReporter_state;
  swift_beginAccess();
  (*(v7 + 40))(v8 + v9, v4, v6);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v8 + 136), *(v8 + 160));
  LOBYTE(v3) = *(v8 + 128);
  v10 = type metadata accessor for WorkoutAnalyticsEvent(0);
  *(v1 + 40) = v10;
  *(v1 + 48) = sub_20BB46214(&qword_27C76AAC0, type metadata accessor for WorkoutAnalyticsEvent, &unk_20C158CC8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
  v12 = v10[6];
  v13 = sub_20C137EA4();
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1 + v12, v20, v13);
  *boxed_opaque_existential_1 = v21;
  *(boxed_opaque_existential_1 + 1) = v3;
  v14 = v10[7];
  v15 = *MEMORY[0x277D4F2C0];
  v16 = sub_20C13ABF4();
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1 + v14, v15, v16);
  v17 = (boxed_opaque_existential_1 + v10[8]);
  *v17 = 0x74756F6B726F77;
  v17[1] = 0xE700000000000000;
  sub_20C13A954();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_20BB4619C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BB46214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_20BB4625C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = [objc_opt_self() buttonWithType_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v11 titleLabel];
  if (v12)
  {
    v13 = v12;
    [v12 setAdjustsFontForContentSizeCategory_];
  }

  *&v4[OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_button] = v11;
  v47.receiver = v4;
  v47.super_class = type metadata accessor for PreviewVideoLinkCell(0);
  v14 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = [v14 contentView];
  v16 = OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_button;
  [v15 addSubview_];

  v17 = [*&v14[v16] titleLabel];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v18 setTextColor_];
  }

  v20 = [*&v14[v16] titleLabel];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() preferredFontForTextStyle_];
    [v21 setFont_];
  }

  v23 = [*&v14[v16] titleLabel];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v24 setTextColor_];
  }

  [*&v14[v16] addTarget:v14 action:sel_buttonTapped_ forControlEvents:64];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14FE90;
  v27 = [*&v14[v16] leadingAnchor];
  v28 = [v14 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v30;
  v31 = [*&v14[v16] topAnchor];
  v32 = [v14 contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v26 + 40) = v34;
  v35 = [*&v14[v16] bottomAnchor];
  v36 = [v14 contentView];
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v26 + 48) = v38;
  v39 = [*&v14[v16] trailingAnchor];
  v40 = [v14 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v39 constraintLessThanOrEqualToAnchor_];
  *(v26 + 56) = v42;
  v43 = objc_opt_self();
  sub_20B5E29D0();
  v44 = sub_20C13CC54();

  [v43 activateConstraints_];

  v45 = [objc_opt_self() defaultCenter];
  [v45 addObserver:v14 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  return v14;
}

id sub_20BB46BB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewVideoLinkCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PreviewVideoLinkCell(uint64_t a1)
{
  result = qword_27C76AAE0;
  if (!qword_27C76AAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB46CAC(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BB46D54(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BB46DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BB46DF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BB46E5C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2F)
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = *&v1[OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_button];

    return [v9 setAttributedTitle:v8 forState:{0, v5}];
  }

  else
  {
    sub_20C13B534();

    v11 = v1;
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a1;
      v25 = v23;
      *v14 = 138543618;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2082;
      v16 = sub_20B5F66D0();
      v17 = v11;
      v18 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v16);
      v20 = sub_20B51E694(v18, v19, &v25);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_20B517000, v12, v13, "Attempted to configure %{public}@ with item: %{public}s", v14, 0x16u);
      sub_20B520158(v15, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v15, -1, -1);
      v21 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_20BB470E8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = [objc_opt_self() buttonWithType_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 titleLabel];
  if (v4)
  {
    v5 = v4;
    [v4 setAdjustsFontForContentSizeCategory_];
  }

  *(v0 + OBJC_IVAR____TtC9SeymourUI20PreviewVideoLinkCell_button) = v3;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB47224()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

char *sub_20BB47408(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_layout] = 0x4039000000000000;
  v11 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_stackView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_subtitleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  v15 = objc_opt_self();
  v16 = [v15 smu:*MEMORY[0x277D76918] preferredFontForTextStyle:8 variant:?];
  [v14 setFont_];

  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  [v14 setTextColor_];

  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  *&v4[v13] = v14;
  v19 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_titleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  v21 = [v15 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:8 variant:?];
  [v20 setFont_];

  v22 = [v17 whiteColor];
  [v20 setTextColor_];

  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  [v20 setTextAlignment_];
  *&v4[v19] = v20;
  v44.receiver = v4;
  v44.super_class = type metadata accessor for TVFullScreenMessageCell(0);
  v23 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_stackView;
  v25 = *&v23[OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_stackView];
  v26 = v23;
  [v25 setAlignment_];
  [*&v23[v24] setAxis_];
  [*&v23[v24] setSpacing_];
  v27 = [v26 contentView];
  [v27 addSubview_];

  [*&v23[v24] addArrangedSubview_];
  [*&v23[v24] addArrangedSubview_];
  v28 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C150040;
  v30 = [*&v23[v24] leadingAnchor];
  v31 = [v26 contentView];
  v32 = [v31 leadingAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v29 + 32) = v33;
  v34 = [*&v23[v24] trailingAnchor];
  v35 = [v26 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v29 + 40) = v37;
  v38 = [*&v23[v24] centerYAnchor];
  v39 = [v26 contentView];

  v40 = [v39 centerYAnchor];
  v41 = [v38 constraintEqualToAnchor_];

  *(v29 + 48) = v41;
  sub_20B5E29D0();
  v42 = sub_20C13CC54();

  [v28 activateConstraints_];

  return v26;
}

id sub_20BB47BC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFullScreenMessageCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVFullScreenMessageCell(uint64_t a1)
{
  result = qword_27C76AB18;
  if (!qword_27C76AB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB47CDC(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BB47DA8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BB47DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BB47E4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BB47EB0(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x18)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_titleLabel];
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x18))
    {
      v9 = sub_20C13C914();
    }

    else
    {
      v9 = 0;
    }

    [v8 setText_];

    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_subtitleLabel];
    if (v7)
    {
      v22 = sub_20C13C914();
    }

    else
    {
      v22 = 0;
    }

    v25 = v22;
    [v21 setText_];
    v23 = v25;
  }

  else
  {
    sub_20C13B534();

    v10 = v1;
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = a1;
      v27 = v25;
      *v13 = 138543618;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2082;
      v15 = sub_20B5F66D0();
      v16 = v10;
      v17 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v15);
      v19 = sub_20B51E694(v17, v18, &v27);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_20B517000, v11, v12, "Attempted to configure %{public}@ with item: %{public}s", v13, 0x16u);
      sub_20B520158(v14, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v14, -1, -1);
      v20 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BB481A0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_layout) = 0x4039000000000000;
  v3 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_stackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_subtitleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v6 &selRef_count + 2];
  [v6 setAdjustsFontForContentSizeCategory_];
  v7 = objc_opt_self();
  v8 = [v7 smu:*MEMORY[0x277D76918] preferredFontForTextStyle:8 variant:?];
  [v6 setFont_];

  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  *(v0 + v5) = v6;
  v11 = OBJC_IVAR____TtC9SeymourUI23TVFullScreenMessageCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  v13 = [v7 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:8 variant:?];
  [v12 setFont_];

  v14 = [v9 whiteColor];
  [v12 setTextColor_];

  [v12 setLineBreakMode_];
  [v12 setNumberOfLines_];
  [v12 setTextAlignment_];
  *(v0 + v11) = v12;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BB484AC()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_lazyLockupFetcher);

  sub_20C02F3E0(v5, v4, 0, 0);
  v59 = v6;

  sub_20C135DA4();
  v7 = sub_20C1352B4();
  v9 = v8;
  if (v7 == sub_20C1352B4() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_20C13DFF4();

    if ((v12 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_storefrontLocalizer + 24));
      v13 = sub_20C138D34();
      v57 = v14;
      v58 = v13;
      goto LABEL_9;
    }
  }

  v57 = 0;
  v58 = 0;
LABEL_9:
  v15 = (v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_mediaTagStringBuilder + 24));
  sub_20C135E04();
  v16 = sub_20C138544();

  v17 = [v16 string];

  v56 = sub_20C13C954();
  v19 = v18;

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);

  sub_20C135D84();
  v20 = sub_20C138544();

  v21 = [v20 string];

  v22 = sub_20C13C954();
  v24 = v23;

  LOBYTE(v21) = (*(v4 + 144) < 0x2FuLL) & (0x4CE7B617E7E2uLL >> *(v4 + 144));
  v25 = sub_20C135D64();
  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle);
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle + 8);
  *&v60 = v58;
  *(&v60 + 1) = v57;
  LOBYTE(v61) = 1;
  *(&v61 + 1) = 0;
  *&v62 = 0;
  BYTE8(v62) = 0x80;
  BYTE9(v62) = v21;
  v63 = 0uLL;
  *&v64 = v25;
  *(&v64 + 1) = v28;
  *&v65 = v56;
  *(&v65 + 1) = v19;
  LOBYTE(v66) = 0;
  *(&v66 + 1) = v59;
  *&v67 = MEMORY[0x277D84F90];
  *(&v67 + 1) = v22;
  *&v68 = v24;
  *(&v68 + 1) = v56;
  *&v69 = v19;
  *(&v69 + 1) = v26;
  v70 = v27;
  nullsub_1();
  v29 = v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row;
  v30 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 144);
  v71[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 128);
  v71[9] = v30;
  v72 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 160);
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 80);
  v71[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 64);
  v71[5] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 112);
  v71[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 96);
  v71[7] = v32;
  v33 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 16);
  v71[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row);
  v71[1] = v33;
  v34 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 48);
  v71[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 32);
  v71[3] = v34;
  v35 = v69;
  *(v29 + 128) = v68;
  *(v29 + 144) = v35;
  *(v29 + 160) = v70;
  v36 = v65;
  *(v29 + 64) = v64;
  *(v29 + 80) = v36;
  v37 = v67;
  *(v29 + 96) = v66;
  *(v29 + 112) = v37;
  v38 = v61;
  *v29 = v60;
  *(v29 + 16) = v38;
  v39 = v63;
  *(v29 + 32) = v62;
  *(v29 + 48) = v39;
  sub_20B8D6160(v26, v27);
  sub_20B634408(v71);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61DCC0(v1, Strong);
      if (v43)
      {
        v45 = v42;
        v46 = v43;
        v47 = v44;
        sub_20B5E2E18();
        v48 = sub_20C13D374();
        v50 = v53;
        v49 = v54;
        *v53 = v48;
        v51 = v55;
        (*(v49 + 104))(v50, *MEMORY[0x277D85200], v55);
        v52 = sub_20C13C584();
        (*(v49 + 8))(v50, v51);
        if ((v52 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B621398(v45, v46, v47, v1, 1, v41);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}