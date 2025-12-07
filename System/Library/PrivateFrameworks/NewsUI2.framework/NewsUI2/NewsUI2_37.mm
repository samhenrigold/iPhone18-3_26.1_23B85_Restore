void sub_218ADFB44()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  sub_219BE8664();
  v19 = sub_219BE7BC4();

  [v19 setShowsHorizontalScrollIndicator_];

  sub_219BE9BB4();
  v20 = v2;
  v21 = sub_219BE9BA4();
  if (!v21)
  {
LABEL_8:
    v26 = [v1 traitCollection];
    sub_218AE1884();

    return;
  }

  v22 = v21;
  v23 = [v1 view];
  if (v23)
  {
    v24 = v23;
    [v23 addSubview_];

    v25 = *&v1[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintHorizontalShimView];
    *&v1[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintHorizontalShimView] = v22;

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
}

void sub_218ADFDC4()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintViewController] view];
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
  sub_219BE8734();
  v14 = *&v0[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintHorizontalShimView];
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

double sub_218AE000C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  sub_219BE3494();

  return result;
}

double sub_218AE0098(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = sub_218A79028;
  v7[4] = v6;

  v8 = a1;

  sub_219BE3494();

  return result;
}

uint64_t sub_218AE0160(uint64_t a1, uint64_t (*a2)(double, double))
{
  v4 = sub_219BE8164();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE8154();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  sub_219BE8664();
  v10 = sub_219BE7BC4();

  v11 = [v10 collectionViewLayout];

  [v11 collectionViewContentSize];
  v13 = v12;

  v14 = 16.0;
  if (v13 == 0.0)
  {
    v14 = v13;
  }

  v15 = v13 + v14;
  result = a2(v9, v15);
  v17 = a1 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_lastComputedSize;
  *v17 = v9;
  *(v17 + 8) = v15;
  *(v17 + 16) = 0;
  return result;
}

uint64_t sub_218AE0364(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_218AE03D4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v6 = OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_218A5FF2C;
}

uint64_t sub_218AE0478()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_218AE04C0(char a1)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v7 + v8) = a1;
  v9 = MEMORY[0x277D6E3C8];
  if ((a1 & 1) == 0)
  {
    v9 = MEMORY[0x277D6E3C0];
  }

  (*(v4 + 104))(v6, *v9, v3);
  return sub_219BE86C4();
}

uint64_t (*sub_218AE05DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_219BE8FC4();
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
  v9 = OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_isBeingUsedAsPlugin;
  v5[6] = *v1;
  v5[7] = v9;
  swift_beginAccess();
  return sub_218AE06D0;
}

void sub_218AE06D0(void *a1, char a2)
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
      v5 = MEMORY[0x277D6E3C8];
    }

    else
    {
      v5 = MEMORY[0x277D6E3C0];
    }

    (*(v3[4] + 104))(v3[5], *v5, v3[3]);
    sub_219BE86C4();
  }

  free(v4);

  free(v3);
}

uint64_t sub_218AE0798()
{
  sub_218AE16E8(0, &qword_27CC0DCE0, MEMORY[0x277D6D618]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintLayoutProvider);
  sub_218AE1800(0);
  sub_218AE16A0(&qword_280EE4C40, 255, sub_218AE1800, MEMORY[0x277D6DF38]);
  sub_219BE91E4();
  v6 = sub_219BE6534();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_218AE090C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_218AE15DC(0, &qword_280EE35E0, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  sub_219BE86A4();
  v11[0] = v11[1];
  sub_218AE15BC(0);
  sub_218AE16A0(&qword_280EE53D0, 255, sub_218AE15BC, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v9 = a3(v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

double sub_218AE0A8C@<D0>(uint64_t a1@<X8>)
{
  sub_219BE8714();
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
    sub_218AE1530(v7);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_218AE0B54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);
  v11 = v5;

  v10(sub_218AE1524, v7, ObjectType, v8);

  return result;
}

double sub_218AE0C24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;

  v10(sub_218AE150C, v7, ObjectType, v8);

  return result;
}

void sub_218AE0CF4(uint64_t a1, double a2, double a3)
{
  sub_219BE8664();
  v6 = sub_219BE7BC4();

  [v6 ts:1 scrollToTop:?];

  v7 = (a1 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_lastComputedSize);
  if ((*(a1 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_lastComputedSize + 16) & 1) != 0 || *v7 != a2 || v7[1] != a3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_218AE16A0(&qword_280E9CB10, v8, type metadata accessor for PuzzleContinuePlayingViewController, &unk_219C1A1FC);
      sub_219BE98B4();
      swift_unknownObjectRelease();
    }
  }
}

void sub_218AE0E30(void *a1, uint64_t a2)
{
  sub_218AE1820(0, &qword_27CC0DCE8, MEMORY[0x277CC9AF8], MEMORY[0x277D84560]);
  sub_219BDC104();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  MEMORY[0x21CEB2E60](0, 0);
  v4 = sub_219BF5904();

  [a1 reloadItemsAtIndexPaths_];

  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x21CEB2E60](a2 - 1, 0);
    v5 = sub_219BF5904();

    [a1 reloadItemsAtIndexPaths_];
  }
}

void sub_218AE0FEC(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 reloadData];
}

void sub_218AE1058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v11) & 1) == 0)
    {
      v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v12 + 40))(nullsub_1, 0, ObjectType, v12);
    }

    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v14 = OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v14) & 1) == 0)
    {
      v15 = *(*(v3 + OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_eventHandler) + 40);
      v16 = swift_getObjectType();
      (*(v15 + 32))(nullsub_1, 0, v16, v15);
    }
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v10 == *MEMORY[0x277D6E978])
    {
      return;
    }

    if (v10 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E958])
    {
      if (v10 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v17 = sub_219BE7BC4();

        [v17 reloadData];
      }

      else
      {
        (*(v6 + 8))(v9, v5);
      }
    }
  }
}

unint64_t sub_218AE146C()
{
  result = qword_280E98260;
  if (!qword_280E98260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98260);
  }

  return result;
}

