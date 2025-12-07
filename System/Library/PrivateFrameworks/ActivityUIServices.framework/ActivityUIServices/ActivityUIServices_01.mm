uint64_t sub_18E631610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_18E631768()
{
  v0 = objc_allocWithZone(MEMORY[0x1E699F7F8]);
  v1 = sub_18E65F8F0();
  v2 = [v0 initWithIdentifier_];

  qword_1ED764F10 = v2;
}

id ActivityHostViewController.__deallocating_deinit()
{
  if (qword_1ED764D60 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = sub_18E65F6E0();
  __swift_project_value_buffer(v1, qword_1ED764D68);
  v2 = v0;
  v3 = sub_18E65F6C0();
  v4 = sub_18E65FA60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136446210;
    v7 = sub_18E62A1F8();
    v9 = sub_18E61173C(v7, v8, v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18E60F000, v3, v4, "[%{public}s] Dealloc", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193AD1140](v6, -1, -1);
    MEMORY[0x193AD1140](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientSettingsObservers;
  swift_beginAccess();
  v0 = *&v2[v10];
  if (v0 >> 62)
  {
    v11 = sub_18E65FBC0();
  }

  else
  {
    v11 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x193AD04B0](v12, v0);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v12 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v13 = *(v0 + 8 * v12 + 32);
        swift_unknownObjectRetain();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_15;
        }
      }

      [v13 invalidate];
      swift_unknownObjectRelease();
      ++v12;
    }

    while (v14 != v11);
  }

  sub_18E62B574(v15);
  v17.receiver = v2;
  v17.super_class = type metadata accessor for ActivityHostViewController();
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

void sub_18E631D1C(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityHostViewController();
  v2 = objc_msgSendSuper2(&v3, sel_viewDidLoad);
  sub_18E62FBAC(v2);
  sub_18E62FDC4();
}

double sub_18E631DB0(char a1, __n128 a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ActivityHostViewController();
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  BSDispatchQueueAssertMain();
  v5 = *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E63B734;
    *(v6 + 24) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E63D34C;
    *(v7 + 24) = v6;
    v11[4] = sub_18E63D34C;
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_18E635E98;
    v11[3] = &block_descriptor_83;
    v8 = _Block_copy(v11);
    v9 = v5;

    [v9 performUpdate_];

    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_18E631F80(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = a1;
      v9 = [v5 traitCollection];
      v10 = [v9 userInterfaceStyle];

      [v7 setUserInterfaceStyle_];
      v5 = v8;
    }
  }
}

void sub_18E632100(id a1)
{
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    MEMORY[0x1EEE9AC00](v6);
    v12[2] = v5;
    BSDispatchQueueAssertMain();
    v7 = *&v1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
    if (v7)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = sub_18E63B73C;
      *(v8 + 24) = v12;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_18E63D34C;
      *(v9 + 24) = v8;
      aBlock[4] = sub_18E63D34C;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E635E98;
      aBlock[3] = &block_descriptor_94;
      v10 = _Block_copy(aBlock);
      v11 = v7;

      [v11 performUpdate_];

      _Block_release(v10);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }
    }
  }
}

void sub_18E632370(uint64_t a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for ActivityHostViewController();
  objc_msgSendSuper2(&v17, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  v8 = swift_beginAccess();
  if (*(*&v3[v7] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType) == 4)
  {
    MEMORY[0x1EEE9AC00](v8);
    v15[16] = v9;
    BSDispatchQueueAssertMain();
    v10 = *&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = sub_18E63B760;
      *(v11 + 24) = v15;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_18E63D34C;
      *(v12 + 24) = v11;
      aBlock[4] = sub_18E63D34C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E635E98;
      aBlock[3] = &block_descriptor_105;
      v13 = _Block_copy(aBlock);
      v14 = v10;

      [v14 performUpdate_];

      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
      }
    }
  }
}

void sub_18E6326AC(uint64_t a1, char a2)
{
  BSDispatchQueueAssertMain();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ActivityHostViewController();
  objc_msgSendSuper2(&v7, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  v5 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  v6 = swift_beginAccess();
  if (*(v2 + v5) == 1)
  {
    if (a1)
    {
      sub_18E62F264();
    }

    else
    {
      sub_18E62FA90(v6);
    }
  }
}

void sub_18E6327E4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v2 sizeToFit];
  [v2 bounds];
  v9 = CGRectInset(v8, -4.0, -4.0);
  [v2 setBounds_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 bounds];

  UIRectGetCenter();
  [v2 setCenter_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 bringSubviewToFront_];
}

double sub_18E632A54(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v10 = sub_18E65F850();
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E65F870();
  v13 = *(v23 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a2 error];
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  aBlock[4] = sub_18E63D0E8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E63D350;
  aBlock[3] = &block_descriptor_420;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  v21 = a4;

  sub_18E65F860();
  v26 = MEMORY[0x1E69E7CC0];
  sub_18E63CB04(&qword_1ED764D58, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89FE0, qword_18E6646A8);
  sub_18E63CFFC(&qword_1ED764D48, &qword_1EAC89FE0, qword_18E6646A8);
  sub_18E65FB80();
  MEMORY[0x193AD02E0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v24 + 8))(v12, v10);
  (*(v13 + 8))(v16, v23);

  return result;
}

uint64_t sub_18E632D4C(void *a1, void *a2, uint64_t (*a3)(void *))
{
  if (a1)
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v6 = sub_18E65F6E0();
    __swift_project_value_buffer(v6, qword_1ED764D68);
    v7 = a2;
    v8 = a1;
    v9 = sub_18E65F6C0();
    v10 = sub_18E65FA60();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136446466;
      v13 = sub_18E62A1F8();
      v15 = sub_18E61173C(v13, v14, &v28);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      swift_getErrorValue();
      v16 = sub_18E65FE40();
      v18 = sub_18E61173C(v16, v17, &v28);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_18E60F000, v9, v10, "[%{public}s] Ensure content failed: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      v19 = v12;
LABEL_10:
      MEMORY[0x193AD1140](v19, -1, -1);
      MEMORY[0x193AD1140](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v20 = sub_18E65F6E0();
    __swift_project_value_buffer(v20, qword_1ED764D68);
    v21 = a2;
    v9 = sub_18E65F6C0();
    v22 = sub_18E65FA60();

    if (os_log_type_enabled(v9, v22))
    {
      v11 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v11 = 136446210;
      v24 = sub_18E62A1F8();
      v26 = sub_18E61173C(v24, v25, &v28);

      *(v11 + 4) = v26;
      _os_log_impl(&dword_18E60F000, v9, v22, "[%{public}s] Ensure content complete", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v19 = v23;
      goto LABEL_10;
    }
  }

  return a3(a1);
}

double sub_18E633024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_18E633078(void *a1, void *a2)
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v4 = sub_18E65F6E0();
  __swift_project_value_buffer(v4, qword_1ED764D68);
  v5 = a1;
  v6 = sub_18E65F6C0();
  v7 = sub_18E65FA60();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_18E62A1F8();
    v12 = sub_18E61173C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_18E60F000, v6, v7, "[%{public}s] Ensure content: archive content ready", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193AD1140](v9, -1, -1);
    MEMORY[0x193AD1140](v8, -1, -1);
  }

  v13 = sub_18E65F8F0();
  [a2 satisfyMilestone_];
}

void sub_18E633220(void *a1, void *a2)
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v4 = sub_18E65F6E0();
  __swift_project_value_buffer(v4, qword_1ED764D68);
  v5 = a1;
  v6 = sub_18E65F6C0();
  v7 = sub_18E65FA60();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_18E62A1F8();
    v12 = sub_18E61173C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_18E60F000, v6, v7, "[%{public}s] Ensure content: initial content size ready", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193AD1140](v9, -1, -1);
    MEMORY[0x193AD1140](v8, -1, -1);
  }

  v13 = sub_18E65F8F0();
  [a2 satisfyMilestone_];
}

void sub_18E6333C8(void *a1, void *a2)
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v4 = sub_18E65F6E0();
  __swift_project_value_buffer(v4, qword_1ED764D68);
  v5 = a1;
  v6 = sub_18E65F6C0();
  v7 = sub_18E65FA60();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_18E62A1F8();
    v12 = sub_18E61173C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_18E60F000, v6, v7, "[%{public}s] Ensure content: scene activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x193AD1140](v9, -1, -1);
    MEMORY[0x193AD1140](v8, -1, -1);
  }

  v13 = sub_18E65F8F0();
  [a2 satisfyMilestone_];
}

id sub_18E633578(void *a1, id a2)
{
  if (([a2 isComplete] & 1) == 0)
  {
    v4 = sub_18E65F8F0();
    [a2 failWithReason_];
  }

  return [a1 invalidate];
}

void sub_18E6336BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_18E65F350();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_18E633720(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = *a4;

    return [result v7];
  }

  return result;
}

uint64_t sub_18E63391C()
{
  v1 = v0;
  sub_18E65FC70();
  MEMORY[0x193AD0160](0xD000000000000022, 0x800000018E668AB0);
  v2 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode);
  if (v2)
  {
    if (v2 == 2)
    {
      v3 = 0xED0000746F687370;
      v4 = 0x616E73206576696CLL;
    }

    else
    {
      if (v2 != 1)
      {
        result = sub_18E65FDF0();
        __break(1u);
        return result;
      }

      v3 = 0xE400000000000000;
      v4 = 1702259052;
    }
  }

  else
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  v5 = 7104878;
  MEMORY[0x193AD0160](v4, v3);

  MEMORY[0x193AD0160](0x696C61766E69202CLL, 0xEF203A6465746164);
  if (*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x193AD0160](v6, v7);

  MEMORY[0x193AD0160](0x6E6573657270202CLL, 0xED0000203A726574);
  v8 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter);
  if (v8)
  {
    v9 = [v8 description];
    v10 = sub_18E65F900();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x193AD0160](v10, v12);

  MEMORY[0x193AD0160](0xD000000000000014, 0x800000018E668AE0);
  v13 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView);
  if (v13)
  {
    v14 = [v13 description];
    v15 = sub_18E65F900();
    v17 = v16;
  }

  else
  {
    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x193AD0160](v15, v17);

  MEMORY[0x193AD0160](0x697263736564202CLL, 0xED00003D726F7470);
  v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = [v19 description];
  v21 = sub_18E65F900();
  v23 = v22;

  MEMORY[0x193AD0160](v21, v23);

  MEMORY[0x193AD0160](0x3A656E656373202CLL, 0xE900000000000020);
  v24 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v24)
  {
    v25 = [v24 description];
    v5 = sub_18E65F900();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
  }

  MEMORY[0x193AD0160](v5, v27);

  MEMORY[0x193AD0160](62, 0xE100000000000000);
  return 0;
}

void sub_18E633D8C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = BSDispatchQueueAssertMain();
  if (*(v3 + v4) == 1)
  {
    sub_18E62F264();
  }

  else
  {
    sub_18E62FA90(v5);
  }
}

uint64_t sub_18E633F18(void *a1, uint64_t a2)
{
  v3 = swift_unknownObjectRetain();
  MEMORY[0x193AD01B0](v3);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18E65F9C0();
  }

  return sub_18E65F9D0();
}

void sub_18E633F90(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18E65F420();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_18E633FF4(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_18E65F410();
  }

  v8 = v7;
  [v6 *a5];
}

void sub_18E63406C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), char *a4, void (*a5)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v10 && (v11 = [v10 clientSettings]) != 0)
    {
      v12 = v11;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        ObjectType = swift_getObjectType();
        v14 = a3(ObjectType);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v15 = sub_18E65F6E0();
    __swift_project_value_buffer(v15, qword_1ED764D68);
    v16 = v14;
    v17 = v9;
    v18 = sub_18E65F6C0();
    v19 = sub_18E65FA40();

    if (os_log_type_enabled(v18, v19))
    {
      format = a4;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136446466;
      v22 = sub_18E62A1F8();
      v24 = sub_18E61173C(v22, v23, &v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      if (v14)
      {
        v25 = [v16 description];
        v26 = sub_18E65F900();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v29 = sub_18E61173C(v26, v28, &v31);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_18E60F000, v18, v19, format, v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v21, -1, -1);
      MEMORY[0x193AD1140](v20, -1, -1);
    }

    a5(v14);
  }
}

void sub_18E634304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene;
  v5 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (v5)
  {
    v6 = [v5 clientSettings];
    if (v6)
    {
      v7 = v6;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        ObjectType = swift_getObjectType();
        v9 = sub_18E65D628(ObjectType);

        goto LABEL_8;
      }
    }
  }

  v9 = 0;
