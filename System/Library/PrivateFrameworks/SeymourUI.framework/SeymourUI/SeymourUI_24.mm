void sub_20B7C7C44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *(a3 + 16);
  if (v22)
  {
    v20 = 0;
    v5 = 0;
    v24 = a4 + 56;
    while (1)
    {
      sub_20C13E164();
      sub_20C134224();
      sub_20C13CA64();

      v6 = sub_20C13E1B4();
      v7 = -1 << *(a4 + 32);
      v8 = v6 & ~v7;
      v9 = v8 >> 6;
      v10 = 1 << v8;
      if (((1 << v8) & *(v24 + 8 * (v8 >> 6))) != 0)
      {
        v23 = v5;
        v11 = ~v7;
        while (1)
        {
          v12 = sub_20C134224();
          v14 = v13;
          if (v12 == sub_20C134224() && v14 == v15)
          {
            break;
          }

          v17 = sub_20C13DFF4();

          if (v17)
          {
            goto LABEL_15;
          }

          v8 = (v8 + 1) & v11;
          v9 = v8 >> 6;
          v10 = 1 << v8;
          if (((1 << v8) & *(v24 + 8 * (v8 >> 6))) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_15:
        v18 = a1[v9];
        a1[v9] = v18 | v10;
        if ((v18 & v10) != 0)
        {
LABEL_3:
          v5 = v23;
          goto LABEL_4;
        }

        v5 = v23;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          return;
        }

        ++v20;
      }

LABEL_4:
      if (++v5 == v22)
      {
        goto LABEL_19;
      }
    }
  }

  v20 = 0;
LABEL_19:

  sub_20BC12FA0(a1, a2, v20, a4);
}

void sub_20B7C7E30(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return;
    }

    v5 = sub_20C13C954();
    v7 = v6;
    if (v5 == sub_20C13C954() && v7 == v8)
    {
    }

    else
    {
      v10 = sub_20C13DFF4();

      if ((v10 & 1) == 0)
      {
        return;
      }
    }
  }

  else if (v4)
  {
    return;
  }

  v11 = *(a2 + 8);
  if (a1[1])
  {
    if (!v11)
    {
      return;
    }

    v12 = sub_20C13C954();
    v14 = v13;
    if (v12 == sub_20C13C954() && v14 == v15)
    {
    }

    else
    {
      v16 = sub_20C13DFF4();

      if ((v16 & 1) == 0)
      {
        return;
      }
    }
  }

  else if (v11)
  {
    return;
  }

  v17 = sub_20C13C954();
  v19 = v18;
  if (v17 == sub_20C13C954() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_20C13DFF4();

    if ((v21 & 1) == 0)
    {
      return;
    }
  }

  v22 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 6) != *(a2 + 24))
    {
      v22 = 1;
    }

    if (v22)
    {
      return;
    }
  }

  v23 = *(a1 + 29);
  v24 = *(a2 + 29);
  if (v23 == 9)
  {
    if (v24 != 9)
    {
      return;
    }
  }

  else if (v24 == 9 || (sub_20B96980C(v23, v24) & 1) == 0)
  {
    return;
  }

  v25 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return;
    }

    goto LABEL_41;
  }

  if (*(a1 + 4) != *(a2 + 32))
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
LABEL_41:
    v26 = a1[6];
    v27 = *(a2 + 48);

    sub_20BDA3E74(v26, v27);
  }
}

uint64_t sub_20B7C80FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_20B7C814C()
{
  result = qword_27C765918;
  if (!qword_27C765918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765918);
  }

  return result;
}

unint64_t sub_20B7C81A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

void sub_20B7C81EC()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GuidedWorkoutGalleryViewController(0);
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = sub_20C13C914();
    [v0 setTitle_];

    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dataProvider];
    sub_20B63CC20();
    sub_20C0363BC();
    sub_20B7C9030();
    sub_20B795530(0);
    sub_20BAD5320();
    v6 = *(*(v5 + OBJC_IVAR____TtC9SeymourUI32GuidedWorkoutGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
    v7 = *(v6 + 16);
    if (v7)
    {

      v8 = (v6 + 40);
      do
      {
        v9 = *v8;
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 48);
        swift_unknownObjectRetain();
        v11(ObjectType, v9);
        swift_unknownObjectRelease();
        v8 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20B7C83FC(char a1)
{
  v3 = type metadata accessor for GuidedWorkoutGalleryViewController(0);
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

  v18 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v11 style:0 target:v17 action:sel_handleBackButtonTap];

  swift_unknownObjectRelease();
  v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v18 setTintColor_];

  if (v9)
  {
    v20 = [v9 navigationItem];
    [v20 setBackBarButtonItem_];
  }

  v21 = *&v10[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentNavigationBarTintColor];
  if (v21)
  {
    v22 = *&v10[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentNavigationBarTintColor];
  }

  else
  {
    v22 = *&v10[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_standardNavigationBarTintColor];
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

  v27 = &v10[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior];
  v28 = v10[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior + 16];
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

void sub_20B7C8B10(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GuidedWorkoutGalleryViewController(0);
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
  sub_20B7C9A98(&qword_27C765990, &unk_20C159B38);
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
      sub_20B7C9A98(&qword_27C7659A0, &unk_20C159AF8);
      sub_20C138C64();
    }
  }
}

void sub_20B7C9030()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_upNextQueueButton];
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

  if (v0[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_platform] == 1)
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

  if (!v0[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_platform])
  {
    v7 = [v0 navigationItem];
    [v7 setRightBarButtonItem_];
LABEL_5:
  }
}

id sub_20B7C929C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWorkoutGalleryViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GuidedWorkoutGalleryViewController(uint64_t a1)
{
  result = qword_27C765980;
  if (!qword_27C765980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B7C9458(uint64_t a1)
{
  result = sub_20C1352F4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_20B7C9568(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentNavigationBarTintColor] = v2;
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
    v10[3] = &block_descriptor_15;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

void sub_20B7C96E4(void *a1, uint64_t a2)
{
  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setTintColor_];
  }
}

uint64_t sub_20B7C97B0(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

double sub_20B7C98E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B7C9998(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20B7C99FC(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20B7C9A98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GuidedWorkoutGalleryViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20B7C9ADC()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_resignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_metricPageCategory;
  v3 = *MEMORY[0x277D51838];
  v4 = sub_20C1352F4();
  (*(*(v4 - 8) + 104))(v0 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_standardNavigationBarTintColor;
  *(v0 + v5) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20B7C9C38()
{
  result = qword_27C7659A8;
  if (!qword_27C7659A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7659A8);
  }

  return result;
}

uint64_t static SessionUnitPreferencesProviderChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_20B7C9D14()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_20C1365F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activationState) & 1) == 0)
  {
    v21 = v8;
    v22 = v6;
    v23 = v5;
    v24 = v2;
    v25 = v4;
    *(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activationState) = 1;
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();
    sub_20B7D3810();
    sub_20C13A774();

    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_20B7CA268(v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_20B520158(v11, &qword_27C771090, &qword_20C15A040);
      v16 = v21;
      sub_20C13B534();
      v17 = sub_20C13BB74();
      v18 = sub_20C13D1D4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_20B517000, v17, v18, "[WorkoutPlanEditSchedulePageDataProvider] no initial modality reference found", v19, 2u);
        MEMORY[0x20F2F6A40](v19, -1, -1);
      }

      (*(v22 + 8))(v16, v23);
      v20 = v25;
      swift_storeEnumTagMultiPayload();
      sub_20B7D00A8(v20);
      sub_20B7D3390(v20, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      sub_20B7CDEE8(v15, 1);
      (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_20B7CA0FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765AB8, &qword_20C15A088);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C1582F0;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_bodyFocusPickerShelf);
  *(v1 + 56) = type metadata accessor for WorkoutPlanBodyFocusPickerShelf(0);
  *(v1 + 64) = &off_2815E71C0;
  *(v1 + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_durationPickerShelf);
  *(v1 + 96) = type metadata accessor for WorkoutPlanDurationPickerShelf(0);
  *(v1 + 104) = &off_2815F9470;
  *(v1 + 72) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_equipmentPickerShelf);
  *(v1 + 136) = type metadata accessor for WorkoutPlanEquipmentPickerShelf(0);
  *(v1 + 144) = &off_281608268;
  *(v1 + 112) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_skillLevelPickerShelf);
  *(v1 + 176) = type metadata accessor for WorkoutPlanSkillLevelPickerShelf(0);
  *(v1 + 184) = &off_2815E8320;
  *(v1 + 152) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_themePickerShelf);
  *(v1 + 216) = type metadata accessor for WorkoutPlanCatalogThemePickerShelf(0);
  *(v1 + 224) = sub_20B7D3274(&qword_27C765AC0, type metadata accessor for WorkoutPlanCatalogThemePickerShelf, &unk_20C16834C);
  *(v1 + 192) = v6;

  return v1;
}

uint64_t sub_20B7CA268@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem;
  v17 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  sub_20B52F9E8(v16 + *(v17 + 20), v5, &qword_27C771090, &qword_20C15A040);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v26 = a1;
    sub_20B520158(v5, &qword_27C771090, &qword_20C15A040);
    v25 = v1;
    v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_preferredModalityReferences);
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10, &qword_20C1542C0);
    sub_20B69851C();
    v18 = sub_20C13CBF4();

    if (*(v18 + 16))
    {
      (*(v7 + 16))(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      v19 = *(v7 + 32);
      v19(v12, v9, v6);
      a1 = v26;
      v19(v26, v12, v6);
    }

    else
    {

      v27 = *(v25 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_modalityReferences);
      swift_getKeyPath();

      v23 = sub_20C13CBF4();

      if (!*(v23 + 16))
      {

        v21 = 1;
        a1 = v26;
        return (*(v7 + 56))(a1, v21, 1, v6);
      }

      a1 = v26;
      (*(v7 + 16))(v26, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    }
  }

  else
  {
    v20 = *(v7 + 32);
    v20(v15, v5, v6);
    v20(a1, v15, v6);
  }

  v21 = 0;
  return (*(v7 + 56))(a1, v21, 1, v6);
}

uint64_t sub_20B7CA628()
{
  v0 = sub_20B7CA0FC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    v3 = MEMORY[0x277D84F90];
    do
    {
      sub_20B51CC64(v2, v17);
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v7 = sub_20BC6A2F8(v5, v6);
      v9 = v8;
      v11 = v10;
      v12 = v10;
      __swift_destroy_boxed_opaque_existential_1(v17);
      if (v12 <= 0xFB)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_20BC07288(0, *(v3 + 2) + 1, 1, v3);
        }

        v14 = *(v3 + 2);
        v13 = *(v3 + 3);
        if (v14 >= v13 >> 1)
        {
          v3 = sub_20BC07288((v13 > 1), v14 + 1, 1, v3);
        }

        *(v3 + 2) = v14 + 1;
        v4 = &v3[24 * v14];
        *(v4 + 4) = v7;
        *(v4 + 5) = v9;
        v4[48] = v11;
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v15 = sub_20B717130(v3);

  return v15;
}

void sub_20B7CA78C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(a1 + 48) + 24 * (v9 | (v7 << 6));
      v11 = *(v10 + 16);
      if (v11 < 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v10 + 8);
    v14 = v11 & 0x7F;
    v20 = *v10;
    sub_20B6D8740(*v10, v13, v11 & 0x7F);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_20BC072A4(0, *(v8 + 2) + 1, 1, v8);
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v19 = sub_20BC072A4((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = v19;
    }

    *(v8 + 2) = v17;
    v18 = &v8[24 * v16];
    *(v18 + 4) = v20;
    *(v18 + 5) = v13;
    v18[48] = v14;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      sub_20B7171D8(v8);

      return;
    }

    v5 = *(v2 + 8 * v12);
    ++v7;
    if (v5)
    {
      v7 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_20B7CA924()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem;
  v5 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  sub_20B52F9E8(v4 + *(v5 + 24), v3, &qword_27C765810, &qword_20C159480);
  v6 = sub_20C136864();
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_20B520158(v3, &qword_27C765810, &qword_20C159480);
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_workoutPlanStringBuilder);
  v8 = v7[9];
  v9 = v7[10];
  __swift_project_boxed_opaque_existential_1(v7 + 6, v8);
  if (v4 == 1)
  {
    v10 = 0x495443415F444441;
    v11 = 0xEC00000059544956;
  }

  else
  {
    v10 = 0x415F455441445055;
    v11 = 0xEF59544956495443;
  }

  return sub_20B5E107C(v10, v11, v8, v9);
}

uint64_t sub_20B7CAA9C()
{
  v22 = type metadata accessor for WorkoutPlanScheduledItemUpdated(0);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for WorkoutPlanScheduledItemUpdate(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_20C136864();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  v12 = (v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem);
  v13 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  sub_20B52F9E8(v12 + *(v13 + 24), v7, &qword_27C765810, &qword_20C159480);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20B520158(v7, &qword_27C765810, &qword_20C159480);
  }

  (*(v9 + 32))(v11, v7, v8);
  v15 = *v12;
  v16 = *(v12 + 8);
  (*(v9 + 16))(&v4[*(v2 + 20)], v11, v8);
  type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  swift_storeEnumTagMultiPayload();
  v17 = *(v12 + *(v13 + 28));
  *v4 = v15;
  v4[8] = v16;
  v4[*(v2 + 24)] = v17;
  swift_getObjectType();
  v18 = v21;
  sub_20B7D32C4(v4, v21, type metadata accessor for WorkoutPlanScheduledItemUpdate);
  sub_20B7D3274(&qword_27C765830, type metadata accessor for WorkoutPlanScheduledItemUpdated, &unk_20C162540);
  sub_20C13A764();
  sub_20B7D3390(v18, type metadata accessor for WorkoutPlanScheduledItemUpdated);
  sub_20B7D3390(v4, type metadata accessor for WorkoutPlanScheduledItemUpdate);
  return (*(v9 + 8))(v11, v8);
}

void sub_20B7CAE14()
{
  v1 = sub_20C13BB84();
  v104 = *(v1 - 8);
  v105 = v1;
  MEMORY[0x28223BE20](v1);
  v103 = v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = v82 - v4;
  v99 = type metadata accessor for WorkoutPlanScheduledItemUpdated(0);
  MEMORY[0x28223BE20](v99);
  v98 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for WorkoutPlanScheduledItemUpdate(0);
  MEMORY[0x28223BE20](v97);
  v89 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation(0);
  MEMORY[0x28223BE20](v96);
  v88 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = v82 - v9;
  v102 = sub_20C1352E4();
  v94 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v93 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20C134F24();
  v92 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v90 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v82 - v15;
  v17 = sub_20C136864();
  v106 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v87 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v82 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v82 - v23;
  v25 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  MEMORY[0x28223BE20](v25);
  v27 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(0);
  MEMORY[0x28223BE20](v28);
  v30 = v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_state;
  swift_beginAccess();
  sub_20B7D32C4(v0 + v31, v27, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v38 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State;
    v39 = v27;
    goto LABEL_19;
  }

  sub_20B7D356C(v27, v30, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
  v32 = (*(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activityPickerShelf) + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier);
  if (!v32[1])
  {
LABEL_7:
    v38 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState;
    v39 = v30;
LABEL_19:
    sub_20B7D3390(v39, v38);
    return;
  }

  v86 = v17;
  v84 = *v32;

  v85 = v0;
  v33 = sub_20B7CA628();
  KeyPath = swift_getKeyPath();
  v108 = v33;
  v109 = sub_20B7D3868;
  v110 = KeyPath;
  v111 = sub_20B7D1AD0;
  v112 = 0;

  v35 = sub_20B7D18AC();
  if (v37)
  {
    goto LABEL_31;
  }

  if (*(v33 + 36) != v36)
  {
    __break(1u);
LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  if (v35 == 1 << *(v33 + 32))
  {

    goto LABEL_7;
  }

  v40 = v24;
  v83 = v30;
  sub_20BB623C0(v35, v36, 0, v33);
  if ((v41 & 0x80) == 0)
  {

    v42 = sub_20B7CA628();
    sub_20B7CA78C(v42);

    sub_20C136824();
    v43 = v106;
    v44 = *(v106 + 32);
    v45 = v44(v24, v21, v86);
    v46 = v83;
    if (sub_20BB110D4(v45))
    {
      v47 = v103;
      sub_20C13B534();
      v48 = sub_20C13BB74();
      v49 = sub_20C13D1D4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "[WorkoutPlanEditSchedulePageDataProvider] action button tapped with empty selectable filter results";
LABEL_16:
        _os_log_impl(&dword_20B517000, v48, v49, v51, v50, 2u);
        MEMORY[0x20F2F6A40](v50, -1, -1);
      }
    }

    else
    {
      if (!*&v46[*(v28 + 28)])
      {
        v52 = v85 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem;
        v53 = v85;
        v84 = (v85 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem);
        v54 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
        v104 = *(v54 + 24);
        v105 = v54;
        sub_20B52F9E8(v52 + v104, v16, &qword_27C765810, &qword_20C159480);
        v55 = *(v43 + 48);
        v100 = (v43 + 48);
        v103 = v55;
        v56 = (v55)(v16, 1, v86);
        sub_20B520158(v16, &qword_27C765810, &qword_20C159480);
        v57 = 0x6341657461647055;
        if (v56 == 1)
        {
          v57 = 0x7669746341646441;
        }

        v82[1] = v57;
        v58 = 0xEE00797469766974;
        if (v56 == 1)
        {
          v58 = 0xEB00000000797469;
        }

        v82[0] = v58;
        v107 = v53;
        v59 = v92;
        v60 = v90;
        (*(v92 + 104))(v90, *MEMORY[0x277D51488], v101);
        v61 = v94;
        v62 = v93;
        (*(v94 + 104))(v93, *MEMORY[0x277D51768], v102);
        v63 = sub_20C135ED4();
        v64 = v95;
        (*(*(v63 - 8) + 56))(v95, 1, 1, v63);
        type metadata accessor for WorkoutPlanEditSchedulePageDataProvider(0);
        sub_20B7D3274(&qword_27C765AB0, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider, &unk_20C159F30);
        sub_20C138D94();

        sub_20B520158(v64, &unk_27C7621D0, &unk_20C14D9B0);
        v65 = v62;
        v66 = v86;
        (*(v61 + 8))(v65, v102);
        v67 = v60;
        v68 = v84;
        (*(v59 + 8))(v67, v101);
        v69 = v91;
        sub_20B52F9E8(v68 + v104, v91, &qword_27C765810, &qword_20C159480);
        if ((v103)(v69, 1, v66) == 1)
        {
          sub_20B520158(v69, &qword_27C765810, &qword_20C159480);
          v70 = v88;
          v71 = v88;
        }

        else
        {
          v72 = v87;
          v44(v87, v69, v66);
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765860, &qword_20C15A080);
          v74 = v88;
          v71 = &v88[*(v73 + 48)];
          v44(v88, v72, v66);
          v70 = v74;
        }

        v75 = v89;
        (*(v106 + 16))(v71, v40, v66);
        swift_storeEnumTagMultiPayload();
        v76 = *v68;
        v77 = *(v68 + 8);
        v78 = v97;
        sub_20B7D32C4(v70, v75 + *(v97 + 20), type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation);
        v79 = *(v68 + *(v105 + 28));
        *v75 = v76;
        *(v75 + 8) = v77;
        *(v75 + *(v78 + 24)) = v79;
        swift_getObjectType();
        v80 = v98;
        sub_20B7D32C4(v75, v98, type metadata accessor for WorkoutPlanScheduledItemUpdate);
        sub_20B7D3274(&qword_27C765830, type metadata accessor for WorkoutPlanScheduledItemUpdated, &unk_20C162540);
        sub_20C13A764();
        sub_20B7D3390(v80, type metadata accessor for WorkoutPlanScheduledItemUpdated);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong dismissViewControllerAnimated:1 completion:0];
          swift_unknownObjectRelease();
        }

        sub_20B7D3390(v75, type metadata accessor for WorkoutPlanScheduledItemUpdate);
        sub_20B7D3390(v70, type metadata accessor for WorkoutPlanScheduledItemUpdate.Operation);
        (*(v106 + 8))(v40, v66);
        goto LABEL_18;
      }

      v47 = v100;
      sub_20C13B534();
      v48 = sub_20C13BB74();
      v49 = sub_20C13D1D4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        v51 = "[WorkoutPlanEditSchedulePageDataProvider] ignoring action button tap since refresh task in progress";
        goto LABEL_16;
      }
    }

    (*(v104 + 8))(v47, v105);
    (*(v43 + 8))(v24, v86);
