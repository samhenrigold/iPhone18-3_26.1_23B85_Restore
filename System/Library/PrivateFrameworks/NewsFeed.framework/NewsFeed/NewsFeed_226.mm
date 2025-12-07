char *sub_1D6F953B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(*&result[OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler] + 56);
    v3 = result;
    ObjectType = swift_getObjectType();
    v5 = *(v2 + 56);
    swift_unknownObjectRetain();
    v5(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FormatViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();

  v2 = v0;
  sub_1D725CAAC();

  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id FormatViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1D6F95748(uint64_t a1, uint64_t a2)
{
  sub_1D6F9A7C8(&qword_1EC898FD0, a2, type metadata accessor for FormatViewController, &protocol conformance descriptor for FormatViewController);

  JUMPOUT(0x1DA6F6FC0);
}

Swift::Void __swiftcall FormatViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7259D1C();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55.receiver = v0;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, sel_viewDidLoad, v6);
  v9 = *&v0[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintViewController];
  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v11 addSubview_];

  [v9 didMoveToParentViewController_];
  v14 = [v9 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
  sub_1D725F10C();
  v9;
  v26 = sub_1D725F0FC();
  if (!v26)
  {
    goto LABEL_8;
  }

  v27 = v26;
  v28 = [v1 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  [v28 addSubview_];

  v30 = *&v1[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView];
  *&v1[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView] = v27;

LABEL_8:
  sub_1D725E51C();
  v31 = sub_1D725E05C();

  v32 = [objc_opt_self() clearColor];
  [v31 setBackgroundColor_];

  sub_1D725E51C();
  v33 = sub_1D725E05C();

  [v33 setShowsHorizontalScrollIndicator_];

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 104))(v8, *MEMORY[0x1E69D7110], v3);
  v35 = objc_allocWithZone(sub_1D725A03C());

  v36 = sub_1D725A01C();
  if (qword_1EDF3C2D0 != -1)
  {
    swift_once();
  }

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v36;
  v38[4] = sub_1D6F95DC0;
  v38[5] = v34;
  sub_1D6F9A7C8(&qword_1EDF0EB08, v39, type metadata accessor for FormatViewController, &protocol conformance descriptor for FormatViewController);
  v40 = v36;

  sub_1D725965C();

  if (v54[15] != 1)
  {

    goto LABEL_15;
  }

  v41 = v40;
  v42 = [v1 view];
  if (!v42)
  {
    goto LABEL_21;
  }

  v43 = v42;
  [v42 bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v41 setFrame_];
  [v41 setAutoresizingMask_];

  v52 = [v1 view];
  if (v52)
  {
    v53 = v52;
    [v52 addSubview_];

LABEL_15:
    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1D6F95D28(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintViewController);

    sub_1D725E51C();
    v4 = sub_1D725E05C();

    [v4 reloadData];
  }
}

Swift::Void __swiftcall FormatViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  sub_1D6F9488C();
  v14 = *&v0[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
}

Swift::Void __swiftcall FormatViewController.viewDidLayoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  sub_1D725E51C();
  v1 = sub_1D725E05C();

  [v1 layoutIfNeeded];

  sub_1D725AA0C();
}

Swift::Void __swiftcall FormatViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D6F9A774(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  *&v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6).n128_u64[0];
  v9 = &v13 - v8;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1, v7);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v10 = sub_1D7258DBC();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1D725F46C();
    swift_unknownObjectRelease();
  }

  sub_1D725E51C();
  v11 = sub_1D725E05C();

  v12 = sub_1D7258DBC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_1D7262F4C();

  sub_1D6F99C70(v9, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  if (qword_1EDF16990 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D725D6BC();
}

Swift::Void __swiftcall FormatViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_1D725CAEC();
}

Swift::Void __swiftcall FormatViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1);
  sub_1D725D6CC();
  sub_1D725CABC();
}

Swift::Void __swiftcall FormatViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, isa);

  sub_1D725E51C();
  v3 = sub_1D725E05C();

  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  sub_1D725E51C();
  v5 = sub_1D725E05C();

  [v5 setShowsHorizontalScrollIndicator_];
}

double FormatViewController.pluginLayoutTransitionManager.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D725E57C();
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(a1 + 24) = v2;
    *(a1 + 32) = *(v3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D6F99C70(v7, &qword_1EC898F98, sub_1D6F99CCC);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t FormatViewController.pluginVisibleItemCount.getter()
{
  sub_1D6F99E2C(0, &qword_1EDF17238, MEMORY[0x1E69D7840]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v9 - v5;
  v9[1] = *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintLayoutProvider);
  sub_1D6F99E2C(0, &qword_1EDF439B0, MEMORY[0x1E69D7EA0]);
  sub_1D69113D8();
  sub_1D725EBEC();
  v7 = sub_1D725D31C();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_1D6F96978(uint64_t (*a1)(uint64_t))
{
  sub_1D6F99D30(0, &qword_1EDF16960, MEMORY[0x1E69D87F8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v11 - v6;
  sub_1D725E53C();
  v11[0] = v11[1];
  sub_1D6087E88(0, v8);
  sub_1D6F9A7C8(&unk_1EDF171E0, 255, sub_1D6087E88, MEMORY[0x1E69D7A78]);
  sub_1D725E03C();

  v9 = a1(v3);
  (*(v4 + 8))(v7, v3);
  return v9;
}

double FormatViewController.initialize(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);

  v10(sub_1D6F99EB0, v7, ObjectType, v8);

  return result;
}

void sub_1D6F96BF0(uint64_t a1, void (*a2)(double, double), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a2;
    v7[4] = a3;
    v8 = v6;

    sub_1D725BFFC();

    sub_1D725AA0C();
  }

  else
  {
    a2(0.0, 0.0);
  }
}

double FormatViewController.relayout(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 48);

  v10(sub_1D6F99EBC, v7, ObjectType, v8);

  return result;
}

void sub_1D6F96DCC(uint64_t a1, void (*a2)(double, double), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a2;
    v7[4] = a3;
    v8 = v6;

    sub_1D725BFFC();
  }

  else
  {
    a2(0.0, 0.0);
  }
}

uint64_t sub_1D6F96E94(uint64_t a1, uint64_t (*a2)(double, double))
{
  v4 = sub_1D725E23C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725E55C();
  swift_getObjectType();
  sub_1D725F1DC();
  swift_unknownObjectRelease();
  sub_1D725E22C();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  sub_1D725E51C();
  v11 = sub_1D725E05C();

  v12 = [v11 collectionViewLayout];

  [v12 collectionViewContentSize];
  v14 = v13;

  result = a2(v10, v14);
  v16 = a1 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize;
  *v16 = v10;
  *(v16 + 8) = v14;
  *(v16 + 16) = 0;
  return result;
}

uint64_t sub_1D6F97088(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D6F970F8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1D6F9A810;
}

uint64_t sub_1D6F9719C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D6F971E4(char a1)
{
  v3 = sub_1D725EB7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v8 + v9) = a1;
  v10 = MEMORY[0x1E69D81C8];
  if ((a1 & 1) == 0)
  {
    v10 = MEMORY[0x1E69D81C0];
  }

  (*(v4 + 104))(v7, *v10, v3);
  return sub_1D725E54C();
}

uint64_t (*sub_1D6F97300(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1D725EB7C();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[5] = v8;
  v9 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  v5[6] = *v1;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1D6F973F4;
}

void sub_1D6F973F4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[5];
  }

  else
  {
    v4 = v3[5];
    if (*(v3[6] + v3[7]))
    {
      v5 = MEMORY[0x1E69D81C8];
    }

    else
    {
      v5 = MEMORY[0x1E69D81C0];
    }

    (*(v3[4] + 104))(v3[5], *v5, v3[3]);
    sub_1D725E54C();
  }

  free(v4);

  free(v3);
}

uint64_t sub_1D6F974BC()
{
  sub_1D6F99E2C(0, &qword_1EDF17238, MEMORY[0x1E69D7840]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v9 - v5;
  v9[1] = *(*v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintLayoutProvider);
  sub_1D6F99E2C(0, &qword_1EDF439B0, MEMORY[0x1E69D7EA0]);
  sub_1D69113D8();
  sub_1D725EBEC();
  v7 = sub_1D725D31C();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_1D6F97618(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6F99D30(0, &qword_1EDF16960, MEMORY[0x1E69D87F8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v13 - v8;
  sub_1D725E53C();
  v13[0] = v13[1];
  sub_1D6087E88(0, v10);
  sub_1D6F9A7C8(&unk_1EDF171E0, 255, sub_1D6087E88, MEMORY[0x1E69D7A78]);
  sub_1D725E03C();

  v11 = a3(v5);
  (*(v6 + 8))(v9, v5);
  return v11;
}

double sub_1D6F97798@<D0>(uint64_t a1@<X8>)
{
  sub_1D725E57C();
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(a1 + 24) = v2;
    *(a1 + 32) = *(v3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D6F99C70(v7, &qword_1EC898F98, sub_1D6F99CCC);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1D6F97884(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);

  v10(sub_1D6F9A818, v7, ObjectType, v8);

  return result;
}

double sub_1D6F97984(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 48);

  v10(sub_1D6F9A814, v7, ObjectType, v8);

  return result;
}

uint64_t sub_1D6F97A84(uint64_t result, double a2, double a3)
{
  v3 = (result + OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize);
  if ((*(result + OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize + 16) & 1) != 0 || *v3 != a2 || v3[1] != a3)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      sub_1D6F9A7C8(&qword_1EDF0EAF8, v4, type metadata accessor for FormatViewController, &protocol conformance descriptor for FormatViewController);
      sub_1D725EFBC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1D6F97B84(uint64_t a1)
{
  sub_1D725E51C();
  v1 = sub_1D725E05C();

  [v1 reloadData];
}

Swift::Void __swiftcall FormatViewController.blueprintReadableContentGuideDidChange(_:)(UILayoutGuide a1)
{
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    sub_1D726347C();
  }
}

void FormatViewController.blueprint(_:didSelect:at:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatBlueprintItemSelectionContext(0);
  *&v13 = MEMORY[0x1EEE9AC00](v11, v12).n128_u64[0];
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v4 tabBarSplitViewFocusable];
  if (v16)
  {
    [v16 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  v17 = *&v4[OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler];
  v18 = sub_1D725E9FC();
  (*(*(v18 - 8) + 16))(v10, a4, v18);
  sub_1D6F9A330();
  (*(*(v19 - 8) + 56))(v10, 0, 2, v19);
  v20 = &v4[OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier];
  swift_beginAccess();
  v21 = *(v20 + 1);
  if (v21)
  {
    v22 = *v20;
    v23 = *&v4[OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker];
    sub_1D6F9A378(v10, v15);
    v24 = &v15[*(v11 + 20)];
    *v24 = v22;
    *(v24 + 1) = v21;
    *&v15[*(v11 + 24)] = v23;
    v25 = *(v17 + 112);
    ObjectType = swift_getObjectType();
    v27 = *(v25 + 40);

    v27(a2, v15, ObjectType, v25);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v17 + 40);
      v29 = swift_getObjectType();
      (*(v28 + 8))(a2, v15, v29, v28);
      swift_unknownObjectRelease();
    }

    sub_1D6F9A3DC(v15, type metadata accessor for FormatBlueprintItemSelectionContext);
  }

  else
  {
    __break(1u);
  }
}

void FormatViewController.blueprint(_:previewViewControllerFor:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);

      v10(a2, v7, v6, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void FormatViewController.blueprint(_:didStartImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);

    v10(a2, v7, v6, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

void FormatViewController.blueprint(_:createdImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);

    v10(a2, v7, v6, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

void FormatViewController.blueprint(_:cancelledImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 32);

    v10(a2, v7, v6, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

void FormatViewController.blueprint(_:createdImpressionSection:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);

    v10(a2, v7, v6, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

void FormatViewController.blueprint(_:layoutOptionsDidChange:triggeredBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D725F26C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x1E69D8630])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v12) & 1) == 0)
    {
      v13 = *(*(v3 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler) + 56);
      ObjectType = swift_getObjectType();
      (*(v13 + 48))(nullsub_1, 0, ObjectType, v13);
    }

    return;
  }

  if (v11 == *MEMORY[0x1E69D8608])
  {
    v15 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v15) & 1) == 0)
    {
      v16 = *(*(v3 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler) + 56);
      v17 = swift_getObjectType();
      (*(v16 + 32))(nullsub_1, 0, v17, v16);
    }
  }

  else
  {
    if (v11 == *MEMORY[0x1E69D8628])
    {
      goto LABEL_3;
    }

    if (v11 == *MEMORY[0x1E69D8658])
    {
      return;
    }

    if (v11 == *MEMORY[0x1E69D8610])
    {
      goto LABEL_3;
    }

    if (v11 != *MEMORY[0x1E69D8638])
    {
      if (v11 == *MEMORY[0x1E69D8650])
      {
        sub_1D725E51C();
        v18 = sub_1D725E05C();

        [v18 reloadData];
      }

      else
      {
        (*(v6 + 8))(v10, v5);
      }
    }
  }
}

void sub_1D6F98624(uint64_t a1)
{
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    sub_1D726347C();
  }
}

uint64_t sub_1D6F986C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E20](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F98734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DA0](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F9879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D90](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F987F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DD0](a1, a2, a3, ObjectType, a5);
}

void sub_1D6F98860(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);

    v10(a2, v7, v6, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6F98928(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);

    v10(a2, v7, v6, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6F989F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DE8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F98A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DA8](a1, a2, ObjectType, a4);
}

void sub_1D6F98AA0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);

    v10(a2, v7, v6, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6F98B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DF0](a1, a2, ObjectType, a4);
}

void sub_1D6F98BC0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 32);

    v10(a2, v7, v6, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6F98C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E00](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F98CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E10](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F98D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DB8](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F98DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D78](a1, ObjectType, a3);
}

uint64_t sub_1D6F98E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D68](a1, ObjectType, a3);
}

uint64_t sub_1D6F98E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D88](a1, ObjectType, a3);
}

uint64_t sub_1D6F98EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D60](a1, ObjectType, a3);
}

uint64_t sub_1D6F98EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D58](a1, ObjectType, a3);
}

uint64_t sub_1D6F98F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DF8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F98F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E08](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F99004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D80](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F9905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D70](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F990B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DD8](a1, a2, ObjectType, a4);
}

double sub_1D6F9928C(void (*a1)(void))
{
  v3 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    sub_1D725E51C();
    a1();
  }

  return result;
}

double sub_1D6F993BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  v6 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  if (*(v5 + v6) == 1)
  {
    sub_1D725E51C();
    a3();
  }

  return result;
}

uint64_t FormatViewController.shouldMonitorScroll.getter(uint64_t a1)
{
  sub_1D725E51C();
  v1 = sub_1D725E05C();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    swift_getObjectType();
    v3 = sub_1D725F01C();
  }

  return v3 & 1;
}

void FormatViewController.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1, uint64_t a2)
{
  sub_1D725E51C();
  v3 = sub_1D725E05C();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v2 = v3 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    swift_getObjectType();
    sub_1D725F02C();
  }
}

uint64_t sub_1D6F9959C(uint64_t a1)
{
  sub_1D725E51C();
  v1 = sub_1D725E05C();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    swift_getObjectType();
    v3 = sub_1D725F01C();
  }

  return v3 & 1;
}

void sub_1D6F99634(uint64_t a1, uint64_t a2)
{
  sub_1D725E51C();
  v3 = sub_1D725E05C();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v2 = v3 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    swift_getObjectType();
    sub_1D725F02C();
  }
}

void sub_1D6F996F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FormatBlueprintItemSelectionContext(0);
  MEMORY[0x1EEE9AC00](v48, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F9A774(0, &qword_1EC881E00, sub_1D5E2C2C8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v46 - v13;
  sub_1D5E2C2C8(0, v12);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F99D30(0, &qword_1EDF16960, MEMORY[0x1E69D87F8]);
  v20 = v19;
  v50 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v46 - v22;
  v24 = *a1;
  v25 = a1[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (v24 && v25)
    {
      v47 = v9;
      sub_1D725E53C();
      v54 = v53;
      sub_1D6087E88(0, v28);
      sub_1D6F9A7C8(&unk_1EDF171E0, 255, sub_1D6087E88, MEMORY[0x1E69D7A78]);
      sub_1D725E03C();

      sub_1D725FA3C();
      v30 = v51;
      v29 = v52;
      if ((*(v51 + 48))(v14, 1, v52) == 1)
      {
        (*(v50 + 8))(v23, v20);

        sub_1D6F99C70(v14, &qword_1EC881E00, sub_1D5E2C2C8);
        return;
      }

      (*(v30 + 32))(v18, v14, v29);
      v31 = *&v27[OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler];
      v32 = v49;
      sub_1D725E9EC();
      sub_1D6F9A330();
      (*(*(v33 - 8) + 56))(v32, 0, 2, v33);
      v34 = &v27[OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier];
      swift_beginAccess();
      v35 = *(v34 + 1);
      if (!v35)
      {
        __break(1u);
        return;
      }

      v36 = *v34;
      v37 = *&v27[OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker];
      v38 = v47;
      sub_1D6F9A378(v32, v47);
      v39 = v48;
      v40 = (v38 + *(v48 + 20));
      *v40 = v36;
      v40[1] = v35;
      *(v38 + *(v39 + 24)) = v37;
      v46 = v35;
      v41 = v31;
      v42 = *(v31 + 112);
      ObjectType = swift_getObjectType();
      v48 = *(v42 + 40);
      v49 = ObjectType;

      (v48)(v18, v38, v49, v42);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = *(v41 + 40);
        v45 = swift_getObjectType();
        (*(v44 + 8))(v18, v38, v45, v44);
        swift_unknownObjectRelease();
      }

      sub_1D6F9A3DC(v38, type metadata accessor for FormatBlueprintItemSelectionContext);
      (*(v51 + 8))(v18, v52);
      (*(v50 + 8))(v23, v20);
    }
  }
}

uint64_t sub_1D6F99C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6F9A774(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D6F99CCC()
{
  result = qword_1EC898FA0;
  if (!qword_1EC898FA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC898FA0);
  }

  return result;
}

void sub_1D6F99D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor(255);
    v8[1] = type metadata accessor for FormatModel(255);
    v8[2] = sub_1D6F9A7C8(&qword_1EDF0D410, 255, type metadata accessor for FormatSectionDescriptor, &protocol conformance descriptor for FormatSectionDescriptor);
    v8[3] = sub_1D6F9A7C8(&qword_1EDF128E0, 255, type metadata accessor for FormatModel, &protocol conformance descriptor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6F99E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FormatLayoutSectionDescriptor;
    v8[1] = &type metadata for FormatLayoutModel;
    v8[2] = sub_1D5B4E1A4();
    v8[3] = sub_1D5B53E88();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6F99EC8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v54 - v10;
  v12 = type metadata accessor for FormatBlueprintItemSelectionContext(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for FeedAction(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v54 - v26;
  sub_1D6E4FAE0(a1, &v54 - v26);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_13;
  }

  sub_1D6E4FAE0(v27, v23);
  if (*v23)
  {
    if (*v23 == 1)
    {
LABEL_13:
      sub_1D6F9A3DC(v27, type metadata accessor for FeedAction);
      return;
    }

    v28 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
    sub_1D6F9A330();
    (*(*(v29 - 8) + 56))(v7, 2, 2, v29);
    v30 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
    swift_beginAccess();
    v31 = v30[1];
    if (v31)
    {
      v32 = *v30;
      v33 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker);
      sub_1D6F9A378(v7, v15);
      v34 = &v15[*(v12 + 20)];
      *v34 = v32;
      *(v34 + 1) = v31;
      *&v15[*(v12 + 24)] = v33;
      v35 = *(v28 + 112);
      ObjectType = swift_getObjectType();
      v37 = *(v35 + 40);

      v38 = v54;
      v37(v54, v15, ObjectType, v35);
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_12:
        sub_1D6F9A3DC(v15, type metadata accessor for FormatBlueprintItemSelectionContext);
        goto LABEL_13;
      }

      v39 = *(v28 + 40);
      v40 = swift_getObjectType();
      (*(v39 + 8))(v38, v15, v40, v39);
LABEL_10:
      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  else
  {
    v41 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
    sub_1D6F9A330();
    (*(*(v42 - 8) + 56))(v11, 1, 2, v42);
    v43 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
    swift_beginAccess();
    v44 = v43[1];
    if (v44)
    {
      v45 = *v43;
      v46 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker);
      sub_1D6F9A378(v11, v19);
      v47 = &v19[*(v12 + 20)];
      *v47 = v45;
      *(v47 + 1) = v44;
      *&v19[*(v12 + 24)] = v46;
      v48 = *(v41 + 112);
      v49 = swift_getObjectType();
      v50 = *(v48 + 40);

      v51 = v54;
      v50(v54, v19, v49, v48);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        v15 = v19;
        goto LABEL_12;
      }

      v52 = *(v41 + 40);
      v53 = swift_getObjectType();
      (*(v52 + 8))(v51, v19, v53, v52);
      v15 = v19;
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D6F9A330()
{
  if (!qword_1EC898FB0)
  {
    v0 = sub_1D725E9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC898FB0);
    }
  }
}

uint64_t sub_1D6F9A378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F9A3DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6F9A548()
{
  result = qword_1EDF0EB10;
  if (!qword_1EDF0EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EB10);
  }

  return result;
}

void sub_1D6F9A59C()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluggableDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_selectionProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventManager;
  sub_1D69124E0(0);
  swift_allocObject();
  *(v0 + v3) = sub_1D725AA2C();
  *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView) = 0;
  sub_1D726402C();
  __break(1u);
}

void sub_1D6F9A69C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v4 = (v1 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);

      v9(a1, v6, v5, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6F9A774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6F9A7C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void FormatDismissAction.dismissingIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  sub_1D5E1DA6C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t static FormatDismissAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  sub_1D5E1DA6C(v23, v2, v3, v4, v5, v6, v13);
  sub_1D5E1DA6C(v7, v8, v9, v10, v11, v12, v14);
  LOBYTE(v7) = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_1D5E1DE98(v16, v17, v18, v19, v20, v21, v22);
  sub_1D5E1DE98(v23, v24, v25, v26, v27, v28, v29);
  return v7 & 1;
}

uint64_t sub_1D6F9A924(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  sub_1D5E1DA6C(v23, v2, v3, v4, v5, v6, v13);
  sub_1D5E1DA6C(v7, v8, v9, v10, v11, v12, v14);
  LOBYTE(v7) = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_1D5E1DE98(v16, v17, v18, v19, v20, v21, v22);
  sub_1D5E1DE98(v23, v24, v25, v26, v27, v28, v29);
  return v7 & 1;
}

unint64_t sub_1D6F9AA38(uint64_t a1)
{
  result = sub_1D6F9AA60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F9AA60()
{
  result = qword_1EC898FD8;
  if (!qword_1EC898FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898FD8);
  }

  return result;
}