LABEL_8:
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v10 = sub_18E65F6E0();
  __swift_project_value_buffer(v10, qword_1ED764D68);
  v11 = v3;
  v12 = sub_18E65F6C0();
  v13 = sub_18E65FA40();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136446210;
    v16 = sub_18E62A1F8();
    v18 = sub_18E61173C(v16, v17, v49);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_18E60F000, v12, v13, "[%{public}s] ClientSetting[archiveContentReady] did change to YES.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x193AD1140](v15, -1, -1);
    MEMORY[0x193AD1140](v14, -1, -1);
  }

  v19 = *&v3[v4];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = [v19 clientSettings];
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = v20;
  v22 = swift_dynamicCastObjCProtocolConditional();
  if (!v22)
  {

LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  v23 = [v22 resolvedMetrics];

LABEL_18:
  v24 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
  swift_beginAccess();
  v25 = *&v11[v24];
  *&v11[v24] = v23;
  v26 = v23;

  v27 = BSDispatchQueueAssertMain();
  sub_18E62EB30(v27);

  v28 = *&v3[v4];
  if (v28)
  {
    v28 = [v28 clientSettings];
    if (v28)
    {
      v29 = v28;
      v30 = swift_dynamicCastObjCProtocolConditional();
      if (v30)
      {
        v31 = swift_getObjectType();
        v30 = sub_18E65D634(v31);
      }

      v28 = v30;
    }
  }

  sub_18E62975C(v28);
  v32 = *&v3[v4];
  if (v32)
  {
    v32 = [v32 clientSettings];
    if (v32)
    {
      v33 = v32;
      v34 = swift_dynamicCastObjCProtocolConditional();
      if (v34)
      {
        v35 = swift_getObjectType();
        v34 = sub_18E65D640(v35);
      }

      v32 = v34;
    }
  }

  sub_18E6297BC(v32);
  v36 = *&v3[v4];
  if (v36)
  {
    v37 = [v36 clientSettings];
    if (v37)
    {
      v38 = v37;
      v39 = swift_dynamicCastObjCProtocolConditional();
      if (!v39)
      {

        if (v9)
        {
          goto LABEL_34;
        }

LABEL_40:

        return;
      }

      v40 = [v39 activityHostTouchRestrictedRects];

      if (v40)
      {
        type metadata accessor for CGRect(0);
        v41 = sub_18E65F9A0();

        v42 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
        swift_beginAccess();
        *&v11[v42] = v41;
      }
    }
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v43 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReadyBlocks;
  swift_beginAccess();
  v44 = *&v11[v43];
  v45 = *(v44 + 16);
  if (v45)
  {

    v46 = v44 + 40;
    do
    {
      v47 = *(v46 - 8);

      v47(v48);

      v46 += 16;
      --v45;
    }

    while (v45);
  }

  *&v11[v43] = MEMORY[0x1E69E7CC0];
}

void sub_18E63478C(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v5 = sub_18E65F6E0();
    __swift_project_value_buffer(v5, qword_1ED764D68);
    v6 = v2;
    v7 = v4;
    v8 = sub_18E65F6C0();
    v9 = sub_18E65FA40();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32[0] = v11;
      *v10 = 136446466;
      v12 = sub_18E62A1F8();
      v14 = sub_18E61173C(v12, v13, v32);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      if (v2)
      {
        v15 = [v6 description];
        v16 = sub_18E65F900();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v32[3] = v16;
      v32[4] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC89FF0, &qword_18E6649C0);
      v19 = sub_18E65F910();
      v21 = sub_18E61173C(v19, v20, v32);

      *(v10 + 14) = v21;
      _os_log_impl(&dword_18E60F000, v8, v9, "[%{public}s] ClientSetting[resolvedMetrics] did change to %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v11, -1, -1);
      MEMORY[0x193AD1140](v10, -1, -1);
    }

    v22 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics;
    swift_beginAccess();
    v23 = *&v7[v22];
    *&v7[v22] = v2;
    v24 = v6;

    v25 = BSDispatchQueueAssertMain();
    sub_18E62EB30(v25);
    if (*&v7[v22])
    {
      v26 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForInitialContentSizeReadyBlocks;
      swift_beginAccess();
      v27 = *&v7[v26];
      v28 = *(v27 + 16);
      if (v28)
      {

        v29 = v27 + 40;
        do
        {
          v30 = *(v29 - 8);

          v30(v31);

          v29 += 16;
          --v28;
        }

        while (v28);
      }

      *&v7[v26] = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }
  }
}

void sub_18E634A7C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 activityHostTouchRestrictedRects];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CGRect(0);
    v5 = sub_18E65F9A0();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_18E634AEC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for CGRect(0);
    v3 = sub_18E65F990();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setActivityHostTouchRestrictedRects_];
}

void sub_18E634B64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = qword_1ED764D60;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_18E65F6E0();
      __swift_project_value_buffer(v6, qword_1ED764D68);

      v7 = v4;
      v8 = sub_18E65F6C0();
      v9 = sub_18E65FA40();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20[0] = v11;
        *v10 = 136446466;
        v12 = sub_18E62A1F8();
        v14 = sub_18E61173C(v12, v13, v20);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2082;
        type metadata accessor for CGRect(0);
        v16 = MEMORY[0x193AD01E0](v2, v15);
        v18 = sub_18E61173C(v16, v17, v20);

        *(v10 + 14) = v18;
        _os_log_impl(&dword_18E60F000, v8, v9, "[%{public}s] ClientSetting[touchRestrictedRects] did change to %{public}s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AD1140](v11, -1, -1);
        MEMORY[0x193AD1140](v10, -1, -1);
      }

      v19 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects;
      swift_beginAccess();
      *&v7[v19] = v2;
    }

    else
    {
    }
  }
}

void sub_18E634D84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v4)
    {
      v5 = [v4 clientSettings];
      if (v5)
      {
        v6 = v5;
        v20[3] = &unk_1F01BC4E0;
        if (!swift_dynamicCastObjCProtocolConditional())
        {

          goto LABEL_7;
        }

        ObjectType = swift_getObjectType();
        v8 = sub_18E65D71C(ObjectType);

        if (v8 != 2)
        {
          if (qword_1ED764D60 != -1)
          {
            swift_once();
          }

          v9 = sub_18E65F6E0();
          __swift_project_value_buffer(v9, qword_1ED764D68);
          v6 = v3;
          v10 = sub_18E65F6C0();
          v11 = sub_18E65FA40();

          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            v13 = swift_slowAlloc();
            v20[0] = v13;
            *v12 = 136446466;
            v14 = sub_18E62A1F8();
            v16 = sub_18E61173C(v14, v15, v20);

            *(v12 + 4) = v16;
            *(v12 + 12) = 1026;
            v17 = v8 & 1;
            *(v12 + 14) = v8 & 1;
            _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] ClientSetting[DisableIdleTimer] did change to %{BOOL,public}d", v12, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v13);
            MEMORY[0x193AD1140](v13, -1, -1);
            MEMORY[0x193AD1140](v12, -1, -1);
          }

          else
          {

            v17 = v8 & 1;
          }

          v18 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled;
          swift_beginAccess();
          v6[v18] = v17;
          BSDispatchQueueAssertMain();
          swift_beginAccess();
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            [v19 activityHostViewControllerWithViewController:v6 didSetIdleTimerDisabled:v6[v18]];
            swift_unknownObjectRelease();
          }

          goto LABEL_7;
        }
      }
    }

    v6 = v3;
LABEL_7:
  }
}

void sub_18E635004(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 audioCategoriesDisablingVolumeHUD];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E65F9A0();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_18E63506C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v5 = sub_18E65F6E0();
    __swift_project_value_buffer(v5, qword_1ED764D68);

    v6 = v4;
    v7 = sub_18E65F6C0();
    v8 = sub_18E65FA40();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19[0] = v10;
      *v9 = 136446466;
      v11 = sub_18E62A1F8();
      v13 = sub_18E61173C(v11, v12, v19);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89FE8, &qword_18E6649B8);
      v14 = sub_18E65F910();
      v16 = sub_18E61173C(v14, v15, v19);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_18E60F000, v7, v8, "[%{public}s] ClientSetting[audioCategoriesDisablingVolumeHUD] did change to: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v10, -1, -1);
      MEMORY[0x193AD1140](v9, -1, -1);
    }

    v17 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD;
    swift_beginAccess();
    *&v6[v17] = v2;

    BSDispatchQueueAssertMain();
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      [v18 activityHostViewControllerAudioCategoriesDisablingVolumeHUDDidChangeWithViewController_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_18E6352E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = [v4 clientSettings];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if (!swift_dynamicCastObjCProtocolConditional())
  {

LABEL_7:
    v7 = 2;
    goto LABEL_8;
  }

  swift_getObjectType();
  sub_18E65D728(v23);

  v7 = LOBYTE(v23[0]);
LABEL_8:
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v8 = sub_18E65F6E0();
  __swift_project_value_buffer(v8, qword_1ED764D68);
  v9 = v3;
  v10 = sub_18E65F6C0();
  v11 = sub_18E65FA40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136446466;
    v14 = sub_18E62A1F8();
    v16 = sub_18E61173C(v14, v15, v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v17 = 0x6C6C616D73;
    if (v7)
    {
      v17 = 0x6D756964656DLL;
    }

    v18 = 0xE500000000000000;
    if (v7)
    {
      v18 = 0xE600000000000000;
    }

    if (v7 == 2)
    {
      v19 = 7104878;
    }

    else
    {
      v19 = v17;
    }

    if (v7 == 2)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = v18;
    }

    v21 = sub_18E61173C(v19, v20, v23);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] ClientSetting[ArchivedActivityFamily] did change to %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AD1140](v13, -1, -1);
    MEMORY[0x193AD1140](v12, -1, -1);
  }

  v22 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily;
  swift_beginAccess();
  *(v9 + v22) = v7;
}

void sub_18E635564(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v4 && (v5 = [v4 clientSettings]) != 0)
    {
      v6 = v5;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        ObjectType = swift_getObjectType();
        v8 = sub_18E65D7C4(ObjectType);
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 2;
    }

    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v9 = sub_18E65F6E0();
    __swift_project_value_buffer(v9, qword_1ED764D68);
    v10 = v3;
    v11 = sub_18E65F6C0();
    v12 = sub_18E65FA40();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31[0] = v14;
      *v13 = 136446466;
      v15 = sub_18E62A1F8();
      v17 = sub_18E61173C(v15, v16, v31);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = 1702195828;
      if ((v8 & 1) == 0)
      {
        v18 = 0x65736C6166;
      }

      v19 = 0xE500000000000000;
      if (v8)
      {
        v19 = 0xE400000000000000;
      }

      if (v8 == 2)
      {
        v20 = 7104878;
      }

      else
      {
        v20 = v18;
      }

      if (v8 == 2)
      {
        v21 = 0xE300000000000000;
      }

      else
      {
        v21 = v19;
      }

      v22 = sub_18E61173C(v20, v21, v31);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_18E60F000, v11, v12, "[%{public}s] ClientSetting[baseContentTouchedDown] did change to %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v14, -1, -1);
      MEMORY[0x193AD1140](v13, -1, -1);
    }

    v23 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_baseContentTouchedDown;
    swift_beginAccess();
    v24 = v8 & 1;
    *(v10 + v23) = v24;
    v25 = type metadata accessor for ActivityTouchEvent();
    v26 = objc_allocWithZone(v25);
    v26[OBJC_IVAR____TtC18ActivityUIServices18ActivityTouchEvent_baseContentTouchedDown] = v24;
    v30.receiver = v26;
    v30.super_class = v25;
    v27 = objc_msgSendSuper2(&v30, sel_init);
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      if ([v28 respondsToSelector_])
      {
        [v29 activityHostViewControllerWithViewController:v10 receivedTouchEvent:v27];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_18E635894(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4, uint64_t *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene);
    if (v10 && (v11 = [v10 clientSettings]) != 0)
    {
      v12 = v11;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        ObjectType = swift_getObjectType();
        v14 = a3(ObjectType);
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 2;
    }

    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v15 = sub_18E65F6E0();
    __swift_project_value_buffer(v15, qword_1ED764D68);
    v16 = v9;
    v17 = sub_18E65F6C0();
    v18 = sub_18E65FA40();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136446466;
      v21 = sub_18E62A1F8();
      v23 = sub_18E61173C(v21, v22, v30);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = 1702195828;
      if ((v14 & 1) == 0)
      {
        v24 = 0x65736C6166;
      }

      v25 = 0xE500000000000000;
      if (v14)
      {
        v25 = 0xE400000000000000;
      }

      if (v14 == 2)
      {
        v26 = 7104878;
      }

      else
      {
        v26 = v24;
      }

      if (v14 == 2)
      {
        v27 = 0xE300000000000000;
      }

      else
      {
        v27 = v25;
      }

      v28 = sub_18E61173C(v26, v27, v30);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_18E60F000, v17, v18, a4, v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v20, -1, -1);
      MEMORY[0x193AD1140](v19, -1, -1);
    }

    v29 = *a5;
    swift_beginAccess();
    *(v16 + v29) = v14 & 1;
  }
}

void sub_18E635B2C(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = a1;
  BSDispatchQueueAssertMain();
  if (v4 == 3)
  {
    BSDispatchQueueAssertMain();
    v20 = *&a2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView];
    if (v20)
    {
      v21 = 1.0;
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v5 = sub_18E65F6E0();
    __swift_project_value_buffer(v5, qword_1ED764D68);
    v6 = a2;
    v7 = sub_18E65F6C0();
    v8 = sub_18E65FA50();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v9 = 136446466;
      v12 = sub_18E62A1F8();
      v14 = sub_18E61173C(v12, v13, &v24);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2114;
      sub_18E63CBC4(v15, v16, v17);
      swift_allocError();
      *v18 = v3;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v19;
      *v10 = v19;
      _os_log_impl(&dword_18E60F000, v7, v8, "[%{public}s] Snapshot failed so backgrounding scene without updated snapshot: %{public}@", v9, 0x16u);
      sub_18E63CCD8(v10);
      MEMORY[0x193AD1140](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x193AD1140](v11, -1, -1);
      MEMORY[0x193AD1140](v9, -1, -1);
    }

    BSDispatchQueueAssertMain();
    v20 = *&v6[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView];
    if (v20)
    {
      v21 = 0.0;
LABEL_10:
      v22 = v3 != 3;
      v23 = v20;
      [v23 setAlpha_];
      [v23 setHidden_];
    }
  }

  sub_18E62D730(0, 0, 0);
}

void sub_18E635D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion];
    *&Strong[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion] = 0;
  }
}

void sub_18E635DE8(void *a1, uint64_t a2, char a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 setForeground_];
    if (a3)
    {
      [v6 setDeactivationReasons_];
    }
  }
}

void sub_18E635E98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

void sub_18E635F04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_18E635F7C(void *a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
  swift_beginAccess();
  v7 = (*(a2 + v6) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
  v8 = *v7;
  v9 = v7[1];

  MEMORY[0x193AD0160](v8, v9);

  MEMORY[0x193AD0160](58, 0xE100000000000000);
  v20 = sub_18E65FF60();
  v21 = v10;
  v19 = sub_18E63CDCC(v20, v10, v11);
  v18 = MEMORY[0x1E69E6158];
  v12 = sub_18E65FB50();
  v14 = v13;

  MEMORY[0x193AD0160](v12, v14);

  v15 = sub_18E65F8F0();

  [a1 setIdentifier_];

  v16 = [a1 setClientIdentity_];
  v17 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x558))(v16);
  [a1 setSpecification_];
}

