void sub_20BE47CC8(char a1)
{
  v3 = type metadata accessor for EditorialGalleryViewController(0);
  v36.receiver = v1;
  v36.super_class = v3;
  objc_msgSendSuper2(&v36, sel_viewWillAppear_, a1 & 1);
  v4 = [v1 navigationController];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 viewControllers];

  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v7 = sub_20C13CC74();

  if (v7 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F2F5430](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

LABEL_11:
  v35 = v3;
  v32 = v1;
  v10 = v1;
  v11 = sub_20C13C914();
  if (v3)
  {
    v12 = __swift_project_boxed_opaque_existential_1(&v32, v35);
    v13 = *(v3 - 1);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_20C13DFD4();
    (*(v13 + 8))(v16, v3);
    __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v11 style:0 target:v17 action:sel_backButtonPressed];

  swift_unknownObjectRelease();
  v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v18 setTintColor_];

  if (v9)
  {
    v20 = [v9 navigationItem];
    [v20 setBackBarButtonItem_];
  }

  v21 = *&v10[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentNavigationBarTintColor];
  if (v21)
  {
    v22 = *&v10[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentNavigationBarTintColor];
  }

  else
  {
    v22 = *&v10[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_standardNavigationBarTintColor];
    v21 = 0;
  }

  v23 = v21;
  v24 = [v10 navigationController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 navigationBar];

    [v26 setTintColor_];
  }

  v27 = &v10[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior];
  v28 = v10[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior + 16];
  if (v28 <= 0xFB)
  {
    if (v28 >> 6 > 1)
    {
      v29 = *v27;
      v30 = v27[1];
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_20C13DC94();
      v31[0] = v32;
      v31[1] = v33;
      MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
      v32 = v29;
      v33 = v30;
      v34 = v28;
      sub_20C13DDF4();
      sub_20C1380E4();
    }

    else
    {
      sub_20BE8F76C();
    }
  }
}

void sub_20BE483DC(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditorialGalleryViewController(0);
  v23.receiver = v2;
  v23.super_class = v8;
  objc_msgSendSuper2(&v23, sel_viewWillDisappear_, a1 & 1);
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 viewControllers];

  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v12 = sub_20C13CC74();

  if (v12 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x20F2F5430](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 navigationItem];
  [v15 setBackBarButtonItem_];

LABEL_11:
  v22 = v2;
  sub_20C132E84();
  sub_20BE492C4(&qword_27C76F680, &unk_20C17F9E0);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v16 = [v2 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 viewControllers];
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v19 = sub_20C13CC74();

    v22 = v2;
    MEMORY[0x28223BE20](v20);
    *(&v21 - 2) = &v22;
    LOBYTE(v18) = sub_20B79AEEC(sub_20B5978BC, (&v21 - 4), v19);

    if ((v18 & 1) == 0)
    {
      v22 = v2;
      sub_20BE492C4(&qword_27C76F690, &unk_20C17F9A0);
      sub_20C138C64();
    }
  }
}

void sub_20BE488FC()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_upNextQueueButton];
  v2 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v4 = v1;
  *(v4 + 1) = &off_2822C8C68;
  v11.receiver = v3;
  v11.super_class = v2;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  [v6 setCustomView_];

  if (v0[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_platform] == 1)
  {
    v8 = [v0 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C151490;
    *(v9 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v9 + 40) = v6;
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v10 = v6;
    v7 = sub_20C13CC54();

    [v8 setRightBarButtonItems_];

    goto LABEL_5;
  }

  if (!v0[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_platform])
  {
    v7 = [v0 navigationItem];
    [v7 setRightBarButtonItem_];
LABEL_5:
  }
}