unint64_t sub_1D6F9AAB4(void *a1)
{
  a1[1] = sub_1D667CF98();
  a1[2] = sub_1D6700ABC();
  result = sub_1D6F9AAEC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F9AAEC()
{
  result = qword_1EC898FE0;
  if (!qword_1EC898FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898FE0);
  }

  return result;
}

uint64_t FormatDismissActionData.dismissingIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SharingChannelActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6F9AC1C()
{
  result = qword_1EC898FE8[0];
  if (!qword_1EC898FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC898FE8);
  }

  return result;
}

uint64_t static CoverIssueViewLayout.makeLayoutForChannelFeed(context:factories:options:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v11 = a1;
  v12 = a2;
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D7378], v6);
  sub_1D6076C70(0, &qword_1EDF17FC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D6F9ADAC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v39 - v10;
  v12 = a2[40];
  v13 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v12);
  v14 = (*(v13 + 16))(v12, v13);
  if (qword_1EDF05CE0 != -1)
  {
    swift_once();
  }

  [qword_1EDFFC540 size];
  v17 = v14 * (v15 / v16);
  v18 = a2[40];
  v19 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v18);
  v20 = (*(v19 + 48))(v18, v19);
  v21 = a2[40];
  v22 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v21);
  v23 = (*(v22 + 56))(v21, v22);
  v24 = v20 + v23 + v23;
  v41 = a1;
  v25 = *MEMORY[0x1E69D74A8];
  v40 = a1;
  v26 = *(v8 + 104);
  v27 = v26(v11, v25, v7);
  v39[1] = v39;
  MEMORY[0x1EEE9AC00](v27, v28);
  v39[-6] = a3;
  v39[-5] = a2;
  v35 = 0x4030000000000000;
  v36 = v17;
  v38 = v24;
  v29 = MEMORY[0x1E69D7150];
  sub_1D6076C70(0, &qword_1EDF18070, MEMORY[0x1E69D7150]);
  v31 = v30;
  v32 = sub_1D6076CF4(&qword_1EDF18078, &qword_1EDF18070, v29, MEMORY[0x1E69D7158]);
  v37 = v32;
  sub_1D7259A2C();
  v33 = *(v8 + 8);
  v33(v11, v7);
  v41 = v40;
  v26(v11, *MEMORY[0x1E69D7460], v7);
  v37 = v31;
  v38 = *&v32;
  v35 = sub_1D6F9D510;
  v36 = 0.0;
  sub_1D7259B2C();
  return (v33)(v11, v7);
}

uint64_t sub_1D6F9B15C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v57 = a2;
  v70 = a1;
  sub_1D69C61CC(0);
  v62 = v7;
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v56 - v18);
  *&v76 = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4024000000000000;
  *v19 = v20;
  v21 = *(v12 + 104);
  v68 = *MEMORY[0x1E69D7488];
  v21(v19);
  v22 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v24 = v23;
  v25 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v22, MEMORY[0x1E69D6F40]);
  v66 = v24;
  v64 = v25;
  sub_1D7259A9C();
  v26 = *(v12 + 8);
  v63 = v12 + 8;
  v65 = v26;
  v26(v19, v11);
  v83 = v70;
  KeyPath = swift_getKeyPath();
  v27 = *MEMORY[0x1E69D74A8];
  v69 = v12 + 104;
  v67 = v21;
  (v21)(v15, v27, v11);
  v82 = *(v57 + 24);
  v28 = a3[1];
  if (a3[11] == 1 || (v29 = a3[14]) == 0)
  {

    FCIssue.issueCoverModel.getter(&v79);
  }

  else
  {
    v30 = a3[15];
    *&v79 = a3[1];
    *(&v79 + 1) = v30;
    *&v80 = v29;
    v81[24] = 0;

    v31 = v29;
    v32 = v28;
  }

  v76 = v79;
  v77 = v80;
  v78[0] = *v81;
  *(v78 + 9) = *&v81[9];
  v33 = a3;
  v59 = a3;
  v34 = a3[40];
  v35 = a3[41];
  __swift_project_boxed_opaque_existential_1(v33 + 37, v34);
  v36 = (*(v35 + 64))(v34, v35);
  v71 = 0;
  v72 = 0x4010000000000000;
  v73 = v36;
  v74 = -1;
  v75 = 0x3FE0000000000000;
  sub_1D69C62E0(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  sub_1D5EF9538();
  sub_1D69C6348();
  sub_1D69C6184(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
  v37 = v60;
  sub_1D7259D2C();
  sub_1D7259A5C();

  (*(v61 + 8))(v37, v62);
  v38 = v65;
  v65(v15, v11);
  v39 = v70;
  *&v76 = v70;
  v40 = swift_allocObject();
  *(v40 + 16) = a4;
  *v19 = v40;
  (v67)(v19, v68, v11);
  sub_1D7259A9C();
  v38(v19, v11);
  *&v76 = v39;
  sub_1D5EF9444(0);
  v42 = v41;
  v43 = swift_allocBox();
  v45 = v44;
  v46 = *(v42 + 48);
  v47 = *MEMORY[0x1E69D71E8];
  v48 = sub_1D725A09C();
  v49 = *(*(v48 - 8) + 104);
  v49(v45, v47, v48);
  v49(v45 + v46, *MEMORY[0x1E69D7208], v48);
  *v19 = v43;
  v50 = v67;
  v51 = (v67)(v19, *MEMORY[0x1E69D7468], v11);
  MEMORY[0x1EEE9AC00](v51, v52);
  sub_1D72599EC();
  v53 = v65;
  v65(v19, v11);
  *&v76 = v70;
  v54 = swift_allocObject();
  *(v54 + 16) = 0x4024000000000000;
  *v19 = v54;
  (v50)(v19, v68, v11);
  sub_1D7259A9C();
  return v53(v19, v11);
}

uint64_t sub_1D6F9B974(char *a1, uint64_t a2, double a3, double a4, double a5)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v95 - v13);
  v15 = *(a2 + 56) & 9;
  v104 = v11;
  v105 = a2;
  v101 = v14;
  v102 = a1;
  if (v15 == 1)
  {
    v106 = a1;
    sub_1D5EF9444(0);
    v17 = v16;
    v100 = swift_allocBox();
    KeyPath = v10;
    v19 = v18;
    v20 = *(v17 + 48);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *v19 = v21;
    v22 = *MEMORY[0x1E69D71F0];
    v23 = sub_1D725A09C();
    v24 = *(*(v23 - 8) + 104);
    v24(v19, v22, v23);
    v25 = swift_allocObject();
    v26 = *(a2 + 320);
    v27 = *(v105 + 328);
    __swift_project_boxed_opaque_existential_1((v105 + 296), v26);
    *(v25 + 16) = (*(v27 + 8))(v26, v27);
    *(v19 + v20) = v25;
    v28 = v19 + v20;
    v14 = v101;
    v24(v28, v22, v23);
    v29 = KeyPath;
    v11 = v104;
    *v14 = v100;
    v30 = *(v11 + 104);
    v31 = v30(v14, *MEMORY[0x1E69D7468], v29);
    MEMORY[0x1EEE9AC00](v31, v32);
    *(&v95 - 4) = v105;
    *(&v95 - 3) = a3;
    v33 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v94 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v33, MEMORY[0x1E69D6F40]);
    sub_1D7259A2C();
    a1 = v102;
    v34 = *(v11 + 8);
    v34(v14, KeyPath);
    v106 = a1;
    v35 = swift_allocObject();
    *(v35 + 16) = 0x4010000000000000;
    *v14 = v35;
    v30(v14, *MEMORY[0x1E69D7480], KeyPath);
    v10 = KeyPath;
    sub_1D7259A9C();
    v34(v14, v10);
    a2 = v105;
  }

  if (*(a2 + 32))
  {
    v106 = a1;
    sub_1D5EF9444(0);
    v37 = v36;
    v38 = swift_allocBox();
    v40 = v39;
    v100 = v37;
    v41 = *(v37 + 48);
    v42 = sub_1D725A09C();
    v43 = swift_allocBox();
    v45 = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = a5;
    *v45 = v46;
    v47 = *(*(v42 - 8) + 104);
    v99 = *MEMORY[0x1E69D71F0];
    v47(v45);
    *v40 = v43;
    (v47)(v40, *MEMORY[0x1E69D71F8], v42);
    (v47)(v40 + v41, *MEMORY[0x1E69D7208], v42);
    v48 = v101;
    *v101 = v38;
    v49 = *MEMORY[0x1E69D7468];
    v50 = v104;
    v51 = *(v104 + 104);
    v96 = (v104 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v97 = v51;
    LODWORD(v98) = v49;
    v52 = v51(v48);
    MEMORY[0x1EEE9AC00](v52, v53);
    v54 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v56 = v55;
    v94 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v54, MEMORY[0x1E69D6F40]);
    v105 = v56;
    sub_1D72599EC();
    v75 = *(v50 + 8);
    v95 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  else
  {
    v106 = a1;
    sub_1D5EF9444(0);
    v58 = v57;
    v98 = swift_allocBox();
    KeyPath = v10;
    v60 = v59;
    v100 = v58;
    v61 = *(v58 + 48);
    v42 = sub_1D725A09C();
    v62 = swift_allocBox();
    v64 = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = a5;
    *v64 = v65;
    v66 = v11;
    v67 = *(*(v42 - 8) + 104);
    v48 = v14;
    v99 = *MEMORY[0x1E69D71F0];
    v67(v64);
    *v60 = v62;
    (v67)(v60, *MEMORY[0x1E69D71F8], v42);
    (v67)(v60 + v61, *MEMORY[0x1E69D7208], v42);
    *v14 = v98;
    v68 = *MEMORY[0x1E69D7468];
    v69 = *(v66 + 104);
    v96 = (v66 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v97 = v69;
    LODWORD(v98) = v68;
    v10 = KeyPath;
    v70 = v69(v14);
    MEMORY[0x1EEE9AC00](v70, v71);
    v72 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v74 = v73;
    v94 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v72, MEMORY[0x1E69D6F40]);
    v105 = v74;
    sub_1D72599EC();
    v75 = *(v66 + 8);
    v95 = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v75(v48, v10);
  v106 = v102;
  v102 = "ms inside items";
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444(0);
  v76 = v100;
  v77 = swift_allocBox();
  v79 = v78;
  v80 = *(v76 + 48);
  v81 = swift_allocObject();
  *(v81 + 16) = a5;
  *v79 = v81;
  sub_1D725A09C();
  v82 = *(*(v42 - 8) + 104);
  v83 = v99;
  v82(v79, v99, v42);
  v84 = swift_allocObject();
  *(v84 + 16) = a5;
  *(v79 + v80) = v84;
  v82((v79 + v80), v83, v42);
  *v48 = v77;
  v97(v48, v98, v10);
  sub_1D6076D50(0);
  sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v86 = v85;
  v87 = *(v85 - 8);
  v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1D7273AE0;
  v90 = *MEMORY[0x1E69D7070];
  sub_1D69C62E0(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v91 - 8) + 104))(v89 + v88, v90, v91);
  (*(v87 + 104))(v89 + v88, *MEMORY[0x1E69D7080], v86);
  v92 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v92, MEMORY[0x1E69D6F40]);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (*(v104 + 8))(v48, v10);
}

uint64_t sub_1D6F9C680(uint64_t a1, void *a2, double a3, double a4)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v37 - v12);
  v41 = a1;
  v14 = swift_allocObject();
  v15 = a2[40];
  v16 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v15);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = a2[40];
  v19 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v18);
  *(v14 + 16) = (v17 - (*(v19 + 16))(v18, v19)) * 0.5;
  *v13 = v14;
  v20 = *MEMORY[0x1E69D7488];
  v38 = *(v10 + 104);
  v37[0] = v9;
  v38(v13, v20, v9);
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v37[3] = v22;
  v37[2] = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v23 = *(v10 + 8);
  v39 = v10 + 8;
  v40 = v23;
  v23(v13, v9);
  v41 = a1;
  v37[1] = swift_getKeyPath();
  sub_1D5EF9444(0);
  v25 = v24;
  v26 = swift_allocBox();
  v28 = v27;
  v29 = *(v25 + 48);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *v28 = v30;
  v31 = *MEMORY[0x1E69D71F0];
  v32 = sub_1D725A09C();
  v33 = *(*(v32 - 8) + 104);
  v33(v28, v31, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v28 + v29) = v34;
  v33((v28 + v29), v31, v32);
  *v13 = v26;
  v35 = v37[0];
  v38(v13, *MEMORY[0x1E69D7468], v37[0]);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return v40(v13, v35);
}

uint64_t sub_1D6F9CA64(uint64_t a1, void *a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v23 - v6);
  v28 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444(0);
  v9 = v8;
  v24 = swift_allocBox();
  v11 = v10;
  v12 = *(v9 + 48);
  v13 = sub_1D725A09C();
  v14 = swift_allocBox();
  sub_1D725A08C();
  *v11 = v14;
  v15 = *(*(v13 - 8) + 104);
  v15(v11, *MEMORY[0x1E69D71F8], v13);
  v16 = swift_allocObject();
  v17 = a2[40];
  v18 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v17);
  *(v16 + 16) = (*(v18 + 8))(v17, v18);
  *(v11 + v12) = v16;
  v15((v11 + v12), *MEMORY[0x1E69D71F0], v13);
  v19 = v25;
  *v7 = v24;
  v20 = v26;
  (*(v19 + 104))(v7, *MEMORY[0x1E69D7468], v26);
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21, MEMORY[0x1E69D6F40]);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (*(v19 + 8))(v7, v20);
}

uint64_t sub_1D6F9CD70(uint64_t a1, uint64_t a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v22 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 360);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    v20 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v20, MEMORY[0x1E69D6F40]);
    sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    v21 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F9D0B0(uint64_t a1, uint64_t a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v30 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 360);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D6076D50(0);
    sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7270C10;
    v26 = v25 + v24;
    v27 = v19;
    sub_1D725A28C();
    v28 = *(v22 + 104);
    v28(v26, *MEMORY[0x1E69D6FC0], v21);
    sub_1D725A28C();
    v28(v26 + v23, *MEMORY[0x1E69D6FD0], v21);
    v29 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v29, MEMORY[0x1E69D6F40]);
    sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F9D510(void *a1)
{
  v26[2] = *a1;
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v26[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v26 - v5);
  v26[3] = a1;
  v26[1] = swift_getKeyPath();
  sub_1D5EF9444(0);
  v8 = v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  v13 = *MEMORY[0x1E69D71E8];
  v14 = sub_1D725A09C();
  v15 = *(*(v14 - 8) + 104);
  v15(v11, v13, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = 0x4000000000000000;
  *(v11 + v12) = v16;
  v15(v11 + v12, *MEMORY[0x1E69D71F0], v14);
  *v6 = v9;
  v17 = v26[0];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7468], v26[0]);
  sub_1D6076D50(0);
  sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7273AE0;
  v23 = *MEMORY[0x1E69D7050];
  sub_1D69C62E0(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v24 - 8) + 104))(v22 + v21, v23, v24);
  (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69D7080], v19);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38], MEMORY[0x1E69D6F40]);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4, MEMORY[0x1E69D6F60]);
  sub_1D7259A7C();

  return (*(v3 + 8))(v6, v17);
}

BOOL static FormatCodingEmptyArrayStrategy.shouldEncode(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  sub_1D72627FC();
  swift_getWitnessTable();
  return (sub_1D7262CCC() & 1) == 0;
}