uint64_t sub_18E6361B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_18E63620C(void *a1)
{
  [a1 setPresentedLayerTypes_];
  [a1 setAppearanceStyle_];
  [a1 setBackgroundColorWhileHosting_];
  [a1 setBackgroundColorWhileNotHosting_];
  [a1 setInheritsSecurity_];

  return [a1 setResizesHostedContext_];
}

void sub_18E6362AC(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_18E63CDBC;
  *(v5 + 24) = v4;
  v8[4] = sub_18E63CDC4;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18E6150BC;
  v8[3] = &block_descriptor_353;
  v6 = _Block_copy(v8);
  v7 = a2;

  [a1 updateClientSettingsWithBlock_];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_18E636404(void *a1, uint64_t a2)
{
  v4 = sub_18E65F500();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18E65F4C0();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &unk_1F01BC4E0;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (v10)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor;
    swift_beginAccess();
    v14 = *(a2 + v13);
    v15 = v14;
    v16 = a1;
    v29 = ObjectType;
    v30 = v16;
    v28 = v11;
    sub_18E65D840(v14, ObjectType);
    v17 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor;
    swift_beginAccess();
    v18 = *(a2 + v17);
    v19 = v18;
    sub_18E65D8A0(v18, ObjectType);
    v20 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
    swift_beginAccess();
    v21 = *(a2 + v20);
    v25 = v4;
    v22 = v32;
    v27 = *(v32 + 16);
    v27(v9, v21 + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v7);
    sub_18E65F4A0();
    v23 = *(v22 + 8);
    v32 = v22 + 8;
    v26 = v23;
    v23(v9, v7);
    LOBYTE(v18) = sub_18E65F4E0();
    v31 = *(v31 + 8);
    (v31)(v6, v4);
    v24 = v29;
    sub_18E65DA34(v18 & 1, v29);
    v27(v9, *(a2 + v20) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v7);
    sub_18E65F4A0();
    v26(v9, v7);
    LOBYTE(v18) = sub_18E65F4F0();
    (v31)(v6, v25);
    sub_18E65DA40(v18 & 1, v24);
  }
}

void sub_18E636734(void *a1, uint64_t a2, double *a3, void *a4, void *a5, char a6, void *a7, uint64_t a8)
{
  v14 = sub_18E65F4C0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSRectWithSize();
  [a1 setFrame_];
  [a1 setInterfaceOrientation_];
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = [objc_opt_self() mainConfiguration];
  }

  v19 = a5;
  [a1 setDisplayConfiguration_];

  [a1 setForeground_];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = a1;
    v23 = [a7 traitCollection];
    v24 = [v23 userInterfaceStyle];

    [v21 setUserInterfaceStyle_];
    [v21 setDeactivationReasons_];
  }

  v36 = &unk_1F01BC110;
  v25 = swift_dynamicCastObjCProtocolConditional();
  if (v25)
  {
    v26 = v25;
    swift_getObjectType();
    (*((*MEMORY[0x1E69E7D40] & *a7) + 0x560))();
    v35 = a1;
    v27 = sub_18E65F8F0();

    [v26 setActivityHostIdentifier_];

    v28 = a8;
    v29 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
    swift_beginAccess();

    v30 = sub_18E65F8F0();

    [v26 setActivityIdentifier_];

    [v26 setActivityMetrics_];
    v31 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_systemProvidedMetrics;
    swift_beginAccess();
    [v26 setMetricsRequest_];
    (*(v15 + 16))(v17, *(a7 + v29) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor, v14);
    sub_18E63E528(v17);
    if (*(*(a7 + v29) + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID + 8))
    {

      v32 = sub_18E65F8F0();
    }

    else
    {
      v32 = 0;
    }

    [v26 setPayloadID_];

    v33 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents;
    swift_beginAccess();
    sub_18E63E4B8(*(a7 + v33));
  }
}

void sub_18E636B4C(char *a1, double a2, double a3)
{
  *&v28[2] = a2;
  *&v28[3] = a3;
  v28[4] = a1;
  BSDispatchQueueAssertMain();
  v6 = *&a1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v6 && (v7 = swift_allocObject(), *(v7 + 16) = sub_18E63CC70, *(v7 + 24) = v28, v8 = swift_allocObject(), *(v8 + 16) = sub_18E63D34C, *(v8 + 24) = v7, v33 = sub_18E63D34C, v34 = v8, aBlock = MEMORY[0x1E69E9820], v30 = 1107296256, v31 = sub_18E635E98, v32 = &block_descriptor_291, v9 = _Block_copy(&aBlock), v10 = v6, , , [v10 performUpdate_], v10, _Block_release(v9), LOBYTE(v9) = swift_isEscapingClosureAtFileLocation(), , , (v9 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v11 = sub_18E65F6E0();
    __swift_project_value_buffer(v11, qword_1ED764D68);
    v12 = a1;
    v13 = sub_18E65F6C0();
    v14 = sub_18E65FA60();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136446722;
      v17 = sub_18E62A1F8();
      v19 = sub_18E61173C(v17, v18, &v35);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      aBlock = a2;
      v30 = *&a3;
      type metadata accessor for CGSize(0);
      v20 = sub_18E65F910();
      v22 = sub_18E61173C(v20, v21, &v35);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2082;
      [v12 preferredContentSize];
      aBlock = v23;
      v30 = v24;
      v25 = sub_18E65F910();
      v27 = sub_18E61173C(v25, v26, &v35);

      *(v15 + 24) = v27;
      _os_log_impl(&dword_18E60F000, v13, v14, "[%{public}s] Updating preferred content size with requested size: %{public}s, current size: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v16, -1, -1);
      MEMORY[0x193AD1140](v15, -1, -1);
    }

    [v12 setPreferredContentSize_];
  }
}

void sub_18E636EC8(void *a1, void *a2, void *a3, double a4, double a5)
{
  BSRectWithSize();
  [a1 setFrame_];
  v8 = [a3 view];
  if (!v8)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [v8 layer];

  v11 = [v10 presentationLayer];
  if (v11)
  {
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v13 = 0.0;
    v15 = 0.0;
    v17 = 0.0;
    v19 = 0.0;
  }

  v20 = [a3 view];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [a3 view];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  v24 = [v22 window];

  [v21 convertRect:v24 toView:{v13, v15, v17, v19}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v43.origin.x = v26;
  v43.origin.y = v28;
  v43.size.width = v30;
  v43.size.height = v32;
  if (CGRectGetMinY(v43) <= 0.0 || (v44.origin.x = v13, v44.origin.y = v15, v44.size.width = v17, v44.size.height = v19, CGRectIsEmpty(v44)))
  {
    v33 = 0;
  }

  else
  {
    v38 = [a3 view];
    if (!v38)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v39 = v38;
    v40 = [v38 window];

    v33 = [v40 windowScene];
    if (v33)
    {

      v33 = [objc_opt_self() settingsWithMass:1.0 stiffness:145.0 damping:22.0];
    }
  }

  [a2 setAnimationSettings_];

  v34 = [a3 view];
  if (!v34)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = v34;
  v36 = [v34 window];

  if (v36)
  {
    v37 = [v36 windowScene];

    if (v37)
    {
      v41 = [v37 _synchronizedDrawingFence];

      if (v41)
      {
        [a2 setAnimationFence_];
      }
    }
  }
}

uint64_t sub_18E637240(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_18E63A3BC(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_18E63A3BC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_18E63B3CC(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_18E637338(void *a1, void *a2, const char *a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v7 = sub_18E65F6E0();
    __swift_project_value_buffer(v7, qword_1ED764D68);
    v8 = a1;
    v9 = a2;
    v10 = sub_18E65F6C0();
    v11 = sub_18E65FA60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446466;
      v14 = sub_18E62A1F8();
      v16 = sub_18E61173C(v14, v15, &v20);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      swift_getErrorValue();
      v17 = sub_18E65FE40();
      v19 = sub_18E61173C(v17, v18, &v20);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_18E60F000, v10, v11, a3, v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v13, -1, -1);
      MEMORY[0x193AD1140](v12, -1, -1);
    }

    else
    {
    }
  }
}

double sub_18E63753C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_18E637580(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v9 = sub_18E65F6E0();
    __swift_project_value_buffer(v9, qword_1ED764D68);
    v10 = a3;
    v11 = sub_18E65F6C0();
    v12 = sub_18E65FA50();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v13 = 136446466;
      v14 = sub_18E62A1F8();
      v16 = sub_18E61173C(v14, v15, &aBlock);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      sub_18E63CBC4(v17, v18, v19);
      v20 = sub_18E65FDC0();
      if (!v20)
      {
        v20 = swift_allocError();
        *v21 = a1;
      }

      v22 = v20;
      v23 = sub_18E65F350();

      v24 = [v23 localizedDescription];
      v25 = sub_18E65F900();
      v27 = v26;

      v28 = sub_18E61173C(v25, v27, &aBlock);

      *(v13 + 14) = v28;
      _os_log_impl(&dword_18E60F000, v11, v12, "[%{public}s] Snapshot failed - %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v33, -1, -1);
      MEMORY[0x193AD1140](v13, -1, -1);
    }

    v29 = swift_allocObject();
    *(v29 + 16) = a4;
    *(v29 + 24) = a5;
    *(v29 + 32) = a1;
    v38 = sub_18E63CB94;
    v39 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_18E63D350;
    v37 = &block_descriptor_262;
    v30 = _Block_copy(&aBlock);
  }

  else
  {
    v31 = swift_allocObject();
    v31[2] = a3;
    v31[3] = a1;
    v31[4] = a4;
    v31[5] = a5;
    v38 = sub_18E63CC18;
    v39 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_18E63D350;
    v37 = &block_descriptor_268;
    v30 = _Block_copy(&aBlock);
    v32 = a3;
    sub_18E63CC24(a1, 0);
  }

  BSDispatchMain();
  _Block_release(v30);
}

void sub_18E6378FC(char *a1, void *a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode] == 2)
  {
    v21[11] = v3;
    v22 = v4;
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v8 = sub_18E65F6E0();
    __swift_project_value_buffer(v8, qword_1ED764D68);
    v9 = a1;
    v10 = sub_18E65F6C0();
    v11 = sub_18E65FA60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136446210;
      v14 = sub_18E62A1F8();
      v16 = sub_18E61173C(v14, v15, v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] Snapshot success - Updating layer.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x193AD1140](v13, -1, -1);
      MEMORY[0x193AD1140](v12, -1, -1);
    }

    v17 = [a2 IOSurface];
    if (!v17)
    {
      v17 = [a2 fallbackIOSurface];
    }

    v20 = v17;
    v18 = *&v9[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView];
    if (v18)
    {
      v19 = [v18 layer];
      [v19 setContents_];
    }

    a3(3);
  }
}

unint64_t sub_18E637B30()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

id ActivityHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_18E65F8F0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void ActivityHostViewController.sceneDidDeactivate(_:withError:)(void *a1, id a2)
{
  v3 = v2;
  v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated] = 0;
  if (!a2)
  {
    if (qword_1ED764D60 != -1)
    {
      swift_once();
    }

    v20 = sub_18E65F6E0();
    __swift_project_value_buffer(v20, qword_1ED764D68);
    v21 = v2;
    v10 = sub_18E65F6C0();
    v22 = sub_18E65FA40();

    if (os_log_type_enabled(v10, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446210;
      v25 = sub_18E62A1F8();
      v27 = sub_18E61173C(v25, v26, &aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_18E60F000, v10, v22, "[%{public}s] Scene did deactivate.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x193AD1140](v24, -1, -1);
      MEMORY[0x193AD1140](v23, -1, -1);
    }

    goto LABEL_10;
  }

  v6 = a2;
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v7 = sub_18E65F6E0();
  __swift_project_value_buffer(v7, qword_1ED764D68);
  v8 = a2;
  v9 = v2;
  v10 = sub_18E65F6C0();
  v11 = sub_18E65FA40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446466;
    v14 = sub_18E62A1F8();
    v16 = sub_18E61173C(v14, v15, &aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    swift_getErrorValue();
    v17 = sub_18E65FE40();
    v19 = sub_18E61173C(v17, v18, &aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_18E60F000, v10, v11, "[%{public}s] Scene did deactivate with error: %{public}s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AD1140](v13, -1, -1);
    MEMORY[0x193AD1140](v12, -1, -1);

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  v28 = *&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene];
  if (v28)
  {
    v29 = v28;
    if (sub_18E63BADC(a2))
    {
      v30 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout;
      if (*&v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout] == 10)
      {
        v31 = v29;
        v32 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activitySceneDescriptor;
        swift_beginAccess();
        v33 = (*&v3[v32] + OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier);
        v35 = *v33;
        v34 = v33[1];
        v36 = qword_1ED764D60;

        if (v36 != -1)
        {
          swift_once();
        }

        v37 = sub_18E65F6E0();
        __swift_project_value_buffer(v37, qword_1ED764D68);
        v38 = v3;

        v39 = sub_18E65F6C0();
        v40 = sub_18E65FA60();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v98 = v42;
          *v41 = 136447234;
          v43 = sub_18E62A1F8();
          v45 = sub_18E61173C(v43, v44, &v98);

          *(v41 + 4) = v45;
          *(v41 + 12) = 2082;
          *(v41 + 14) = sub_18E61173C(*&v38[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource], *&v38[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource + 8], &v98);
          *(v41 + 22) = 2050;
          *(v41 + 24) = 10;
          *(v41 + 32) = 2050;
          *(v41 + 34) = 0x4014000000000000;
          *(v41 + 42) = 2082;
          *(v41 + 44) = sub_18E61173C(v35, v34, &v98);
          _os_log_impl(&dword_18E60F000, v39, v40, "[%{public}s] %{public}s exited %{public}ld times within %{public}f seconds, ending the session: %{public}s", v41, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x193AD1140](v42, -1, -1);
          MEMORY[0x193AD1140](v41, -1, -1);
        }

        sub_18E65F530();
        sub_18E65F520();
        sub_18E65F510();

        return;
      }

      if (qword_1ED764D60 != -1)
      {
        swift_once();
      }

      v57 = sub_18E65F6E0();
      __swift_project_value_buffer(v57, qword_1ED764D68);
      v58 = a2;
      v59 = v2;
      v60 = sub_18E65F6C0();
      v61 = sub_18E65FA60();

      if (os_log_type_enabled(v60, v61))
      {
        v97 = v29;
        v62 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        aBlock = v96;
        *v62 = 136447234;
        v63 = sub_18E62A1F8();
        v65 = sub_18E61173C(v63, v64, &aBlock);

        *(v62 + 4) = v65;
        *(v62 + 12) = 2082;
        *(v62 + 14) = sub_18E61173C(*&v59[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource], *&v59[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_processResource + 8], &aBlock);
        *(v62 + 22) = 2050;
        *(v62 + 24) = 0x4014000000000000;
        *(v62 + 32) = 2080;
        v98 = a2;
        v66 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC89F60, &qword_18E664508);
        v67 = sub_18E65F910();
        v69 = sub_18E61173C(v67, v68, &aBlock);

        *(v62 + 34) = v69;
        *(v62 + 42) = 2080;
        v98 = *&v2[v30];
        v70 = sub_18E65FDB0();
        v72 = sub_18E61173C(v70, v71, &aBlock);

        *(v62 + 44) = v72;
        _os_log_impl(&dword_18E60F000, v60, v61, "[%{public}s] %{public}s exited within %{public}f seconds with error: %s, sceneClientExitCountWithinTimeout: %s", v62, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x193AD1140](v96, -1, -1);
        v73 = v62;
        v29 = v97;
        MEMORY[0x193AD1140](v73, -1, -1);
      }

      v74 = *&v2[v30];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        __break(1u);
        goto LABEL_40;
      }

      *&v2[v30] = v76;
      v77 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer;
      if (!*&v59[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer])
      {
        v78 = objc_allocWithZone(MEMORY[0x1E698E5E8]);
        v79 = sub_18E65F8F0();
        v80 = [v78 initWithIdentifier_];

        v81 = *&v59[v77];
        *&v59[v77] = v80;
        v82 = v80;

        if (v82)
        {
          sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
          v83 = sub_18E65FAA0();
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v103 = sub_18E63BF78;
          v104 = v84;
          aBlock = MEMORY[0x1E69E9820];
          v100 = 1107296256;
          v101 = sub_18E61D9D8;
          v102 = &block_descriptor_113;
          v85 = _Block_copy(&aBlock);

          [v82 scheduleWithFireInterval:v83 leewayInterval:v85 queue:5.0 handler:0.0];
          _Block_release(v85);
        }
      }
    }

    sub_18E623B78(0, &qword_1ED764CC0, 0x1E69E58C0);
    if ((sub_18E65FB20() & 1) == 0)
    {
LABEL_38:

      return;
    }

    v86 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer;
    if (*&v3[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer])
    {
LABEL_37:

      sub_18E625440();

      goto LABEL_38;
    }

    aBlock = 0;
    v100 = 0xE000000000000000;
    sub_18E65FC70();

    aBlock = 0xD00000000000001BLL;
    v100 = 0x800000018E668B50;
    v87 = sub_18E62A1F8();
    MEMORY[0x193AD0160](v87);

    v88 = aBlock;
    v89 = v100;
    sub_18E623B78(0, &qword_1ED764D10, 0x1E69E9610);
    v90 = sub_18E65FAA0();
    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = a1;
    type metadata accessor for BackOffTimer();
    v93 = swift_allocObject();
    *(v93 + 64) = v92;
    *(v93 + 72) = 0;
    *(v93 + 16) = 0;
    *(v93 + 24) = 0;
    *(v93 + 80) = 1;
    *(v93 + 88) = 0;
    *(v93 + 32) = v88;
    *(v93 + 40) = v89;
    *(v93 + 48) = v90;
    *(v93 + 56) = sub_18E63BF70;
    *&v3[v86] = v93;
    v94 = a1;

    v95 = *&v3[v86];
    if (v95)
    {
      *(v95 + 72) = 0x4046800000000000;
      *(v95 + 80) = 0;
      goto LABEL_37;
    }

LABEL_40:
    __break(1u);
    return;
  }

  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v46 = sub_18E65F6E0();
  __swift_project_value_buffer(v46, qword_1ED764D68);
  v47 = a1;
  v48 = sub_18E65F6C0();
  v49 = sub_18E65FA50();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock = v51;
    *v50 = 136315138;
    v52 = [v47 identifier];
    v53 = sub_18E65F900();
    v55 = v54;

    v56 = sub_18E61173C(v53, v55, &aBlock);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_18E60F000, v48, v49, "No activity scene found: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x193AD1140](v51, -1, -1);
    MEMORY[0x193AD1140](v50, -1, -1);
  }
}

void sub_18E6388B0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout) = 0;
    v4 = Strong;
    [a1 invalidate];
    v5 = *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer];
    *&v4[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer] = 0;
  }
}

void sub_18E638934(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 settings];
    v6 = [v5 isForeground];

    if ((*(v4 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated) & 1) == 0 && v6)
    {
      if (qword_1ED764D60 != -1)
      {
        swift_once();
      }

      v7 = sub_18E65F6E0();
      __swift_project_value_buffer(v7, qword_1ED764D68);
      v8 = v4;
      v9 = sub_18E65F6C0();
      v10 = sub_18E65FA60();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16 = v12;
        *v11 = 136446210;
        v13 = sub_18E62A1F8();
        v15 = sub_18E61173C(v13, v14, &v16);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_18E60F000, v9, v10, "[%{public}s] Scene did deactivate but was foreground - reactivating.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x193AD1140](v12, -1, -1);
        MEMORY[0x193AD1140](v11, -1, -1);
      }

      [a2 activateWithTransitionContext_];
    }
  }
}

void ActivityHostViewController.sceneContentStateDidChange(_:)(void *a1)
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v3 = sub_18E65F6E0();
  __swift_project_value_buffer(v3, qword_1ED764D68);
  v4 = v1;
  v5 = a1;
  oslog = sub_18E65F6C0();
  v6 = sub_18E65FA60();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    v9 = sub_18E62A1F8();
    v11 = sub_18E61173C(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    [v5 contentState];
    type metadata accessor for FBSceneContentState(0);
    v12 = sub_18E65F910();
    v14 = sub_18E61173C(v12, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_18E60F000, oslog, v6, "[%{public}s] Content state changed: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AD1140](v8, -1, -1);
    MEMORY[0x193AD1140](v7, -1, -1);
  }

  else
  {
  }
}

void ActivityHostViewController.scene(_:didReceive:)(int64_t a1, uint64_t a2)
{
  if (qword_1ED764D60 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v5 = sub_18E65F6E0();
    v6 = __swift_project_value_buffer(v5, qword_1ED764D68);
    v7 = v2;

    v2 = v6;
    v8 = sub_18E65F6C0();
    v9 = sub_18E65FA60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v86[0] = v11;
      *v10 = 136446467;
      v12 = sub_18E62A1F8();
      v14 = v7;
      v15 = sub_18E61173C(v12, v13, v86);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2081;
      sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      sub_18E63B6CC();
      v16 = sub_18E65FA10();
      v2 = v17;
      v18 = sub_18E61173C(v16, v17, v86);

      *(v10 + 14) = v18;
      v7 = v14;
      _os_log_impl(&dword_18E60F000, v8, v9, "[%{public}s] Scene did receive actions: %{private}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AD1140](v11, -1, -1);
      MEMORY[0x193AD1140](v10, -1, -1);
    }

    if (*(v7 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated))
    {
      return;
    }

    v76 = v6;
    v77 = a1;
    v85[0] = MEMORY[0x1E69E7CD0];
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_18E65FBB0();
      v2 = sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      sub_18E63B6CC();
      sub_18E65FA20();
      a2 = v85[1];
      v20 = v85[2];
      v21 = v85[3];
      v22 = v85[4];
      v23 = v85[5];
    }

    else
    {
      v24 = -1 << *(a2 + 32);
      v20 = a2 + 56;
      v21 = ~v24;
      v25 = -v24;
      v26 = v25 < 64 ? ~(-1 << v25) : -1;
      v23 = v26 & *(a2 + 56);

      v22 = 0;
    }

    a1 = (v21 + 64) >> 6;
    v27 = 0x1EAC89000uLL;
    *&v19 = 136446466;
    v75 = v19;
    v78 = v20;
    v79 = a2;
    v80 = a1;
    v81 = v7;
    if (a2 < 0)
    {
      break;
    }

    while (1)
    {
LABEL_15:
      v31 = v22;
      v32 = v23;
      for (i = v22; !v32; ++v31)
      {
        i = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_73;
        }

        if (i >= a1)
        {
          goto LABEL_70;
        }

        v32 = *(v20 + 8 * i);
      }

      v30 = (v32 - 1) & v32;
      v28 = *(*(a2 + 48) + ((i << 9) | (8 * __clz(__rbit64(v32)))));
      if (!v28)
      {
        goto LABEL_70;
      }

LABEL_20:
      v82 = v30;
      objc_opt_self();
      v83 = v28;
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v2 = v33;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          break;
        }
      }

      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v43 = v42;
        v44 = [v42 command];
        if (v44 == 3)
        {
          v27 = 0x1EAC89000uLL;
          v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_delegate;
          swift_beginAccess();
          v46 = swift_unknownObjectWeakLoadStrong();
          v45 = v28;
          if (!v46)
          {
            goto LABEL_41;
          }

          v47 = sel_activityHostViewControllerSignificantUserInteractionEndedWithViewController_;
        }

        else
        {
          v45 = v28;
          if (v44 == 2)
          {
            v27 = 0x1EAC89000uLL;
            v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_delegate;
            swift_beginAccess();
            v46 = swift_unknownObjectWeakLoadStrong();
            if (!v46)
            {
              goto LABEL_41;
            }

            v47 = sel_activityHostViewControllerSignificantUserInteractionBeganWithViewController_;
          }

          else
          {
            if (v44 != 1)
            {
              v50 = v7;
              v51 = v7;
              v52 = v28;
              v2 = v76;
              v53 = sub_18E65F6C0();
              v54 = sub_18E65FA50();

              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                v84 = v56;
                *v55 = v75;
                v57 = sub_18E62A1F8();
                v59 = sub_18E61173C(v57, v58, &v84);

                *(v55 + 4) = v59;
                *(v55 + 12) = 2080;
                [v43 command];
                type metadata accessor for ACUISActivitySceneCommand(0);
                v60 = sub_18E65F910();
                v2 = v61;
                v62 = sub_18E61173C(v60, v61, &v84);

                *(v55 + 14) = v62;
                _os_log_impl(&dword_18E60F000, v53, v54, "[%{public}s] Unknown ACUISActivitySceneAction command: %s", v55, 0x16u);
                swift_arrayDestroy();
                v63 = v56;
                v20 = v78;
                MEMORY[0x193AD1140](v63, -1, -1);
                v64 = v55;
                a2 = v79;
                MEMORY[0x193AD1140](v64, -1, -1);
              }

              else
              {
              }

              v22 = i;
              v23 = v82;
              v7 = v50;
              goto LABEL_67;
            }

            v27 = 0x1EAC89000uLL;
            v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_delegate;
            swift_beginAccess();
            v46 = swift_unknownObjectWeakLoadStrong();
            if (!v46)
            {
LABEL_41:

              goto LABEL_63;
            }

            v47 = sel_activityHostViewControllerHostShouldCancelTouchesWithViewController_;
          }
        }

        v2 = v46;
        [v46 v47];

        swift_unknownObjectRelease();
      }

      else
      {
        v2 = *(v27 + 3592);
        swift_beginAccess();
        v48 = swift_unknownObjectWeakLoadStrong();
        if (!v48)
        {
          goto LABEL_61;
        }

        v49 = v48;
        if (([v48 respondsToSelector_] & 1) == 0)
        {
          goto LABEL_60;
        }

        v2 = [v49 activityHostViewControllerWithViewController:v7 didReceiveAction:v28];
        swift_unknownObjectRelease();
        if (!v2)
        {
          v2 = v85;
          sub_18E63A4EC(&v84, v28);
          v72 = v84;
          goto LABEL_62;
        }
      }

LABEL_63:
      v22 = i;
      v23 = v82;
      if (a2 < 0)
      {
        goto LABEL_12;
      }
    }

    v35 = Strong;
    v36 = [v2 launchActions];
    if (!v36)
    {
      [v35 activityHostViewControllerWithViewController:v7 requestsLaunchWithAction:0];
LABEL_60:
      swift_unknownObjectRelease();
LABEL_61:
      v72 = v83;
LABEL_62:

      goto LABEL_63;
    }

    v37 = v36;
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    v2 = sub_18E63B6CC();
    v38 = sub_18E65FA00();

    if ((v38 & 0xC000000000000001) != 0)
    {
      sub_18E65FBB0();
      sub_18E65FA20();
      v38 = v86[0];
      a2 = v86[1];
      v39 = v86[2];
      v40 = v86[3];
      v41 = v86[4];
    }

    else
    {
      v40 = 0;
      v65 = -1 << *(v38 + 32);
      a2 = v38 + 56;
      v39 = ~v65;
      v66 = -v65;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      else
      {
        v67 = -1;
      }

      v41 = v67 & *(v38 + 56);
    }

    a1 = (v39 + 64) >> 6;
    if (v38 < 0)
    {
LABEL_49:
      v2 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
      if (!sub_18E65FBE0())
      {
        goto LABEL_59;
      }

      swift_dynamicCast();
      v2 = v84;
      v68 = v40;
      v69 = v41;
      if (!v84)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    while (1)
    {
      v70 = v40;
      v71 = v41;
      v68 = v40;
      if (!v41)
      {
        break;
      }

LABEL_56:
      v69 = (v71 - 1) & v71;
      v2 = *(*(v38 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v71)))));
      if (!v2)
      {
LABEL_59:
        sub_18E615B48(v38);
        swift_unknownObjectRelease();

        v22 = i;
        v7 = v81;
        v23 = v82;
        v20 = v78;
        a2 = v79;
LABEL_67:
        a1 = v80;
        v27 = 0x1EAC89000;
        if (a2 < 0)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }

LABEL_57:
      [v35 activityHostViewControllerWithViewController:v81 requestsLaunchWithAction:{v2, v75}];

      v40 = v68;
      v41 = v69;
      if (v38 < 0)
      {
        goto LABEL_49;
      }
    }

    while (1)
    {
      v68 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v68 >= a1)
      {
        goto LABEL_59;
      }

      v71 = *(a2 + 8 * v68);
      ++v70;
      if (v71)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
  }

LABEL_12:
  if (sub_18E65FBE0())
  {
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    swift_dynamicCast();
    v28 = v84;
    i = v22;
    v30 = v23;
    if (v84)
    {
      goto LABEL_20;
    }
  }

LABEL_70:
  sub_18E615B48(a2);
  v73 = [objc_allocWithZone(MEMORY[0x1E698E568]) init];
  sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
  sub_18E63B6CC();
  v74 = sub_18E65F9F0();
}

uint64_t sub_18E639A2C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_18E639A78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A010, qword_18E663700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_18E639B7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A050, &qword_18E664A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A058, &qword_18E664A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18E639CB0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A048, &qword_18E664A00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_18E639D5C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_18E61173C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_18E639DB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_18E639E04(a1, a2);
  sub_18E639F34(&unk_1F0195BF8);
  return v3;
}

void *sub_18E639E04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18E63A020(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18E65FCA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_18E65F940();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18E63A020(v10, 0);
        result = sub_18E65FC60();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18E639F34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18E63A094(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18E63A020(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A060, &qword_18E664A18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18E63A094(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A060, &qword_18E664A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_18E63A188(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_18E63A198(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_18E63A1B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_18E63A210(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_18E63A248(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E65FB90() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x193AD06C0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_18E63A3BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18E63A3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18E63A3DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A040, &qword_18E6649F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_18E63A4EC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_18E65FBD0();

    if (v9)
    {

      sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_18E65FBC0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_18E63A724(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_18E63A914(v20 + 1);
    }

    v18 = v8;
    sub_18E63AB3C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
  v11 = sub_18E65FB10();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_18E63ABC0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_18E65FB20();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_18E63A724(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
    v2 = sub_18E65FC40();
    v15 = v2;
    sub_18E65FBB0();
    if (sub_18E65FBE0())
    {
      sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_18E63A914(v9 + 1);
        }

        v2 = v15;
        result = sub_18E65FB10();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_18E65FBE0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_18E63A914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
  v4 = sub_18E65FC30();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_18E65FB10();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_18E63AB3C(uint64_t a1, uint64_t a2)
{
  sub_18E65FB10();
  result = sub_18E65FBA0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_18E63ABC0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18E63A914(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_18E63AD30();
      goto LABEL_12;
    }

    sub_18E63AE80(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_18E65FB10();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_18E65FB20();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18E65FE00();
  __break(1u);
}

void sub_18E63AD30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
  v2 = *v0;
  v3 = sub_18E65FC20();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_18E63AE80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
  v4 = sub_18E65FC30();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_18E65FB10();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void *sub_18E63B094(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_18E63B194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A4D0, &unk_18E664A20);
  v3 = sub_18E65FD00();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_18E64C61C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_18E64C61C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E63B298(uint64_t a1)
{
  v2 = sub_18E65F580();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_18E63B3CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_18E63B3DC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18E65FBC0())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A028, &qword_18E6649E8);
      v3 = sub_18E65FC50();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18E65FBC0();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x193AD04B0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_18E65FB10();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_18E65FB20();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_18E65FB10();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_18E623B78(0, &qword_1ED764CE0, 0x1E698E5F0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_18E65FB20();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_18E63B6CC()
{
  result = qword_1ED764CD0;
  if (!qword_1ED764CD0)
  {
    sub_18E623B78(255, &qword_1ED764CE0, 0x1E698E5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764CD0);
  }

  return result;
}

id sub_18E63B760(void *a1)
{
  if (*(v1 + 16))
  {
    v2 = 1;
  }

  else
  {
    v2 = 4;
  }

  return [a1 setInterfaceOrientation_];
}

unint64_t sub_18E63B77C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A018, &qword_18E6649D8);
    v3 = sub_18E65FD00();
    v4 = a1 + 32;

    while (1)
    {
      sub_18E63D054(v4, v13);
      result = sub_18E64C664(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_18E63B3CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_18E63B898()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController__presentationMode) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_wantsBaseContentTouchEvents) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backgroundTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_textColor) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_resolvedMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_idleTimerDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_audioCategoriesDisablingVolumeHUD) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_archivedActivityFamily) = 2;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_baseContentTouchedDown) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_actionButtonInitiated) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShowSystemAperture) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activityTouchRestrictedRects) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scene) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneForeground) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_invalidated) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_scenePresenter) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_activatedSceneView) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_liveSceneSnapshotView) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_debugLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_presentationAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReady) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForArchiveContentReadyBlocks) = v1;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_waitingForInitialContentSizeReadyBlocks) = v1;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivatedBlocks) = v1;
  v2 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_touchDeliveryPolicyAssertions;
  *(v0 + v2) = sub_18E63B194(v1);
  v3 = (v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneTargetBundleIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___logIdentifier);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController____lazy_storage___queue) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_backOffTimer) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_ensureContentTimer) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitCountWithinTimeout) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientExitTimer) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneClientSettingsObservers) = v1;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_contentTransaction) = 0;
  *(v0 + OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_shouldShareTouchesWithHost) = 0;
  sub_18E65FCC0();
  __break(1u);
}

void *sub_18E63BADC(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A030, &qword_18E6649F0);
    sub_18E623B78(0, &qword_1ED764CF0, 0x1E696ABC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v10 domain];
    v3 = sub_18E65F900();
    v5 = v4;

    if (v3 == sub_18E65F900() && v5 == v6)
    {
    }

    else
    {
      v8 = sub_18E65FDE0();

      if ((v8 & 1) == 0)
      {

        return 0;
      }
    }

    v9 = [v10 code];

    return (v9 == 4);
  }

  return result;
}

uint64_t _s18ActivityUIServices0A18HostViewControllerC16sceneDidActivateyySo7FBSceneCF_0()
{
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v1 = sub_18E65F6E0();
  __swift_project_value_buffer(v1, qword_1ED764D68);
  v2 = v0;
  v3 = sub_18E65F6C0();
  v4 = sub_18E65FA40();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 136446210;
    v7 = sub_18E62A1F8();
    v9 = sub_18E61173C(v7, v8, v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18E60F000, v3, v4, "[%{public}s] Scene did activate.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193AD1140](v6, -1, -1);
    MEMORY[0x193AD1140](v5, -1, -1);
  }

  v2[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated] = 1;
  v10 = OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivatedBlocks;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = v11 + 40;
    do
    {
      v14 = *(v13 - 8);

      v14(v15);

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  *&v2[v10] = MEMORY[0x1E69E7CC0];
}

void _s18ActivityUIServices0A18HostViewControllerC18sceneDidInvalidateyySo7FBSceneCF_0()
{
  v0[OBJC_IVAR____TtC18ActivityUIServices26ActivityHostViewController_sceneActivated] = 0;
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v1 = sub_18E65F6E0();
  __swift_project_value_buffer(v1, qword_1ED764D68);
  v2 = v0;
  oslog = sub_18E65F6C0();
  v3 = sub_18E65FA40();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_18E62A1F8();
    v8 = sub_18E61173C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_18E60F000, oslog, v3, "[%{public}s] Scene did invalidate.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x193AD1140](v5, -1, -1);
    MEMORY[0x193AD1140](v4, -1, -1);
  }
}

void sub_18E63BF80(void (*a1)(void), const char *a2, ...)
{
  a1();
  if (qword_1ED764D60 != -1)
  {
    swift_once();
  }

  v4 = sub_18E65F6E0();
  __swift_project_value_buffer(v4, qword_1ED764D68);
  v5 = v2;
  oslog = sub_18E65F6C0();
  v6 = sub_18E65FA40();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    v9 = sub_18E62A1F8();
    v11 = sub_18E61173C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_18E60F000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x193AD1140](v8, -1, -1);
    MEMORY[0x193AD1140](v7, -1, -1);
  }
}

unint64_t sub_18E63C0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC89F68;
  if (!qword_1EAC89F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC89F68);
  }

  return result;
}

void keypath_set_133Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void keypath_get_118Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_18E63CAA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = [v2 capture];
  v4 = 2;
  if (v3)
  {
    v4 = v2;
  }

  return v1(v4, v3 ^ 1);
}

uint64_t sub_18E63CB04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18E63CBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED764F00;
  if (!qword_1ED764F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764F00);
  }

  return result;
}

id sub_18E63CC24(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

id sub_18E63CC30()
{
  v1 = 0.0;
  if (*(v0 + 16))
  {
    v1 = 1.0;
  }

  return [*(v0 + 24) setAlpha_];
}

double sub_18E63CC7C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_18E63CCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8A600, qword_18E666430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_324Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E63CD8C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_18E63CDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED764D50;
  if (!qword_1ED764D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED764D50);
  }

  return result;
}

uint64_t sub_18E63CFFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E63D054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A020, &qword_18E6649E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActivityHostViewController.SceneCaptureError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityHostViewController.SceneCaptureError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18E63D288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A070;
  if (!qword_1EAC8A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A070);
  }

  return result;
}

uint64_t sub_18E63D408()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E65FC70();

  strcpy(v4, "Missing data: ");
  MEMORY[0x193AD0160](v1, v2);
  return v4[0];
}

uint64_t sub_18E63D494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E63D51C(a1, a2, a3);

  return MEMORY[0x1EEDC6AD0](a1, v4);
}

uint64_t sub_18E63D4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E63D51C(a1, a2, a3);

  return MEMORY[0x1EEDC6AC0](a1, v4);
}

unint64_t sub_18E63D51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A0E0;
  if (!qword_1EAC8A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A0E0);
  }

  return result;
}

uint64_t sub_18E63D588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E63D614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ActivityLaunchRequest.activityDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityLaunchRequest(0) + 20);
  v4 = sub_18E65F4C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_18E63D734(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityLaunchRequest.activityDescriptor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityLaunchRequest(0) + 20);
  v4 = sub_18E65F4C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivityLaunchRequest.init(launchType:activityDescriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18E63D8B8(a1, a3);
  v5 = *(type metadata accessor for ActivityLaunchRequest(0) + 20);
  v6 = sub_18E65F4C0();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_18E63D8B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id static ActivityLaunchRequest.userActivity(for:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69636A8]);
  v1 = sub_18E65F8F0();
  v2 = [v0 initWithActivityType_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A0E8, &unk_18E664C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E6636F0;
  v4 = MEMORY[0x1E69E6158];
  sub_18E65FC10();
  v5 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  sub_18E63B77C(inited);
  swift_setDeallocating();
  sub_18E63DA70(inited + 32);
  v7 = sub_18E65F8A0();

  [v2 setUserInfo_];

  return v2;
}

uint64_t sub_18E63DA70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A020, &qword_18E6649E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E63DB00(uint64_t a1)
{
  result = type metadata accessor for ActivityLaunchRequest.LaunchType(319);
  if (v2 <= 0x3F)
  {
    result = sub_18E65F4C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18E63DBD4(uint64_t a1)
{
  result = sub_18E65F400();
  if (v2 <= 0x3F)
  {
    result = sub_18E63DC48();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_18E63DC48()
{
  result = qword_1EAC8A100;
  if (!qword_1EAC8A100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAC8A100);
  }

  return result;
}

id ActivityBannerHostViewController.__allocating_init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v10 = sub_18E65F4C0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v7);
  v14 = *(v11 + 16);
  v14(v13, a1, v10);
  v15 = type metadata accessor for ActivitySceneDescriptor(0);
  v16 = objc_allocWithZone(v15);
  v17 = a2;
  v18 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v19 = &v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v19 = v18;
  v19[1] = v20;
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 1;
  sub_18E6220E4(&unk_1EAC894E0, MEMORY[0x1E6959BB0]);
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  v14(&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v13, v10);
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v17;
  v21 = &v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  v31.receiver = v16;
  v31.super_class = v15;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  v24 = *(v11 + 8);
  v24(v13, v10);
  v25 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v23, v29, v30);

  v24(a1, v10);
  return v25;
}

id ActivityBannerHostViewController.init(activityDescriptor:systemMetricsRequest:payloadID:targetBundleIdentifier:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_18E63E170(a1, a2, a3, a4, a5, a6);

  return v7;
}

id sub_18E63E02C()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityBannerSceneSpecification());

  return [v0 init];
}

id ActivityBannerHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityBannerHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18E63E170(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v27 = a4;
  v28 = a5;
  v9 = sub_18E65F4C0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a1, v9, v11);
  v15 = type metadata accessor for ActivitySceneDescriptor(0);
  v16 = objc_allocWithZone(v15);
  v17 = a2;
  v18 = _s18ActivityUIServices0A16InstanceIdentityV10identifierSSvg_0();
  v19 = &v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityIdentifier];
  *v19 = v18;
  v19[1] = v20;
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activitySceneType] = 1;
  sub_18E6220E4(&unk_1EAC894E0, MEMORY[0x1E6959BB0]);
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptorData] = sub_18E65FD10();
  (v14)(&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_activityDescriptor], v13, v9);
  *&v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_metricsRequest] = v17;
  v21 = &v16[OBJC_IVAR____TtC18ActivityUIServices23ActivitySceneDescriptor_payloadID];
  v22 = v27;
  *v21 = a3;
  *(v21 + 1) = v22;
  v30.receiver = v16;
  v30.super_class = v15;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  v24 = *(v10 + 8);
  v24(v13, v9);
  v25 = ActivityHostViewController.init(activitySceneDescriptor:targetBundleIdentifier:)(v23, v28, v29);
  v24(a1, v9);
  return v25;
}