LABEL_18:
    v38 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState;
    v39 = v83;
    goto LABEL_19;
  }

LABEL_32:

  __break(1u);
}

uint64_t sub_20B7CBBC0()
{
  v1[5] = v0;
  v2 = sub_20C13BB84();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(0);
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v1[12] = *(v4 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState(0);
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  v1[21] = swift_task_alloc();
  v5 = sub_20C1365F4();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = sub_20C13CDA4();
  v1[26] = sub_20C13CD94();
  v7 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B7CBE6C, v7, v6);
}

uint64_t sub_20B7CBE6C()
{
  v1 = v0[5];

  v2 = (*(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activityPickerShelf) + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier);
  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = *v2;
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];

  sub_20B7CFA4C(v4, v3, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v8 = v0[21];

    sub_20B520158(v8, &qword_27C771090, &qword_20C15A040);
    sub_20C13B534();
    v9 = sub_20C13BB74();
    v10 = sub_20C13D1D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20B517000, v9, v10, "[WorkoutPlanEditSchedulePageDataProvider] unable to find modality given identifier", v11, 2u);
      MEMORY[0x20F2F6A40](v11, -1, -1);
    }

    v12 = v0[19];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];

    (*(v14 + 8))(v13, v15);
    swift_storeEnumTagMultiPayload();
    sub_20B7D00A8(v12);
    v16 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State;
    v17 = v12;
    goto LABEL_6;
  }

  v18 = v0[20];
  v19 = v0[5];
  (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
  v20 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_state;
  swift_beginAccess();
  sub_20B7D32C4(v19 + v20, v18, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20B7D356C(v0[20], v0[15], type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    if (sub_20C1365A4() == v4 && v3 == v25)
    {
    }

    else
    {
      v27 = sub_20C13DFF4();

      if ((v27 & 1) == 0)
      {
        sub_20B7CDEE8(v0[24], 0);
LABEL_31:
        v46 = v0[15];
        (*(v0[23] + 8))(v0[24], v0[22]);
        v16 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState;
        v17 = v46;
LABEL_6:
        sub_20B7D3390(v17, v16);
        goto LABEL_24;
      }
    }

    v33 = v0[15];
    v48 = *(v0[10] + 28);
    v49 = v33;
    if (*(v33 + v48))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
      sub_20C13CE34();
      v33 = v0[15];
    }

    v47 = v33;
    v34 = v0[19];
    v35 = v0[13];
    v36 = v0[14];
    v37 = v0[11];
    v38 = v0[9];
    v39 = v0[5];
    sub_20B7D32C4(v33, v36, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    v40 = sub_20C13CDF4();
    (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
    sub_20B7D32C4(v36, v35, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);

    v41 = sub_20C13CD94();
    v42 = (*(v37 + 80) + 40) & ~*(v37 + 80);
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v41;
    v43[3] = v44;
    v43[4] = v39;
    sub_20B7D356C(v35, v43 + v42, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    v45 = sub_20B614F94(0, 0, v38, &unk_20C15A078, v43);
    sub_20B7D3390(v36, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);

    *(v49 + v48) = v45;
    sub_20B7D32C4(v47, v34, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    swift_storeEnumTagMultiPayload();
    sub_20B7D00A8(v34);
    sub_20B7D3390(v34, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
    goto LABEL_31;
  }

  sub_20B7D356C(v0[20], v0[17], type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState);
  if (sub_20C1365A4() == v4 && v3 == v22)
  {
  }

  else
  {
    v24 = sub_20C13DFF4();

    if ((v24 & 1) == 0)
    {
      sub_20B7CDEE8(v0[24], 0);
    }
  }

  v29 = v0[23];
  v28 = v0[24];
  v30 = v0[22];
  sub_20B7D3390(v0[17], type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState);
  (*(v29 + 8))(v28, v30);
LABEL_24:

  v31 = v0[1];

  return v31();
}

uint64_t sub_20B7CC4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_20C13BB84();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = sub_20C1365F4();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_20C137B24();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  sub_20C13CDA4();
  v4[29] = sub_20C13CD94();
  v9 = sub_20C13CD24();
  v4[30] = v9;
  v4[31] = v8;

  return MEMORY[0x2822009F8](sub_20B7CC694, v9, v8);
}

uint64_t sub_20B7CC694()
{
  v1 = v0[18];
  (*(v0[24] + 16))(v0[25], v0[17], v0[23]);
  sub_20C1365A4();
  KeyPath = swift_getKeyPath();
  v0[2] = v1;
  v0[3] = sub_20B7D3868;
  v0[4] = KeyPath;
  v0[5] = sub_20B7D1AD0;
  v0[6] = 0;

  v3 = sub_20B7D18AC();
  if (v5)
  {
    goto LABEL_9;
  }

  v6 = v0[18];
  if (*(v6 + 36) != v4)
  {
    __break(1u);
LABEL_9:

    __break(1u);
LABEL_10:

    __break(1u);
    return MEMORY[0x2821AEAF8](v19, v20, v22, v23, v21, v24, v25, v18);
  }

  if (v3 != 1 << *(v6 + 32))
  {
    sub_20BB623C0(v3, v4, 0, v6);
    if (v7 < 0)
    {
      goto LABEL_10;
    }
  }

  v8 = v0[28];
  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[23];
  v13 = v0[18];
  v12 = v0[19];

  sub_20B7CA78C(v13);
  sub_20C137B14();
  (*(v9 + 8))(v10, v11);
  v14 = swift_task_alloc();
  v0[32] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v8;
  v15 = sub_20C13B3A4();
  v16 = MEMORY[0x277D4F7C0];
  v0[10] = v15;
  v0[11] = v16;
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_20C13B394();
  v17 = swift_task_alloc();
  v0[33] = v17;
  v18 = sub_20C135524();
  *v17 = v0;
  v17[1] = sub_20B7CC92C;
  v19 = v0[16];
  v20 = &unk_20C15A068;
  v21 = v0 + 7;
  v22 = v14;
  v23 = 3;
  v24 = 0;
  v25 = 0;

  return MEMORY[0x2821AEAF8](v19, v20, v22, v23, v21, v24, v25, v18);
}

uint64_t sub_20B7CC92C()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 7);
  if (v0)
  {
    v3 = v2[30];
    v4 = v2[31];
    v5 = sub_20B7CCB0C;
  }

  else
  {

    v3 = v2[30];
    v4 = v2[31];
    v5 = sub_20B7CCA5C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20B7CCA5C()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B7CCB0C()
{
  v22 = v0;
  v1 = v0[34];

  sub_20C13B534();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2F5850](v0[13], v0[14]);
    v12 = sub_20B51E694(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "[WorkoutPlanEditSchedulePageDataProvider] failed to refresh filter results - %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[20];

    (*(v14 + 8))(v13, v15);
  }

  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[26];
  swift_willThrow();
  (*(v17 + 8))(v16, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_20B7CCD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_20C13CDA4();
  v3[5] = sub_20C13CD94();
  v5 = sub_20C13CD24();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_20B7CCDC4, v5, v4);
}

uint64_t sub_20B7CCDC4(__n128 a1)
{
  sub_20C13CE54();
  v2 = (v1[3] + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_workoutPlanClient);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_20B7CCEDC;
  v6 = v1[4];
  v7 = v1[2];

  return MEMORY[0x2821ADF40](v7, v6, v3, v4);
}

uint64_t sub_20B7CCEDC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_20B7CD07C;
  }

  else
  {
    v5 = sub_20B7CD018;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20B7CD018()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B7CD07C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B7CD0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(0);
  v5[17] = swift_task_alloc();
  v6 = sub_20C135524();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  sub_20C13CDA4();
  v5[21] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v5[22] = v8;
  v5[23] = v7;

  return MEMORY[0x2822009F8](sub_20B7CD234, v8, v7);
}

uint64_t sub_20B7CD234(__n128 a1)
{
  sub_20C13CE54();
  v2 = *(v1 + 104);
  v3 = *(*(v1 + 128) + 24);
  *(v1 + 216) = v3;
  v4 = sub_20B7CA628();
  *(v1 + 192) = v4;
  v5 = swift_task_alloc();
  *(v1 + 200) = v5;
  *v5 = v1;
  v5[1] = sub_20B7CD370;
  v6 = *(v1 + 160);

  return sub_20B7CC4E4(v6, v2 + v3, v4);
}

uint64_t sub_20B7CD370()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_20B7CD7DC;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_20B7CD48C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20B7CD48C()
{
  v1 = *(v0 + 208);

  sub_20C13CE54();
  v2 = *(v0 + 160);
  if (v1)
  {
    (*(*(v0 + 152) + 8))(v2, *(v0 + 144));

    v3 = *(v0 + 8);
  }

  else
  {
    v4 = sub_20BB110D4(v2);
    v5 = sub_20B7CA0FC();
    if (v4)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = v5 + 32;
        do
        {
          v8 = *(v0 + 216);
          v9 = *(v0 + 104);
          sub_20B51CC64(v7, v0 + 56);
          v10 = *(v0 + 80);
          v11 = *(v0 + 88);
          __swift_project_boxed_opaque_existential_1((v0 + 56), v10);
          sub_20BC6A538(v10, v11);
          v12 = *(v0 + 80);
          v13 = *(v0 + 88);
          __swift_project_boxed_opaque_existential_1((v0 + 56), v12);
          sub_20BC6A584(v9, v9 + v8, v12, v13);
          __swift_destroy_boxed_opaque_existential_1((v0 + 56));
          v7 += 40;
          --v6;
        }

        while (v6);
      }

      v14 = *(v0 + 144);
      v15 = *(v0 + 152);
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      v18 = *(v0 + 104);
      sub_20B7D32C4(v18, v16, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
      (*(v15 + 24))(v16 + *(v17 + 20), v18, v14);
    }

    else
    {
      v19 = *(v5 + 16);
      if (v19)
      {
        v20 = v5 + 32;
        do
        {
          v21 = *(v0 + 216);
          v22 = *(v0 + 160);
          v23 = *(v0 + 104);
          sub_20B51CC64(v20, v0 + 16);
          v24 = *(v0 + 40);
          v25 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
          sub_20BC6A584(v22, v23 + v21, v24, v25);
          __swift_destroy_boxed_opaque_existential_1((v0 + 16));
          v20 += 40;
          --v19;
        }

        while (v19);
      }

      v27 = *(v0 + 152);
      v26 = *(v0 + 160);
      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      v30 = *(v0 + 128);
      sub_20B7D32C4(*(v0 + 104), v29, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
      (*(v27 + 24))(v29 + *(v30 + 20), v26, v28);
      v31 = *(v30 + 28);

      *(v29 + v31) = 0;
    }

    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v35 = *(v0 + 136);
    v34 = *(v0 + 144);
    v36 = *(v0 + 120);
    sub_20B7D32C4(v35, v36, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    swift_storeEnumTagMultiPayload();
    sub_20B7D00A8(v36);
    sub_20B7D3390(v36, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
    sub_20B7D3390(v35, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    (*(v33 + 8))(v32, v34);

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_20B7CD7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B7CD874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  v4[7] = swift_task_alloc();
  v5 = sub_20C13BB84();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_20C135524();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  sub_20C13CDA4();
  v4[14] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v4[15] = v8;
  v4[16] = v7;

  return MEMORY[0x2822009F8](sub_20B7CD9F8, v8, v7);
}

uint64_t sub_20B7CD9F8(__n128 a1)
{
  sub_20C13CE54();
  v2 = swift_task_alloc();
  v1[17] = v2;
  *v2 = v1;
  v2[1] = sub_20B7CDB08;
  v3 = v1[13];
  v4 = v1[4];
  v5 = v1[3];

  return sub_20B7CC4E4(v3, v4, v5);
}

uint64_t sub_20B7CDB08()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_20B7CDD50;
  }

  else
  {
    v5 = sub_20B7CDC44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20B7CDC44()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[2];

  (*(v4 + 32))(v5, v2, v3);
  sub_20C13CE54();
  if (v1)
  {
    (*(v0[12] + 8))(v0[2], v0[11]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_20B7CDD50()
{

  sub_20C13CE54();
  sub_20C13B534();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "[WorkoutPlanEditSchedulePageDataProvider] failed to load filter result given filter items", v3, 2u);
    MEMORY[0x20F2F6A40](v3, -1, -1);
  }

  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  swift_storeEnumTagMultiPayload();
  sub_20B7D00A8(v7);
  sub_20B7D3390(v7, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_20B7CDEE8(uint64_t a1, int a2)
{
  v3 = v2;
  v51 = a2;
  v52 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState(0);
  MEMORY[0x28223BE20](v52);
  v53 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v44 - v12;
  v49 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  MEMORY[0x28223BE20](v49);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v17 + 8))(v19, v16);
  v20 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_state;
  swift_beginAccess();
  sub_20B7D32C4(v3 + v20, v15, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  sub_20B7CE4E4();
  v48 = v15;
  sub_20B7D3390(v15, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  v45 = sub_20B7CA628();
  v21 = v7 + 16;
  v54 = *(v7 + 16);
  v54(v13, a1, v6);
  v50 = v7;
  v22 = *(v7 + 56);
  v23 = v6;
  v22(v13, 0, 1, v6);
  sub_20B95E284(v13);
  sub_20B520158(v13, &qword_27C771090, &qword_20C15A040);
  v24 = sub_20B7CA0FC();
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 32;
    do
    {
      sub_20B51CC64(v26, v56);
      v27 = v57;
      v28 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      sub_20BC6A59C(a1, v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v56);
      v26 += 40;
      --v25;
    }

    while (v25);
  }

  v29 = sub_20C13CDF4();
  (*(*(v29 - 8) + 56))(v55, 1, 1, v29);
  v30 = v46;
  v44[1] = v21;
  v54(v46, a1, v23);
  sub_20C13CDA4();

  v31 = sub_20C13CD94();
  v32 = v30;
  v33 = v3;
  v34 = v50;
  v35 = (*(v50 + 80) + 40) & ~*(v50 + 80);
  v36 = v35 + v47;
  v37 = (v35 + v47) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D85700];
  *(v38 + 2) = v31;
  *(v38 + 3) = v39;
  *(v38 + 4) = v33;
  (*(v34 + 32))(&v38[v35], v32, v23);
  v38[v36] = v51 & 1;
  *&v38[v37 + 8] = v45;
  v40 = sub_20B614F94(0, 0, v55, &unk_20C15A050, v38);
  v41 = v53;
  v54(v53 + *(v52 + 20), a1, v23);
  *v41 = v40;
  v42 = v48;
  sub_20B7D32C4(v41, v48, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState);
  swift_storeEnumTagMultiPayload();
  sub_20B7D00A8(v42);
  sub_20B7D3390(v42, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  return sub_20B7D3390(v41, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState);
}

uint64_t sub_20B7CE4E4()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B7D32C4(v1, v10, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 2)
  {
    if (result)
    {
      sub_20B7D356C(v10, v4, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
      if (*&v4[*(v2 + 28)])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
        sub_20C13CE34();
      }

      v12 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState;
      v13 = v4;
    }

    else
    {
      sub_20B7D356C(v10, v7, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState);
      if (*v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
        sub_20C13CE34();
      }

      v12 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState;
      v13 = v7;
    }

    return sub_20B7D3390(v13, v12);
  }

  return result;
}

uint64_t sub_20B7CE724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 184) = a5;
  *(v7 + 192) = a7;
  *(v7 + 392) = a6;
  *(v7 + 176) = a4;
  *(v7 + 200) = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(0);
  *(v7 + 224) = swift_task_alloc();
  v8 = sub_20C13BB84();
  *(v7 + 232) = v8;
  *(v7 + 240) = *(v8 - 8);
  *(v7 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  *(v7 + 256) = swift_task_alloc();
  v9 = sub_20C136864();
  *(v7 + 264) = v9;
  *(v7 + 272) = *(v9 - 8);
  *(v7 + 280) = swift_task_alloc();
  v10 = sub_20C135524();
  *(v7 + 288) = v10;
  *(v7 + 296) = *(v10 - 8);
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  sub_20C13CDA4();
  *(v7 + 328) = sub_20C13CD94();
  v12 = sub_20C13CD24();
  *(v7 + 336) = v12;
  *(v7 + 344) = v11;

  return MEMORY[0x2822009F8](sub_20B7CE988, v12, v11);
}

uint64_t sub_20B7CE988(__n128 a1)
{
  sub_20C13CE54();
  v2 = swift_task_alloc();
  v1[44] = v2;
  *v2 = v1;
  v2[1] = sub_20B7CEAF4;
  v3 = v1[40];
  v4 = v1[23];
  v5 = MEMORY[0x277D84FA0];

  return sub_20B7CD874(v3, v5, v4);
}

uint64_t sub_20B7CEAF4()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_20B7CF890;
  }

  else
  {
    v5 = sub_20B7CEC30;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20B7CEC30(__n128 a1)
{
  v2 = *(v1 + 360);
  sub_20C13CE54();
  if (v2)
  {
    v3 = *(v1 + 320);
    v4 = *(v1 + 288);
    v5 = *(v1 + 296);

    (*(v5 + 8))(v3, v4);

    v6 = *(v1 + 8);
LABEL_3:

    return v6();
  }

  v8 = sub_20B7CA0FC();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      v11 = *(v1 + 320);
      v12 = *(v1 + 184);
      sub_20B51CC64(v10, v1 + 16);
      v13 = *(v1 + 40);
      v14 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1((v1 + 16), v13);
      sub_20BC6A5F8(v11, v12, v13, v14);
      __swift_destroy_boxed_opaque_existential_1((v1 + 16));
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  v15 = *(v1 + 264);
  v16 = *(v1 + 272);
  v17 = *(v1 + 256);
  v18 = *(v1 + 176) + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem;
  v19 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  sub_20B52F9E8(v18 + *(v19 + 24), v17, &qword_27C765810, &qword_20C159480);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    sub_20B520158(*(v1 + 256), &qword_27C765810, &qword_20C159480);
  }

  else
  {
    v20 = *(v1 + 392);
    (*(*(v1 + 272) + 32))(*(v1 + 280), *(v1 + 256), *(v1 + 264));
    v23 = *(v1 + 272);
    v22 = *(v1 + 280);
    v24 = *(v1 + 264);
    if (v20 == 1)
    {
      sub_20BAF2B5C(v21);
      v26 = v25;
      (*(v23 + 8))(v22, v24);
      goto LABEL_26;
    }

    (*(v23 + 8))(*(v1 + 280), *(v1 + 264));
  }

  v27 = sub_20B7CA0FC();
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + 32;
    v30 = MEMORY[0x277D84F90];
    do
    {
      v32 = *(v1 + 192);
      sub_20B51CC64(v29, v1 + 56);
      v33 = *(v1 + 80);
      v34 = *(v1 + 88);
      __swift_project_boxed_opaque_existential_1((v1 + 56), v33);
      sub_20BC6A6C8(v32, v33, v34);
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = v39;
      __swift_destroy_boxed_opaque_existential_1((v1 + 56));
      if (v41 <= 0xFB)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC07288(0, *(v30 + 2) + 1, 1, v30);
        }

        v43 = *(v30 + 2);
        v42 = *(v30 + 3);
        if (v43 >= v42 >> 1)
        {
          v30 = sub_20BC07288((v42 > 1), v43 + 1, 1, v30);
        }

        *(v30 + 2) = v43 + 1;
        v31 = &v30[24 * v43];
        *(v31 + 4) = v36;
        *(v31 + 5) = v38;
        v31[48] = v40;
      }

      v29 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v26 = sub_20B717130(v30);

LABEL_26:
  *(v1 + 368) = v26;
  if (!*(v26 + 16))
  {
    v47 = *(v1 + 320);
    v48 = *(v1 + 312);
    v49 = *(v1 + 288);
    v50 = *(v1 + 296);

    v69 = *(v50 + 16);
    v69(v48, v47, v49);
    v51 = sub_20B7CA0FC();
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = v51 + 32;
      do
      {
        v54 = *(v1 + 312);
        v55 = *(v1 + 184);
        sub_20B51CC64(v53, v1 + 136);
        v56 = *(v1 + 160);
        v57 = *(v1 + 168);
        __swift_project_boxed_opaque_existential_1((v1 + 136), v56);
        sub_20BC6A584(v54, v55, v56, v57);
        __swift_destroy_boxed_opaque_existential_1((v1 + 136));
        v53 += 40;
        --v52;
      }

      while (v52);
    }

    v58 = *(v1 + 312);
    v59 = *(v1 + 296);
    v60 = *(v1 + 288);
    v61 = *(v1 + 216);
    v62 = *(v1 + 224);
    v63 = *(v1 + 208);
    v64 = *(v1 + 184);
    v68 = *(v1 + 320);
    (v69)(v62);
    v69(v62 + v61[5], v58, v60);
    v65 = v61[6];
    v66 = sub_20C1365F4();
    (*(*(v66 - 8) + 16))(v62 + v65, v64, v66);
    *(v62 + v61[7]) = 0;
    sub_20B7D32C4(v62, v63, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    swift_storeEnumTagMultiPayload();
    sub_20B7D00A8(v63);
    sub_20B7D3390(v63, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
    sub_20B7D3390(v62, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    v67 = *(v59 + 8);
    v67(v58, v60);
    v67(v68, v60);

    v6 = *(v1 + 8);
    goto LABEL_3;
  }

  v44 = swift_task_alloc();
  *(v1 + 376) = v44;
  *v44 = v1;
  v44[1] = sub_20B7CF294;
  v45 = *(v1 + 304);
  v46 = *(v1 + 184);

  return sub_20B7CD874(v45, v26, v46);
}

uint64_t sub_20B7CF294()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_20B7CF960;
  }

  else
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_20B7CF3B0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20B7CF3B0()
{
  v1 = v0[48];

  v2 = sub_20C13CE54();
  if (v1)
  {
    v3 = v0[40];
    v4 = v0[36];
    v5 = *(v0[37] + 8);
    v5(v0[38], v4);

    v5(v3, v4);

    v6 = v0[1];
  }

  else
  {
    if (sub_20BB110D4(v2))
    {

      sub_20C13B534();
      v7 = sub_20C13BB74();
      v8 = sub_20C13D1D4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_20B517000, v7, v8, "[WorkoutPlanEditSchedulePageDataProvider] empty initial filter result for scheduled item", v9, 2u);
        MEMORY[0x20F2F6A40](v9, -1, -1);
      }

      v11 = v0[39];
      v10 = v0[40];
      v13 = v0[37];
      v12 = v0[38];
      v14 = v0[36];
      v16 = v0[30];
      v15 = v0[31];
      v17 = v0[29];

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
      v44 = *(v13 + 16);
      v44(v11, v10, v14);
    }

    else
    {
      v44 = *(v0[37] + 16);
      v44(v0[39], v0[38], v0[36]);
      v18 = sub_20B7CA0FC();
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + 32;
        do
        {
          v21 = v0[46];
          v22 = v0[23];
          sub_20B51CC64(v20, (v0 + 12));
          v23 = v0[15];
          v24 = v0[16];
          __swift_project_boxed_opaque_existential_1(v0 + 12, v23);
          sub_20BC6A954(v21, v22, v23, v24);
          __swift_destroy_boxed_opaque_existential_1(v0 + 12);
          v20 += 40;
          --v19;
        }

        while (v19);
      }

      (*(v0[37] + 8))(v0[38], v0[36]);
    }

    v25 = sub_20B7CA0FC();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = v25 + 32;
      do
      {
        v28 = v0[39];
        v29 = v0[23];
        sub_20B51CC64(v27, (v0 + 17));
        v30 = v0[20];
        v31 = v0[21];
        __swift_project_boxed_opaque_existential_1(v0 + 17, v30);
        sub_20BC6A584(v28, v29, v30, v31);
        __swift_destroy_boxed_opaque_existential_1(v0 + 17);
        v27 += 40;
        --v26;
      }

      while (v26);
    }

    v32 = v0[39];
    v33 = v0[37];
    v43 = v0[40];
    v34 = v0[36];
    v36 = v0[27];
    v35 = v0[28];
    v37 = v0[26];
    v38 = v0[23];
    (v44)(v35);
    v44(v35 + v36[5], v32, v34);
    v39 = v36[6];
    v40 = sub_20C1365F4();
    (*(*(v40 - 8) + 16))(v35 + v39, v38, v40);
    *(v35 + v36[7]) = 0;
    sub_20B7D32C4(v35, v37, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    swift_storeEnumTagMultiPayload();
    sub_20B7D00A8(v37);
    sub_20B7D3390(v37, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
    sub_20B7D3390(v35, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
    v41 = *(v33 + 8);
    v41(v32, v34);
    v41(v43, v34);

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_20B7CF890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B7CF960()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_20B7CFA4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_20C1365F4();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v34 = &v30 - v13;
  v36 = a2;
  if (a2)
  {
    v30 = a3;
    v14 = *(v3 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_modalityReferences);
    v15 = v14 + 56;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 56);
    v19 = (v16 + 63) >> 6;
    v32 = v11 + 16;
    v33 = v11 + 32;
    v37 = v11;
    v31 = (v11 + 8);
    v35 = v14;

    v20 = 0;
    if (v18)
    {
      while (1)
      {
        v21 = v20;
        v22 = v37;
LABEL_10:
        v23 = v34;
        (*(v22 + 16))(v34, *(v35 + 48) + *(v22 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v7);
        v24 = *(v37 + 32);
        v24(v9, v23, v7);
        if (sub_20C1365A4() == a1 && v25 == v36)
        {

          goto LABEL_21;
        }

        v26 = a1;
        v27 = sub_20C13DFF4();

        if (v27)
        {
          break;
        }

        v18 &= v18 - 1;
        (*v31)(v9, v7);
        v20 = v21;
        a1 = v26;
        if (!v18)
        {
          goto LABEL_6;
        }
      }

LABEL_21:
      v29 = v30;
      v24(v30, v9, v7);
      (*(v37 + 56))(v29, 0, 1, v7);
    }

    else
    {
LABEL_6:
      v22 = v37;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {

          (*(v37 + 56))(v30, 1, 1, v7);
          return;
        }

        v18 = *(v15 + 8 * v21);
        ++v20;
        if (v18)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v28 = *(v11 + 56);

    v28(a3, 1, 1, v7, v12);
  }
}

void sub_20B7CFD78()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_state;
  swift_beginAccess();
  sub_20B7D32C4(v1 + v8, v7, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v10 = EnumCaseMultiPayload == 2;
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20B7D3390(v7, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
    v10 = 1;
    goto LABEL_14;
  }

  v11 = sub_20B7D356C(v7, v4, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
  if (sub_20BB110D4(v11))
  {
    goto LABEL_12;
  }

  v12 = sub_20B7CA628();
  KeyPath = swift_getKeyPath();
  v23[8] = v12;
  v23[9] = sub_20B7D3868;
  v23[10] = KeyPath;
  v23[11] = sub_20B7D1AD0;
  v23[12] = 0;

  v14 = sub_20B7D18AC();
  if (v16)
  {
    goto LABEL_18;
  }

  if (*(v12 + 36) != v15)
  {
    __break(1u);
LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

  if (v14 == 1 << *(v12 + 32))
  {

LABEL_12:
    v10 = sub_20B6B3CAC(MEMORY[0x277D84F90]);
    goto LABEL_13;
  }

  sub_20BB623C0(v14, v15, 0, v12);
  if (v17 < 0)
  {
LABEL_19:

    __break(1u);
    return;
  }

  v10 = 2;

  sub_20B7D0AD0();
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_20B7D3390(v4, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState);
LABEL_14:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v23[3] = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider(0);
    v23[4] = &off_2822A7778;
    v23[0] = v1;
    v21 = *(v19 + 16);

    v21(v23, 0, v10, ObjectType, v19);
    swift_unknownObjectRelease();
    sub_20B7D33F0(0, v10);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_20B7D33F0(0, v10);
  }
}

uint64_t sub_20B7D00A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v23[-v14];
  v16 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_state;
  swift_beginAccess();
  sub_20B7D32C4(v2 + v16, v15, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  swift_beginAccess();
  sub_20B7D332C(a1, v2 + v16);
  swift_endAccess();
  sub_20B7CFD78();
  sub_20B7D32C4(v15, v12, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  v17 = swift_getEnumCaseMultiPayload() == 3;
  sub_20B7D3390(v12, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  sub_20B7D32C4(a1, v9, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  LODWORD(v12) = swift_getEnumCaseMultiPayload();
  sub_20B7D3390(v9, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  if (((v17 ^ (v12 != 3)) & 1) == 0)
  {
    sub_20B7D32C4(a1, v6, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload >= 2)
    {
      if (EnumCaseMultiPayload != 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_20C14F980;
        type metadata accessor for LoadingErrorShelf(0);
        swift_allocObject();

        v21 = sub_20BEFE8F4(v20, 0, 0);

        *(v19 + 32) = v21;
        *(v19 + 40) = &off_2822F4EF0;
LABEL_7:
        sub_20B7D048C(v19, 0);

        return sub_20B7D3390(v15, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
      }
    }

    else
    {
      sub_20B7D3390(v6, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20C150DB0;
    *(v19 + 32) = *(v2 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activityPickerShelf);
    *(v19 + 40) = &off_2822B8C28;
    *(v19 + 48) = *(v2 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_durationPickerShelf);
    *(v19 + 56) = &off_2822D0AB0;
    *(v19 + 64) = *(v2 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_equipmentPickerShelf);
    *(v19 + 72) = &off_282304DC8;
    *(v19 + 80) = *(v2 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_bodyFocusPickerShelf);
    *(v19 + 88) = &off_282297330;
    *(v19 + 96) = *(v2 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_skillLevelPickerShelf);
    *(v19 + 104) = &off_28229A838;
    *(v19 + 112) = *(v2 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_themePickerShelf);
    *(v19 + 120) = &off_2822BDEC0;

    goto LABEL_7;
  }

  return sub_20B7D3390(v15, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
}

uint64_t sub_20B7D048C(uint64_t a1, int a2)
{
  v3 = v2;
  v59 = a2;
  v5 = *(v2 + 48);
  v6 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier + 8);
  v63 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v75);
  v62 = v6;

  v61 = v7;
  v60 = sub_20C1380F4();
  v8 = type metadata accessor for MetricLocationStore();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F98];
  *(v9 + 16) = MEMORY[0x277D84F90];
  *(v9 + 24) = v11;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v18 = type metadata accessor for CatalogPageImpressionTracker();
  v74[3] = v18;
  v19 = sub_20B7D3274(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v74[4] = v19;
  v74[0] = v17;
  v73[3] = v8;
  v73[4] = &off_2822B6968;
  v73[0] = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v57 = v18;
    v58 = v8;
    v72[0] = v10;
    sub_20BB5D394(0, v20, 0);
    v10 = v72[0];
    v21 = (a1 + 32);
    do
    {
      v22 = *v21;
      v72[0] = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      v64 = v22;
      swift_unknownObjectRetain();
      if (v24 >= v23 >> 1)
      {
        sub_20BB5D394((v23 > 1), v24 + 1, 1);
        v10 = v72[0];
      }

      *(v10 + 16) = v24 + 1;
      v25 = v10 + 24 * v24;
      *(v25 + 32) = v64;
      *(v25 + 48) = 0;
      ++v21;
      --v20;
    }

    while (v20);
    v18 = v57;
    v8 = v58;
  }

  sub_20B51CC64(v74, v72);
  sub_20B51CC64(v73, v71);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v72, v72[3]);
  *&v64 = &v57;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v71, v71[3]);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = *v29;
  v37 = *v34;
  v69 = v18;
  v70 = v19;
  v68[0] = v36;
  v66 = v8;
  v67 = &off_2822B6968;
  v65[0] = v37;
  v38 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v57 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = sub_20BE3AA74(v63, v62, v10, v60, v61, *v42, *v47, 2, v38);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v50 = *(v3 + 48);
  *(v3 + 48) = v49;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v52 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v76 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider(0);
    v77 = &off_2822A7778;
    v75[0] = v3;
    v54 = *(v3 + 48);
    v55 = *(v52 + 24);

    v56 = v54;
    v55(v75, v56, v59 & 1, ObjectType, v52);

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  return result;
}

void sub_20B7D0AD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765AA0, &qword_20C15A010);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_20C136864();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = (*(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activityPickerShelf) + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier);
  if (v19[1])
  {
    v42 = v7;
    v43 = v2;
    v40 = v18;
    v44 = v4;
    v45 = &v39 - v17;
    v20 = *v19;

    v21 = sub_20B7CA628();
    KeyPath = swift_getKeyPath();
    v46 = v21;
    v47 = sub_20B7D32BC;
    v48 = KeyPath;
    v49 = sub_20B7D1AD0;
    v50 = 0;

    v23 = sub_20B7D18AC();
    if ((v25 & 1) == 0)
    {
      if (*(v21 + 36) == v24)
      {
        if (v23 == 1 << *(v21 + 32))
        {

          return;
        }

        v39 = v20;
        v41 = v10;
        sub_20BB623C0(v23, v24, 0, v21);
        if ((v26 & 0x80) == 0)
        {

          v27 = sub_20B7CA628();
          sub_20B7CA78C(v27);

          sub_20C136824();
          v28 = v45;
          v39 = *(v12 + 32);
          v39(v45, v15, v11);
          v29 = v41;
          (*(v12 + 16))(v41, v28, v11);
          (*(v12 + 56))(v29, 0, 1, v11);
          v30 = v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem;
          v31 = *(type metadata accessor for WorkoutPlanScheduleEditableItem(0) + 24);
          v32 = v44;
          v33 = *(v43 + 48);
          sub_20B52F9E8(v29, v44, &qword_27C765810, &qword_20C159480);
          sub_20B52F9E8(v30 + v31, v32 + v33, &qword_27C765810, &qword_20C159480);
          v34 = *(v12 + 48);
          if (v34(v32, 1, v11) == 1)
          {
            sub_20B520158(v29, &qword_27C765810, &qword_20C159480);
            (*(v12 + 8))(v45, v11);
            if (v34(v32 + v33, 1, v11) == 1)
            {
              sub_20B520158(v32, &qword_27C765810, &qword_20C159480);
              return;
            }
          }

          else
          {
            v35 = v42;
            sub_20B52F9E8(v32, v42, &qword_27C765810, &qword_20C159480);
            if (v34(v32 + v33, 1, v11) != 1)
            {
              v37 = v40;
              v39(v40, (v32 + v33), v11);
              sub_20B7D3274(&qword_27C765AA8, MEMORY[0x277D52CE0], MEMORY[0x277D52CF0]);
              sub_20C13C894();
              v38 = *(v12 + 8);
              v38(v37, v11);
              sub_20B520158(v41, &qword_27C765810, &qword_20C159480);
              v38(v45, v11);
              v38(v35, v11);
              sub_20B520158(v32, &qword_27C765810, &qword_20C159480);
              return;
            }

            sub_20B520158(v41, &qword_27C765810, &qword_20C159480);
            v36 = *(v12 + 8);
            v36(v45, v11);
            v36(v35, v11);
          }

          sub_20B520158(v32, &qword_27C765AA0, &qword_20C15A010);
          return;
        }

LABEL_17:

        __break(1u);
        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_20B7D10D4()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_configurationClient));

  sub_20B7D3390(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem, type metadata accessor for WorkoutPlanScheduleEditableItem);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_workoutPlanClient));

  sub_20B7D3390(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_state, type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State);
  return v0;
}

uint64_t sub_20B7D126C()
{
  sub_20B7D10D4();

  return swift_deallocClassInstance();
}

uint64_t sub_20B7D12EC(uint64_t a1)
{
  result = sub_20C1333A4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WorkoutPlanScheduleEditableItem(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_20B7D147C(uint64_t a1)
{
  result = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatingState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_20B7D1558(uint64_t a1)
{
  sub_20C135524();
  if (v1 <= 0x3F)
  {
    sub_20C1365F4();
    if (v2 <= 0x3F)
    {
      sub_20B7D15F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20B7D15F4(uint64_t a1)
{
  if (!qword_27C765A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C765A68, "rI\t");
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C765A60);
    }
  }
}

void sub_20B7D1680(uint64_t a1)
{
  sub_20B7D15F4(319);
  if (v1 <= 0x3F)
  {
    sub_20C1365F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20B7D1724()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B695AF8;

    return sub_20B7CBBC0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B7D180C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B7D18AC()
{
  v1 = *v0;
  v23 = v0[1];
  v22 = v0[3];
  v2 = *v0 + 56;
  result = sub_20C13DAA4();
  v4 = result;
  v5 = *(v1 + 36);
  v6 = 1 << *(v1 + 32);
  if (result == v6)
  {
    return v4;
  }

  else
  {
    while ((v4 & 0x8000000000000000) == 0 && v4 < v6)
    {
      v8 = v4 >> 6;
      if ((*(v2 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v9 = *(v1 + 48) + 24 * v4;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v13 = sub_20B6D8730(v10, v11, v12);
      v23(&v27, &v24, v13);
      v14 = sub_20B6D8758(v10, v11, v12);
      v24 = v27;
      LOBYTE(v25) = v28;
      result = v22(&v24, v14);
      if (result)
      {
        return v4;
      }

      v7 = 1 << *(v1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v15 = *(v2 + 8 * v8);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v5 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = (v1 + 64 + 8 * v8);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_20B526EA4(v4, v5, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_6;
          }
        }

        result = sub_20B526EA4(v4, v5, 0);
      }

LABEL_6:
      v5 = *(v1 + 36);
      v6 = 1 << *(v1 + 32);
      v4 = v7;
      if (v7 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B7D1AE0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v7 = v6;
  v163 = a4;
  v164 = a5;
  v12 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v12 - 8);
  v165 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v14 - 8);
  v167 = &v158 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v16 - 8);
  v166 = &v158 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v158 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v158 - v22;
  v171 = sub_20C1333A4();
  v173 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v172 = &v158 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v158 - v28;
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activationState) = 0;
  type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  swift_storeEnumTagMultiPayload();
  sub_20B7D32C4(a2, v6 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_editableItem, type metadata accessor for WorkoutPlanScheduleEditableItem);
  v161 = a3;
  v162 = a6;
  *(v6 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_modalityReferences) = a3;
  *(v6 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_preferredModalityReferences) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(&v198, v6 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_configurationClient);
  *(v6 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_dependencies) = a1;

  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v6 + 56) = v198;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20B51C710(&v198, v6 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_workoutPlanClient);
  v160 = type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v6 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_workoutPlanStringBuilder) = v198;
  v30 = *(type metadata accessor for WorkoutPlanScheduleEditableItem(0) + 24);
  v168 = a2;
  sub_20B52F9E8(a2 + v30, v29, &qword_27C765810, &qword_20C159480);
  v31 = sub_20C136864();
  v32 = (*(*(v31 - 8) + 48))(v29, 1, v31);
  sub_20B520158(v29, &qword_27C765810, &qword_20C159480);
  if (v32 == 1)
  {
    v33 = 0x7669746341646441;
  }

  else
  {
    v33 = 0x6341796669646F4DLL;
  }

  if (v32 == 1)
  {
    v34 = 0xEB00000000797469;
  }

  else
  {
    v34 = 0xEE00797469766974;
  }

  v35 = *MEMORY[0x277D517D8];
  v36 = sub_20C1352F4();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v23, v35, v36);
  (*(v37 + 56))(v23, 0, 1, v36);
  v38 = sub_20C132C14();
  (*(*(v38 - 8) + 56))(v20, 1, 1, v38);
  v39 = sub_20C135ED4();
  (*(*(v39 - 8) + 56))(v166, 1, 1, v39);
  v40 = sub_20C136914();
  (*(*(v40 - 8) + 56))(v167, 1, 1, v40);

  v41 = v172;
  v166 = v34;
  v167 = v33;
  sub_20C133384();
  v42 = *(v173 + 16);
  v163 = v42;
  v43 = v171;
  (v42)(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_metricPage, v41, v171);
  (v42)(v169, v41, v43);
  type metadata accessor for WorkoutPlanActivityPickerShelf(0);
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v45 = v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_row;
  sub_20B5D8060(&v198);
  v46 = v203;
  *(v45 + 64) = v202;
  *(v45 + 80) = v46;
  *(v45 + 160) = v208;
  v47 = v207;
  *(v45 + 128) = v206;
  *(v45 + 144) = v47;
  v48 = v205;
  *(v45 + 96) = v204;
  *(v45 + 112) = v48;
  v49 = v199;
  *v45 = v198;
  *(v45 + 16) = v49;
  v50 = v201;
  *(v45 + 32) = v200;
  *(v45 + 48) = v50;
  v51 = (v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_selectedModalityIdentifier);
  *v51 = 0;
  v51[1] = 0;
  *&v195 = v161;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10, &qword_20C1542C0);
  sub_20B69851C();
  v52 = sub_20C13CBF4();

  *(v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_modalityReferences) = v52;
  v53 = v163;
  *(v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_preferredModalityReferences) = v162;
  v54 = v169;
  (v53)(v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_metricPage, v169, v43);
  sub_20C133AA4();
  *(v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_eventHub) = v195;
  sub_20C133AA4();

  v55 = *(v173 + 8);
  v173 += 8;
  v164 = v55;
  v55(v54, v43);
  *(v44 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_workoutPlanStringBuilder) = v195;
  *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activityPickerShelf) = v44;
  (v53)(v54, v172, v43);
  type metadata accessor for WorkoutPlanDurationPickerShelf(0);
  swift_allocObject();

  v57 = sub_20BB939F8(v56, v54);

  *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_durationPickerShelf) = v57;
  type metadata accessor for WorkoutPlanEquipmentPickerShelf(0);
  v58 = swift_allocObject();
  *(v58 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v59 = v58 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row;
  v60 = v207;
  *(v59 + 128) = v206;
  *(v59 + 144) = v60;
  *(v59 + 160) = v208;
  v61 = v203;
  *(v59 + 64) = v202;
  *(v59 + 80) = v61;
  v62 = v205;
  *(v59 + 96) = v204;
  *(v59 + 112) = v62;
  v63 = v199;
  *v59 = v198;
  *(v59 + 16) = v63;
  v64 = v201;
  *(v59 + 32) = v200;
  *(v59 + 48) = v64;
  v65 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_optionCoordinator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765A80, &qword_20C159FE0);
  v66 = swift_allocObject();
  v66[3] = 0;
  swift_unknownObjectWeakInit();
  *(v66 + *(*v66 + 104)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8, &qword_20C1507B8);
  swift_storeEnumTagMultiPayload();
  *(v66 + *(*v66 + 112)) = 0;
  *(v58 + v65) = v66;
  *(v58 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_activationState) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&v195, v58 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_catalogClient);
  sub_20C133AA4();

  *(v58 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_eventHub) = v195;
  *(*(v58 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_optionCoordinator) + 24) = &off_281608220;
  swift_unknownObjectWeakAssign();
  *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_equipmentPickerShelf) = v58;
  type metadata accessor for WorkoutPlanBodyFocusPickerShelf(0);
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v68 = v67 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row;
  v69 = v207;
  *(v68 + 128) = v206;
  *(v68 + 144) = v69;
  *(v68 + 160) = v208;
  v70 = v203;
  *(v68 + 64) = v202;
  *(v68 + 80) = v70;
  v71 = v205;
  *(v68 + 96) = v204;
  *(v68 + 112) = v71;
  v72 = v199;
  *v68 = v198;
  *(v68 + 16) = v72;
  v73 = v201;
  *(v68 + 32) = v200;
  *(v68 + 48) = v73;
  v74 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_optionCoordinator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765A88, &qword_20C159FE8);
  v75 = swift_allocObject();
  v75[3] = 0;
  swift_unknownObjectWeakInit();
  *(v75 + *(*v75 + 104)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720, &qword_20C159FF0);
  swift_storeEnumTagMultiPayload();
  *(v75 + *(*v75 + 112)) = 0;
  *(v67 + v74) = v75;
  *(v67 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_activationState) = 0;
  sub_20C133AA4();
  sub_20B51C710(&v195, v67 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_catalogClient);
  sub_20C133AA4();

  *(v67 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_eventHub) = v195;
  *(*(v67 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_optionCoordinator) + 24) = &off_2815E7178;
  swift_unknownObjectWeakAssign();
  *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_bodyFocusPickerShelf) = v67;
  type metadata accessor for WorkoutPlanSkillLevelPickerShelf(0);
  swift_allocObject();

  v76 = sub_20B65254C();

  *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_skillLevelPickerShelf) = v76;
  type metadata accessor for WorkoutPlanCatalogThemePickerShelf(0);
  v77 = swift_allocObject();
  *(v77 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v78 = v77 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_row;
  v79 = v207;
  *(v78 + 128) = v206;
  *(v78 + 144) = v79;
  *(v78 + 160) = v208;
  v80 = v203;
  *(v78 + 64) = v202;
  *(v78 + 80) = v80;
  v81 = v205;
  *(v78 + 96) = v204;
  *(v78 + 112) = v81;
  v82 = v199;
  *v78 = v198;
  *(v78 + 16) = v82;
  v83 = v201;
  *(v78 + 32) = v200;
  *(v78 + 48) = v83;
  v84 = OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_optionCoordinator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765A90, &qword_20C159FF8);
  v85 = swift_allocObject();
  v85[3] = 0;
  swift_unknownObjectWeakInit();
  *(v85 + *(*v85 + 104)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798, &unk_20C15A000);
  swift_storeEnumTagMultiPayload();
  *(v85 + *(*v85 + 112)) = 0;
  *(v77 + v84) = v85;
  *(v77 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_activationState) = 0;
  sub_20C133AA4();
  sub_20B51C710(&v195, v77 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_catalogClient);
  sub_20C133AA4();

  *(v77 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_eventHub) = v195;
  v86 = *(v77 + OBJC_IVAR____TtC9SeymourUI34WorkoutPlanCatalogThemePickerShelf_optionCoordinator);
  *(v86 + 24) = sub_20B7D3274(&qword_27C765A98, type metadata accessor for WorkoutPlanCatalogThemePickerShelf, &unk_20C168330);
  swift_unknownObjectWeakAssign();
  *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_themePickerShelf) = v77;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_subscriptionToken) = sub_20C13A914();
  *&v184 = *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_activityPickerShelf);
  *(&v184 + 1) = &off_2822B8C28;
  v87 = *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_durationPickerShelf);
  v88 = *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_equipmentPickerShelf);
  v185 = v87;
  v186 = &off_2822D0AB0;
  v187 = v88;
  v188 = &off_282304DC8;
  v90 = *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_skillLevelPickerShelf);
  v189 = *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_bodyFocusPickerShelf);
  v89 = v189;
  v190 = &off_282297330;
  v191 = v90;
  v192 = &off_28229A838;
  v193 = *(v7 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanEditSchedulePageDataProvider_themePickerShelf);
  v91 = v193;
  v194 = &off_2822BDEC0;

  v159 = v89;

  v162 = v90;

  v163 = v91;

  LODWORD(v170) = sub_20C1380F4();
  v92 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v169 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v92 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v93 = sub_20C13C724();
  v94 = type metadata accessor for CatalogPageImpressionTracker();
  v95 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v96 = MEMORY[0x277D221C0];
  v95[2] = sub_20C13C6D4();
  v95[3] = v93;
  v95[4] = v96;
  v196 = v94;
  v97 = sub_20B7D3274(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v197 = v97;
  *&v195 = v95;
  v98 = type metadata accessor for MetricLocationStore();
  v99 = swift_allocObject();
  v100 = MEMORY[0x277D84F90];
  v101 = MEMORY[0x277D84F98];
  *(v99 + 16) = MEMORY[0x277D84F90];
  *(v99 + 24) = v101;
  v102 = __swift_mutable_project_boxed_opaque_existential_1(&v195, v94);
  v165 = &v158;
  v103 = MEMORY[0x28223BE20](v102);
  v105 = (&v158 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v106 + 16))(v105, v103);
  v107 = *v105;
  v161 = v97;
  v183[3] = v94;
  v183[4] = v97;
  v183[0] = v107;
  v182[3] = v98;
  v182[4] = &off_2822B6968;
  v160 = v98;
  v182[0] = v99;
  v181[0] = v100;
  sub_20BB5D394(0, 6, 0);
  v108 = v181[0];
  v109 = *(v181[0] + 16);
  v110 = *(v181[0] + 24);
  v111 = v109 + 1;
  v158 = v184;
  swift_unknownObjectRetain();
  if (v109 >= v110 >> 1)
  {
    sub_20BB5D394((v110 > 1), v109 + 1, 1);
    v108 = v181[0];
  }

  *(v108 + 16) = v111;
  v112 = v108 + 24 * v109;
  *(v112 + 32) = v158;
  *(v112 + 48) = 0;
  v113 = *(v108 + 24);
  v114 = v109 + 2;
  swift_unknownObjectRetain();
  if ((v109 + 2) > (v113 >> 1))
  {
    sub_20BB5D394((v113 > 1), v109 + 2, 1);
    v108 = v181[0];
  }

  *(v108 + 16) = v114;
  v115 = v108 + 24 * v111;
  *(v115 + 32) = v87;
  *(v115 + 40) = &off_2822D0AB0;
  *(v115 + 48) = 0;
  v116 = *(v108 + 24);
  v117 = v109 + 3;
  swift_unknownObjectRetain();
  if ((v109 + 3) > (v116 >> 1))
  {
    sub_20BB5D394((v116 > 1), v109 + 3, 1);
  }

  v118 = v181[0];
  *(v181[0] + 16) = v117;
  v119 = v118 + 24 * v114;
  *(v119 + 32) = v88;
  *(v119 + 40) = &off_282304DC8;
  *(v119 + 48) = 0;
  v120 = *(v118 + 24);
  v121 = v109 + 4;
  v122 = v159;
  swift_unknownObjectRetain();
  if ((v109 + 4) > (v120 >> 1))
  {
    sub_20BB5D394((v120 > 1), v109 + 4, 1);
    v118 = v181[0];
  }

  *(v118 + 16) = v121;
  v123 = v118 + 24 * v117;
  *(v123 + 32) = v122;
  *(v123 + 40) = &off_282297330;
  *(v123 + 48) = 0;
  v124 = *(v118 + 24);
  v125 = v109 + 5;
  v126 = v162;
  swift_unknownObjectRetain();
  v127 = v163;
  if ((v109 + 5) > (v124 >> 1))
  {
    sub_20BB5D394((v124 > 1), v109 + 5, 1);
    v118 = v181[0];
  }

  *(v118 + 16) = v125;
  v128 = v118 + 24 * v121;
  *(v128 + 32) = v126;
  *(v128 + 40) = &off_28229A838;
  *(v128 + 48) = 0;
  v129 = *(v118 + 24);
  v130 = v109 + 6;
  swift_unknownObjectRetain();
  if (v130 > (v129 >> 1))
  {
    sub_20BB5D394((v129 > 1), v130, 1);
  }

  v131 = v181[0];
  *(v181[0] + 16) = v130;
  v132 = v131 + 24 * v125;
  *(v132 + 32) = v127;
  *(v132 + 40) = &off_2822BDEC0;
  *(v132 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0, &unk_20C15C100);
  swift_arrayDestroy();
  sub_20B51CC64(v183, v181);
  sub_20B51CC64(v182, v180);
  v133 = __swift_mutable_project_boxed_opaque_existential_1(v181, v181[3]);
  v163 = &v158;
  v134 = MEMORY[0x28223BE20](v133);
  v136 = (&v158 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v137 + 16))(v136, v134);
  v138 = __swift_mutable_project_boxed_opaque_existential_1(v180, v180[3]);
  v139 = MEMORY[0x28223BE20](v138);
  v141 = (&v158 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v142 + 16))(v141, v139);
  v143 = *v136;
  v144 = *v141;
  v178 = v94;
  v179 = v161;
  v177[0] = v143;
  v175 = v160;
  v176 = &off_2822B6968;
  v174[0] = v144;
  v145 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v146 = __swift_mutable_project_boxed_opaque_existential_1(v177, v178);
  v147 = MEMORY[0x28223BE20](v146);
  v149 = (&v158 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v150 + 16))(v149, v147);
  v151 = __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
  v152 = MEMORY[0x28223BE20](v151);
  v154 = (&v158 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v155 + 16))(v154, v152);
  v156 = sub_20BE3AA74(v167, v166, v131, v170, v169, *v149, *v154, 2, v145);
  sub_20B7D3390(v168, type metadata accessor for WorkoutPlanScheduleEditableItem);
  v164(v172, v171);
  __swift_destroy_boxed_opaque_existential_1(v182);
  __swift_destroy_boxed_opaque_existential_1(v183);
  __swift_destroy_boxed_opaque_existential_1(v174);
  __swift_destroy_boxed_opaque_existential_1(v177);
  __swift_destroy_boxed_opaque_existential_1(v180);
  __swift_destroy_boxed_opaque_existential_1(v181);
  __swift_destroy_boxed_opaque_existential_1(&v195);
  *(v7 + 48) = v156;
  return v7;
}