uint64_t sub_1D6F9DA48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = static FormatCodingNilArrayStrategy.decode(rawValue:)(a1, a2[2], a2[3], a2[4]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D6F9DA80(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6F9DABC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1D6F9DC6C()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  v3 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v4 = [v0 blackColor];
  v5 = [v0 whiteColor];
  v6 = [v0 ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

  v7 = [v0 secondaryLabelColor];
  v8 = [v0 whiteColor];
  v9 = [v0 redColor];
  v10 = [v0 grayColor];
  v11 = [v0 grayColor];
  v12 = [v0 grayColor];
  v13 = [v12 colorWithAlphaComponent_];

  result = [v0 systemPinkColor];
  *&xmmword_1EC899070 = v3;
  *(&xmmword_1EC899070 + 1) = v6;
  qword_1EC899080 = v7;
  unk_1EC899088 = v8;
  *&xmmword_1EC899090 = v9;
  *(&xmmword_1EC899090 + 1) = v10;
  qword_1EC8990A0 = v11;
  unk_1EC8990A8 = v13;
  qword_1EC8990B0 = result;
  return result;
}

void __swiftcall CoverIssueColorPalette.init(backgroundColor:titleColor:dateFgColor:badgeFgColor:badgeNewBgColor:badgeSuggestedBgColor:downloadProgressTintColor:downloadTrackTintColor:followButtonBackgroundColor:)(NewsFeed::CoverIssueColorPalette *__return_ptr retstr, UIColor backgroundColor, UIColor titleColor, UIColor dateFgColor, UIColor badgeFgColor, UIColor badgeNewBgColor, UIColor badgeSuggestedBgColor, UIColor downloadProgressTintColor, UIColor downloadTrackTintColor, UIColor followButtonBackgroundColor)
{
  retstr->backgroundColor = backgroundColor;
  retstr->titleColor = titleColor;
  retstr->dateFgColor = dateFgColor;
  retstr->badgeFgColor = badgeFgColor;
  retstr->badgeNewBgColor = badgeNewBgColor;
  retstr->badgeSuggestedBgColor = badgeSuggestedBgColor;
  retstr->downloadProgressTintColor = downloadProgressTintColor;
  retstr->downloadTrackTintColor = downloadTrackTintColor;
  retstr->followButtonBackgroundColor = followButtonBackgroundColor;
}

uint64_t static CoverIssueColorPalette.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87DCF0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_1EC8990A0;
  v8[2] = xmmword_1EC899090;
  v8[3] = *&qword_1EC8990A0;
  v2 = qword_1EC8990B0;
  v9 = qword_1EC8990B0;
  v4 = xmmword_1EC899070;
  v3 = *&qword_1EC899080;
  v8[0] = xmmword_1EC899070;
  v8[1] = *&qword_1EC899080;
  *(a1 + 32) = xmmword_1EC899090;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_1D6F9DF18(v8, v7);
}

uint64_t sub_1D6F9DF50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D6F9DF98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6F9DFF8(uint64_t a1, uint64_t a2, __int128 *a3, __n128 a4)
{
  v7 = sub_1D7259EBC();
  type metadata accessor for FormatImageNodeContext();
  v8 = swift_allocObject();
  __asm { FMOV            V0.2D, #1.0 }

  *(v8 + 16) = _Q0;
  *(v8 + 32) = 0x3FF0000000000000;
  *(v8 + 40) = v7;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0;
  v14 = a3[1];
  v20 = *a3;
  *v21 = v14;
  *&v21[9] = *(a3 + 25);
  sub_1D6F9E580(a3, &v18);
  v15.n128_f64[0] = sub_1D6B7C580(a1, a2, v8, &v22);
  sub_1D62B4C5C(v20, *(&v20 + 1), *v21, *&v21[8], *&v21[16], v21[24], v15);
  v16 = a3[1];
  v18 = *a3;
  v19[0] = v16;
  *(v19 + 10) = *(a3 + 26);
  *&v20 = v22;
  LOBYTE(a1) = sub_1D6F9E138(a1, &v20);

  return a1 & 1;
}

uint64_t sub_1D6F9E138(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + 41);
  v6 = *a2 >> 61;
  if (v6 > 3)
  {
    v16 = *v2;
    v15 = v2[1];
    v18 = v2[2];
    v17 = v2[3];
    v19 = v2[4];
    v20 = *(v2 + 40);
    if (v6 == 4)
    {
      v30 = a1;
      v41 = v3;
      v23 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      v28 = *(v23 + 24);
      v29 = *(v23 + 16);
      v24 = [objc_opt_self() currentTraitCollection];
      v25 = [v24 userInterfaceStyle];

      if (v25 < 2)
      {
        *&v32 = v16;
        *(&v32 + 1) = v15;
        *&v33 = v18;
        *(&v33 + 1) = v17;
        *&v34 = v19;
        BYTE8(v34) = v20;
        BYTE9(v34) = v5;
        v31[0] = v29;
        v26 = v41;
        v22 = sub_1D6F9E138(v30, v31);
        if (v26)
        {
          return v5 & 1;
        }

LABEL_15:
        v5 = v22;
        return v5 & 1;
      }

      v21 = v29;
      a1 = v30;
      v3 = v41;
      if (v25 == 2)
      {
        *&v32 = v16;
        *(&v32 + 1) = v15;
        *&v33 = v18;
        *(&v33 + 1) = v17;
        *&v34 = v19;
        BYTE8(v34) = v20;
        BYTE9(v34) = v5;
        v21 = v28;
LABEL_11:
        v31[0] = v21;
        v22 = sub_1D6F9E138(a1, v31);
        if (v3)
        {
          return v5 & 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (v6 != 5)
      {
        v5 ^= 1u;
        return v5 & 1;
      }

      v21 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    *&v32 = v16;
    *(&v32 + 1) = v15;
    *&v33 = v18;
    *(&v33 + 1) = v17;
    *&v34 = v19;
    BYTE8(v34) = v20;
    BYTE9(v34) = v5;
    goto LABEL_11;
  }

  if ((v6 - 2) >= 2 && v6 != 0)
  {
    v8 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
    v9 = v8[7];
    v37 = v8[6];
    v38 = v9;
    v10 = v8[9];
    v39 = v8[8];
    v40 = v10;
    v11 = v8[3];
    v33 = v8[2];
    v34 = v11;
    v12 = v8[5];
    v35 = v8[4];
    v36 = v12;
    v32 = v8[1];
    v13 = objc_opt_self();
    sub_1D61CAA58(&v32, v31);
    v14 = [v13 currentTraitCollection];
    (v40)(v31);

    sub_1D61CAAB4(&v32);
    v5 ^= v31[3] == 0;
    sub_1D5EED418(v31);
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed28FormatBindingImageExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 41);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 41);
  v14 = *(a1 + 40);
  v15 = *(a2 + 40);
  v27 = *a1;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v32 = v14;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v15;
  sub_1D62B4B68(v27, v3, v4, v5, v6, v14, a3);
  sub_1D62B4B68(v8, v9, v10, v11, v12, v15, v16);
  LODWORD(v8) = _s8NewsFeed22FormatImageNodeBindingO2eeoiySbAC_ACtFZ_0(&v27, &v21, v17);
  v19.n128_f64[0] = sub_1D62B4C5C(v21, v22, v23, v24, v25, v26, v18);
  sub_1D62B4C5C(v27, v28, v29, v30, v31, v32, v19);
  return v8 & ~(v7 ^ v13) & 1;
}

unint64_t sub_1D6F9E468(uint64_t a1)
{
  result = sub_1D6F9E490();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F9E490()
{
  result = qword_1EC8990B8;
  if (!qword_1EC8990B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990B8);
  }

  return result;
}

unint64_t sub_1D6F9E4E4(void *a1)
{
  a1[1] = sub_1D5CBD498();
  a1[2] = sub_1D6700FCC();
  result = sub_1D6F9E51C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F9E51C()
{
  result = qword_1EC8990C0;
  if (!qword_1EC8990C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990C0);
  }

  return result;
}

uint64_t static FormatGrayscaleColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D6F9E5FC(uint64_t a1)
{
  result = sub_1D6F9E624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F9E624()
{
  result = qword_1EC8990C8;
  if (!qword_1EC8990C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990C8);
  }

  return result;
}

uint64_t sub_1D6F9E678(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1D6F9E6BC(void *a1)
{
  a1[1] = sub_1D667E1C8();
  a1[2] = sub_1D6700318();
  result = sub_1D6F9E6F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F9E6F4()
{
  result = qword_1EC8990D0;
  if (!qword_1EC8990D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990D0);
  }

  return result;
}

uint64_t FormatAdMetricsData.nativeAdInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D726045C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for FormatAdMetricsData(uint64_t a1)
{
  result = qword_1EDF2CE50;
  if (!qword_1EDF2CE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6F9E864(uint64_t a1)
{
  result = sub_1D726045C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FeedCursorTracker.snapshot()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 88);
  v6 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = &v18 - v10;
  sub_1D725A76C();
  (*(v8 + 16))(v11, &v2[*(*v2 + 96)], AssociatedTypeWitness);
  v12 = *(*v2 + 104);
  swift_beginAccess();
  v13 = *&v2[v12];
  v14 = *(*v2 + 120);
  swift_beginAccess();
  v15 = *&v2[v14];
  v16 = *(*v2 + 112);
  swift_beginAccess();
  sub_1D6F9FAD8(v11, v13, v15, *&v2[v16], v6, v5, a1);

  return sub_1D725A77C();
}

uint64_t sub_1D6F9EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedCursorTrackerGroup(255, *(a2 + 16), *(a2 + 24), a4);
  sub_1D7261E1C();

  swift_getWitnessTable();
  v4 = sub_1D726242C();

  return v4;
}

uint64_t FeedCursorTracker.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t **FeedCursorTracker.init(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = MEMORY[0x1E69E7CD0];
  *(v1 + v3[13]) = MEMORY[0x1E69E7CD0];
  *(v1 + (*v1)[14]) = v6;
  v7 = (*v1)[15];
  type metadata accessor for FeedCursorTrackerGroup(0, v3[10], v3[11], v8);
  *(v1 + v7) = sub_1D7261CEC();
  v9 = (*v1)[16];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v1 + v9) = sub_1D725A7AC();
  v10 = (*v1)[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v10, a1, AssociatedTypeWitness);
  return v1;
}

char *FeedCursorTracker.markSeen(group:sessionIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a2;
  v61 = a3;
  v65 = a1;
  v6 = *v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  v9 = type metadata accessor for FeedCursorTrackerGroup(255, v7, v8, a4);
  v10 = sub_1D726393C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v62 = &v56 - v12;
  v13 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v59 = v7;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v19 = &v56 - v18;
  v64 = v9;
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v66 = &v56 - v22;
  sub_1D725A76C();
  v23 = *(*v5 + 104);
  swift_beginAccess();
  v24 = *(v5 + v23);
  v58 = *(swift_getAssociatedConformanceWitness() + 8);

  v25 = v65;
  v26 = sub_1D725AA4C();
  LOBYTE(v7) = sub_1D5BE240C(v26, v27, v24);

  if (v7)
  {
    return sub_1D725A77C();
  }

  (*(v56 + 16))(v19, v25, AssociatedTypeWitness);
  v28 = v61;

  v29 = v57;
  sub_1D725890C();
  sub_1D6F9F6CC(v19, v60, v28, v29, v59, v8, v66);
  v30 = sub_1D725AA4C();
  v32 = v31;
  swift_beginAccess();
  sub_1D5B860D0(v68, v30, v32);
  swift_endAccess();

  v33 = sub_1D725AA4C();
  v35 = v34;
  v36 = v62;
  v37 = v63;
  v38 = v66;
  v39 = v64;
  (*(v63 + 16))(v62, v66, v64);
  (*(v37 + 56))(v36, 0, 1, v39);
  v68[0] = v33;
  v68[1] = v35;
  swift_beginAccess();
  sub_1D7261E1C();
  sub_1D7261E4C();
  swift_endAccess();
  v40 = (*(v58 + 32))(AssociatedTypeWitness);
  v41 = v40;
  v42 = v39;
  v43 = v37;
  if (!(v40 >> 62))
  {
    v44 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44)
    {
      goto LABEL_4;
    }

LABEL_14:

    v47 = MEMORY[0x1E69E7CC0];
LABEL_15:
    swift_beginAccess();
    sub_1D5B87D50(v47);
    swift_endAccess();

    (*(v43 + 8))(v38, v42);
    return sub_1D725A77C();
  }

  v44 = sub_1D7263BFC();
  if (!v44)
  {
    goto LABEL_14;
  }

LABEL_4:
  v67 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v44 & ~(v44 >> 63), 0);
  if ((v44 & 0x8000000000000000) == 0)
  {
    v65 = v5;
    v46 = 0;
    v47 = v67;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x1DA6FB460](v46, v41);
      }

      else
      {
        v48 = *(v41 + 8 * v46 + 32);
        swift_unknownObjectRetain();
      }

      v49 = [v48 itemID];
      v50 = sub_1D726207C();
      v52 = v51;
      swift_unknownObjectRelease();

      v67 = v47;
      v54 = *(v47 + 16);
      v53 = *(v47 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1D5BFC364((v53 > 1), v54 + 1, 1);
        v47 = v67;
      }

      ++v46;
      *(v47 + 16) = v54 + 1;
      v55 = v47 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
    }

    while (v44 != v46);

    v42 = v64;
    v43 = v63;
    v38 = v66;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *sub_1D6F9F6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 8);
  *a7 = sub_1D725AA4C();
  *(a7 + 1) = v15;
  v16 = *(AssociatedConformanceWitness + 64);
  v18 = type metadata accessor for FeedCursorTrackerGroup(0, a5, a6, v17);
  v16(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = *(v18 + 40);
  v20 = sub_1D725891C();
  v42 = *(v20 - 8);
  v43 = v20;
  v46 = a4;
  (*(v42 + 16))(&a7[v19], a4);
  v21 = (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v21)
  {
    v22 = [v21 identifier];
    swift_unknownObjectRelease();
    v23 = sub_1D726207C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v47 = a1;
  v48 = a7;
  v26 = &a7[*(v18 + 44)];
  *v26 = v23;
  *(v26 + 1) = v25;
  v45 = AssociatedTypeWitness;
  v27 = (*(v14 + 32))(AssociatedTypeWitness, v14);
  v28 = v27;
  if (!(v27 >> 62))
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = v18;
    if (v29)
    {
      goto LABEL_6;
    }

LABEL_16:

    (*(v42 + 8))(a4, v43);
    result = (*(*(v45 - 8) + 8))(a1);
    v32 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *&v48[*(v44 + 48)] = v32;
    v41 = &v48[*(v44 + 52)];
    *v41 = a2;
    *(v41 + 1) = a3;
    return result;
  }

  v29 = sub_1D7263BFC();
  v44 = v18;
  if (!v29)
  {
    goto LABEL_16;
  }

LABEL_6:
  v51 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v51;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1DA6FB460](v31, v28);
      }

      else
      {
        v33 = *(v28 + 8 * v31 + 32);
        swift_unknownObjectRetain();
      }

      v34 = [v33 itemID];
      v35 = sub_1D726207C();
      v37 = v36;
      swift_unknownObjectRelease();

      v39 = *(v51 + 16);
      v38 = *(v51 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D5BFC364((v38 > 1), v39 + 1, 1);
      }

      ++v31;
      *(v51 + 16) = v39 + 1;
      v40 = v51 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
    }

    while (v29 != v31);

    (*(v42 + 8))(v46, v43);
    result = (*(*(v45 - 8) + 8))(v47);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

int *sub_1D6F9FAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  result = type metadata accessor for FeedCursorTrackerSnapshot(0, a5, a6, v14);
  *(a7 + result[9]) = a2;
  *(a7 + result[11]) = a3;
  *(a7 + result[10]) = a4;
  return result;
}

uint64_t FeedCursorTracker.deinit()
{
  v1 = *(*v0 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t FeedCursorTracker.__deallocating_deinit()
{
  FeedCursorTracker.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedCursorTrackerSnapshot.context.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t FeedCursorTrackerSnapshot.date(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for FeedCursorTrackerGroup(255, *(a3 + 16), *(a3 + 24), a4);
  v9 = sub_1D726393C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v20 - v12;
  v20[0] = a1;
  v20[1] = a2;

  sub_1D7261E3C();

  v14 = *(v8 - 8);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v15 = sub_1D725891C();
    return (*(*(v15 - 8) + 56))(a5, 1, 1, v15);
  }

  else
  {
    v17 = *(v8 + 40);
    v18 = sub_1D725891C();
    v19 = *(v18 - 8);
    (*(v19 + 16))(a5, &v13[v17], v18);
    (*(v14 + 8))(v13, v8);
    return (*(v19 + 56))(a5, 0, 1, v18);
  }
}

uint64_t FeedCursorTrackerSnapshot.groups(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedCursorTrackerGroup(0, *(a2 + 16), *(a2 + 24), a4);
  nullsub_1();
  sub_1D7261DEC();

  swift_getWitnessTable();
  return sub_1D726247C();
}

uint64_t sub_1D6FA02FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for FeedCursorTrackerGroup(0, a3, a4, v6);
  swift_getAssociatedConformanceWitness();
  return sub_1D7261FBC() & 1;
}

void sub_1D6FA0470(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, _OWORD *a5@<X8>)
{
  v9 = sub_1D5BE240C(*a1, a1[1], a2);
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  if (v9)
  {
    sub_1D691E424(a1, a3, a4, v13);
    v10 = v13[0];
    v11 = v13[1];
    v12 = v13[2];
  }

  *a5 = v10;
  a5[1] = v11;
  a5[2] = v12;
}

double sub_1D6FA04EC@<D0>(char *a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  type metadata accessor for FeedCursorTrackerGroup(255, a3, a4, a3);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v13, v8, v9, &a1[*(TupleTypeMetadata2 + 48)]);
  v11 = v13[1];
  *a5 = v13[0];
  a5[1] = v11;
  result = *&v14;
  a5[2] = v14;
  return result;
}