unint64_t sub_18E63E40C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18E63E440(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_18E63E440(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_18E63E454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A108;
  if (!qword_1EAC8A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A108);
  }

  return result;
}

void sub_18E63E4B8(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  [v1 setWantsBaseContentTouchEventsNumber_];
}

uint64_t sub_18E63E528(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18E65F4C0();
  sub_18E625368();
  v5 = sub_18E65F680();
  [v2 setActivityDescriptorData_];

  v6 = *(*(v4 - 8) + 8);

  return v6(a1, v4);
}

void sub_18E63E5C8()
{
  v1 = [v0 activityDescriptorData];
  sub_18E65F4C0();
  sub_18E625368();
  sub_18E65F670();
}

id sub_18E63E644()
{
  v1 = [v0 wantsBaseContentTouchEventsNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

uint64_t sub_18E63E6A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E656373;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x746E6F4377656976;
    }

    else
    {
      v4 = 0x656E656373;
    }

    if (v3)
    {
      v5 = 0xEE0072656C6C6F72;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x52737365636F7270;
    v5 = 0xEF656372756F7365;
  }

  else if (a1 == 3)
  {
    v4 = 0x5466664F6B636162;
    v5 = 0xEC00000072656D69;
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x7472656C61;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0x746E6F4377656976;
    v8 = 0xEE0072656C6C6F72;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x52737365636F7270;
    v6 = 0xEF656372756F7365;
    v7 = 0x5466664F6B636162;
    v8 = 0xEC00000072656D69;
    if (a2 != 3)
    {
      v7 = 0x7472656C61;
      v8 = 0xE500000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_18E65FDE0();
  }

  return v12 & 1;
}

uint64_t sub_18E63E850(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 0x676E696C69617274;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74746F62;
  if (a2 != 2)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x676E696461656CLL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_18E65FDE0();
  }

  return v11 & 1;
}

double sub_18E63E9CC()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E63EA64(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_18E63EB5C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E63EBF4(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_18E63ECEC()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E63ED84(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_18E63EE7C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E63EF14(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id ActivityEdgeInsets.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityEdgeInsets.init()()
{
  *&v0[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityEdgeInsets();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *ActivityEdgeInsets.__allocating_init(top:leading:bottom:trailing:)(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(v4) init];
  v10 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *&v9[v10] = a1;
  v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *&v9[v11] = a2;
  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *&v9[v12] = a3;
  v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *&v9[v13] = a4;
  return v9;
}

char *ActivityEdgeInsets.init(top:leading:bottom:trailing:)(double a1, double a2, double a3, double a4)
{
  v9 = [v4 init];
  v10 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *&v9[v10] = a1;
  v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *&v9[v11] = a2;
  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *&v9[v12] = a3;
  v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *&v9[v13] = a4;
  return v9;
}

void sub_18E63F3A8()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  if (*(v0 + v1) <= 1.0)
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = 1.0;
  }

  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  if (*(v0 + v3) <= 1.0)
  {
    v4 = *(v0 + v3);
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  if (*(v0 + v5) <= 1.0)
  {
    v6 = *(v0 + v5);
  }

  else
  {
    v6 = 1.0;
  }

  v7 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  v9 = v2 * 53.0 * v4 * v6 * v8;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
  }
}

BOOL sub_18E63F4E4(uint64_t a1)
{
  sub_18E61ED24(a1, v17);
  if (v18)
  {
    type metadata accessor for ActivityEdgeInsets();
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
      swift_beginAccess();
      v3 = *(v1 + v2);
      v4 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
      swift_beginAccess();
      if (v3 == *&v16[v4])
      {
        v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
        swift_beginAccess();
        v6 = *(v1 + v5);
        v7 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
        swift_beginAccess();
        if (v6 == *&v16[v7])
        {
          v8 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
          swift_beginAccess();
          v9 = *(v1 + v8);
          v10 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
          swift_beginAccess();
          if (v9 == *&v16[v10])
          {
            v11 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
            swift_beginAccess();
            v12 = *(v1 + v11);
            v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
            swift_beginAccess();
            v14 = *&v16[v13];

            return v12 == v14;
          }
        }
      }
    }
  }

  else
  {
    sub_18E61D6A8(v17);
  }

  return 0;
}

uint64_t sub_18E63F768()
{
  sub_18E65FC70();
  MEMORY[0x193AD0160](0xD000000000000011, 0x800000018E6698F0);
  swift_beginAccess();
  v0 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v0);

  MEMORY[0x193AD0160](0x6E696461656C202CLL, 0xEA00000000003D67);
  swift_beginAccess();
  v1 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v1);

  MEMORY[0x193AD0160](0x6D6F74746F62202CLL, 0xE90000000000003DLL);
  swift_beginAccess();
  v2 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v2);

  MEMORY[0x193AD0160](0x696C69617274202CLL, 0xEB000000003D676ELL);
  swift_beginAccess();
  v3 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v3);

  MEMORY[0x193AD0160](62, 0xE100000000000000);
  return 0;
}

void sub_18E63F91C(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = type metadata accessor for ActivityEdgeInsets();
  v12 = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  *&v12[v13] = v4;
  v14 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  *&v12[v14] = v6;
  v15 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  *&v12[v15] = v8;
  v16 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  *&v12[v16] = v10;
  a1[3] = v11;
  *a1 = v12;
}

uint64_t sub_18E63FAEC()
{
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

uint64_t sub_18E63FBA4(uint64_t a1)
{
  sub_18E65F920();
}

uint64_t sub_18E63FC48(uint64_t a1)
{
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

unint64_t sub_18E63FCFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18E640970(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_18E63FD2C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696461656CLL;
    v2 = 0xE700000000000000;
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

uint64_t sub_18E63FDA0()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
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

unint64_t sub_18E63FE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E640970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E63FE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E640B74(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_18E63FE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E640B74(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

id ActivityEdgeInsets.__allocating_init(bsxpcCoder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E6409BC(a1);
  swift_unknownObjectRelease();
  return v4;
}

id ActivityEdgeInsets.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_18E6409BC(a1);
  swift_unknownObjectRelease();
  return v1;
}

void sub_18E63FFFC(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_18E65F8F0();
  [a1 encodeDouble:v5 forKey:v4];

  v6 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_18E65F8F0();
  [a1 encodeDouble:v8 forKey:v7];

  v9 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_18E65F8F0();
  [a1 encodeDouble:v11 forKey:v10];

  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_18E65F8F0();
  [a1 encodeDouble:v14 forKey:v13];
}

id ActivityEdgeInsets.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E6409BC(a1);

  return v4;
}

id ActivityEdgeInsets.init(coder:)(void *a1)
{
  v2 = sub_18E6409BC(a1);

  return v2;
}

uint64_t sub_18E64028C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A138, "r}");
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E640B74(v9, v10, v11);
  sub_18E65FF50();
  v12 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  v13 = swift_beginAccess();
  v24 = *(v3 + v12);
  LOBYTE(v23) = 0;
  sub_18E640BC8(v13, v14, v15);
  sub_18E65FDA0();
  if (!v2)
  {
    v16 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
    swift_beginAccess();
    v23 = *(v3 + v16);
    LOBYTE(v22) = 2;
    sub_18E65FDA0();
    v17 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
    swift_beginAccess();
    v22 = *(v3 + v17);
    LOBYTE(v21) = 1;
    sub_18E65FDA0();
    v18 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
    swift_beginAccess();
    v21 = *(v3 + v18);
    v20[7] = 3;
    sub_18E65FDA0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *ActivityEdgeInsets.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A150, &qword_18E664E50);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top] = 0;
  v7 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading] = 0;
  v8 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom] = 0;
  v9 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  v31 = v1;
  v32 = a1;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing] = 0;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E640B74(v10, v11, v12);
  v13 = v30;
  v14 = sub_18E65FF40();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    type metadata accessor for ActivityEdgeInsets();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v7;
    v27 = v9;
    v38 = 0;
    sub_18E640C1C(v14, v15, v16);
    sub_18E65FD60();
    v17 = v37;
    v18 = v31;
    swift_beginAccess();
    *&v18[v6] = v17;
    LOBYTE(v37) = 2;
    sub_18E65FD60();
    v19 = v36;
    swift_beginAccess();
    *&v18[v8] = v19;
    LOBYTE(v36) = 1;
    v20 = v29;
    sub_18E65FD60();
    v21 = v34;
    v22 = v30;
    swift_beginAccess();
    *&v18[v22] = v21;
    LOBYTE(v34) = 3;
    sub_18E65FD60();
    (*(v28 + 8))(v5, v20);
    v24 = v35;
    v25 = v27;
    swift_beginAccess();
    *&v18[v25] = v24;
    v26 = type metadata accessor for ActivityEdgeInsets();
    v33.receiver = v18;
    v33.super_class = v26;
    v10 = objc_msgSendSuper2(&v33, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  return v10;
}

id ActivityEdgeInsets.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityEdgeInsets();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_18E6408F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ActivityEdgeInsets());
  result = ActivityEdgeInsets.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18E640970(uint64_t a1, uint64_t a2)
{
  v2 = sub_18E65FD20();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_18E6409BC(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_top] = 0;
  v4 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_leading] = 0;
  v5 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_bottom] = 0;
  v6 = OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing;
  *&v1[OBJC_IVAR____TtC18ActivityUIServices18ActivityEdgeInsets_trailing] = 0;
  v7 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v9 = v8;

  swift_beginAccess();
  *&v1[v3] = v9;
  v10 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v12 = v11;

  swift_beginAccess();
  *&v1[v4] = v12;
  v13 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v15 = v14;

  swift_beginAccess();
  *&v1[v5] = v15;
  v16 = sub_18E65F8F0();
  [a1 decodeDoubleForKey_];
  v18 = v17;

  swift_beginAccess();
  *&v1[v6] = v18;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ActivityEdgeInsets();
  return objc_msgSendSuper2(&v20, sel_init);
}

unint64_t sub_18E640B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A140;
  if (!qword_1EAC8A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A140);
  }

  return result;
}

unint64_t sub_18E640BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A148;
  if (!qword_1EAC8A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A148);
  }

  return result;
}

unint64_t sub_18E640C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A158;
  if (!qword_1EAC8A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A158);
  }

  return result;
}

double keypath_getTm_0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t getEnumTagSinglePayload for ActivityEdgeInsets.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityEdgeInsets.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18E641224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A168;
  if (!qword_1EAC8A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A168);
  }

  return result;
}

unint64_t sub_18E64127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A170;
  if (!qword_1EAC8A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A170);
  }

  return result;
}

unint64_t sub_18E6412D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A178;
  if (!qword_1EAC8A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A178);
  }

  return result;
}

void *ResolvedContentMetrics.edgeInsets.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
  v2 = v1;
  return v1;
}