uint64_t sub_218AE1530(uint64_t a1)
{
  sub_218AE1820(0, &qword_27CC0D548, sub_218A79068, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218AE15DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PuzzleContinuePlayingSectionDescriptor;
    v8[1] = type metadata accessor for PuzzleContinuePlayingModel(255);
    v8[2] = sub_218AE146C();
    v8[3] = sub_218AE16A0(&qword_280EBAB50, 255, type metadata accessor for PuzzleContinuePlayingModel, &unk_219C0FD4C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218AE16A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_218AE16E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PuzzleContinuePlayingLayoutSectionDescriptor;
    v8[1] = type metadata accessor for PuzzleContinuePlayingLayoutModel(255);
    v8[2] = sub_218AE17AC();
    v8[3] = sub_218AE16A0(qword_280EA5740, 255, type metadata accessor for PuzzleContinuePlayingLayoutModel, &unk_219CB8B44);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218AE17AC()
{
  result = qword_280E93D50[0];
  if (!qword_280E93D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E93D50);
  }

  return result;
}

void sub_218AE1820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218AE1884()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_styler], v9);
  v2 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *(*__swift_project_boxed_opaque_existential_1((*v2 + 16), *(*v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v4 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    sub_219BE8664();
    v7 = sub_219BE7BC4();

    v8 = *(*__swift_project_boxed_opaque_existential_1((*v6 + 16), *(*v6 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v7 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_218AE19D0()
{
  v1 = [*(v0 + 56) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -21;
    return ((v6 ^ v3) & 1) == 0;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 21;
  return ((v6 ^ v3) & 1) == 0;
}

id sub_218AE1B84()
{
  v1 = sub_219BF1564();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF1554();
  sub_219BF1534();
  v5 = sub_219BF53D4();

  v6 = sub_219BF53D4();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  result = [v7 view];
  if (result)
  {
    v9 = result;
    v10 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
    [v9 setTintColor_];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = [v12 bundleForClass_];
    sub_219BDB5E4();

    v14 = sub_219BF53D4();

    v15 = objc_opt_self();
    v16 = [v15 actionWithTitle:v14 style:0 handler:0];

    [v7 addAction_];
    v17 = sub_219BF1574();
    (*(v2 + 104))(v4, *MEMORY[0x277D333B0], v1);
    LOBYTE(v14) = sub_219089108(v4, v17);

    (*(v2 + 8))(v4, v1);
    if (v14)
    {
      v18 = [v12 bundleForClass_];
      sub_219BDB5E4();

      v19 = sub_219BF53D4();

      aBlock[4] = sub_218AE1FE4;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218B66540;
      aBlock[3] = &block_descriptor_21;
      v20 = _Block_copy(aBlock);

      v21 = [v15 actionWithTitle:v19 style:0 handler:v20];
      _Block_release(v20);

      [v7 addAction_];
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_218AE1FE4()
{
  v0 = objc_opt_self();

  return [v0 launchSettings];
}

id sub_218AE201C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(v3 + 64) useOfflineMode] && (sub_218AE2298(a2, a1) & 1) != 0)
  {
    sub_219BF1554();
    sub_218AE2590(v3, a2, a3);
    v7 = sub_219BF53D4();

    v8 = sub_219BF53D4();

    v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    result = [v9 view];
    if (result)
    {
      v11 = result;
      v12 = *(*__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
      [v11 setTintColor_];

      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      sub_219BDB5E4();

      v15 = sub_219BF53D4();

      v16 = [objc_opt_self() actionWithTitle:v15 style:0 handler:{0, 0x8000000219CE75E0}];

      [v9 addAction_];
      return v9;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return sub_218AE1B84();
  }

  return result;
}

uint64_t sub_218AE2298(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1584();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1D74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 != *MEMORY[0x277D33600])
  {
    if (v13 == *MEMORY[0x277D335E8])
    {
      if (qword_27CC08798 != -1)
      {
        swift_once();
      }

      v15 = qword_27CCD8E38;
    }

    else if (v13 == *MEMORY[0x277D335F0])
    {
      if (qword_27CC089E8 != -1)
      {
        swift_once();
      }

      v15 = qword_27CCD8FE8;
    }

    else
    {
      if (v13 == *MEMORY[0x277D335F8])
      {
        sub_219BDDBB4();
        goto LABEL_3;
      }

      if (v13 != *MEMORY[0x277D335E0])
      {
        (*(v9 + 8))(v12, v8);
        v14 = 0;
        return v14 & 1;
      }

      if (qword_280ECFF78[0] != -1)
      {
        swift_once();
      }

      v15 = qword_280F61E58;
    }

    v16 = __swift_project_value_buffer(v4, v15);
    v14 = MEMORY[0x21CEC82E0](v16, a2);
    return v14 & 1;
  }

  sub_219BDDC44();
LABEL_3:
  v14 = MEMORY[0x21CEC82E0](v7, a2);
  (*(v5 + 8))(v7, v4);
  return v14 & 1;
}

uint64_t sub_218AE2590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  sub_218AE2DE0(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2624();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF1D74();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_218AE19D0())
  {
    v19 = *(v5 + 48);
    (*(v13 + 16))(v7, a2, v12);
    (*(v9 + 16))(&v7[v19], v31, v8);
    v20 = (*(v13 + 88))(v7, v12);
    if (v20 == *MEMORY[0x277D33600] || v20 == *MEMORY[0x277D335E8] || v20 == *MEMORY[0x277D335F0] || v20 == *MEMORY[0x277D335F8])
    {
      (*(v9 + 8))(&v7[v19], v8);
LABEL_24:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      v27 = sub_219BDB5E4();

      return v27;
    }

    if (v20 == *MEMORY[0x277D335E0])
    {
      v24 = (*(v9 + 88))(&v7[v19], v8);
      if (v24 == *MEMORY[0x277D33990] || v24 == *MEMORY[0x277D33988])
      {
        goto LABEL_24;
      }
    }

    sub_219BF78E4();
    __break(1u);
    goto LABEL_31;
  }

  v16 = v9;
  v17 = v31;
  (*(v13 + 16))(v15, a2, v12);
  v18 = (*(v13 + 88))(v15, v12);
  if (v18 == *MEMORY[0x277D33600] || v18 == *MEMORY[0x277D335E8] || v18 == *MEMORY[0x277D335F0] || v18 == *MEMORY[0x277D335F8])
  {
    goto LABEL_24;
  }

  if (v18 != *MEMORY[0x277D335E0])
  {
LABEL_31:
    sub_219BF78E4();
    __break(1u);
    goto LABEL_32;
  }

  (*(v16 + 16))(v11, v17, v8);
  v29 = (*(v16 + 88))(v11, v8);
  if (v29 == *MEMORY[0x277D33990] || v29 == *MEMORY[0x277D33988])
  {
    goto LABEL_24;
  }

LABEL_32:
  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_218AE2D4C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218AE2DE0(uint64_t a1)
{
  if (!qword_280E905D0)
  {
    sub_219BF1D74();
    sub_219BF2624();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E905D0);
    }
  }
}

uint64_t sub_218AE2E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v78 = a3;
  v81 = a1;
  v5 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v64 - v8;
  v74 = sub_219BDC104();
  v71 = *(v74 - 8);
  v75 = *(v71 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853400(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BEF2A4();
  v76 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v73 = (&v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v83 = &v64 - v16;
  v17 = sub_219BEF974();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v20;
  v21 = type metadata accessor for TodayLayoutModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218879004(0);
  sub_219BE75E4();
  v79 = v18;
  v80 = v17;
  (*(v18 + 32))(v20, v23, v17);
  v24 = *(v4 + 80);
  v69 = *(v4 + 72);
  v70 = v24;
  ObjectType = swift_getObjectType();
  v25 = swift_allocObject();
  v66 = v4;
  swift_weakInit();
  v26 = v11;
  (*(v12 + 16))(&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v81, v11);
  v27 = v71;
  v28 = v72;
  v29 = v74;
  (*(v71 + 16))(v72, v77, v74);
  v30 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v31 = (v13 + *(v27 + 80) + v30) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v25;
  v33 = *(v12 + 32);
  v75 = v26;
  v33(v32 + v30, v67, v26);
  v34 = v82;
  (*(v27 + 32))(v32 + v31, v28, v29);
  v35 = v84;

  v36 = v83;
  sub_219BEECF4();
  v37 = v76;

  v38 = v73;

  (*(v37 + 16))(v38, v36, v35);
  if ((*(v37 + 88))(v38, v35) == *MEMORY[0x277D32528])
  {
    (*(v37 + 96))(v38, v84);
    v78 = *v38;
    v39 = sub_219BE7314();
    v40 = *(v66 + 96);
    v41 = swift_getObjectType();
    v42 = v64;
    sub_219BE5FC4();
    v43 = sub_2188578D8();
    v45 = v44;
    sub_218AE3CB4(v42);
    (*(v40 + 32))(v43, v45, v41, v40);

    sub_2187DEC58(qword_280EDE170, type metadata accessor for IssueDownload, &protocol conformance descriptor for IssueDownload);
    sub_219BF19C4();

    v46 = v65;
    sub_219BE5FC4();
    v47 = sub_219B0445C();
    sub_218AE3CB4(v46);
    v48 = v78;
    v49 = sub_219BE7314();
    v50 = sub_219BF19B4();

    if (v47)
    {
      [v50 setShowsMenuAsPrimaryAction_];

      v51 = sub_219BE7314();
      v52 = sub_219BF19B4();

      sub_21897C0DC();
      v53 = sub_219BF6BF4();
      [v52 setMenu_];

      v54 = sub_219BE7314();
      v55 = sub_219BF19B4();

      v56 = sub_219BE5984();
      [v55 setActivityItemsConfiguration_];

      v57 = sub_219BE7314();
      v58 = sub_219BF19B4();

      v59 = swift_allocObject();
      swift_weakInit();
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v47;

      sub_219BF2CC4();

      (*(v37 + 8))(v83, v84);
      (*(v79 + 8))(v82, v80);
    }

    else
    {
      [v50 setHidden_];

      (*(v37 + 8))(v83, v84);
      (*(v79 + 8))(v82, v80);
    }
  }

  else
  {
    v48 = sub_219BEF294();
    v61 = *(v37 + 8);
    v62 = v84;
    v61(v36, v84);
    (*(v79 + 8))(v34, v80);
    v61(v38, v62);
  }

  return v48;
}

double sub_218AE36C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BF0894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D32F88])
  {
    (*(v7 + 96))(v9, v6);
    v10 = sub_219BF13B4();
    v11 = *(v10 - 8);
    if ((*(v11 + 88))(v9, v10) == *MEMORY[0x277D33338])
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_219790994(a3, a4);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v11 + 8))(v9, v10);
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_218AE38CC(void *a1, uint64_t a2)
{
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = Strong;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E0F8], v3);
  v9 = *(v8 + 120);
  v13[3] = sub_219BDD274();
  v13[4] = sub_2187DEC58(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v13[0] = v9;
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  sub_219BE8314();
  swift_allocObject();

  v10 = a1;
  sub_219BE82F4();
  swift_unknownObjectRetain();
  v11 = sub_219BE5994();

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_218AE3ABC()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218AE3BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_218AE2E50(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

double sub_218AE3BDC(uint64_t a1)
{
  sub_218853400(0);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_219BDC104() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_218AE36C0(a1, v7, v1 + v4, v8);
}

uint64_t sub_218AE3CB4(uint64_t a1)
{
  v2 = type metadata accessor for TodayModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218AE3D18(uint64_t a1, uint64_t a2, char *a3)
{
  v44 = a3;
  v35 = sub_219BDF744();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDD6F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1714();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDD744();
  sub_21934C4BC();

  sub_218AE5480(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
  v15 = MEMORY[0x277D84F90];
  v31 = "tor";
  v34 = a1;
  sub_219BDCCC4();
  (*(v11 + 8))(v13, v10);
  v43 = a2;
  v36 = *(sub_219BDD754() + 16);

  v16 = v44;
  v42 = *(v44 + 2);
  if (v42)
  {
    v17 = 0;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v37 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v39 = &v44[v37];
    v40 = v19;
    v20 = v18;
    v21 = *(v18 + 56);
    v41 = v20;
    v38 = (v20 - 8);
    v44 = MEMORY[0x277D84F90];
    v19(v9, &v16[v37], v6);
    while (1)
    {
      v22 = sub_219BDD754();
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v22 + v37;
        sub_218AE5480(&qword_27CC0DD18, MEMORY[0x277D2FA88], MEMORY[0x277D2FA90]);
        v25 = 0;
        while ((sub_219BF53A4() & 1) == 0)
        {
          ++v25;
          v24 += v21;
          if (v23 == v25)
          {
            goto LABEL_3;
          }
        }

        (*v38)(v9, v6);
        if (v25 >> 31)
        {
          __break(1u);
          goto LABEL_22;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v26 = v44;
        }

        else
        {
          v26 = sub_2191F7890(0, *(v44 + 2) + 1, 1, v44);
        }

        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        if (v28 >= v27 >> 1)
        {
          v26 = sub_2191F7890((v27 > 1), v28 + 1, 1, v26);
        }

        *(v26 + 2) = v28 + 1;
        v44 = v26;
        *&v26[4 * v28 + 32] = v25;
      }

      else
      {
LABEL_3:

        (*v38)(v9, v6);
      }

      if (++v17 == v42)
      {
        goto LABEL_19;
      }

      v40(v9, &v39[v21 * v17], v6);
    }
  }

  v44 = v15;
LABEL_19:
  if (v36 >> 31)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    v29 = v32;
    sub_219BDF734();
    sub_218AE5480(&qword_27CC0DD20, MEMORY[0x277D2DD18], MEMORY[0x277D2DD10]);
    v30 = v35;
    sub_219BDCCC4();
    (*(v33 + 8))(v29, v30);
  }
}

uint64_t sub_218AE4208(uint64_t a1)
{
  v14[1] = a1;
  v1 = sub_219BDF074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - v6;
  v8 = sub_219BDD744();
  v9 = swift_allocObject();
  v15 = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = v8;
  *(v9 + 56) = 0;
  *(v9 + 63) = 0;
  *(v9 + 61) = 0;
  *(v9 + 57) = 0;
  *(v9 + 64) = MEMORY[0x277D84F90];
  v14[2] = v9 | 0x5000000000000000;
  v10 = v8;

  sub_219BE7884();

  sub_218AE4458(v7);
  (*(v2 + 16))(v4, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  (*(v2 + 32))(v12 + v11, v4, v1);
  sub_219BDD154();

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_218AE4458@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BDCD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE8374();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6794();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D6DED8])
  {
    sub_219BDD184();
    sub_218AE54C8(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    v11 = sub_219BDD0A4();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    (*(v12 + 104))(v14 + v13, *MEMORY[0x277CEAE58], v11);
    v15 = sub_219BDCD14();

    (*(v3 + 8))(v5, v2);
    v16 = sub_219BDF074();
    v17 = *(*(v16 - 8) + 104);
    if (v15)
    {
      v18 = MEMORY[0x277D2D858];
    }

    else
    {
      v18 = MEMORY[0x277D2D810];
    }

    v20 = *v18;
    v21 = a1;
    return v17(v21, v20, v16);
  }

  if (v10 == *MEMORY[0x277D6DED0])
  {
    v19 = MEMORY[0x277D2D840];
LABEL_12:
    v22 = *v19;
    v16 = sub_219BDF074();
    v17 = *(*(v16 - 8) + 104);
    v21 = a1;
    v20 = v22;
    return v17(v21, v20, v16);
  }

  if (v10 == *MEMORY[0x277D6DEC0])
  {
    v19 = MEMORY[0x277D2D868];
    goto LABEL_12;
  }

  if (v10 == *MEMORY[0x277D6DEC8])
  {
    v19 = MEMORY[0x277D2D800];
    goto LABEL_12;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218AE4824(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  v2 = sub_219BDF074();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE1544();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE1524();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, *MEMORY[0x277D2F3B0], v16);
  (*(v18 + 16))(v17, v20, v19);
  sub_219BE1514();
  sub_218AE5480(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  sub_219BDCCC4();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_218AE4B54(uint64_t a1, char a2)
{
  sub_218AE54C8(0, &unk_280EE8200, MEMORY[0x277D2EB90], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_219BDF194();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF184();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D2D930], v6, v12);
    v15 = sub_219BE0BC4();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    sub_219BDF174();
    sub_218AE5480(&qword_280EE8860, MEMORY[0x277D2D928], MEMORY[0x277D2D920]);
    sub_219BDCCC4();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_218AE5480(&qword_280EE8860, MEMORY[0x277D2D928], MEMORY[0x277D2D920]);
    return sub_219BDCCA4();
  }
}

uint64_t sub_218AE4E3C()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_219BDD744();
  v8 = swift_allocObject();
  v13 = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = v7;
  *(v8 + 56) = 0;
  *(v8 + 63) = 0;
  *(v8 + 61) = 0;
  *(v8 + 57) = 0;
  *(v8 + 64) = MEMORY[0x277D84F90];
  v12 = v8 | 0x5000000000000000;
  v9 = v7;

  sub_219BE7864();

  sub_219BDFDC4();
  sub_219BE6784();
  sub_218AE5480(&unk_27CC0DD28, MEMORY[0x277D2E138], MEMORY[0x277D2E130]);
  sub_219BDD174();
  v10 = *(v1 + 8);
  v10(v6, v0);
  sub_219BE6784();
  sub_219BE67A4();
  sub_219BDBBF4();
  v10(v3, v0);
  sub_219BDD194();
  return (v10)(v6, v0);
}

uint64_t sub_218AE50C0()
{
  sub_218774F78(v0 + 16);

  v1 = OBJC_IVAR____TtC7NewsUI221PDFReplicaCoordinator_issue;
  v2 = sub_219BDD764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDFReplicaCoordinator(uint64_t a1)
{
  result = qword_27CC0DD08;
  if (!qword_27CC0DD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218AE51E0(uint64_t a1)
{
  result = sub_219BDD764();
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

void (*sub_218AE52A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

double sub_218AE5384(char a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_219BDD154();

  return result;
}

uint64_t sub_218AE5410(uint64_t a1)
{
  v3 = *(sub_219BDF074() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218AE4824(a1, v4);
}

uint64_t sub_218AE5480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218AE54C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ChannelsSearchFeedGroup(uint64_t a1)
{
  result = qword_280EC5848;
  if (!qword_280EC5848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218AE55A0(uint64_t a1)
{
  sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    sub_218AE569C(319, &qword_280E8ED00, sub_2186D8870, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_218AE569C(319, &qword_280ED01D0, sub_218AE5700, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_218AE569C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218AE5700()
{
  result = qword_280ED01E0;
  if (!qword_280ED01E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED01E0);
  }

  return result;
}

uint64_t sub_218AE5764(uint64_t a1)
{
  v2 = sub_218AE5870(&unk_27CC0DD50, &unk_219C1A548);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218AE5870(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelsSearchFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_218AE58B4(uint64_t a1, unint64_t a2)
{
  *(v2 + 40) = 1;
  v5 = *(v2 + 24);
  v6 = [v5 searchBar];
  [v6 becomeFirstResponder];

  v7 = [v5 searchBar];
  v18 = v7;
  if (a2)
  {
    v8 = sub_219BF53D4();
    [v18 setText_];

    v10 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v10 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = *(v2 + 16);
      v12 = [*&v11[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController] parentViewController];
      if (v12 && (v13 = v12, sub_218805E54(), v14 = v11, v15 = sub_219BF6DD4(), v14, v13, (v15 & 1) != 0))
      {
        sub_219B5F1FC(a1, a2, 0, 6);
      }

      else
      {
        v16 = &v11[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchTerm];
        *v16 = a1;
        *(v16 + 1) = a2;

        v17 = &v11[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchOrigination];
        *v17 = 6;
        v17[8] = 0;
      }
    }
  }

  else
  {
    [v7 setText_];
  }

  return result;
}

uint64_t sub_218AE5AAC()
{
  MEMORY[0x21CECFA80](v0 + 32);

  return swift_deallocClassInstance();
}

void sub_218AE5AF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2198FBFF8();
  }
}

void sub_218AE5B58()
{
  *(v0 + 40) = 1;
  v1 = [*(v0 + 24) searchBar];
  [v1 becomeFirstResponder];
}

void sub_218AE5BB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (sub_219BED0C4())
    {
      sub_2198FCCB0(0);
      v1 = v10;
    }

    else
    {
      v2 = type metadata accessor for FollowingViewController(0);
      v3 = sub_218AE5D40();
      v4 = MEMORY[0x21CEBCBD0](v2, v3);
      if (v4)
      {
        v5 = v4;
        swift_getObjectType();
        sub_219BE90C4();
      }

      v6 = __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC7NewsUI223FollowingViewController_styler], *&v10[OBJC_IVAR____TtC7NewsUI223FollowingViewController_styler + 24]);
      v7 = [v10 navigationItem];
      v8 = *v6;
      if (sub_219BED0C4())
      {
        [v7 setLargeTitleDisplayMode_];
        v9 = [objc_opt_self() clearColor];
        sub_219BEDA04();
      }

      else
      {
        v9 = *(*__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
        sub_218A7575C(v7, v9);
      }

      v1 = v9;
    }
  }
}

unint64_t sub_218AE5D40()
{
  result = qword_280EC4FC0;
  if (!qword_280EC4FC0)
  {
    type metadata accessor for FollowingViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4FC0);
  }

  return result;
}

uint64_t type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides(uint64_t a1)
{
  result = qword_280E94008;
  if (!qword_280E94008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218AE5E0C(uint64_t a1)
{
  sub_218AE5F98(319, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  if (v1 <= 0x3F)
  {
    sub_218AE5F98(319, &qword_280E8FAF0, sub_218AE5F30);
    if (v2 <= 0x3F)
    {
      sub_218AE5F98(319, &qword_280E913C8, sub_2186ECA28);
      if (v3 <= 0x3F)
      {
        sub_218AE5F98(319, &qword_280E913E8, sub_2186F95C4);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_218AE5F30(uint64_t a1)
{
  if (!qword_280E8FB00)
  {
    sub_219BF0204();
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FB00);
    }
  }
}

void sub_218AE5F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218AE5FF8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218AE60CC(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218AE618C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_218AE625C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218AE7008(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218AE628C(unint64_t *a1@<X8>)
{
  v2 = 0xEF73626F6E4B676ELL;
  v3 = 0x6972657473756C63;
  v4 = 0x8000000219CD6960;
  v5 = 0xD000000000000020;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x8000000219CD6980;
  }

  if (*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x8000000219CD6940;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_218AE631C()
{
  v1 = 0x6972657473756C63;
  v2 = 0xD000000000000020;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_218AE63A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218AE7008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218AE63D0(uint64_t a1)
{
  v2 = sub_218AE6784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218AE640C(uint64_t a1)
{
  v2 = sub_218AE6784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218AE6448@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218AE6728(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE6784();
  sub_219BF7B34();
  if (!v2)
  {
    sub_219BF0204();
    LOBYTE(v19) = 0;
    sub_218AE6888(&qword_280E90FF8, MEMORY[0x277D32BE0], MEMORY[0x277D32BF0]);
    sub_219BF7674();
    sub_218AE5F30(0);
    LOBYTE(v18) = 1;
    sub_218AE67D8();
    sub_219BF7674();
    v15 = v19;
    sub_2186ECA28();
    LOBYTE(v17) = 2;
    v10 = MEMORY[0x277D32620];
    sub_218AE6888(&qword_280E913D8, sub_2186ECA28, MEMORY[0x277D32620]);
    sub_219BF7674();
    v11 = v18;
    sub_2186F95C4();
    v16 = 3;
    sub_218AE6888(&qword_280E913F8, sub_2186F95C4, v10);
    sub_219BF7674();
    (*(v7 + 8))(v9, v6);
    v12 = v17;
    v13 = type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides(0);
    *(a2 + v13[5]) = v15;
    *(a2 + v13[6]) = v11;
    *(a2 + v13[7]) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_218AE6728(uint64_t a1)
{
  if (!qword_280E8C6C8)
  {
    sub_218AE6784();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8C6C8);
    }
  }
}

unint64_t sub_218AE6784()
{
  result = qword_280E94030;
  if (!qword_280E94030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94030);
  }

  return result;
}

unint64_t sub_218AE67D8()
{
  result = qword_280E8FAF8;
  if (!qword_280E8FAF8)
  {
    sub_218AE5F30(255);
    sub_218AE6888(&qword_280E90FF8, MEMORY[0x277D32BE0], MEMORY[0x277D32BF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FAF8);
  }

  return result;
}

uint64_t sub_218AE6888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218AE68D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0204();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AE5F98(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  sub_218AE6D1C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_218AE6D9C(a1, v13);
  sub_218AE6D9C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_218AE6D9C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_218AE6888(&qword_27CC0DD78, MEMORY[0x277D32BE0], MEMORY[0x277D32BE8]);
      v18 = sub_219BF53A4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_218AE6E78(v13);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_218AE6E1C(v13);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_218AE6E78(v13);
LABEL_10:
  v20 = type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides(0);
  v21 = v20[5];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    sub_219319EFC(v22, v23);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v26 = v20[6];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27)
  {
    v35 = v27;
    if (!v28)
    {
      return 0;
    }

    v34 = v28;
    sub_2186ECA28();
    sub_218AE6888(&qword_27CC0DD70, sub_2186ECA28, MEMORY[0x277D32618]);

    v29 = sub_219BF53A4();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v30 = v20[7];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31)
  {
    v35 = v31;
    if (v32)
    {
      v34 = v32;
      sub_2186F95C4();
      sub_218AE6888(&qword_27CC0DD68, sub_2186F95C4, MEMORY[0x277D32618]);

      v33 = sub_219BF53A4();

      if (v33)
      {
        return 1;
      }
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

void sub_218AE6D1C(uint64_t a1)
{
  if (!qword_27CC0DD60)
  {
    sub_218AE5F98(255, &qword_280E90FF0, MEMORY[0x277D32BE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0DD60);
    }
  }
}

uint64_t sub_218AE6D9C(uint64_t a1, uint64_t a2)
{
  sub_218AE5F98(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AE6E1C(uint64_t a1)
{
  sub_218AE6D1C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218AE6E78(uint64_t a1)
{
  sub_218AE5F98(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218AE6F04()
{
  result = qword_27CC0DD80;
  if (!qword_27CC0DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DD80);
  }

  return result;
}

unint64_t sub_218AE6F5C()
{
  result = qword_280E94020;
  if (!qword_280E94020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94020);
  }

  return result;
}

unint64_t sub_218AE6FB4()
{
  result = qword_280E94028;
  if (!qword_280E94028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94028);
  }

  return result;
}

unint64_t sub_218AE7008(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_218AE7078(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_218AE7168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_218950928(0);
  v77 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v83 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AEED7C(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v67 - v12;
  MEMORY[0x28223BE20](v13);
  v82 = &v67 - v14;
  v15 = sub_219BDC104();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v68 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v67 - v19;
  sub_218950ACC(0);
  v96 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v95 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AEED7C(0, &unk_280EE5C60, sub_218950B84);
  MEMORY[0x28223BE20](v23 - 8);
  v81 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v94 = &v67 - v26;
  sub_218950B84(0);
  v97 = v27;
  MEMORY[0x28223BE20](v27);
  v75 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v87 = &v67 - v31;
  if (a2)
  {
    v32 = 0;
    v33 = 0;
    v34 = *((*MEMORY[0x277D85000] & *v3) + 0x68);
    v78 = *((*MEMORY[0x277D85000] & *v3) + 0x60);
    v79 = v3;
    v35 = *(v3 + v34);
    v92 = (v21 + 8);
    v91 = (v30 + 48);
    v85 = (v30 + 32);
    v84 = (v16 + 48);
    v73 = (v16 + 32);
    v69 = (v16 + 56);
    v72 = (v7 + 8);
    v67 = v16;
    v74 = (v16 + 8);
    v86 = (v30 + 8);
    v90 = a2;
    v89 = a1;
    v88 = v35;
    v93 = v15;
    v36 = v95;
    do
    {
      v98 = v32;
      v37 = *(&unk_282A22548 + v33 + 32);
      sub_219BE6EC4();
      v111 = v102;
      sub_2187486B4(0);
      v39 = v38;
      v40 = sub_2186D560C(&unk_280EE5550, sub_2187486B4, MEMORY[0x277D6D8C8]);
      v101 = v39;
      v100 = v40;
      sub_219BE7B94();

      *&v108[0] = 0;
      *(&v108[0] + 1) = 0xE000000000000000;
      v110 = v37;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      MEMORY[0x21CECC330](a1, a2);
      v41 = v94;
      v42 = v96;
      sub_219BEB1C4();

      v99 = *v92;
      v99(v36, v42);
      v43 = *v91;
      v44 = v97;
      if ((*v91)(v41, 1, v97) == 1)
      {
        sub_218AF17C4(v41, &unk_280EE5C60, sub_218950B84);
        sub_219BE6EC4();
        *&v102 = *&v108[0];
        sub_219BE7B94();

        v45 = v81;
        sub_219BEB1C4();
        v99(v36, v42);
        if (v43(v45, 1, v44) == 1)
        {
          sub_218AF17C4(v45, &unk_280EE5C60, sub_218950B84);
          v46 = v93;
        }

        else
        {
          v55 = v75;
          (*v85)(v75, v45, v44);
          sub_219BE6EC4();
          *&v102 = *&v108[0];
          sub_219BE7B94();

          v56 = v76;
          sub_219BEB2F4();
          v99(v36, v42);
          v46 = v93;
          if ((*v84)(v56, 1, v93) != 1)
          {
            v62 = v68;
            (*v73)(v68, v56, v46);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v64 = Strong;
              v65 = v67 + 16;
              v66 = v70;
              (*(v67 + 16))(v70, v62, v46);
              (*(v65 + 40))(v66, 0, 1, v46);
              sub_2193FDF10(v66, v64);
              swift_unknownObjectRelease();
              sub_218AF17C4(v66, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
              (*(v65 - 8))(v62, v46);
            }

            else
            {
              (*v74)(v62, v46);
            }

            return (*v86)(v55, v44);
          }

          (*v86)(v55, v44);
          sub_218AF17C4(v56, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        }

        a2 = v90;
        a1 = v89;
      }

      else
      {
        v47 = v87;
        (*v85)(v87, v41, v44);
        sub_219BE6EC4();
        *&v102 = *&v108[0];
        sub_219BE7B94();

        v48 = v82;
        sub_219BEB2F4();
        v99(v36, v42);
        v46 = v93;
        if ((*v84)(v48, 1, v93) == 1)
        {
          (*v86)(v47, v44);
          sub_218AF17C4(v48, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          a2 = v90;
          a1 = v89;
        }

        else
        {
          v49 = v80;
          (*v73)(v80, v48, v46);
          sub_219BE6EC4();
          v111 = v102;
          sub_219BE7B94();

          sub_219BDC0F4();
          sub_219BEB364();
          v99(v36, v42);
          v50 = v77;
          sub_219BE6934();
          v108[3] = v105;
          v108[4] = v106;
          v51 = v107;
          v109 = v107;
          v108[0] = v102;
          v108[1] = v103;
          v108[2] = v104;
          sub_2189C3F04(v108);
          v52 = swift_unknownObjectWeakLoadStrong();
          v53 = v52;
          if (v51 <= 8)
          {
            if (v52)
            {
              v60 = v67 + 16;
              v61 = v70;
              (*(v67 + 16))(v70, v49, v46);
              (*(v60 + 40))(v61, 0, 1, v46);
              sub_2193FDF10(v61, v53);
              swift_unknownObjectRelease();
              sub_218AF17C4(v61, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
            }

            (*v72)(v83, v50);
            (*v74)(v49, v46);
            return (*v86)(v47, v44);
          }

          a2 = v90;
          a1 = v89;
          if (v52)
          {
            v54 = v70;
            (*v69)(v70, 1, 1, v46);
            sub_2193FDF10(v54, v53);
            swift_unknownObjectRelease();
            sub_218AF17C4(v54, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
          }

          (*v72)(v83, v50);
          (*v74)(v80, v46);
          (*v86)(v87, v97);
        }
      }

      v32 = 1;
      v33 = 1u;
    }

    while ((v98 & 1) == 0);
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v58 = result;
    v59 = v70;
    (*v69)(v70, 1, 1, v46);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v58 = result;
    v59 = v70;
    (*(v16 + 56))(v70, 1, 1, v15);
  }

  sub_2193FDF10(v59, v58);
  swift_unknownObjectRelease();
  return sub_218AF17C4(v59, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
}

double sub_218AE8094()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  sub_218950ACC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v9 = v10;
  sub_2187486B4(0);
  sub_2186D560C(&unk_280EE5550, sub_2187486B4, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v7 = sub_218DF2E60();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    v10 = (*(*(v1 + 88) + 104))(*(v1 + 80));
    sub_218AEEF84(0);
    sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
  }

  return result;
}

void sub_218AE82E0(void *a1)
{
  v1 = a1;
  sub_218AE8090();
}

double sub_218AE8328(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  (*(v5 + 40))(v6, v5);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = a1;
  v8[6] = a2;

  sub_2188202A8(a1);
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  sub_218DF1A90();
  sub_218AE8660();

  return result;
}

void sub_218AE8514(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_219BE20E4();
    v6 = sub_218D1FC0C(v10, v11);
    v8 = v7;
    sub_218AEED68(v10, v11);
    sub_218AE7168(v6, v8);

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_219BF42E4();
    swift_unknownObjectRelease();

    if (a3)
    {
      a3(v9);
    }

    sub_218AE8094();
  }
}

uint64_t sub_218AE8660()
{
  v1 = v0;
  v20[1] = swift_getObjectType();
  v2 = sub_219BE3514();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE61B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = MEMORY[0x277D85000];
  sub_219BE6EC4();
  sub_219BE6F74();

  (*(v6 + 104))(v8, *MEMORY[0x277D6D520], v5);
  v13 = sub_219BE61A4();
  v14 = *(v6 + 8);
  v14(v8, v5);
  if ((v13 & 1) == 0)
  {
    return (v14)(v11, v5);
  }

  v15 = *v12 & *v1;
  v20[0] = v2;
  v16 = *(v15 + 216);
  sub_218718690(v1 + v16, v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  swift_getWitnessTable();
  sub_219BE3A24();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_218718690(v1 + v16, v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v17 = v21;
  v18 = v20[0];
  (*(v21 + 104))(v4, *MEMORY[0x277D314B0], v20[0]);
  sub_219BE3A34();
  (*(v17 + 8))(v4, v18);
  v14(v11, v5);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

double sub_218AE8980(uint64_t a1, uint64_t a2)
{

  v4 = sub_218D20388(a1, a2);
  v6 = v5;
  sub_218AEEF30();
  sub_219BE2114();
  return sub_218AEED68(v4, v6);
}

double sub_218AE8A1C(uint64_t a1)
{
  if (a1)
  {

    sub_218AE7168(0, 0);
  }

  else
  {
    sub_219BE20E4();
    v2 = sub_218D1FC0C(v5, v6);
    v4 = v3;
    sub_218AEED68(v5, v6);
    sub_218AE7168(v2, v4);
  }

  return result;
}

void sub_218AE8AF8(uint64_t a1, int a2)
{
  v95 = a2;
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x277D85000] & *v2;
  v98 = v2;
  v96 = v4;
  v103 = sub_219BDC104();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE7654();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x28223BE20](v6);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AEED7C(0, &qword_27CC0DE50, MEMORY[0x277D6D508]);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v89 - v9;
  v102 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v102);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v89 - v13;
  MEMORY[0x28223BE20](v14);
  v97 = &v89 - v15;
  sub_218950B84(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v89 - v22;
  v24 = sub_219BE7634();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9064();
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277D6DA60])
  {
    (*(v25 + 96))(v27, v24);
    sub_218AEF9F8(0);
    v31 = v100;
    v30 = v101;
    (*(v101 + 32))(v100, &v27[*(v29 + 48)], v103);
    v32 = a1;
    sub_219BE9054();
    v33 = v99;
    sub_219BE5FC4();
    (*(v18 + 8))(v20, v17);
    sub_218AF1820(v33, v11, type metadata accessor for FollowingModel);
    if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) == 6)
    {

      sub_218AEA4B0(v34, v32, v31);

      sub_218AF1E64(v33, type metadata accessor for FollowingModel);
      v35 = *(v30 + 8);
      v36 = v103;
      v35(v31, v103);
      v35(v27, v36);
    }

    else
    {
      sub_218AF1E64(v33, type metadata accessor for FollowingModel);
      v37 = *(v30 + 8);
      v38 = v103;
      v37(v31, v103);
      sub_218AF1E64(v11, type metadata accessor for FollowingModel);
      v37(v27, v38);
    }

    return;
  }

  if (v28 == *MEMORY[0x277D6DA68])
  {
    (*(v25 + 8))(v27, v24);
    goto LABEL_12;
  }

  if (v28 != *MEMORY[0x277D6DA70])
  {
    if (v28 != *MEMORY[0x277D6DA78])
    {
      sub_219BE9074();
      (*(v25 + 8))(v27, v24);
      return;
    }

LABEL_12:
    sub_219BE9074();
    return;
  }

  sub_219BE9054();
  v39 = v97;
  sub_219BE5FC4();
  (*(v18 + 8))(v23, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v40 = type metadata accessor for FollowingAudioModel;
      goto LABEL_11;
    case 6u:
    case 7u:
      v41 = *v39;
      if (*(*v39 + 16) <= 1u && *(*v39 + 16))
      {

LABEL_25:
        v46 = sub_218AE9ABC(v41, a1);
        v48 = v47;
        v50 = v49;
        v52 = v51;

        if (v52)
        {
          sub_218AEF968(v46, v48, v50, 1);
          goto LABEL_12;
        }

        v104[0] = (*(*(v96 + 88) + 48))(v46, v48, v50, *(v96 + 80));
        sub_218AEEF84(0);
        sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
        sub_219BE6EF4();
        sub_218AEF968(v46, v48, v50, 0);
        goto LABEL_30;
      }

      v45 = sub_219BF78F4();

      if (v45)
      {
        goto LABEL_25;
      }

      if (*(v41 + 16) <= 1u || *(v41 + 16) == 2)
      {
        v53 = sub_219BF78F4();

        if ((v53 & 1) == 0)
        {
          if (v95 == 2)
          {
            v54 = [*(*(v41 + 24) + 16) identifier];
            v55 = sub_219BF5414();
            v57 = v56;

            LOBYTE(v54) = sub_218DF1E40(v55, v57);

            if (v54)
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v59 = Strong;
                v60 = swift_unknownObjectWeakLoadStrong();
                if (v60)
                {
                  sub_218AEEDD0(v59, v41, a1, v60);
                  swift_unknownObjectRelease();
                }

                goto LABEL_57;
              }

LABEL_30:

              return;
            }

            v79 = [*(*(v41 + 24) + 16) identifier];
            v80 = sub_219BF5414();
            v82 = v81;

            LOBYTE(v79) = sub_218DF1EFC(v80, v82);

            if (v79)
            {
              v83 = swift_unknownObjectWeakLoadStrong();
              if (!v83)
              {
                goto LABEL_30;
              }

              sub_2193FE284(v41, a1, v83, ObjectType, &off_282A366E8);
LABEL_57:

              swift_unknownObjectRelease();
              return;
            }

            v84 = v91;
            sub_219BE9084();
            v86 = v92;
            v85 = v93;
            v87 = (*(v92 + 88))(v84, v93);
            if (v87 != *MEMORY[0x277D6DAB8] && v87 != *MEMORY[0x277D6DAA8] && v87 != *MEMORY[0x277D6DAB0])
            {
              if (v87 == *MEMORY[0x277D6DA98])
              {
                v88 = swift_unknownObjectWeakLoadStrong();
                if (!v88)
                {
                  goto LABEL_30;
                }

                sub_2193FE2DC(v41, a1, v88, ObjectType, &off_282A366E8);
                goto LABEL_57;
              }

              if (v87 != *MEMORY[0x277D6DAA0])
              {
                (*(v86 + 8))(v84, v85);
              }
            }
          }

          else if ((v95 & 1) == 0)
          {
            goto LABEL_30;
          }

          sub_218AEA388(v98, v41, a1);
          goto LABEL_30;
        }
      }

      else
      {
      }

      v61 = *(*(v41 + 24) + 16);

      v62 = [v61 identifier];
      v63 = sub_219BF5414();
      v65 = v64;

      sub_219BEAF24();
      v104[0] = v63;
      v104[1] = v65;

      sub_219BE89C4();

      if (v105 == 2)
      {
        goto LABEL_40;
      }

      v72 = sub_219BF2BD4();
      v74 = v73;
      if (v72 == sub_219BF2BD4() && v74 == v75)
      {

LABEL_53:
        v77 = sub_219BE6174();
        v78 = v94;
        (*(*(v77 - 8) + 56))(v94, 1, 1, v77);
        sub_218AE9EDC(v63, v65, v78);

        sub_218AF17C4(v78, &qword_27CC0DE50, MEMORY[0x277D6D508]);
        v104[0] = (*(*(v96 + 88) + 112))(*(v96 + 80));
        sub_218AEEF84(0);
        sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
        sub_219BE6EF4();

        return;
      }

      v76 = sub_219BF78F4();

      if (v76)
      {

        goto LABEL_53;
      }

LABEL_40:
      if (qword_280EE5F18 != -1)
      {
        swift_once();
      }

      v66 = sub_219BE5434();
      __swift_project_value_buffer(v66, qword_280F62538);

      v67 = sub_219BE5414();
      v68 = sub_219BF61F4();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v104[0] = v70;
        *v69 = 136315138;
        v71 = sub_2186D1058(v63, v65, v104);

        *(v69 + 4) = v71;

        _os_log_impl(&dword_2186C1000, v67, v68, "FollowingInteractor unable to remove tag=%s with viewAction due to shortcut not being in shortcutList.", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x21CECF960](v70, -1, -1);
        MEMORY[0x21CECF960](v69, -1, -1);
      }

      else
      {
      }

      return;
    case 0xBu:

      sub_218748BF4(0);
      v43 = *(v42 + 48);
      sub_218748D40(0);
      (*(*(v44 - 8) + 8))(v39 + v43, v44);
      goto LABEL_12;
    case 0x10u:
      v40 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_11;
    case 0x11u:
      v40 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_11;
    default:
      v40 = type metadata accessor for FollowingModel;
LABEL_11:
      sub_218AF1E64(v39, v40);
      goto LABEL_12;
  }
}

uint64_t sub_218AE9ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_219BF2CB4();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BF2634();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE89F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v14 = *(a1 + 24);
  sub_219BEAA64();
  v36 = *(v14 + 16);
  (*(v11 + 104))(v13, *MEMORY[0x277D6E0F8], v10);
  v37 = 0u;
  v38 = 0u;
  v39 = 1;
  swift_unknownObjectRetain();
  sub_219BE89D4();

  (*(v11 + 8))(v13, v10);
  swift_unknownObjectRelease();
  v15 = MEMORY[0x277D85000];
  v16 = *(v14 + 16);
  v17 = *(*(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78)) + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_tagService);
  ObjectType = swift_getObjectType();
  v19 = sub_218E97A64(v16, v17, ObjectType);
  v20 = (v3 + *((*v15 & *v3) + 0x108));
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  *v7 = v19[2];
  v22 = v32;
  v21 = v33;
  (*(v32 + 104))(v7, *MEMORY[0x277D33B98], v33);
  swift_unknownObjectRetain();
  v23 = v29;
  sub_219BF4794();
  (*(v22 + 8))(v7, v21);
  v24 = sub_219BF2614();
  (*(v30 + 8))(v23, v31);
  v25 = v35;
  LOBYTE(v21) = *(v35 + 16);
  type metadata accessor for FollowingTagModel();
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  *(v26 + 24) = v19;
  *(v26 + 32) = v24 & 1;

  return v25;
}

double sub_218AE9EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_219BE89F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AEED7C(0, &qword_27CC0DE50, MEMORY[0x277D6D508]);
  MEMORY[0x28223BE20](v10 - 8);
  v22[1] = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v22[0] = v22 - v13;
  v14 = MEMORY[0x277D85000];
  sub_219BEAF24();
  *&v26 = a1;
  *(&v26 + 1) = a2;

  sub_219BE89C4();

  if (v24 == 2 || (v24 & 1) == 0 || (v15 = (v3 + *((*v14 & *v3) + 0xF0)), __swift_project_boxed_opaque_existential_1(v15, v15[3]), (sub_219BF2994() & 1) != 0))
  {
    sub_219BEAF24();
    v24 = a1;
    v25 = a2;
    (*(v7 + 104))(v9, *MEMORY[0x277D6E0F8], v6);
    v26 = 0u;
    v27 = 0u;
    v28 = 1;

    sub_219BE89D4();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v17 = v22[0];
    sub_218AEF868(v23, v22[0], &qword_27CC0DE50, MEMORY[0x277D6D508]);
    v18 = sub_219BE6174();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_218AF17C4(v17, &qword_27CC0DE50, MEMORY[0x277D6D508]);
    }

    else
    {
      v20 = sub_219BE6164();
      v21 = (*(v19 + 8))(v17, v18);
      v20(v21);
    }
  }

  return result;
}

double sub_218AEA388(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*((*MEMORY[0x277D85000] & *a1) + 0x58) + 48))(a2, a3, 0x2000000000000000, *((*MEMORY[0x277D85000] & *a1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_218AEA4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v48 = (*MEMORY[0x277D85000] & *v4);
  sub_218AEED7C(0, &unk_280EE5C60, sub_218950B84);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  sub_218950ACC(0);
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  sub_218950B84(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  v45 = a1;
  if (*(a1 + 16) - 1 >= 2)
  {
    if (*(a1 + 16))
    {
      v27 = v48;
      sub_219BE9054();
      sub_219BE5FC4();
      (*(v21 + 8))(v25, v20);
      v28 = sub_219BDC0E4();
      v29 = (*(v27[11] + 120))(v18, v28, a2, v27[10]);
      sub_218AF1E64(v18, type metadata accessor for FollowingModel);
      v30 = (*(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78)) + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_shortcutsOnboardingManager);
      v31 = v30[3];
      v32 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v32 + 16))(2, v31, v32);
      v51 = v29;
      sub_218AEEF84(0);
      sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
      sub_219BE6EF4();

      return;
    }

    v43 = v23;
    v44 = a2;
    v42 = *(v4 + v48[13]);
    sub_219BE6EC4();
    v50 = v51;
    sub_2187486B4(0);
    sub_2186D560C(&unk_280EE5550, sub_2187486B4, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v26 = v47;
    sub_219BEB1D4();
    if ((*(v21 + 48))(v9, 1, v20) == 1)
    {
      sub_218AF17C4(v9, &unk_280EE5C60, sub_218950B84);
LABEL_12:
      sub_219BE9074();
      (*(v46 + 8))(v12, v26);
      return;
    }

    v33 = v43;
    (*(v21 + 32))(v43, v9, v20);
    sub_219BE5FC4();
    v34 = sub_218F37A90();
    sub_218AF1E64(v15, type metadata accessor for FollowingModel);
    if (!v34)
    {
      (*(v21 + 8))(v33, v20);
      goto LABEL_12;
    }

    v35 = *(v34 + 24);

    v36 = [*(v35 + 16) identifier];
    sub_219BF5414();

    v37 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0xE8));
    v38 = *(*(*__swift_project_boxed_opaque_existential_1(v37, v37[3]) + 16) + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);
    v39 = [*(*(v45 + 24) + 16) identifier];
    if (!v39)
    {
      sub_219BF5414();
      v39 = sub_219BF53D4();
    }

    v40 = sub_219BF53D4();
    v41 = [v38 moveSubscriptionForTagID:v39 beforeTagID:v40];

    if (v41)
    {
      v51 = (*(v48[11] + 88))(v45, v49, v44, v48[10]);
      sub_218AEEF84(0);
      sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
      sub_219BE6EF4();
      (*(v21 + 8))(v43, v20);
      (*(v46 + 8))(v12, v47);
    }

    else
    {
      sub_219BE9074();
      (*(v21 + 8))(v43, v20);
      (*(v46 + 8))(v12, v47);
    }
  }
}

uint64_t sub_218AEAC40(uint64_t a1)
{
  v2 = sub_219BE89F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEAEF4();
  v7[1] = *(*(a1 + 24) + 16);
  (*(v3 + 104))(v5, *MEMORY[0x277D6E0F8], v2);
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  swift_unknownObjectRetain();
  sub_219BE89D4();

  (*(v3 + 8))(v5, v2);
  return swift_unknownObjectRelease();
}

double sub_218AEADC4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85000] & *v2;
  v5 = sub_218AE9ABC(a1, a2);
  v8 = v5;
  v9 = v6;
  v10 = v7;
  if (v11)
  {
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v12 = sub_219BF6F44();
    v22 = sub_219BF61F4();
    sub_2186F20D4(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09EC0;
    v14 = *(a1 + 24);
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v15 = [*(v14 + 16) identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    MEMORY[0x21CECC330](v16, v18);

    v19 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v20 = sub_2186FC3BC();
    *(v13 + 64) = v20;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    *(v13 + 96) = v19;
    *(v13 + 104) = v20;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0xE000000000000000;
    sub_219BE5314("Failed to ignore following tag model, identifier=%{public}@, error=%{public}@", 77, 2, &dword_2186C1000, v12, v22, v13);

    sub_218AEF968(v8, v9, v10, 1);
  }

  else
  {
    (*(*(v4 + 88) + 48))(v5, v6, v7, *(v4 + 80));
    sub_218AEEF84(0);
    sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
    sub_218AEF968(v8, v9, v10, 0);
  }

  return result;
}

double sub_218AEB0D0()
{
  v65 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v65);
  v2 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v4 = v3;
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7B8DC(0);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928(0);
  v11 = v10;
  v57 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v62 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v47 - v14;
  sub_218950ACC(0);
  v60 = v15;
  v64 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218AEF8D4(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v49 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v50 = v0;
  sub_219BE6EC4();
  *&v66[0] = *&v68[0];
  sub_2187486B4(0);
  sub_2186D560C(&unk_280EE5550, sub_2187486B4, MEMORY[0x277D6D8C8]);
  v63 = v17;
  sub_219BE7B94();

  v21 = v49;
  v22 = v17;
  v23 = v60;
  (*(v64 + 16))(v49, v22, v60);
  v24 = *(v19 + 44);
  v25 = v23;
  v26 = sub_2186D560C(&unk_280EE3770, sub_218950ACC, MEMORY[0x277D6EC70]);
  v27 = v21;
  v28 = v63;
  sub_219BF5DF4();
  (*(v64 + 8))(v28, v25);
  sub_219BF5E84();
  if (*(v27 + v24) != *&v68[0])
  {
    v61 = (v57 + 2);
    v55 = (v57 + 4);
    ++v57;
    v64 = v48 + 16;
    v63 = (v48 + 8);
    v51 = MEMORY[0x277D84F90];
    v58 = v24;
    v53 = v4;
    v56 = v26;
    v52 = v2;
    do
    {
      v32 = v27;
      v33 = sub_219BF5EC4();
      v34 = *v61;
      v35 = v59;
      (*v61)(v59);
      v33(v68, 0);
      v36 = v32;
      sub_219BF5E94();
      (*v55)(v62, v35, v11);
      sub_219BE6934();
      v68[3] = v66[3];
      v68[4] = v66[4];
      v37 = v67;
      v69 = v67;
      v68[0] = v66[0];
      v68[1] = v66[1];
      v68[2] = v66[2];
      sub_2189C3F04(v68);
      if (v37 > 3)
      {
        if (v37 < 8)
        {
          (v34)(v9, v62, v11);
          v38 = *(v54 + 36);
          sub_2186D560C(&qword_280EE5760, sub_218950928, MEMORY[0x277D6D730]);
          sub_219BF5DF4();
          sub_219BF5E84();
          v39 = v53;
          v40 = v52;
          v27 = v36;
          if (*&v9[v38] != *&v66[0])
          {
            while (2)
            {
              v42 = sub_219BF5EC4();
              (*v64)(v6);
              v42(v66, 0);
              sub_219BF5E94();
              sub_219BE5FC4();
              (*v63)(v6, v39);
              switch(swift_getEnumCaseMultiPayload())
              {
                case 2u:
                  v41 = type metadata accessor for FollowingAudioModel;
                  goto LABEL_15;
                case 6u:
                  if (*(*(*v40 + 24) + 25))
                  {

                    MEMORY[0x21CECC690](v46);
                    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v51 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_219BF5A14();
                    }

                    sub_219BF5A54();

                    v51 = v70;
                  }

                  else
                  {
                  }

                  goto LABEL_16;
                case 0xBu:

                  sub_218748BF4(0);
                  v44 = *(v43 + 48);
                  sub_218748D40(0);
                  (*(*(v45 - 8) + 8))(v40 + v44, v45);
                  goto LABEL_16;
                case 0x10u:
                  v41 = type metadata accessor for FollowingMySportsModel;
                  goto LABEL_15;
                case 0x11u:
                  v41 = type metadata accessor for FollowingPuzzleHubModel;
                  goto LABEL_15;
                default:
                  v41 = type metadata accessor for FollowingModel;
LABEL_15:
                  sub_218AF1E64(v40, v41);
LABEL_16:
                  sub_219BF5E84();
                  if (*&v9[v38] != *&v66[0])
                  {
                    continue;
                  }

                  goto LABEL_11;
              }
            }
          }

LABEL_11:
          sub_218AF1E64(v9, sub_218A7B8DC);
          (*v57)(v62, v11);
          goto LABEL_12;
        }

        if (v37 == 8)
        {
          (*v57)(v62, v11);
          v27 = v36;
LABEL_12:
          v31 = v58;
          goto LABEL_7;
        }
      }

      v27 = v36;
      (*v57)(v62, v11);
      v31 = v58;
LABEL_7:
      sub_219BF5E84();
    }

    while (*(v27 + v31) != *&v68[0]);
  }

  sub_218AF1E64(v27, sub_218AEF8D4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    sub_218BF2A44(v51);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

double sub_218AEBB80(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 48))(a1, 0, 0x2000000000000000, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AEBCA4(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 24) + 16) identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  sub_218AE9EDC(v4, v6, a2);

  return result;
}

double sub_218AEBD28()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 128))(*((*MEMORY[0x277D85000] & *v0) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_218AEBE94(uint64_t a1)
{
  v2 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  v3 = sub_219BDB854();
  [v2 openURL:v3 options:0 completion:0];
}

void sub_218AEBF1C(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x78)) + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_editorialService);
  swift_beginAccess();
  v4 = *(*__swift_project_boxed_opaque_existential_1(v3, v3[3]) + OBJC_IVAR____TtC7NewsUI216EditorialService_editorialItemProvider);
  swift_unknownObjectRetain();
  v5 = sub_219BF53D4();
  [v4 tappedEditorialItemWithIdentifier_];
  swift_unknownObjectRelease();
}

double sub_218AEBFF0()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 152))(0, *((*MEMORY[0x277D85000] & *v0) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AEC110(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  if (objc_getAssociatedObject(a1, (a1 + 1)))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = v11;
      v5 = [v11 integerValue];
      if (v5 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_218AF1E64(&v14, sub_21880702C);
  }

  v4 = 0;
  v5 = 0;
LABEL_10:
  if (objc_getAssociatedObject(a1, ~v5))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v6 = v11;
      v7 = [v6 integerValue];

      if (((v7 - 675) ^ v5))
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_218AF1E64(&v14, sub_21880702C);
  }

LABEL_18:

  if ((v5 ^ 0xFFFFFD5D))
  {
    return result;
  }

LABEL_19:
  if ([a1 isPurchaser])
  {
    sub_218AEC3DC(1);
    sub_219BE1F84();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = *(v3 + 80);
    v10[3] = *(v3 + 88);
    v10[4] = v9;

    sub_219BE1F74();
  }

  return result;
}

double sub_218AEC3DC(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 184))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AEC4F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = [*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0xA8)) cachedSubscription];
  v6 = [v5 isSubscribed];

  (*(*((v4 & v3) + 0x58) + 192))(a1, v6, *((v4 & v3) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_218AEC674(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_218AEC110(v4);
}

void *sub_218AEC6DC(uint64_t a1)
{
  sub_218AEED7C(0, &qword_280E908A0, MEMORY[0x277D333A0]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getObjectType();
    sub_219BF42D4();
    sub_218AEC4F8(v3);

    return sub_218AF17C4(v3, &qword_280E908A0, MEMORY[0x277D333A0]);
  }

  return result;
}

void sub_218AEC800(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_218AEFAD8();
}

double sub_218AEC860()
{
  v1 = MEMORY[0x277D85000];
  v2 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xA8));
  v3 = [v2 cachedSubscription];
  if (objc_getAssociatedObject(v3, v3 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_218AF1E64(&v16, sub_21880702C);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v4 = v13;
  v5 = [v13 integerValue];
  if (v5 == -1)
  {

    goto LABEL_21;
  }

  v6 = v5;
LABEL_10:
  if (objc_getAssociatedObject(v3, ~v6))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_218AF1E64(&v16, sub_21880702C);
LABEL_18:

    if ((v6 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v7 = v13;
  v8 = [v7 integerValue];

  if (((v8 ^ v6) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v9 = [v2 cachedSubscription];
  v10 = [v9 isPurchaser];

  if ((v10 & 1) == 0)
  {
LABEL_23:
    v11 = [*(v0 + *((*v1 & *v0) + 0xA0)) hasPurchaseTypeAppStore];
    return sub_218AEC3DC(v11);
  }

  v11 = 1;
  return sub_218AEC3DC(v11);
}

uint64_t sub_218AECB00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BDB1E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB1A4();
  v8 = a1;
  sub_218AEC860();

  return (*(v5 + 8))(v7, v4);
}

double sub_218AECBE4(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 200))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_218AECD40(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_218774F78(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x80)]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x90)]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xC8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xE0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xE8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xF0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xF8)]);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0x108)]);
}

void sub_218AED178(void *a1, void *a2, uint64_t a3)
{
  v67 = a1;
  v65 = type metadata accessor for EngagementDismissal(0);
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v4;
  MEMORY[0x28223BE20](v5);
  v66 = &v55 - v6;
  sub_218AEED7C(0, &unk_280EE6610, MEMORY[0x277D31680]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_219BE3794();
  v69 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v55 - v14;
  v15 = sub_219BDBD64();
  v64 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AEED7C(0, &unk_280EE6660, MEMORY[0x277D31550]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - v19;
  v21 = sub_219BE3514();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v71 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v60 = v10;
    v24 = a2;
    sub_219BE39E4();
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {

      sub_218AF17C4(v20, &unk_280EE6660, MEMORY[0x277D31550]);
    }

    else
    {
      v57 = v24;
      v58 = v22;
      v25 = *(v22 + 32);
      v59 = v21;
      v25(v71, v20, v21);
      if (qword_280EE6048 != -1)
      {
        swift_once();
      }

      v26 = sub_219BE5434();
      __swift_project_value_buffer(v26, qword_280F62748);
      v27 = sub_219BE5414();
      v28 = sub_219BF6214();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2186C1000, v27, v28, "FollowingInteractor: didSelectAction", v29, 2u);
        MEMORY[0x21CECF960](v29, -1, -1);
      }

      v30 = sub_219BE39A4();
      v32 = v60;
      if (v31)
      {
        v33 = v31;
        v56 = v30;
      }

      else
      {
        sub_219BDBD54();
        v56 = sub_219BDBD44();
        v33 = v34;
        (*(v64 + 8))(v17, v15);
      }

      v36 = v69;
      v35 = v70;
      sub_219BE39C4();
      v37 = *(v36 + 48);
      if (v37(v9, 1, v32) == 1)
      {
        (*(v36 + 104))(v35, *MEMORY[0x277D31670], v32);
        if (v37(v9, 1, v32) != 1)
        {
          sub_218AF17C4(v9, &unk_280EE6610, MEMORY[0x277D31680]);
        }
      }

      else
      {
        (*(v36 + 32))(v35, v9, v32);
      }

      v38 = sub_219BE39D4();
      v40 = v39;
      (*(v36 + 104))(v12, *MEMORY[0x277D31678], v32);
      sub_2186D560C(&qword_280EE6620, MEMORY[0x277D31680], MEMORY[0x277D31690]);
      sub_219BF5874();
      sub_219BF5874();
      if (v74 == v72 && v75 == v73)
      {
        v41 = 1;
      }

      else
      {
        v41 = sub_219BF78F4();
      }

      v42 = *(v36 + 8);
      v42(v12, v32);

      if (v41)
      {
        v43 = (v68 + *((*MEMORY[0x277D85000] & *v68) + 0xF8));
        __swift_project_boxed_opaque_existential_1(v43, v43[3]);
        sub_219227798(v71);
      }

      v44 = v57;
      if ([v57 style] == 2)
      {
        v45 = v66;
        (*(v58 + 16))(v66, v71, v59);
        v46 = v65;
        (*(v69 + 16))(v45 + *(v65 + 24), v70, v32);
        v47 = v46[8];
        v48 = sub_219BE3C04();
        (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
        v49 = (v45 + v46[5]);
        *v49 = v56;
        v49[1] = v33;
        v50 = (v45 + v46[7]);
        *v50 = v38;
        v50[1] = v40;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
          v52 = v63;
          sub_218AF1820(v45, v63, type metadata accessor for EngagementDismissal);
          v53 = (*(v62 + 80) + 16) & ~*(v62 + 80);
          v54 = swift_allocObject();
          sub_218AF1888(v52, v54 + v53, type metadata accessor for EngagementDismissal);
          sub_219BDD154();
          swift_unknownObjectRelease();
        }

        [v67 dismissViewControllerAnimated:1 completion:0];

        sub_218AF1E64(v45, type metadata accessor for EngagementDismissal);
      }

      else
      {
      }

      v42(v70, v32);
      (*(v58 + 8))(v71, v59);
    }
  }
}

void sub_218AEDA80(uint64_t a1, uint64_t a2)
{
  v24 = sub_219BE35B4();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3514();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v23 = a2;
  sub_219BE35A4();
  (*(v7 + 104))(v9, *MEMORY[0x277D314B0], v6);
  sub_2186D560C(&unk_280EE6680, MEMORY[0x277D31550], MEMORY[0x277D31570]);
  sub_219BF5874();
  sub_219BF5874();
  if (v27 == v26)
  {
    v13 = *(v7 + 8);
    v13(v9, v6);
    v13(v12, v6);
  }

  else
  {
    v14 = sub_219BF78F4();
    v15 = *(v7 + 8);
    v15(v9, v6);
    v15(v12, v6);

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v16 = v24;
  (*(v3 + 16))(v5, v23, v24);
  v17 = (v25 + *((*MEMORY[0x277D85000] & *v25) + 0x108));
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v18 = sub_219BF4784();
  type metadata accessor for FollowingEngagementModel(0);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_title);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  (*(v3 + 32))(v19 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_banner, v5, v16);
  *(v19 + OBJC_IVAR____TtC7NewsUI224FollowingEngagementModel_allowsUserInteraction) = v18 & 1;

  sub_218AECBE4(v21);
}

void sub_218AEDE10(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v132 = a2;
  ObjectType = swift_getObjectType();
  v108 = type metadata accessor for EngagementAction(0);
  MEMORY[0x28223BE20](v108);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDB954();
  v121 = *(v8 - 8);
  v122 = v8;
  MEMORY[0x28223BE20](v8);
  v114 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v123 = &v102 - v11;
  sub_218AEED7C(0, &unk_280EE6610, MEMORY[0x277D31680]);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = &v102 - v15;
  v16 = sub_219BE3794();
  v126 = *(v16 - 8);
  v127 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v102 - v20;
  v112 = sub_219BDBD64();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for EngagementDismissal(0);
  v115 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v23;
  MEMORY[0x28223BE20](v24);
  v120 = &v102 - v25;
  v26 = sub_219BE3514();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v113 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v128 = &v102 - v30;
  MEMORY[0x28223BE20](v31);
  v131 = (&v102 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = &v102 - v34;
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v129 = a1;
  v36 = sub_219BE5434();
  __swift_project_value_buffer(v36, qword_280F62748);
  v37 = *(v27 + 2);
  v133 = a3;
  v124 = v37;
  v125 = v27 + 16;
  v37(v35, a3, v26);
  v38 = sub_219BE5414();
  v39 = sub_219BF6214();
  v40 = os_log_type_enabled(v38, v39);
  v107 = v18;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v134[0] = v104;
    *v41 = 136315138;
    sub_2186D560C(&qword_280EE6670, MEMORY[0x277D31550], MEMORY[0x277D31580]);
    v42 = sub_219BF7894();
    v43 = v21;
    v44 = v4;
    v46 = v45;
    v130 = *(v27 + 1);
    v130(v35, v26);
    v47 = sub_2186D1058(v42, v46, v134);
    v4 = v44;
    v21 = v43;

    *(v41 + 4) = v47;
    _os_log_impl(&dword_2186C1000, v38, v39, "FollowingInteractor: didSelectAction for placement %s", v41, 0xCu);
    v48 = v104;
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x21CECF960](v48, -1, -1);
    MEMORY[0x21CECF960](v41, -1, -1);
  }

  else
  {

    v130 = *(v27 + 1);
    v130(v35, v26);
  }

  v49 = v132;
  v50 = v133;
  v51 = v131;
  if (v132)
  {
    (*(v27 + 13))(v131, *MEMORY[0x277D314B0], v26);
    sub_2186D560C(&unk_280EE6680, MEMORY[0x277D31550], MEMORY[0x277D31570]);
    v52 = v49;
    sub_219BF5874();
    sub_219BF5874();
    if (v134[0] == v134[5] && v134[1] == v134[6])
    {
      v130(v51, v26);
    }

    else
    {
      v53 = sub_219BF78F4();
      v130(v51, v26);

      if ((v53 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v131 = v27;
    v54 = [v52 style];
    v55 = v129;
    if (v54 == 2)
    {
      v130 = v4;
      v132 = v26;
      v124(v128, v50, v26);
      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      v56 = sub_219BE3A14();
      v104 = v52;
      if (v57)
      {
        v102 = v57;
        v103 = v56;
      }

      else
      {
        v58 = v110;
        sub_219BDBD54();
        v103 = sub_219BDBD44();
        v102 = v59;
        (*(v111 + 8))(v58, v112);
      }

      v60 = v118;
      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      sub_219BE3AD4();
      v61 = v126;
      v62 = v127;
      v63 = *(v126 + 48);
      if (v63(v60, 1, v127) == 1)
      {
        (*(v61 + 104))(v21, *MEMORY[0x277D31670], v62);
        if (v63(v60, 1, v62) != 1)
        {
          sub_218AF17C4(v60, &unk_280EE6610, MEMORY[0x277D31680]);
        }
      }

      else
      {
        (*(v61 + 32))(v21, v60, v62);
      }

      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      v64 = sub_219BE3AE4();
      v66 = v65;
      v67 = v119;
      v68 = *(v119 + 32);
      v69 = sub_219BE3C04();
      v70 = v120;
      (*(*(v69 - 8) + 56))(&v120[v68], 1, 1, v69);
      v131[4](v70, v128, v132);
      v71 = (v70 + v67[5]);
      v72 = v102;
      *v71 = v103;
      v71[1] = v72;
      (*(v61 + 32))(v70 + v67[6], v21, v62);
      v73 = (v70 + v67[7]);
      *v73 = v64;
      v73[1] = v66;
      v74 = v130;
      v75 = MEMORY[0x277D85000];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
        v77 = v117;
        sub_218AF1820(v70, v117, type metadata accessor for EngagementDismissal);
        v78 = (*(v115 + 80) + 16) & ~*(v115 + 80);
        v79 = swift_allocObject() + v78;
        v55 = v129;
        sub_218AF1888(v77, v79, type metadata accessor for EngagementDismissal);
        sub_219BDD154();
        swift_unknownObjectRelease();
      }

      sub_218AECBE4(0);
      sub_218718690(v74 + *((*v75 & *v74) + 0xD8), v134);
      __swift_project_boxed_opaque_existential_1(v134, v134[3]);
      sub_219BE3A64();
      sub_218AF1E64(v70, type metadata accessor for EngagementDismissal);
      __swift_destroy_boxed_opaque_existential_1(v134);
      v26 = v132;
      v52 = v104;
    }

    if (![v52 style])
    {
      v80 = [v52 deepLink];
      if (v80)
      {
        v81 = v80;
        sub_219BDB8B4();

        __swift_project_boxed_opaque_existential_1(v55, v55[3]);
        v82 = sub_219BE3A14();
        if (v83)
        {
          v84 = v82;
          v130 = v83;
          v104 = v52;
          v132 = v26;
          v124(v113, v50, v26);
          (*(v121 + 16))(v114, v123, v122);
          __swift_project_boxed_opaque_existential_1(v55, v55[3]);
          v85 = v106;
          sub_219BE3AD4();
          v86 = v126;
          v87 = v127;
          v88 = *(v126 + 48);
          if (v88(v85, 1, v127) == 1)
          {
            v89 = v107;
            (*(v86 + 104))(v107, *MEMORY[0x277D31670], v87);
            if (v88(v85, 1, v87) != 1)
            {
              sub_218AF17C4(v85, &unk_280EE6610, MEMORY[0x277D31680]);
            }
          }

          else
          {
            v89 = v107;
            (*(v86 + 32))(v107, v85, v87);
          }

          __swift_project_boxed_opaque_existential_1(v55, v55[3]);
          v90 = sub_219BE3AE4();
          v92 = v91;
          v93 = v108;
          v94 = *(v108 + 36);
          v95 = sub_219BE3C04();
          v96 = &v109[v94];
          v97 = v109;
          (*(*(v95 - 8) + 56))(v96, 1, 1, v95);
          v131[4](v97, v113, v132);
          v98 = (v97 + v93[5]);
          v99 = v130;
          *v98 = v84;
          v98[1] = v99;
          (*(v121 + 32))(v97 + v93[6], v114, v122);
          (*(v86 + 32))(v97 + v93[7], v89, v87);
          v100 = (v97 + v93[8]);
          *v100 = v90;
          v100[1] = v92;
          v101 = swift_unknownObjectWeakLoadStrong();
          if (v101)
          {
            sub_2193FE478(v97, v101);
            swift_unknownObjectRelease();
          }

          sub_218AF1E64(v97, type metadata accessor for EngagementAction);
          (*(v121 + 8))(v123, v122);
          return;
        }

        (*(v121 + 8))(v123, v122);
      }
    }

LABEL_23:
  }
}

double sub_218AEED68(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

void sub_218AEED7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_218AEEDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218AEFA60();
  sub_219BEA744();
  swift_allocObject();

  sub_219BEA6C4();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = &off_282A6FE78;
  v6[4] = a3;

  sub_219BEA6E4();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = &off_282A6FE78;

  sub_219BEA724();

  sub_219BEA6D4();

  return result;
}

unint64_t sub_218AEEF30()
{
  result = qword_280EC5048;
  if (!qword_280EC5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5048);
  }

  return result;
}

void sub_218AEEFA4(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  sub_218AEF764(0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AEED7C(0, &qword_27CC0DE50, MEMORY[0x277D6D508]);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v42 = &v36 - v8;
  sub_218AEED7C(0, &unk_27CC0DE60, MEMORY[0x277D6D348]);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v39 = &v36 - v12;
  v13 = sub_219BE89F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AEED7C(0, &unk_280E901B0, MEMORY[0x277D33D70]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - v18;
  sub_219BEAF14();
  v43 = a1;
  v20 = *(a1 + 24);
  swift_unknownObjectRetain();
  sub_219BF3324();
  v21 = sub_219BF3344();
  (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
  (*(v14 + 104))(v16, *MEMORY[0x277D6E0F8], v13);
  v45 = 0u;
  v46 = 0u;
  v47 = 1;
  sub_219BE89D4();
  v37 = v20;
  v38 = v2;
  v22 = v39;
  v23 = v40;
  v24 = v41;

  (*(v14 + 8))(v16, v13);
  sub_218AF17C4(v19, &unk_280E901B0, MEMORY[0x277D33D70]);
  v25 = v42;
  sub_218AEF868(v44, v42, &qword_27CC0DE50, MEMORY[0x277D6D508]);
  v26 = sub_219BE6174();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_218AF17C4(v25, &qword_27CC0DE50, MEMORY[0x277D6D508]);
    v28 = 1;
    v29 = v23;
    v30 = v22;
  }

  else
  {
    v30 = v22;
    sub_219BE6154();
    (*(v27 + 8))(v25, v26);
    v28 = 0;
    v29 = v23;
  }

  v31 = sub_219BE5C64();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v30, v28, 1, v31);
  v33 = *(v37 + 27);
  sub_218AEF7E8(v30, v24);
  if ((*(v32 + 48))(v24, 1, v31) == 1)
  {
    v34 = v43;
    if (v33 < 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_218AF17C4(v24, &unk_27CC0DE60, MEMORY[0x277D6D348]);
    sub_218AEBB80(v34);
    return;
  }

  sub_218AEF868(v24, v29, &unk_27CC0DE60, MEMORY[0x277D6D348]);
  v35 = (*(v32 + 88))(v29, v31);
  v34 = v43;
  if (v35 != *MEMORY[0x277D6D338])
  {
    if (v35 != *MEMORY[0x277D6D340])
    {
      (*(v32 + 8))(v29, v31);
      sub_219BF7514();
      __break(1u);
      return;
    }

    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  sub_218AF17C4(v24, &unk_27CC0DE60, MEMORY[0x277D6D348]);
}

void sub_218AEF764(uint64_t a1)
{
  if (!qword_27CC0DE58)
  {
    sub_218AEED7C(255, &unk_27CC0DE60, MEMORY[0x277D6D348]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0DE58);
    }
  }
}

uint64_t sub_218AEF7E8(uint64_t a1, uint64_t a2)
{
  sub_218AEED7C(0, &unk_27CC0DE60, MEMORY[0x277D6D348]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AEF868(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218AEED7C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_218AEF8D4(uint64_t a1)
{
  if (!qword_280E8D4B0)
  {
    sub_218950ACC(255);
    sub_2186D560C(&unk_280EE3770, sub_218950ACC, MEMORY[0x277D6EC70]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D4B0);
    }
  }
}

void sub_218AEF968(id a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_218AEF974(a1, a2, a3);
  }
}

double sub_218AEF974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if ((a3 >> 61) > 2)
  {
    if ((v3 - 3) >= 2)
    {
      return result;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_218AEF9F8(uint64_t a1)
{
  if (!qword_27CC11BD0)
  {
    sub_219BDC104();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11BD0);
    }
  }
}

unint64_t sub_218AEFA60()
{
  result = qword_27CC0DE70;
  if (!qword_27CC0DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0DE70);
  }

  return result;
}

double sub_218AEFAD8()
{
  v1 = (*MEMORY[0x277D85000] & *v0);
  if (([*(v0 + v1[20]) hasPurchaseTypeAppStore] & 1) == 0)
  {
    sub_218AEC3DC(0);
    sub_219BE1F84();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = v1[10];
    v4[3] = v1[11];
    v4[4] = v3;

    sub_219BE1F74();
  }

  return result;
}

double sub_218AEFC4C(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 136))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AEFD68(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 144))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AEFE84(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 152))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AEFFA0(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 160))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AF00BC(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 168))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AF01D8(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 176))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_218AF02F4(uint64_t a1)
{
  v2 = MEMORY[0x277D333A0];
  sub_218AEED7C(0, &qword_280E908A0, MEMORY[0x277D333A0]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_219BF1454();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_218AEC4F8(v5);
  return sub_218AF17C4(v5, &qword_280E908A0, v2);
}

double sub_218AF0420(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *MEMORY[0x277D85000] & *v3;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      (*(*((*MEMORY[0x277D85000] & *v3) + 0x58) + 72))(a1, *((*MEMORY[0x277D85000] & *v3) + 0x50));
      goto LABEL_31;
    }

    if (a3 != 3)
    {
      (*(*((*MEMORY[0x277D85000] & *v3) + 0x58) + 80))(a1, *((*MEMORY[0x277D85000] & *v3) + 0x50));
      goto LABEL_31;
    }

    return result;
  }

  if (a3)
  {
    (*(*((*MEMORY[0x277D85000] & *v3) + 0x58) + 64))(a1, *((*MEMORY[0x277D85000] & *v3) + 0x50));
    goto LABEL_31;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_30;
  }

  v14 = a2;
  v15 = a1;
  v6 = (a1 + 40);
  do
  {
    if (*v6 > 0x3Fu)
    {
      goto LABEL_9;
    }

    v7 = *(v6 - 1);

    sub_219BE20E4();
    if (v17 <= 3)
    {
      if (v17 >= 0)
      {
        goto LABEL_15;
      }
    }

    else if (v17 <= 8)
    {
      goto LABEL_15;
    }

    if (v17 != 0xE900000000000067 || v16 != 0x6E69776F6C6C6F46)
    {
LABEL_15:
      v8 = sub_219BF78F4();

      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_16:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_8:
      j__swift_release(v7);
      goto LABEL_9;
    }

    __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10 && (v11 = v10, v12 = [v10 presentedViewController], v11, v12))
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        [v12 dismissViewControllerAnimated:1 completion:0];
      }

      j__swift_release(v7);
      swift_unknownObjectRelease();
    }

    else
    {
      j__swift_release(v7);
      swift_unknownObjectRelease();
    }