uint64_t sub_20B7D3274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B7D32C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B7D332C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B7D3390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_20B7D33F0(void *a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_20B7D3434(uint64_t a1)
{
  v4 = *(sub_20C1365F4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v6);
  v11 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20B52AC14;

  return sub_20B7CE724(a1, v7, v8, v9, v1 + v5, v10, v11);
}

uint64_t sub_20B7D356C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B7D35D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52A9D4;

  return sub_20B7CCD28(a1, v5, v4);
}

uint64_t sub_20B7D3680(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPlanEditSchedulePageDataProvider.ActivatedState(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52AC14;

  return sub_20B7CD0E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20B7D3778(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B7D1704(a1, v1);
}

unint64_t sub_20B7D3810()
{
  result = qword_27C765AC8;
  if (!qword_27C765AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765AC8);
  }

  return result;
}

char *sub_20B7D386C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_expandableTextView;
  type metadata accessor for ExpandableTextView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v43.receiver = v4;
  v43.super_class = type metadata accessor for ExpandingTextCell(0);
  v13 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_expandableTextView;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_expandableTextView];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v15[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_onMoreTapped];
  v18 = *&v15[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_onMoreTapped];
  v19 = *&v15[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_onMoreTapped + 8];
  *v17 = sub_20B7D47AC;
  v17[1] = v16;
  v20 = v13;
  v21 = v15;

  sub_20B583ECC(v18, v19);

  v22 = [v20 contentView];
  [v22 addSubview_];

  v23 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14FE90;
  v25 = [*&v13[v14] leadingAnchor];
  v26 = [v20 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v24 + 32) = v28;
  v29 = [*&v13[v14] trailingAnchor];
  v30 = [v20 contentView];
  v31 = [v30 trailingAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v24 + 40) = v32;
  v33 = [*&v13[v14] topAnchor];
  v34 = [v20 contentView];
  v35 = [v34 topAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v24 + 48) = v36;
  v37 = [*&v13[v14] bottomAnchor];
  v38 = [v20 contentView];

  v39 = [v38 bottomAnchor];
  v40 = [v37 constraintEqualToAnchor_];

  *(v24 + 56) = v40;
  sub_20B5E29D0();
  v41 = sub_20C13CC54();

  [v23 activateConstraints_];

  return v20;
}