id ResolvedContentMetrics.__allocating_init(size:cornerRadius:edgeInsets:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
  *v10 = a2;
  v10[1] = a3;
  *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = a4;
  *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = a1;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id ResolvedContentMetrics.init(size:cornerRadius:edgeInsets:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
  *v5 = a2;
  v5[1] = a3;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = a4;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = a1;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for ResolvedContentMetrics();
  return objc_msgSendSuper2(&v7, sel_init);
}

id ResolvedContentMetrics.__allocating_init(size:cornerRadius:)(double a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = a3;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = 0;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ResolvedContentMetrics.init(size:cornerRadius:)(double a1, double a2, double a3)
{
  v4 = &v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
  *v4 = a1;
  v4[1] = a2;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = a3;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = 0;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for ResolvedContentMetrics();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_18E641560(uint64_t a1)
{
  sub_18E61ED24(a1, v10);
  if (!v11)
  {
    sub_18E61D6A8(v10);
    goto LABEL_11;
  }

  type metadata accessor for ResolvedContentMetrics();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v6 = 0;
    return v6 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size) != *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size] || *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size + 8) != *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size + 8] || *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius) != *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius])
  {
    goto LABEL_10;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
  v3 = *&v9[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets];
  if (!v2)
  {
    v8 = v3;

    if (!v3)
    {
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_11;
  }

  if (!v3)
  {
LABEL_10:

    goto LABEL_11;
  }

  type metadata accessor for ActivityEdgeInsets();
  v4 = v3;
  v5 = v2;
  v6 = sub_18E65FB20();

  return v6 & 1;
}

uint64_t sub_18E641780()
{
  sub_18E65FC70();
  MEMORY[0x193AD0160](0xD00000000000001ELL, 0x800000018E6699C0);
  type metadata accessor for CGSize(0);
  v1 = sub_18E65F910();
  MEMORY[0x193AD0160](v1);

  MEMORY[0x193AD0160](0x72656E726F63202CLL, 0xEF3D737569646152);
  v2 = sub_18E65F9E0();
  MEMORY[0x193AD0160](v2);

  MEMORY[0x193AD0160](0x6E4965676465202CLL, 0xED00003D73746573);
  v3 = *(v0 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A1A0, &qword_18E665048);
  v4 = sub_18E65F910();
  MEMORY[0x193AD0160](v4);

  MEMORY[0x193AD0160](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_18E6418F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x615272656E726F63;
  v4 = 0xEC00000073756964;
  if (v2 != 1)
  {
    v3 = 0x65736E4965676465;
    v4 = 0xEA00000000007374;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1702521203;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x615272656E726F63;
  v8 = 0xEC00000073756964;
  if (*a2 != 1)
  {
    v7 = 0x65736E4965676465;
    v8 = 0xEA00000000007374;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1702521203;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_18E65FDE0();
  }

  return v11 & 1;
}

uint64_t sub_18E641A08()
{
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

uint64_t sub_18E641AB0(uint64_t a1)
{
  sub_18E65F920();
}

uint64_t sub_18E641B44(uint64_t a1)
{
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

unint64_t sub_18E641BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18E642C44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_18E641C18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC00000073756964;
  v5 = 0x615272656E726F63;
  if (v2 != 1)
  {
    v5 = 0x65736E4965676465;
    v4 = 0xEA00000000007374;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702521203;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_18E641C7C()
{
  v1 = 0x615272656E726F63;
  if (*v0 != 1)
  {
    v1 = 0x65736E4965676465;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

unint64_t sub_18E641CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E642C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E641D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E6425F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_18E641D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18E6425F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void sub_18E641D98(void *a1)
{
  v3 = [objc_opt_self() valueWithCGSize_];
  v4 = sub_18E65F8F0();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v6 = sub_18E65F8F0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
  v8 = sub_18E65F8F0();
  [a1 encodeObject:v7 forKey:v8];
}

id ResolvedContentMetrics.init(bsxpcCoder:)(void *a1)
{
  sub_18E642244();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_18E65F8F0();
  v5 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v4];

  if (v5)
  {
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_13:
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    [v22 CGSizeValue];
    v7 = v6;
    v9 = v8;

    type metadata accessor for ActivityEdgeInsets();
    v10 = swift_getObjCClassFromMetadata();
    v11 = sub_18E65F8F0();
    v12 = [a1 decodeObjectOfClass:v10 forKey:v11];

    if (v12)
    {
      sub_18E65FB60();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = v22;
        v14 = &v1[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size];
        *v14 = v7;
        *(v14 + 1) = v9;
        *&v1[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = v13;
        v15 = v13;
        v16 = sub_18E65F8F0();
        [a1 decodeDoubleForKey_];
        v18 = v17;

        *&v1[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = v18;
        v21.receiver = v1;
        v21.super_class = type metadata accessor for ResolvedContentMetrics();
        v19 = objc_msgSendSuper2(&v21, sel_init);
        swift_unknownObjectRelease();
        return v19;
      }

      goto LABEL_13;
    }
  }

  swift_unknownObjectRelease();
  sub_18E61D6A8(&v25);
LABEL_14:
  type metadata accessor for ResolvedContentMetrics();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_18E642244()
{
  result = qword_1EAC8A1A8;
  if (!qword_1EAC8A1A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAC8A1A8);
  }

  return result;
}

id ResolvedContentMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResolvedContentMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResolvedContentMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E64239C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A1B0, &qword_18E665050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E6425F8(v9, v10, v11);
  sub_18E65FF50();
  v18 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size);
  v17 = 0;
  type metadata accessor for CGSize(0);
  sub_18E642974(&unk_1EAC8A1C0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
  v12 = sub_18E65FDA0();
  if (!v2)
  {
    *&v18 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius);
    v17 = 1;
    sub_18E640BC8(v12, v13, v14);
    sub_18E65FDA0();
    *&v18 = *(v3 + OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets);
    v17 = 2;
    type metadata accessor for ActivityEdgeInsets();
    sub_18E642974(&qword_1EAC8A1D0, type metadata accessor for ActivityEdgeInsets, &protocol conformance descriptor for ActivityEdgeInsets);
    sub_18E65FD70();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_18E6425F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A1B8;
  if (!qword_1EAC8A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A1B8);
  }

  return result;
}

void *ResolvedContentMetrics.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8A1D8, &qword_18E665058);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18E6425F8(v9, v10, v11);
  sub_18E65FF40();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ResolvedContentMetrics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGSize(0);
    v19 = 0;
    sub_18E642974(&unk_1EAC8A1E0, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    v12 = sub_18E65FD60();
    *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_size] = v18;
    v19 = 1;
    sub_18E640C1C(v12, v13, v14);
    sub_18E65FD60();
    *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_cornerRadius] = v18;
    type metadata accessor for ActivityEdgeInsets();
    v19 = 2;
    sub_18E642974(&unk_1EAC8A1F0, type metadata accessor for ActivityEdgeInsets, &protocol conformance descriptor for ActivityEdgeInsets);
    sub_18E65FD30();
    *&v3[OBJC_IVAR____TtC18ActivityUIServices22ResolvedContentMetrics_edgeInsets] = v18;
    v16 = type metadata accessor for ResolvedContentMetrics();
    v17.receiver = v3;
    v17.super_class = v16;
    v9 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_18E642974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_18E6429BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ResolvedContentMetrics());
  result = ResolvedContentMetrics.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_18E642B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A260;
  if (!qword_1EAC8A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A260);
  }

  return result;
}

unint64_t sub_18E642B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A268;
  if (!qword_1EAC8A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A268);
  }

  return result;
}

unint64_t sub_18E642BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A270;
  if (!qword_1EAC8A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A270);
  }

  return result;
}

unint64_t sub_18E642C44(uint64_t a1, uint64_t a2)
{
  v2 = sub_18E65FD20();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_18E642DD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_18E65F6E0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_18E65F6D0();
}

uint64_t sub_18E642E74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_18E65F6E0();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

ActivityUIServices::ActivityUIServicesCategory_optional __swiftcall ActivityUIServicesCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E65FD20();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityUIServicesCategory.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E656373;
  v3 = 0x52737365636F7270;
  v4 = 0x5466664F6B636162;
  if (v1 != 3)
  {
    v4 = 0x7472656C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E6F4377656976;
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

unint64_t sub_18E643048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A280;
  if (!qword_1EAC8A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A280);
  }

  return result;
}

uint64_t sub_18E64309C()
{
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

uint64_t sub_18E643198(uint64_t a1)
{
  sub_18E65F920();
}

uint64_t sub_18E643280(uint64_t a1)
{
  sub_18E65FEB0();
  sub_18E65F920();

  return sub_18E65FF10();
}

void sub_18E643384(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656E656373;
  v5 = 0xEF656372756F7365;
  v6 = 0x52737365636F7270;
  v7 = 0xEC00000072656D69;
  v8 = 0x5466664F6B636162;
  if (v2 != 3)
  {
    v8 = 0x7472656C61;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746E6F4377656976;
    v3 = 0xEE0072656C6C6F72;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ActivityUIServicesCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityUIServicesCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_18E643610@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18E6482C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18E643644()
{
  result = sub_18E65F8F0();
  qword_1EAC89318 = result;
  return result;
}

id sub_18E6436A0()
{
  v1 = [v0 _FBSScene];
  v2 = [v1 settings];

  if (v2)
  {
    v3 = [objc_allocWithZone(type metadata accessor for ActivitySceneSettings_Legacy()) initWithSettings_];
  }

  else
  {
    if (qword_1EAC89350 != -1)
    {
      swift_once();
    }

    v4 = sub_18E65F6E0();
    __swift_project_value_buffer(v4, qword_1EAC89358);
    v5 = v0;
    v6 = sub_18E65F6C0();
    v7 = sub_18E65FA50();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = [v5 _FBSScene];
      v11 = [v10 identifier];

      v12 = sub_18E65F900();
      v14 = v13;

      v15 = sub_18E61173C(v12, v14, &v17);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_18E60F000, v6, v7, "[%s] Unexpectedly encountered nil while accessing scene settings.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193AD1140](v9, -1, -1);
      MEMORY[0x193AD1140](v8, -1, -1);
    }

    return 0;
  }

  return v3;
}

char *sub_18E6438A8(void *a1, void *a2)
{
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__settingsDiffer] = 0;
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_contentPayloadID] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_backgroundTintColor] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_textColor] = 0;
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_resolvedMetrics] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects] = MEMORY[0x1E69E7CC0];
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled] = 0;
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily] = 2;
  v2[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown] = 2;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ActivityScene();
  v6 = objc_msgSendSuper2(&v14, sel_initWithSession_connectionOptions_, a1, a2);
  v7 = [v6 _FBSScene];
  v8 = type metadata accessor for ActivitySceneSettingsDiffer_Legacy();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_publishersByKeyIndex] = MEMORY[0x1E69E7CC8];
  *&v9[OBJC_IVAR____TtC18ActivityUIServices34ActivitySceneSettingsDiffer_Legacy_cancellables] = v5;
  swift_unknownObjectUnownedInit();
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  [v7 addObserver_];

  v11 = *&v6[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__settingsDiffer];
  *&v6[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__settingsDiffer] = v10;

  return v6;
}

id sub_18E643AB4(uint64_t a1, uint64_t a2)
{
  v5 = [v2 _FBSScene];
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_18E643BAC(KeyPath, sub_18E6482E4, v7);

  return v8;
}

id sub_18E643B74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_18E643BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v12 = sub_18E65FB70();
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  type metadata accessor for ObserverMetadata();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v14;
  v16[4] = sub_18E6491D8;
  v16[5] = v15;

  v17 = sub_18E64ABA8(v4, v16);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v11, v8);
  aBlock = 0;
  v28 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0x536576726573626FLL;
  v28 = 0xEF2D676E69747465;
  if (v14)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0x6E776F6E6B6E753CLL;
  }

  if (!v14)
  {
    v14 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v18, v14);

  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v16;
  v20 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v21 = v17;

  v22 = sub_18E65F8F0();

  v23 = sub_18E65F8F0();

  v31 = sub_18E6492E8;
  v32 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_18E61D9D8;
  v30 = &block_descriptor_310;
  v24 = _Block_copy(&aBlock);
  v25 = [v20 initWithIdentifier:v22 forReason:v23 invalidationBlock:v24];

  _Block_release(v24);

  return v25;
}

id sub_18E643EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18E65F450();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v12 = sub_18E65FB70();
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  type metadata accessor for ObserverMetadata();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v14;
  v16[4] = sub_18E649184;
  v16[5] = v15;

  v17 = sub_18E64ABA8(v4, v16);
  sub_18E65F440();
  sub_18E65F430();
  (*(v9 + 8))(v11, v8);
  aBlock = 0;
  v28 = 0xE000000000000000;
  sub_18E65FC70();

  aBlock = 0x536576726573626FLL;
  v28 = 0xEF2D676E69747465;
  if (v14)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0x6E776F6E6B6E753CLL;
  }

  if (!v14)
  {
    v14 = 0xE90000000000003ELL;
  }

  MEMORY[0x193AD0160](v18, v14);

  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v16;
  v20 = objc_allocWithZone(MEMORY[0x1E698E778]);
  v21 = v17;

  v22 = sub_18E65F8F0();

  v23 = sub_18E65F8F0();

  v31 = sub_18E649190;
  v32 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_18E61D9D8;
  v30 = &block_descriptor_300_0;
  v24 = _Block_copy(&aBlock);
  v25 = [v20 initWithIdentifier:v22 forReason:v23 invalidationBlock:v24];

  _Block_release(v24);

  return v25;
}

id sub_18E6441D4(uint64_t a1, uint64_t a2)
{
  v5 = [v2 _FBSScene];
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;

  v8 = v2;
  v9 = sub_18E643EC0(KeyPath, sub_18E648320, v7);

  return v9;
}

uint64_t sub_18E6442A0(int a1, uint64_t (*a2)(void), int a3, id a4)
{
  v5 = [a4 _FBSScene];
  v6 = [v5 settings];

  swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  LOBYTE(v5) = sub_18E63E644();

  return a2(v5 & 1);
}

void sub_18E644358(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  BSDispatchQueueAssertMain();
  v6 = sub_18E6436A0();
  if (v6)
  {
    v9 = v6;
    sub_18E64F5A4(*(v5 + *MEMORY[0x1E69E77B0] + 8), a2, a3);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = *(*(AssociatedTypeWitness - 8) + 56);

    v8(a3, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_18E644488(uint64_t *a1, uint64_t a2)
{
  result = BSDispatchQueueAssertMain();
  v6 = *(v2 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__settingsDiffer);
  if (v6)
  {
    v7 = v6;
    v8 = sub_18E64FC48(a1, a2);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18E6444EC(void (*a1)(void *, _UNKNOWN **))
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    __break(1u);
    goto LABEL_5;
  }

  a1(v1, &protocol witness table for ActivityScene);
  v4 = [v1 _FBSScene];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_18E64832C;
  *(v6 + 24) = v5;
  v10[4] = sub_18E64835C;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_18E644854;
  v10[3] = &block_descriptor_3;
  v7 = _Block_copy(v10);
  v8 = v2;

  [v4 updateClientSettingsWithTransitionBlock_];

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_18E644694(uint64_t (*a1)(void *, _UNKNOWN **))
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate))
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = a1(v1, &protocol witness table for ActivityScene);
  v5 = [v1 _FBSScene];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18E6492D4;
  *(v7 + 24) = v6;
  v12[4] = sub_18E6492E0;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_18E644854;
  v12[3] = &block_descriptor_23;
  v8 = _Block_copy(v12);
  v9 = v4;

  v10 = v2;

  [v5 updateClientSettingsWithTransitionBlock_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

id sub_18E644854(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

void sub_18E6448A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  sub_18E65DA4C(*(a2 + v4), ObjectType);
}

uint64_t sub_18E64490C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E644950(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  v1[v3] = a1;
  BSDispatchQueueAssertMain();
  v9 = v1;
  BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v4 = [v1 _FBSScene];
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18E648384;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E64838C;
    *(v6 + 24) = v5;
    aBlock[4] = sub_18E63CC94;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_32_0;
    v7 = _Block_copy(aBlock);

    [v4 updateClientSettingsWithBlock_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E644B10(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E644B98;
}

void sub_18E644B98(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E6492EC, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_44, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_18E644D78()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_contentPayloadID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E644DC4(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_contentPayloadID;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  BSDispatchQueueAssertMain();
  if (v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] == 1)
  {
  }

  else
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E648394;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_55;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E644FA4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E64502C;
}

void sub_18E64502C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E6492D8, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_67, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_18E64520C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_backgroundTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E645258(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_backgroundTintColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  BSDispatchQueueAssertMain();
  if (v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] == 1)
  {
  }

  else
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E6483A8;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_78;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E645438(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E6454C0;
}

void sub_18E6454C0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E6492F0, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_90, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E6456A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v8 = *a3;
  swift_beginAccess();
  v9 = *(a2 + v8);
  v10 = v9;
  return a4(v9, ObjectType);
}

void *sub_18E645720()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_textColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E64576C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_textColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  BSDispatchQueueAssertMain();
  if (v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] == 1)
  {
  }

  else
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E6483E0;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_101;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E64594C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E6459D4;
}

void sub_18E6459D4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E6492F4, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_114, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_18E645BB4(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;

  BSDispatchQueueAssertMain();
  v12[2] = v8;
  sub_18E6476BC(a6, v12);
}

void *sub_18E645C30()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_resolvedMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E645C7C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_resolvedMetrics;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  v11 = v1;
  BSDispatchQueueAssertMain();
  if (v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] == 1)
  {
  }

  else
  {
    v6 = [v1 _FBSScene];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E648418;
    *(v7 + 24) = &v10;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18E6492E4;
    *(v8 + 24) = v7;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_125;
    v9 = _Block_copy(aBlock);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E645E5C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E645EE4;
}

void sub_18E645EE4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E6492DC, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_137, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_18E6460C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  *(v3 + v4) = v2;

  BSDispatchQueueAssertMain();
  v5[2] = v3;
  sub_18E6476BC(sub_18E6492F8, v5);
}