LABEL_9:
    v6 += 16;
    --v5;
  }

  while (v5);
  a2 = v14;
  a1 = v15;
LABEL_30:
  (*(*(v4 + 88) + 56))(a1, a2, 0, *(v4 + 80));
LABEL_31:
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218AF090C()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 112))(*((*MEMORY[0x277D85000] & *v0) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();
  sub_218AEBD28();

  return result;
}

double sub_218AF0A30(uint64_t a1)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61718;
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  if (a1 == 1)
  {
    v4 = 0xE900000000000064;
    v5 = 0x656472616F626E6FLL;
  }

  else if (a1)
  {
    v6 = sub_219BF7894();
    MEMORY[0x21CECC330](v6);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v5 = 0x286E776F6E6B6E75;
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC00000064656472;
    v5 = 0x616F626E4F746F6ELL;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  v7 = sub_219BF6214();
  sub_219BE5314("Rebuilding following based on onboarding state=%{public}@", 57, 2, &dword_2186C1000, v2, v7, v3);

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    return sub_218AE8328(0, 0);
  }

  return result;
}

double sub_218AF0BFC()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 112))(*((*MEMORY[0x277D85000] & *v0) + 0x50));
  sub_218AEEF84(0);
  sub_2186D560C(&qword_280EE56D0, sub_218AEEF84, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

void sub_218AF0D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62748);
  (*(v5 + 16))(v7, a3, v4);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_219BE34B4();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_2186D1058(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2186C1000, v9, v10, "Did receive action for placement=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CECF960](v12, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void sub_218AF0F50(uint64_t a1, void *a2)
{
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F62748);
  v4 = a2;
  oslog = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_219BF7A04();
    v10 = sub_2186D1058(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2186C1000, oslog, v5, "Failed to fetch engagement events for FollowingInteractor, error=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
  }
}