void sub_20B7D3CB0(uint64_t a1)
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v12);
      *(&v17 - 4) = 0;
      *(&v17 - 24) = 1;
      *(&v17 - 2) = v7;
      *(&v17 - 1) = v11;
      v13 = *(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v14 = v9;
      v15 = [v13 indexPathForCell_];
      if (v15)
      {
        v16 = v15;
        sub_20C1331E4();

        sub_20C0C1CDC(v4, sub_20B5E27BC);
        (*(v2 + 8))(v4, v1);
      }

      swift_unknownObjectRelease();

      sub_20B5E2760(v7);
    }

    else
    {
    }
  }
}

id sub_20B7D41B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandingTextCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ExpandingTextCell(uint64_t a1)
{
  result = qword_27C765AE0;
  if (!qword_27C765AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7D42A8(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B7D4350(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B7D439C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B7D43F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ExpandingTextCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B7D4458(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1380F4();
  v7 = sub_20C138104();
  v8 = sub_20C138104();
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x13)
  {
    v9 = 2 * (v7 != v8);
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v16 = *(v10 + 56);
    v17 = *(v10 + 64);

    sub_20B7D4748(v11, v12, v13);
    sub_20B63C1E4(&v32);
    v31 = v13;
    v35[0] = v11;
    v35[1] = v12;
    v36 = v13;
    v37 = v32;
    v38 = v17;
    v39 = v33;
    v40 = v15;
    v41 = v14;
    v42 = v9;
    v43 = v34;
    sub_20B9E67B4(v35);
    sub_20B9E6914(v16);
    return sub_20B7D4758(v35);
  }

  else
  {
    sub_20C13B534();

    v19 = v1;
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v22 = 138543618;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2082;
      v32 = a1;
      v24 = sub_20B5F66D0();
      v25 = v19;
      v26 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v24);
      v28 = sub_20B51E694(v26, v27, v35);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_20B517000, v20, v21, "Attempted to configure %{public}@ with item: %{public}s", v22, 0x16u);
      sub_20B520158(v23, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      v29 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x20F2F6A40](v29, -1, -1);
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_20B7D4748(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v3 = a1;
  }
}

uint64_t sub_20B7D47C4(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_20C138204();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v20, v10, &qword_27C7643F0, &qword_20C1536C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_20B520158(v10, &qword_27C7643F0, &qword_20C1536C0);
  }

  v33 = *(v12 + 32);
  v34 = v19;
  v33(v19, v10, v11);
  v22 = sub_20C132E94();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_20C1381F4();
  sub_20B520158(v7, &qword_27C762AC0, &qword_20C14FC90);
  __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
  sub_20C13A1A4();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v35;
  (*(v12 + 16))(v35, v16, v11);
  v25 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  v33((v26 + v25), v24, v11);
  v27 = v39;
  v28 = v40;
  v29 = sub_20C137CB4();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20B7DC034;
  *(v30 + 24) = v26;

  v29(sub_20B5DF6DC, v30);

  (*(v38 + 8))(v28, v27);
  v31 = *(v12 + 8);
  v31(v16, v11);
  return (v31)(v34, v11);
}

void sub_20B7D4C80(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);

    if (v8)
    {
      sub_20C13B4A4();
      v11 = v7;
      v12 = sub_20C13BB74();
      v13 = sub_20C13D1F4();
      sub_20B583FB8(v7, 1);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25[0] = v15;
        *v14 = 136315138;
        swift_getErrorValue();
        v16 = sub_20C13E094();
        v18 = sub_20B51E694(v16, v17, v25);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_20B517000, v12, v13, "Failed to delete playlist with error: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x20F2F6A40](v15, -1, -1);
        MEMORY[0x20F2F6A40](v14, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      swift_beginAccess();
      v19 = swift_weakLoadStrong();
      if (v19 && (v20 = *(v19 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page), , v21 = &v20[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate], v22 = swift_unknownObjectWeakLoadStrong(), v23 = *(v21 + 1), v20, v22))
      {
        ObjectType = swift_getObjectType();
        (*(v23 + 248))(v10, ObjectType, v23);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

double sub_20B7D4F48(uint64_t a1)
{
  if (_UISolariumEnabled() && a1)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    sub_20B7D50F0(a1, sub_20B7DBC84, v3);

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = swift_allocObject();
    swift_weakInit();

    sub_20B7D56D8(sub_20B7DBC38, v4);
  }

  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
  v6 = &v5[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 224);
    swift_unknownObjectRetain();
    v9 = v5;
    v8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B7D50F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v6 = type metadata accessor for PageAlertAction(0);
  v7 = (v6 - 8);
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v3 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_storefrontLocalizer), *(v3 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_storefrontLocalizer + 24));
  v12 = sub_20C138D34();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  sub_20C132ED4();
  v16 = &v10[v7[8]];
  *v16 = v12;
  v16[1] = v14;
  v10[v7[7]] = 1;
  v17 = &v10[v7[9]];
  *v17 = sub_20B7DBCD0;
  v17[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20C14F980;
  sub_20B7DBCD8(v10, v19 + v18, type metadata accessor for PageAlertAction);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v20 = sub_20C138D34();
  v22 = v21;
  sub_20B7DBD40(v10, type metadata accessor for PageAlertAction);
  type metadata accessor for DefaultPageAlertPresenter();
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  swift_unknownObjectWeakInit();
  v24 = MEMORY[0x277D84F90];
  *(v23 + 32) = v19;
  *(v23 + 40) = v24;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 64) = v20;
  *(v23 + 72) = v22;
  *(v23 + 80) = 0;
  *(v23 + 88) = v27;
  swift_unknownObjectRetain();
  return v23;
}

double sub_20B7D5390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_20C138204();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v25 = a4;
    v19 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
    swift_beginAccess();
    sub_20B52F9E8(v18 + v19, v11, &qword_27C7643F0, &qword_20C1536C0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_20B520158(v11, &qword_27C7643F0, &qword_20C1536C0);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      v24 = v6;
      __swift_project_boxed_opaque_existential_1((v18 + 128), *(v18 + 152));
      sub_20C13A194();
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = sub_20C137CB4();
      v22 = swift_allocObject();
      *(v22 + 16) = v26;
      *(v22 + 24) = v20;

      v21(v25, v22);

      (*(v24 + 8))(v8, v5);
      (*(v13 + 8))(v15, v12);
    }
  }

  return result;
}