id sub_20BE48B68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialGalleryViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EditorialGalleryViewController(uint64_t a1)
{
  result = qword_27C76F670;
  if (!qword_27C76F670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE48D24(uint64_t a1)
{
  result = sub_20C1352F4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_20BE48E34(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_140;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20BE48FE4(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

double sub_20BE490CC()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double sub_20BE49114(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BE491CC(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BE49230(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20BE492C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EditorialGalleryViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20BE49308()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_resignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_metricPageCategory;
  v3 = *MEMORY[0x277D51838];
  v4 = sub_20C1352F4();
  (*(*(v4 - 8) + 104))(v0 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_standardNavigationBarTintColor;
  *(v0 + v5) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BE49450()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  if ((*(v0 + 144) & 1) == 0)
  {
    *(v0 + 144) = 1;
    v17 = *(v0 + 128);
    v41 = v16;
    v42 = v13;
    v39 = v15;
    v40 = v9;
    v43 = &v38 - v14;
    __swift_project_boxed_opaque_existential_1((v0 + 104), v17);
    v18 = v0;
    sub_20C1392E4();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_20BE4B4F0;
    *(v19 + 24) = v18;
    (*(v2 + 16))(v4, v7, v1);
    v20 = v1;
    v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v22 = swift_allocObject();
    (*(v2 + 32))(v22 + v21, v4, v20);
    v23 = (v22 + ((v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = sub_20B5D9E70;
    v23[1] = v19;

    v24 = v39;
    sub_20C137C94();
    (*(v2 + 8))(v7, v20);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20BE49A00;
    *(v25 + 24) = 0;
    v26 = v40;
    v27 = v41;
    v28 = v24;
    v29 = v42;
    (*(v40 + 16))(v41, v24, v42);
    v30 = v26;
    v31 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v32 = swift_allocObject();
    (*(v30 + 32))(v32 + v31, v27, v29);
    v33 = (v32 + ((v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF204;
    v33[1] = v25;
    v34 = v43;
    sub_20C137C94();
    v35 = *(v30 + 8);
    v35(v28, v29);
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B52347C, v37);

    v35(v34, v29);
  }
}

uint64_t sub_20BE498CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_20C135734();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9SeymourUI26CatalogTipSummaryPresenter_serviceSubscription;
  swift_beginAccess();
  sub_20B88109C(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_20BE49A00(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

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
    _os_log_impl(&dword_20B517000, v8, v9, "[CatalogTipSummaryPresenter] Failed fetching service subscription: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20BE49BDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v1 - 8);
  v43 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = v41 - v4;
  v5 = sub_20C132E94();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C135734();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v41 - v13;
  v15 = OBJC_IVAR____TtC9SeymourUI26CatalogTipSummaryPresenter_serviceSubscription;
  swift_beginAccess();
  v45 = v0;
  sub_20B52F9E8(v0 + v15, v14, &unk_27C762390, &unk_20C15EC90);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_20B520158(v14, &unk_27C762390, &unk_20C15EC90);
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    sub_20B520158(v14, &unk_27C762390, &unk_20C15EC90);
    sub_20C132E84();
    v16 = sub_20C135704();
    (*(v42 + 8))(v7, v5);
    (*(v9 + 8))(v11, v8);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_6;
    }
  }

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v17 = sub_20C132964();
  v18 = v21;

LABEL_6:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v41[2] = v17;
    v42 = v18;
    type metadata accessor for SeymourLocalizationBundle();
    v24 = swift_getObjCClassFromMetadata();
    v25 = objc_opt_self();
    v26 = [v25 bundleForClass_];
    v41[1] = sub_20C132964();

    v27 = [v25 &selRef:v24 :?speedBumpEdges + 3];
    sub_20C132964();

    v28 = [v25 bundleForClass_];
    sub_20C132964();

    v29 = *(v23 + OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_summaryCardView);
    v30 = *(v29 + OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_titleLabel);
    v31 = sub_20C13C914();

    [v30 setText_];

    v32 = *(v29 + OBJC_IVAR____TtC9SeymourUI25CatalogTipSummaryCardView_descriptionLabel);
    v33 = sub_20C13C914();

    [v32 setText_];

    v34 = v44;
    sub_20C13D884();
    v35 = sub_20C13D874();
    if ((*(*(v35 - 8) + 48))(v34, 1, v35))
    {
      sub_20B52F9E8(v34, v43, &qword_27C764C60, &unk_20C156F50);
      sub_20C13D894();
      sub_20B520158(v34, &qword_27C764C60, &unk_20C156F50);
    }

    else
    {

      sub_20C13D824();
      sub_20C13D894();
    }

    v36 = *(v23 + OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_learnMoreButton);
    v37 = v42;
    if (v42)
    {
      v38 = sub_20C13C914();
    }

    else
    {
      v38 = 0;
    }

    [v36 setTitle:v38 forState:0];

    v39 = *(v23 + OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_state);
    if (v39 != 2 && (v37 == 0) == ((v39 & 0x100) == 0))
    {
      sub_20BBC32C8(v39 & 1, v37 == 0);
    }

    swift_unknownObjectRelease();
  }

  return sub_20BE4A2EC();
}

uint64_t sub_20BE4A2EC()
{
  v1 = v0;
  v2 = sub_20C1391E4();
  v3 = *(v2 - 8);
  v72 = v2;
  v73 = v3;
  MEMORY[0x28223BE20](v2);
  v71 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134C44();
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v15 - 8);
  v61 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v60 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v60 - v27;
  v29 = sub_20C135D24();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134F74();
  v64 = *(v33 - 8);
  v65 = v33;
  MEMORY[0x28223BE20](v33);
  v63 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v62 = &v60 - v36;
  v37 = *MEMORY[0x277D52E00];
  v38 = sub_20C136904();
  (*(*(v38 - 8) + 104))(v32, v37, v38);
  (*(v30 + 104))(v32, *MEMORY[0x277D52118], v29);
  v39 = *MEMORY[0x277D517E0];
  v40 = sub_20C1352F4();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v25, v39, v40);
  (*(v41 + 56))(v25, 0, 1, v40);
  v43 = *(v1 + 88);
  v42 = *(v1 + 96);
  v44 = sub_20C132C14();
  (*(*(v44 - 8) + 56))(v22, 1, 1, v44);
  v45 = sub_20C135ED4();
  (*(*(v45 - 8) + 56))(v19, 1, 1, v45);
  v46 = sub_20C136914();
  (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
  sub_20B58C2C8(v43, v42);
  sub_20C133384();
  v47 = sub_20C1333A4();
  (*(*(v47 - 8) + 56))(v28, 0, 1, v47);
  v48 = sub_20C135664();
  (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  v49 = sub_20C135674();
  (*(*(v49 - 8) + 56))(v67, 1, 1, v49);
  v50 = v68;
  sub_20C134F94();
  v51 = sub_20C134FB4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v52 - 8) + 56))(v69, 1, 1, v52);
  v53 = sub_20C135F14();
  (*(*(v53 - 8) + 56))(v70, 1, 1, v53);
  v54 = v62;
  sub_20C134F54();
  swift_getObjectType();
  v55 = v64;
  v56 = v65;
  (*(v64 + 16))(v63, v54, v65);
  v57 = v71;
  sub_20C1391F4();
  sub_20BE4B4A8(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v58 = v72;
  sub_20C13A764();
  (*(v73 + 8))(v57, v58);
  return (*(v55 + 8))(v54, v56);
}

uint64_t sub_20BE4AC84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_20C1333A4();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v43 = &v42 - v17;
  v19 = sub_20C1352E4();
  v20 = *(v19 - 8);
  v46 = v19;
  v47 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v22;
  v23 = sub_20C134F24();
  v24 = *(v23 - 8);
  v48 = v23;
  v49 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v45 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v3;
  (*(v27 + 104))(v25);
  (*(v20 + 104))(v22, *MEMORY[0x277D51768], v19);
  v28 = sub_20C135ED4();
  v29 = *(*(v28 - 8) + 56);
  v29(v18, 1, 1, v28);
  v42 = "metricTopicRoutingBehavior";
  v30 = *MEMORY[0x277D517E0];
  v31 = sub_20C1352F4();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v10, v30, v31);
  (*(v32 + 56))(v10, 0, 1, v31);
  v34 = *(v3 + 88);
  v33 = *(v3 + 96);
  v35 = sub_20C132C14();
  (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
  v29(v15, 1, 1, v28);
  v36 = sub_20C136914();
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  sub_20B58C2C8(v34, v33);
  v37 = v50;
  sub_20C133384();
  type metadata accessor for CatalogTipSummaryPresenter(0);
  sub_20BE4B4A8(&unk_27C76F6B0, type metadata accessor for CatalogTipSummaryPresenter, &unk_20C17FD08);
  v38 = v44;
  v39 = v45;
  v40 = v43;
  sub_20C138D94();
  (*(v53 + 8))(v37, v54);
  sub_20B520158(v40, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v47 + 8))(v38, v46);
  return (*(v49 + 8))(v39, v48);
}

uint64_t sub_20BE4B2AC()
{
  sub_20B583E6C((v0 + 2));
  sub_20B583ECC(v0[4], v0[5]);
  sub_20B583ECC(v0[6], v0[7]);
  swift_unknownObjectRelease();
  sub_20B58CFB0(v0[11], v0[12]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI26CatalogTipSummaryPresenter_serviceSubscription, &unk_27C762390, &unk_20C15EC90);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogTipSummaryPresenter(uint64_t a1)
{
  result = qword_27C76F6A0;
  if (!qword_27C76F6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE4B3A4(uint64_t a1)
{
  sub_20B87D5A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE4B4A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BE4B50C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 144) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  v8 = OBJC_IVAR____TtC9SeymourUI26CatalogTipSummaryPresenter_serviceSubscription;
  v9 = sub_20C135734();
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v4 + 64) = v11[0];
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B52E424(v11, v4 + 104);
  return v4;
}

id sub_20BE4B7E4()
{
  result = [objc_opt_self() effectWithStyle_];
  qword_27C76F6C0 = result;
  return result;
}

char *sub_20BE4B8E8(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView;
  type metadata accessor for PaletteContainerView.ContainerView();
  *&v2[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = &v2[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_contentInsets];
  v6 = *(MEMORY[0x277D768C8] + 16);
  *v5 = *MEMORY[0x277D768C8];
  *(v5 + 1) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  *&v2[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_backgroundView] = v7;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for PaletteContainerView();
  v8 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 setClipsToBounds_];
  v9 = OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_backgroundView;
  [v8 addSubview_];
  v10 = OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView;
  swift_unknownObjectWeakAssign();
  v11 = [*&v8[v9] contentView];
  [v11 addSubview_];

  return v8;
}

id sub_20BE4BAE4(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PaletteContainerView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_backgroundView];
  [v1 bounds];
  [v2 setFrame_];
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView];
  [v1 bounds];
  return [v3 setFrame_];
}

id sub_20BE4BC50(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void NavigationIntent.hash(into:)(uint64_t a1)
{
  v2 = sub_20C1344C4();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v40 - v7;
  v8 = sub_20C134DC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C139144();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NavigationIntent(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BE4CDB8(v1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v13 + 32))(v15, v18, v12);
      MEMORY[0x20F2F58E0](3);
      sub_20BE4D1C8(&qword_27C76F708, MEMORY[0x277D54298], MEMORY[0x277D542A0]);
      sub_20C13C7C4();
      (*(v13 + 8))(v15, v12);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v21 = *v18;
      MEMORY[0x20F2F58E0](4);
      MEMORY[0x20F2F58E0](*(v21 + 16));
      v22 = *(v21 + 16);
      if (v22)
      {
        v25 = *(v9 + 16);
        v23 = v9 + 16;
        v24 = v25;
        v26 = (*(v23 + 64) + 32) & ~*(v23 + 64);
        v45 = v21;
        v27 = v21 + v26;
        v28 = *(v23 + 56);
        do
        {
          v24(v11, v27, v8);
          sub_20BE4D1C8(&qword_27C76F700, MEMORY[0x277D510B8], MEMORY[0x277D510C0]);
          sub_20C13C7C4();
          (*(v23 - 8))(v11, v8);
          v27 += v28;
          --v22;
        }

        while (v22);
      }
    }

    else
    {
      v29 = *v18;
      v30 = v18[8];
      v31 = *(v18 + 3);
      v32 = *(v18 + 4);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t");
      v34 = v42;
      sub_20BD3113C(&v18[*(v33 + 80)], v42);
      MEMORY[0x20F2F58E0](5);
      sub_20C13E184();
      if (v30 != 1)
      {
        MEMORY[0x20F2F58E0](v29);
      }

      v36 = v44;
      v35 = v45;
      v37 = v43;
      sub_20C13E184();
      if (v31)
      {
        sub_20C13CA64();
      }

      v38 = 0.0;
      if (v32 != 0.0)
      {
        v38 = v32;
      }

      MEMORY[0x20F2F5910](*&v38);
      sub_20BE4CE1C(v34, v37);
      if ((*(v36 + 48))(v37, 1, v35) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v39 = v41;
        (*(v36 + 32))(v41, v37, v35);
        sub_20C13E184();
        sub_20BE4D1C8(&qword_27C76EE30, MEMORY[0x277D50820], MEMORY[0x277D50828]);
        sub_20C13C7C4();
        (*(v36 + 8))(v39, v35);
      }

      sub_20B520158(v34, &qword_27C766E88, &qword_20C16E290);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x20F2F58E0](v20);
    sub_20C13E184();
  }
}

uint64_t NavigationIntent.hashValue.getter()
{
  sub_20C13E164();
  NavigationIntent.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BE4C364()
{
  sub_20C13E164();
  NavigationIntent.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BE4C3A8(uint64_t a1)
{
  sub_20C13E164();
  NavigationIntent.hash(into:)(v2);
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI16NavigationIntentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v3 = sub_20C1344C4();
  v4 = *(v3 - 8);
  v86 = v3;
  v87 = v4;
  MEMORY[0x28223BE20](v3);
  v83 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F720, &qword_20C17FE20);
  MEMORY[0x28223BE20](v85);
  v88 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v83 - v10;
  MEMORY[0x28223BE20](v11);
  v91 = &v83 - v12;
  v13 = sub_20C139144();
  v92 = *(v13 - 8);
  v93 = v13;
  MEMORY[0x28223BE20](v13);
  v89 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationIntent(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v83 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v83 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v83 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F728, &qword_20C17FE28);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v83 - v34;
  v37 = &v83 + *(v36 + 56) - v34;
  sub_20BE4CDB8(v94, &v83 - v34);
  sub_20BE4CDB8(a2, v37);
  v38 = v35;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v40 = v35;
      if (EnumCaseMultiPayload != 1)
      {
        sub_20BE4CDB8(v35, v26);
        v49 = swift_getEnumCaseMultiPayload();
        if (v49 == 2)
        {
          v41 = *v26;
          goto LABEL_18;
        }

        goto LABEL_26;
      }

      sub_20BE4CDB8(v35, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = *v29;
LABEL_18:
        v50 = v41 ^ *v37;
        sub_20B7897CC(v40);
        v43 = v50 ^ 1;
        return v43 & 1;
      }
    }

    else
    {
      v40 = v35;
      sub_20BE4CDB8(v35, v32);
      if (!swift_getEnumCaseMultiPayload())
      {
        v41 = *v32;
        goto LABEL_18;
      }
    }

LABEL_26:
    sub_20B520158(v40, &qword_27C76F728, &qword_20C17FE28);
LABEL_27:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v40 = v35;
      sub_20BE4CDB8(v35, v20);
      v42 = *v20;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_26;
      }

      v43 = sub_20BB81EE0(v42, *v37);

      goto LABEL_15;
    }

    sub_20BE4CDB8(v35, v17);
    v51 = *v17;
    v52 = *(v17 + 2);
    v53 = *(v17 + 3);
    v54 = *(v17 + 4);
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_20B520158(&v17[v55], &qword_27C766E88, &qword_20C16E290);

      v40 = v38;
      goto LABEL_26;
    }

    v94 = v52;
    v56 = v17[8];
    v57 = *v37;
    v58 = v37[8];
    v59 = *(v37 + 3);
    v93 = *(v37 + 2);
    v60 = *(v37 + 4);
    sub_20BD3113C(&v17[v55], v91);
    v61 = &v37[v55];
    v62 = v90;
    sub_20BD3113C(v61, v90);
    if (v56)
    {
      v63 = v38;
      if (!v58)
      {
LABEL_22:

        sub_20B520158(v62, &qword_27C766E88, &qword_20C16E290);
        v64 = v91;
LABEL_48:
        v74 = &qword_27C766E88;
        v75 = &qword_20C16E290;
LABEL_49:
        sub_20B520158(v64, v74, v75);
LABEL_50:
        sub_20B7897CC(v63);
        goto LABEL_27;
      }
    }

    else
    {
      if (v51 == v57)
      {
        v66 = v58;
      }

      else
      {
        v66 = 1;
      }

      v63 = v38;
      if (v66)
      {
        goto LABEL_22;
      }
    }

    if (v53)
    {
      if (v59)
      {
        v67 = v91;
        if (v94 == v93 && v53 == v59)
        {
        }

        else
        {
          v68 = sub_20C13DFF4();

          if ((v68 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_43;
      }

      v67 = v91;
    }

    else
    {
      v67 = v91;
      if (!v59)
      {
LABEL_43:
        if (v54 == v60)
        {
          v69 = *(v85 + 48);
          v70 = v88;
          sub_20BE4CE1C(v67, v88);
          sub_20BE4CE1C(v62, v70 + v69);
          v71 = v86;
          v72 = *(v87 + 48);
          if (v72(v70, 1, v86) == 1)
          {
            sub_20B520158(v62, &qword_27C766E88, &qword_20C16E290);
            v73 = v88;
            sub_20B520158(v67, &qword_27C766E88, &qword_20C16E290);
            if (v72(v73 + v69, 1, v71) == 1)
            {
              sub_20B520158(v73, &qword_27C766E88, &qword_20C16E290);
              goto LABEL_55;
            }
          }

          else
          {
            v76 = v84;
            sub_20BE4CE1C(v70, v84);
            if (v72(v70 + v69, 1, v71) != 1)
            {
              v77 = v87;
              v78 = v70 + v69;
              v79 = v83;
              (*(v87 + 32))(v83, v78, v71);
              sub_20BE4D1C8(&qword_27C76F730, MEMORY[0x277D50820], MEMORY[0x277D50830]);
              v80 = v70;
              v81 = sub_20C13C894();
              v82 = *(v77 + 8);
              v82(v79, v71);
              sub_20B520158(v90, &qword_27C766E88, &qword_20C16E290);
              sub_20B520158(v67, &qword_27C766E88, &qword_20C16E290);
              v82(v76, v71);
              sub_20B520158(v80, &qword_27C766E88, &qword_20C16E290);
              if ((v81 & 1) == 0)
              {
                goto LABEL_50;
              }

LABEL_55:
              sub_20B7897CC(v63);
              v43 = 1;
              return v43 & 1;
            }

            sub_20B520158(v62, &qword_27C766E88, &qword_20C16E290);
            v73 = v88;
            sub_20B520158(v67, &qword_27C766E88, &qword_20C16E290);
            (*(v87 + 8))(v76, v71);
          }

          v74 = &qword_27C76F720;
          v75 = &qword_20C17FE20;
          v64 = v73;
          goto LABEL_49;
        }

LABEL_47:
        sub_20B520158(v62, &qword_27C766E88, &qword_20C16E290);
        v64 = v67;
        goto LABEL_48;
      }
    }

    goto LABEL_47;
  }

  v40 = v35;
  sub_20BE4CDB8(v35, v23);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v92 + 8))(v23, v93);
    goto LABEL_26;
  }

  v44 = v92;
  v45 = v89;
  v46 = v37;
  v47 = v93;
  (*(v92 + 32))(v89, v46, v93);
  v43 = MEMORY[0x20F2F08A0](v23, v45);
  v48 = *(v44 + 8);
  v48(v45, v47);
  v48(v23, v47);
LABEL_15:
  sub_20B7897CC(v40);
  return v43 & 1;
}

uint64_t type metadata accessor for NavigationIntent(uint64_t a1)
{
  result = qword_2811035F8;
  if (!qword_2811035F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE4CDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BE4CE1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E88, &qword_20C16E290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20BE4CED4(uint64_t a1)
{
  sub_20BE4CFAC();
  if (v1 <= 0x3F)
  {
    sub_20BE4CFDC(319, &qword_281103B38, MEMORY[0x277D54298]);
    if (v2 <= 0x3F)
    {
      sub_20BE4CFDC(319, &qword_2811005B0, sub_20BE4D028);
      if (v3 <= 0x3F)
      {
        sub_20BE4D080(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20BE4CFAC()
{
  result = qword_281100590;
  if (!qword_281100590)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_281100590);
  }

  return result;
}

void sub_20BE4CFDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20BE4D028(uint64_t a1)
{
  if (!qword_2811005A8)
  {
    sub_20C134DC4();
    v1 = sub_20C13CD04();
    if (!v2)
    {
      atomic_store(v1, &qword_2811005A8);
    }
  }
}

void sub_20BE4D080(uint64_t a1)
{
  if (!qword_2811004B8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76F718, "pR\a");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767830, &qword_20C15CA20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C766E88, &qword_20C16E290);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2811004B8);
    }
  }
}

uint64_t sub_20BE4D1C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_20BE4D234()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_tracks);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FA0, &qword_20C14F3D0);
  v2 = sub_20C132164();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14F980;
  (*(v3 + 16))(v5 + v4, v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_placeholderAsset, v2);
  v6 = *(v1 + 16);

  v9 = sub_20BC0746C(0, v6 + 1, 0, MEMORY[0x277D84F90]);

  sub_20B8D999C(v7);
  sub_20B8D9970(v5);

  return v9;
}