void sub_18E646150(void *a1, uint64_t a2)
{
  swift_beginAccess();
  type metadata accessor for CGRect(0);

  v3 = sub_18E65F990();

  [a1 setActivityHostTouchRestrictedRects_];
}

void sub_18E64622C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  *&v1[v3] = a1;

  BSDispatchQueueAssertMain();
  v9 = v1;
  BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v4 = [v1 _FBSScene];
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18E64842C;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E6492E4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_148;
    v7 = _Block_copy(aBlock);

    [v4 updateClientSettingsWithBlock_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E6463F4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E64647C;
}

void sub_18E64647C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E6492F8, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_160, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_18E64665C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  *(v8 + v9) = v7;
  BSDispatchQueueAssertMain();
  v10[2] = v8;
  sub_18E6476BC(a6, v10);
}

void sub_18E6466C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_18E65D71C(ObjectType);
  v5 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled;
  swift_beginAccess();
  v6 = *(a2 + v5);
  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_18E65DA58(v6, ObjectType);
  }
}

uint64_t sub_18E64674C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E646790(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled;
  swift_beginAccess();
  v1[v3] = a1;
  BSDispatchQueueAssertMain();
  v9 = v1;
  BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v4 = [v1 _FBSScene];
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18E648434;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E6492E4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_171;
    v7 = _Block_copy(aBlock);

    [v4 updateClientSettingsWithBlock_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E646950(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E6469D8;
}

void sub_18E6469D8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E6492FC, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_184, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_18E646BB8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_18E65D728(&v6);
  v3 = v6;
  v4 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v3 == 2)
  {
    if (v5 == 2)
    {
      return;
    }

LABEL_6:
    v6 = *(a2 + v4);
    sub_18E65DA64(&v6);
    return;
  }

  if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
  {
    goto LABEL_6;
  }
}

void sub_18E646C5C(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_18E646CB0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  v1[v3] = v2;
  BSDispatchQueueAssertMain();
  v9 = v1;
  BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v4 = [v1 _FBSScene];
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18E64843C;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E6492E4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_195;
    v7 = _Block_copy(aBlock);

    [v4 updateClientSettingsWithBlock_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E646E70(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E646EF8;
}

void sub_18E646EF8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E649300, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_207, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_18E6470D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_18E65D7C4(ObjectType);
  v5 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown;
  swift_beginAccess();
  v6 = *(a2 + v5);
  if (v4 == 2)
  {
    if (v6 == 2)
    {
      return;
    }

LABEL_6:
    sub_18E65DAE4(v6, ObjectType);
    return;
  }

  if (v6 == 2 || ((v4 ^ v6) & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_18E647174()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E6471B8(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown;
  swift_beginAccess();
  v1[v3] = a1;
  BSDispatchQueueAssertMain();
  v9 = v1;
  BSDispatchQueueAssertMain();
  if ((v1[OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate] & 1) == 0)
  {
    v4 = [v1 _FBSScene];
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18E648444;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_18E6492E4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_18E63D3DC;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E6150BC;
    aBlock[3] = &block_descriptor_218;
    v7 = _Block_copy(aBlock);

    [v4 updateClientSettingsWithBlock_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_18E647378(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_18E647400;
}

void sub_18E647400(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) != 0 || (v4 = v3[6], v5 = BSDispatchQueueAssertMain(), MEMORY[0x1EEE9AC00](v5), v10[2] = v4, BSDispatchQueueAssertMain(), (*(v4 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate)) || (v6 = [v3[6] _FBSScene], v7 = swift_allocObject(), *(v7 + 16) = sub_18E649304, *(v7 + 24) = v10, v8 = swift_allocObject(), *(v8 + 16) = sub_18E6492E4, *(v8 + 24) = v7, v3[4] = sub_18E63D3DC, v3[5] = v8, *v3 = MEMORY[0x1E69E9820], v3[1] = 1107296256, v3[2] = sub_18E6150BC, v3[3] = &block_descriptor_230, v9 = _Block_copy(v3), , , objc_msgSend(v6, sel_updateClientSettingsWithBlock_, v9), v6, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    free(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E647610(uint64_t (*a1)(uint64_t))
{
  v3 = [v1 _FBSScene];
  v4 = [v3 clientSettings];

  if (swift_dynamicCastObjCProtocolConditional())
  {
    ObjectType = swift_getObjectType();
    v6 = a1(ObjectType);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_18E6476BC(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC18ActivityUIServices13ActivityScene__inClientSettingsUpdate) & 1) == 0)
  {
    v5 = [v2 _FBSScene];
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_18E6492E4;
    *(v7 + 24) = v6;
    v9[4] = sub_18E63D3DC;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_18E6150BC;
    v9[3] = &block_descriptor_291_0;
    v8 = _Block_copy(v9);

    [v5 updateClientSettingsWithBlock_];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

void sub_18E647844(void *a1, void (*a2)(uint64_t))
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

id ActivityScene.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ActivityScene();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_18E647974(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  v5 = v1;
  sub_18E6476BC(sub_18E6492EC, &v4);
}

void (*sub_18E6479E8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647A4C;
}

void (*sub_18E647A84(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647AE8;
}

void (*sub_18E647B20(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647B84;
}

void (*sub_18E647BBC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647C20;
}

void sub_18E647C58(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  swift_beginAccess();
  v9 = *(v5 + v8);
  *(v5 + v8) = a1;
  v10 = a1;

  BSDispatchQueueAssertMain();
  v12 = v5;
  sub_18E6476BC(a5, &v11);
}

void (*sub_18E647CD8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647D3C;
}

void sub_18E647D54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_activityHostTouchRestrictedRects;
  swift_beginAccess();
  *(v1 + v3) = a1;

  BSDispatchQueueAssertMain();
  v5 = v1;
  sub_18E6476BC(sub_18E6492F8, &v4);
}

void (*sub_18E647DD0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647E34;
}

void sub_18E647E4C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  *(v1 + v3) = v2;
  BSDispatchQueueAssertMain();
  v5 = v1;
  sub_18E6476BC(sub_18E649300, &v4);
}

void (*sub_18E647EC0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E647F24;
}

void sub_18E647F3C(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_baseContentTouchedDown;
  swift_beginAccess();
  *(v1 + v3) = a1;
  BSDispatchQueueAssertMain();
  v5 = v1;
  sub_18E6476BC(sub_18E649304, &v4);
}

void (*sub_18E647FB0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18E648014;
}

void sub_18E64802C(uint64_t a1, char a2, uint64_t a3)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 24);
    v7 = BSDispatchQueueAssertMain();
    MEMORY[0x1EEE9AC00](v7);
    v8[2] = v6;
    sub_18E6476BC(a3, v8);
  }
}

uint64_t sub_18E6480D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = [v3 _FBSScene];
  v6 = [v5 clientSettings];

  if (swift_dynamicCastObjCProtocolConditional())
  {
    ObjectType = swift_getObjectType();
    v8 = a3(ObjectType);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_18E648180(void *a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  swift_getAtKeyPath();

  return a2(&v7);
}

void sub_18E6481EC(void *a1, void (*a2)(void **), uint64_t a3, uint64_t a4)
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v6 = a1;
    swift_getAtKeyPath();

    v7 = v8;
    a2(&v8);
  }

  else
  {
    sub_18E65FCC0();
    __break(1u);
  }
}

unint64_t sub_18E6482C8(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void *sub_18E64832C(uint64_t a1)
{
  v2 = sub_18E648F6C(a1, *(v1 + 16), *(v1 + 24));
  v3 = v2;
  return v2;
}

unint64_t sub_18E648474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EAC8A2E0;
  if (!qword_1EAC8A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8A2E0);
  }

  return result;
}

id sub_18E648F0C(void *a1, void *a2, SEL *a3)
{
  v6 = *(v3 + 16);
  v7 = *a2;
  swift_beginAccess();
  return [a1 *a3];
}

uint64_t sub_18E648F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = &unk_1F01BC4E0;
  v5 = swift_dynamicCastObjCProtocolUnconditional();
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_isArchiveContentReady;
  swift_beginAccess();
  sub_18E65DA4C(*(a2 + v7), ObjectType);
  v8 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_contentPayloadID;
  swift_beginAccess();
  [v5 setContentPayloadID_];
  v9 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_backgroundTintColor;
  swift_beginAccess();
  v10 = *(a2 + v9);
  v11 = v10;
  sub_18E65D840(v10, ObjectType);
  v12 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_textColor;
  swift_beginAccess();
  v13 = *(a2 + v12);
  v14 = v13;
  sub_18E65D8A0(v13, ObjectType);
  v15 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_resolvedMetrics;
  swift_beginAccess();
  [v5 setResolvedMetrics_];
  swift_beginAccess();
  type metadata accessor for CGRect(0);

  v16 = sub_18E65F990();

  [v5 setActivityHostTouchRestrictedRects_];

  v17 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_idleTimerDisabled;
  swift_beginAccess();
  sub_18E65DA58(*(a2 + v17), ObjectType);
  v18 = OBJC_IVAR____TtC18ActivityUIServices13ActivityScene_archivedActivityFamily;
  swift_beginAccess();
  v20 = *(a2 + v18);
  sub_18E65DA64(&v20);
  return a3;
}

uint64_t objectdestroy_293Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_296Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id ActivitySceneMetrics.__allocating_init(size:cornerRadius:edgeInsets:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v9[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v11 = &v9[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v11 = a2;
  v11[1] = a3;
  *&v9[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = a4;
  swift_beginAccess();
  *&v9[v10] = a1;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

double sub_18E6493FC()
{
  v1 = v0 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size;
  swift_beginAccess();
  return *v1;
}

void sub_18E64949C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double sub_18E64959C()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18E649634(double a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_18E649730()
{
  v1 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18E6497DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_18E649834(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ActivitySceneMetrics.__allocating_init(xpcDictionary:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_18E64A59C(a1);
  swift_unknownObjectRelease();
  return v4;
}

id ActivitySceneMetrics.init(xpcDictionary:)(uint64_t a1)
{
  v1 = sub_18E64A59C(a1);
  swift_unknownObjectRelease();
  return v1;
}

void sub_18E6499B0(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    BSSerializeCGSizeToXPCDictionaryWithKey();
    swift_beginAccess();
    BSSerializeDoubleToXPCDictionaryWithKey();
    v2 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = v3;
      v5 = [v4 bs_secureEncoded];
      if (v5)
      {
        v6 = v5;
        v7 = sub_18E65F420();
        v9 = v8;

        v10 = sub_18E65F410();
        sub_18E64A6D0(v7, v9);
      }

      else
      {
        v10 = 0;
      }

      BSSerializeDataToXPCDictionaryWithKey();
    }
  }
}

id ActivitySceneMetrics.init(size:cornerRadius:edgeInsets:)(uint64_t a1, double a2, double a3, double a4)
{
  v6 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v7 = &v4[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v7 = a2;
  v7[1] = a3;
  *&v4[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = a4;
  swift_beginAccess();
  *&v4[v6] = a1;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for ActivitySceneMetrics();
  return objc_msgSendSuper2(&v9, sel_init);
}

id ActivitySceneMetrics.__allocating_init(size:cornerRadius:)(double a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v9 = &v7[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v9 = a1;
  v9[1] = a2;
  *&v7[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = a3;
  swift_beginAccess();
  *&v7[v8] = 0;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id ActivitySceneMetrics.init(size:cornerRadius:)(double a1, double a2, double a3)
{
  v4 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets] = 0;
  v5 = &v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  *v5 = a1;
  v5[1] = a2;
  *&v3[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius] = a3;
  swift_beginAccess();
  *&v3[v4] = 0;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ActivitySceneMetrics();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_18E649E10(uint64_t a1)
{
  sub_18E61ED24(a1, v19);
  if (!v20)
  {
    sub_18E61D6A8(v19);
    goto LABEL_11;
  }

  type metadata accessor for ActivitySceneMetrics();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v15 = 0;
    return v15 & 1;
  }

  v2 = (v1 + OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v5 = &v18[OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_size];
  swift_beginAccess();
  if (v4 != *v5)
  {
    goto LABEL_10;
  }

  if (v3 != v5[1])
  {
    goto LABEL_10;
  }

  v6 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_cornerRadius;
  swift_beginAccess();
  if (v7 != *&v18[v8])
  {
    goto LABEL_10;
  }

  v9 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtC18ActivityUIServices20ActivitySceneMetrics_edgeInsets;
  swift_beginAccess();
  v12 = *&v18[v11];
  if (!v10)
  {
    v17 = v12;

    if (!v12)
    {
      v15 = 1;
      return v15 & 1;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
LABEL_10:

    goto LABEL_11;
  }

  type metadata accessor for ActivityEdgeInsets();
  v13 = v12;
  v14 = v10;
  v15 = sub_18E65FB20();

  return v15 & 1;
}