void sub_218AF10E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  sub_218AEED7C(0, qword_280EC88A0, type metadata accessor for EngagementPresentation);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for EngagementPresentation(0);
  v15 = *(v14 - 8);
  v51 = v14;
  v52 = v15;
  MEMORY[0x28223BE20](v14);
  v47 = v16;
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v50 = sub_219BE5434();
  __swift_project_value_buffer(v50, qword_280F62748);
  v20 = sub_219BE5414();
  v21 = sub_219BF6214();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = v2;
    v23 = v19;
    v24 = v7;
    v25 = v10;
    v26 = a1;
    v27 = v5;
    v28 = v4;
    v29 = v22;
    *v22 = 0;
    _os_log_impl(&dword_2186C1000, v20, v21, "FollowingInteractor: didEnqueueImpression", v22, 2u);
    v30 = v29;
    v4 = v28;
    v5 = v27;
    a1 = v26;
    v10 = v25;
    v7 = v24;
    v19 = v23;
    MEMORY[0x21CECF960](v30, -1, -1);
  }

  sub_21912FF50(v31, v13);
  if (v52[6](v13, 1, v51) == 1)
  {
    sub_218AF17C4(v13, qword_280EC88A0, type metadata accessor for EngagementPresentation);
    if (qword_280EE5F98 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v50, qword_280F62610);

    v32 = sub_219BE5414();
    v33 = sub_219BF61F4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53 = v35;
      *v34 = 136315138;
      v36 = sub_219BE39F4();
      v37 = MEMORY[0x21CECC6D0](a1, v36);
      v39 = sub_2186D1058(v37, v38, &v53);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2186C1000, v32, v33, "FollowingInteractor: didEnqueueImpression: could not create EngagementPresentation with options %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x21CECF960](v35, -1, -1);
      MEMORY[0x21CECF960](v34, -1, -1);
    }
  }

  else
  {
    sub_218AF1888(v13, v19, type metadata accessor for EngagementPresentation);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
      sub_219BDBD24();
      v41 = v48;
      sub_218AF1820(v19, v48, type metadata accessor for EngagementPresentation);
      (*(v5 + 16))(v7, v10, v4);
      v42 = *(v52 + 80);
      v52 = v19;
      v43 = (v42 + 16) & ~v42;
      v44 = (v47 + *(v5 + 80) + v43) & ~*(v5 + 80);
      v45 = swift_allocObject();
      sub_218AF1888(v41, v45 + v43, type metadata accessor for EngagementPresentation);
      (*(v5 + 32))(v45 + v44, v7, v4);
      sub_219BDD154();

      (*(v5 + 8))(v10, v4);
      sub_218AF1E64(v52, type metadata accessor for EngagementPresentation);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_218AF1E64(v19, type metadata accessor for EngagementPresentation);
    }
  }
}