uint64_t sub_20B7D56D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PageAlertAction(0);
  v6 = (v5 - 8);
  v37 = *(v5 - 8);
  v7 = v37;
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = (v2 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_storefrontLocalizer + 24));
  v14 = sub_20C138D34();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  sub_20C132ED4();
  v18 = &v12[v6[8]];
  *v18 = v14;
  v18[1] = v16;
  v12[v6[7]] = 1;
  v19 = &v12[v6[9]];
  *v19 = sub_20B7DBCD0;
  v19[1] = v17;
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v20 = sub_20C138D34();
  v22 = v21;
  sub_20C132ED4();
  v23 = &v9[v6[8]];
  *v23 = v20;
  v23[1] = v22;
  v9[v6[7]] = 2;
  v24 = &v9[v6[9]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = sub_20C138104();
  LOBYTE(v22) = v25 != sub_20C138104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
  v26 = *(v7 + 72);
  v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14F320;
  v29 = v28 + v27;
  sub_20B7DBCD8(v12, v29, type metadata accessor for PageAlertAction);
  sub_20B7DBCD8(v9, v29 + v26, type metadata accessor for PageAlertAction);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v30 = sub_20C138D34();
  v32 = v31;
  sub_20B7DBD40(v9, type metadata accessor for PageAlertAction);
  sub_20B7DBD40(v12, type metadata accessor for PageAlertAction);
  type metadata accessor for DefaultPageAlertPresenter();
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  swift_unknownObjectWeakInit();
  v34 = MEMORY[0x277D84F90];
  *(v33 + 32) = v28;
  *(v33 + 40) = v34;
  *(v33 + 48) = 0;
  *(v33 + 56) = 0;
  *(v33 + 64) = v30;
  *(v33 + 72) = v32;
  *(v33 + 80) = v22;
  *(v33 + 88) = 0;
  return v33;
}

double sub_20B7D5A5C()
{
  v1 = v0;
  v2 = sub_20C138204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v9, v8, &qword_27C7643F0, &qword_20C1536C0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_20B520158(v8, &qword_27C7643F0, &qword_20C1536C0);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_20B520158(v8, &qword_27C7643F0, &qword_20C1536C0);
    v10 = sub_20C1381D4();
    v11 = v12;
    (*(v3 + 8))(v5, v2);
  }

  v13 = swift_allocObject();
  swift_weakInit();

  sub_20C0A4B04(v10, v11, sub_20B7DBC30, v13);

  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
  v15 = &v14[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 1);
    swift_getObjectType();
    v17 = *(v16 + 224);
    v18 = v14;
    v17();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

double sub_20B7D5D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B7D47C4(a1, a2);
  }

  return result;
}

double sub_20B7D5D9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_20C0A4B04(0, 0, sub_20B7DBC1C, v6);

  v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
  v8 = &v7[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    swift_getObjectType();
    v10 = *(v9 + 224);
    v11 = v7;
    v10();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B7D5EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B7D62C0(a1, a2, v12);

    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    *(v14 + 24) = a5;

    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_20B7DBC28;
    *(v16 + 24) = v14;

    v15(sub_20B52347C, v16);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_20B7D60B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v8 = *a1;
    sub_20C13B4A4();
    v9 = v8;
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1F4();
    sub_20B583FB8(v8, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_20C13E094();
      v17 = sub_20B51E694(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20B517000, v10, v11, "Failed to save playlist with error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x20F2F6A40](v14, -1, -1);
      v18 = v13;
      a2 = v21;
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return a2(v19);
}

uint64_t sub_20B7D62C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v45 = a2;
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = v5;
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_20C138204();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v23 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v23, v13, &qword_27C7643F0, &qword_20C1536C0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &qword_27C7643F0, &qword_20C1536C0);
    sub_20B7DBAD4();
    v24 = swift_allocError();
    *(swift_allocObject() + 16) = v24;
    return sub_20C137CA4();
  }

  else
  {
    v26 = *(v15 + 32);
    v41 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v26;
    v43 = v22;
    v26(v22, v13, v14);
    v27 = sub_20C132E94();
    (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
    sub_20C1381F4();
    sub_20B520158(v10, &qword_27C762AC0, &qword_20C14FC90);
    __swift_project_boxed_opaque_existential_1((v3 + 128), *(v3 + 152));
    v28 = v50;
    sub_20C13A1A4();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = v41;
    (*(v15 + 16))(v41, v19, v14);
    v31 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v29;
    v42(v32 + v31, v30, v14);
    v34 = v47;
    v33 = v48;
    v35 = v49;
    (*(v48 + 16))(v47, v28, v49);
    v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v37 = (v46 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v33 + 32))(v38 + v36, v34, v35);
    v39 = (v38 + v37);
    *v39 = sub_20B7DBB28;
    v39[1] = v32;
    sub_20C137C94();
    (*(v33 + 8))(v50, v35);
    v40 = *(v15 + 8);
    v40(v19, v14);
    return (v40)(v43, v14);
  }
}

double sub_20B7D6848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-v7];
  if ((*(a1 + 8) & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_20C138204();
      v12 = *(v11 - 8);
      (*(v12 + 16))(v8, a3, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      v13 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
      swift_beginAccess();
      sub_20B66A790(v8, v10 + v13);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_20B7D69C4()
{
  v0 = sub_20C1391E4();
  v1 = *(v0 - 8);
  v88 = v0;
  v89 = v1;
  MEMORY[0x28223BE20](v0);
  v87 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C134C44();
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v66 - v14;
  v15 = sub_20C135D24();
  v74 = *(v15 - 8);
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  v73 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C134F74();
  v81 = *(v17 - 8);
  v82 = v17;
  MEMORY[0x28223BE20](v17);
  v79 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v78 = &v66 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v21 - 8);
  v72 = &v66 - v22;
  v71 = sub_20C1352E4();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v66 - v28;
  v30 = sub_20C134F24();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v66 - v35;
  v67 = sub_20C133654();
  v70 = *(v67 - 8);
  v37 = v70;
  MEMORY[0x28223BE20](v67);
  v90 = &v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C136664();
  (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
  (*(v31 + 104))(v33, *MEMORY[0x277D513F8], v30);
  v40 = sub_20C132C14();
  (*(*(v40 - 8) + 56))(v29, 1, 1, v40);
  sub_20C134D74();
  v41 = *MEMORY[0x277D52408];
  v42 = sub_20C135ED4();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v26, v41, v42);
  (*(v43 + 56))(v26, 0, 1, v42);
  (*(v69 + 104))(v68, *MEMORY[0x277D51768], v71);
  v44 = sub_20C136E94();
  (*(*(v44 - 8) + 56))(v72, 1, 1, v44);
  v45 = v90;
  sub_20C133644();
  v46 = *(v37 + 16);
  v47 = v73;
  v48 = v67;
  v46(v73, v45, v67);
  (*(v74 + 104))(v47, *MEMORY[0x277D52120], v75);
  v49 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage;
  v50 = sub_20C1333A4();
  v51 = *(v50 - 8);
  v52 = v76;
  (*(v51 + 16))(v76, v84 + v49, v50);
  (*(v51 + 56))(v52, 0, 1, v50);
  v53 = sub_20C135664();
  (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
  v54 = sub_20C135674();
  (*(*(v54 - 8) + 56))(v80, 1, 1, v54);
  v55 = v83;
  sub_20C134F94();
  v56 = sub_20C134FB4();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v57 - 8) + 56))(v85, 1, 1, v57);
  v58 = sub_20C135F14();
  (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
  v59 = v78;
  sub_20C134F54();
  v61 = v81;
  v60 = v82;
  (*(v81 + 16))(v79, v59, v82);
  v62 = v87;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B7DBA8C(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v63 = v62;
  v64 = v88;
  sub_20C13A764();
  (*(v89 + 8))(v63, v64);
  (*(v61 + 8))(v59, v60);
  return (*(v70 + 8))(v90, v48);
}

uint64_t sub_20B7D7584(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageMetricAction(0);
  MEMORY[0x28223BE20](v4);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = sub_20C134F24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C136664();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  (*(v10 + 104))(v12, **(&unk_277D97F88 + a1), v9);
  v20 = sub_20C132C14();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v46 = v4;
  v47 = v2;
  v45 = v9;
  if (a1)
  {
    if (a1 == 1)
    {
      v44 = 0xEC0000007473696CLL;
      v21 = 0x79616C5074696465;
    }

    else
    {
      v44 = 0xE90000000000006BLL;
      v21 = 0x6361745365766173;
    }
  }

  else
  {
    v44 = 0x800000020C19A0E0;
    v21 = 0xD000000000000011;
  }

  v43 = v21;
  v22 = v16[8];
  v23 = *MEMORY[0x277D523D8];
  v24 = sub_20C135ED4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(&v18[v22], v23, v24);
  (*(v25 + 56))(&v18[v22], 0, 1, v24);
  v26 = v16[10];
  v27 = *MEMORY[0x277D51768];
  v28 = sub_20C1352E4();
  (*(*(v28 - 8) + 104))(&v18[v26], v27, v28);
  v29 = v16[11];
  v30 = sub_20C136E94();
  (*(*(v30 - 8) + 56))(&v18[v29], 1, 1, v30);
  v31 = MEMORY[0x277D84F90];
  v32 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20B5DF134(v15, v18, &unk_27C7622E0, &unk_20C14FCF0);
  (*(v10 + 32))(&v18[v16[5]], v12, v45);
  sub_20B5DF134(v8, &v18[v16[6]], &unk_27C7617F0, &unk_20C151A10);
  v33 = &v18[v16[7]];
  v34 = v44;
  *v33 = v43;
  *(v33 + 1) = v34;
  v35 = &v18[v16[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v18[v16[12]] = v32;
  v36 = v48;
  sub_20B7DBCD8(v18, &v48[*(v46 + 20)], type metadata accessor for ShelfMetricAction);
  *v36 = v31;
  v37 = *(v47 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
  v38 = &v37[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 1);
    swift_getObjectType();
    v40 = *(v39 + 160);
    v41 = v37;
    v40();
    swift_unknownObjectRelease();
  }

  sub_20B7DBD40(v36, type metadata accessor for PageMetricAction);
  return sub_20B7DBD40(v18, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B7D7B40@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  LODWORD(v73) = a1;
  v68 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8, &unk_20C17C950);
  v59 = *(v63 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v63);
  v58 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v55 - v6;
  MEMORY[0x28223BE20](v8);
  v60 = v55 - v9;
  MEMORY[0x28223BE20](v10);
  v61 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v66 = *(v12 - 8);
  v67 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v13;
  MEMORY[0x28223BE20](v14);
  v65 = v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v55 - v17;
  v19 = sub_20C138204();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v23, v18, &qword_27C7643F0, &qword_20C1536C0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v57 = v19;
    sub_20B520158(v18, &qword_27C7643F0, &qword_20C1536C0);
LABEL_5:
    __swift_project_boxed_opaque_existential_1((v3 + 128), *(v3 + 152));
    sub_20C13A184();
    v25 = v58;
    v26 = v59;
    v27 = *(v59 + 16);
    v72 = v59 + 16;
    v73 = v27;
    v28 = v63;
    v27(v58, v7, v63);
    v29 = *(v26 + 80);
    v70 = (v29 + 16) & ~v29;
    v71 = v29;
    v30 = v70;
    v31 = (v4 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v69 = *(v26 + 32);
    v69(v32 + v30, v25, v28);
    v55[1] = v26 + 32;
    v33 = (v32 + v31);
    *v33 = sub_20B7DB82C;
    v33[1] = v3;
    v56 = v3;

    v34 = v60;
    sub_20C137C94();
    v35 = *(v26 + 8);
    v35(v7, v28);
    sub_20B5E2E18();
    v36 = sub_20C13D374();
    v73(v7, v34, v28);
    v37 = swift_allocObject();
    v69(v37 + v70, v7, v28);
    *(v37 + v31) = v36;
    v38 = v61;
    sub_20C137C94();
    v35(v34, v28);
    v39 = swift_allocObject();
    v40 = v56;
    *(v39 + 16) = sub_20B7DB914;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_20B7DB918;
    *(v41 + 24) = v39;
    v73(v34, v38, v28);
    v42 = swift_allocObject();
    v69(v42 + v70, v34, v28);
    v43 = (v42 + v31);
    *v43 = sub_20B7DB940;
    v43[1] = v41;

    v44 = v65;
    sub_20C137C94();
    v35(v38, v28);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_20B7DB970;
    *(v46 + 24) = v45;
    v48 = v66;
    v47 = v67;
    v49 = v64;
    (*(v66 + 16))(v64, v44, v67);
    v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v51 = (v62 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    (*(v48 + 32))(v52 + v50, v49, v47);
    v53 = (v52 + v51);
    *v53 = sub_20B5DF204;
    v53[1] = v46;
    sub_20C137C94();
    return (*(v48 + 8))(v44, v47);
  }

  (*(v20 + 32))(v22, v18, v19);
  if (v73)
  {
    v24 = *(v20 + 8);
    v57 = v19;
    v24(v22, v19);
    goto LABEL_5;
  }

  sub_20B7D8D98(v22);
  _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_20B7D82F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C138204();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourUI/PlaylistDetailDataProvider.swift";
  *(v9 + 24) = 42;
  *(v9 + 32) = 2;
  *(v9 + 40) = 252;
  *(v9 + 48) = &unk_20C15A2E0;
  *(v9 + 56) = v8;
  return sub_20C137C94();
}

double sub_20B7D84A0(void *a1, uint64_t a2)
{
  v4 = sub_20C13C4B4();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13C4F4();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v15 = sub_20C13D374();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  aBlock[4] = sub_20B7DB98C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_89;
  v11 = _Block_copy(aBlock);

  v12 = a1;
  sub_20C13C4D4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_20B7DBA8C(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280, &qword_20C15A2D0, MEMORY[0x277D83970]);
  sub_20C13DA94();
  v13 = v15;
  MEMORY[0x20F2F4AF0](0, v9, v6, v11);
  _Block_release(v11);

  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);

  return result;
}

double sub_20B7D8798(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B7D93C4(a2);
  }

  return result;
}

uint64_t sub_20B7D87F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B7D8898, 0, 0);
}

uint64_t sub_20B7D8898()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 248, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = sub_20C1381E4();
    v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320, &unk_20C15A2F0);
    v0[11] = sub_20B6D6ABC(&qword_27C763328, &qword_27C763320, &unk_20C15A2F0, MEMORY[0x277D83B78]);
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_20B7D8AD8;

    return sub_20C0A6C2C((v0 + 7));
  }

  else
  {
    v5 = sub_20C133D94();
    sub_20B7DBA8C(&qword_27C765B10, MEMORY[0x277D50470], MEMORY[0x277D50478]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50460], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20B7D8AD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_20B7D8D24;
  }

  else
  {
    *(v4 + 168) = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 56));
    v5 = sub_20B7D8C08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20B7D8C08()
{
  v1 = v0[21];
  v2 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_20B717280(v1);

  v3 = sub_20C132E94();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_20C1381F4();

  sub_20B520158(v2, &qword_27C762AC0, &qword_20C14FC90);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B7D8D24()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B7D8D98(uint64_t a1)
{
  v2 = v1;
  v27 = sub_20C13C4B4();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C4F4();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C138204();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(v8 + 16);
  v14(&v25 - v12, a1, v7, v11);
  (*(v8 + 56))(v13, 0, 1, v7);
  v15 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
  swift_beginAccess();
  sub_20B66A790(v13, v2 + v15);
  swift_endAccess();
  sub_20B5E2E18();
  v16 = sub_20C13D374();
  (v14)(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  (*(v8 + 32))(v18 + v17, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_20B7DB7C8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_16;
  v19 = _Block_copy(aBlock);

  v20 = v25;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7DBA8C(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280, &qword_20C15A2D0, MEMORY[0x277D83970]);
  v22 = v26;
  v21 = v27;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v20, v22, v19);
  _Block_release(v19);

  (*(v30 + 8))(v22, v21);
  result = (*(v28 + 8))(v20, v29);
  v24 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_shouldPublishPageEventWhenAvailable;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_shouldPublishPageEventWhenAvailable) == 1)
  {
    aBlock[0] = v2;
    type metadata accessor for PlaylistDetailDataProvider(0);
    sub_20B7DBA8C(&qword_27C765B18, type metadata accessor for PlaylistDetailDataProvider, &unk_20C15A270);
    result = sub_20C138C54();
    *(v2 + v24) = 0;
  }

  return result;
}