uint64_t FeedCursorTrackerGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedCursorTrackerGroup.kind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t FeedCursorTrackerGroup.seenDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D725891C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FeedCursorTrackerGroup.tagIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t FeedCursorTrackerGroup.sessionIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_1D6FA088C(void *a1)
{
  v3 = v1;
  sub_1D6FA0FC4(0, &qword_1EC8990D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FA0C4C();
  sub_1D7264B5C();
  v15 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14 = 1;
    sub_1D726437C();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1D6B49204();
    sub_1D6B49488(&qword_1EC884850, sub_1D618D3A4, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v12[14] = 3;
    sub_1D726440C();
    v12[13] = 4;
    sub_1D726440C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6FA0AB8()
{
  v1 = *v0;
  v2 = 0x6449676174;
  v3 = 0x6E6572646C696863;
  v4 = 0x6E65646469487369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6449636D75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6FA0B50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6FA1140(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6FA0B78(uint64_t a1)
{
  v2 = sub_1D6FA0C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6FA0BB4(uint64_t a1)
{
  v2 = sub_1D6FA0C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6FA0BF0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6FA0CA0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 10);
    *(a2 + 26) = *(v7 + 10);
  }

  return result;
}

unint64_t sub_1D6FA0C4C()
{
  result = qword_1EDF06958[0];
  if (!qword_1EDF06958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF06958);
  }

  return result;
}

uint64_t sub_1D6FA0CA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6FA0FC4(0, &qword_1EDF03870, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FA0C4C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v24 = v11;
  v29 = 1;
  v14 = sub_1D726422C();
  v16 = v15;
  v23 = v14;
  v28 = 3;
  v22 = sub_1D726423C();
  sub_1D6B49204();
  v27 = 2;
  sub_1D6B49488(&qword_1EDF04B00, sub_1D6B494F4, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  v21 = v25;
  v26 = 4;
  v17 = sub_1D726423C();
  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v23;
  *a2 = v24;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22 & 1;
  *(a2 + 41) = v17 & 1;
  return result;
}

void sub_1D6FA0FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6FA0C4C();
    v7 = a3(a1, &type metadata for SportsTaxonomyGraphResourceEntityNode.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6FA103C()
{
  result = qword_1EC8990E0;
  if (!qword_1EC8990E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990E0);
  }

  return result;
}

unint64_t sub_1D6FA1094()
{
  result = qword_1EDF06948;
  if (!qword_1EDF06948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06948);
  }

  return result;
}

unint64_t sub_1D6FA10EC()
{
  result = qword_1EDF06950;
  if (!qword_1EDF06950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06950);
  }

  return result;
}

uint64_t sub_1D6FA1140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449676174 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449636D75 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73D2E20 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t SportsTaxonomyGraphRootNode.childrenTagIds()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v1 + 16);
      if (v4 > v6)
      {
        v6 = v4;
      }

      v7 = v4;
      while (1)
      {
        if (v6 == v7)
        {
          __break(1u);
          return result;
        }

        v8 = *(v1 + 32 + 8 * v7);
        v4 = v7 + 1;
        if ((v8 >> 62) - 1 < 2)
        {
          break;
        }

        ++v7;
        if (v2 == v4)
        {
          goto LABEL_17;
        }
      }

      v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D5B858EC(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1D5B858EC((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
    }

    while (v2 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_17:

  return v5;
}

uint64_t SportsTaxonomyGraphRootNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FA1524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D6FA1580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1D6FA1608()
{
  result = qword_1EC8990E8;
  if (!qword_1EC8990E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990E8);
  }

  return result;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

double FormatSupplementaryNodeDataLayoutAttributes.frame.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.data.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
  v4 = v2[12];
  v14 = v2[11];
  v3 = v14;
  v15[0] = v4;
  *(v15 + 9) = *(v2 + 201);
  v5 = *(v15 + 9);
  v6 = v2[8];
  v11[0] = v2[7];
  v11[1] = v6;
  v7 = v2[10];
  v12 = v2[9];
  v8 = v12;
  v13 = v7;
  *a1 = v11[0];
  a1[1] = v6;
  *(a1 + 89) = v5;
  a1[4] = v3;
  a1[5] = v4;
  a1[2] = v8;
  a1[3] = v7;
  return sub_1D62E340C(v11, &v10);
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 64);

  return v1;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 80);

  return v1;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.renderKeyIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double FormatSupplementaryNodeDataLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_reuseIdentifier);

  return v1;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.deinit()
{

  sub_1D6872B14(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  sub_1D6872B14(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0]);

  sub_1D5EBC358(*(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData), *(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData + 16));

  return v0;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.__deallocating_deinit()
{
  FormatSupplementaryNodeDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FA1A5C()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

id EmptyView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EmptyView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id EmptyView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmptyView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EmptyView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D6FA1D54()
{
  sub_1D5BBBC18(&qword_1EDF1BB08, &protocol conformance descriptor for EmptyView);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t sub_1D6FA1DAC(void *a1)
{
  sub_1D6FA24D8(0, &qword_1EC899100, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FA2484();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72643FC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D72643FC();
    v10[13] = 2;
    sub_1D72643FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6FA1F38()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6FA1F8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6FA2654(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6FA1FB4(uint64_t a1)
{
  v2 = sub_1D6FA2484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6FA1FF0(uint64_t a1)
{
  v2 = sub_1D6FA2484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6FA202C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D6FA2224(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void sub_1D6FA2088(void *a1@<X8>)
{
  v2 = v1;
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v14 = v1[1];
  sub_1D5BF4D9C();
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1D7263A0C();
  v8 = v7;
  sub_1D5F3D224();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7270C10;
  *(v9 + 32) = 0x696669746E656449;
  *(v9 + 40) = 0xEA00000000007265;
  v11 = MEMORY[0x1E69E61C8];
  v16 = *v2;
  v10 = v16;
  *(v9 + 72) = v5;
  *(v9 + 80) = v11;
  *(v9 + 48) = v10;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0x726F727245;
  *(v9 + 104) = 0xE500000000000000;
  v15 = v2[2];
  v12 = v15;
  *(v9 + 136) = v5;
  *(v9 + 144) = v11;
  *(v9 + 112) = v12;
  *(v9 + 152) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = v9;
  sub_1D5E422A8(&v16, &v14);
  sub_1D5E422A8(&v15, &v14);
  sub_1D60F3E18(inited);
  a1[3] = &type metadata for DebugInspectionDataSource;
  a1[4] = &off_1F51328C8;
  *a1 = v13;
}

uint64_t sub_1D6FA2224@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6FA24D8(0, &qword_1EC8990F0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FA2484();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v25 = a2;
  v26 = v11;
  v28 = 1;
  v14 = sub_1D72642BC();
  v24 = v15;
  v27 = 2;
  v16 = sub_1D72642BC();
  v17 = v10;
  v19 = v18;
  (*(v7 + 8))(v17, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = v25;
  *v25 = v26;
  v21[1] = v13;
  v22 = v24;
  v21[2] = v14;
  v21[3] = v22;
  v21[4] = v16;
  v21[5] = v19;
  return result;
}

unint64_t sub_1D6FA2484()
{
  result = qword_1EC8990F8;
  if (!qword_1EC8990F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990F8);
  }

  return result;
}

void sub_1D6FA24D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6FA2484();
    v7 = a3(a1, &type metadata for DebugInspectionError.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6FA2550()
{
  result = qword_1EC899108;
  if (!qword_1EC899108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899108);
  }

  return result;
}

unint64_t sub_1D6FA25A8()
{
  result = qword_1EC899110;
  if (!qword_1EC899110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899110);
  }

  return result;
}

unint64_t sub_1D6FA2600()
{
  result = qword_1EC899118;
  if (!qword_1EC899118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899118);
  }

  return result;
}

uint64_t sub_1D6FA2654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D6FA2770@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 32);
    do
    {
      v5 = *v4++;
      v6 = qword_1D737E3D8[v5];
      if ((v6 & ~v3) == 0)
      {
        v6 = 0;
      }

      v3 |= v6;
      --v2;
    }

    while (v2);
    *a2 = v3;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t FormatItemTrait.rawValue.getter()
{
  result = 1835365481;
  switch(*v0)
  {
    case 1:
      result = 7364967;
      break;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
      result = 0x6F65646976;
      break;
    case 4:
      result = 0x656E696C66666FLL;
      break;
    case 5:
      result = 0x6465727574616566;
      break;
    case 6:
      result = 0x7265766F63;
      break;
    case 7:
      result = 0x656E696C64616568;
      break;
    case 8:
      result = 0x7469617274726F70;
      break;
    case 9:
      result = 0x70616373646E616CLL;
      break;
    case 0xA:
      result = 0x657261757173;
      break;
    case 0xB:
      result = 6448503;
      break;
    case 0xC:
      result = 0x7373656363416F6ELL;
      break;
    case 0xD:
      result = 25697;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0x6854657261757173;
      break;
    case 0x11:
    case 0x2C:
    case 0x31:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0xD000000000000015;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    case 0x14:
      result = 0x79726F6765746163;
      break;
    case 0x15:
      result = 0xD000000000000010;
      break;
    case 0x16:
      result = 0x6172546F69647561;
      break;
    case 0x17:
      result = 0x63537374726F7073;
      break;
    case 0x18:
      result = 0x74537374726F7073;
      break;
    case 0x19:
      result = 0x74726F7053676174;
      break;
    case 0x1A:
      result = 0x6C61636F4C676174;
      break;
    case 0x1B:
      result = 0x707377654E676174;
      break;
    case 0x1C:
      result = 0x6369706F54676174;
      break;
    case 0x1D:
      result = 0x6E6E616843676174;
      break;
    case 0x1E:
      result = 0x72427374726F7073;
      break;
    case 0x1F:
      result = 0x6F427374726F7073;
      break;
    case 0x20:
      result = 0x694C7374726F7073;
      break;
    case 0x21:
      result = 0xD000000000000012;
      break;
    case 0x22:
      result = 0x654B7374726F7073;
      break;
    case 0x23:
      result = 0x76457374726F7073;
      break;
    case 0x24:
      result = 0x7463657269646572;
      break;
    case 0x25:
      result = 0x64656B636F6C62;
      break;
    case 0x26:
      result = 0x6B636F6C42746F6ELL;
      break;
    case 0x27:
      result = 0x6C69787541736168;
      break;
    case 0x28:
      result = 0x656C7A7A7570;
      break;
    case 0x29:
      result = 0x7954656C7A7A7570;
      break;
    case 0x2A:
      result = 0x6554656C7A7A7570;
      break;
    case 0x2B:
      result = 0x7453656C7A7A7570;
      break;
    case 0x2D:
      result = 0xD00000000000001ALL;
      break;
    case 0x2E:
      result = 0x756854656772616CLL;
      break;
    case 0x2F:
      result = 0xD000000000000013;
      break;
    case 0x30:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6FA2D34()
{
  v0 = FormatItemTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatItemTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D6FA2DD4()
{
  result = qword_1EDF118B8;
  if (!qword_1EDF118B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF118B8);
  }

  return result;
}

uint64_t sub_1D6FA2E28()
{
  sub_1D7264A0C();
  FormatItemTrait.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6FA2E90(uint64_t a1)
{
  FormatItemTrait.rawValue.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6FA2EF4(uint64_t a1)
{
  sub_1D7264A0C();
  FormatItemTrait.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6FA2F58@<X0>(unint64_t *a1@<X8>)
{
  result = FormatItemTrait.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D6FA2F80(uint64_t a1)
{
  *(a1 + 8) = sub_1D6FA2FB0();
  result = sub_1D5CD0C58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6FA2FB0()
{
  result = qword_1EC899120;
  if (!qword_1EC899120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899120);
  }

  return result;
}

unint64_t sub_1D6FA3004(uint64_t a1)
{
  result = sub_1D66B94C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6FA302C(void *a1)
{
  a1[1] = sub_1D5C50AA0();
  a1[2] = sub_1D5C50AF4();
  result = sub_1D6FA2DD4();
  a1[3] = result;
  return result;
}

void sub_1D6FA30B4(uint64_t a1)
{
  if ((*v1 >> 62) - 1 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }
}

uint64_t sub_1D6FA3150()
{
  v1 = *v0;
  sub_1D7264A0C();
  if ((v1 >> 62) - 1 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6FA31F4(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  if ((v2 >> 62) - 1 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

void *sub_1D6FA3290(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  type metadata accessor for SportsTaxonomyGraphRootNode();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v2[2] = v4;
  v80 = sub_1D605A3B0(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = v2[2];
  v79[0] = v6;

  v7 = MEMORY[0x1E69E7CD0];
  v8 = sub_1D6FA3918(v3, v79, &v80, MEMORY[0x1E69E7CD0]);

  swift_beginAccess();

  sub_1D698532C(v8);
  swift_endAccess();

  v78 = v7;
  v9 = v2[2];
  swift_beginAccess();
  v10 = *(v9 + 16);
  v76 = v7;
  v11 = *(v10 + 2);
  if (v11)
  {

    do
    {
      v12 = *(v10 + 4);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v11 - 1) > *(v10 + 3) >> 1)
      {
        v10 = sub_1D698BF5C(isUniquelyReferenced_nonNull_native, v11, 1, v10);
      }

      sub_1D6FA493C((v10 + 32));
      v14 = *(v10 + 2);
      memmove(v10 + 32, v10 + 40, 8 * v14 - 8);
      *(v10 + 2) = v14 - 1;
      v77 = v10;
      if ((v12 >> 62) >= 2)
      {
        swift_beginAccess();

        sub_1D698532C(v15);
      }

      sub_1D5FE925C(&v75, v12);

      if ((v12 >> 62) - 1 >= 2)
      {
      }

      else
      {
        v16 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);

        sub_1D5B860D0(&v75, v18, v17);
      }

      v10 = v77;
      v11 = *(v77 + 2);
    }

    while (v11);
    v19 = v78;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CD0];
  }

  v20 = MEMORY[0x1E69E7CC0];
  v21 = sub_1D605A3B0(MEMORY[0x1E69E7CC0]);
  v72 = sub_1D605A3B0(v20);
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 56);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  while (v24)
  {
LABEL_17:
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v28 = *(*(v19 + 48) + ((v26 << 9) | (8 * v27)));
    if ((v28 >> 62) - 1 <= 1)
    {
      v66 = v2;
      v30 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *(v30 + 24);
      v71 = *(v30 + 16);

      swift_retain_n();
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v21;
      v69 = v31;
      v33 = sub_1D5B69D90(v71, v31);
      v34 = v21[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_49;
      }

      if (v21[3] >= v36)
      {
        v2 = v66;
        if ((v62 & 1) == 0)
        {
          v65 = v33;
          v61 = v32;
          sub_1D6D7D550();
          v32 = v61;
          v33 = v65;
        }
      }

      else
      {
        v37 = v32;
        sub_1D6D66058(v36, v62);
        v38 = sub_1D5B69D90(v71, v69);
        v40 = v39 & 1;
        v32 = v37;
        v41 = v37 & 1;
        v2 = v66;
        if (v41 != v40)
        {
          goto LABEL_53;
        }

        v33 = v38;
      }

      if (v32)
      {
        v63 = v33;

        v21 = v75;
        *(v75[7] + 8 * v63) = v28;
      }

      else
      {
        v21 = v75;
        v75[(v33 >> 6) + 8] |= 1 << v33;
        v42 = (v21[6] + 16 * v33);
        *v42 = v71;
        v42[1] = v69;
        *(v21[7] + 8 * v33) = v28;
        v43 = v21[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_50;
        }

        v21[2] = v45;
      }

      v46 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = *(v46 + 40);
      if (v47)
      {
        v64 = v21;
        v70 = *(v46 + 32);

        v67 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v72;
        v48 = sub_1D5B69D90(v70, v47);
        v50 = *(v72 + 16);
        v51 = (v49 & 1) == 0;
        v44 = __OFADD__(v50, v51);
        v52 = v50 + v51;
        if (v44)
        {
          goto LABEL_51;
        }

        if (*(v72 + 24) >= v52)
        {
          if (v67)
          {
            v54 = v47;
            if (v49)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v68 = v48;
            v74 = v49;
            sub_1D6D7D550();
            v48 = v68;
            v54 = v47;
            if (v74)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v73 = v49;
          sub_1D6D66058(v52, v67);
          v48 = sub_1D5B69D90(v70, v47);
          if ((v73 & 1) != (v53 & 1))
          {
            goto LABEL_53;
          }

          v54 = v47;
          if (v73)
          {
LABEL_42:
            v55 = v48;

            v72 = v75;
            *(v75[7] + 8 * v55) = v28;

            goto LABEL_46;
          }
        }

        v56 = v75;
        v75[(v48 >> 6) + 8] |= 1 << v48;
        v57 = (v56[6] + 16 * v48);
        *v57 = v70;
        v57[1] = v54;
        *(v56[7] + 8 * v48) = v28;
        v58 = v56[2];
        v44 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v44)
        {
          goto LABEL_52;
        }

        v72 = v56;
        v56[2] = v59;
LABEL_46:

        v21 = v64;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      v2[3] = v21;
      v2[4] = v72;
      v2[5] = v76;
      return v2;
    }

    v24 = *(v19 + 56 + 8 * v29);
    ++v26;
    if (v24)
    {
      v26 = v29;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

char *sub_1D6FA3918(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a4;
    v6 = 0;
    v68 = *a2;
    v7 = a1 + 32;
    v8 = a4 + 56;
    v70 = MEMORY[0x1E69E7CC0];
    v64 = a1 + 32;
    v65 = *(a1 + 16);
    v66 = a4 + 56;
    while (1)
    {
      v9 = *(v7 + 8 * v6);
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          v25 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v26 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v27 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x19);
          if (*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x1A))
          {
            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          type metadata accessor for SportsTaxonomyGraphSectionNode();
          v29 = swift_allocObject();
          v30 = MEMORY[0x1E69E7CC0];
          *(v29 + 40) = MEMORY[0x1E69E7CC0];
          *(v29 + 48) = v30;
          *(v29 + 16) = v26;
          *(v29 + 24) = 0;
          *(v29 + 32) = v28;
          *(v29 + 17) = v27;
          v31 = swift_allocObject();
          *(v31 + 16) = v29;
          v73[0] = v68;
          type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
          swift_allocObject();

          sub_1D613DCC8(v73);
          v32 = swift_beginAccess();
          MEMORY[0x1DA6F9CE0](v32);
          if (*((*(v29 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          v33 = v31 | 0xC000000000000000;
          sub_1D726278C();
          swift_endAccess();
          v73[0] = v33;
          v5 = a4;
          v34 = sub_1D6FA3918(v25, v73, a3, a4);
          swift_beginAccess();
          sub_1D698532C(v34);
          swift_endAccess();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1D698BF5C(0, *(v70 + 2) + 1, 1, v70);
          }

          v7 = v64;
          v8 = v66;
          v36 = *(v70 + 2);
          v35 = *(v70 + 3);
          if (v36 >= v35 >> 1)
          {
            v70 = sub_1D698BF5C((v35 > 1), v36 + 1, 1, v70);
          }

          *(v70 + 2) = v36 + 1;
          *&v70[8 * v36 + 32] = v33;

          v4 = v65;
          goto LABEL_4;
        }

        v21 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v74 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v75[0] = v21;
        *(v75 + 10) = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x2A);
        v71 = v68;

        sub_1D618D150(&v74, v73);
        sub_1D6FA4570(&v74, &v71, a3, v5, &v72);
        sub_1D618D1AC(&v74);
        v22 = v72;
        if ((~v72 & 0xF000000000000007) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1D698BF5C(0, *(v70 + 2) + 1, 1, v70);
          }

          v24 = *(v70 + 2);
          v23 = *(v70 + 3);
          if (v24 >= v23 >> 1)
          {
            v70 = sub_1D698BF5C((v23 > 1), v24 + 1, 1, v70);
          }

          *(v70 + 2) = v24 + 1;
          *&v70[8 * v24 + 32] = v22;

          v8 = v66;
          goto LABEL_4;
        }

        goto LABEL_3;
      }

      if (!v10)
      {
        goto LABEL_4;
      }

      v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v13 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v14 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v67 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if (*(v5 + 16))
      {
        sub_1D7264A0C();

        swift_bridgeObjectRetain_n();

        sub_1D72621EC();
        v15 = sub_1D7264A5C();
        v16 = -1 << *(v5 + 32);
        v17 = v15 & ~v16;
        if ((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*(v5 + 48) + 16 * v17);
            v20 = *v19 == v11 && v19[1] == v12;
            if (v20 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          if (qword_1EDF17590 != -1)
          {
            swift_once();
          }

          v48 = sub_1D725C42C();
          __swift_project_value_buffer(v48, qword_1EDF17598);

          v49 = sub_1D725C3FC();
          v50 = sub_1D7262EBC();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v73[0] = v52;
            *v51 = 136446210;
            *(v51 + 4) = sub_1D5BC5100(v11, v12, v73);
            _os_log_impl(&dword_1D5B42000, v49, v50, "Taxonomy graph contains loop. Node with tagId=%{public}s is it's own ancestor. Ignoring descendent node.", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v52);
            v53 = v52;
            v8 = v66;
            MEMORY[0x1DA6FD500](v53, -1, -1);
            MEMORY[0x1DA6FD500](v51, -1, -1);
          }

          v7 = v64;
          v4 = v65;
          goto LABEL_4;
        }
      }

      else
      {

        swift_bridgeObjectRetain_n();
      }

LABEL_35:
      v37 = *a3;
      if (!*(*a3 + 16) || (v38 = sub_1D5B69D90(v11, v12), (v39 & 1) == 0))
      {
        type metadata accessor for SportsTaxonomyGraphLeafEntityNode();
        v43 = swift_allocObject();
        *(v43 + 56) = MEMORY[0x1E69E7CC0];
        *(v43 + 16) = v11;
        *(v43 + 24) = v12;
        *(v43 + 32) = v13;
        *(v43 + 40) = v67;
        *(v43 + 48) = v14;
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        v45 = v44 | 0x4000000000000000;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73[0] = *a3;
        sub_1D6D769CC(v45, v11, v12, isUniquelyReferenced_nonNull_native);

        *a3 = v73[0];
        v73[0] = v68;
        type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
        swift_allocObject();

        sub_1D613DCC8(v73);
        v47 = swift_beginAccess();
        MEMORY[0x1DA6F9CE0](v47);
        if (*((*(v43 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v43 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        v4 = v65;
        v8 = v66;
        v41 = v45;
        goto LABEL_58;
      }

      v40 = v38;

      v41 = *(*(v37 + 56) + 8 * v40);
      v42 = v41 >> 62;
      if ((v41 >> 62) > 1)
      {
        break;
      }

      v4 = v65;
      if (v42)
      {
        v56 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v73[0] = v68;
        type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
        swift_allocObject();

        sub_1D613DCC8(v73);
        v57 = swift_beginAccess();
        MEMORY[0x1DA6F9CE0](v57);
        if (*((*(v56 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v56 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

LABEL_57:
        sub_1D726278C();
        swift_endAccess();

        v8 = v66;
        goto LABEL_58;
      }

LABEL_58:
      v7 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_1D698BF5C(0, *(v70 + 2) + 1, 1, v70);
      }

      v5 = a4;
      v61 = *(v70 + 2);
      v60 = *(v70 + 3);
      if (v61 >= v60 >> 1)
      {
        v70 = sub_1D698BF5C((v60 > 1), v61 + 1, 1, v70);
      }

      *(v70 + 2) = v61 + 1;
      *&v70[8 * v61 + 32] = v41;
LABEL_3:

LABEL_4:
      if (++v6 == v4)
      {
        return v70;
      }
    }

    v4 = v65;
    if (v42 == 3)
    {
      v54 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v73[0] = v68;
      type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
      swift_allocObject();

      sub_1D613DCC8(v73);
      v55 = swift_beginAccess();
      MEMORY[0x1DA6F9CE0](v55);
      if (*((*(v54 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v54 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }
    }

    else
    {
      v58 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v73[0] = v68;
      type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
      swift_allocObject();

      sub_1D613DCC8(v73);
      v59 = swift_beginAccess();
      MEMORY[0x1DA6F9CE0](v59);
      if (*((*(v58 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v58 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }
    }

    goto LABEL_57;
  }

  return MEMORY[0x1E69E7CC0];
}

Swift::String_optional __swiftcall SportsTaxonomyGraph.tagId(for:)(Swift::String a1)
{
  v2 = *(v1 + 32);
  if (*(v2 + 16) && (v3 = sub_1D5B69D90(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0) && (v5 = *(*(v2 + 56) + 8 * v3), (v5 >> 62) - 1 <= 1))
  {
    v6 = *(*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 16);

    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::String_optional __swiftcall SportsTaxonomyGraph.umcCanonicalId(for:)(Swift::String a1)
{
  v2 = *(v1 + 24);
  if (*(v2 + 16) && (v3 = sub_1D5B69D90(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0) && (v5 = *(*(v2 + 56) + 8 * v3), (v5 >> 62) - 1 <= 1))
  {
    v6 = *(*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 32);

    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

void SportsTaxonomyGraph.node(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 24);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    *a3 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    *a3 = 0xF000000000000007;
  }
}

uint64_t SportsTaxonomyGraph.deinit()
{

  return v0;
}

uint64_t SportsTaxonomyGraph.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D6FA4570(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v9 = *a2;
  v11 = *a1;
  v10 = *(a1 + 8);

  if (sub_1D5BE240C(v11, v10, a4))
  {

    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v12 = sub_1D725C42C();
    __swift_project_value_buffer(v12, qword_1EDF17598);
    sub_1D618D150(a1, v34);
    v13 = sub_1D725C3FC();
    v14 = sub_1D7262EDC();
    sub_1D618D1AC(a1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1D5BC5100(v11, v10, v34);
      _os_log_impl(&dword_1D5B42000, v13, v14, "Taxonomy graph contains loop. Node with tagId=%s is it's own ancestor. Ignoring descendent node.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA6FD500](v16, -1, -1);
      MEMORY[0x1DA6FD500](v15, -1, -1);
    }

    v17 = 0xF000000000000007;
  }

  else
  {
    v18 = *a3;
    if (*(*a3 + 16) && (v19 = sub_1D5B69D90(v11, v10), (v20 & 1) != 0))
    {
      v21 = v19;

      v17 = *(*(v18 + 56) + 8 * v21);
      v34[0] = v17;
      *&v35 = v9;

      sub_1D6C4BFF4(&v35);
    }

    else
    {
      v35 = *(a1 + 16);
      v22 = *(a1 + 40);
      type metadata accessor for SportsTaxonomyGraphEntityNode();
      v33 = a5;
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E7CC0];
      *(v23 + 56) = MEMORY[0x1E69E7CC0];
      *(v23 + 64) = v24;
      *(v23 + 16) = v11;
      *(v23 + 24) = v10;
      *(v23 + 32) = *(a1 + 16);
      *(v23 + 48) = v22;
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      v17 = v25 | 0x8000000000000000;
      sub_1D5B5D494(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      *(inited + 32) = v11;
      *(inited + 40) = v10;

      sub_1D618D200(&v35, v34);

      v27 = sub_1D5BA8750(inited, a4);
      swift_setDeallocating();
      sub_1D5BFB68C(inited + 32);
      v28 = *(v23 + 16);
      v29 = *(v23 + 24);
      swift_retain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = *a3;
      sub_1D6D769CC(v17, v28, v29, isUniquelyReferenced_nonNull_native);

      *a3 = v34[0];
      v34[0] = v9;
      sub_1D71F1DCC(v34);
      v31 = *(a1 + 32);
      v34[0] = v17;
      v32 = sub_1D6FA3918(v31, v34, a3, v27);

      swift_beginAccess();
      sub_1D698532C(v32);
      swift_endAccess();

      a5 = v33;
    }
  }

  *a5 = v17;
}

uint64_t sub_1D6FA4990(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if ((*a1 >> 62) - 1 > 1)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
  }

  if ((v2 >> 62) - 1 > 1)
  {
    v8 = 0;
    v7 = 0;
    if (v4)
    {
LABEL_6:
      if (v7)
      {
        if (v5 == v8 && v4 == v7)
        {

          v9 = 1;
        }

        else
        {
          v9 = sub_1D72646CC();
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  if (!v7)
  {
    v9 = 1;
    return v9 & 1;
  }

  v9 = 0;
LABEL_15:

  return v9 & 1;
}

unint64_t sub_1D6FA4AA8()
{
  result = qword_1EDF0F6D8;
  if (!qword_1EDF0F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F6D8);
  }

  return result;
}

void EngagementBannerViewRenderer.render(for:with:in:)(uint64_t a1, double *a2, char *a3)
{
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_engagementView;
  swift_beginAccess();
  v10 = *&a3[v9];
  if (v10)
  {
    [v10 setFrame_];
    v11 = *&a3[v9];
    if (v11)
    {
      v12 = v11;
      v15.origin.x = v5;
      v15.origin.y = v6;
      v15.size.width = v7;
      v15.size.height = v8;
      [v12 setHidden_];
    }
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  type metadata accessor for FeedEngagementBanner(0);
  v13 = sub_1D725C04C();
  sub_1D69388DC(a3, v13, v14);
}

uint64_t EngagementBannerViewRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void *FeedItemRendererPipelineProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_1D6FA879C(v0 + OBJC_IVAR____TtC8NewsFeed33FeedItemRendererPipelineProcessor_lastRendererOptions, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  return v0;
}

uint64_t FeedItemRendererPipelineProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_1D6FA879C(v0 + OBJC_IVAR____TtC8NewsFeed33FeedItemRendererPipelineProcessor_lastRendererOptions, &qword_1EDF439E8, MEMORY[0x1E69D7978]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FA4E0C(double a1, double a2, double a3, double a4)
{
  v4 = sub_1D725D58C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v53 - v15;
  sub_1D725E13C();
  v17 = sub_1D725D56C();
  v18 = *(v5 + 8);
  v18(v16, v4);
  sub_1D725E13C();
  if (v17)
  {
    sub_1D725D57C();
    y = v20;
    x = v19;
    v18(v16, v4);
    sub_1D725E13C();
    sub_1D725D54C();
    v18(v12, v4);
    sub_1D725E13C();
    sub_1D725D53C();
    v18(v8, v4);
    return sub_1D725E9BC();
  }

  else
  {
    sub_1D725D54C();
    y = v23;
    x = v22;
    v18(v16, v4);
    sub_1D725E13C();
    sub_1D725D53C();
    v18(v12, v4);
    v24 = sub_1D725E9BC();
    v25 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1D725E13C();
    sub_1D725D57C();
    x = v27;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v18(v16, v4);
    sub_1D725E13C();
    sub_1D725D57C();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v18(v12, v4);
    v57.origin.x = v35;
    v57.origin.y = v37;
    v57.size.width = v39;
    v57.size.height = v41;
    v42 = -CGRectGetWidth(v57);
    sub_1D725E13C();
    sub_1D725D57C();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v18(v12, v4);
    v58.origin.x = v44;
    v58.origin.y = v46;
    v58.size.width = v48;
    v58.size.height = v50;
    v51 = -CGRectGetHeight(v58);
    v59.origin.x = x;
    v59.origin.y = v29;
    v59.size.width = v31;
    v59.size.height = v33;
    v60 = CGRectInset(v59, v42, v51);
    y = v60.origin.y;
    x = v60.origin.x;
    sub_1D725E13C();
    sub_1D725D54C();
    v18(v16, v4);
    sub_1D725E13C();
    sub_1D725D53C();
    v18(v12, v4);
    v52 = sub_1D725E9BC();
    if (!v52)
    {
      v52 = v25;
    }

    v56 = v26;
    sub_1D6988D60(v52);
    return v56;
  }
}

void sub_1D6FA5278(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D5B76B10(a1, v27);
  sub_1D5B49474(0, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v28, v31);
    v7 = v32;
    v8 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v8 + 8))(&v28, a2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions, v7, v8);
    sub_1D6FA5748(v3 + 2, &v28, a3 & 1);
    sub_1D6FA883C(&v28, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1D6FA883C(&v28, &qword_1EDF1FE28, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
  }

  sub_1D5B76B10(a1, v27);
  sub_1D5B49474(0, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v28, v31);
    v9 = v32;
    v10 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v10 + 8))(&v28, a2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions, v9, v10);
    sub_1D6FA5748(v3 + 7, &v28, a3 & 1);
    sub_1D6FA883C(&v28, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1D6FA883C(&v28, &qword_1EDF1DC00, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
  }

  sub_1D5B76B10(a1, v27);
  sub_1D5B49474(0, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1D6FA883C(&v28, &qword_1EDF1F760, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
    return;
  }

  sub_1D5B63F14(&v28, v31);
  v11 = v32;
  v12 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v13 = (*(v12 + 8))(a2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions, v11, v12);
  if (v13)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v24 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_isLiveResizing;
      v23 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup;
      v15 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount;
      v16 = v13 + 32;
      do
      {
        sub_1D5B68374(v16, &v28);
        sub_1D5BFED1C(&v28, &v25);
        if (v26)
        {
          sub_1D5B63F14(&v25, v27);
          if (*(a2 + v24) & 1) != 0 && (__swift_project_boxed_opaque_existential_1(v27, v27[3]), (ProcessedImageRequestType.isDownloaded.getter()))
          {
            dispatch_group_enter(*(a2 + v23));
            v18 = 1;
          }

          else
          {
            v18 = 0;
          }

          v19 = *(a2 + v15);
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            __break(1u);
            return;
          }

          *(a2 + v15) = v21;
          __swift_project_boxed_opaque_existential_1(v3 + 17, v3[20]);
          v22 = swift_allocObject();
          *(v22 + 16) = v18;
          *(v22 + 24) = a2;

          sub_1D725D0DC();

          sub_1D6FA883C(&v28, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
          __swift_destroy_boxed_opaque_existential_1(v27);
        }

        else
        {
          v17 = MEMORY[0x1E69D8160];
          sub_1D6FA883C(&v28, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
          sub_1D6FA883C(&v25, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v17);
        }

        v16 += 40;
        --v14;
      }

      while (v14);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
}

void sub_1D6FA5748(void *a1, uint64_t a2, char a3)
{
  sub_1D5BFED1C(a2, &v10);
  if (v11)
  {
    sub_1D5B63F14(&v10, v12);
    if (*(v3 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_isLiveResizing) == 1)
    {
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      if (ProcessedImageRequestType.isDownloaded.getter())
      {
        dispatch_group_enter(*(v3 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup));
        v5 = 1;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v3 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(v3 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount) = v8;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v9 = swift_allocObject();
      *(v9 + 16) = v5;
      *(v9 + 24) = v3;

      sub_1D725D0DC();

      __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    sub_1D6FA883C(&v10, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
  }
}

uint64_t sub_1D6FA58DC()
{
  sub_1D6081448(v0 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions);

  return swift_deallocClassInstance();
}

void (*sub_1D6FA59D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v355 = a3;
  v349 = a2;
  v341 = a1;
  v13 = sub_1D7261B5C();
  v321 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v320 = &v291 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v338 = &v291 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725DDFC();
  v344 = *(v19 - 8);
  v345 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v337 = &v291 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v319 = &v291 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v350 = &v291 - v27;
  v372 = a6;
  v342 = a7;
  v373 = a7;
  v339 = a10;
  v340 = a11;
  v374 = a10;
  v375 = a11;
  v28 = sub_1D725E28C();
  v324 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v327 = &v291 - v30;
  v331 = a6;
  v323 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v326 = (&v291 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v328 = &v291 - v36;
  v351 = sub_1D7258DBC();
  v325 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351, v37);
  v318 = &v291 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v334 = &v291 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v347 = &v291 - v44;
  sub_1D5B53BE4(0, &qword_1EDF3B4B8, MEMORY[0x1E69D8468]);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v356 = &v291 - v47;
  v358 = sub_1D725EF6C();
  v322 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358, v48);
  v332 = &v291 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v336 = &v291 - v52;
  v335 = type metadata accessor for ImageRequestOptions(0);
  MEMORY[0x1EEE9AC00](v335, v53);
  v343 = &v291 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B53BE4(0, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v58 = &v291 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v291 - v61;
  v63 = sub_1D725D58C();
  v352 = *(v63 - 8);
  v353 = v63;
  MEMORY[0x1EEE9AC00](v63, v64);
  v348 = (&v291 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v66, v67);
  v354 = (&v291 - v68);
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v291 - v71;
  v73 = sub_1D725EB5C();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v75);
  v77 = &v291 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v291 - v80;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    v311 = v13;
    v312 = v28;
    sub_1D725E20C();
    (*(v74 + 104))(v77, *MEMORY[0x1E69D81B0], v73);
    v82 = sub_1D725EB4C();
    v83 = *(v74 + 8);
    v83(v77, v73);
    v83(v81, v73);
    if (v82)
    {
      v84 = OBJC_IVAR____TtC8NewsFeed33FeedItemRendererPipelineProcessor_lastRendererOptions;
      v85 = v357;
      swift_beginAccess();
      sub_1D6FA869C(v85 + v84, v62);
      v87 = v352;
      v86 = v353;
      if (v352[6](v62, 1, v353) == 1)
      {
        sub_1D6FA879C(v62, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
      }

      else
      {
        v87[4](v72, v62, v86);
        v88 = v354;
        sub_1D725E13C();
        sub_1D725D57C();
        v90 = v89;
        v92 = v91;
        v94 = v93;
        v96 = v95;
        v97 = v87[1];
        (v97)(v88, v86);
        v376.origin.x = v90;
        v376.origin.y = v92;
        v376.size.width = v94;
        v376.size.height = v96;
        Width = CGRectGetWidth(v376);
        sub_1D725D57C();
        if (Width != CGRectGetWidth(v377))
        {
          v99 = v357;
          v100 = v357[5];
          v333 = v357[6];
          __swift_project_boxed_opaque_existential_1(v357 + 2, v100);
          sub_1D725D0CC();
          v101 = v99[10];
          v333 = v99[11];
          __swift_project_boxed_opaque_existential_1(v99 + 7, v101);
          sub_1D725D0CC();
          v102 = v99[15];
          v333 = v99[16];
          v103 = v99 + 12;
          v86 = v353;
          __swift_project_boxed_opaque_existential_1(v103, v102);
          sub_1D725D0CC();
        }

        (v97)(v72, v86);
        v87 = v352;
      }

      sub_1D725E13C();
      (v87[7])(v58, 0, 1, v86);
      v104 = v357;
      swift_beginAccess();
      sub_1D6FA871C(v58, v104 + v84);
      swift_endAccess();
      v105 = v354;
      sub_1D725E13C();
      sub_1D725D57C();
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v113 = v112;
      v114 = v87[1];
      (v114)(v105, v86);
      v378.origin.x = v107;
      v378.origin.y = v109;
      v378.size.width = v111;
      v378.size.height = v113;
      v115 = CGRectGetWidth(v378);
      v116 = v348;
      sub_1D725E13C();
      sub_1D725D57C();
      v118 = v117;
      v120 = v119;
      v122 = v121;
      v124 = v123;
      (v114)(v116, v86);
      v379.origin.x = v118;
      v379.origin.y = v120;
      v379.size.width = v122;
      v379.size.height = v124;
      Height = CGRectGetHeight(v379);
      v126 = sub_1D6FA4E0C(0.0, 0.0, v115, Height);
      v127 = &qword_1EDF1B000;
      v128 = &unk_1EDFFC000;
      if (v126)
      {
        v129 = v126 >> 62;
        if (v126 >> 62)
        {
          goto LABEL_153;
        }

        v130 = v126;
        for (i = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
        {
          v348 = i;
          v132 = CACurrentMediaTime();
          v133 = v130;
          if (v127[362] != -1)
          {
            goto LABEL_161;
          }

          while (1)
          {
            v134 = v128[261];
            sub_1D7262EAC();
            sub_1D5C166FC(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v295 = v135;
            v136 = swift_allocObject();
            *(v136 + 16) = xmmword_1D7273AE0;
            v330 = v133 & 0xFFFFFFFFFFFFFF8;
            v137 = v129 ? sub_1D7263BFC() : *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v138 = MEMORY[0x1E69E65A8];
            *(v136 + 56) = MEMORY[0x1E69E6530];
            *(v136 + 64) = v138;
            v294 = v137;
            *(v136 + 32) = v137;
            v296 = v134;
            sub_1D725C30C("Feed item renderer pipeline starting, processing=%ld", v291);

            v139 = v354;
            sub_1D725E13C();
            v140 = sub_1D725D56C();
            (v114)(v139, v353);
            sub_1D725E15C();
            v142 = v141;
            v143 = sub_1D725E1AC();
            v144 = *(v335 + 24);
            v145 = sub_1D725CB5C();
            v146 = v343;
            (*(*(v145 - 8) + 56))(&v343[v144], 1, 1, v145);
            *v146 = v142;
            v146[1] = v143;
            type metadata accessor for FeedItemRendererPipelineProcessor.Context(0);
            v127 = swift_allocObject();
            v128 = &unk_1EDF35000;
            *(v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount) = 0;
            v147 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup;
            *(v127 + v147) = dispatch_group_create();
            v148 = MEMORY[0x1E69E7CD0];
            *(v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_supplementaryIndicesSeen) = MEMORY[0x1E69E7CD0];
            *(v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_supplementaryIndexPathsSeen) = v148;
            *(v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_isLiveResizing) = v140 & 1;
            sub_1D6E8B158(v146, v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions);
            v149 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_supplementaryIndexPathsSeen;
            v343 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions;
            v353 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_isLiveResizing;
            v333 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup;
            v355 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount;
            v349 = v133 & 0xC000000000000001;
            v304 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_supplementaryIndicesSeen;
            swift_beginAccess();
            v302 = v149;
            swift_beginAccess();
            v126 = 0;
            v329 = v133 + 32;
            v335 = v325 + 8;
            v317 = (v344 + 8);
            v316 = (v346 + 16);
            v315 = (v346 + 8);
            v314 = (v322 + 6);
            v309 = (v322 + 2);
            v310 = (v322 + 4);
            v308 = (v322 + 11);
            v307 = *MEMORY[0x1E69D8460];
            v303 = *MEMORY[0x1E69D8458];
            v305 = (v322 + 1);
            v297 = (v325 + 32);
            v298 = (v322 + 12);
            v322 = (v325 + 16);
            v293 = (v344 + 16);
            v300 = (v323 + 16);
            v301 = (v324 + 8);
            v299 = (v323 + 8);
            v129 = v331;
            v150 = v350;
            v151 = v356;
            v114 = v358;
            v152 = v345;
            v306 = v133;
LABEL_18:
            if (v349)
            {
              break;
            }

            if (v126 >= *(v330 + 16))
            {
              goto LABEL_148;
            }

            v155 = v126;
            v126 = *(v329 + 8 * v126);
            v154 = __OFADD__(v155, 1);
            v128 = (v155 + 1);
            if (v154)
            {
              goto LABEL_146;
            }

LABEL_24:
            v354 = v128;
            v156 = v126;
            v157 = [v156 representedElementCategory];
            if (!v157)
            {
              v158 = [v156 indexPath];
              v159 = v347;
              sub_1D7258D6C();

              v372 = v129;
              v160 = v342;
              v373 = v342;
              v374 = v339;
              v375 = v340;
              sub_1D725D34C();
              v161 = v337;
              sub_1D725D35C();
              (*v335)(v159, v351);
              v162 = v338;
              sub_1D725DDEC();
              v163 = v161;
              v151 = v356;
              (*v317)(v163, v152);
              v375 = v160;
              v164 = __swift_allocate_boxed_opaque_existential_1(&v372);
              (*v316)(v164, v162, v160);
              [v156 frame];
              v166 = v165;
              v168 = v167;
              v170 = v169;
              v172 = v171;

              v380.origin.x = 0.0;
              v380.origin.y = 0.0;
              v380.size.width = v115;
              v380.size.height = Height;
              v384.origin.x = v166;
              v384.origin.y = v168;
              v384.size.width = v170;
              v384.size.height = v172;
              v173 = CGRectIntersectsRect(v380, v384);
              v128 = v357;
              sub_1D6FA5278(&v372, v127, v173);

              v174 = v162;
              v150 = v350;
              v175 = v160;
              v114 = v358;
              (*v315)(v174, v175);
              __swift_destroy_boxed_opaque_existential_1(&v372);
              goto LABEL_17;
            }

            if (v157 != 1)
            {

LABEL_17:
              v126 = v354;
              if (v354 == v348)
              {

                v281 = v320;
                sub_1D7261B3C();
                sub_1D726301C();
                (*(v321 + 8))(v281, v311);
                v282 = CACurrentMediaTime();
                sub_1D7262EAC();
                v283 = swift_allocObject();
                *(v283 + 16) = xmmword_1D7279970;
                v284 = MEMORY[0x1E69E6530];
                *(v283 + 56) = MEMORY[0x1E69E6530];
                v285 = MEMORY[0x1E69E65A8];
                *(v283 + 32) = v294;
                v286 = *(v127 + v355);
                *(v283 + 96) = v284;
                *(v283 + 104) = v285;
                *(v283 + 64) = v285;
                *(v283 + 72) = v286;
                v287 = MEMORY[0x1E69E6438];
                *(v283 + 136) = MEMORY[0x1E69E63B0];
                *(v283 + 144) = v287;
                *(v283 + 112) = (v282 - v132) * 1000.0;
                sub_1D725C30C("Feed item renderer pipeline finished, processed=%ld, prewarmwedRequests=%ld, time=%fms", v291, v292, *&v293);

                return nullsub_1;
              }

              goto LABEL_18;
            }

            v128 = v156;
            sub_1D725C99C();
            if ((*v314)(v151, 1, v114) == 1)
            {

              sub_1D6FA879C(v151, &qword_1EDF3B4B8, MEMORY[0x1E69D8468]);
              goto LABEL_17;
            }

            v344 = v156;
            v176 = v336;
            (*v310)(v336, v151, v114);
            v177 = v332;
            (*v309)(v332, v176, v114);
            v178 = (*v308)(v177, v114);
            v179 = v351;
            if (v178 == v307)
            {
              v180 = v344;
              v181 = [v344 indexPath];
              v182 = v347;
              sub_1D7258D6C();

              v183 = sub_1D7258DAC();
              v184 = v182;
              v114 = v358;
              (*v335)(v184, v179);
              v128 = *(v127 + v304);
              v151 = v356;
              if (v128[2])
              {
                v185 = sub_1D72649FC();
                v186 = -1 << *(v128 + 32);
                v187 = v185 & ~v186;
                if ((*(v128 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v187))
                {
                  v188 = ~v186;
                  while (*(v128[6] + 8 * v187) != v183)
                  {
                    v187 = (v187 + 1) & v188;
                    if (((*(v128 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v187) & 1) == 0)
                    {
                      goto LABEL_35;
                    }
                  }

                  (*v305)(v336, v114);
                  v129 = v331;
                  goto LABEL_17;
                }
              }

LABEL_35:
              swift_beginAccess();
              sub_1D5FE917C(&v369, v183);
              swift_endAccess();
              v189 = v331;
              v372 = v331;
              v373 = v342;
              v374 = v339;
              v375 = v340;
              sub_1D725D34C();
              v190 = v327;
              v129 = v189;
              sub_1D725D36C();
              v191 = v328;
              v192 = v312;
              sub_1D725E24C();
              (*v301)(v190, v192);
              v375 = v189;
              v193 = __swift_allocate_boxed_opaque_existential_1(&v372);
              v194 = *v300;
              (*v300)(v193, v191, v189);
              [v180 frame];
              v385.origin.x = v195;
              v385.origin.y = v196;
              v385.size.width = v197;
              v385.size.height = v198;
              v381.origin.x = 0.0;
              v381.origin.y = 0.0;
              v381.size.width = v115;
              v381.size.height = Height;
              v199 = CGRectIntersectsRect(v381, v385);
              sub_1D6FA5278(&v372, v127, v199);
              __swift_destroy_boxed_opaque_existential_1(&v372);
              v128 = v326;
              v194(v326, v191, v129);
              v200 = MEMORY[0x1E69D8728];
              sub_1D5B49474(0, &qword_1EDF3B468, MEMORY[0x1E69D8728]);
              if ((swift_dynamicCast() & 1) == 0)
              {

                (*v299)(v191, v129);
                v114 = v358;
                (*v305)(v336, v358);
                v371 = 0;
                v369 = 0u;
                v370 = 0u;
                sub_1D6FA883C(&v369, &unk_1EDF16E58, &qword_1EDF3B468, v200);
                v151 = v356;
LABEL_138:
                v152 = v345;
                goto LABEL_17;
              }

              sub_1D5B63F14(&v369, &v372);
              v128 = __swift_project_boxed_opaque_existential_1(&v372, v375);
              v126 = sub_1D725F56C();
              v151 = v356;
              if (!v126)
              {

                v129 = v331;
                (*v299)(v191, v331);
                v114 = v358;
                (*v305)(v336, v358);
                __swift_destroy_boxed_opaque_existential_1(&v372);
                goto LABEL_138;
              }

              v114 = v358;
              v152 = v345;
              v346 = *(v126 + 16);
              if (!v346)
              {
LABEL_134:

                v128 = v344;

                v129 = v331;
                (*v299)(v328, v331);
                (*v305)(v336, v114);
                __swift_destroy_boxed_opaque_existential_1(&v372);
                goto LABEL_17;
              }

              v129 = 0;
              v323 = v126;
              v324 = v126 + 32;
              while (2)
              {
                if (v129 >= *(v126 + 16))
                {
                  goto LABEL_149;
                }

                v201 = (v324 + 40 * v129);
                v202 = v201[3];
                v203 = __swift_project_boxed_opaque_existential_1(v201, v202);
                v368 = v202;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v367);
                (*(*(v202 - 8) + 16))(boxed_opaque_existential_1, v203, v202);
                [v344 frame];
                v386.origin.x = v205;
                v386.origin.y = v206;
                v386.size.width = v207;
                v386.size.height = v208;
                v382.origin.x = 0.0;
                v382.origin.y = 0.0;
                v382.size.width = v115;
                v382.size.height = Height;
                LODWORD(v352) = CGRectIntersectsRect(v382, v386);
                sub_1D5B76B10(v367, v361);
                sub_1D5B49474(0, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v364, &v369);
                  v114 = *(&v370 + 1);
                  v209 = v371;
                  v128 = __swift_project_boxed_opaque_existential_1(&v369, *(&v370 + 1));
                  (*(v209 + 8))(&v364, &v343[v127], v114, v209);
                  sub_1D5BFED1C(&v364, &v359);
                  if (v360)
                  {
                    v126 = sub_1D5B63F14(&v359, v361);
                    if (*(v127 + v353) & 1) != 0 && (v114 = v363, v128 = __swift_project_boxed_opaque_existential_1(v361, v362), v126 = ProcessedImageRequestType.isDownloaded.getter(), (v126))
                    {
                      dispatch_group_enter(*(v127 + v333));
                      v210 = 1;
                    }

                    else
                    {
                      v210 = 0;
                    }

                    v211 = *(v127 + v355);
                    v154 = __OFADD__(v211, 1);
                    v212 = v211 + 1;
                    if (v154)
                    {
                      goto LABEL_151;
                    }

                    *(v127 + v355) = v212;
                    __swift_project_boxed_opaque_existential_1(v357 + 2, v357[5]);
                    v213 = swift_allocObject();
                    *(v213 + 16) = v210;
                    *(v213 + 24) = v127;

                    sub_1D725D0DC();
                    v152 = v345;

                    sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    __swift_destroy_boxed_opaque_existential_1(v361);
                    v151 = v356;
                  }

                  else
                  {
                    v214 = MEMORY[0x1E69D8160];
                    sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    sub_1D6FA883C(&v359, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v214);
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v369);
                  v150 = v350;
                }

                else
                {
                  v366 = 0;
                  v364 = 0u;
                  v365 = 0u;
                  sub_1D6FA883C(&v364, &qword_1EDF1FE28, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
                }

                sub_1D5B76B10(v367, v361);
                sub_1D5B49474(0, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v364, &v369);
                  v114 = *(&v370 + 1);
                  v215 = v371;
                  v128 = __swift_project_boxed_opaque_existential_1(&v369, *(&v370 + 1));
                  (*(v215 + 8))(&v364, &v343[v127], v114, v215);
                  sub_1D5BFED1C(&v364, &v359);
                  if (v360)
                  {
                    v126 = sub_1D5B63F14(&v359, v361);
                    if (*(v127 + v353) & 1) != 0 && (v114 = v363, v128 = __swift_project_boxed_opaque_existential_1(v361, v362), v126 = ProcessedImageRequestType.isDownloaded.getter(), (v126))
                    {
                      dispatch_group_enter(*(v127 + v333));
                      v216 = 1;
                    }

                    else
                    {
                      v216 = 0;
                    }

                    v217 = *(v127 + v355);
                    v154 = __OFADD__(v217, 1);
                    v218 = v217 + 1;
                    if (v154)
                    {
                      goto LABEL_152;
                    }

                    *(v127 + v355) = v218;
                    __swift_project_boxed_opaque_existential_1(v357 + 7, v357[10]);
                    v219 = swift_allocObject();
                    *(v219 + 16) = v216;
                    *(v219 + 24) = v127;

                    sub_1D725D0DC();
                    v152 = v345;

                    sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    __swift_destroy_boxed_opaque_existential_1(v361);
                    v150 = v350;
                    v151 = v356;
                  }

                  else
                  {
                    v220 = MEMORY[0x1E69D8160];
                    sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    sub_1D6FA883C(&v359, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v220);
                    v150 = v350;
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v369);
                }

                else
                {
                  v366 = 0;
                  v364 = 0u;
                  v365 = 0u;
                  sub_1D6FA883C(&v364, &qword_1EDF1DC00, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
                }

                v128 = qword_1EDF1F768;
                sub_1D5B76B10(v367, v361);
                sub_1D5B49474(0, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v364, &v369);
                  v221 = *(&v370 + 1);
                  v222 = v371;
                  v128 = __swift_project_boxed_opaque_existential_1(&v369, *(&v370 + 1));
                  v223 = (*(v222 + 8))(&v343[v127], v221, v222);
                  if (v223)
                  {
                    v313 = v223;
                    v224 = *(v223 + 16);
                    v114 = v358;
                    if (v224)
                    {
                      v225 = v313 + 32;
                      do
                      {
                        sub_1D5B68374(v225, &v364);
                        sub_1D5BFED1C(&v364, &v359);
                        if (v360)
                        {
                          v126 = sub_1D5B63F14(&v359, v361);
                          if (*(v127 + v353) & 1) != 0 && (v114 = v363, v128 = __swift_project_boxed_opaque_existential_1(v361, v362), v126 = ProcessedImageRequestType.isDownloaded.getter(), (v126))
                          {
                            dispatch_group_enter(*(v127 + v333));
                            v227 = 1;
                          }

                          else
                          {
                            v227 = 0;
                          }

                          v228 = *(v127 + v355);
                          v154 = __OFADD__(v228, 1);
                          v229 = v228 + 1;
                          if (v154)
                          {
                            __break(1u);
                            goto LABEL_146;
                          }

                          *(v127 + v355) = v229;
                          v230 = __swift_project_boxed_opaque_existential_1(v357 + 17, v357[20]);
                          v231 = swift_allocObject();
                          *(v231 + 16) = v227;
                          *(v231 + 24) = v127;

                          v114 = v358;
                          v128 = v230;
                          sub_1D725D0DC();
                          v151 = v356;

                          sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                          __swift_destroy_boxed_opaque_existential_1(v361);
                        }

                        else
                        {
                          v128 = &qword_1EDF3B4D0;
                          v226 = MEMORY[0x1E69D8160];
                          sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                          sub_1D6FA883C(&v359, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v226);
                        }

                        v225 += 40;
                        --v224;
                      }

                      while (v224);
                    }

                    __swift_destroy_boxed_opaque_existential_1(&v369);
                    v152 = v345;
                    v150 = v350;
LABEL_40:
                    ++v129;
                    __swift_destroy_boxed_opaque_existential_1(v367);
                    v126 = v323;
                    if (v129 == v346)
                    {
                      goto LABEL_134;
                    }

                    continue;
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v369);
                  v150 = v350;
                }

                else
                {
                  v366 = 0;
                  v364 = 0u;
                  v365 = 0u;
                  sub_1D6FA883C(&v364, &qword_1EDF1F760, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
                }

                break;
              }

              v114 = v358;
              goto LABEL_40;
            }

            if (v178 != v303)
            {
              v280 = v344;

              v128 = *v305;
              (*v305)(v336, v114);
              (v128)(v332, v114);
              goto LABEL_143;
            }

            v232 = v332;
            (*v298)(v332, v114);
            sub_1D6149C2C(0);
            v234 = v334;
            (*v297)(v334, &v232[*(v233 + 48)], v179);
            v235 = *(v127 + v302);
            if (*(v235 + 16))
            {
              sub_1D6FA87F8(&qword_1EDF18A30, MEMORY[0x1E6969C38]);

              v236 = sub_1D7261E7C();
              v237 = -1 << *(v235 + 32);
              v238 = v236 & ~v237;
              v352 = (v235 + 56);
              if ((*(v235 + 56 + ((v238 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v238))
              {
                v346 = ~v237;
                v239 = *(v325 + 72);
                v240 = *(v325 + 16);
                while (1)
                {
                  v241 = v347;
                  v242 = v351;
                  v240(v347, *(v235 + 48) + v239 * v238, v351);
                  sub_1D6FA87F8(&qword_1EDF3C378, MEMORY[0x1E6969C50]);
                  v243 = sub_1D7261FBC();
                  v244 = *v335;
                  (*v335)(v241, v242);
                  if (v243)
                  {
                    break;
                  }

                  v238 = (v238 + 1) & v346;
                  v234 = v334;
                  if (((*(v352 + ((v238 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v238) & 1) == 0)
                  {
                    goto LABEL_86;
                  }
                }

                v128 = v344;

                (v244)(v334, v351);
                v114 = v358;
                (*v305)(v336, v358);
                v129 = v331;
                v152 = v345;
                v150 = v350;
                goto LABEL_143;
              }

LABEL_86:

              v152 = v345;
              v150 = v350;
              v179 = v351;
            }

            v245 = v318;
            (*v322)(v318, v234, v179);
            swift_beginAccess();
            v246 = v347;
            sub_1D5FF0FA8(v347, v245);
            swift_endAccess();
            v247 = *v335;
            (*v335)(v246, v179);
            v129 = v331;
            v372 = v331;
            v373 = v342;
            v374 = v339;
            v375 = v340;
            sub_1D725D34C();
            sub_1D725D35C();
            (*v293)(v319, v150, v152);
            sub_1D5B49474(0, &qword_1EDF3B468, MEMORY[0x1E69D8728]);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v128 = v344;

              (*v317)(v150, v152);
              (v247)(v234, v179);
              v114 = v358;
              (*v305)(v336, v358);
              v371 = 0;
              v369 = 0u;
              v370 = 0u;
              sub_1D6FA883C(&v369, &unk_1EDF16E58, &qword_1EDF3B468, MEMORY[0x1E69D8728]);
              goto LABEL_143;
            }

            v352 = v247;
            sub_1D5B63F14(&v369, &v372);
            v128 = __swift_project_boxed_opaque_existential_1(&v372, v375);
            v126 = sub_1D725F56C();
            if (!v126)
            {
              v128 = v344;

              (*v317)(v150, v152);
              (v352)(v334, v179);
              v114 = v358;
              (*v305)(v336, v358);
LABEL_142:
              __swift_destroy_boxed_opaque_existential_1(&v372);
              v129 = v331;
LABEL_143:
              v151 = v356;
              goto LABEL_17;
            }

            v133 = v126;
            v114 = v358;
            v248 = v352;
            v324 = *(v126 + 16);
            if (!v324)
            {
LABEL_139:

              v128 = v344;

              (*v317)(v150, v152);
              (v248)(v334, v179);
              (*v305)(v336, v114);
              goto LABEL_142;
            }

            v129 = 0;
            v323 = v126 + 32;
            v292 = v126;
            while (2)
            {
              if (v129 >= *(v133 + 16))
              {
                goto LABEL_150;
              }

              v249 = (v323 + 40 * v129);
              v250 = v249[3];
              v251 = __swift_project_boxed_opaque_existential_1(v249, v250);
              v368 = v250;
              v252 = __swift_allocate_boxed_opaque_existential_1(v367);
              (*(*(v250 - 8) + 16))(v252, v251, v250);
              [v344 frame];
              v387.origin.x = v253;
              v387.origin.y = v254;
              v387.size.width = v255;
              v387.size.height = v256;
              v383.origin.x = 0.0;
              v383.origin.y = 0.0;
              v383.size.width = v115;
              v383.size.height = Height;
              LODWORD(v346) = CGRectIntersectsRect(v383, v387);
              sub_1D5B76B10(v367, v361);
              sub_1D5B49474(0, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
              if (!swift_dynamicCast())
              {
                v366 = 0;
                v364 = 0u;
                v365 = 0u;
                sub_1D6FA883C(&v364, &qword_1EDF1FE28, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
                v114 = v358;
                goto LABEL_105;
              }

              sub_1D5B63F14(&v364, &v369);
              v114 = *(&v370 + 1);
              v257 = v371;
              v128 = __swift_project_boxed_opaque_existential_1(&v369, *(&v370 + 1));
              (*(v257 + 8))(&v364, &v343[v127], v114, v257);
              sub_1D5BFED1C(&v364, &v359);
              if (!v360)
              {
                v262 = MEMORY[0x1E69D8160];
                sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                sub_1D6FA883C(&v359, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v262);
LABEL_104:
                v114 = v358;
                __swift_destroy_boxed_opaque_existential_1(&v369);
                v150 = v350;
LABEL_105:
                sub_1D5B76B10(v367, v361);
                sub_1D5B49474(0, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v364, &v369);
                  v114 = *(&v370 + 1);
                  v263 = v371;
                  v128 = __swift_project_boxed_opaque_existential_1(&v369, *(&v370 + 1));
                  (*(v263 + 8))(&v364, &v343[v127], v114, v263);
                  sub_1D5BFED1C(&v364, &v359);
                  if (v360)
                  {
                    sub_1D5B63F14(&v359, v361);
                    if (*(v127 + v353) & 1) != 0 && (v114 = v363, v128 = __swift_project_boxed_opaque_existential_1(v361, v362), (ProcessedImageRequestType.isDownloaded.getter()))
                    {
                      dispatch_group_enter(*(v127 + v333));
                      v264 = 1;
                    }

                    else
                    {
                      v264 = 0;
                    }

                    v265 = *(v127 + v355);
                    v154 = __OFADD__(v265, 1);
                    v266 = v265 + 1;
                    if (v154)
                    {
                      goto LABEL_160;
                    }

                    *(v127 + v355) = v266;
                    __swift_project_boxed_opaque_existential_1(v357 + 7, v357[10]);
                    v267 = swift_allocObject();
                    *(v267 + 16) = v264;
                    *(v267 + 24) = v127;

                    sub_1D725D0DC();

                    sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    __swift_destroy_boxed_opaque_existential_1(v361);
                    v150 = v350;
                    v179 = v351;
                  }

                  else
                  {
                    v268 = MEMORY[0x1E69D8160];
                    sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    sub_1D6FA883C(&v359, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v268);
                    v150 = v350;
                  }

                  v114 = v358;
                  __swift_destroy_boxed_opaque_existential_1(&v369);
                }

                else
                {
                  v366 = 0;
                  v364 = 0u;
                  v365 = 0u;
                  sub_1D6FA883C(&v364, &qword_1EDF1DC00, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
                }

                sub_1D5B76B10(v367, v361);
                v128 = qword_1EDF1F768;
                sub_1D5B49474(0, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v364, &v369);
                  v269 = *(&v370 + 1);
                  v270 = v371;
                  v128 = __swift_project_boxed_opaque_existential_1(&v369, *(&v370 + 1));
                  v271 = (*(v270 + 8))(&v343[v127], v269, v270);
                  if (v271)
                  {
                    v313 = v271;
                    v272 = *(v271 + 16);
                    v114 = v358;
                    v248 = v352;
                    if (v272)
                    {
                      v273 = v313 + 32;
                      do
                      {
                        sub_1D5B68374(v273, &v364);
                        sub_1D5BFED1C(&v364, &v359);
                        if (v360)
                        {
                          v126 = sub_1D5B63F14(&v359, v361);
                          if (*(v127 + v353) & 1) != 0 && (v114 = v363, v128 = __swift_project_boxed_opaque_existential_1(v361, v362), v126 = ProcessedImageRequestType.isDownloaded.getter(), (v126))
                          {
                            dispatch_group_enter(*(v127 + v333));
                            v275 = 1;
                          }

                          else
                          {
                            v275 = 0;
                          }

                          v276 = *(v127 + v355);
                          v154 = __OFADD__(v276, 1);
                          v277 = v276 + 1;
                          if (v154)
                          {
                            goto LABEL_147;
                          }

                          *(v127 + v355) = v277;
                          v278 = __swift_project_boxed_opaque_existential_1(v357 + 17, v357[20]);
                          v279 = swift_allocObject();
                          *(v279 + 16) = v275;
                          *(v279 + 24) = v127;

                          v114 = v358;
                          v128 = v278;
                          v179 = v351;
                          sub_1D725D0DC();

                          sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                          __swift_destroy_boxed_opaque_existential_1(v361);
                        }

                        else
                        {
                          v128 = &qword_1EDF3B4D0;
                          v274 = MEMORY[0x1E69D8160];
                          sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                          sub_1D6FA883C(&v359, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v274);
                        }

                        v273 += 40;
                        --v272;
                        v248 = v352;
                      }

                      while (v272);
                    }

                    __swift_destroy_boxed_opaque_existential_1(&v369);
                    v152 = v345;
                    v150 = v350;
                    v133 = v292;
LABEL_92:
                    ++v129;
                    v126 = __swift_destroy_boxed_opaque_existential_1(v367);
                    if (v129 == v324)
                    {
                      goto LABEL_139;
                    }

                    continue;
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v369);
                  v150 = v350;
                  v114 = v358;
                }

                else
                {
                  v366 = 0;
                  v364 = 0u;
                  v365 = 0u;
                  sub_1D6FA883C(&v364, &qword_1EDF1F760, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
                }

                v248 = v352;
                goto LABEL_92;
              }

              break;
            }

            sub_1D5B63F14(&v359, v361);
            if (*(v127 + v353) & 1) != 0 && (v114 = v363, v128 = __swift_project_boxed_opaque_existential_1(v361, v362), (ProcessedImageRequestType.isDownloaded.getter()))
            {
              dispatch_group_enter(*(v127 + v333));
              v258 = 1;
            }

            else
            {
              v258 = 0;
            }

            v259 = *(v127 + v355);
            v154 = __OFADD__(v259, 1);
            v260 = v259 + 1;
            if (!v154)
            {
              *(v127 + v355) = v260;
              __swift_project_boxed_opaque_existential_1(v357 + 2, v357[5]);
              v261 = swift_allocObject();
              *(v261 + 16) = v258;
              *(v261 + 24) = v127;

              sub_1D725D0DC();

              sub_1D6FA883C(&v364, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
              __swift_destroy_boxed_opaque_existential_1(v361);
              v179 = v351;
              goto LABEL_104;
            }

            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            swift_once();
          }

          v153 = v126;
          v126 = MEMORY[0x1DA6FB460]();
          v154 = __OFADD__(v153, 1);
          v128 = (v153 + 1);
          if (!v154)
          {
            goto LABEL_24;
          }

LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          v130 = v126;
        }
      }

      if (v127[362] != -1)
      {
        swift_once();
      }

      v288 = v128[261];
      v289 = sub_1D7262EAC();
      sub_1D725C30C("Feed item renderer pipeline bailed, no layout attributes to process", 67, 2, &dword_1D5B42000, v288, v289, MEMORY[0x1E69E7CC0]);
    }
  }

  return nullsub_1;
}

uint64_t sub_1D6FA85D8(uint64_t a1)
{
  result = type metadata accessor for ImageRequestOptions(319);
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

uint64_t sub_1D6FA869C(uint64_t a1, uint64_t a2)
{
  sub_1D5B53BE4(0, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6FA871C(uint64_t a1, uint64_t a2)
{
  sub_1D5B53BE4(0, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6FA879C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B53BE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6FA87F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D7258DBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6FA883C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5C166FC(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6FA88B0()
{
  if (*(v0 + 16) == 1)
  {
    dispatch_group_leave(*(*(v0 + 24) + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup));
  }
}

uint64_t dispatch thunk of TagFeedHeadlineServiceType.fetchTagFeed(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D6FA8A0C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 208) = a1;
  v4 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v4;
  v5 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v5;
  v6 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1D6FA8A48, 0, 0);
}

uint64_t sub_1D6FA8A48()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  sub_1D5C384A0(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v35 = v1[2];
  v36 = v1[3];
  v37 = v1[4];
  v38 = v1[5];
  v33 = *v1;
  v34 = v1[1];
  v4 = TagFeedHeadlineRequest.description.getter();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v7 = sub_1D7262EDC();
  sub_1D725C30C("Tag feed headline service will fetched headlines... request=%{public}@", 70, 2, &dword_1D5B42000, v2, v7, v3, v33, v34, v35, v36, v37, v38);

  v9 = (v0 + 16);
  v8 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(*(v0 + 224) + 16) tag:v8 feedConfiguration:*(v0 + 24)];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  *(v0 + 232) = v10;
  v12 = [*(*(v0 + 224) + 16) subscriptionController];
  if (v12)
  {
    v20 = v12;
    v21 = [v12 subscribedTagIDs];

    if (v21)
    {
      v22 = sub_1D726267C();
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v0 + 224);
    v24 = sub_1D5B86020(v22);

    v25 = swift_allocObject();
    *(v0 + 240) = v25;
    v26 = *(v0 + 64);
    *(v25 + 48) = *(v0 + 48);
    *(v25 + 64) = v26;
    v27 = *(v0 + 96);
    *(v25 + 80) = *(v0 + 80);
    *(v25 + 96) = v27;
    v28 = *v9;
    v29 = *(v0 + 32);
    *(v25 + 112) = v24;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    v30 = swift_task_alloc();
    *(v0 + 248) = v30;
    v30[2] = v9;
    v30[3] = v23;
    v30[4] = v11;
    v30[5] = sub_1D6FAA7C8;
    v30[6] = v25;
    sub_1D6FAA7E4(v0 + 16, v0 + 112);
    v31 = swift_task_alloc();
    *(v0 + 256) = v31;
    *v31 = v0;
    v31[1] = sub_1D6FA8D1C;
    v12 = *(v0 + 208);
    v19 = &type metadata for TagFeedHeadlineResult;
    v17 = sub_1D6FAA7D4;
    v16 = 0x80000001D73FA000;
    v13 = 0;
    v14 = 0;
    v15 = 0xD000000000000016;
    v18 = v30;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DE38](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D6FA8D1C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D6FA8EA0;
  }

  else
  {

    v2 = sub_1D6FA8E38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6FA8E38()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6FA8EA0()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D6FA8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v36 = a1;
  sub_1D6FAA840(0);
  v38 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v37 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725891C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 24);
  v35[1] = a3;
  v19 = [objc_allocWithZone(MEMORY[0x1E69B5638]) initWithConfiguration:v18 cloudContext:*(a3 + 16) feedDescriptor:a4 personalizer:*(a3 + 24)];
  [v19 setPurpose_];
  v20 = [*(a2 + 32) laterDate];
  if (v20)
  {
    v21 = v20;
    sub_1D72588BC();

    v22 = sub_1D725881C();
    (*(v14 + 8))(v17, v13);
    [v19 setTopOfFeedDate_];

    [v19 setFreeFeedRange_];
    [v19 setPaidFeedRange_];
    [v19 setMaxFetchCount_];
    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    v23 = sub_1D726265C();
    [v19 setPrecedingHeadlines_];

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = v37;
    v26 = v38;
    (*(v10 + 16))(v37, v36, v38);
    v27 = (*(v10 + 80) + 120) & ~*(v10 + 80);
    v28 = swift_allocObject();
    v29 = *(a2 + 48);
    *(v28 + 56) = *(a2 + 32);
    *(v28 + 72) = v29;
    v30 = *(a2 + 80);
    *(v28 + 88) = *(a2 + 64);
    *(v28 + 104) = v30;
    v31 = *(a2 + 16);
    *(v28 + 24) = *a2;
    *(v28 + 16) = v24;
    *(v28 + 40) = v31;
    (*(v10 + 32))(v28 + v27, v25, v26);
    v32 = (v28 + ((v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v40;
    *v32 = v39;
    v32[1] = v33;
    aBlock[4] = sub_1D6FAA8B8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D6FA9FB8;
    aBlock[3] = &block_descriptor_123;
    v34 = _Block_copy(aBlock);
    sub_1D6FAA7E4(a2, v41);

    [v19 setFetchCompletionHandler_];
    _Block_release(v34);
    sub_1D725AC4C();
    sub_1D725AC0C();
    if ([objc_opt_self() isMainThread])
    {
      sub_1D725AC2C();
    }

    else
    {
      [v19 start];
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1D6FA936C(unint64_t a1, void *a2, void *a3, char a4, void *a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t (*a9)(id), uint64_t *a10)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  if (!a1)
  {

LABEL_6:
    if (a5)
    {
      v16 = a5;
    }

    else
    {
      sub_1D6F05064();
      v16 = swift_allocError();
      *v17 = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = 2;
    }

    goto LABEL_9;
  }

  if (a5)
  {

    v16 = a5;
LABEL_9:
    v18 = *(a7 + 9);
    v19 = a5;
    v20 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7270C10;
    v22 = a7[3];
    v63 = a7[2];
    v64 = v22;
    v23 = a7[5];
    v65 = a7[4];
    v66 = v23;
    v24 = a7[1];
    v61 = *a7;
    v62 = v24;
    v25 = TagFeedHeadlineRequest.description.getter();
    v27 = v26;
    v28 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1D5B7E2C0();
    *(v21 + 64) = v29;
    *(v21 + 32) = v25;
    *(v21 + 40) = v27;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    *(v21 + 96) = v28;
    *(v21 + 104) = v29;
    *(v21 + 72) = 0;
    *(v21 + 80) = 0xE000000000000000;
    sub_1D725C30C("Tag feed headline service failed, request=%{public}@, error=%{public}@", 70, 2, &dword_1D5B42000, v18, v20, v21);

    *&v61 = v16;
    sub_1D6FAA840(0);
    sub_1D726286C();
    return result;
  }

  v31 = a7[3];
  v63 = a7[2];
  v64 = v31;
  v32 = a7[5];
  v65 = a7[4];
  v66 = v32;
  v33 = a7[1];
  v61 = *a7;
  v62 = v33;
  v34 = sub_1D6FA9798(&v61, a9, a10);
  v35 = a7[3];
  v63 = a7[2];
  v64 = v35;
  v36 = a7[5];
  v65 = a7[4];
  v66 = v36;
  v37 = a7[1];
  v61 = *a7;
  v62 = v37;
  v38 = sub_1D6FA9B08(&v61, a9, a10, a1);
  sub_1D5C384A0(0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D7274590;
  if (a1 >> 62)
  {
    v58 = v39;
    v40 = sub_1D7263BFC();
    v39 = v58;
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = MEMORY[0x1E69E6530];
  v42 = MEMORY[0x1E69E65A8];
  *(v39 + 56) = MEMORY[0x1E69E6530];
  *(v39 + 64) = v42;
  *(v39 + 32) = v40;
  if (v38 >> 62)
  {
    v59 = v39;
    v43 = sub_1D7263BFC();
    v39 = v59;
  }

  else
  {
    v43 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v39 + 96) = v41;
  *(v39 + 104) = v42;
  *(v39 + 72) = v43;
  if (v34 >> 62)
  {
    v60 = v39;
    v44 = sub_1D7263BFC();
    v39 = v60;
  }

  else
  {
    v44 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = *(a7 + 9);
  *(v39 + 136) = v41;
  *(v39 + 144) = v42;
  *(v39 + 112) = v44;
  v46 = a7[3];
  v63 = a7[2];
  v64 = v46;
  v47 = a7[5];
  v65 = a7[4];
  v66 = v47;
  v48 = a7[1];
  v61 = *a7;
  v62 = v48;
  v49 = v39;
  v50 = TagFeedHeadlineRequest.description.getter();
  v52 = v51;
  v49[22] = MEMORY[0x1E69E6158];
  v49[23] = sub_1D5B7E2C0();
  v49[19] = v50;
  v49[20] = v52;
  v53 = sub_1D7262EDC();
  sub_1D725C30C("Tag feed headline service fetched and filtered headlines from %ld to %ld with %ld evergreen feed items, request=%{public}@", 122, 2, &dword_1D5B42000, v45, v53, v49);

  *&v61 = v38;
  *(&v61 + 1) = v34;
  *&v62 = a2;
  *(&v62 + 1) = a3;
  LOBYTE(v63) = a4 & 1;
  sub_1D6FAA840(0);
  v54 = a2;
  v55 = a3;

  v56 = v54;
  v57 = v55;
  sub_1D726287C();

  return result;
}

uint64_t sub_1D6FA9798(void *a1, uint64_t (*a2)(id), uint64_t *a3)
{
  v5 = *a1;
  v6 = a1[3];
  v7 = a1[10];
  v8 = v3[4];
  if (*(a1 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v5 = [*a1 backingTag];
  }

  v9 = [v5 identifier];
  swift_unknownObjectRelease();
  if (!v9)
  {
    sub_1D726207C();
    v9 = sub_1D726203C();
  }

  v10 = [v8 allFeedItemsWithTopic_];

  sub_1D5B5A498(0, &qword_1EDF1AC10, 0x1E69B6E30);
  v11 = sub_1D726267C();

  v29 = MEMORY[0x1E69E7CC0];
  if (v11 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v25 = v7;
    v26 = v6;
    v27 = v3;
    v14 = 0;
    v7 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v15 = MEMORY[0x1DA6FB460](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v3 = a3;
      if (a2(v15))
      {
        sub_1D7263E9C();
        v6 = *(v29 + 16);
        sub_1D7263EDC();
        sub_1D7263EEC();
        v3 = &v29;
        sub_1D7263EAC();
      }

      else
      {
      }

      ++v14;
      if (v17 == i)
      {
        v18 = v29;
        v6 = v26;
        v3 = v27;
        v7 = v25;
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v19 = [objc_opt_self() transformationWithFilterOptions:v7 configuration:v6 context:v3[2]];
  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    sub_1D5B5534C(0, &qword_1EDF04430, &protocolRef_FCFeedTransformationItem);

    sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5534C(0, &qword_1EDF04430, &protocolRef_FCFeedTransformationItem);
  }

  sub_1D5B5534C(0, &qword_1EDF04430, &protocolRef_FCFeedTransformationItem);
  v20 = sub_1D726265C();

  v21 = [v19 transformFeedItems_];

  v22 = sub_1D726267C();
  v23 = sub_1D7150548(v22);

  if (v23)
  {
    return v23;
  }

  else
  {
    return v13;
  }
}

char *sub_1D6FA9B08(void *a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  v40 = a1[9];
  v39 = a1[10];
  v6 = a1[11];
  v7 = *(v4 + 16);
  if (v6 >> 62)
  {
LABEL_33:
    v8 = sub_1D7263BFC();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  v41 = v7;
  if (v8)
  {
    v42 = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v11 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6FB460](v11, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v11 + 32);
        swift_unknownObjectRetain();
      }

      v13 = [v12 identifier];
      v14 = sub_1D726207C();
      v16 = v15;
      swift_unknownObjectRelease();

      v18 = *(v42 + 16);
      v17 = *(v42 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D5BFC364((v17 > 1), v18 + 1, 1);
      }

      ++v11;
      *(v42 + 16) = v18 + 1;
      v19 = v42 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v8 != v11);
    v9 = MEMORY[0x1E69E7CC0];
  }

  v20 = objc_opt_self();
  v21 = sub_1D726265C();

  v5 = [v20 transformationWithFilterOptions:v39 | 2 configuration:v5 context:v41 otherArticleIDs:v21];

  v7 = sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
  v22 = sub_1D726265C();
  v23 = [v5 transformHeadlines_];

  v24 = sub_1D726267C();
  v43 = v9;
  if (v24 >> 62)
  {
    v25 = sub_1D7263BFC();
    if (v25)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_15:
      v37 = v5;
      v26 = 0;
      v39 = 1;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6FB460](v26, v24);
          v31 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            v36 = v43;
            v5 = v37;
            goto LABEL_36;
          }
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v7 = *(v24 + 8 * v26 + 32);
          swift_unknownObjectRetain();
          v31 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_30;
          }
        }

        if ([v7 isDeleted])
        {
          break;
        }

        if ([v7 isHiddenFromFeeds])
        {
          sub_1D5C384A0(0);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1D7273AE0;
          v5 = [v7 identifier];
          v6 = sub_1D726207C();
          v34 = v33;

          *(v32 + 56) = MEMORY[0x1E69E6158];
          *(v32 + 64) = sub_1D5B7E2C0();
          *(v32 + 32) = v6;
          *(v32 + 40) = v34;
          v35 = sub_1D7262EDC();
          sub_1D725C30C("Tag feed headline service dropped hidden from feeds headline, identifier=%{public}@", 83, 2, &dword_1D5B42000, v40, v35, v32);
          goto LABEL_17;
        }

        if (a2(v7))
        {
          sub_1D7263E9C();
          v5 = *(v43 + 16);
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          goto LABEL_19;
        }

LABEL_18:
        swift_unknownObjectRelease();
LABEL_19:
        ++v26;
        if (v31 == v25)
        {
          goto LABEL_31;
        }
      }

      sub_1D5C384A0(0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D7273AE0;
      v5 = [v7 identifier];
      v28 = sub_1D726207C();
      v6 = v29;

      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1D5B7E2C0();
      *(v27 + 32) = v28;
      *(v27 + 40) = v6;
      v30 = sub_1D7262EDC();
      sub_1D725C30C("Tag feed headline service dropped deleted headline, identifier=%{public}@", 73, 2, &dword_1D5B42000, v40, v30, v27);
LABEL_17:

      goto LABEL_18;
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_36:

  return v36;
}

double sub_1D6FA9FB8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    v10 = sub_1D726267C();
  }

  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(v10, a3, a4, a5, a6);

  return result;
}

uint64_t sub_1D6FAA0A0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = [a1 topics];
  if (v4)
  {
    v5 = v4;
    sub_1D5B5A498(0, &unk_1EDF04550, 0x1E69B6D00);
    v6 = sub_1D726267C();

    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v9 = 0;
      v63 = v7 + 32;
      v64 = v7 & 0xFFFFFFFFFFFFFF8;
      v67 = a3 + 56;
      v68 = v7 & 0xC000000000000001;
      v61 = a3;
      while (1)
      {
        if (v68)
        {
          v10 = MEMORY[0x1DA6FB460](v9, v7);
        }

        else
        {
          if (v9 >= *(v64 + 16))
          {
            goto LABEL_51;
          }

          v10 = *(v63 + 8 * v9);
        }

        v11 = v10;
        if (__OFADD__(v9++, 1))
        {
          break;
        }

        if (![v10 hasTagID])
        {
          goto LABEL_7;
        }

        v13 = i;
        v14 = v7;
        v15 = [v11 tagID];
        if (v15)
        {
          v16 = v15;
          v17 = sub_1D726207C();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = *a2;
        v65 = *(a2 + 16);
        if (v65 == 1)
        {
          swift_unknownObjectRetain();
          v21 = v20;
        }

        else
        {
          v21 = [v20 backingTag];
        }

        v22 = [v21 identifier];
        swift_unknownObjectRelease();
        a3 = sub_1D726207C();
        v24 = v23;

        if (!v19)
        {
          goto LABEL_5;
        }

        if (v17 == a3 && v19 == v24)
        {

          v7 = v14;
          i = v13;
        }

        else
        {
          a3 = sub_1D72646CC();

          v7 = v14;
          i = v13;
          if ((a3 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        if ([v11 isDisallowedFromGrouping])
        {

          sub_1D5C384A0(0);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1D7270C10;
          if (v65)
          {
            swift_unknownObjectRetain();
          }

          else
          {
            v20 = [v20 backingTag];
          }

          v48 = [v20 identifier];
          swift_unknownObjectRelease();
          v49 = sub_1D726207C();
          v51 = v50;

          v52 = MEMORY[0x1E69E6158];
          *(v47 + 56) = MEMORY[0x1E69E6158];
          v53 = sub_1D5B7E2C0();
          *(v47 + 64) = v53;
          *(v47 + 32) = v49;
          *(v47 + 40) = v51;
          v54 = [a1 articleID];
          if (v54)
          {
            v55 = v54;
            sub_1D726207C();
          }

          v56 = *(a2 + 72);
          sub_1D5B58D88();
          v57 = sub_1D72620FC();
          *(v47 + 96) = v52;
          *(v47 + 104) = v53;
          *(v47 + 72) = v57;
          *(v47 + 80) = v58;
          v59 = sub_1D7262EDC();
          sub_1D725C30C("Tag feed headline service dropped headline for tag %{public}@ as it is disallowed from grouping, identifier=%{public}@", 118, 2, &dword_1D5B42000, v56, v59, v47);
          goto LABEL_49;
        }

        v25 = [a1 publisherID];
        if (v25)
        {
          a3 = v25;
          v26 = sub_1D726207C();
          v28 = v27;

          if ([v11 hardFollowRequiredForGrouping])
          {
            if (!*(v61 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v29 = sub_1D7264A5C(), v30 = -1 << *(v61 + 32), a3 = v29 & ~v30, ((*(v67 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0))
            {
LABEL_37:

              sub_1D5C384A0(0);
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_1D7279970;
              if (v65)
              {
                swift_unknownObjectRetain();
              }

              else
              {
                v20 = [v20 backingTag];
              }

              v35 = [v20 identifier];
              swift_unknownObjectRelease();
              v36 = sub_1D726207C();
              v38 = v37;

              v39 = MEMORY[0x1E69E6158];
              *(v34 + 56) = MEMORY[0x1E69E6158];
              v40 = sub_1D5B7E2C0();
              *(v34 + 32) = v36;
              *(v34 + 40) = v38;
              *(v34 + 96) = v39;
              *(v34 + 104) = v40;
              *(v34 + 64) = v40;
              *(v34 + 72) = v26;
              *(v34 + 80) = v28;
              v41 = [a1 articleID];
              if (v41)
              {
                v42 = v41;
                sub_1D726207C();
              }

              v43 = *(a2 + 72);
              sub_1D5B58D88();
              v44 = sub_1D72620FC();
              *(v34 + 136) = v39;
              *(v34 + 144) = v40;
              *(v34 + 112) = v44;
              *(v34 + 120) = v45;
              v46 = sub_1D7262EDC();
              sub_1D725C30C("Tag feed headline service dropped headline for tag %{public}@ as it is disallowed from grouping unless followed and the user doesn't follow publisher %{public}@, identifier=%{public}@", 183, 2, &dword_1D5B42000, v43, v46, v34);
LABEL_49:

              return 0;
            }

            v31 = ~v30;
            while (1)
            {
              v32 = (*(v61 + 48) + 16 * a3);
              v33 = *v32 == v26 && v32[1] == v28;
              if (v33 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              a3 = (a3 + 1) & v31;
              if (((*(v67 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

LABEL_5:
            v7 = v14;
          }

          i = v13;
        }

LABEL_7:

        if (v9 == i)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

LABEL_53:
  }

  return 1;
}

uint64_t sub_1D6FAA6C8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FAA710(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D6FA8A0C(a1, a2);
}

void sub_1D6FAA7BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1D6FAA840(uint64_t a1)
{
  if (!qword_1EDF04908)
  {
    sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    v1 = sub_1D726288C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04908);
    }
  }
}

double sub_1D6FAA8B8(unint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  sub_1D6FAA840(0);
  v12 = (*(*(v11 - 8) + 80) + 120) & ~*(*(v11 - 8) + 80);
  v13 = v5 + ((*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D6FA936C(a1, a2, a3, a4, a5, *(v5 + 16), (v5 + 24), v5 + v12, *v13, *(v13 + 8));
}

id TagActivityItemsConfiguration.__allocating_init(tag:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return sub_1D6FAAF50(a1, v1, ObjectType);
}

id TagActivityItemsConfiguration.init(tag:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D6FAAF98(a1, v1);
}

id sub_1D6FAAB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  v10 = objc_allocWithZone(v5);
  a4(0, a2, a3);
  v11 = sub_1D726265C();

  v12 = [v10 *a5];

  return v12;
}

id sub_1D6FAABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  ObjectType = swift_getObjectType();
  a4(0, a2, a3);
  v11 = sub_1D726265C();

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, *a5, v11);

  return v12;
}

id TagActivityItemsConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D6FAACB4(uint64_t a1@<X0>, Class *a2@<X1>, SEL *a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_allocWithZone(type metadata accessor for TagImageShareAttributeProvider()) init];
  v9 = objc_allocWithZone(*a2);
  swift_unknownObjectRetain();
  v10 = [v9 *a3];
  swift_unknownObjectRelease();

  *a4 = v10;
}

uint64_t sub_1D6FAAD48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = [swift_unknownObjectRetain() nameForSharing];
  v9 = sub_1D726207C();
  v11 = v10;

  v12 = [a1 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  sub_1D5B5A498(0, &unk_1EC899130, off_1E84C8660);
  v13 = [objc_opt_self() nss:v12 NewsURLForTagID:?];

  sub_1D72584EC();
  v14 = sub_1D6FAB620(a1, v9, v11, v7);
  result = swift_unknownObjectRelease();
  *a2 = v14;
  return result;
}

void sub_1D6FAAECC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(type metadata accessor for TagImageShareAttributeProvider()) init];
  v5 = _s8NewsFeed30TagImageShareAttributeProviderC05shareD03forSo7UIImageCSo14FCTagProviding_p_tF_0(a1);

  v6 = [objc_allocWithZone(NETagLinkPresentationSource) initWithTag:a1 image:v5];
  *a2 = v6;
}

id sub_1D6FAAF50(uint64_t a1, Class a2, uint64_t a3)
{
  v4 = objc_allocWithZone(a2);

  return sub_1D6FAAF98(a1, v4);
}

id sub_1D6FAAF98(uint64_t a1, void *a2)
{
  sub_1D5E42B34();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D72816D0;
  v5 = type metadata accessor for SharingTagTextActivityItemSource();
  v6 = swift_unknownObjectRetain();
  *(v4 + 32) = sub_1D70566C4(v6, v5);
  v7 = type metadata accessor for SharingTagURLActivityItemSource();
  v8 = swift_unknownObjectRetain();
  v9 = sub_1D6FAB0CC(v8);
  swift_unknownObjectRelease();
  *(v4 + 40) = sub_1D69B989C(a1, v9, v7);
  sub_1D5B5534C(0, &unk_1EC88CA50, &protocolRef_UIActivityItemSource);
  v10 = sub_1D726265C();

  v11 = [a2 initNAWithActivityItemSources_];

  return v11;
}

uint64_t sub_1D6FAB0CC(void *a1)
{
  v2 = sub_1D725A93C();
  v4 = [a1 asSportsEvent];
  if (v4 || (v4 = [a1 asSports]) != 0 || (v4 = objc_msgSend(a1, sel_asPuzzleType)) != 0)
  {
    *(swift_allocObject() + 16) = v4;
    sub_1D5B64898(&qword_1EDF3BDB0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
    sub_1D5B5F3E0(0);
    sub_1D5B64898(&qword_1EDF1B5A0, sub_1D5B5F3E0, MEMORY[0x1E69E6328]);
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74(0);
    swift_allocObject();
    v5 = sub_1D725B7AC();
    swift_unknownObjectRelease();
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_1D5B64898(&qword_1EDF3BDB0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
    sub_1D5B5F3E0(0);
    sub_1D5B64898(&qword_1EDF1B5A0, sub_1D5B5F3E0, MEMORY[0x1E69E6328]);
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74(0);
    swift_allocObject();
    return sub_1D725B7AC();
  }

  return v5;
}

id sub_1D6FAB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1D726203C();

  v8 = sub_1D725844C();
  v9 = [v6 initWithTag:a1 title:v7 url:v8];

  v10 = sub_1D72585BC();
  (*(*(v10 - 8) + 8))(a4, v10);
  return v9;
}

uint64_t FormatImageNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6FAB7EC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B4BFC8(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v255 - v7;
  swift_beginAccess();
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[5];
  v277 = v2[4];
  swift_beginAccess();
  v278 = v2;
  v12 = v2[6];
  swift_beginAccess();
  v276 = a1;
  v13 = *(a1 + 48);
  v303 = MEMORY[0x1E69E7CC8];
  v14 = *(v12 + 16);
  if (__OFADD__(v14, *(v13 + 16)))
  {
    goto LABEL_106;
  }

  v284 = *(v13 + 16);
  v273 = v9;
  v274 = v4;
  v275 = v8;
  sub_1D6FAFA14(0);
  v272 = v10;

  sub_1D7261DAC();
  v285 = sub_1D698F4BC(0, v14, 0, MEMORY[0x1E69E7CC0]);
  v15 = *(v12 + 16);
  v271 = v11;
  v282 = v13;
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = 0;
  v17 = v12;
  v18 = v12 + 32;
  v19 = v15 - 1;
  while (1)
  {
    v20 = *v18;
    v361 = *(v18 + 16);
    v360 = v20;
    v21 = *(v18 + 32);
    v22 = *(v18 + 48);
    v23 = *(v18 + 64);
    v365 = *(v18 + 80);
    v364 = v23;
    v363 = v22;
    v362 = v21;
    v24 = *(v18 + 96);
    v25 = *(v18 + 112);
    v26 = *(v18 + 128);
    v369 = *(v18 + 144);
    v368 = v26;
    v367 = v25;
    v366 = v24;
    v27 = *(v18 + 160);
    v28 = *(v18 + 176);
    v29 = *(v18 + 192);
    v373 = *(v18 + 208);
    v372 = v29;
    v371 = v28;
    v370 = v27;
    v30 = v360;
    sub_1D5D0B0E4(&v360, &v346);
    sub_1D5D0B0E4(&v360, &v346);
    v31 = v303;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v332 = v31;
    v33 = sub_1D6D8CB60();
    v35 = v31[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      __break(1u);
LABEL_98:
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
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v39 = v34;
    if (v31[3] < v38)
    {
      sub_1D6D7161C(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_1D6D8CB60();
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_107;
      }

LABEL_9:
      if (v39)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v63 = v33;
    sub_1D6D84230();
    v33 = v63;
    if (v39)
    {
LABEL_10:
      v41 = v332;
      v42 = *(v332 + 56) + 216 * v33;
      v43 = *(v42 + 16);
      v346 = *v42;
      v347 = v43;
      v44 = *(v42 + 64);
      v46 = *(v42 + 32);
      v45 = *(v42 + 48);
      v351 = *(v42 + 80);
      v350 = v44;
      v348 = v46;
      v349 = v45;
      v47 = *(v42 + 128);
      v49 = *(v42 + 96);
      v48 = *(v42 + 112);
      v355 = *(v42 + 144);
      v354 = v47;
      v352 = v49;
      v353 = v48;
      v51 = *(v42 + 176);
      v50 = *(v42 + 192);
      v52 = *(v42 + 160);
      v359 = *(v42 + 208);
      v358 = v50;
      v356 = v52;
      v357 = v51;
      v53 = v361;
      *v42 = v360;
      *(v42 + 16) = v53;
      v54 = v362;
      v55 = v363;
      v56 = v365;
      *(v42 + 64) = v364;
      *(v42 + 80) = v56;
      *(v42 + 32) = v54;
      *(v42 + 48) = v55;
      v57 = v366;
      v58 = v367;
      v59 = v369;
      *(v42 + 128) = v368;
      *(v42 + 144) = v59;
      *(v42 + 96) = v57;
      *(v42 + 112) = v58;
      v60 = v370;
      v61 = v371;
      v62 = v372;
      *(v42 + 208) = v373;
      *(v42 + 176) = v61;
      *(v42 + 192) = v62;
      *(v42 + 160) = v60;
      sub_1D5D0B1AC(&v346);
      goto LABEL_14;
    }

LABEL_12:
    v41 = v332;
    *(v332 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    *(v41[6] + 16 * v33) = v30;
    v64 = v41[7] + 216 * v33;
    v65 = v373;
    v66 = v372;
    v67 = v371;
    *(v64 + 160) = v370;
    *(v64 + 176) = v67;
    *(v64 + 192) = v66;
    *(v64 + 208) = v65;
    v68 = v369;
    v69 = v368;
    v70 = v367;
    *(v64 + 96) = v366;
    *(v64 + 112) = v70;
    *(v64 + 128) = v69;
    *(v64 + 144) = v68;
    v71 = v365;
    v72 = v364;
    v73 = v363;
    *(v64 + 32) = v362;
    *(v64 + 48) = v73;
    *(v64 + 64) = v72;
    *(v64 + 80) = v71;
    v74 = v361;
    *v64 = v360;
    *(v64 + 16) = v74;
    v75 = v41[2];
    v37 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v37)
    {
      goto LABEL_102;
    }

    v41[2] = v76;

LABEL_14:
    v303 = v41;

    sub_1D5D0B1AC(&v360);
    v78 = *(v285 + 2);
    v77 = *(v285 + 3);
    if (v78 >= v77 >> 1)
    {
      v285 = sub_1D698F4BC((v77 > 1), v78 + 1, 1, v285);
    }

    v79 = v285;
    *(v285 + 2) = v78 + 1;
    *&v79[16 * v78 + 32] = v30;
    if (v19 == v16)
    {
      break;
    }

    ++v16;
    v18 += 216;
    if (v16 >= *(v17 + 16))
    {
      goto LABEL_98;
    }
  }

  v12 = v17;
  v13 = v282;
LABEL_20:
  v284 = sub_1D698F4BC(0, v284, 0, MEMORY[0x1E69E7CC0]);
  v80 = *(v13 + 16);
  if (!v80)
  {
    goto LABEL_53;
  }

  v281 = v12;
  v81 = 0;
  v283 = (v80 - 1);
  v82 = 32;
  while (2)
  {
    v83 = *(v13 + v82);
    v361 = *(v13 + v82 + 16);
    v360 = v83;
    v84 = *(v13 + v82 + 32);
    v85 = *(v13 + v82 + 48);
    v86 = *(v13 + v82 + 64);
    v365 = *(v13 + v82 + 80);
    v364 = v86;
    v363 = v85;
    v362 = v84;
    v87 = *(v13 + v82 + 96);
    v88 = *(v13 + v82 + 112);
    v89 = *(v13 + v82 + 128);
    v369 = *(v13 + v82 + 144);
    v368 = v89;
    v367 = v88;
    v366 = v87;
    v90 = *(v13 + v82 + 160);
    v91 = *(v13 + v82 + 176);
    v92 = *(v13 + v82 + 192);
    v373 = *(v13 + v82 + 208);
    v372 = v92;
    v371 = v91;
    v370 = v90;
    v356 = *(v13 + v82 + 160);
    v357 = *(v13 + v82 + 176);
    v358 = *(v13 + v82 + 192);
    v359 = *(v13 + v82 + 208);
    v352 = *(v13 + v82 + 96);
    v353 = *(v13 + v82 + 112);
    v354 = *(v13 + v82 + 128);
    v355 = *(v13 + v82 + 144);
    v348 = *(v13 + v82 + 32);
    v349 = *(v13 + v82 + 48);
    v350 = *(v13 + v82 + 64);
    v351 = *(v13 + v82 + 80);
    v346 = *(v13 + v82);
    v347 = *(v13 + v82 + 16);
    v93 = v303;
    if (!v303[2])
    {
      sub_1D5D0B0E4(&v360, &v318);
      v94 = *(&v346 + 1);
      v95 = v346;
LABEL_30:
      v328 = v356;
      v329 = v357;
      v330 = v358;
      v331 = v359;
      v324 = v352;
      v325 = v353;
      v326 = v354;
      v327 = v355;
      v320 = v348;
      v321 = v349;
      v322 = v350;
      v323 = v351;
      v318 = v346;
      v319 = v347;
      sub_1D5D0B0E4(&v318, &v304);
      v119 = swift_isUniquelyReferenced_nonNull_native();
      *&v288 = v93;
      v120 = sub_1D6D8CB60();
      v122 = v93[2];
      v123 = (v121 & 1) == 0;
      v37 = __OFADD__(v122, v123);
      v124 = v122 + v123;
      if (v37)
      {
        goto LABEL_101;
      }

      v125 = v121;
      if (v93[3] >= v124)
      {
        if ((v119 & 1) == 0)
        {
          v161 = v120;
          sub_1D6D84230();
          v120 = v161;
          if (v125)
          {
            goto LABEL_36;
          }

          goto LABEL_41;
        }
      }

      else
      {
        sub_1D6D7161C(v124, v119);
        v120 = sub_1D6D8CB60();
        if ((v125 & 1) != (v126 & 1))
        {
          goto LABEL_107;
        }
      }

      if (v125)
      {
LABEL_36:
        v127 = v288;
        v128 = *(v288 + 56) + 216 * v120;
        v129 = *(v128 + 16);
        v304 = *v128;
        v305 = v129;
        v130 = *(v128 + 80);
        v132 = *(v128 + 32);
        v131 = *(v128 + 48);
        v308 = *(v128 + 64);
        v309 = v130;
        v306 = v132;
        v307 = v131;
        v133 = *(v128 + 144);
        v135 = *(v128 + 96);
        v134 = *(v128 + 112);
        v312 = *(v128 + 128);
        v313 = v133;
        v310 = v135;
        v311 = v134;
        v137 = *(v128 + 176);
        v136 = *(v128 + 192);
        v138 = *(v128 + 160);
        v317 = *(v128 + 208);
        v315 = v137;
        v316 = v136;
        v314 = v138;
        v139 = v319;
        *v128 = v318;
        *(v128 + 16) = v139;
        v140 = v320;
        v141 = v321;
        v142 = v323;
        *(v128 + 64) = v322;
        *(v128 + 80) = v142;
        *(v128 + 32) = v140;
        *(v128 + 48) = v141;
        v143 = v324;
        v144 = v325;
        v145 = v327;
        *(v128 + 128) = v326;
        *(v128 + 144) = v145;
        *(v128 + 96) = v143;
        *(v128 + 112) = v144;
        v146 = v328;
        v147 = v329;
        v148 = v330;
        *(v128 + 208) = v331;
        *(v128 + 176) = v147;
        *(v128 + 192) = v148;
        *(v128 + 160) = v146;
        sub_1D5D0B1AC(&v304);
LABEL_43:
        v303 = v127;
        v176 = *(v284 + 2);
        v177 = *(v284 + 3);

        if (v176 >= v177 >> 1)
        {
          v284 = sub_1D698F4BC((v177 > 1), v176 + 1, 1, v284);
        }

        v314 = v356;
        v315 = v357;
        v316 = v358;
        v317 = v359;
        v310 = v352;
        v311 = v353;
        v312 = v354;
        v313 = v355;
        v306 = v348;
        v307 = v349;
        v308 = v350;
        v309 = v351;
        v304 = v346;
        v305 = v347;
        sub_1D5D0B1AC(&v304);
        v178 = v284;
        *(v284 + 2) = v176 + 1;
        v179 = &v178[16 * v176];
        *(v179 + 4) = v95;
        *(v179 + 5) = v94;
        goto LABEL_50;
      }

LABEL_41:
      v127 = v288;
      *(v288 + 8 * (v120 >> 6) + 64) |= 1 << v120;
      v162 = (v127[6] + 16 * v120);
      *v162 = v95;
      v162[1] = v94;
      v163 = v127[7] + 216 * v120;
      v164 = v331;
      v165 = v330;
      v166 = v329;
      *(v163 + 160) = v328;
      *(v163 + 176) = v166;
      *(v163 + 192) = v165;
      *(v163 + 208) = v164;
      v167 = v327;
      v168 = v326;
      v169 = v325;
      *(v163 + 96) = v324;
      *(v163 + 112) = v169;
      *(v163 + 128) = v168;
      *(v163 + 144) = v167;
      v170 = v323;
      v171 = v322;
      v172 = v321;
      *(v163 + 32) = v320;
      *(v163 + 48) = v172;
      *(v163 + 64) = v171;
      *(v163 + 80) = v170;
      v173 = v319;
      *v163 = v318;
      *(v163 + 16) = v173;
      v174 = v127[2];
      v37 = __OFADD__(v174, 1);
      v175 = v174 + 1;
      if (v37)
      {
        goto LABEL_103;
      }

      v127[2] = v175;

      goto LABEL_43;
    }

    v94 = *(&v346 + 1);
    v95 = v346;
    sub_1D5D0B0E4(&v360, &v318);
    v96 = sub_1D6D8CB60();
    if ((v97 & 1) == 0)
    {
      goto LABEL_30;
    }

    v98 = v93[7] + 216 * v96;
    v99 = *(v98 + 16);
    v304 = *v98;
    v305 = v99;
    v100 = *(v98 + 80);
    v102 = *(v98 + 32);
    v101 = *(v98 + 48);
    v308 = *(v98 + 64);
    v309 = v100;
    v306 = v102;
    v307 = v101;
    v103 = *(v98 + 96);
    v104 = *(v98 + 112);
    v105 = *(v98 + 144);
    v312 = *(v98 + 128);
    v313 = v105;
    v310 = v103;
    v311 = v104;
    v106 = *(v98 + 160);
    v107 = *(v98 + 176);
    v108 = *(v98 + 192);
    v317 = *(v98 + 208);
    v315 = v107;
    v316 = v108;
    v314 = v106;
    v342 = *(v98 + 160);
    v343 = *(v98 + 176);
    v344 = *(v98 + 192);
    v345 = *(v98 + 208);
    v338 = *(v98 + 96);
    v339 = *(v98 + 112);
    v340 = *(v98 + 128);
    v341 = *(v98 + 144);
    v334 = *(v98 + 32);
    v335 = *(v98 + 48);
    v336 = *(v98 + 64);
    v337 = *(v98 + 80);
    v332 = *v98;
    v333 = *(v98 + 16);
    v109 = v332;
    sub_1D6FAE41C(&v346, &v318);
    sub_1D5D0B0E4(&v304, &v288);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v302 = v93;
    v112 = sub_1D6D8CB60();
    v113 = v93[2];
    v114 = (v111 & 1) == 0;
    v115 = v113 + v114;
    if (__OFADD__(v113, v114))
    {
      goto LABEL_104;
    }

    v116 = v111;
    if (v93[3] >= v115)
    {
      if (v110)
      {
        if ((v111 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_1D6D84230();
        if ((v116 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_39;
    }

    sub_1D6D7161C(v115, v110);
    v117 = sub_1D6D8CB60();
    if ((v116 & 1) != (v118 & 1))
    {
      goto LABEL_107;
    }

    v112 = v117;
    if (v116)
    {
LABEL_39:
      v149 = v302;
      v150 = v302[7] + 216 * v112;
      v151 = *(v150 + 16);
      v288 = *v150;
      v289 = v151;
      v152 = *(v150 + 80);
      v154 = *(v150 + 32);
      v153 = *(v150 + 48);
      v292 = *(v150 + 64);
      v293 = v152;
      v290 = v154;
      v291 = v153;
      v155 = *(v150 + 144);
      v157 = *(v150 + 96);
      v156 = *(v150 + 112);
      v296 = *(v150 + 128);
      v297 = v155;
      v294 = v157;
      v295 = v156;
      v159 = *(v150 + 176);
      v158 = *(v150 + 192);
      v160 = *(v150 + 160);
      v301 = *(v150 + 208);
      v299 = v159;
      v300 = v158;
      v298 = v160;
      *(v150 + 160) = v328;
      *(v150 + 176) = v329;
      *(v150 + 192) = v330;
      *(v150 + 208) = v331;
      *(v150 + 96) = v324;
      *(v150 + 112) = v325;
      *(v150 + 128) = v326;
      *(v150 + 144) = v327;
      *(v150 + 32) = v320;
      *(v150 + 48) = v321;
      *(v150 + 64) = v322;
      *(v150 + 80) = v323;
      *v150 = v318;
      *(v150 + 16) = v319;
      sub_1D5D0B1AC(&v288);
      goto LABEL_49;
    }

LABEL_47:
    v149 = v302;
    v302[(v112 >> 6) + 8] |= 1 << v112;
    *(v149[6] + 16 * v112) = v109;
    v180 = v149[7] + 216 * v112;
    *v180 = v318;
    *(v180 + 16) = v319;
    *(v180 + 80) = v323;
    *(v180 + 64) = v322;
    *(v180 + 48) = v321;
    *(v180 + 32) = v320;
    *(v180 + 144) = v327;
    *(v180 + 128) = v326;
    *(v180 + 112) = v325;
    *(v180 + 96) = v324;
    *(v180 + 208) = v331;
    *(v180 + 192) = v330;
    *(v180 + 176) = v329;
    *(v180 + 160) = v328;
    v181 = v149[2];
    v37 = __OFADD__(v181, 1);
    v182 = v181 + 1;
    if (v37)
    {
      goto LABEL_105;
    }

    v149[2] = v182;

LABEL_49:
    v286[10] = v342;
    v286[11] = v343;
    v286[12] = v344;
    v287 = v345;
    v286[6] = v338;
    v286[7] = v339;
    v286[8] = v340;
    v286[9] = v341;
    v286[2] = v334;
    v286[3] = v335;
    v286[4] = v336;
    v286[5] = v337;
    v286[0] = v332;
    v286[1] = v333;
    sub_1D5D0B1AC(v286);
    v298 = v356;
    v299 = v357;
    v300 = v358;
    v301 = v359;
    v294 = v352;
    v295 = v353;
    v296 = v354;
    v297 = v355;
    v290 = v348;
    v291 = v349;
    v292 = v350;
    v293 = v351;
    v288 = v346;
    v289 = v347;
    sub_1D5D0B1AC(&v288);
    v303 = v149;
    v13 = v282;
LABEL_50:
    if (v283 == v81)
    {
      goto LABEL_53;
    }

    ++v81;
    v82 += 216;
    if (v81 < *(v13 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_53:

  *&v360 = v284;

  sub_1D6985DAC(v183);
  v184 = v360;
  v185 = *(v360 + 16);
  if (v185)
  {
    v186 = 0;
    v283 = MEMORY[0x1E69E7CC0];
LABEL_55:
    v187 = v303;
    v188 = v184 + 40 + 16 * v186;
    v189 = v186;
    while (v189 < v185)
    {
      v186 = v189 + 1;
      if (__OFADD__(v189, 1))
      {
        goto LABEL_100;
      }

      if (v187[2])
      {

        v190 = sub_1D6D8CB60();
        if (v191)
        {
          v192 = v187[7] + 216 * v190;
          v193 = *(v192 + 16);
          v360 = *v192;
          v361 = v193;
          v194 = *(v192 + 64);
          v196 = *(v192 + 32);
          v195 = *(v192 + 48);
          v365 = *(v192 + 80);
          v364 = v194;
          v362 = v196;
          v363 = v195;
          v197 = *(v192 + 96);
          v198 = *(v192 + 112);
          v199 = *(v192 + 128);
          v369 = *(v192 + 144);
          v368 = v199;
          v367 = v198;
          v366 = v197;
          v200 = *(v192 + 160);
          v201 = *(v192 + 176);
          v202 = *(v192 + 192);
          v373 = *(v192 + 208);
          v372 = v202;
          v371 = v201;
          v370 = v200;
          sub_1D5D0B0E4(&v360, &v346);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v283 = sub_1D698D3B0(0, *(v283 + 2) + 1, 1, v283);
          }

          v204 = *(v283 + 2);
          v203 = *(v283 + 3);
          if (v204 >= v203 >> 1)
          {
            v283 = sub_1D698D3B0((v203 > 1), v204 + 1, 1, v283);
          }

          v205 = v283;
          *(v283 + 2) = v204 + 1;
          v206 = &v205[216 * v204];
          v207 = v361;
          *(v206 + 2) = v360;
          *(v206 + 3) = v207;
          v208 = v362;
          v209 = v363;
          v210 = v365;
          *(v206 + 6) = v364;
          *(v206 + 7) = v210;
          *(v206 + 4) = v208;
          *(v206 + 5) = v209;
          v211 = v366;
          v212 = v367;
          v213 = v369;
          *(v206 + 10) = v368;
          *(v206 + 11) = v213;
          *(v206 + 8) = v211;
          *(v206 + 9) = v212;
          v214 = v370;
          v215 = v371;
          v216 = v372;
          *(v206 + 30) = v373;
          *(v206 + 13) = v215;
          *(v206 + 14) = v216;
          *(v206 + 12) = v214;
          if (v186 != v185)
          {
            goto LABEL_55;
          }

          goto LABEL_69;
        }
      }

      ++v189;
      v188 += 16;
      if (v186 == v185)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_99;
  }

  v283 = MEMORY[0x1E69E7CC0];
LABEL_69:

  v217 = v278;
  v218 = v278[7];
  v219 = v218;
  v220 = v276;
  if (!v218)
  {
    v219 = *(v276 + 56);
  }

  swift_beginAccess();
  v221 = v217[8];
  v280 = v221;
  if (!v221)
  {
    swift_beginAccess();
    v280 = *(v220 + 64);
  }

  v222 = v217[9];
  v223 = v222;
  if ((~v222 & 0xF000000000000007) == 0)
  {
    v223 = *(v220 + 72);
    sub_1D5D04BD4(v223);
  }

  v263 = v217[10];
  v224 = v263;
  if (!v263)
  {
    v224 = *(v220 + 80);
  }

  v225 = *(v217 + 88);
  if (v225 == 9)
  {
    v225 = *(v220 + 88);
  }

  v226 = v217[12];
  v227 = *(v217 + 112);
  v261 = v217[13];
  v262 = v226;
  v284 = v261;
  v285 = v226;
  LODWORD(v282) = v227;
  v260 = v227;
  if (v227 >= 0xFE)
  {
    v228 = *(v220 + 96);
    v229 = *(v220 + 112);
    v284 = *(v220 + 104);
    v285 = v228;
    LODWORD(v282) = v229;
    sub_1D5ED34B0(v228, v284, v229);
  }

  v281 = v217[15];
  v258 = v281;
  if (v281 == 3)
  {
    v281 = *(v220 + 120);
    sub_1D5D0AF9C(v281);
  }

  v230 = *(v217 + 128);
  if (v230 == 4)
  {
    v230 = *(v220 + 128);
  }

  v259 = v230;
  swift_beginAccess();
  v279 = v217[17];
  v257 = v279;
  if (!v279)
  {
    swift_beginAccess();
    v279 = *(v220 + 136);
  }

  LOBYTE(v365) = *(v217 + 224);
  v231 = *(v217 + 12);
  v362 = *(v217 + 11);
  v363 = v231;
  v364 = *(v217 + 13);
  v232 = *(v217 + 10);
  v360 = *(v217 + 9);
  v361 = v232;
  v269 = v223;
  v270 = v218;
  v267 = v219;
  v268 = v224;
  v266 = v221;
  v265 = v225;
  v264 = v222;
  if (v365 == 254)
  {
    v233 = *(v220 + 192);
    v334 = *(v220 + 176);
    v335 = v233;
    v336 = *(v220 + 208);
    LOBYTE(v337) = *(v220 + 224);
    v234 = *(v220 + 160);
    v332 = *(v220 + 144);
    v333 = v234;
    sub_1D6FAFAD4(&v332, &v346, sub_1D615C3A4);
    v348 = v334;
    v349 = v335;
    v350 = v336;
    LOBYTE(v351) = v337;
    v235 = v332;
    v236 = v333;
  }

  else
  {
    v237 = *(v217 + 12);
    v348 = *(v217 + 11);
    v349 = v237;
    v350 = *(v217 + 13);
    LOBYTE(v351) = *(v217 + 224);
    v235 = *(v217 + 9);
    v236 = *(v217 + 10);
  }

  v346 = v235;
  v347 = v236;
  v238 = v217[29];
  v239 = v238;
  if ((~v238 & 0xF000000000000007) == 0)
  {
    v239 = *(v220 + 232);
    sub_1D5CFCFAC(v239);
  }

  v256 = v239;
  v240 = *(v217 + 240);
  if (v240 == 2)
  {
    LOBYTE(v240) = *(v220 + 240);
  }

  v241 = v217[31];
  v242 = v241;
  v243 = v217[32];
  if (v241 == 1)
  {
    v242 = *(v220 + 248);
    v243 = *(v220 + 256);
    sub_1D62B5D88(v242);
  }

  v255 = v243;
  v276 = v242;
  v244 = v275;
  sub_1D6FADCB0(v217 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, v275, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B4BFC8);
  v245 = swift_allocObject();
  *(v245 + 64) = 0;
  *(v245 + 136) = 0;
  swift_beginAccess();
  v246 = v272;
  *(v245 + 16) = v273;
  *(v245 + 24) = v246;
  v247 = v271;
  *(v245 + 32) = v277;
  *(v245 + 40) = v247;
  swift_beginAccess();
  v248 = v267;
  *(v245 + 48) = v283;
  *(v245 + 56) = v248;
  swift_beginAccess();

  sub_1D5D04BD4(v264);

  sub_1D5ED34B0(v262, v261, v260);
  sub_1D5D0AF9C(v258);

  sub_1D6FAFAD4(&v360, &v332, sub_1D615C3A4);
  sub_1D5CFCFAC(v238);
  sub_1D62B5D88(v241);
  *(v245 + 64) = v280;

  v249 = v268;
  *(v245 + 72) = v269;
  *(v245 + 80) = v249;
  *(v245 + 88) = v265;
  v250 = v284;
  *(v245 + 96) = v285;
  *(v245 + 104) = v250;
  *(v245 + 112) = v282;
  *(v245 + 120) = v281;
  *(v245 + 128) = v259;
  swift_beginAccess();
  *(v245 + 136) = v279;

  v251 = v349;
  *(v245 + 176) = v348;
  *(v245 + 192) = v251;
  *(v245 + 208) = v350;
  *(v245 + 224) = v351;
  v252 = v347;
  *(v245 + 144) = v346;
  *(v245 + 160) = v252;
  *(v245 + 232) = v256;
  *(v245 + 240) = v240;
  v253 = v255;
  *(v245 + 248) = v276;
  *(v245 + 256) = v253;
  sub_1D5FC55FC(v244, v245 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask);
  return v245;
}

void sub_1D6FACC10(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698D3B0(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v98 = sub_1D698D240(0, v5, 0, v6);
  v102 = *(v4 + 16);
  if (v102)
  {
    v8 = 0;
    v100 = v2;
    v101 = v4 + 32;
    v99 = v4;
    while (1)
    {
      v9 = v7;
      v10 = v101 + 216 * v8;
      v11 = *(v10 + 16);
      v118 = *v10;
      v119 = v11;
      v12 = *(v10 + 32);
      v13 = *(v10 + 48);
      v14 = *(v10 + 80);
      v122 = *(v10 + 64);
      v123 = v14;
      v120 = v12;
      v121 = v13;
      v15 = *(v10 + 96);
      v16 = *(v10 + 112);
      v17 = *(v10 + 144);
      v126 = *(v10 + 128);
      v127 = v17;
      v124 = v15;
      v125 = v16;
      v18 = *(v10 + 160);
      v19 = *(v10 + 176);
      v20 = *(v10 + 192);
      *&v131 = *(v10 + 208);
      v129 = v19;
      v130 = v20;
      v128 = v18;
      v21 = v118;
      sub_1D5D0B0E4(&v118, &v104);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v104 = v21;

      v22 = sub_1D6844380(&v104);

      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = 0;
        v25 = 32;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v27 = *(v22 + v25 + 16);
          v26 = *(v22 + v25 + 32);
          v28 = *(v22 + v25);
          v133 = *(v22 + v25 + 48);
          v132[1] = v27;
          v132[2] = v26;
          v132[0] = v28;
          v29 = v27;
          sub_1D5E3B610(v132, &v104);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v24;
          sub_1D5E3B66C(v132);
          v25 += 56;
          if (v23 == v24)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v132);
        if (v29 <= 1)
        {
          v7 = v9;
          v45 = *(v9 + 2);
          v44 = *(v9 + 3);
          v2 = v100;
          if (v45 >= v44 >> 1)
          {
            v7 = sub_1D698D3B0((v44 > 1), v45 + 1, 1, v9);
          }

          v30 = v99;
          *(v7 + 2) = v45 + 1;
          v46 = &v7[216 * v45];
          v47 = v119;
          *(v46 + 2) = v118;
          *(v46 + 3) = v47;
          v48 = v120;
          v49 = v121;
          v50 = v123;
          *(v46 + 6) = v122;
          *(v46 + 7) = v50;
          *(v46 + 4) = v48;
          *(v46 + 5) = v49;
          v51 = v124;
          v52 = v125;
          v53 = v127;
          *(v46 + 10) = v126;
          *(v46 + 11) = v53;
          *(v46 + 8) = v51;
          *(v46 + 9) = v52;
          v54 = v128;
          v55 = v129;
          v56 = v130;
          *(v46 + 30) = v131;
          *(v46 + 13) = v55;
          *(v46 + 14) = v56;
          *(v46 + 12) = v54;
        }

        else
        {
          v114 = v128;
          v115 = v129;
          v116 = v130;
          v117 = v131;
          v110 = v124;
          v111 = v125;
          v112 = v126;
          v113 = v127;
          v106 = v120;
          v107 = v121;
          v108 = v122;
          v109 = v123;
          v104 = v118;
          v105 = v119;
          sub_1D5D0B0E4(&v118, v103);
          v32 = v98[2];
          v31 = v98[3];
          v2 = v100;
          v7 = v9;
          if (v32 >= v31 >> 1)
          {
            v98 = sub_1D698D240((v31 > 1), v32 + 1, 1, v98);
          }

          v30 = v99;
          sub_1D5D0B1AC(&v118);
          v98[2] = v32 + 1;
          v33 = &v98[28 * v32];
          v34 = v105;
          *(v33 + 2) = v104;
          *(v33 + 3) = v34;
          v35 = v106;
          v36 = v107;
          v37 = v109;
          *(v33 + 6) = v108;
          *(v33 + 7) = v37;
          *(v33 + 4) = v35;
          *(v33 + 5) = v36;
          v38 = v110;
          v39 = v111;
          v40 = v113;
          *(v33 + 10) = v112;
          *(v33 + 11) = v40;
          *(v33 + 8) = v38;
          *(v33 + 9) = v39;
          v41 = v114;
          v42 = v116;
          v43 = v117;
          *(v33 + 13) = v115;
          *(v33 + 14) = v42;
          *(v33 + 12) = v41;
          v33[30] = v43;
          v33[31] = v29;
        }
      }

      else
      {
LABEL_10:
        sub_1D5D0B1AC(&v118);

        v7 = v9;
        v30 = v99;
        v2 = v100;
      }

      if (++v8 == v102)
      {
        break;
      }

      if (v8 >= *(v30 + 16))
      {
        goto LABEL_34;
      }
    }
  }

  sub_1D6FAFA78(0);
  v57 = sub_1D72626AC();

  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = v58 - 1;
    for (i = 32; ; i += 224)
    {
      v61 = *(v57 + i + 16);
      v118 = *(v57 + i);
      v119 = v61;
      v62 = *(v57 + i + 32);
      v63 = *(v57 + i + 48);
      v64 = *(v57 + i + 80);
      v122 = *(v57 + i + 64);
      v123 = v64;
      v120 = v62;
      v121 = v63;
      v65 = *(v57 + i + 96);
      v66 = *(v57 + i + 112);
      v67 = *(v57 + i + 144);
      v126 = *(v57 + i + 128);
      v127 = v67;
      v124 = v65;
      v125 = v66;
      v68 = *(v57 + i + 160);
      v69 = *(v57 + i + 176);
      v70 = *(v57 + i + 208);
      v130 = *(v57 + i + 192);
      v131 = v70;
      v128 = v68;
      v129 = v69;
      sub_1D6FAFAD4(&v118, &v104, sub_1D6FAFA78);
      v72 = *(v7 + 2);
      v71 = *(v7 + 3);
      if (v72 >= v71 >> 1)
      {
        v7 = sub_1D698D3B0((v71 > 1), v72 + 1, 1, v7);
      }

      *(v7 + 2) = v72 + 1;
      v73 = &v7[216 * v72];
      v74 = v119;
      *(v73 + 2) = v118;
      *(v73 + 3) = v74;
      v75 = v120;
      v76 = v121;
      v77 = v123;
      *(v73 + 6) = v122;
      *(v73 + 7) = v77;
      *(v73 + 4) = v75;
      *(v73 + 5) = v76;
      v78 = v124;
      v79 = v125;
      v80 = v127;
      *(v73 + 10) = v126;
      *(v73 + 11) = v80;
      *(v73 + 8) = v78;
      *(v73 + 9) = v79;
      v81 = v128;
      v82 = v129;
      v83 = v130;
      *(v73 + 30) = v131;
      *(v73 + 13) = v82;
      *(v73 + 14) = v83;
      *(v73 + 12) = v81;
      if (!v59)
      {
        break;
      }

      --v59;
    }
  }

  v84 = *(v7 + 2);

  if (v84)
  {
    v85 = 0;
    v86 = v7 + 32;
    while (v85 < *(v7 + 2))
    {
      v87 = *(v86 + 1);
      v118 = *v86;
      v119 = v87;
      v88 = *(v86 + 2);
      v89 = *(v86 + 3);
      v90 = *(v86 + 5);
      v122 = *(v86 + 4);
      v123 = v90;
      v120 = v88;
      v121 = v89;
      v91 = *(v86 + 6);
      v92 = *(v86 + 7);
      v93 = *(v86 + 9);
      v126 = *(v86 + 8);
      v127 = v93;
      v124 = v91;
      v125 = v92;
      v94 = *(v86 + 10);
      v95 = *(v86 + 11);
      v96 = *(v86 + 12);
      *&v131 = *(v86 + 26);
      v129 = v95;
      v130 = v96;
      v128 = v94;
      ++v85;
      v114 = v94;
      v115 = v95;
      v116 = v96;
      v117 = v131;
      v110 = v124;
      v111 = v125;
      v112 = v126;
      v113 = v93;
      v106 = v120;
      v107 = v121;
      v108 = v122;
      v109 = v123;
      v104 = v118;
      v105 = v119;
      swift_allocObject();
      sub_1D5D0B0E4(&v118, v103);
      v97 = sub_1D6FAFB3C(v2, &v104);

      v86 += 216;
      v2 = v97;
      if (v84 == v85)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_31:
  }
}