uint64_t sub_20BE4D37C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for ContainerNodeBuilder(0);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v48 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v34 - v6;
  v41 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_labelContainer;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88, &unk_20C16C120);
  v7 = sub_20C132264();
  v35 = v7;
  v8 = *(v7 - 8);
  v46 = *(v8 + 72);
  v39 = *(v8 + 80);
  v38 = ((v39 + 32) & ~v39) + 2 * v46;
  v9 = (v39 + 32) & ~v39;
  v37 = v9;
  v10 = swift_allocObject();
  v36 = xmmword_20C14F320;
  *(v10 + 16) = xmmword_20C14F320;
  v11 = v10 + v9;
  v12 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_primaryLabel;
  swift_beginAccess();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v14 = *(*(v13 - 8) + 16);
  v14(v11, v1 + v12, v13);
  v15 = *MEMORY[0x277CE9CD8];
  v34 = *(v8 + 104);
  v34(v11, v15, v7);
  v16 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_secondaryLabel;
  swift_beginAccess();
  v17 = v46;
  v14(v11 + v46, v1 + v16, v13);
  v18 = v11 + v17;
  v19 = v35;
  v20 = v34;
  v34(v18, v15, v35);
  v21 = v1;
  v22 = v47;
  sub_20C1320F4();

  v23 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder;
  swift_beginAccess();
  v24 = v42;
  sub_20B6B5ADC(v1 + v23, v42);
  v25 = swift_allocObject();
  *(v25 + 16) = v36;
  v26 = v25 + v37;
  v27 = v43;
  (*(v48 + 16))(v25 + v37, v22, v43);
  v20(v26, *MEMORY[0x277CE9CE8], v19);
  v28 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
  swift_beginAccess();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98, qword_20C158370);
  v30 = v46;
  (*(*(v29 - 8) + 16))(v26 + v46, v21 + v28, v29);
  v20(v26 + v30, *MEMORY[0x277CE9CE0], v19);
  v31 = v44;
  sub_20B7E27F8(v44);

  sub_20B593250(v24);
  sub_20C1323A4();
  sub_20C131FF4();
  v32 = *(v48 + 8);
  v32(v31, v27);
  return (v32)(v47, v27);
}

uint64_t sub_20BE4D868(uint64_t a1, void *a2, float a3, double a4)
{
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_20C1321F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868, &unk_20C16A050);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - v16;
  v18 = v4 + *a2;
  swift_beginAccess();
  if (a4 <= 0.0)
  {
    v20 = 0;
    v22 = LODWORD(a3);
  }

  else
  {
    v29 = a3;
    v27[3] = 0;
    v19 = a1;
    v20 = 1;
    v28 = 1;
    (*(v11 + 16))(v13, v19, v10);
    sub_20C132ED4();
    sub_20C132474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766470, &unk_20C16C130);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20C14F980;
    (*(v15 + 32))(v22 + v21, v17, v14);
  }

  v23 = v18 + *(type metadata accessor for ContainerNodeBuilder(0) + 32);
  v24 = *v23;
  *v23 = v22;
  v25 = *(v23 + 8);
  *(v23 + 8) = v20;
  sub_20B584060(v24, v25);
  return swift_endAccess();
}

void *sub_20BE4DB1C(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v246 = a3;
  v224 = a2;
  v238 = a1;
  v182[3] = *v4;
  v237 = sub_20C1321A4();
  v243 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v236 = v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_20C132194();
  v242 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v234 = v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_20C132344();
  v240 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v216 = (v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = sub_20C132364();
  v241 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v230 = v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v231 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v217 = v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v218 = v182 - v11;
  MEMORY[0x28223BE20](v12);
  v219 = v182 - v13;
  MEMORY[0x28223BE20](v14);
  v221 = v182 - v15;
  MEMORY[0x28223BE20](v16);
  v220 = v182 - v17;
  MEMORY[0x28223BE20](v18);
  v211 = v182 - v19;
  MEMORY[0x28223BE20](v20);
  v212 = v182 - v21;
  MEMORY[0x28223BE20](v22);
  v213 = v182 - v23;
  MEMORY[0x28223BE20](v24);
  v214 = v182 - v25;
  MEMORY[0x28223BE20](v26);
  v215 = v182 - v27;
  v201 = sub_20C1321D4();
  v199 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v198 = v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98, qword_20C158370);
  v205 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v197 = v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v202 = v182 - v31;
  MEMORY[0x28223BE20](v32);
  v203 = v182 - v33;
  MEMORY[0x28223BE20](v34);
  v204 = v182 - v35;
  v207 = sub_20C13A814();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v193 = v182 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_20C132144();
  v187 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v191 = v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_20C132154();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v186 = v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C132EE4();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v229 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v196 = v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v228 = v182 - v46;
  v47 = sub_20C132254();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = v4;
  v51 = v4 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder;
  if (qword_27C760740 != -1)
  {
    swift_once();
  }

  v52 = *algn_27C79A30C;
  v53 = flt_27C79A314;
  *&v192 = flt_27C79A314;
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0, &qword_20C154EC0) + 48);
  v55 = *MEMORY[0x277CE9C98];
  v56 = sub_20C132234();
  (*(*(v56 - 8) + 104))(v50, v55, v56);
  *&v50[v54] = 1099956224;
  v57 = *MEMORY[0x277CE9CB8];
  v58 = *(v48 + 104);
  v194 = v48 + 104;
  v195 = v58;
  v227 = v47;
  v58(v50, v57, v47);
  v51[1] = 1;
  sub_20C132ED4();
  v59 = v228;
  sub_20C132104();
  v226 = *(v40 + 8);
  v239 = v40 + 8;
  v226(v42, v39);
  v60 = type metadata accessor for ContainerNodeBuilder(0);
  v245 = v42;
  v61 = v60;
  sub_20C131F24();
  v225 = v39;
  v62 = *(v229 + 8);
  v210 = v229 + 8;
  v209 = v62;
  v62(v59, v43);
  *v51 = 1;
  v63 = sub_20C131F44();
  v64 = &v51[v61[7]];
  *v64 = v63;
  v64[8] = v65;
  v66 = sub_20C131FD4();
  v67 = &v51[v61[8]];
  *v67 = v66;
  v67[8] = v68;
  v69 = sub_20C131FE4();
  v70 = &v51[v61[9]];
  *v70 = v69;
  *(v70 + 1) = v71;
  v70[20] = v72;
  *(v70 + 4) = v73;
  v70[21] = v74;
  v75 = sub_20C132384();
  v76 = &v51[v61[10]];
  *v76 = v75 & 0xFFFFFFFFFFLL;
  v76[12] = v77;
  *(v76 + 2) = v78;
  v76[13] = 0;
  v79 = sub_20C132004();
  v208 = v43;
  v81 = v80;
  v83 = v82;
  LOBYTE(v54) = v84;
  v85 = *(v48 + 8);
  v188 = v48 + 8;
  v189 = v85;
  v85(v50, v227);
  v86 = v61[11];
  v182[2] = v51;
  v87 = &v51[v86];
  *v87 = v79;
  *(v87 + 1) = v81;
  *(v87 + 2) = v83;
  v87[24] = v54;
  v183 = v50;
  v88 = v244;
  v89 = &v244[OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent];
  *(v89 + 1) = 0;
  v182[1] = v89;
  swift_unknownObjectWeakInit();
  v90 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_placeholderAsset;
  v200 = objc_opt_self();
  v91 = [v200 whiteColor];
  (*(v184 + 104))(v186, *MEMORY[0x277CE9BD8], v185);
  (*(v187 + 104))(v191, *MEMORY[0x277CE9BC8], v190);
  v92 = swift_allocObject();
  *(v92 + 16) = 0x69662E6F746F6870;
  *(v92 + 24) = 0xEA00000000006C6CLL;
  *(v92 + 40) = 0;
  *(v92 + 48) = 0;
  *(v92 + 32) = v91;
  *(v92 + 56) = 1;
  *(v92 + 64) = 0x69662E6F746F6870;
  *(v92 + 72) = 0xEA00000000006C6CLL;
  sub_20C132124();
  v93 = *(v206 + 104);
  v94 = v193;
  v95 = v207;
  v93(v193, *MEMORY[0x277D4EF48], v207);
  LOBYTE(v247) = 0;
  sub_20C13A384();
  v93(v94, *MEMORY[0x277D4EF50], v95);
  LOBYTE(v247) = 1;
  sub_20C13A384();
  v96 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_catalogWorkout;
  v97 = sub_20C1344C4();
  v206 = *(v97 - 8);
  v98 = *(v206 + 16);
  v191 = v96;
  v207 = v97;
  v98(&v88[v96], v238);
  v190 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_stringBuilder;
  sub_20B78290C(v246, &v88[OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_stringBuilder]);
  v99 = sub_20C132164();
  v186 = *(v99 - 8);
  v100 = *(v186 + 2);
  v193 = v90;
  v101 = v198;
  v187 = v99;
  v100(v198, &v88[v90]);
  v102 = v199;
  v103 = v201;
  (v199[13])(v101, *MEMORY[0x277CE9C40], v201);
  v104 = v245;
  sub_20C132ED4();
  v105 = v197;
  sub_20C1320E4();
  v106 = v104;
  v107 = v225;
  v108 = v226;
  v226(v106, v225);
  v102[1](v101, v103);
  sub_20C1323A4();
  v109 = v202;
  v110 = v222;
  sub_20C131FF4();
  v111 = v205;
  v113 = v205 + 8;
  v112 = *(v205 + 1);
  v112(v105, v110);
  sub_20C1323F4();
  v247 = v114;
  v248 = v115;
  v116 = v203;
  sub_20C131F54();
  v112(v109, v110);
  v117 = v204;
  sub_20C131F84();
  v197 = v113;
  v192 = v112;
  v112(v116, v110);
  v118 = *(v111 + 4);
  v185 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
  v118(&v88[OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image], v117, v110);
  v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EBB0, &unk_20C17FEF0) + 48);
  v120 = *MEMORY[0x277CE9CB0];
  v121 = sub_20C132244();
  v122 = v183;
  (*(*(v121 - 8) + 104))(v183, v120, v121);
  *&v122[v119] = 1090519040;
  v123 = v227;
  v195(v122, *MEMORY[0x277CE9CC8], v227);
  v124 = v245;
  sub_20C132ED4();
  v125 = v196;
  sub_20C132104();
  v108(v124, v107);
  v126 = v108;
  v189(v122, v123);
  v227 = COERCE_UNSIGNED_INT(((960.0 - (v52 + v53)) + -18.0) + -96.0);
  sub_20C1323A4();
  v127 = v228;
  v128 = v208;
  sub_20C131FF4();
  v209(v125, v128);
  v129 = *(v229 + 32);
  v196 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_labelContainer;
  v129(&v88[OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_labelContainer], v127, v128);
  v130 = sub_20B9B2B40();
  v131 = [v130 fontName];

  v132 = sub_20C13C954();
  v134 = v133;

  v135 = v216;
  *v216 = v132;
  v135[1] = v134;
  LODWORD(v201) = *MEMORY[0x277CE9D30];
  v136 = *(v240 + 104);
  v240 += 104;
  v199 = v136;
  (v136)(v135);
  v137 = v230;
  sub_20C132354();
  v138 = v245;
  sub_20C132ED4();
  sub_20C1323D4();
  v139 = v211;
  sub_20C1320B4();
  v126(v138, v107);
  v140 = *(v241 + 8);
  v241 += 8;
  v198 = v140;
  (v140)(v137, v233);
  sub_20C1323A4();
  v141 = v212;
  v142 = v223;
  sub_20C131FF4();
  v143 = *(v231 + 8);
  v143(v139, v142);
  LODWORD(v229) = *MEMORY[0x277CE9C18];
  v144 = v242;
  v145 = *(v242 + 104);
  v211 = (v242 + 104);
  v228 = v145;
  v147 = v234;
  v146 = v235;
  (v145)(v234);
  v148 = v213;
  sub_20C132094();
  v149 = *(v144 + 8);
  v242 = v144 + 8;
  v205 = v149;
  (v149)(v147, v146);
  v143(v141, v142);
  LODWORD(v212) = *MEMORY[0x277CE9C20];
  v150 = v243;
  v151 = *(v243 + 104);
  v203 = (v243 + 104);
  v204 = v151;
  v152 = v236;
  v153 = v237;
  (v151)(v236);
  v154 = v214;
  sub_20C132084();
  v155 = *(v150 + 8);
  v243 = v150 + 8;
  v202 = v155;
  (v155)(v152, v153);
  v143(v148, v142);
  sub_20C1323D4();
  v156 = v215;
  sub_20C1320C4();
  v143(v154, v142);
  v231 = *(v231 + 32);
  (v231)(&v244[OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_primaryLabel], v156, v142);
  v157 = sub_20B9B2CA0();
  v158 = [v157 fontName];

  v159 = sub_20C13C954();
  v161 = v160;

  *v135 = v159;
  v135[1] = v161;
  (v199)(v135, v201, v232);
  v162 = v230;
  v163 = v143;
  sub_20C132354();
  v164 = v245;
  sub_20C132ED4();
  sub_20C1323D4();
  v165 = v217;
  sub_20C1320B4();
  v226(v164, v225);
  (v198)(v162, v233);
  v166 = [v200 lightGrayColor];
  sub_20C1323E4();
  v167 = v218;
  sub_20C1320C4();
  v143(v165, v142);
  sub_20C1323A4();
  v168 = v219;
  sub_20C131FF4();
  v143(v167, v142);
  v170 = v234;
  v169 = v235;
  (v228)(v234, v229, v235);
  v171 = v221;
  sub_20C132094();
  (v205)(v170, v169);
  v143(v168, v142);
  v172 = v236;
  v173 = v237;
  (v204)(v236, v212, v237);
  v174 = v244;
  v175 = v220;
  sub_20C132084();
  (v202)(v172, v173);
  v163(v171, v142);
  (v231)(v174 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_secondaryLabel, v175, v142);
  v176 = v238;
  v177 = sub_20C134364();
  MEMORY[0x28223BE20](v177);
  v178 = v224;
  v182[-2] = v224;
  sub_20BDF22DC(MEMORY[0x277D84F98], sub_20BE51B54, &v182[-4], v177);
  v180 = v179;

  sub_20B815F44(v246);
  (*(v206 + 8))(v176, v207);
  *(v174 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_tracks) = v180;
  __swift_destroy_boxed_opaque_existential_1(v178);
  return v174;
}