void sub_20B7D9284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_galleryShelf);
  v8 = sub_20C138204();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailGalleryShelf_playlist;
  swift_beginAccess();
  sub_20B66A790(v6, v7 + v10);
  swift_endAccess();
  sub_20BD4ACE8();
  sub_20BD4B4C4();
}

void sub_20B7D93C4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C133D94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C132A34();
  v8 = [v7 code];
  (*(v4 + 104))(v6, *MEMORY[0x277D50460], v3);
  sub_20B7DBA8C(&qword_27C765B10, MEMORY[0x277D50470], MEMORY[0x277D50478]);
  v9 = sub_20C13E0B4();
  (*(v4 + 8))(v6, v3);
  if (v9 == v8)
  {
    v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
    v11 = &v10[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 1);
      swift_getObjectType();
      v13 = *(v12 + 248);
      v14 = v10;
      v13();

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    v7 = v7;
    sub_20B7D95AC(v7);
  }
}

double sub_20B7D95AC(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  v14 = *(v9 + 8);
  v13 = v9 + 8;
  v14(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_20BB5D394((v15 > 1), v8, 1);
    v38 = v87[0];
    goto LABEL_6;
  }

  sub_20C13B534();
  v16 = a1;
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1D4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v77 = v4;
    v21 = v20;
    v90[0] = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v22 = MEMORY[0x20F2F5850](v78, v79);
    v24 = sub_20B51E694(v22, v23, v90);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20B517000, v17, v18, "PlaylistDetailDataProvider failed to fetch remote content with %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    (*(v5 + 8))(v7, v77);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for LoadingErrorShelf(0);
  swift_allocObject();

  v11 = sub_20BEFE8F4(v25, 0, 0);

  v26 = v2[5];
  v76 = v2[4];
  v77 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page;
  v27 = *(v2 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page);
  v28 = *(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v27 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v90);
  v75 = v26;

  v73 = v28;
  v72 = sub_20C1380F4();
  v13 = type metadata accessor for MetricLocationStore();
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F98];
  *(v29 + 16) = MEMORY[0x277D84F90];
  *(v29 + 24) = v31;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v74 = v71;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = (v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v4 = type metadata accessor for CatalogPageImpressionTracker();
  v89[3] = v4;
  v7 = sub_20B7DBA8C(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v89[4] = v7;
  v89[0] = v37;
  v88[3] = v13;
  v88[4] = &off_2822B6968;
  v88[0] = v29;
  v87[0] = v30;
  sub_20BB5D394(0, 1, 0);
  v38 = v87[0];
  v5 = *(v87[0] + 16);
  v15 = *(v87[0] + 24);
  v8 = v5 + 1;
  if (v5 >= v15 >> 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(v38 + 16) = v8;
  v39 = v38 + 24 * v5;
  *(v39 + 32) = v11;
  *(v39 + 40) = &off_2822F4EF0;
  *(v39 + 48) = 0;
  sub_20B51CC64(v89, v87);
  sub_20B51CC64(v88, v86);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
  v71[0] = v71;
  v41 = MEMORY[0x28223BE20](v40);
  v71[1] = v11;
  v43 = (v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v86, v86[3]);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = *v43;
  v51 = *v48;
  v84 = v4;
  v85 = v7;
  v83[0] = v50;
  v81 = v13;
  v82 = &off_2822B6968;
  v80[0] = v51;
  v52 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = sub_20BE3AA74(v76, v75, v38, v72, v73, *v56, *v61, 2, v52);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  v64 = v77;
  v65 = *(v2 + v77);
  *(v2 + v77) = v63;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = v2[3];
    ObjectType = swift_getObjectType();
    v91 = type metadata accessor for PlaylistDetailDataProvider(0);
    v92 = &off_2822A7A58;
    v90[0] = v2;
    v68 = *(v2 + v64);

    v69 = v68;
    sub_20B76FFF8(v90, v69, ObjectType, v66);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
  }

  return result;
}

char *sub_20B7D9E84()
{
  sub_20B583E6C((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 39);
  v1 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_storefrontLocalizer]);
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_subscriptionCache]);

  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient]);

  sub_20B520158(&v0[OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_configuration], &qword_27C761800, &qword_20C14FDA0);

  sub_20B520158(&v0[OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist], &qword_27C7643F0, &qword_20C1536C0);

  return v0;
}

uint64_t sub_20B7DA02C()
{
  sub_20B7D9E84();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaylistDetailDataProvider(uint64_t a1)
{
  result = qword_27C765B00;
  if (!qword_27C765B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7DA0D8(uint64_t a1)
{
  sub_20C1333A4();
  if (v1 <= 0x3F)
  {
    sub_20B7DA2A8(319, &qword_281103BF0, MEMORY[0x277D50560]);
    if (v2 <= 0x3F)
    {
      sub_20B7DA2A8(319, &qword_27C76B5C0, MEMORY[0x277D53C88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B7DA2A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

double sub_20B7DA2FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v9[-1] - v4;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_activationState) = 1;
    sub_20B7D7B40(0, v5);
    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B5DF6DC, v7);

    (*(v2 + 8))(v5, v1);
    swift_getObjectType();
    sub_20C13A7B4();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A7A4();

    __swift_destroy_boxed_opaque_existential_1(v9);

    sub_20C137384();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A7A4();

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t sub_20B7DA58C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B7D7B40(a2 & 1, v9);

    v11 = sub_20C137CB4();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    v11(a4, v12);

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_20B7DA88C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800, &qword_20C14FDA0);
}

uint64_t sub_20B7DA918@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B7DA994(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v92 = a6;
  v87 = a4;
  v88 = a5;
  v89 = a1;
  v90 = a2;
  v9 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v9 - 8);
  v91 = (&v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v15 - 8);
  v83 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v83 - v18;
  v84 = sub_20C1333A4();
  v20 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  v23 = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_bookmarks) = v23;
  *(v6 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlists) = v23;
  *(v6 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_resumableSessions) = v23;
  *(v6 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v24 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_configuration;
  v25 = sub_20C134104();
  (*(*(v25 - 8) + 56))(v7 + v24, 1, 1, v25);
  *(v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_activationState) = 0;
  v26 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
  v27 = sub_20C138204();
  (*(*(v27 - 8) + 56))(v7 + v26, 1, 1, v27);
  *(v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_shouldPublishPageEventWhenAvailable) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 248);
  *(v7 + 288) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v7 + 296) = v103;
  v28 = *MEMORY[0x277D51838];
  v29 = sub_20C1352F4();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v19, v28, v29);
  (*(v30 + 56))(v19, 0, 1, v29);
  v31 = sub_20C132C14();
  (*(*(v31 - 8) + 56))(v83, 1, 1, v31);
  v32 = sub_20C135ED4();
  (*(*(v32 - 8) + 56))(v85, 1, 1, v32);
  v33 = sub_20C136914();
  (*(*(v33 - 8) + 56))(v86, 1, 1, v33);
  sub_20C133384();
  (*(v20 + 32))(v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage, v22, v84);
  sub_20C133AA4();
  *(v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_platform) = v103;
  v35 = v89;
  v34 = v90;
  *(v7 + 32) = v89;
  *(v7 + 40) = v34;
  swift_beginAccess();

  sub_20B7DBF4C(v92, v7 + v26);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient);
  type metadata accessor for PlaylistDetailGalleryShelf(0);
  swift_allocObject();

  v37 = sub_20BD4DCDC(v36, v35, v34);

  *(v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_galleryShelf) = v37;

  LODWORD(v90) = sub_20C1380F4();
  v38 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v89 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v38 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

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
  v104 = v40;
  v43 = sub_20B7DBA8C(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v105 = v43;
  *&v103 = v41;
  v44 = type metadata accessor for MetricLocationStore();
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D84F98];
  v47 = MEMORY[0x277D84F90];
  *(v45 + 16) = MEMORY[0x277D84F90];
  *(v45 + 24) = v46;
  v48 = __swift_mutable_project_boxed_opaque_existential_1(&v103, v40);
  v49 = MEMORY[0x28223BE20](v48);
  v51 = (&v83 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51, v49);
  v53 = *v51;
  v102[3] = v40;
  v102[4] = v43;
  v102[0] = v53;
  v101[3] = v44;
  v101[4] = &off_2822B6968;
  v101[0] = v45;
  v100[0] = v47;
  sub_20BB5D394(0, 1, 0);
  v54 = v100[0];
  v56 = *(v100[0] + 16);
  v55 = *(v100[0] + 24);
  if (v56 >= v55 >> 1)
  {
    sub_20BB5D394((v55 > 1), v56 + 1, 1);
    v54 = v100[0];
  }

  *(v54 + 16) = v56 + 1;
  v57 = v54 + 24 * v56;
  *(v57 + 32) = v37;
  *(v57 + 40) = &off_2822E2610;
  *(v57 + 48) = 0;
  sub_20B51CC64(v102, v100);
  sub_20B51CC64(v101, v99);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v100, v100[3]);
  v91 = &v83;
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (&v83 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v99, v99[3]);
  v64 = MEMORY[0x28223BE20](v63);
  v66 = (&v83 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = *v61;
  v69 = *v66;
  v97 = v40;
  v98 = v43;
  v96[0] = v68;
  v94 = v44;
  v95 = &off_2822B6968;
  v93[0] = v69;
  v70 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = (&v83 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74, v72);
  v76 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v77 = MEMORY[0x28223BE20](v76);
  v79 = (&v83 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v80 + 16))(v79, v77);
  v81 = sub_20BE3AA74(0x7465446B63617453, 0xEB000000006C6961, v54, v90, v89, *v74, *v79, 2, v70);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(v100);
  __swift_destroy_boxed_opaque_existential_1(&v103);
  *(v7 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page) = v81;
  sub_20BE11D34();
  sub_20B520158(v92, &qword_27C7643F0, &qword_20C1536C0);
  return v7;
}

void sub_20B7DB7C8()
{
  v1 = *(sub_20C138204() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_20B7D9284(v2, v3);
}

double sub_20B7DB85C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8, &unk_20C17C950) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BF909FC(a1, a2, v2 + v6, v7);
}

uint64_t sub_20B7DB994(uint64_t a1)
{
  v4 = *(sub_20C138204() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B7D87F8(a1, v6, v1 + v5);
}

uint64_t sub_20B7DBA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20B7DBAD4()
{
  result = qword_27C765B20;
  if (!qword_27C765B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765B20);
  }

  return result;
}

uint64_t sub_20B7DBB54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B7DBCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B7DBD40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_20C138204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B7DBF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B7DBFD0()
{
  result = qword_27C765B28;
  if (!qword_27C765B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765B28);
  }

  return result;
}

char *sub_20B7DC03C(unint64_t a1, uint64_t a2, char *a3, void (*a4)(uint64_t, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v165 = a7;
  v166 = a8;
  v160 = a6;
  v161 = a5;
  v163 = a4;
  v152 = a3;
  v153 = a2;
  v167 = 0;
  v164 = sub_20C134EC4();
  v169 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v151 = v11;
  v168 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C135524();
  v148 = *(v12 - 8);
  v149 = v12;
  MEMORY[0x28223BE20](v12);
  v162 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v159 = &v140 - v15;
  v16 = sub_20C133E24();
  v157 = *(v16 - 8);
  v158 = v16;
  MEMORY[0x28223BE20](v16);
  v156 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v140 - v19;
  v21 = sub_20C135654();
  v22 = *(v21 - 8);
  v154 = v21;
  v155 = v22;
  MEMORY[0x28223BE20](v21);
  v145 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v140 - v25;
  v27 = sub_20C134734();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 3) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v150 = v9;
  v31 = &v9[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row];
  sub_20B5D8060(v183);
  v32 = v183[9];
  *(v31 + 8) = v183[8];
  *(v31 + 9) = v32;
  *(v31 + 20) = v184;
  v33 = v183[5];
  *(v31 + 4) = v183[4];
  *(v31 + 5) = v33;
  v34 = v183[7];
  *(v31 + 6) = v183[6];
  *(v31 + 7) = v34;
  v35 = v183[1];
  *v31 = v183[0];
  *(v31 + 1) = v35;
  v36 = v183[3];
  *(v31 + 2) = v183[2];
  *(v31 + 3) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  v147 = a1;
  sub_20C133AA4();
  sub_20B52F9E8(v166, v26, &unk_27C7710A0, &unk_20C156800);
  if (v28[6](v26, 1, v27) != 1)
  {
    goto LABEL_5;
  }

  sub_20B520158(v26, &unk_27C7710A0, &unk_20C156800);
  v37 = v167;
  v27 = v153;
  v38 = *(v153 + 16);
  if (v38)
  {
    while (1)
    {
      v39 = sub_20BEDE8FC(v38, 0);
      v40 = *(sub_20C1334D4() - 8);
      sub_20BEE20CC(&v170, &v39[(*(v40 + 80) + 32) & ~*(v40 + 80)], v38, v27);
      v20 = v41;
      sub_20B583EDC(v170);
      if (v20 == v38)
      {
        goto LABEL_29;
      }

      __break(1u);
LABEL_5:
      v143 = v28;
      v144 = v27;
      v42 = v28[4](v30, v26, v27);
      MEMORY[0x28223BE20](v42);
      *(&v140 - 2) = v30;
      v37 = v167;
      sub_20B6B7110(sub_20B7E060C, v152, v20);
      if (v37)
      {
        goto LABEL_44;
      }

      v43 = v154;
      v28 = v155;
      v44 = v155[6](v20, 1, v154);
      v27 = v153;
      if (v44 != 1)
      {
        break;
      }

      sub_20B520158(v20, &qword_27C762AE0, &unk_20C151420);
LABEL_27:
      (v143[1])(v30, v144);
      v38 = *(v27 + 16);
      if (!v38)
      {
        goto LABEL_28;
      }
    }

    v45 = v145;
    v141 = v28[4];
    v142 = v28 + 4;
    v141(v145, v20, v43);
    v46 = v28;
    v28 = *(sub_20C135614() + 16);

    if (!v28)
    {
      (v46[1])(v45, v43);
      goto LABEL_27;
    }

    v47 = *(sub_20C135614() + 16);

    if (v47 != *(v27 + 16))
    {
      (v155[1])(v45, v43);
      goto LABEL_27;
    }

    v167 = 0;
    v37 = sub_20C135614();
    v48 = sub_20B6B2B0C(MEMORY[0x277D84F90]);
    v49 = v37[2];
    v152 = v30;
    v146 = v49;
    if (v49)
    {
      v50 = 0;
      v51 = v37 + 5;
      while (1)
      {
        if (v50 >= v37[2])
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:

          sub_20B583E6C(v50 + 16);
          v126 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_identifier;
          v127 = sub_20C132EE4();
          (*(*(v127 - 8) + 8))(v50 + v126, v127);
          v128 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 144);
          v178 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 128);
          v179 = v128;
          v180 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 160);
          v129 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 80);
          v174 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 64);
          v175 = v129;
          v130 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 112);
          v176 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 96);
          v177 = v130;
          v131 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 16);
          v170 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row);
          v171 = v131;
          v132 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 48);
          v172 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 32);
          v173 = v132;
          sub_20B520158(&v170, &qword_27C762340, &unk_20C150290);
          type metadata accessor for SkillLevelFilterOptionsShelf(0);
          swift_deallocPartialClassInstance();
          __break(1u);
LABEL_43:
          sub_20C13E054();
          __break(1u);
LABEL_44:

          while (1)
          {
            v123 = v150;
            sub_20B583E6C((v150 + 16));
            v133 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_identifier;
            v134 = sub_20C132EE4();
            (*(*(v134 - 8) + 8))(&v123[v133], v134);
            v135 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 144];
            v178 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 128];
            v179 = v135;
            v180 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 160];
            v136 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 80];
            v174 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 64];
            v175 = v136;
            v137 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 112];
            v176 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 96];
            v177 = v137;
            v138 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 16];
            v170 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row];
            v171 = v138;
            v139 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 48];
            v172 = *&v123[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 32];
            v173 = v139;
            sub_20B520158(&v170, &qword_27C762340, &unk_20C150290);
            type metadata accessor for SkillLevelFilterOptionsShelf(0);
            swift_deallocPartialClassInstance();
            __break(1u);
LABEL_46:
          }
        }

        v54 = *(v51 - 1);
        v55 = *v51;
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v170 = v48;
        v57 = sub_20B65AA60(v54, v55);
        v59 = *(v48 + 16);
        v60 = (v58 & 1) == 0;
        v61 = __OFADD__(v59, v60);
        v62 = v59 + v60;
        if (v61)
        {
          goto LABEL_39;
        }

        v63 = v58;
        if (*(v48 + 24) < v62)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v69 = v57;
        sub_20BA0F720();
        v57 = v69;
        if (v63)
        {
LABEL_12:
          v52 = v57;

          v53 = v170;
          *(*(v170 + 56) + 8 * v52) = v50;

          v48 = v53;
          goto LABEL_13;
        }

LABEL_21:
        v65 = v170;
        *(v170 + 8 * (v57 >> 6) + 64) |= 1 << v57;
        v66 = (v65[6] + 16 * v57);
        *v66 = v54;
        v66[1] = v55;
        *(v65[7] + 8 * v57) = v50;

        v67 = v65[2];
        v61 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v61)
        {
          goto LABEL_40;
        }

        v65[2] = v68;
        v48 = v65;
LABEL_13:
        ++v50;
        v51 += 2;
        v30 = v152;
        if (v146 == v50)
        {
          goto LABEL_32;
        }
      }

      sub_20BA083D0(v62, isUniquelyReferenced_nonNull_native);
      v57 = sub_20B65AA60(v54, v55);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_43;
      }

LABEL_20:
      if (v63)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