uint64_t sub_218AF16F0(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementPresentation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDBD34() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_218FF3584(a1, v1 + v4, v7);
}

uint64_t sub_218AF17C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218AEED7C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218AF1820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AF1888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218AF18F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE3774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3514();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F627F0);
  (*(v10 + 16))(v12, a3, v9);
  (*(v6 + 16))(v8, a2, v5);
  v14 = sub_219BE5414();
  v15 = sub_219BF61F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315394;
    v17 = sub_219BE34B4();
    v27 = v5;
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    v20 = sub_2186D1058(v17, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_219BE3764();
    v23 = v22;
    (*(v6 + 8))(v8, v27);
    v24 = sub_2186D1058(v21, v23, &v29);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2186C1000, v14, v15, "Handle engagement placement=%s, failed with error=%s", v16, 0x16u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v25, -1, -1);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = (type metadata accessor for EngagementDismissal(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BE3514();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  v5 = sub_219BE3794();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  v6 = v1[10];
  v7 = sub_219BE3C04();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_218AF1DF4(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementDismissal(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218FF2D38(a1, v4);
}

uint64_t sub_218AF1E64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218AF1EEC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      sub_218AF2184(0);
      v8 = sub_219BEE274();
      v9 = *(v8 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_219C09BA0;

      *(v11 + v10) = sub_218C40680();
      (*(v9 + 104))(v11 + v10, *MEMORY[0x277D31F88], v8);
      v12 = sub_219BEE594();
      sub_218AF21DC(a1, 2u);
      return v12;
    }
  }

  else
  {
    if (a2)
    {
      sub_218AF2184(0);
      v3 = sub_219BEE274();
      v4 = *(v3 - 8);
      v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_219C09BA0;
      *(v6 + v5) = a1;
      v7 = MEMORY[0x277D31F90];
    }

    else
    {
      sub_218AF2184(0);
      v3 = sub_219BEE274();
      v4 = *(v3 - 8);
      v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_219C09BA0;
      *(v6 + v5) = a1;
      v7 = MEMORY[0x277D31F98];
    }

    (*(v4 + 104))(v6 + v5, *v7, v3);
  }

  return sub_219BEE594();
}

void sub_218AF2184(uint64_t a1)
{
  if (!qword_280E8B900)
  {
    sub_219BEE274();
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B900);
    }
  }
}