uint64_t sub_20BE4F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772B60, &qword_20C160F80);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v35 - v5;
  v49 = sub_20C133474();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = v6;
  v46 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C132144();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C132154();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C132164();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137C24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v35 - v16;
  v18 = sub_20C132C14();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v53 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  sub_20C133444();
  sub_20C138044();
  sub_20C138064();
  sub_20C137BB4();

  (*(v12 + 8))(v14, v11);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_20B9E801C(v17);
  }

  (*(v19 + 32))(v53, v17, v18);
  v35[1] = sub_20C132B24();
  v35[0] = v22;
  (*(v36 + 104))(v40, *MEMORY[0x277CE9BD8], v37);
  (*(v38 + 104))(v42, *MEMORY[0x277CE9BC8], v39);
  sub_20B51CC64(v48, v54);
  v24 = v46;
  v23 = v47;
  v25 = v49;
  (*(v47 + 16))(v46, v50, v49);
  v26 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v27 = swift_allocObject();
  sub_20B52E424(v54, v27 + 16);
  (*(v23 + 32))(v27 + v26, v24, v25);
  v28 = v41;
  sub_20C132124();
  v29 = sub_20C132134();
  v31 = v30;
  v32 = v43;
  v33 = v51;
  v34 = v45;
  (*(v43 + 16))(v51, v28, v45);
  (*(v32 + 56))(v33, 0, 1, v34);
  sub_20C0C1218(v33, v29, v31);
  (*(v32 + 8))(v28, v34);
  return (*(v19 + 8))(v53, v18);
}

uint64_t sub_20BE4FCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v5 = sub_20C137C24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350, &unk_20C155E70);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE4FE60, 0, 0);
}

uint64_t sub_20BE4FE60()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 128);
  v3 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_20C133444();
  sub_20C138B14();
  (*(v4 + 8))(v3, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_20BE50394;
  *(v6 + 24) = 0;
  (*(v2 + 16))(v15, v1, v14);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v15, v14);
  v9 = (v8 + ((v16 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v9 = sub_20BE51CF0;
  v9[1] = v6;
  v10 = MEMORY[0x277CC9318];
  sub_20C137C94();
  (*(v2 + 8))(v1, v14);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *(v11 + 16) = "SeymourUI/MusicTrackNodeBuilder.swift";
  *(v11 + 24) = 37;
  *(v11 + 32) = 2;
  *(v11 + 40) = 92;
  *(v11 + 48) = v17;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_20BE500FC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BE51DB4, v11, v10);
}

uint64_t sub_20BE500FC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_20BE502EC;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3 = sub_20BE5024C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BE5024C()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_20BE502EC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

void sub_20BE50394(UIImage **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = UIImagePNGRepresentation(*a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_20C132C54();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    sub_20B6A3954();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }
}

uint64_t sub_20BE50428()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent);
  v1 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_catalogWorkout;
  v2 = sub_20C1344C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B815F44(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_stringBuilder);

  v3 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_placeholderAsset;
  v4 = sub_20C132164();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98, qword_20C158370);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_labelContainer;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_primaryLabel;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_secondaryLabel, v10);
  v12 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__persistentOverlayEnabled;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__reducedOverlayAnimations, v13);
  return v0;
}

uint64_t sub_20BE50688()
{
  sub_20BE50428();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MusicTrackNodeBuilder(uint64_t a1)
{
  result = qword_27C76F748;
  if (!qword_27C76F748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE50734(uint64_t a1)
{
  type metadata accessor for ContainerNodeBuilder(319);
  if (v1 <= 0x3F)
  {
    sub_20C1344C4();
    if (v2 <= 0x3F)
    {
      sub_20C132164();
      if (v3 <= 0x3F)
      {
        sub_20B592D08(319);
        if (v4 <= 0x3F)
        {
          sub_20B792F2C(319);
          if (v5 <= 0x3F)
          {
            sub_20B592C74(319);
            if (v6 <= 0x3F)
            {
              sub_20B52432C();
              if (v7 <= 0x3F)
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

double sub_20BE5094C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void sub_20BE5099C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_20C1321D4();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v76 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98, qword_20C158370);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v63 - v8;
  v73 = sub_20C132164();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90, &unk_20C14F3C0);
  v83 = *(v14 - 8);
  v15 = v83;
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v63 - v19;
  v70 = a1;
  v20 = sub_20B9B2E00(a1);
  v82 = sub_20B9B2FC0(a1);
  v21 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_primaryLabel;
  swift_beginAccess();
  v69 = *(v15 + 16);
  v69(v17, v1 + v21, v14);
  v74 = v20;
  v22 = [v20 string];
  sub_20C13C954();

  v23 = v66;
  sub_20C132074();

  v24 = v83;
  v68 = *(v83 + 8);
  v68(v17, v14);
  swift_beginAccess();
  v25 = *(v24 + 40);
  v83 = v24 + 40;
  v67 = v25;
  v25(v2 + v21, v23, v14);
  swift_endAccess();
  v26 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_secondaryLabel;
  swift_beginAccess();
  v69(v17, v2 + v26, v14);
  v27 = [v82 string];
  sub_20C13C954();

  sub_20C132074();

  v68(v17, v14);
  v28 = v2;
  swift_beginAccess();
  v67(v2 + v26, v23, v14);
  swift_endAccess();
  type metadata accessor for SessionMusicTrack(0);
  sub_20C138044();
  sub_20C138064();
  v29 = v71;
  sub_20C137BB4();

  v30 = sub_20C132C14();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_20B9E801C(v29);
  }

  else
  {
    v32 = sub_20C132B24();
    v34 = v33;
    (*(v31 + 8))(v29, v30);
    v35 = *(v28 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_tracks);
    if (*(v35 + 16))
    {
      v36 = sub_20B65AA60(v32, v34);
      v38 = v37;

      if (v38)
      {
        v39 = v72;
        v40 = *(v35 + 56) + *(v72 + 72) * v36;
        v41 = *(v72 + 16);
        v42 = v64;
        v43 = v73;
        v41(v64, v40, v73);
        v44 = v65;
        (*(v39 + 32))(v65, v42, v43);
        v45 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
        swift_beginAccess();
        v46 = v79;
        v47 = v75;
        (*(v79 + 16))(v75, v28 + v45, v81);
        v48 = v76;
        v41(v76, v44, v43);
        v50 = v77;
        v49 = v78;
        (*(v77 + 104))(v48, *MEMORY[0x277CE9C40], v78);
        sub_20C1320D4();
        (*(v50 + 8))(v48, v49);
        v51 = v81;
        (*(v46 + 8))(v47, v81);
        (*(v39 + 8))(v65, v43);
        swift_beginAccess();
        (*(v46 + 40))(v28 + v45, v80, v51);
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v52 = OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_image;
  swift_beginAccess();
  v53 = v79;
  v54 = v75;
  v55 = v81;
  (*(v79 + 16))(v75, v28 + v52, v81);
  v56 = v76;
  (*(v72 + 16))(v76, v28 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_placeholderAsset, v73);
  v58 = v77;
  v57 = v78;
  (*(v77 + 104))(v56, *MEMORY[0x277CE9C40], v78);
  v59 = v80;
  sub_20C1320D4();
  (*(v58 + 8))(v56, v57);
  (*(v53 + 8))(v54, v55);
  swift_beginAccess();
  (*(v53 + 40))(v28 + v52, v59, v55);
LABEL_8:
  swift_endAccess();
  v60 = v28 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v61 = *(v60 + 8);
    ObjectType = swift_getObjectType();
    (*(v61 + 8))(ObjectType, v61);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_20BE51328(double a1)
{
  v2 = v1;
  v4 = sub_20C132EE4();
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F758, &qword_20C17FED8);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - v7;
  v8 = sub_20C1321F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  (*(v16 + 16))(&v42 - v18, v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__reducedOverlayAnimations, v15, v17);
  sub_20C13A344();
  (*(v16 + 8))(v19, v15);
  if (v51)
  {
    a1 = 0.0;
  }

  sub_20C1322D4();
  sub_20C1322E4();
  sub_20C1322C4();
  sub_20C1322A4();
  v20 = *MEMORY[0x277CE9C78];
  v21 = *(v9 + 104);
  v21(v14, v20, v8);
  sub_20BE4D868(v14, &OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder, 1.0, a1);
  v46 = *(v9 + 8);
  v46(v14, v8);
  sub_20C132434();
  v23 = v22;
  v25 = v24;
  sub_20C132424();
  v27 = v26;
  v29 = v28;
  sub_20C1322D4();
  sub_20C1322E4();
  sub_20C1322C4();
  sub_20C1322A4();
  v21(v11, v20, v8);
  v30 = v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder;
  swift_beginAccess();
  if (a1 <= 0.0)
  {
    v35 = 0;
    v34 = v23 | (v25 << 32);
  }

  else
  {
    v49 = v23;
    v50 = v25;
    v47 = v27 | (v29 << 32);
    v48 = 0;
    (*(v9 + 16))(v14, v11, v8);
    sub_20C132ED4();
    sub_20B7E249C();
    v31 = v43;
    sub_20C132474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F760, &unk_20C17FEE0);
    v32 = v44;
    v33 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_20C14F980;
    (*(v32 + 32))(v34 + v33, v31, v45);
    v35 = 1;
  }

  v36 = v30 + *(type metadata accessor for ContainerNodeBuilder(0) + 28);
  v37 = *v36;
  *v36 = v34;
  v38 = *(v36 + 8);
  *(v36 + 8) = v35;
  sub_20B584060(v37, v38);
  swift_endAccess();
  v46(v11, v8);
  v39 = v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v39 + 8);
    ObjectType = swift_getObjectType();
    (*(v40 + 8))(ObjectType, v40);
    swift_unknownObjectRelease();
  }
}

void sub_20BE51870(double a1)
{
  v2 = v1;
  v19 = sub_20C1321F4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *(v8 + 16);
  v12(&v19 - v10, v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__reducedOverlayAnimations, v7, v9);
  sub_20C13A344();
  v13 = *(v8 + 8);
  v13(v11, v7);
  v14 = v21;
  (v12)(v11, v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder__persistentOverlayEnabled, v7);
  sub_20C13A344();
  v13(v11, v7);
  if ((v20 & 1) == 0)
  {
    if (v14)
    {
      a1 = 0.0;
    }

    sub_20C1322D4();
    sub_20C1322E4();
    sub_20C1322C4();
    sub_20C1322A4();
    v15 = v19;
    (*(v4 + 104))(v6, *MEMORY[0x277CE9C78], v19);
    sub_20BE4D868(v6, &OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_containerBuilder, 0.0, a1);
    (*(v4 + 8))(v6, v15);
  }

  v16 = v2 + OBJC_IVAR____TtC9SeymourUI21MusicTrackNodeBuilder_parent;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BE51B70(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_20C133474() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20BB110D0;

  return sub_20BE4FCBC(a1, a2, v2 + 16, v2 + v7);
}

uint64_t sub_20BE51C54(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

uint64_t sub_20BE51CF8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E2C08(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20BE51DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a2, a3);
  MEMORY[0x20F2F4230](45, 0xE100000000000000);
  v3 = sub_20C13DFA4();
  MEMORY[0x20F2F4230](v3);

  return v5;
}

uint64_t sub_20BE51E8C()
{

  v1 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPageCategory;
  v2 = sub_20C1352F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPage;
  v4 = sub_20C1333A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_archivedSessionClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_assetClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configurationClient));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_subscriptionCache));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_upNextQueueClient));

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configuration);
  return v0;
}