LABEL_32:

    v50 = v153;
    v118 = *(v153 + 16);
    if (v118)
    {
      v37 = sub_20BEDE8FC(*(v153 + 16), 0);
      v119 = *(sub_20C1334D4() - 8);
      sub_20BEE20CC(&v170, v37 + ((*(v119 + 80) + 32) & ~*(v119 + 80)), v118, v50);
      v146 = v120;
      v121 = v170;

      sub_20B583EDC(v121);
      if (v146 != v118)
      {
        goto LABEL_41;
      }

      v122 = v145;
      v30 = v152;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
      v122 = v145;
    }

    v181 = v37;

    v123 = v167;
    sub_20B7E2110(&v181, v48);
    if (v123)
    {
      goto LABEL_46;
    }

    swift_bridgeObjectRelease_n();
    v167 = v181;
    v124 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration;
    v50 = v150;
    v125 = v154;
    v141(&v150[OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration], v122, v154);
    (v155[7])(v50 + v124, 0, 1, v125);
    (v143[1])(v30, v144);
  }

  else
  {
LABEL_28:

    v39 = MEMORY[0x277D84F90];
LABEL_29:
    v181 = v39;

    sub_20B7DEE10(&v181);
    v50 = v150;
    v70 = v154;
    if (v37)
    {
      goto LABEL_42;
    }

    v167 = v181;
    (v155[7])(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration, 1, 1, v70);
  }

  v153 = a9;
  (*(v157 + 16))(v156, v163, v158);
  v72 = v148;
  v71 = v149;
  v73 = *(v148 + 16);
  (v73)(v159, v161, v149);
  v152 = v73;
  v74 = *(v169 + 16);
  v154 = v169 + 16;
  v155 = v74;
  (v74)(v168, v165, v164);
  (v73)(v162, v160, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765B50, &qword_20C15A478);
  v75 = swift_allocObject();
  *(v75 + 48) = 0u;
  *(v75 + 64) = 0u;
  *(v75 + 80) = 0u;
  *(v75 + 96) = 0u;
  *(v75 + 112) = 0u;
  v76 = *(*v75 + 176);
  v77 = sub_20C1334D4();
  v78 = *(*(v77 - 8) + 56);
  v78(v75 + v76, 1, 1, v77);
  v78(v75 + *(*v75 + 184), 1, 1, v77);
  v78(v75 + *(*v75 + 192), 1, 1, v77);
  *(v75 + 40) = v147;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();

  v79 = *(&v170 + 1);
  *(v75 + 16) = v170;
  *(v75 + 24) = v79;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v80 = sub_20C13A914();
  v81 = *(v72 + 8);
  v81(v160, v71);
  v81(v161, v71);
  v82 = v157;
  v83 = v158;
  (*(v157 + 8))(v163, v158);
  *(v75 + 32) = v80;
  v84 = v167;
  *(v75 + *(*v75 + 216)) = v167;
  *(v75 + *(*v75 + 224)) = v84;
  *(v75 + *(*v75 + 208)) = 5;
  *(v75 + *(*v75 + 200)) = v153;
  (*(v82 + 32))(v75 + qword_27C79BF30, v156, v83);
  v85 = v159;
  (v152)(v75 + qword_27C79BF38, v159, v71);
  v86 = *(v72 + 32);
  v86(v75 + *(*v75 + 232), v85, v71);
  v86(v75 + *(*v75 + 240), v162, v71);
  v87 = *(*v75 + 248);
  v88 = *(v169 + 32);
  v169 += 32;
  v163 = v88;
  v89 = v164;
  v88(v75 + v87, v168, v164);
  *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_coordinator) = v75;
  sub_20B6AE988(v166, v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_rootModality);
  v90 = v165;
  (v155)(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterRoot, v165, v89);
  sub_20B52E424(&v182, v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_storefrontLocalizer);
  v91 = swift_allocObject();
  swift_weakInit();
  v92 = *(v75 + 48);
  v93 = *(v75 + 56);
  *(v75 + 48) = sub_20B7E0548;
  *(v75 + 56) = v91;

  sub_20B583ECC(v92, v93);

  v94 = *(v50 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_coordinator);
  v95 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_coordinator;
  v167 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_coordinator;
  v96 = swift_allocObject();
  swift_weakInit();
  v97 = *(v94 + 64);
  v98 = *(v94 + 72);
  *(v94 + 64) = sub_20B7E0568;
  *(v94 + 72) = v96;

  sub_20B583ECC(v97, v98);

  v99 = *(v50 + v95);
  v100 = swift_allocObject();
  swift_weakInit();
  v101 = v168;
  v102 = v169;
  v103 = v163;
  v163(v168, v90, v89);
  v104 = (*(v102 + 48) + 24) & ~*(v102 + 48);
  v105 = swift_allocObject();
  *(v105 + 16) = v100;
  v103(v105 + v104, v101, v89);
  v106 = *(v99 + 80);
  v107 = *(v99 + 88);
  *(v99 + 80) = sub_20B7E0588;
  *(v99 + 88) = v105;

  sub_20B583ECC(v106, v107);

  v108 = v167;
  v109 = *(v50 + v167);
  v110 = swift_allocObject();
  swift_weakInit();
  v111 = *(v109 + 96);
  v112 = *(v109 + 104);
  *(v109 + 96) = sub_20B7E05FC;
  *(v109 + 104) = v110;

  sub_20B583ECC(v111, v112);

  v113 = *(v50 + v108);
  v114 = swift_allocObject();
  swift_weakInit();

  v115 = *(v113 + 112);
  v116 = *(v113 + 120);
  *(v113 + 112) = sub_20B7E0604;
  *(v113 + 120) = v114;
  swift_retain_n();
  sub_20B583ECC(v115, v116);

  return v50;
}

BOOL sub_20B7DD2E8(uint64_t a1)
{
  v1 = sub_20C1346F4();
  v2 = sub_20C1355F4();
  v3 = *(v1 + 16);
  v4 = 32;
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *(v1 + v4);
    v4 += 8;
  }

  while (v7 != v2);
  v8 = v5 != 0;

  return v8;
}

BOOL sub_20B7DD368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C1334B4();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v4;
  v8 = sub_20C1334B4();
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  if (!*(a3 + 16))
  {

LABEL_10:

    return 0;
  }

  v11 = v8;
  v12 = sub_20B65AA60(v7, v6);
  v14 = v13;

  if ((v14 & 1) == 0 || !*(a3 + 16))
  {
    goto LABEL_10;
  }

  v15 = *(*(a3 + 56) + 8 * v12);
  v16 = sub_20B65AA60(v11, v10);
  v18 = v17;

  if (v18)
  {
    return v15 < *(*(a3 + 56) + 8 * v16);
  }

  return 0;
}

double sub_20B7DD464(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B7DD87C(v2);
  }

  return result;
}

uint64_t sub_20B7DD4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758, &unk_20C176700);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v25 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SkillLevelFilterUpdated(0);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_coordinator);

    v25[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v26 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &qword_27C762758, &unk_20C176700);
    v18 = sub_20C1334D4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &qword_27C762758, &unk_20C176700);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C1334A4();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v26);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20B7E2254(&qword_27C765B58, type metadata accessor for SkillLevelFilterUpdated, &unk_20C161900);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20B7E21F8(v14, v24);
  }

  return result;
}

double sub_20B7DD7F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      sub_20BF9FD78(v5, a1, v6);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20B7DD87C(int a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13C554();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x28223BE20](v7);
  v86 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_20C132EE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v93 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v91 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v90 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v77 - v14;
  if ((sub_20BF7A8FC(7, v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_rootModality) & 1) == 0)
  {
    sub_20C13B534();
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v109[0] = v24;
      *v23 = 136446210;
      v25 = sub_20C1368A4();
      v27 = sub_20B51E694(v25, v26, v109);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_20B517000, v21, v22, "Unsupported property type: %{public}s. Aborting row creation.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x20F2F6A40](v24, -1, -1);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  v78 = a1;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_coordinator);
  v85 = *(*(v16 + *(*v16 + 224)) + 16);
  v84 = sub_20B7DE4A4();
  v18 = v17;
  v92 = v1;
  sub_20B52F9E8(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration, v15, &qword_27C762AE0, &unk_20C151420);
  v19 = sub_20C135654();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_20B520158(v15, &qword_27C762AE0, &unk_20C151420);
  }

  else
  {
    v28 = sub_20C135644();
    v30 = v29;
    (*(v20 + 8))(v15, v19);
    if (v30)
    {
      goto LABEL_9;
    }
  }

  v30 = 0xEE006C6C69662E72;
  v28 = 0x61622E7472616863;
LABEL_9:
  v31 = v92;

  sub_20BC7798C(v84, v18, v28, v30, v16, v31, v85);
  v33 = v32;

  if ((*(v16 + *(*v16 + 200)) & 8) != 0)
  {
    v34 = 0;
    v36 = 0;
  }

  else
  {
    v34 = sub_20B7DE304();
    v36 = v35;
  }

  v99 = 0uLL;
  LOBYTE(v100) = 1;
  *(&v100 + 1) = 0;
  *&v101 = 0;
  WORD4(v101) = 128;
  v102 = 0uLL;
  v103 = xmmword_20C152AC0;
  *&v104 = v34;
  *(&v104 + 1) = v36;
  LOBYTE(v105) = 0;
  *(&v105 + 1) = v33;
  v106 = MEMORY[0x277D84F90];
  *&v107 = 0;
  *(&v107 + 1) = v34;
  *v108 = v36;
  *&v108[8] = xmmword_20C150190;
  nullsub_1();
  v37 = v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row;
  v38 = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 144);
  v109[8] = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 128);
  v109[9] = v38;
  v110 = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 160);
  v39 = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 80);
  v109[4] = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 64);
  v109[5] = v39;
  v40 = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 112);
  v109[6] = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 96);
  v109[7] = v40;
  v41 = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 16);
  v109[0] = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row);
  v109[1] = v41;
  v42 = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 48);
  v109[2] = *(v31 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 32);
  v109[3] = v42;
  v43 = *v108;
  *(v37 + 128) = v107;
  *(v37 + 144) = v43;
  *(v37 + 160) = *&v108[16];
  v44 = v104;
  *(v37 + 64) = v103;
  *(v37 + 80) = v44;
  v45 = v106;
  *(v37 + 96) = v105;
  *(v37 + 112) = v45;
  v46 = v100;
  *v37 = v99;
  *(v37 + 16) = v46;
  v47 = v102;
  *(v37 + 32) = v101;
  *(v37 + 48) = v47;

  sub_20B520158(v109, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v49 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
LABEL_32:
    swift_unknownObjectRelease();
    return;
  }

  if (![*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_31:
    sub_20C0C2D50(0);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v77 = v49;
  v50 = v90;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v51 = v89;
  v52 = sub_20C13BE74();
  (*(v91 + 8))(v50, v51);
  v89 = v52;
  v85 = *(v52 + 16);
  if (!v85)
  {
LABEL_29:

    goto LABEL_31;
  }

  v53 = 0;
  v83 = v89 + 32;
  v84 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_identifier;
  v81 = (v10 + 8);
  v82 = (v10 + 16);
  while (2)
  {
    if (v53 < *(v89 + 16))
    {
      v54 = (v83 + 24 * v53);
      v55 = v54[1];
      v80 = *v54;
      v56 = v54[2];
      v90 = v53 + 1;
      (*v82)(v93, v31 + v84, v9);
      v57 = *(v55 + 16);

      v91 = v56;

      v58 = 0;
      do
      {
        if (v57 == v58)
        {
          (*v81)(v93, v9);
          goto LABEL_19;
        }

        v59 = v58 + 1;
        sub_20B7E2254(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v60 = sub_20C13C894();
        v58 = v59;
      }

      while ((v60 & 1) == 0);
      (*v81)(v93, v9);
      v61 = *(v37 + 128);
      v62 = *(v37 + 144);
      v63 = *(v37 + 96);
      v95[7] = *(v37 + 112);
      v96 = v61;
      v97 = v62;
      v98 = *(v37 + 160);
      v64 = *(v37 + 80);
      v95[4] = *(v37 + 64);
      v95[5] = v64;
      v95[6] = v63;
      v65 = *(v37 + 16);
      v95[0] = *v37;
      v95[1] = v65;
      v66 = *(v37 + 48);
      v95[2] = *(v37 + 32);
      v95[3] = v66;
      v67 = sub_20B5EAF8C(v95);
      if (v67 == 1)
      {
        v68 = 0;
        v69 = 0;
      }

      else
      {
        v68 = *(&v96 + 1);
        v69 = v97;
      }

      v70 = v91;
      v79 = &v77;
      v94[0] = v68;
      v94[1] = v69;
      MEMORY[0x28223BE20](v67);
      *(&v77 - 2) = v94;
      v71 = sub_20B796758(sub_20B5EAFA4, (&v77 - 4), v70);

      if ((v71 & 1) == 0)
      {
LABEL_19:

        v53 = v90;
        v31 = v92;
        if (v90 == v85)
        {
          goto LABEL_29;
        }

        continue;
      }

      sub_20B5E2E18();
      v72 = sub_20C13D374();
      v74 = v86;
      v73 = v87;
      *v86 = v72;
      v75 = v88;
      (*(v73 + 104))(v74, *MEMORY[0x277D85200], v88);
      v76 = sub_20C13C584();
      (*(v73 + 8))(v74, v75);
      if ((v76 & 1) == 0)
      {
        goto LABEL_40;
      }

      if ((v78 & 0x80) != 0)
      {
        sub_20C10ABB4(v92, v80, v78 & 1, v77);
      }

      else
      {
        sub_20B61F604(v80, v55, v91, v92, v78 & 1, v77);
      }

      goto LABEL_32;
    }

    break;
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_20B7DE304()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_20B52F9E8(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration, &v11 - v3, &qword_27C762AE0, &unk_20C151420);
  v5 = sub_20C135654();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &qword_27C762AE0, &unk_20C151420);
LABEL_4:
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_storefrontLocalizer + 24));
    v7 = sub_20C138D34();

    return v7;
  }

  v7 = sub_20C135604();
  v9 = v8;
  (*(v6 + 8))(v4, v5);
  if (!v9)
  {
    goto LABEL_4;
  }

  return v7;
}

uint64_t sub_20B7DE4A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_20B52F9E8(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration, &v11 - v3, &qword_27C762AE0, &unk_20C151420);
  v5 = sub_20C135654();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &qword_27C762AE0, &unk_20C151420);
LABEL_4:
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_storefrontLocalizer + 24));
    v7 = sub_20C138D34();

    return v7;
  }

  v7 = sub_20C135634();
  v9 = v8;
  (*(v6 + 8))(v4, v5);
  if (!v9)
  {
    goto LABEL_4;
  }

  return v7;
}

uint64_t sub_20B7DE644()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0, &unk_20C151420);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_20C1334B4();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    sub_20B52F9E8(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration, v3, &qword_27C762AE0, &unk_20C151420);
    v8 = sub_20C135654();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_20B520158(v3, &qword_27C762AE0, &unk_20C151420);
    }

    else
    {
      v10 = sub_20C135624();
      (*(v9 + 8))(v3, v8);
      if (*(v10 + 16))
      {
        v11 = sub_20B65AA60(v7, v6);
        v13 = v12;

        if (v13)
        {
          v14 = *(*(v10 + 56) + 16 * v11);

          return v14;
        }
      }

      else
      {
      }
    }
  }

  return sub_20C1334C4();
}