double sub_218AF21DC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI218TodayReloadRequestO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_218AF220C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218AF2254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_218AF2298(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_218AF22C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_218AF2308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218AF2364(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  sub_218AF3BEC(0, &qword_280EE4B28, MEMORY[0x277D6DF88]);
  v69 = v4;
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = v63 - v5;
  sub_218AF3B00(0);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for SearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v85);
  v82 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3BCC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953A84(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v80 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v63 - v16;
  sub_218AF3CE0(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3D94(0);
  MEMORY[0x28223BE20](v22 - 8);
  v63[3] = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3D74(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v64 = v63 - v30;
  v63[2] = sub_219BEB1B4();
  v63[1] = v31;
  v65 = v26;
  v32 = *(v26 + 16);
  v66 = a1;
  v32(v28, a1, v25);
  sub_2186D7610(&unk_280EE3700, sub_218AF3D74, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  v33 = *(v19 + 44);
  v34 = sub_2186D7610(&qword_280EE36F8, sub_218AF3D74, MEMORY[0x277D6EC70]);
  sub_219BF5E84();
  if (*&v21[v33] == v87[0])
  {
    v86 = MEMORY[0x277D84F90];
  }

  else
  {
    v76 = (v13 + 56);
    v77 = (v13 + 16);
    v74 = (v13 + 48);
    v75 = (v13 + 8);
    v72 = v13;
    v73 = (v13 + 32);
    v86 = MEMORY[0x277D84F90];
    v78 = v33;
    v79 = v25;
    do
    {
      v43 = sub_219BF5EC4();
      (*v77)(v17);
      v43(v87, 0);
      v44 = v34;
      sub_219BF5E94();
      v45 = sub_219BE6934();
      MEMORY[0x28223BE20](v45);
      v61 = v84;
      v62 = v17;
      sub_21894526C(sub_218AF3E60, &v63[-4]);
      v47 = v46;
      sub_2189539F0(0);
      v49 = v48;
      v50 = sub_2186D7610(&qword_280EE5D08, sub_2189539F0, MEMORY[0x277D6D408]);
      v51 = sub_2186D7610(&unk_280EE5D10, sub_2189539F0, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v47, v49, v50, v51);
      type metadata accessor for SearchModel(0);
      sub_2186D7610(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
      sub_2186D7610(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
      v52 = v81;
      sub_219BE6924();
      (*v76)(v52, 0, 1, v12);
      (*v75)(v17, v12);
      if ((*v74)(v52, 1, v12) == 1)
      {
        sub_218AF3F38(v52, sub_218AF3BCC);
        v42 = v78;
        v34 = v44;
      }

      else
      {
        v53 = *v73;
        (*v73)(v80, v52, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_2191F79AC(0, *(v86 + 2) + 1, 1, v86);
        }

        v42 = v78;
        v34 = v44;
        v55 = *(v86 + 2);
        v54 = *(v86 + 3);
        if (v55 >= v54 >> 1)
        {
          v86 = sub_2191F79AC((v54 > 1), v55 + 1, 1, v86);
        }

        v56 = v86;
        *(v86 + 2) = v55 + 1;
        v53(&v56[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v55], v80, v12);
      }

      v25 = v79;
      sub_219BF5E84();
    }

    while (*&v21[v42] != v87[0]);
  }

  sub_218AF3F38(v21, sub_218AF3CE0);
  v35 = sub_2186D7610(&qword_280EE58A0, sub_218953A84, MEMORY[0x277D6D720]);
  v36 = sub_2186D7610(&qword_280EE58A8, sub_218953A84, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v86, v12, v35, v36);
  type metadata accessor for SearchModel(0);
  sub_2186D7610(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
  v37 = sub_2186D7610(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
  v38 = v64;
  sub_219BEB1A4();
  v39 = sub_218B13AC4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for SearchFeedServiceConfig(0);
  sub_2186D7610(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
  v40 = sub_219BEEFC4();

  v41 = 0;
  if (v40)
  {
    v41 = sub_219BEDC74();
  }

  else
  {
    v87[1] = 0;
    v87[2] = 0;
  }

  v87[0] = v40;
  v88 = v41;
  sub_219BEB2C4();
  sub_21885AB78(v39);
  sub_219BE78E4();
  __swift_project_boxed_opaque_existential_1(v87, v88);
  if (sub_219BE6E54())
  {
    v57 = v68;
    v58 = v67;
    v59 = v69;
    (*(v68 + 104))(v67, *MEMORY[0x277D6DF80], v69);
  }

  else
  {
    v61 = v37;
    v58 = v67;
    sub_219BE8584();
    v59 = v69;
    v57 = v68;
  }

  v71(v58);
  (*(v57 + 8))(v58, v59);
  (*(v65 + 8))(v38, v25);
  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t sub_218AF2ED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a3;
  v87 = a2;
  v91 = a4;
  v5 = sub_219BF04A4();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v83 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  sub_218A12878(0);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BF0BD4();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v77 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BF0F34();
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v86 = v21;
  v22 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v71 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  v27 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v27);
  v76 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v78 = &v71 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v71 - v32;
  sub_2189539F0(0);
  v35 = v34;
  v90 = a1;
  sub_219BE5FC4();
  v79 = v27;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v40 = v83;
    v39 = v84;
    v41 = v85;
    v86 = v9;
    if (!EnumCaseMultiPayload)
    {

      sub_2186F8128(0);
      v43 = type metadata accessor for SearchFeedGapLocation;
      v44 = &v33[*(v42 + 48)];
LABEL_10:
      sub_218AF3F38(v44, v43);
      return (*(*(v35 - 8) + 16))(v91, v90, v35);
    }

    v72 = *(v88 + 32);
    v73 = v88 + 32;
    (v72)(v12, v33, v89);
    v59 = v87[1];
    v60 = v40;
    v74 = v12;
    sub_219BF07D4();
    v61 = sub_219BF03E4();
    v63 = v62;
    v84 = v39[1];
    (v84)(v60, v41);
    v64 = sub_2188537B8(v61, v63, v59);

    if (v64)
    {
      v65 = v89;
      v66 = v74;
      sub_219BF07D4();
      sub_219BF0404();
      (v84)(v60, v41);
      v67 = v77;
      sub_219BF07E4();
      sub_218953A84(0);
      v68 = v75;
      sub_219BE6934();
      sub_2190B8EF8();
      sub_218AF3F38(v68, type metadata accessor for SearchSectionDescriptor);
      v69 = v86;
      sub_219BEE184();
      swift_unknownObjectRelease();

      (*(v80 + 8))(v67, v82);
      v70 = v78;
      (v72)(v78, v69, v65);
      swift_storeEnumTagMultiPayload();
      sub_218AF3ED4(v70, v76);
      sub_2186D7610(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
      sub_219BE5FB4();
      sub_218AF3F38(v70, type metadata accessor for SearchModel);
      return (*(v88 + 8))(v66, v65);
    }

    (*(v88 + 8))(v74, v89);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        (*(*(v35 - 8) + 16))(v91, v90, v35);
        sub_2186EB308(0);
        return (*(*(v37 - 8) + 8))(v33, v37);
      }

      v43 = type metadata accessor for SearchModel;
      v44 = v33;
      goto LABEL_10;
    }

    v89 = v22;
    v84 = *(v22 + 32);
    v85 = v22 + 32;
    (v84)(v26, v33, v86);
    v88 = *v87;
    sub_219BF07D4();
    v45 = sub_219BF0F14();
    v46 = v74;
    v83 = *(v73 + 8);
    (v83)(v20, v74);
    v47 = [v45 identifier];
    swift_unknownObjectRelease();
    v48 = sub_219BF5414();
    v50 = v49;

    LOBYTE(v48) = sub_2188537B8(v48, v50, v88);

    if (v48)
    {
      v51 = v86;
      sub_219BF07D4();
      sub_219BF0F14();
      (v83)(v20, v46);
      v52 = v77;
      v53 = v51;
      sub_219BF07E4();
      sub_218953A84(0);
      v54 = v75;
      sub_219BE6934();
      sub_2190B8EF8();
      sub_218AF3F38(v54, type metadata accessor for SearchSectionDescriptor);
      v55 = sub_219BEBD44();
      v56 = v72;
      (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
      v57 = v71;
      sub_219BEE204();
      swift_unknownObjectRelease();

      sub_218AF3F38(v56, sub_218A12878);
      (*(v80 + 8))(v52, v82);
      v58 = v78;
      (v84)(v78, v57, v53);
      swift_storeEnumTagMultiPayload();
      sub_218AF3ED4(v58, v76);
      sub_2186D7610(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
      sub_219BE5FB4();
      sub_218AF3F38(v58, type metadata accessor for SearchModel);
      return (*(v89 + 8))(v26, v53);
    }

    (*(v89 + 8))(v26, v86);
  }

  return (*(*(v35 - 8) + 16))(v91, v90, v35);
}

uint64_t sub_218AF39DC(uint64_t a1)
{
  v2 = sub_218AF3F98();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218AF3A1C()
{
  result = qword_280EAEF78;
  if (!qword_280EAEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF78);
  }

  return result;
}

void sub_218AF3B00(uint64_t a1)
{
  if (!qword_280EE7578)
  {
    sub_2189539F0(255);
    sub_2186D7610(&qword_280EE5D08, sub_2189539F0, MEMORY[0x277D6D408]);
    sub_2186D7610(&unk_280EE5D10, sub_2189539F0, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7578);
    }
  }
}

void sub_218AF3BEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D7610(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_2186D7610(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218AF3CE0(uint64_t a1)
{
  if (!qword_280E8D498)
  {
    sub_218AF3D74(255);
    sub_2186D7610(&qword_280EE36F8, sub_218AF3D74, MEMORY[0x277D6EC70]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D498);
    }
  }
}

void sub_218AF3D94(uint64_t a1)
{
  if (!qword_280EE74A8)
  {
    sub_218953A84(255);
    sub_2186D7610(&qword_280EE58A0, sub_218953A84, MEMORY[0x277D6D720]);
    sub_2186D7610(&qword_280EE58A8, sub_218953A84, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE74A8);
    }
  }
}

void sub_218AF3E80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218AF3ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AF3F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218AF3F98()
{
  result = qword_280EAEF80;
  if (!qword_280EAEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF80);
  }

  return result;
}

uint64_t sub_218AF400C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_218AF4060@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD20, &protocolRef_FCOfflineArticleManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for AudioFeedRoutingEvaluator();
    v8 = swift_allocObject();
    result = sub_2186CB1F0(&v9, v8 + 16);
    *(v8 + 56) = v5;
    *(v8 + 64) = v6;
    a2[3] = v7;
    a2[4] = &off_282A56BF0;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218AF41B4(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAD990, &protocol descriptor for AudioCPListSectionProviderType, 1);
  result = sub_219BE1E34();
  if (v28)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280ECF740, &protocol descriptor for AudioDataManagerType, 0);
    result = sub_219BE1E34();
    v8 = v25;
    if (v25)
    {
      v9 = v26;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v13;
      v16 = type metadata accessor for AudioCPListSectionProvider();
      v24[3] = v16;
      v24[4] = &off_282A6D5A8;
      v24[0] = v15;
      type metadata accessor for AudioCPListTemplateController();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v24, v16);
      v19 = MEMORY[0x28223BE20](v18);
      v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = sub_218AFD3C8(v4, v6, *v21, v8, v9, v17);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v24);
      __swift_destroy_boxed_opaque_existential_1(v27);
      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218AF44E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsAudioListeningProgressProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC0DF60, &protocol descriptor for AudioCPInterfaceController, 1);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v9)
  {
    v7 = type metadata accessor for AudioCPListItemFactory();
    v8 = swift_allocObject();
    v8[2] = v5;
    sub_2186CB1F0(&v13, (v8 + 3));
    v8[8] = v6;
    result = sub_2186CB1F0(&v11, (v8 + 9));
    v8[14] = v9;
    v8[15] = v10;
    a2[3] = v7;
    a2[4] = &off_282A93358;
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_218AF4700@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsAudioPlaybackQueue();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[4];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC528, &protocol descriptor for AudioCPListItemFactoryType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE26A8, &protocol descriptor for AudioCPListSectionAudioQueuesProcessorType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_218AFD700(v5, v6, *v10, *v15);

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = type metadata accessor for AudioCPListSectionProvider();
    a2[3] = result;
    a2[4] = &off_282A6D5A8;
    *a2 = v17;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218AF4A04@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AudioCPListSectionAudioQueuesProcessor();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A3AE60;
  *a1 = result;
  return result;
}

void *sub_218AF4A4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType, 1);
  result = sub_219BE1E34();
  if (!v12[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE89D0, MEMORY[0x277D302C8], 1);
  result = sub_219BE1E34();
  if (!v11[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v9)
  {
    v3 = v10;
    v4 = type metadata accessor for AudioActionSheetProvider();
    v5 = objc_allocWithZone(v4);
    sub_218718690(v12, &v5[OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_headlineConverter]);
    sub_218718690(v11, &v5[OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_listeningProgressManager]);
    v6 = &v5[OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_commandCenter];
    *v6 = v9;
    *(v6 + 1) = v3;
    v8.receiver = v5;
    v8.super_class = v4;
    v7 = objc_msgSendSuper2(&v8, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218AF4BE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BDD274();
    result = sub_219BE1E24();
    if (result)
    {
      v5 = sub_219BDDEC4();
      swift_allocObject();
      result = sub_219BDDEB4();
      v6 = MEMORY[0x277D2FDB0];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218AF4CF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718410(0, &unk_280EE8C68, sub_21872C894, MEMORY[0x277D2FFD8]);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    result = sub_218AFDECC();
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AF4D84(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE89D0, MEMORY[0x277D302C8], 1);
  result = sub_219BE1E34();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for NewsAudioListeningProgressProvider();
      v4 = swift_allocObject();
      sub_2186CB1F0(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218AF4ED4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE27F4();
  MEMORY[0x28223BE20](v4);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF6674();
  MEMORY[0x28223BE20](v7);
  v157 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF6694();
  v153 = *(v9 - 1);
  v154 = v9;
  MEMORY[0x28223BE20](v9);
  v156 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED1D4();
  MEMORY[0x28223BE20](v11 - 8);
  v155 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBD34();
  MEMORY[0x28223BE20](v13 - 8);
  v152 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  MEMORY[0x28223BE20](TrackData);
  v151 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C84E8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  v17 = v16;
  MEMORY[0x28223BE20](v16);
  v148 = &v120 - v18;
  v19 = type metadata accessor for AudioState(0);
  MEMORY[0x28223BE20](v19 - 8);
  v149 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC480, &protocol descriptor for AudioFeedConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v199)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED3FB0, &protocol descriptor for AudioHeroStoreType, 1);
  result = sub_219BE1E34();
  if (!v197)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC89E0, &protocol descriptor for AudioPlaylistStoreType, 1);
  result = sub_219BE1E34();
  if (!v195)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB5390, &protocol descriptor for AudioRecentlyPlayedStoreType, 1);
  result = sub_219BE1E34();
  if (!v193)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBF718, &protocol descriptor for AudioSuggestionsStoreType, 1);
  result = sub_219BE1E34();
  if (!v191)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v147 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  v146 = result;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E2A8, &protocolRef_FCAudioPlaylistType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType, 1);
  result = sub_219BE1E34();
  if (!v189[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E9BEF0, &protocol descriptor for AudioCompletedListeningProcessorType, 1);
  result = sub_219BE1E34();
  if (!v188)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v145 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v140 = v4;
  v141 = v22;
  v142 = v6;
  v143 = v17;
  v144 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730, MEMORY[0x277D324C8], 0);
  result = sub_219BE1E34();
  v139 = v185;
  if (v185)
  {
    v130 = v186;
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v198, v199);
    v138 = &v120;
    v24 = MEMORY[0x28223BE20](v23);
    v26 = (&v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v196, v197);
    v137 = &v120;
    v29 = MEMORY[0x28223BE20](v28);
    v31 = (&v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31, v29);
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v194, v195);
    v136 = &v120;
    v34 = MEMORY[0x28223BE20](v33);
    v36 = (&v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36, v34);
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v192, v193);
    v135 = &v120;
    v39 = MEMORY[0x28223BE20](v38);
    v41 = (&v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41, v39);
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v190, v191);
    v134 = &v120;
    v44 = MEMORY[0x28223BE20](v43);
    v46 = (&v120 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46, v44);
    v48 = __swift_mutable_project_boxed_opaque_existential_1(v187, v188);
    v133 = &v120;
    v49 = MEMORY[0x28223BE20](v48);
    v51 = (&v120 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51, v49);
    v53 = *v26;
    v54 = *v31;
    v55 = *v36;
    v56 = *v41;
    v57 = *v46;
    v58 = *v51;
    v124 = type metadata accessor for AudioFeedConfigManager();
    v184 = &off_282A71790;
    v183 = v124;
    v182[0] = v53;
    v123 = type metadata accessor for AudioHeroStore();
    v181 = &off_282A2E6F0;
    v180 = v123;
    v179[0] = v54;
    v122 = type metadata accessor for AudioPlaylistStore();
    v178 = &off_282A40D18;
    v177 = v122;
    v176[0] = v55;
    v121 = type metadata accessor for AudioRecentlyPlayedStore();
    v175 = &off_282A92798;
    v174 = v121;
    v173[0] = v56;
    v120 = type metadata accessor for AudioSuggestionsStore();
    v172 = &off_282A86148;
    v171 = v120;
    v170[0] = v57;
    v59 = sub_219BDEAC4();
    v169 = &off_282A3ADB0;
    v168 = v59;
    v167[0] = v58;
    v125 = type metadata accessor for AudioDataManager();
    v60 = objc_allocWithZone(v125);
    v61 = __swift_mutable_project_boxed_opaque_existential_1(v182, v183);
    v132 = &v120;
    v62 = MEMORY[0x28223BE20](v61);
    v64 = (&v120 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))(v64, v62);
    v66 = __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
    v131 = &v120;
    v67 = MEMORY[0x28223BE20](v66);
    v69 = (&v120 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69, v67);
    v71 = __swift_mutable_project_boxed_opaque_existential_1(v176, v177);
    v129 = &v120;
    v72 = MEMORY[0x28223BE20](v71);
    v74 = (&v120 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74, v72);
    v76 = __swift_mutable_project_boxed_opaque_existential_1(v173, v174);
    v128 = &v120;
    v77 = MEMORY[0x28223BE20](v76);
    v79 = (&v120 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))(v79, v77);
    v81 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    v127 = &v120;
    v82 = MEMORY[0x28223BE20](v81);
    v84 = (&v120 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))(v84, v82);
    v86 = __swift_mutable_project_boxed_opaque_existential_1(v167, v168);
    v126 = &v120;
    v87 = MEMORY[0x28223BE20](v86);
    v89 = (&v120 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))(v89, v87);
    v91 = *v64;
    v92 = *v69;
    v93 = *v74;
    v94 = *v79;
    v95 = *v84;
    v96 = *v89;
    v166[4] = &off_282A71790;
    v166[3] = v124;
    v166[0] = v91;
    v165[4] = &off_282A2E6F0;
    v165[3] = v123;
    v165[0] = v92;
    v164[4] = &off_282A40D18;
    v164[3] = v122;
    v164[0] = v93;
    v163[3] = v121;
    v163[4] = &off_282A92798;
    v163[0] = v94;
    v162[3] = v120;
    v162[4] = &off_282A86148;
    v162[0] = v95;
    v161[3] = v59;
    v161[4] = &off_282A3ADB0;
    v161[0] = v96;
    v97 = OBJC_IVAR____TtC7NewsUI216AudioDataManager_state;
    v124 = OBJC_IVAR____TtC7NewsUI216AudioDataManager_state;
    v98 = type metadata accessor for AudioFeedTrack(0);
    v99 = v148;
    (*(*(v98 - 8) + 56))(v148, 1, 1, v98);
    v100 = v151;
    swift_storeEnumTagMultiPayload();
    v101 = v152;
    sub_219BDBBD4();
    v102 = v100;
    v103 = MEMORY[0x277D84F90];
    sub_21873703C(v99, MEMORY[0x277D84F90], v102, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v101, v149);
    sub_2187C84E8(0, &qword_280EE7B88, type metadata accessor for AudioState, MEMORY[0x277D6CB60]);
    swift_allocObject();
    *(v60 + v97) = sub_219BE20D4();
    v151 = OBJC_IVAR____TtC7NewsUI216AudioDataManager_updateQueue;
    v152 = sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    sub_219BED1C4();
    (*(v153 + 104))(v156, *MEMORY[0x277D85268], v154);
    *&v159[0] = v103;
    sub_21870788C(&qword_280E8E3C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v104 = MEMORY[0x277D83940];
    v154 = MEMORY[0x277D83940];
    sub_2187C84E8(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    sub_21872CCAC();
    sub_219BF7164();
    *&v151[v60] = sub_219BF66D4();
    v105 = OBJC_IVAR____TtC7NewsUI216AudioDataManager_updateDeduper;
    *&v159[0] = MEMORY[0x277D84F90];
    sub_21870788C(&qword_280EE73D0, MEMORY[0x277D6CD10], MEMORY[0x277D6CD18]);
    sub_2187C84E8(0, &qword_280E8F5E0, MEMORY[0x277D6CD10], v104);
    sub_218735780();
    sub_219BF7164();
    sub_2187364C8(0, &qword_280EE7C20, type metadata accessor for AudioState);
    swift_allocObject();
    *(v60 + v105) = sub_219BE2004();
    sub_218718690(v166, v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager);
    sub_218718690(v165, v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_heroStore);
    sub_218718690(v164, v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore);
    sub_218718690(v163, v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_recentlyPlayedStore);
    sub_218718690(v162, v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore);
    v106 = v146;
    *(v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_readingHistory) = v146;
    *(v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_audioPlaylist) = v141;
    sub_218718690(v189, v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_headlineConverter);
    sub_218718690(v161, v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_completedListeningProcessor);
    *(v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_bundleSubscriptionManager) = v145;
    v107 = v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedContextFactory;
    v108 = v130;
    *v107 = v139;
    v107[1] = v108;
    v157 = v106;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v109 = sub_219BE20B4();

    *(v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_topOfFeedTrack) = v109;

    v110 = sub_219BE20B4();

    *(v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_dailyBriefingTrack) = v110;
    sub_2187C84E8(0, &qword_280E8F360, type metadata accessor for AudioFeedTrack, v154);

    v111 = sub_219BE20B4();

    *(v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_upNextTracks) = v111;

    v112 = sub_219BE20B4();

    *(v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestedTracks) = v112;

    v113 = sub_219BE20B4();

    *(v60 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_recentlyPlayedTracks) = v113;
    v160.receiver = v60;
    v160.super_class = v125;
    v114 = objc_msgSendSuper2(&v160, sel_init);
    v115 = swift_allocObject();
    *(v115 + 16) = v114;
    v116 = v114;
    sub_21872DB4C(sub_218AFDDC0, v115);

    v117 = sub_219BF66A4();
    sub_218718690(v164, v159);
    sub_218718690(v163, v158);
    v118 = swift_allocObject();
    sub_2186CB1F0(v159, v118 + 16);
    *(v118 + 56) = v116;
    sub_2186CB1F0(v158, v118 + 64);
    sub_219BE2F74();

    sub_219BE20F4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v159);
    __swift_destroy_boxed_opaque_existential_1(v189);
    __swift_destroy_boxed_opaque_existential_1(v161);
    __swift_destroy_boxed_opaque_existential_1(v162);
    __swift_destroy_boxed_opaque_existential_1(v163);
    __swift_destroy_boxed_opaque_existential_1(v164);
    __swift_destroy_boxed_opaque_existential_1(v165);
    __swift_destroy_boxed_opaque_existential_1(v166);
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(v170);
    __swift_destroy_boxed_opaque_existential_1(v173);
    __swift_destroy_boxed_opaque_existential_1(v176);
    __swift_destroy_boxed_opaque_existential_1(v179);
    __swift_destroy_boxed_opaque_existential_1(v182);
    __swift_destroy_boxed_opaque_existential_1(v187);
    __swift_destroy_boxed_opaque_existential_1(v190);
    __swift_destroy_boxed_opaque_existential_1(v192);
    __swift_destroy_boxed_opaque_existential_1(v194);
    __swift_destroy_boxed_opaque_existential_1(v196);
    result = __swift_destroy_boxed_opaque_existential_1(v198);
    v119 = v144;
    *v144 = v116;
    v119[1] = &off_282A88830;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_218AF667C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    [result addObserver_];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AF6710@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740, &protocol descriptor for AudioDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for AudioIntentHandler();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(&v12, (v7 + 2));
    v7[7] = v10;
    v7[8] = v11;
    v7[9] = v8;
    v7[10] = v9;
    v7[11] = v5;
    a2[3] = v6;
    a2[4] = &off_282A50108;
    *a2 = v7;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218AF68DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC480, &protocol descriptor for AudioFeedConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40, &protocolRef_FCPaidAccessCheckerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0, MEMORY[0x277D34178], 1);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E220, &protocolRef_FCAVAssetFactoryType);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for AudioFeedConfigManager();
    v23[3] = v13;
    v23[4] = &off_282A71790;
    v23[0] = v12;
    v14 = type metadata accessor for AudioHeadlineConverter();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v13);
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[5] = v13;
    v15[6] = &off_282A71790;
    v15[2] = v21;
    v15[7] = v5;
    sub_2186CB1F0(&v24, (v15 + 8));
    v15[13] = v6;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    a2[3] = v14;
    a2[4] = &off_282A6A020;
    *a2 = v15;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_218AF6C0C()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C709C(0, qword_280E98578, &protocol descriptor for AudioPlaybackOptionsAlertPresenterType, 1);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_219BE19F4();

  (*(v1 + 8))(v3, v0);
  sub_2186C709C(0, qword_280EB5750, &protocol descriptor for AudioActionSheetProviderType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC59F8, &protocol descriptor for AudioUIMenuProviderType, 1);
  sub_219BE2914();

  return result;
}