uint64_t sub_20BE52054()
{
  sub_20BE51E8C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChartGalleryDataProvider(uint64_t a1)
{
  result = qword_27C76F768;
  if (!qword_27C76F768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE52100(uint64_t a1)
{
  sub_20C1352F4();
  if (v1 <= 0x3F)
  {
    sub_20C1333A4();
    if (v2 <= 0x3F)
    {
      sub_20B524ACC(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BE52278@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_20BE522F4()
{
  if ((*(*v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_activationState) & 1) == 0)
  {
    *(*v0 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_activationState) = 1;
  }
}

uint64_t sub_20BE52470@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20BE524C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v104 = a6;
  v105 = a3;
  v93 = a5;
  v95 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v11 - 8);
  v103 = v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v15 - 8);
  v101 = v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v17 - 8);
  v99 = v92 - v18;
  v100 = sub_20C1333A4();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v97 = v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v20 - 8);
  v94 = v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_bookmarks) = v22;
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_playlists) = v22;
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_resumableSessions) = v22;
  *(v6 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v23 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configuration;
  v24 = sub_20C134104();
  (*(*(v24 - 8) + 56))(v7 + v23, 1, 1, v24);
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_activationState) = 0;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(v117, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(v117, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v117, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_bookmarkClient);
  v92[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v117, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(v117, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_eventHub) = v117[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v117, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v117, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(v117, v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_upNextQueueClient);
  type metadata accessor for ChartGalleryShelf(0);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v26 = v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_row;
  sub_20B5D8060(v117);
  v27 = v117[5];
  *(v26 + 64) = v117[4];
  *(v26 + 80) = v27;
  *(v26 + 160) = v118;
  v28 = v117[9];
  *(v26 + 128) = v117[8];
  *(v26 + 144) = v28;
  v29 = v117[7];
  *(v26 + 96) = v117[6];
  *(v26 + 112) = v29;
  v30 = v117[1];
  *v26 = v117[0];
  *(v26 + 16) = v30;
  v31 = v117[3];
  *(v26 + 32) = v117[2];
  *(v26 + 48) = v31;
  v32 = (v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_decriptorIdentifier);
  *v32 = v105;
  v32[1] = a4;
  v96 = a4;
  sub_20C133AA4();
  v33 = v116[1];
  v34 = (v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_eventHub);
  *v34 = v116[0];
  v34[1] = v33;
  *(v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_placeholders) = v93;
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  *(v35 + 152) = MEMORY[0x277D84F90];
  v37 = v36;
  *(v35 + 160) = sub_20B6B0C04(v36);
  *(v35 + 168) = MEMORY[0x277D84FA0];
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();

  *(v35 + 136) = 10;
  *(v35 + 144) = v95;
  *(v35 + 145) = 0;
  *(v25 + OBJC_IVAR____TtC9SeymourUI17ChartGalleryShelf_lazyLockupFetcher) = v35;
  v95 = sub_20C1380F4();
  v38 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v93 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v38 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v39 = sub_20C13C724();
  v40 = type metadata accessor for CatalogPageImpressionTracker();
  v41 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v42 = MEMORY[0x277D221C0];
  v41[2] = sub_20C13C6D4();
  v41[3] = v39;
  v41[4] = v42;
  v116[3] = v40;
  v43 = sub_20B63EE48();
  v116[4] = v43;
  v116[0] = v41;
  v44 = type metadata accessor for MetricLocationStore();
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D84F98];
  *(v45 + 16) = v37;
  *(v45 + 24) = v46;
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v116, v40);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = (v92 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  v52 = *v50;
  v115[3] = v40;
  v115[4] = v43;
  v115[0] = v52;
  v114[3] = v44;
  v114[4] = &off_2822B6968;
  v114[0] = v45;
  v113[0] = v37;
  sub_20BB5D394(0, 1, 0);
  v53 = v113[0];
  v55 = *(v113[0] + 16);
  v54 = *(v113[0] + 24);
  if (v55 >= v54 >> 1)
  {
    sub_20BB5D394((v54 > 1), v55 + 1, 1);
    v53 = v113[0];
  }

  *(v53 + 16) = v55 + 1;
  v56 = v53 + 24 * v55;
  *(v56 + 32) = v25;
  *(v56 + 40) = &off_2822FCB50;
  *(v56 + 48) = 0;
  sub_20B51CC64(v115, v113);
  sub_20B51CC64(v114, v112);
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v113, v113[3]);
  v94 = v92;
  v58 = MEMORY[0x28223BE20](v57);
  v60 = (v92 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60, v58);
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v112, v112[3]);
  v63 = MEMORY[0x28223BE20](v62);
  v65 = (v92 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65, v63);
  v67 = *v60;
  v68 = *v65;
  v110 = v40;
  v111 = v43;
  v109[0] = v67;
  v107 = v44;
  v108 = &off_2822B6968;
  v106[0] = v68;
  v69 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  v71 = MEMORY[0x28223BE20](v70);
  v73 = (v92 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73, v71);
  v75 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
  v76 = MEMORY[0x28223BE20](v75);
  v78 = (v92 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78, v76);
  v80 = sub_20BE3AA74(v105, v96, v53, v95, v93, *v73, *v78, 2, v69);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v116);
  *(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_page) = v80;
  v81 = OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPageCategory;
  v82 = sub_20C1352F4();
  v83 = *(v82 - 8);
  v84 = v104;
  (*(v83 + 16))(v7 + v81, v104, v82);
  v105 = *&v80[OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier];
  v85 = v99;
  (*(v83 + 104))(v99, *MEMORY[0x277D51838], v82);
  (*(v83 + 56))(v85, 0, 1, v82);
  v86 = sub_20C132C14();
  (*(*(v86 - 8) + 56))(v101, 1, 1, v86);
  v87 = sub_20C135ED4();
  (*(*(v87 - 8) + 56))(v102, 1, 1, v87);
  v88 = sub_20C136914();
  (*(*(v88 - 8) + 56))(v103, 1, 1, v88);

  v89 = v97;
  sub_20C133384();
  (*(v98 + 32))(v7 + OBJC_IVAR____TtC9SeymourUI24ChartGalleryDataProvider_metricPage, v89, v100);
  v90 = sub_20BE14668();
  (*(v83 + 8))(v84, v82, v90);
  return v7;
}