uint64_t sub_20B7DE814()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_rootModality, &unk_27C7710A0, &unk_20C156800);
  v3 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_storefrontLocalizer));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_filterConfiguration, &qword_27C762AE0, &unk_20C151420);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SkillLevelFilterOptionsShelf(uint64_t a1)
{
  result = qword_27C765B38;
  if (!qword_27C765B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7DE9FC(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B7DEBA0(319, &qword_27C764988, MEMORY[0x277D50A30]);
    if (v2 <= 0x3F)
    {
      sub_20C134EC4();
      if (v3 <= 0x3F)
      {
        sub_20B7DEBA0(319, &qword_27C765B48, MEMORY[0x277D51A98]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20B7DEBA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_20B7DEBF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B7DEC6C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI28SkillLevelFilterOptionsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20B7DEE10(uint64_t *a1)
{
  v2 = *(sub_20C1334D4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0E70(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B7DEEB8(v5);
  *a1 = v3;
}

void sub_20B7DEEB8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C1334D4();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C1334D4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20B7DF2F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B7DEFE4(0, v2, 1, a1);
  }
}

void sub_20B7DEFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C1334D4();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_20C1334C4();
      v27 = v26;
      if (v25 == sub_20C1334C4() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_20C13DFF4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20B7DF2F0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20C1334D4();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_20B7DFEAC(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_20B6A0714(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_20C1334C4();
      v37 = v36;
      v38 = sub_20C1334C4();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20C13DFF4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_20C1334C4();
        v52 = v51;
        if (v50 == sub_20C1334C4() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20C13DFF4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_20BC05740((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20B7DFEAC(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_20B6A0714(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_20C1334C4();
    v69 = v68;
    if (v5 == sub_20C1334C4() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20C13DFF4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_20B7DFEAC(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_20C1334D4();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_20C1334C4();
            v51 = v50;
            if (v49 == sub_20C1334C4() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_20C13DFF4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_20C1334C4();
        v31 = v30;
        if (v29 == sub_20C1334C4() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_20C13DFF4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_20B6A088C(&v73, &v72, &v71);
}

uint64_t sub_20B7E0588(uint64_t a1)
{
  v3 = *(sub_20C134EC4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_20B7DD4C4(a1, v4, v5);
}

void sub_20B7E062C(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v84 = a5;
  v9 = sub_20C1334D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v89 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v78 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v78 - v15);
  MEMORY[0x28223BE20](v17);
  v90 = &v78 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_83;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_84;
  }

  v22 = (a2 - a1) / v20;
  v93 = a1;
  v92 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || &a2[v24] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v24 < 1)
    {
      v53 = &a4[v24];
      goto LABEL_80;
    }

    v51 = -v20;
    v82 = (v10 + 8);
    v83 = (v10 + 16);
    v52 = &a4[v24];
    v53 = &a4[v24];
    v81 = a4;
    v90 = v51;
    while (1)
    {
      v78 = v53;
      v54 = a2;
      a2 += v51;
      v85 = a2;
      v86 = v54;
      while (1)
      {
        if (v54 <= a1)
        {
          v93 = v54;
          v91 = v78;
          goto LABEL_81;
        }

        v55 = a3;
        v80 = v53;
        v56 = *v83;
        v87 = (v52 + v51);
        v56(v88);
        (v56)(v89, a2, v9);
        v57 = sub_20C1334B4();
        if (!v58)
        {
          goto LABEL_64;
        }

        v59 = v57;
        v60 = v58;
        v61 = sub_20C1334B4();
        if (!v62)
        {
          goto LABEL_63;
        }

        v63 = v62;
        if (!*(v84 + 16))
        {

LABEL_63:

          goto LABEL_64;
        }

        v79 = v61;
        v64 = v59;
        v65 = v84;
        v66 = sub_20B65AA60(v64, v60);
        v68 = v67;

        if ((v68 & 1) == 0 || !*(v65 + 16))
        {
          goto LABEL_63;
        }

        v69 = *(*(v65 + 56) + 8 * v66);
        v70 = v65;
        v71 = sub_20B65AA60(v79, v63);
        v73 = v72;

        if (v73)
        {
          v74 = v69 < *(*(v70 + 56) + 8 * v71);
          goto LABEL_65;
        }

LABEL_64:
        v74 = 0;
LABEL_65:
        a3 = &v90[v55];
        v75 = *v82;
        (*v82)(v89, v9);
        v75(v88, v9);
        a2 = v85;
        if (v74)
        {
          break;
        }

        v76 = v87;
        v53 = v87;
        if (v55 < v52 || a3 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v55 != v52)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v52 = v53;
        v51 = v90;
        v54 = v86;
        if (v76 <= v81)
        {
          a2 = v86;
          goto LABEL_80;
        }
      }

      if (v55 < v86 || a3 >= v86)
      {
        swift_arrayInitWithTakeFrontToBack();
        v53 = v80;
        v77 = v81;
      }

      else
      {
        v53 = v80;
        v77 = v81;
        if (v55 != v86)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v51 = v90;
      if (v52 <= v77)
      {
LABEL_80:
        v93 = a2;
        v91 = v53;
        goto LABEL_81;
      }
    }
  }

  v23 = v22 * v20;
  if (a4 < a1 || &a1[v23] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v89 = &a4[v23];
  v91 = &a4[v23];
  if (v23 >= 1 && a2 < a3)
  {
    v26 = *(v10 + 16);
    v87 = a3;
    v88 = (v10 + 16);
    v85 = (v10 + 8);
    v86 = v26;
    v82 = v16;
    v83 = v20;
    while (1)
    {
      v27 = v86;
      (v86)(v90, a2, v9);
      (v27)(v16, a4, v9);
      v28 = sub_20C1334B4();
      v30 = v16;
      if (!v29)
      {
        goto LABEL_35;
      }

      v31 = v28;
      v32 = v29;
      v33 = v9;
      v34 = a4;
      v35 = a2;
      v36 = sub_20C1334B4();
      if (!v37)
      {
        goto LABEL_34;
      }

      v38 = v37;
      v39 = v84;
      if (!*(v84 + 16))
      {
        break;
      }

      v81 = v36;
      v40 = sub_20B65AA60(v31, v32);
      v42 = v41;

      if ((v42 & 1) == 0 || !*(v39 + 16))
      {
        goto LABEL_34;
      }

      v43 = *(*(v39 + 56) + 8 * v40);
      v44 = sub_20B65AA60(v81, v38);
      v46 = v45;

      a2 = v35;
      a4 = v34;
      v9 = v33;
      v30 = v82;
      v20 = v83;
      if ((v46 & 1) == 0)
      {
        goto LABEL_35;
      }

      v81 = *(*(v84 + 56) + 8 * v44);
      v47 = *v85;
      (*v85)(v82, v9);
      v47(v90, v9);
      v48 = v43 < v81;
      v16 = v30;
      if (v48)
      {
        v49 = v87;
        if (a1 < a2 || a1 >= &a2[v20])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
        goto LABEL_42;
      }

LABEL_36:
      v49 = v87;
      if (a1 < a4 || a1 >= &a4[v20])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v92 = &a4[v20];
      a4 += v20;
LABEL_42:
      a1 += v20;
      v93 = a1;
      if (a4 >= v89 || a2 >= v49)
      {
        goto LABEL_81;
      }
    }

LABEL_34:

    a2 = v35;
    a4 = v34;
    v9 = v33;
    v30 = v82;
    v20 = v83;
LABEL_35:
    v50 = *v85;
    (*v85)(v30, v9);
    v50(v90, v9);
    v16 = v30;
    goto LABEL_36;
  }

LABEL_81:
  sub_20B6A088C(&v93, &v92, &v91);
}

void sub_20B7E0D74(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v26 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_20B6A07A0(v26);
  }

  v21 = v6;
  *v6 = v26;
  v8 = v26 + 16;
  v9 = *(v26 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v21 = v26;
  }

  else
  {
    v22 = (v26 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v26[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_20C1334D4() - 8) + 72);
      v16 = (v10 + v15 * v6);
      v17 = (v10 + v15 * v13);
      v18 = (v10 + v15 * v14);

      sub_20B7E062C(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v21 = v26;

        return;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v8 = v26 + 16;
      v19 = *v22;
      if (v9 - 2 >= *v22)
      {
        goto LABEL_13;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_14;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v22 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v21 = v26;
    __break(1u);
  }
}

void sub_20B7E0F34(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v174 = a1;
  v8 = sub_20C1334D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v177 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v187 = &v169 - v12;
  MEMORY[0x28223BE20](v13);
  v189 = &v169 - v14;
  MEMORY[0x28223BE20](v15);
  v198 = &v169 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v169 - v18;
  MEMORY[0x28223BE20](v20);
  v188 = &v169 - v21;
  MEMORY[0x28223BE20](v22);
  v171 = &v169 - v23;
  MEMORY[0x28223BE20](v24);
  v170 = &v169 - v25;
  v200 = MEMORY[0x277D84F90];
  v183 = a3;
  v26 = a3[1];
  v199 = a5;
  if (v26 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_120:
    v164 = *v174;
    if (!*v174)
    {
      goto LABEL_148;
    }

    v165 = v199;

    v166 = v164;
    v167 = v191;
    sub_20B7E0D74(&v200, v166, v183, v165);

    v191 = v167;
LABEL_122:
    swift_bridgeObjectRelease_n();

    return;
  }

  v194 = v9 + 16;
  v195 = (v9 + 8);
  v193 = (v9 + 32);
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v196 = v8;
  v173 = a4;
  v182 = v9;
  v186 = v19;
  while (1)
  {
    v175 = v27;
    if (v27 + 1 >= v26)
    {
      v41 = v27 + 1;
      goto LABEL_41;
    }

    v190 = v26;
    v172 = v28;
    v29 = *v183;
    v30 = *(v9 + 72);
    v31 = v9;
    v32 = *v183 + v30 * (v27 + 1);
    v33 = *(v31 + 16);
    v34 = v170;
    v33(v170, v32, v8);
    v197 = v29;
    v35 = &v29[v30 * v27];
    v36 = v171;
    v185 = v33;
    v33(v171, v35, v8);
    v37 = v191;
    LODWORD(v192) = sub_20B7DD368(v34, v36, v199);
    v191 = v37;
    if (v37)
    {
      v168 = *v195;
      (*v195)(v36, v8);
      v168(v34, v8);
      goto LABEL_122;
    }

    v38 = *v195;
    (*v195)(v36, v8);
    v184 = v38;
    v38(v34, v8);
    v39 = v27 + 2;
    v40 = &v197[v30 * (v27 + 2)];
    v41 = v190;
    v197 = v30;
    while (v41 != v39)
    {
      v42 = v185;
      v185(v188, v40, v8);
      v42(v19, v32, v8);
      v43 = sub_20C1334B4();
      if (v44)
      {
        v45 = v43;
        v46 = v44;
        v47 = sub_20C1334B4();
        v49 = v48;
        if (v48)
        {
          if (*(v199 + 16))
          {
            v50 = v47;
            v51 = v199;
            v52 = sub_20B65AA60(v45, v46);
            v54 = v53;

            if ((v54 & 1) != 0 && *(v51 + 16))
            {
              v55 = v52;
              v56 = v51;
              v57 = *(*(v51 + 56) + 8 * v55);
              v58 = v50;
              v59 = v56;
              v60 = sub_20B65AA60(v58, v49);
              v62 = v61;

              v30 = v197;
              LODWORD(v49) = (v62 & 1) != 0 && v57 < *(*(v59 + 56) + 8 * v60);
              v8 = v196;
              v19 = v186;
              goto LABEL_22;
            }

            LODWORD(v49) = 0;
            v8 = v196;
          }

          else
          {

            LODWORD(v49) = 0;
          }
        }

        else
        {
        }

        v19 = v186;
      }

      else
      {
        LODWORD(v49) = 0;
      }

      v30 = v197;
LABEL_22:
      v63 = v184;
      (v184)(v19, v8);
      v63(v188, v8);
      ++v39;
      v40 = &v30[v40];
      v32 += v30;
      v41 = v190;
      if ((v192 ^ v49))
      {
        v41 = v39 - 1;
        break;
      }
    }

    a4 = v173;
    v9 = v182;
    v28 = v172;
    if ((v192 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (v41 < v175)
    {
      goto LABEL_143;
    }

    if (v175 < v41)
    {
      v64 = v30 * (v41 - 1);
      v65 = v41 * v30;
      v190 = v41;
      v66 = v41;
      v67 = v175;
      v68 = v175 * v30;
      do
      {
        if (v67 != --v66)
        {
          v70 = *v183;
          if (!*v183)
          {
            goto LABEL_146;
          }

          v71 = *v193;
          (*v193)(v177, v70 + v68, v196);
          if (v68 < v64 || v70 + v68 >= (v70 + v65))
          {
            v69 = v196;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v69 = v196;
            if (v68 != v64)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v71((v70 + v64), v177, v69);
          v19 = v186;
          v30 = v197;
        }

        ++v67;
        v64 -= v30;
        v65 -= v30;
        v68 += v30;
      }

      while (v67 < v66);
      v8 = v196;
      a4 = v173;
      v9 = v182;
      v28 = v172;
      v41 = v190;
    }

LABEL_41:
    v72 = v183[1];
    if (v41 < v72)
    {
      if (__OFSUB__(v41, v175))
      {
        goto LABEL_140;
      }

      if (v41 - v175 < a4)
      {
        break;
      }
    }

LABEL_68:
    v104 = v175;
    if (v41 < v175)
    {
      goto LABEL_139;
    }

    v178 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_20BC05740(0, *(v28 + 2) + 1, 1, v28);
    }

    v106 = *(v28 + 2);
    v105 = *(v28 + 3);
    v107 = v106 + 1;
    if (v106 >= v105 >> 1)
    {
      v28 = sub_20BC05740((v105 > 1), v106 + 1, 1, v28);
    }

    *(v28 + 2) = v107;
    v108 = v28 + 32;
    v109 = &v28[16 * v106 + 32];
    v110 = v178;
    *v109 = v104;
    *(v109 + 1) = v110;
    v200 = v28;
    v197 = *v174;
    if (!v197)
    {
      goto LABEL_147;
    }

    if (v106)
    {
      v192 = v28 + 32;
      while (1)
      {
        v111 = v107 - 1;
        if (v107 >= 4)
        {
          break;
        }

        if (v107 == 3)
        {
          v112 = *(v28 + 4);
          v113 = *(v28 + 5);
          v122 = __OFSUB__(v113, v112);
          v114 = v113 - v112;
          v115 = v122;
LABEL_89:
          if (v115)
          {
            goto LABEL_130;
          }

          v128 = &v28[16 * v107];
          v130 = *v128;
          v129 = *(v128 + 1);
          v131 = __OFSUB__(v129, v130);
          v132 = v129 - v130;
          v133 = v131;
          if (v131)
          {
            goto LABEL_133;
          }

          v134 = &v108[16 * v111];
          v136 = *v134;
          v135 = *(v134 + 1);
          v122 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v122)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v132, v137))
          {
            goto LABEL_137;
          }

          if (v132 + v137 >= v114)
          {
            if (v114 < v137)
            {
              v111 = v107 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        v138 = &v28[16 * v107];
        v140 = *v138;
        v139 = *(v138 + 1);
        v122 = __OFSUB__(v139, v140);
        v132 = v139 - v140;
        v133 = v122;
LABEL_103:
        if (v133)
        {
          goto LABEL_132;
        }

        v141 = &v108[16 * v111];
        v143 = *v141;
        v142 = *(v141 + 1);
        v122 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v122)
        {
          goto LABEL_135;
        }

        if (v144 < v132)
        {
          goto LABEL_3;
        }

LABEL_110:
        if (v111 - 1 >= v107)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v149 = *v183;
        if (!*v183)
        {
          goto LABEL_145;
        }

        v150 = v28;
        v151 = &v108[16 * v111 - 16];
        v152 = *v151;
        v153 = v111;
        v154 = &v108[16 * v111];
        v155 = *(v154 + 1);
        v156 = *(v182 + 72);
        v157 = (v149 + v156 * *v151);
        v158 = (v149 + v156 * *v154);
        v159 = (v149 + v156 * v155);
        v160 = v199;

        v161 = v157;
        v162 = v191;
        sub_20B7E062C(v161, v158, v159, v197, v160);

        v191 = v162;
        if (v162)
        {
          v200 = v150;
          goto LABEL_122;
        }

        if (v155 < v152)
        {
          goto LABEL_125;
        }

        v28 = v150;
        v163 = *(v150 + 2);
        if (v153 > v163)
        {
          goto LABEL_126;
        }

        *v151 = v152;
        *(v151 + 1) = v155;
        if (v153 >= v163)
        {
          goto LABEL_127;
        }

        v107 = v163 - 1;
        memmove(v154, v154 + 16, 16 * (v163 - 1 - v153));
        *(v150 + 2) = v163 - 1;
        v8 = v196;
        v19 = v186;
        v108 = v192;
        if (v163 <= 2)
        {
LABEL_3:
          v200 = v28;
          goto LABEL_4;
        }
      }

      v116 = &v108[16 * v107];
      v117 = *(v116 - 8);
      v118 = *(v116 - 7);
      v122 = __OFSUB__(v118, v117);
      v119 = v118 - v117;
      if (v122)
      {
        goto LABEL_128;
      }

      v121 = *(v116 - 6);
      v120 = *(v116 - 5);
      v122 = __OFSUB__(v120, v121);
      v114 = v120 - v121;
      v115 = v122;
      if (v122)
      {
        goto LABEL_129;
      }

      v123 = &v28[16 * v107];
      v125 = *v123;
      v124 = *(v123 + 1);
      v122 = __OFSUB__(v124, v125);
      v126 = v124 - v125;
      if (v122)
      {
        goto LABEL_131;
      }

      v122 = __OFADD__(v114, v126);
      v127 = v114 + v126;
      if (v122)
      {
        goto LABEL_134;
      }

      if (v127 >= v119)
      {
        v145 = &v108[16 * v111];
        v147 = *v145;
        v146 = *(v145 + 1);
        v122 = __OFSUB__(v146, v147);
        v148 = v146 - v147;
        if (v122)
        {
          goto LABEL_138;
        }

        if (v114 < v148)
        {
          v111 = v107 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_89;
    }

LABEL_4:
    v9 = v182;
    v26 = v183[1];
    v27 = v178;
    a4 = v173;
    if (v178 >= v26)
    {
      goto LABEL_120;
    }
  }

  if (__OFADD__(v175, a4))
  {
    goto LABEL_141;
  }

  if (v175 + a4 < v72)
  {
    v72 = v175 + a4;
  }

  v73 = v189;
  if (v72 >= v175)
  {
    if (v41 != v72)
    {
      v178 = v72;
      v172 = v28;
      v74 = *v183;
      v75 = *(v9 + 72);
      v192 = *(v9 + 16);
      v76 = v74 + v75 * (v41 - 1);
      v184 = -v75;
      v77 = (v175 - v41);
      v185 = v74;
      v176 = v75;
      v78 = v74 + v41 * v75;
      do
      {
        v190 = v41;
        v179 = v78;
        v180 = v77;
        v80 = v77;
        v181 = v76;
        while (1)
        {
          v197 = v80;
          v81 = v192;
          (v192)(v198, v78, v8);
          v81(v73, v76, v8);
          v82 = sub_20C1334B4();
          if (!v83)
          {
            break;
          }

          v84 = v82;
          v85 = v83;
          v86 = sub_20C1334B4();
          if (!v87)
          {
            goto LABEL_51;
          }

          v88 = v87;
          v89 = v199;
          if (!*(v199 + 16))
          {

            goto LABEL_51;
          }

          v90 = v86;
          v91 = sub_20B65AA60(v84, v85);
          v93 = v92;

          if ((v93 & 1) == 0 || !*(v89 + 16))
          {
            v8 = v196;
            v73 = v189;
LABEL_51:

            break;
          }

          v94 = *(*(v89 + 56) + 8 * v91);
          v95 = sub_20B65AA60(v90, v88);
          v97 = v96;

          v8 = v196;
          v73 = v189;
          if ((v97 & 1) == 0)
          {
            break;
          }

          v98 = *(*(v199 + 56) + 8 * v95);
          v99 = *v195;
          (*v195)(v189, v196);
          v99(v198, v8);
          if (v94 < v98)
          {
            v100 = v197;
            if (!v185)
            {
              goto LABEL_144;
            }

            v101 = *v193;
            v102 = v187;
            (*v193)(v187, v78, v8);
            swift_arrayInitWithTakeFrontToBack();
            v101(v76, v102, v8);
            v76 += v184;
            v78 += v184;
            v103 = __CFADD__(v100, 1);
            v80 = v100 + 1;
            if (!v103)
            {
              continue;
            }
          }

          goto LABEL_53;
        }

        v79 = *v195;
        (*v195)(v73, v8);
        v79(v198, v8);
LABEL_53:
        v41 = v190 + 1;
        v76 = v181 + v176;
        v77 = v180 - 1;
        v78 = v179 + v176;
      }

      while (v190 + 1 != v178);
      v19 = v186;
      v28 = v172;
      v41 = v178;
    }

    goto LABEL_68;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_145:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_146:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_147:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_148:
  swift_bridgeObjectRelease_n();
  __break(1u);
}

void sub_20B7E1C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v70 = a5;
  v9 = sub_20C1334D4();
  MEMORY[0x28223BE20](v9);
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v18 = &v54 - v15;
  v56 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v16 + 16);
    v20 = v16 + 16;
    v22 = *(v20 + 56);
    v67 = (v20 - 8);
    v68 = v21;
    v69 = v20;
    v23 = (v19 + v22 * (a3 - 1));
    v61 = -v22;
    v62 = (v20 + 16);
    v24 = a1 - a3;
    v63 = v19;
    v55 = v22;
    v25 = v19 + v22 * a3;
    v65 = &v54 - v15;
    v66 = v13;
LABEL_8:
    v59 = v23;
    v60 = a3;
    v57 = v25;
    v58 = v24;
    v27 = v24;
    while (1)
    {
      v72 = v25;
      v28 = v68;
      v68(v18, v25, v9, v17);
      v71 = v23;
      v28(v13, v23, v9);
      v29 = sub_20C1334B4();
      if (!v30)
      {
        goto LABEL_6;
      }

      v31 = v29;
      v32 = v30;
      v33 = sub_20C1334B4();
      if (!v34)
      {
        goto LABEL_5;
      }

      v35 = v34;
      v36 = v70;
      if (!*(v70 + 16))
      {
        break;
      }

      v37 = v33;
      v38 = v27;
      v39 = v9;
      v40 = sub_20B65AA60(v31, v32);
      v42 = v41;

      if ((v42 & 1) == 0 || !*(v36 + 16))
      {
        v9 = v39;
LABEL_5:

        v18 = v65;
        v13 = v66;
LABEL_6:
        v26 = *v67;
        (*v67)(v13, v9);
        v26(v18, v9);
LABEL_7:
        a3 = v60 + 1;
        v23 = &v59[v55];
        v24 = v58 - 1;
        v25 = v57 + v55;
        if (v60 + 1 == v56)
        {
          return;
        }

        goto LABEL_8;
      }

      v43 = *(*(v36 + 56) + 8 * v40);
      v44 = sub_20B65AA60(v37, v35);
      v46 = v45;

      v9 = v39;
      v18 = v65;
      v13 = v66;
      if ((v46 & 1) == 0)
      {
        goto LABEL_6;
      }

      v47 = *(*(v70 + 56) + 8 * v44);
      v48 = *v67;
      (*v67)(v66, v39);
      v48(v18, v39);
      v49 = v43 < v47;
      v50 = v72;
      v51 = v71;
      if (!v49)
      {
        goto LABEL_7;
      }

      if (!v63)
      {
        __break(1u);
        return;
      }

      v52 = *v62;
      v53 = v64;
      (*v62)(v64, v72, v9);
      swift_arrayInitWithTakeFrontToBack();
      v52(v51, v53, v9);
      v23 = &v51[v61];
      v25 = v50 + v61;
      ++v27;
      if (v38 == -1)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_5;
  }
}

void sub_20B7E1F8C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = sub_20C13DF84();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C1334D4();
        v8 = sub_20C13CCD4();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_20C1334D4() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_20B7E0F34(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_20B7E1C04(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}