void *sub_218AF6DEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8B88, MEMORY[0x277D300F8], 1);
  result = sub_219BE1E34();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EB5750, &protocol descriptor for AudioActionSheetProviderType, 1);
    result = sub_219BE1E34();
    if (v8)
    {
      v5 = type metadata accessor for AudioPlaybackOptionsAlertPresenter();
      v6 = swift_allocObject();
      sub_2186CB1F0(&v9, v6 + 16);
      result = sub_2186CB1F0(&v7, v6 + 56);
      a2[3] = v5;
      a2[4] = &off_282A9A7D8;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218AF6F28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType, 1);
  result = sub_219BE1E34();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE89D0, MEMORY[0x277D302C8], 1);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v7)
  {
    v5 = type metadata accessor for AudioUIMenuProvider();
    v6 = swift_allocObject();
    sub_2186CB1F0(&v11, v6 + 16);
    result = sub_2186CB1F0(&v9, v6 + 56);
    *(v6 + 96) = v7;
    *(v6 + 104) = v8;
    a2[3] = v5;
    a2[4] = &protocol witness table for AudioUIMenuProvider;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218AF709C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType, 1);
  result = sub_219BE1E34();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC59F8, &protocol descriptor for AudioUIMenuProviderType, 1);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = sub_219BDE144();

    v7 = type metadata accessor for AudioActionHandler();
    v8 = swift_allocObject();
    sub_2186CB1F0(&v13, (v8 + 2));
    sub_2186CB1F0(&v11, (v8 + 7));
    v8[12] = v5;
    v8[13] = v9;
    v8[14] = v10;
    v8[15] = v6;
    a2[3] = v7;
    result = sub_21870788C(qword_280ED40B0, type metadata accessor for AudioActionHandler, &protocol conformance descriptor for AudioActionHandler);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218AF72DC()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C709C(0, &qword_280EE8D30, MEMORY[0x277D2FD00], 1);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF00], v0);
  sub_219BE19F4();

  return (*(v1 + 8))(v3, v0);
}

void *sub_218AF741C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872CD34(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC27D0, &protocol descriptor for AudioPlaybackTrackerType, 1);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v7 = v13;
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType, 1);
  result = sub_219BE1E34();
  if (v12)
  {
    v9 = type metadata accessor for NowPlayingPresenter();
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    sub_2186CB1F0(&v15, (v10 + 4));
    v10[9] = v7;
    v10[10] = v8;
    sub_2186CB1F0(&v11, (v10 + 11));
    a2[3] = v9;
    result = sub_21870788C(&unk_280ED0E10, type metadata accessor for NowPlayingPresenter, &unk_219C09BF4);
    a2[4] = result;
    *a2 = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_218AF767C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDE5E4();
  if (sub_219BE1E24())
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218AF76E4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioApplicationStateMonitor();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21870788C(&unk_280EB5740, type metadata accessor for AudioApplicationStateMonitor, &unk_219C4F2C0);
    sub_219BE2C34();

    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AF77C4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EA6D90, &protocol descriptor for AudioScheduledRefreshManagerType, 0);
  result = sub_219BE1E34();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE29A4();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AF788C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EA6D90, &protocol descriptor for AudioScheduledRefreshManagerType, 0);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_219BE2A04();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AF7934@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  type metadata accessor for ShareLinkProvider();
  *(swift_allocObject() + 16) = 1;
  sub_21870788C(&qword_280ED5390, type metadata accessor for ShareLinkProvider, &protocol conformance descriptor for ShareLinkProvider);
  v5 = type metadata accessor for MailShareLinkTextProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v21 = v5;
  v22 = sub_21870788C(&qword_280EBDE68, type metadata accessor for MailShareLinkTextProvider, &protocol conformance descriptor for MailShareLinkTextProvider);
  v20 = v6;
  v7 = sub_219BF3C24();
  swift_allocObject();
  v8 = sub_219BF3C14();
  v24 = v7;
  v25 = MEMORY[0x277D340C0];
  v23 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E92740, MEMORY[0x277D31B90], 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E92728, MEMORY[0x277D31BC0], 1);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E92710, MEMORY[0x277D31BD0], 1);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_2186CB1F0(&v15, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E92718, MEMORY[0x277D31BC8], 1);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E92750, MEMORY[0x277D31B88], 1);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2186CB1F0(&v11, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40, &protocolRef_FCPaidAccessCheckerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = sub_219BF4364();
    swift_allocObject();
    result = sub_219BF4354();
    v10 = MEMORY[0x277D343E0];
    a2[3] = v9;
    a2[4] = v10;
    *a2 = result;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_218AF7D5C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE5D84();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v6[0])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BDE124();

    v4 = sub_219BDED24();
    swift_allocObject();
    v5 = sub_219BDED14();
    v6[3] = v4;
    v6[4] = sub_21870788C(&qword_280EE8998, MEMORY[0x277D302F0], MEMORY[0x277D302E8]);
    v6[0] = v5;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218AF7F0C()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioSuggestionsStore();
  sub_219BE2904();
  v4 = *MEMORY[0x277D6CF10];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_2186C709C(0, qword_280EB55C8, &protocol descriptor for AudioIntentsDataProviderType, 1);
  sub_219BE2914();

  type metadata accessor for AudioIntents();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, &unk_280E9BEF0, &protocol descriptor for AudioCompletedListeningProcessorType, 1);
  sub_219BE2914();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioListeningProgressRecorder();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioPlayingItemHistoryRecorder();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioNextTrackAutoPrewarmer();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioAutoNextTrackHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioAutoClosePlayerHandler(0);
  sub_219BE2904();
  sub_219BE19D4();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioErrorHandler();
  sub_219BE2904();
  v5(v3, *MEMORY[0x277D6CF00], v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioPlaylistSweeper();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for EndOfTrackNotificationScheduler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BDEAE4();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BDE9B4();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BDE9D4();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioAppTerminationHandler();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BDE964();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioBuddyTrackQueueScheduler(0);
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioUnfinishedTrackRescuer();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioFeedContentPrefetcher();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_218718410(0, &unk_280EE8C68, sub_21872C894, MEMORY[0x277D2FFD8]);
  sub_219BE2904();

  sub_2186E7CF0(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE8988, MEMORY[0x277D30308], 1);
  sub_219BE2914();

  sub_219BDE5E4();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_218718410(0, &unk_280EE8E80, sub_218731DB4, MEMORY[0x277D2F9C0]);
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, &qword_280EB91A0, &protocol descriptor for AudioSuggestionsServiceType, 1);
  sub_219BE2914();

  type metadata accessor for AudioApplicationStateMonitor();
  sub_219BE2904();

  type metadata accessor for AudioSessionManager();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  type metadata accessor for AudioPlaybackWidgetUpdater();
  sub_219BE2904();
  v5(v3, v4, v0);
  sub_219BE19F4();

  return (v6)(v3, v0);
}