uint64_t sub_20BE533E4(uint64_t a1)
{
  v149 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767AE8, &unk_20C162838);
  MEMORY[0x28223BE20](v2 - 8);
  v132 = &v122 - v3;
  v133 = sub_20C137884();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v129 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20C135EB4();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v130 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = &v122 - v7;
  v128 = sub_20C1373A4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C136DE4();
  MEMORY[0x28223BE20](v9);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v146 = &v122 - v13;
  v125 = sub_20C13BB84();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_20C137514();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_20C136D94();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_20C136D64();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v137 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v140 = &v122 - v20;
  v21 = sub_20C136224();
  MEMORY[0x28223BE20](v21);
  v23 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v122 - v25;
  v147 = sub_20C135E14();
  v27 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v148 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C135344();
  MEMORY[0x28223BE20](v29);
  v31 = (&v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C135DE4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v48 = *v31;
      v49 = v148;
      (*(v27 + 16))(v148, v1, v147);
      type metadata accessor for EditorialLockupsShelf(0);
      swift_allocObject();

      v42 = sub_20BB4A46C(v50, v48, v49);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v33 = MEMORY[0x277D52890];
      v34 = v26;
      sub_20BE54BF0(v31, v26, MEMORY[0x277D52890]);
      sub_20BE54C58(v26, v23, v33);
      v35 = swift_getEnumCaseMultiPayload();
      if (v35)
      {
        if (v35 == 1)
        {
          v36 = v138;
          v37 = v139;
          (*(v138 + 32))(v17, v23, v139);
          v38 = sub_20C135DB4();
          v40 = v39;
          type metadata accessor for CatalogWorkoutDetailHeaderShelf(0);
          swift_allocObject();

          v42 = sub_20B76FE34(v41, v38, v40);

          v43 = sub_20B76ECD8(v17);
          (*(v36 + 8))(v17, v37, v43);
          sub_20BE54CC0(v34, MEMORY[0x277D52890]);
        }

        else
        {
          v94 = v144;
          v95 = v143;
          v96 = v145;
          (*(v144 + 32))(v143, v23, v145);
          sub_20C1380F4();
          v97 = sub_20C138104();
          if (v97 == sub_20C138104())
          {
            v98 = v123;
            sub_20C13B534();
            v99 = sub_20C13BB74();
            v100 = sub_20C13D1F4();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              *v101 = 0;
              _os_log_impl(&dword_20B517000, v99, v100, "Preview video link shelf not supported in tvOS. Discarding.", v101, 2u);
              MEMORY[0x20F2F6A40](v101, -1, -1);
            }

            (*(v124 + 8))(v98, v125);
            (*(v94 + 8))(v95, v96);
            sub_20BE54CC0(v34, MEMORY[0x277D52890]);
            return 0;
          }

          else
          {
            v116 = sub_20C135DB4();
            v118 = v117;
            type metadata accessor for PreviewVideoLinkShelf(0);
            swift_allocObject();

            v42 = sub_20BE9B2CC(v119, v116, v118);

            sub_20BE99D2C(v95);
            (*(v94 + 8))(v95, v96);
            sub_20BE54CC0(v34, MEMORY[0x277D52890]);
          }
        }
      }

      else
      {
        v87 = v141;
        v88 = v140;
        v89 = v142;
        (*(v141 + 32))();
        sub_20C1380F4();
        v90 = sub_20C138104();
        v91 = sub_20C138104();
        v92 = v137;
        (*(v87 + 16))(v137, v88, v89);
        if (v90 == v91)
        {
          type metadata accessor for TVExpandingTextEditorialSectionShelf(0);
          swift_allocObject();

          v42 = sub_20BE9F518(v93, v92);
        }

        else
        {
          v114 = v148;
          (*(v27 + 16))(v148, v1, v147);
          type metadata accessor for ExpandingTextEditorialSectionShelf(0);
          swift_allocObject();

          v42 = sub_20BABA12C(v115, v92, v114);
        }

        (*(v87 + 8))(v88, v89);
        sub_20BE54CC0(v26, MEMORY[0x277D52890]);
      }
    }

    else
    {
      v51 = MEMORY[0x277D52FB8];
      v52 = v146;
      sub_20BE54BF0(v31, v146, MEMORY[0x277D52FB8]);
      sub_20BE54C58(v52, v11, v51);
      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 1)
      {
        if (v53 == 2)
        {
          v72 = v127;
          v73 = v126;
          v74 = v128;
          (*(v127 + 32))(v126, v11, v128);
          v75 = sub_20C137394();
          v77 = v76;
          type metadata accessor for MarketingInlineBannerShelf(0);
          v42 = swift_allocObject();
          sub_20C132ED4();
          (*(v72 + 8))(v73, v74);
          sub_20BE54CC0(v52, MEMORY[0x277D52FB8]);
          *(v42 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_delegate + 8) = 0;
          swift_unknownObjectWeakInit();
          v78 = v42 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_row;
          sub_20B5D8060(&v150);
          v79 = v155;
          *(v78 + 64) = v154;
          *(v78 + 80) = v79;
          *(v78 + 160) = v160;
          v80 = v159;
          *(v78 + 128) = v158;
          *(v78 + 144) = v80;
          v81 = v157;
          *(v78 + 96) = v156;
          *(v78 + 112) = v81;
          v82 = v151;
          *v78 = v150;
          *(v78 + 16) = v82;
          v83 = v153;
          *(v78 + 32) = v152;
          *(v78 + 48) = v83;
          *(v42 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_marketingPresentationStyle) = 1;
          v84 = (v42 + OBJC_IVAR____TtC9SeymourUI26MarketingInlineBannerShelf_contentIdentifier);
          *v84 = v75;
          v84[1] = v77;
        }

        else
        {
          v108 = v131;
          v109 = v129;
          v110 = v133;
          (*(v131 + 32))(v129, v11, v133);
          v111 = v132;
          (*(v108 + 16))(v132, v109, v110);
          v112 = type metadata accessor for WorkoutPlanBannerContent(0);
          (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
          type metadata accessor for WorkoutPlanBannerShelf(0);
          swift_allocObject();

          v42 = sub_20B913E98(v113, v111);

          (*(v108 + 8))(v109, v110);
          sub_20BE54CC0(v52, MEMORY[0x277D52FB8]);
        }
      }

      else if (v53)
      {
        v104 = *v11;
        v105 = v148;
        (*(v27 + 16))(v148, v1, v147);
        v106 = objc_allocWithZone(type metadata accessor for MarketingHeaderUpsellShelf(0));

        v42 = sub_20BC2BE1C(v107, v104, v105);

        sub_20BE54CC0(v52, MEMORY[0x277D52FB8]);
      }

      else
      {
        v54 = v135;
        v55 = v134;
        v56 = v136;
        (*(v135 + 32))(v134, v11, v136);
        v57 = v130;
        (*(v54 + 16))(v130, v55, v56);
        v58 = v148;
        (*(v27 + 16))(v148, v1, v147);
        v59 = type metadata accessor for LocalImageLoader();
        v60 = swift_allocObject();
        *(&v151 + 1) = v59;
        *&v152 = &off_2822D4BB0;
        *&v150 = v60;
        type metadata accessor for MarketingHeaderBannerShelf(0);
        v61 = swift_allocObject();
        v62 = __swift_mutable_project_boxed_opaque_existential_1(&v150, v59);
        v63 = MEMORY[0x28223BE20](v62);
        v65 = (&v122 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v66 + 16))(v65, v63);
        v67 = *v65;

        v42 = sub_20BE546E8(v68, v57, v58, v67, v61);

        (*(v54 + 8))(v55, v56);
        sub_20BE54CC0(v52, MEMORY[0x277D52FB8]);
        __swift_destroy_boxed_opaque_existential_1(&v150);
      }
    }

    return v42;
  }

  if (!EnumCaseMultiPayload)
  {
    v44 = *v31;
    v45 = v148;
    (*(v27 + 16))(v148, v1, v147);
    type metadata accessor for ChartLockupsShelf(0);
    swift_allocObject();

    sub_20B9EA858(v46, v44, v45);
    v42 = v47;

    return v42;
  }

  v69 = *v31;
  if (v69 > 5)
  {
    if (v69 - 7 >= 2)
    {
      if (v69 == 6)
      {
        v85 = v148;
        (*(v27 + 16))(v148, v1, v147);
        type metadata accessor for ShowcaseShelf(0);
        swift_allocObject();

        v42 = sub_20C026AAC(v86, v85);
      }

      else
      {
        type metadata accessor for ScheduledWorkoutPlanShelf(0);
        swift_allocObject();

        return sub_20B6157F8(v120);
      }

      return v42;
    }

LABEL_30:
    v102 = v148;
    (*(v27 + 16))(v148, v1, v147);
    type metadata accessor for RecommendationsShelf(0);
    swift_allocObject();

    v42 = sub_20C077074(v103, v69, v102);

    return v42;
  }

  v42 = 0;
  if (*v31 > 2u)
  {
    if (v69 - 4 < 2)
    {
      return v42;
    }

    goto LABEL_30;
  }

  if (v69 == 1)
  {
    v70 = v148;
    (*(v27 + 16))(v148, v1, v147);
    type metadata accessor for MyLibraryShelf(0);
    swift_allocObject();

    v42 = sub_20B68CD58(v71, v70);
  }

  return v42;
}

uint64_t sub_20BE546E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v34 = a3;
  v8 = sub_20C13A814();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = type metadata accessor for LocalImageLoader();
  v36[4] = &off_2822D4BB0;
  v36[0] = a4;
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v12 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerSource;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D30, &qword_20C15EBE0);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 2, v13);
  *(a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementImageLoading) = 0;
  v14 = a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_row;
  sub_20B5D8060(v37);
  v15 = v37[7];
  v16 = v37[9];
  *(v14 + 128) = v37[8];
  *(v14 + 144) = v16;
  v17 = v37[3];
  v18 = v37[5];
  v19 = v37[6];
  *(v14 + 64) = v37[4];
  *(v14 + 80) = v18;
  *(v14 + 160) = v38;
  *(v14 + 96) = v19;
  *(v14 + 112) = v15;
  v20 = v37[1];
  *v14 = v37[0];
  *(v14 + 16) = v20;
  *(v14 + 32) = v37[2];
  *(v14 + 48) = v17;
  v21 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_serviceSubscription;
  v22 = sub_20C135734();
  (*(*(v22 - 8) + 56))(a5 + v21, 1, 1, v22);
  v23 = a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_bannerVideoPreviewDurationThresholdInSeconds;
  *v23 = 0;
  *(v23 + 8) = 1;
  (*(v9 + 104))(v11, *MEMORY[0x277D4EF10], v8);
  LOBYTE(v35[0]) = 1;
  sub_20C13A384();
  v24 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_content;
  v25 = sub_20C135EB4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a5 + v24, a2, v25);
  v27 = OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_descriptor;
  v28 = sub_20C135E14();
  v29 = *(v28 - 8);
  v30 = v34;
  (*(v29 + 16))(a5 + v27, v34, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E900, &qword_20C16DAE0);
  sub_20C133AA4();
  sub_20B51C710(v35, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_engagementPresentationCoordinator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_eventHub) = v35[0];
  sub_20B51CC64(v36, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_localImageLoader);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v35, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_mediaTagStringBuilder);
  *(a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_state) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v35, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionCache);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(v35, a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_configurationClient);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = sub_20C13A914();
  (*(v29 + 8))(v30, v28);
  (*(v26 + 8))(v33, v25);
  __swift_destroy_boxed_opaque_existential_1(v36);
  *(a5 + OBJC_IVAR____TtC9SeymourUI26MarketingHeaderBannerShelf_subscriptionToken) = v31;
  return a5;
}

uint64_t sub_20BE54BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE54C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BE54CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BE54D20(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return;
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v27 = a1 + 32;
  while (1)
  {
    v3 = *(v27 + 8 * v1);
    v4 = v3 >> 62;
    v5 = v3 >> 62 ? sub_20C13DB34() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_20C13DB34();
      v8 = v25 + v5;
      if (__OFADD__(v25, v5))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 + v5;
      if (__OFADD__(v7, v5))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v31 = v5;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      break;
    }

    if (v6)
    {
      goto LABEL_17;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v8 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v4)
    {
      goto LABEL_19;
    }

LABEL_13:
    v13 = v3;
    v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v31)
    {
      goto LABEL_35;
    }

    v29 = v2;
    v17 = v10 + 8 * v11 + 32;
    v26 = v10;
    if (v4)
    {
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      sub_20B859A9C();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
        v19 = sub_20B720464(v30, i, v13);
        v21 = *v20;
        (v19)(v30, 0);
        *(v17 + 8 * i) = v21;
      }
    }

    else
    {
      sub_20B5E29D0();
      swift_arrayInitWithCopy();
    }

    v2 = v29;
    if (v31 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v31);
      v24 = v22 + v31;
      if (v23)
      {
        goto LABEL_36;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return;
    }
  }

  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_17:
  sub_20C13DB34();
LABEL_18:
  v2 = sub_20C13DCD4();
  v10 = v2 & 0xFFFFFFFFFFFFFF8;
  v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_19:
  v13 = v3;
  v15 = v10;
  v16 = sub_20C13DB34();
  v10 = v15;
  v14 = v16;
  if (v16)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v31 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

id TVPlaylistViewController.__allocating_init(dependencies:pageContext:pageNavigator:playlistIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = sub_20BE55E10(a1, a2, a3, v15, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

id TVPlaylistViewController.init(dependencies:pageContext:pageNavigator:playlistIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_20BE55BAC(a1, a2, a3, v18, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

Swift::Void __swiftcall TVPlaylistViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_focusedWorkoutController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_listViewController];
  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  [v11 addSubview_];

  [v9 didMoveToParentViewController_];
  v14 = [v9 view];
  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C14FE90;
  v17 = [v9 view];
  if (!v17)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v2 view];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:90.0];
  *(v16 + 32) = v23;
  v24 = [v9 view];
  if (!v24)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 &selRef_passwordEntryCancelledHandler + 6];
  *(v16 + 40) = v30;
  v31 = [v9 view];
  if (!v31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = v34;
  v36 = [v34 bottomAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v16 + 48) = v37;
  v38 = [v9 view];
  if (!v38)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v1 view];
  if (!v41)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 &selRef_passwordEntryCancelledHandler + 6];
  *(v16 + 56) = v44;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v46 = [v2 view];
  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v1 view];
  if (!v49)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v50 = v49;
  v51 = [v49 leadingAnchor];

  v52 = [v48 &selRef_passwordEntryCancelledHandler + 6];
  *(inited + 32) = v52;
  v53 = [v2 view];
  if (!v53)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v54 = v53;
  v55 = [v53 topAnchor];

  v56 = [v1 view];
  if (!v56)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v57 = v56;
  v58 = [v56 topAnchor];

  v59 = [v55 &selRef_passwordEntryCancelledHandler + 6];
  *(inited + 40) = v59;
  v60 = [v2 view];
  if (!v60)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v61 = v60;
  v62 = [v60 bottomAnchor];

  v63 = [v1 view];
  if (!v63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v64 = v63;
  v65 = [v63 bottomAnchor];

  v66 = [v62 constraintEqualToAnchor_];
  *(inited + 48) = v66;
  v67 = [v2 view];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 widthAnchor];

    v70 = [v69 constraintEqualToConstant_];
    *(inited + 56) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_20C14F980;
    sub_20B8D9310(inited);
    *(v71 + 32) = v16;
    v72 = objc_opt_self();
    sub_20BE54D20(v71);
    swift_setDeallocating();
    sub_20B68537C(v71 + 32);
    sub_20B5E29D0();
    v73 = sub_20C13CC54();

    [v72 activateConstraints_];

    sub_20BD8F2B0();
    return;
  }

LABEL_43:
  __break(1u);
}

id TVPlaylistViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TVPlaylistViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BE55BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v32 = a6;
  v33 = a9;
  ObjectType = swift_getObjectType();
  v16 = *(a8 - 8);
  MEMORY[0x28223BE20](ObjectType);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  (*(v16 + 32))(&v31 - v21, a4, a8, v20);
  *&a7[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_layout] = xmmword_20C16A0B0;
  type metadata accessor for TVPlaylistPresenter();
  swift_allocObject();

  v24 = sub_20BD8EEC8(v23, a2, a3, a5, v32);
  *&a7[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_presenter] = v24;
  v25 = v24[2];
  v26 = objc_allocWithZone(type metadata accessor for TVPlaylistListViewController(0));
  (*(v16 + 16))(v18, v22, a8);

  v27 = sub_20BE7D794(a1, v25, v18, v26, a8, v33);

  *&a7[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_listViewController] = v27;
  objc_allocWithZone(type metadata accessor for TVQueueFocusedWorkoutViewController());

  *&a7[OBJC_IVAR____TtC9SeymourUI24TVPlaylistViewController_focusedWorkoutController] = sub_20BC1C728(v28);
  v35.receiver = a7;
  v35.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
  (*(v16 + 8))(v22, a8);
  return v29;
}

id sub_20BE55E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a4, a8);
  return sub_20BE55BAC(a1, a2, a3, v17, a5, v22, v19, a8, a9);
}

uint64_t sub_20BE55F94()
{
  sub_20B583E6C(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_20BE56050(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v2[12];
    v5 = sub_20B7B7C20(a1, a2);
    v4(v5);
  }

  else if (v2[16])
  {
    (v2[12])(v2[15]);
  }
}

void sub_20BE56100(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DurationFilterTickView();
  v19.receiver = v4;
  v19.super_class = v13;
  objc_msgSendSuper2(&v19, sel_drawRect_, a1, a2, a3, a4);
  v14 = UIGraphicsGetCurrentContext();
  if (v14)
  {
    v15 = v14;
    sub_20BE56358(v14, a1, a2, a3, a4);
    if (*(v4 + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) != 2)
    {
      sub_20BE56604(v15, a1, a2, a3, a4);
    }
  }

  else
  {
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "Invalid context!", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_20BE56358(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_20C138364();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 systemBackgroundColor];
  v17 = [v16 CGColor];

  CGContextSetFillColorWithColor(a1, v17);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGContextFillRect(a1, v26);
  if (*(v5 + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) != 1)
  {
    v20 = [v15 systemGray5Color];
    v21 = [v20 CGColor];
    goto LABEL_6;
  }

  v18 = [objc_opt_self() briskColors];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 nonGradientTextColor];

    if (v20)
    {
      v21 = [v20 CGColor];
LABEL_6:
      v22 = v21;

      CGContextSetFillColorWithColor(a1, v22);
      v23 = [v15 clearColor];
      v24 = [v23 CGColor];

      CGContextSetStrokeColorWithColor(a1, v24);
      v27.origin.x = a2;
      v27.origin.y = a3;
      v27.size.width = a4;
      v27.size.height = a5;
      CGContextAddEllipseInRect(a1, v27);
      (*(v12 + 104))(v14, *MEMORY[0x277CBF258], v11);
      sub_20C13D184();
      (*(v12 + 8))(v14, v11);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BE56604(CGContext *a1, double a2, double a3, double a4, double a5)
{
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  v9 = [v8 CGColor];

  CGContextSetFillColorWithColor(a1, v9);
  CGContextSetLineCap(a1, kCGLineCapRound);
  CGContextSetLineWidth(a1, *(v5 + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_layout + 32));
  CGContextBeginPath(a1);
  if (*(v5 + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) == 1)
  {
    v10 = [v7 blackColor];
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.380392157 alpha:1.0];
  }

  v11 = v10;
  v12 = [v10 CGColor];

  CGContextSetStrokeColorWithColor(a1, v12);
  v20 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  v13 = 0;
  v14 = 0.0;
  do
  {
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    v18 = (v13 + 1) * 0.785398163 + 0.0;
    sub_20C13D4E4();
    __sincos_stret(v14);
    sub_20C13D594();
    [v20 moveToPoint_];
    sub_20C13D4E4();
    sub_20C13D594();
    [v20 addLineToPoint_];
    ++v13;
    v14 = v18;
  }

  while (v18 < 6.28318531);
  v15 = 0;
  v16 = 0.392699082;
  while (!__OFADD__(v15, 1))
  {
    v19 = (v15 + 1) * 0.785398163 + 0.392699082;
    sub_20C13D4E4();
    __sincos_stret(v16);
    sub_20C13D594();
    [v20 moveToPoint_];
    sub_20C13D4E4();
    sub_20C13D594();
    [v20 addLineToPoint_];
    ++v15;
    v16 = v19;
    if (v19 >= 6.28318531)
    {
      v17 = [v20 CGPath];
      CGContextAddPath(a1, v17);

      CGContextStrokePath(a1);

      return;
    }
  }

LABEL_14:
  __break(1u);
}

id sub_20BE56AF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DurationFilterTickView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20BE56B5C@<X0>(double *a2@<X8>)
{
  sub_20C1380F4();
  v3 = sub_20C138104();
  if (v3 == sub_20C138104())
  {
    v4 = 60.0;
  }

  else
  {
    v4 = 75.0;
  }

  sub_20C1380F4();
  v5 = sub_20C138104();
  if (v5 == sub_20C138104())
  {
    v6 = 2.0;
  }

  else
  {
    v6 = 3.0;
  }

  sub_20C1380F4();
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v8 = 6.0;
  }

  else
  {
    v8 = 8.0;
  }

  sub_20C1380F4();
  v9 = sub_20C138104();
  if (v9 == sub_20C138104())
  {
    v10 = 3.0;
  }

  else
  {
    v10 = 4.0;
  }

  sub_20C1380F4();
  v11 = sub_20C138104();
  result = sub_20C138104();
  if (v11 == result)
  {
    v13 = 2.0;
  }

  else
  {
    v13 = 3.0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v13;
  return result;
}

uint64_t WorkoutPlanSwappableItem.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2F5910](*&v2);
  sub_20C13CA64();
  if (*(v1 + 40) == 255)
  {
    sub_20C13E184();
  }

  else
  {
    sub_20C13E184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00, &unk_20C15E820);
    sub_20B71A9E4();
    sub_20C133BE4();
  }

  type metadata accessor for WorkoutPlanSwappableItem(0);
  sub_20C135C54();
  sub_20BE56FDC(&qword_27C762F50, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  return sub_20C13C7C4();
}

uint64_t WorkoutPlanSwappableItem.hashValue.getter()
{
  sub_20C13E164();
  WorkoutPlanSwappableItem.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BE56DCC()
{
  sub_20C13E164();
  WorkoutPlanSwappableItem.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BE56E10(uint64_t a1)
{
  sub_20C13E164();
  WorkoutPlanSwappableItem.hash(into:)(v2);
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI24WorkoutPlanSwappableItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5 == 255)
  {
    if (v6 == 255)
    {
      goto LABEL_13;
    }

LABEL_15:
    v12 = 0;
    return v12 & 1;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = *(a1 + 40);
  if (v6 == 255)
  {
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_20B6A6418(v7, v8, v5 & 1);
    sub_20B583F4C(v13, v14, v5 & 1);
    goto LABEL_15;
  }

  sub_20B6A6418(v7, v8, v5 & 1);
  sub_20B590B28();
  sub_20B590B7C();
  v9 = sub_20C133BF4();
  sub_20B583F4C(v15, v16, v17);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v11 = type metadata accessor for WorkoutPlanSwappableItem(0);
  v12 = MEMORY[0x20F2ED390](a1 + *(v11 + 28), a2 + *(v11 + 28));
  return v12 & 1;
}

uint64_t sub_20BE56FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_20BE5704C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_20C135214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C132E94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135C04();
  sub_20C133894();
  (*(v4 + 8))(v6, v3);
  sub_20B8D3878();
  v11 = sub_20C13C834();
  (*(v8 + 8))(v10, v7);
  return (v11 & 1) == 0;
}

uint64_t type metadata accessor for RemoteDisplayConnected(uint64_t a1)
{
  result = qword_27C76F7B0;
  if (!qword_27C76F7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE57274(uint64_t a1)
{
  result = sub_20C135174();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20BE572E0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370, &qword_20C153BB0);
  v1[12] = swift_task_alloc();
  v5 = sub_20C135334();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v6 = sub_20C135D54();
  v1[16] = v6;
  v1[17] = *(v6 - 8);
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v1[19] = swift_task_alloc();
  v7 = sub_20C136C64();
  v1[20] = v7;
  v1[21] = *(v7 - 8);
  v1[22] = swift_task_alloc();
  v8 = sub_20C13BB84();
  v1[23] = v8;
  v1[24] = *(v8 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE57614, 0, 0);
}

uint64_t sub_20BE57614()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[2];
  sub_20C13B464();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[10];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[4];
    v12 = v0[5];
    v14 = v0[2];
    v13 = v0[3];
    sub_20B520158(v0[19], &qword_27C768690, &unk_20C14FD90);
    __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
    sub_20C13B954();
    v15 = swift_allocObject();
    *(v15 + 16) = nullsub_1;
    *(v15 + 24) = 0;
    (*(v11 + 16))(v10, v9, v13);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = swift_allocObject();
    (*(v11 + 32))(v17 + v16, v10, v13);
    v18 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = sub_20B5D9F30;
    v18[1] = v15;
    v19 = MEMORY[0x277D84F78];
    sub_20C137C94();
    (*(v11 + 8))(v9, v13);
    v20 = swift_task_alloc();
    v0[29] = v20;
    *(v20 + 16) = "SeymourUI/RemoteBrowsingServiceSubscriptionCache.swift";
    *(v20 + 24) = 54;
    *(v20 + 32) = 2;
    *(v20 + 40) = 32;
    *(v20 + 48) = v8;
    v21 = swift_task_alloc();
    v0[30] = v21;
    *v21 = v0;
    v21[1] = sub_20BE58090;
    v22 = sub_20B526A4C;
LABEL_8:

    return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x800000020C192D10, v22, v20, v19 + 8);
  }

  v23 = v0[16];
  v24 = v0[17];
  v26 = v0[14];
  v25 = v0[15];
  v28 = v0[12];
  v27 = v0[13];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  sub_20C136C24();
  sub_20C135314();
  (*(v26 + 8))(v25, v27);
  if ((*(v24 + 48))(v28, 1, v23) != 1)
  {
    v43 = v0[11];
    v34 = v0[6];
    v33 = v0[7];
    v36 = v0[4];
    v35 = v0[5];
    v37 = v0[2];
    v38 = v0[3];
    (*(v0[17] + 32))(v0[18], v0[12], v0[16]);
    __swift_project_boxed_opaque_existential_1((v37 + 16), *(v37 + 40));
    sub_20C13B934();
    v39 = swift_allocObject();
    *(v39 + 16) = nullsub_1;
    *(v39 + 24) = 0;
    (*(v36 + 16))(v34, v33, v38);
    v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v41 = swift_allocObject();
    (*(v36 + 32))(v41 + v40, v34, v38);
    v42 = (v41 + ((v35 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v42 = sub_20B5DF4B4;
    v42[1] = v39;
    v19 = MEMORY[0x277D84F78];
    sub_20C137C94();
    (*(v36 + 8))(v33, v38);
    v20 = swift_task_alloc();
    v0[26] = v20;
    *(v20 + 16) = "SeymourUI/RemoteBrowsingServiceSubscriptionCache.swift";
    *(v20 + 24) = 54;
    *(v20 + 32) = 2;
    *(v20 + 40) = 38;
    *(v20 + 48) = v43;
    v21 = swift_task_alloc();
    v0[27] = v21;
    *v21 = v0;
    v21[1] = sub_20BE57CE4;
    v22 = sub_20BE69F38;
    goto LABEL_8;
  }

  sub_20B520158(v0[12], &unk_27C762370, &qword_20C153BB0);
  v29 = sub_20C13B8A4();
  sub_20BE69590();
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D4FA70], v29);
  swift_willThrow();
  (*(v0[21] + 8))(v0[22], v0[20]);

  v31 = v0[1];

  return v31();
}

uint64_t sub_20BE57CE4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_20BE57F50;
  }

  else
  {
    (*(v2[9] + 8))(v2[11], v2[8]);
    v3 = sub_20BE57E34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BE57E34()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BE57F50()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[9] + 8))(v0[11], v0[8]);
  (*(v2 + 8))(v1, v3);
  (*(v0[21] + 8))(v0[22], v0[20]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BE58090()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_20BE582C4;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v3 = sub_20BE581E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BE581E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BE582C4()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BE583F0()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE5848C, 0, 0);
}

uint64_t sub_20BE5848C()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 56), *(v0[2] + 80));
  sub_20C13B174();
  v2 = sub_20C136C64();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_20B520158(v1, &qword_27C768690, &unk_20C14FD90);
  if (v3 == 1)
  {
    v4 = v0[2];
    v5 = v4[15];
    v6 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_20BE58608;

    return MEMORY[0x2821B5678](v5, v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_20BE58608()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BE58718(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  v2[4] = swift_task_alloc();
  v3 = sub_20C135734();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[8] = swift_task_alloc();
  v4 = sub_20C136C64();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_20C13BB84();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE58900, 0, 0);
}

uint64_t sub_20BE58900()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[3];
  sub_20C13B464();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[3];
    sub_20B520158(v0[8], &qword_27C768690, &unk_20C14FD90);
    v9 = v8[15];
    v10 = v8[16];
    __swift_project_boxed_opaque_existential_1(v8 + 12, v9);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_20BE58EB8;
    v12 = v0[2];

    return MEMORY[0x2821B5668](v12, v9, v10);
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_20BE58B20;

    return sub_20BE572E0();
  }
}