void *sub_218AF8CF0(void *a1)
{
  v2 = sub_219BE1BF4();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BE27F4();
  MEMORY[0x28223BE20](v40);
  v41 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BF6674();
  MEMORY[0x28223BE20](v39);
  v38 = sub_219BF6694();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB91A0, &protocol descriptor for AudioSuggestionsServiceType, 1);
  result = sub_219BE1E34();
  if (!v49)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (!v47[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  v37 = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v36 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0, MEMORY[0x277D34178], 1);
  result = sub_219BE1E34();
  if (!v46[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v33 = v11;
  v35 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187C84E8(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  v34 = result;
  if (result)
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(&v48, v49);
    v32[2] = v32;
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v18 = type metadata accessor for AudioSuggestionsService();
    v45[3] = v18;
    v45[4] = &off_282A85760;
    v45[0] = v17;
    type metadata accessor for AudioSuggestionsStore();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v45, v18);
    v32[1] = v32;
    v21 = MEMORY[0x28223BE20](v20);
    v23 = (v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = *v23;
    v44[4] = &off_282A85760;
    v44[3] = v18;
    v44[0] = v25;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    sub_219BED194();
    (*(v6 + 104))(v8, *MEMORY[0x277D85268], v38);
    v26 = MEMORY[0x277D84F90];
    v43 = MEMORY[0x277D84F90];
    sub_21870788C(&qword_280E8E3C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v27 = MEMORY[0x277D83940];
    sub_2187C84E8(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    sub_21872CCAC();
    sub_219BF7164();
    v19[15] = sub_219BF66D4();
    v43 = v26;
    sub_21870788C(&qword_280EE73D0, MEMORY[0x277D6CD10], MEMORY[0x277D6CD18]);
    sub_2187C84E8(0, &qword_280E8F5E0, MEMORY[0x277D6CD10], v27);
    sub_218735780();
    sub_219BF7164();
    sub_21871C83C(0, &unk_280EE7C10, &type metadata for AudioSuggestions);
    swift_allocObject();
    v19[16] = sub_219BE2004();
    sub_218718690(v44, (v19 + 2));
    sub_218718690(v47, (v19 + 7));
    v28 = v33;
    v19[12] = v37;
    v19[13] = v28;
    sub_218718690(v46, (v19 + 17));
    v29 = MEMORY[0x277D6CA70];
    sub_2187C84E8(0, &qword_280E8C0D8, MEMORY[0x277D6CA70], MEMORY[0x277D84560]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C09BA0;
    sub_219BE1BE4();
    v43 = v30;
    sub_21870788C(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_2187C84E8(0, &qword_280E8F610, v29, v27);
    sub_218711654();
    sub_219BF7164();
    sub_21872CD9C(0);
    swift_allocObject();
    v31 = sub_219BE2D14();
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v19[14] = v31;
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(&v48);
    return v19;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_218AF969C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = sub_219BDE144();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740, &protocol descriptor for AudioDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v9 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_dailyBriefingTrack);

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (v8[3])
  {
    v7 = type metadata accessor for AudioIntentsDataProvider();
    swift_allocObject();
    result = sub_21875C8AC(v5, v6, v8);
    a2[3] = v7;
    a2[4] = &off_282A79600;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218AF9838(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB55C8, &protocol descriptor for AudioIntentsDataProviderType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for AudioIntentsDataProvider();
    v20[3] = v8;
    v20[4] = &off_282A79600;
    v20[0] = v7;
    type metadata accessor for AudioIntents();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v18 = v8;
    v19 = &off_282A79600;
    v17[0] = v15;
    sub_218718690(v17, v9 + 16);
    __swift_project_boxed_opaque_existential_1(v17, v18);

    sub_219BE20F4();

    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AF9AAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0, MEMORY[0x277D34178], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    v4 = sub_219BDEAC4();
    swift_allocObject();
    result = sub_219BDEAB4();
    a2[3] = v4;
    a2[4] = &off_282A3ADB0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AF9B5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = sub_219BDE124();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE89D0, MEMORY[0x277D302C8], 1);
    result = sub_219BE1E34();
    if (v5[3])
    {
      type metadata accessor for AudioListeningProgressRecorder();
      swift_allocObject();
      v4 = sub_21875C418(v3, v5);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218AF9C5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = sub_219BDE114();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    type metadata accessor for AudioPlayingItemHistoryRecorder();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(swift_allocObject() + 16) = v4;

    v6 = v4;
    sub_219BE20F4();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218AF9E00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsAudioPlaybackQueue();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8C28, MEMORY[0x277D30028], 1);
  result = sub_219BE1E34();
  if (!v7[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(type metadata accessor for AudioNextTrackAutoPrewarmer());
    v6 = sub_21875E240(v3, v7, v4);

    swift_unknownObjectRelease();
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218AF9F3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = sub_219BDE154();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
    result = sub_219BE1E34();
    v4 = v9;
    if (v9)
    {
      v5 = v10;
      type metadata accessor for AudioAutoNextTrackHandler();
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = v5;

      swift_unknownObjectRetain();
      sub_219BE20F4();

      __swift_project_boxed_opaque_existential_1(v8, v8[3]);

      sub_219BE1A04();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_218AFA0D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187C84E8(0, &qword_280EE7250, sub_218AFD34C, MEMORY[0x277D6CEE8]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0, MEMORY[0x277D34178], 1);
  result = sub_219BE1E34();
  if (!v9[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v7)
  {
    v5 = objc_allocWithZone(type metadata accessor for AudioAutoClosePlayerHandler(0));
    v6 = sub_21875DBBC(v3, v4, v9, v7, v8);

    swift_unknownObjectRelease();
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218AFA2A4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_21870788C(&qword_280EB94A0, type metadata accessor for AudioAutoClosePlayerHandler, &unk_219C7646C);
    sub_219BE29A4();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AFA3A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718410(0, &unk_280EE8E80, sub_218731DB4, MEMORY[0x277D2F9C0]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = sub_219BDD484();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390, MEMORY[0x277D6D908], 1);
  result = sub_219BE1E34();
  if (v6[3])
  {
    type metadata accessor for AudioErrorHandler();
    swift_allocObject();
    v5 = sub_21875E014(v4, v7, v8, v6);

    swift_unknownObjectRelease();
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218AFA538(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E2A8, &protocolRef_FCAudioPlaylistType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE89D0, MEMORY[0x277D302C8], 1);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    type metadata accessor for AudioPlaylistSweeper();
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v4;
    sub_2186CB1F0(&v10, (v7 + 4));
    sub_2186CB1F0(&v8, (v7 + 9));
    v7[14] = v5;
    v7[15] = v6;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_218AFA770(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290, &protocol descriptor for NotificationServiceType, 1);
  result = sub_219BE1E34();
  if (!v12[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for EndOfTrackNotificationScheduler();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlayingObservableToken] = 0;
    v8 = &v7[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_schedulerState];
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    v8[64] = 2;
    *&v7[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_currentlyPlaying] = v3;
    sub_218718690(v12, &v7[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_notificationService]);
    *&v7[OBJC_IVAR____TtC7NewsUI231EndOfTrackNotificationScheduler_readingHistory] = v5;
    v11.receiver = v7;
    v11.super_class = v6;

    v9 = v5;
    v10 = objc_msgSendSuper2(&v11, sel_init);
    sub_21875D850([v4 endOfAudioTrackNotificationsEnabled]);
    [v4 addObserver_];

    __swift_destroy_boxed_opaque_existential_1(v12);
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218AFA9B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BDE144();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
    result = sub_219BE1DF4();
    if (v3)
    {
      sub_219BDEAE4();
      swift_allocObject();
      sub_21872C894();
      return sub_219BDEAD4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218AFAAC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BDE144();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
    result = sub_219BE1E34();
    if (v4)
    {
      sub_219BDE9B4();
      v3 = sub_219BDE9A4();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_218AFABD8()
{
  v0 = [objc_opt_self() sharedCommandCenter];

  return v0;
}

void *sub_218AFAC18(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BDE134();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219BDE9D4();
      swift_allocObject();
      return sub_219BDE9C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218AFAD14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = sub_219BDE134();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
    result = sub_219BE1E34();
    if (v4)
    {
      type metadata accessor for AudioAppTerminationHandler();
      swift_allocObject();
      return sub_21875E950(v3, v4, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218AFAE10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718410(0, &unk_280EE8E80, sub_218731DB4, MEMORY[0x277D2F9C0]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BDE964();
    swift_allocObject();
    sub_218707B34();
    return sub_219BDE954();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_218AFAED0(void *a1)
{
  v2 = sub_219BE27F4();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E9BEF0, &protocol descriptor for AudioCompletedListeningProcessorType, 1);
  result = sub_219BE1E34();
  if (!v36)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (!v34[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType, 1);
  result = sub_219BE1E34();
  if (!v33[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v4 = v31;
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = v32;
  v5 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsAudioPlaybackQueue();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26[3] = v2;
  v6 = *(result + 2);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v26[2] = v26;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = sub_219BDEAC4();
    v30[3] = v14;
    v30[4] = &off_282A3ADB0;
    v30[0] = v13;
    type metadata accessor for AudioBuddyTrackQueueScheduler(0);
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v14);
    v26[1] = v26;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v29[3] = v14;
    v29[4] = &off_282A3ADB0;
    v29[0] = v21;
    v22 = OBJC_IVAR____TtC7NewsUI229AudioBuddyTrackQueueScheduler_currentTrack;
    v23 = type metadata accessor for AudioFeedTrack(0);
    (*(*(v23 - 8) + 56))(&v15[v22], 1, 1, v23);
    v24 = OBJC_IVAR____TtC7NewsUI229AudioBuddyTrackQueueScheduler_scheduleDeduper;
    v28[0] = MEMORY[0x277D84F90];
    sub_21870788C(&qword_280EE73D0, MEMORY[0x277D6CD10], MEMORY[0x277D6CD18]);
    sub_2187C84E8(0, &qword_280E8F5E0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
    sub_218735780();
    sub_219BF7164();
    sub_21871C83C(0, &unk_280EE7BE0, MEMORY[0x277D84F78] + 8);
    swift_allocObject();
    *&v15[v24] = sub_219BE2004();
    sub_218718690(v29, (v15 + 16));
    sub_218718690(v34, (v15 + 56));
    sub_218718690(v33, (v15 + 96));
    v25 = v27;
    *(v15 + 17) = v4;
    *(v15 + 18) = v25;
    *(v15 + 19) = v5;
    *(v15 + 20) = v6;
    *(v15 + 21) = v7;
    swift_allocObject();
    swift_weakInit();

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_219BE20F4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return v15;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_218AFB548(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E9BEF0, &protocol descriptor for AudioCompletedListeningProcessorType, 1);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF740, &protocol descriptor for AudioDataManagerType, 0);
  result = sub_219BE1E34();
  v5 = v27;
  if (!v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v3;
  v6 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E2A8, &protocolRef_FCAudioPlaylistType);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = sub_219BDEAC4();
    v26[3] = v14;
    v26[4] = &off_282A3ADB0;
    v26[0] = v13;
    type metadata accessor for AudioUnfinishedTrackRescuer();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v26, v14);
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v25[3] = v14;
    v25[4] = &off_282A3ADB0;
    v25[0] = v21;
    sub_218718690(v25, v24);
    v22 = swift_allocObject();
    v22[2] = v4;
    sub_2186CB1F0(v24, (v22 + 3));
    v22[8] = v5;
    v22[9] = v6;
    v22[10] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_219BE2104();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_218AFB958(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC480, &protocol descriptor for AudioFeedConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90510, MEMORY[0x277D33778], 1);
  result = sub_219BE1E34();
  if (!v21[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v19 = type metadata accessor for AudioFeedConfigManager();
    v20 = &off_282A71790;
    v18[0] = v9;
    v10 = objc_allocWithZone(type metadata accessor for AudioFeedContentPrefetcher());
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v12 = MEMORY[0x28223BE20](v11);
    v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = sub_21875EAF8(*v14, v21, v3, v10);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218AFBC14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((sub_219BED0C4() & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x277D30370]) initWithFrame_];
  }

  [objc_allocWithZone(MEMORY[0x277D30370]) initWithFrame_];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE8BE0, MEMORY[0x277D30068], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21870788C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_219BE6AE4();
    swift_allocObject();
    sub_219BE6AC4();
    sub_218718410(0, &unk_280EE8C68, sub_21872C894, MEMORY[0x277D2FFD8]);
    v4 = objc_allocWithZone(v3);
    return sub_219BDE3E4();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218AFBFF4(uint64_t a1)
{
  v2 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BE1BD4();
  sub_218718690(a1, v5);
  v3 = swift_allocObject();
  sub_2186CB1F0(v5, v3 + 16);
  sub_2186E7CF0(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218AFC100@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718410(0, &unk_280EE8C68, sub_21872C894, MEMORY[0x277D2FFD8]);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218AFDCF8();
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218AFC1A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE50, MEMORY[0x277D343D8], 1);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_219BF4E04();
  swift_allocObject();
  v5 = sub_219BF4DF4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for NowPlayingActivityViewControllerFactory();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v10;
    v9[5] = v11;
    v9[6] = v7;
    a2[3] = v8;
    result = sub_21870788C(qword_280E96DC0, type metadata accessor for NowPlayingActivityViewControllerFactory, &unk_219C34B90);
    a2[4] = result;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218AFC3DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9654();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E7CF0(0, &qword_280EE7258, &unk_280EE4290, MEMORY[0x277D6E768], MEMORY[0x277D6CEE8]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BDE5E4();
    swift_allocObject();
    return sub_219BDE5D4();
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_218AFC518()
{
  sub_218718410(0, &unk_280EE8E80, sub_218731DB4, MEMORY[0x277D2F9C0]);
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_218AFC580@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580, &protocolRef_FCContentContext);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0, MEMORY[0x277D34178], 1);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E2A8, &protocolRef_FCAudioPlaylistType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E910C0, MEMORY[0x277D32B88], 1);
  result = sub_219BE1E34();
  if (v12)
  {
    v9 = type metadata accessor for AudioSuggestionsService();
    v10 = swift_allocObject();
    v10[2] = v5;
    sub_2186CB1F0(&v13, (v10 + 3));
    v10[8] = v6;
    v10[9] = v7;
    v10[10] = v8;
    result = sub_2186CB1F0(&v11, (v10 + 11));
    a2[3] = v9;
    a2[4] = &off_282A85760;
    *a2 = v10;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218AFC7D8(uint64_t a1)
{
  sub_218718690(a1, v3);
  type metadata accessor for AudioApplicationStateMonitor();
  v1 = swift_allocObject();
  sub_2186CB1F0(v3, v1 + 16);
  return v1;
}

void *sub_218AFC82C(void *a1)
{
  v2 = sub_219BDBD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v52 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDCDF4();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDF9E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v51 = v7;
  v8 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  v50 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v53 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E9BEF0, &protocol descriptor for AudioCompletedListeningProcessorType, 1);
  result = sub_219BE1E34();
  if (!v64)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v47 = v9;
  v48 = v2;
  v10 = v8;
  v49 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAD760, &protocol descriptor for AudioPlaybackWidgetUpdaterType, 1);
  result = sub_219BE1E34();
  if (v62)
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
    v46[4] = v46;
    v12 = MEMORY[0x28223BE20](v11);
    v14 = (v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v46[3] = v46;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v14;
    v22 = *v19;
    v23 = sub_219BDEAC4();
    v60[3] = v23;
    v60[4] = &off_282A3ADB0;
    v60[0] = v21;
    v24 = type metadata accessor for AudioPlaybackWidgetUpdater();
    v58 = v24;
    v59 = &off_282A81F20;
    v57[0] = v22;
    type metadata accessor for AudioSessionManager();
    v25 = swift_allocObject();
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v60, v23);
    v46[2] = v46;
    v27 = MEMORY[0x28223BE20](v26);
    v29 = (v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v46[1] = v46;
    v32 = MEMORY[0x28223BE20](v31);
    v34 = (v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = *v29;
    v37 = *v34;
    v56[3] = v23;
    v56[4] = &off_282A3ADB0;
    v55[4] = &off_282A81F20;
    v56[0] = v36;
    v55[3] = v24;
    v55[0] = v37;
    v25[15] = 0;
    v25[16] = 0;
    v38 = v51;
    v25[2] = v49;
    v25[3] = v38;
    v25[5] = 0;
    v25[6] = v10;
    v39 = v53;
    v25[7] = v47;
    v25[8] = v39;
    sub_218718690(v56, (v25 + 9));
    sub_218718690(v55, (v25 + 17));

    v51 = v38;

    v40 = sub_219BDCDE4();
    v25[4] = v40;
    type metadata accessor for AudioSessionManager.Session();
    v41 = swift_allocObject();

    v42 = v52;
    sub_219BDBD54();
    v43 = sub_219BDBD44();
    v45 = v44;
    (*(v50 + 8))(v42, v48);
    *(v41 + 16) = v43;
    *(v41 + 24) = v45;
    *(v41 + 48) = 1;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    *(v41 + 72) = 0;
    *(v41 + 32) = v40;
    *(v41 + 40) = 0;
    v25[14] = v41;
    swift_allocObject();
    swift_weakInit();
    sub_219BE2104();

    __swift_project_boxed_opaque_existential_1(v54, v54[3]);

    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v63);
    return v25;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_218AFCFD4()
{
  type metadata accessor for AudioPlaybackWidgetUpdater();
  v0 = swift_allocObject();
  sub_2196CF0C8(0, 0, 0);
  return v0;
}

void sub_218AFD01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BE3204();

  v3 = sub_219BE2E54();
  sub_219BE2F74();

  v4 = sub_219BE2E54();
  sub_219BE2FD4();
}

void sub_218AFD10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4(0);
  sub_219BE3204();

  v7 = sub_219BE2E54();
  sub_219BE2F74();

  v8 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_218AFD1EC()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for AudioState(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE20E4();
  v5 = *(*&v4[*(v2 + 48)] + 16);
  sub_218AFDFDC(v4);
  if (v5)
  {
    sub_21870F290(0, &qword_280EE6900, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    off_282A88840(ObjectType);
    v7 = sub_219BE2E54();
    v8 = sub_219BE2F64();

    return v8;
  }
}

unint64_t sub_218AFD34C()
{
  result = qword_280EE37D0;
  if (!qword_280EE37D0)
  {
    sub_2186C6148(255, &qword_280E8E480, 0x277D75D28);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE37D0);
  }

  return result;
}

void *sub_218AFD3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v30 = type metadata accessor for AudioCPListSectionProvider();
  v31 = &off_282A6D5A8;
  v29[0] = a3;
  __swift_project_boxed_opaque_existential_1(v29, v30);

  sub_219BE20E4();

  v10 = v28[0];
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  v11 = qword_280F61710;
  v12 = sub_219BF6214();
  sub_2186E7CF0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09EC0;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2186FC3BC();
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  if (v10 >> 62)
  {
    v16 = sub_219BF7214();
  }

  else
  {
    v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28[0] = v16;

  v17 = sub_219BF7894();
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 72) = v17;
  *(v13 + 80) = v18;
  sub_219BE5314("AudioCPListTemplateController: Creating Template with title %{public}@ and %{public}@ sections", 94, 2, &dword_2186C1000, v11, v12, v13);

  v19 = objc_allocWithZone(MEMORY[0x277CBB0E8]);
  v20 = sub_219BF53D4();

  sub_2186C6148(0, &qword_27CC0DF58, 0x277CBB0E0);
  v21 = sub_219BF5904();

  v22 = [v19 initWithTitle:v20 sections:v21];

  a6[2] = v22;
  sub_218718690(v29, (a6 + 3));
  __swift_project_boxed_opaque_existential_1(v29, v30);
  *(swift_allocObject() + 16) = v22;
  v23 = v22;

  sub_219BE20F4();

  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v24 = v23;
  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(v28);
  a6[8] = a4;
  a6[9] = a5;
  swift_unknownObjectRetain();
  sub_218AFD1EC();

  __swift_destroy_boxed_opaque_existential_1(v29);
  return a6;
}

uint64_t sub_218AFD700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = a2;
  v35 = a1;
  v6 = *a4;
  sub_218718410(0, &unk_27CC0DF40, sub_218731DB4, MEMORY[0x277D30140]);
  v36 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = type metadata accessor for AudioCPListItemFactory();
  v46[3] = v11;
  v46[4] = &off_282A93358;
  v46[0] = a3;
  v44 = v6;
  v45 = &off_282A3AE60;
  v43[0] = a4;
  type metadata accessor for AudioCPListSectionProvider();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v46, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v16;
  v24 = *v21;
  v42[3] = v11;
  v42[4] = &off_282A93358;
  v41[4] = &off_282A3AE60;
  v42[0] = v23;
  v41[3] = v6;
  v41[0] = v24;
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  v25 = qword_280F61710;
  v26 = sub_219BF6214();
  sub_2186E7CF0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_219C09BA0;
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  *&v38[0] = v35;
  sub_2187C84E8(0, &unk_280EE7B28, sub_21872E174, MEMORY[0x277D6CB60]);
  sub_219BF7484();
  v28 = v39;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_2186FC3BC();
  *(v27 + 32) = v28;
  sub_219BE5314("AudioCPListSectionProvider: Creating sections with queues %{public}@", 68, 2, &dword_2186C1000, v25, v26, v27);

  sub_218718690(v41, &v39);
  sub_218718690(v42, v38);
  v29 = swift_allocObject();
  sub_2186CB1F0(&v39, v29 + 16);
  sub_2186CB1F0(v38, v29 + 56);
  sub_218AFDF60(0);
  v30 = sub_219BE20B4();

  *(v12 + 16) = v30;
  type metadata accessor for AudioFeedTrack(0);
  sub_218731DB4();
  sub_219BDE7E4();
  v31 = sub_219BE2094();
  (*(v8 + 8))(v10, v36);
  *(v12 + 24) = v31;
  v32 = swift_allocObject();
  swift_weakInit();
  sub_218718690(v42, &v39);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  sub_2186CB1F0(&v39, v33 + 24);

  sub_219BE20F4();

  __swift_project_boxed_opaque_existential_1(&v39, v40);

  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return v12;
}

unint64_t sub_218AFDCF8()
{
  result = qword_280EE8C88;
  if (!qword_280EE8C88)
  {
    sub_218718410(255, &unk_280EE8C68, sub_21872C894, MEMORY[0x277D2FFD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8C88);
  }

  return result;
}

unint64_t sub_218AFDECC()
{
  result = qword_280EE8C78;
  if (!qword_280EE8C78)
  {
    sub_218718410(255, &unk_280EE8C68, sub_21872C894, MEMORY[0x277D2FFD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8C78);
  }

  return result;
}

void sub_218AFDF60(uint64_t a1)
{
  if (!qword_27CC0DF50)
  {
    sub_2186C6148(255, &qword_27CC0DF58, 0x277CBB0E0);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0DF50);
    }
  }
}

uint64_t sub_218AFDFDC(uint64_t a1)
{
  v2 = type metadata accessor for AudioState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_27Tm()
{

  return swift_deallocObject();
}

uint64_t sub_218AFE138@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EngagementPresentationFailure(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3774();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1 + *(v3 + 28), v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D31608])
  {
    (*(v7 + 8))(v10, v6);
    v12 = MEMORY[0x277D2F170];
LABEL_21:
    v13 = *v12;
    v14 = sub_219BE1334();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  if (v11 == *MEMORY[0x277D31650])
  {
    v12 = MEMORY[0x277D2F1B8];
    goto LABEL_21;
  }

  if (v11 == *MEMORY[0x277D31630])
  {
    v12 = MEMORY[0x277D2F198];
    goto LABEL_21;
  }

  if (v11 == *MEMORY[0x277D31648])
  {
    v12 = MEMORY[0x277D2F1B0];
    goto LABEL_21;
  }

  if (v11 == *MEMORY[0x277D31638])
  {
    v12 = MEMORY[0x277D2F1A0];
    goto LABEL_21;
  }

  if (v11 == *MEMORY[0x277D31640])
  {
    v12 = MEMORY[0x277D2F1A8];
    goto LABEL_21;
  }

  if (v11 == *MEMORY[0x277D31628])
  {
    v12 = MEMORY[0x277D2F190];
    goto LABEL_21;
  }

  if (v11 == *MEMORY[0x277D31620])
  {
    v12 = MEMORY[0x277D2F188];
    goto LABEL_21;
  }

  if (v11 == *MEMORY[0x277D31610])
  {
    v12 = MEMORY[0x277D2F178];
    goto LABEL_21;
  }

  if (v11 == *MEMORY[0x277D31618])
  {
    v12 = MEMORY[0x277D2F180];
    goto LABEL_21;
  }

  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v16 = sub_219BE5434();
  __swift_project_value_buffer(v16, qword_280F627F0);
  sub_218AFF0AC(v1, v5);
  v17 = sub_219BE5414();
  v18 = sub_219BF61F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v19 = 136315138;
    v20 = sub_219BE3764();
    v22 = v21;
    sub_218AFF110(v5);
    v23 = sub_2186D1058(v20, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2186C1000, v17, v18, "Unknown EngagementPresentationFailure error= %s", v19, 0xCu);
    v24 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x21CECF960](v24, -1, -1);
    MEMORY[0x21CECF960](v19, -1, -1);
  }

  else
  {

    sub_218AFF110(v5);
  }

  v25 = *MEMORY[0x277D2F1B8];
  v26 = sub_219BE1334();
  (*(*(v26 - 8) + 104))(a1, v25, v26);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_218AFE5C0()
{
  sub_218AFF054(0);
  MEMORY[0x28223BE20](v1 - 8);
  v98 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE3BA4();
  v3 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v68 - v7;
  MEMORY[0x28223BE20](v8);
  v100 = &v68 - v9;
  v10 = sub_219BE3B54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE13B4();
  v15 = *(v14 - 8);
  v95 = v14;
  v96 = v15;
  MEMORY[0x28223BE20](v14);
  v94 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE3774();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for EngagementPresentationFailure(0);
  (*(v18 + 16))(v20, v0 + *(v21 + 28), v17);
  if ((*(v18 + 88))(v20, v17) != *MEMORY[0x277D31608])
  {
    (*(v18 + 8))(v20, v17);
    return 0;
  }

  (*(v18 + 96))(v20, v17);
  v22 = *v20;
  if (!*v20)
  {
    return 0;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {

    return MEMORY[0x277D84F90];
  }

  v78 = v5;
  v103 = MEMORY[0x277D84F90];
  sub_218C34CA0(0, v23, 0);
  v24 = v103;
  v26 = *(v11 + 16);
  v25 = v11 + 16;
  v91 = v26;
  v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
  v73 = v22;
  v28 = v22 + v27;
  v29 = *(v25 + 56);
  v93 = (v3 + 16);
  v89 = (v3 + 88);
  v90 = v29;
  v88 = *MEMORY[0x277D31868];
  v84 = *MEMORY[0x277D31880];
  v82 = *MEMORY[0x277D31878];
  v80 = *MEMORY[0x277D31860];
  v87 = (v3 + 8);
  v76 = *MEMORY[0x277D2F0F8];
  v79 = *MEMORY[0x277D2F108];
  v92 = v25;
  v85 = v96 + 32;
  v86 = (v25 - 8);
  v81 = *MEMORY[0x277D2F110];
  v83 = *MEMORY[0x277D2F100];
  *&v30 = 136315138;
  v72 = v30;
  v31 = v98;
  do
  {
    v32 = v10;
    v91(v13, v28, v10);
    sub_219BE3B34();
    v99 = v33;
    v34 = v100;
    sub_219BE3B44();
    v35 = *v93;
    v36 = v97;
    v37 = v34;
    v38 = v101;
    (*v93)(v97, v37, v101);
    v39 = (*v89)(v36, v38);
    if (v39 == v88)
    {
      v40 = sub_219BE12B4();
      v41 = *(v40 - 8);
      (*(v41 + 104))(v31, v83, v40);
      (*(v41 + 56))(v31, 0, 1, v40);
      v42 = v101;
      v10 = v32;
LABEL_9:
      v45 = v94;
      v46 = v87;
      goto LABEL_22;
    }

    v10 = v32;
    if (v39 == v84)
    {
      v43 = sub_219BE12B4();
      v44 = *(v43 - 8);
      (*(v44 + 104))(v31, v81, v43);
      (*(v44 + 56))(v31, 0, 1, v43);
      v42 = v101;
      goto LABEL_9;
    }

    v46 = v87;
    if (v39 == v82)
    {
      v47 = sub_219BE12B4();
      v48 = *(v47 - 8);
      (*(v48 + 104))(v31, v79, v47);
    }

    else
    {
      if (v39 != v80)
      {
        if (qword_280EE60A0 != -1)
        {
          swift_once();
        }

        v49 = sub_219BE5434();
        v77 = __swift_project_value_buffer(v49, qword_280F627F0);
        v50 = v78;
        v35(v78, v100, v101);
        v51 = sub_219BE5414();
        v75 = sub_219BF61F4();
        v52 = os_log_type_enabled(v51, v75);
        v77 = v46 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v52)
        {
          v53 = swift_slowAlloc();
          v74 = v53;
          v70 = swift_slowAlloc();
          v102 = v70;
          *v53 = v72;
          v69 = v51;
          v54 = v78;
          v68 = sub_219BE3B94();
          v56 = v55;
          v71 = *v46;
          v71(v54, v101);
          v57 = sub_2186D1058(v68, v56, &v102);

          v58 = v74;
          *(v74 + 1) = v57;
          v59 = v69;
          _os_log_impl(&dword_2186C1000, v69, v75, "Unknown EngagementUpsellTriggerFailureReason %s", v58, 0xCu);
          v60 = v70;
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x21CECF960](v60, -1, -1);
          MEMORY[0x21CECF960](v74, -1, -1);

          v61 = v101;
          v62 = v71;
        }

        else
        {

          v63 = v50;
          v62 = *v46;
          v61 = v101;
          (*v46)(v63, v101);
        }

        v64 = sub_219BE12B4();
        (*(*(v64 - 8) + 56))(v98, 1, 1, v64);
        v62(v97, v61);
        v42 = v61;
        goto LABEL_21;
      }

      v47 = sub_219BE12B4();
      v48 = *(v47 - 8);
      (*(v48 + 104))(v31, v76, v47);
    }

    (*(v48 + 56))(v31, 0, 1, v47);
    v42 = v101;
LABEL_21:
    v45 = v94;
LABEL_22:
    (*v46)(v100, v42);
    sub_219BE13A4();
    (*v86)(v13, v10);
    v103 = v24;
    v66 = *(v24 + 16);
    v65 = *(v24 + 24);
    if (v66 >= v65 >> 1)
    {
      sub_218C34CA0((v65 > 1), v66 + 1, 1);
      v24 = v103;
    }

    *(v24 + 16) = v66 + 1;
    (*(v96 + 32))(v24 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v66, v45, v95);
    v28 += v90;
    --v23;
  }

  while (v23);

  return v24;
}