uint64_t sub_20BE58B20()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20BE59048;
  }

  else
  {
    v2 = sub_20BE58C34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE58C34()
{
  v1 = v0[3];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_20BE58CF4;
  v5 = v0[2];

  return MEMORY[0x2821B5668](v5, v2, v3);
}

uint64_t sub_20BE58CF4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20BE59240;
  }

  else
  {
    v2 = sub_20BE58E08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE58E08()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BE58EB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BE59048(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[4];
  sub_20C136AF4();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v1[10];
    v6 = v1[11];
    v8 = v1[9];
    sub_20B520158(v1[4], &unk_27C762390, &unk_20C15EC90);
    sub_20B8CB638();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v12 = v1[6];
    v11 = v1[7];
    v14 = v1[4];
    v13 = v1[5];
    v15 = v1[2];
    (*(v1[10] + 8))(v1[11], v1[9]);

    v16 = *(v12 + 32);
    v16(v11, v14, v13);
    v16(v15, v11, v13);
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_20BE59240(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[4];
  sub_20C136AF4();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v1[10];
    v6 = v1[11];
    v8 = v1[9];
    sub_20B520158(v1[4], &unk_27C762390, &unk_20C15EC90);
    sub_20B8CB638();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v12 = v1[6];
    v11 = v1[7];
    v14 = v1[4];
    v13 = v1[5];
    v15 = v1[2];
    (*(v1[10] + 8))(v1[11], v1[9]);

    v16 = *(v12 + 32);
    v16(v11, v14, v13);
    v16(v15, v11, v13);
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_20BE59438(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  v2[4] = swift_task_alloc();
  v3 = sub_20C135734();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[8] = swift_task_alloc();
  v4 = sub_20C136C64();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_20C13BB84();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BE59620, 0, 0);
}

uint64_t sub_20BE59620()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[3];
  sub_20C13B464();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[3];
    sub_20B520158(v0[8], &qword_27C768690, &unk_20C14FD90);
    v9 = v8[15];
    v10 = v8[16];
    __swift_project_boxed_opaque_existential_1(v8 + 12, v9);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_20BE69F34;
    v12 = v0[2];

    return MEMORY[0x2821B5670](v12, v9, v10);
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_20BE59840;

    return sub_20BE572E0();
  }
}

uint64_t sub_20BE59840()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20BE69F40;
  }

  else
  {
    v2 = sub_20BE59954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE59954()
{
  v1 = v0[3];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_20BE59A14;
  v5 = v0[2];

  return MEMORY[0x2821B5670](v5, v2, v3);
}

uint64_t sub_20BE59A14()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20BE69F44;
  }

  else
  {
    v2 = sub_20BE69F48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BE59B28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20BE583F0();
}

uint64_t sub_20BE59BB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20BE58718(a1);
}

uint64_t sub_20BE59C54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BE59438(a1);
}

double sub_20BE59CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F828, &unk_20C180438);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE698E0;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F800, &qword_20C1803F8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69840;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F830, &unk_20C180448);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764340, &unk_20C155E60);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69978;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5A884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F838, &unk_20C180458);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762740, &unk_20C1506E0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B531924;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5AC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7F8, &qword_20C1803F0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623E0, &unk_20C14FE70);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69818;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F808, &qword_20C180400);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69868;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5B418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E8, &qword_20C1803D8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EE0, &qword_20C1803E0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE697F0;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F840, &unk_20C180468);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762EA0, &unk_20C152C00);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B531974;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8C8, &unk_20C180558);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60, &unk_20C152F70);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69B80;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F900, &qword_20C1805B8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E7C8, &qword_20C1805C0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69C48;
  *(v34 + 24) = v32;

  v33(sub_20B523484, v34);

  return result;
}

double sub_20BE5C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8E8, &unk_20C180590);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370, &qword_20C153C70);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69BF8;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8D0, &unk_20C180568);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644B0, &unk_20C161530);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69BA8;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8D8, &unk_20C180578);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69BD0;
  *(v34 + 24) = v32;

  v33(sub_20B52347C, v34);

  return result;
}

double sub_20BE5CF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F940, &unk_20C180628);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69E24;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5D2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F938, &qword_20C180618);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763338, &qword_20C180620);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69DFC;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);

  return result;
}

double sub_20BE5D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F930, &qword_20C180608);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170, &qword_20C180610);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69DD4;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);

  return result;
}

double sub_20BE5DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F850, &unk_20C180488);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630, &unk_20C16BB70);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE699C8;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E0, &qword_20C1803D0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764880, &unk_20C157820);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE697C8;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8C0, &unk_20C180548);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69B58;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5E644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F928, &unk_20C1805F8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358, &qword_20C1713C0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69DAC;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);

  return result;
}

double sub_20BE5EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8E0, &qword_20C180588);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500, &qword_20C161210);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B52F6C4;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F910, &qword_20C1805D8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD40, &unk_20C153BA0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69D34;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F920, &unk_20C1805E8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767D78, &qword_20C163870);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69D84;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5F5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F848, &unk_20C180478);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769060, &qword_20C168390);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE699A0;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE5F990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F918, &qword_20C1805E0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69D5C;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE5FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7D8, &unk_20C1803C0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764000, &qword_20C16EE50);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE697A0;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE60148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C8, &unk_20C1803A8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC60, &qword_20C16EEA0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69778;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE60524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F908, &unk_20C1805C8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69C70;
  *(v34 + 24) = v32;

  v33(sub_20B52347C, v34);

  return result;
}

double sub_20BE60900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8B8, &qword_20C180538);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D000, &qword_20C180540);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B53194C;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE60CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F958, &unk_20C180650);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CFF8, &unk_20C1767E8);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B53199C;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE610B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F950, &unk_20C180640);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647C8, &qword_20C1767D0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20B52E590;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE61494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F948, &qword_20C180638);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69E4C;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);

  return result;
}

double sub_20BE61870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F810, &qword_20C180408);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D0, &qword_20C156190);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69890;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE61C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F818, &unk_20C180410);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE698B8;
  *(v34 + 24) = v32;

  v33(sub_20B718F14, v34);

  return result;
}

double sub_20BE62028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8F0, &unk_20C1805A0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD8, &unk_20C17C1A8);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69C20;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE62404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F960, &unk_20C180660);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350, &unk_20C155E70);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69E74;
  *(v34 + 24) = v32;

  v33(sub_20B77F844, v34);

  return result;
}

double sub_20BE627E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F858, &qword_20C180498);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643C8, &qword_20C1804A0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE699F0;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE62BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F860, &unk_20C1804A8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120, &qword_20C155C80);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69A18;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE62F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F880, &unk_20C1804E0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0, &qword_20C155FB0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69A90;
  *(v34 + 24) = v32;

  v33(sub_20B71AB80, v34);

  return result;
}

double sub_20BE63374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F870, &qword_20C1804C8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C20, &qword_20C1804D0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69A68;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE63750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F868, &qword_20C1804B8);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764388, &qword_20C1804C0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69A40;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

double sub_20BE63B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A0, &qword_20C180520);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8A8, &qword_20C185AF0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69B08;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE63F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F898, &qword_20C180508);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C80, &unk_20C180510);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69AE0;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE642E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F888, &unk_20C1804F0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770C70, &qword_20C1859F0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69AB8;
  *(v34 + 24) = v32;

  v33(sub_20B52F238, v34);

  return result;
}

double sub_20BE646C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8B0, &unk_20C180528);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C13BB84();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20B521948(0x65uLL);
  sub_20C13B524();
  v17 = sub_20C13BB74();
  v40 = sub_20C13D1F4();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C13DCA4();
    v38 = v8;
    v22 = sub_20B51E694(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20B517000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290, &unk_20C17F5C0);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BE69B30;
  *(v34 + 24) = v32;

  v33(sub_20B52E438, v34);

  return result;
}

uint64_t sub_20BE64A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v37 = a5;
  v35 = a3;
  v36 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642B0, &unk_20C155DF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v31 - v15);
  v17 = sub_20C13BB84();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v20 = sub_20C13BB74();
  v21 = sub_20C13D1F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = a6;
    v23 = v22;
    v33 = swift_slowAlloc();
    v34 = a7;
    v40 = v33;
    *v23 = 134218498;
    *(v23 + 4) = a2;
    *(v23 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = a1;
    v27 = v13;
    v28 = sub_20B51E694(v24, v25, &v40);

    *(v23 + 14) = v28;
    v13 = v27;
    a1 = v26;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v32;
    _os_log_impl(&dword_20B517000, v20, v21, "Finished P->A conversion: %ld:%s:%lu", v23, 0x20u);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x20F2F6A40](v29, -1, -1);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  (*(v38 + 8))(v19, v39);
  sub_20B52F9E8(a1, v16, &unk_27C7642B0, &unk_20C155DF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F828, &unk_20C180438);
    return sub_20C13CD44();
  }

  else
  {
    sub_20BE69908(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F828, &unk_20C180438);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE64DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135AE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C7641D8, &unk_20C155D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F800, &qword_20C1803F8);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F800, &qword_20C1803F8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE65140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C134D54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764110, &unk_20C155C70);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &unk_27C764110, &unk_20C155C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7F8, &qword_20C1803F0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7F8, &qword_20C1803F0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE654B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C134104();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764168, &unk_20C155CC0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764168, &unk_20C155CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F808, &qword_20C180400);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F808, &qword_20C180400);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE65828(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[1] = a8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[0] = a1;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20B517000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v24 = v20;
    a1 = v27[0];
    MEMORY[0x20F2F6A40](v24, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C0, &qword_20C180390);
    return sub_20C13CD44();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C0, &qword_20C180390);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE65A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C1364A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7F0, &qword_20C1803E8);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F7F0, &qword_20C1803E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E8, &qword_20C1803D8);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E8, &qword_20C1803D8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE65DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C139354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764288, &qword_20C180430);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764288, &qword_20C180430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F820, &unk_20C180420);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F820, &unk_20C180420);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE66160(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v18 = sub_20C13BB74();
  v19 = sub_20C13D1F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31[1] = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v31[0] = a10;
    v23 = v22;
    v36 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = sub_20B51E694(v24, v25, &v36);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v33;
    _os_log_impl(&dword_20B517000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v13 = v31[0];
    MEMORY[0x20F2F6A40](v27, -1, -1);
    MEMORY[0x20F2F6A40](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v36 = a1;
  if (v34)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_20C13CD44();
  }

  else
  {
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE663B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C133954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764888, &unk_20C156210);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764888, &unk_20C156210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E0, &qword_20C1803D0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7E0, &qword_20C1803D0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE66728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135534();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764550, &qword_20C155FD0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &unk_27C764550, &qword_20C155FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8E0, &qword_20C180588);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F8E0, &qword_20C180588);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE66A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C136194();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764620, &qword_20C18E3E0);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &unk_27C764620, &qword_20C18E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F910, &qword_20C1805D8);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F910, &qword_20C1805D8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE66E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C135734();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C764238, &unk_20C155D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F918, &qword_20C1805E0);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F918, &qword_20C1805E0);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE67184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C137094();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7D0, &qword_20C1803B8);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C76F7D0, &qword_20C1803B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C8, &unk_20C1803A8);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F7C8, &unk_20C1803A8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE674F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[1] = a8;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20B517000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    v24 = v18;
    a1 = v27[0];
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F908, &unk_20C1805C8);
    return sub_20C13CD44();
  }

  else
  {
    LOBYTE(v31) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F908, &unk_20C1805C8);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE67754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C136354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D8, &qword_20C156198);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C13BB84();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C13DCA4();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20B51E694(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20B517000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20B52F9E8(a1, v15, &qword_27C7647D8, &qword_20C156198);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F810, &qword_20C180408);
    return sub_20C13CD44();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F810, &qword_20C180408);
    return sub_20C13CD54();
  }
}

uint64_t sub_20BE67AC8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_20C13DCA4();
    v23 = sub_20B51E694(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_20B517000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x20F2F6A40](v24, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F818, &unk_20C180410);
  if (v10)
  {
    return sub_20C13CD44();
  }

  else
  {
    return sub_20C13CD54();
  }
}