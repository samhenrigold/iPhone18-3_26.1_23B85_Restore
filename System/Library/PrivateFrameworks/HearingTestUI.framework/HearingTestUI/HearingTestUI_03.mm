uint64_t sub_20CDBC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20CE13B84();
  v4[7] = sub_20CE13B74();
  v6 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CDBC590, v6, v5);
}

uint64_t sub_20CDBC590()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong cleanUp];
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_20CDBC654(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_20CDBC720()
{
  swift_getObjectType();
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    Strong = [v3 windowScene];
    if (Strong || (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v4 = sub_20CE12CB4();
      __swift_project_value_buffer(v4, qword_27C817780);
      v5 = sub_20CE12C94();
      v6 = sub_20CE13CD4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v20 = v8;
        *v7 = 136446210;
        v9 = sub_20CE14414();
        v11 = sub_20CD96DCC(v9, v10, &v20);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Setting _setSystemVolumeHUDEnabled to true.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x20F314110](v8, -1, -1);
        MEMORY[0x20F314110](v7, -1, -1);
      }

      [Strong _setSystemVolumeHUDEnabled:1];
    }

    else
    {
      if (qword_27C811D00 != -1)
      {
        swift_once();
      }

      v12 = sub_20CE12CB4();
      __swift_project_value_buffer(v12, qword_27C817768);
      Strong = sub_20CE12C94();
      v13 = sub_20CE13CB4();
      if (os_log_type_enabled(Strong, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136446210;
        v16 = sub_20CE14414();
        v18 = sub_20CD96DCC(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_20CD70000, Strong, v13, "[%{public}s] Setting _setSystemVolumeHUDEnabled to true failed as the scene is nil.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x20F314110](v15, -1, -1);
        MEMORY[0x20F314110](v14, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDBCA28()
{
  swift_getObjectType();
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v19 = [v3 windowScene], v3, v19))
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v4 = sub_20CE12CB4();
      __swift_project_value_buffer(v4, qword_27C817780);
      v5 = sub_20CE12C94();
      v6 = sub_20CE13CD4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v20 = v8;
        *v7 = 136446210;
        v9 = sub_20CE14414();
        v11 = sub_20CD96DCC(v9, v10, &v20);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Setting _setSystemVolumeHUDEnabled to false.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x20F314110](v8, -1, -1);
        MEMORY[0x20F314110](v7, -1, -1);
      }

      [v19 _setSystemVolumeHUDEnabled:0];
      swift_unknownObjectWeakAssign();
    }

    else
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v12 = sub_20CE12CB4();
      __swift_project_value_buffer(v12, qword_27C817780);
      v19 = sub_20CE12C94();
      v13 = sub_20CE13CB4();
      if (os_log_type_enabled(v19, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136446210;
        v16 = sub_20CE14414();
        v18 = sub_20CD96DCC(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_20CD70000, v19, v13, "[%{public}s] Setting _setSystemVolumeHUDEnabled to false failed as the scene is nil.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x20F314110](v15, -1, -1);
        MEMORY[0x20F314110](v14, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDBCD48()
{

  v1 = OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_symbolEffect;
  v2 = sub_20CE13684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animation;
  v4 = sub_20CE12BC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  JUMPOUT(0x20F3141E0);
}

id HearingTestPreEvaluationCoachingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestPreEvaluationCoachingViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CDBCF7C(char *a1, uint64_t a2)
{
  v19 = sub_20CE12BF4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE12BC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = [a1 traitCollection];
  v12 = [v11 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (v12)
  {
    v13 = OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView;
    [*&a1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView] removeFromSuperview];
    (*(v8 + 16))(v10, &a1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animation], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D111B0], v19);
    v14 = objc_allocWithZone(sub_20CE12BE4());
    v15 = sub_20CE12BD4();
    v16 = *&a1[v13];
    *&a1[v13] = v15;

    sub_20CDBAE7C();
    v17 = *&a1[v13];
    sub_20CE12B94();
  }

  else
  {
  }
}

uint64_t sub_20CDBD238(uint64_t a1)
{
  result = sub_20CE13684();
  if (v2 <= 0x3F)
  {
    result = sub_20CE12BC4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_20CDBD35C()
{
  result = qword_27C812C08;
  if (!qword_27C812C08)
  {
    sub_20CE13684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812C08);
  }

  return result;
}

void sub_20CDBD3BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDBD420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CD7C660;

  return sub_20CDBC4F8(a1, v4, v5, v6);
}

id HearingTestInterruptionManager.__deallocating_deinit()
{
  sub_20CDBDA1C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestInterruptionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CDBD644()
{
  swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE12CB4();
  __swift_project_value_buffer(v1, qword_27C8177B0);
  v2 = v0;
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, v28);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    v10 = v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_shouldOverrideInterrupts];

    *(v5 + 14) = v10;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] *********** startObservingInterrupts shouldOverrideInterrupts %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  else
  {
  }

  if (v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_shouldOverrideInterrupts] == 1)
  {
    v11 = *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider];
    if (v11)
    {
      sub_20CDC0F80(v2, *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue], *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider]);
      v12 = *(v11 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_userDefaultsKeyPathsToObserve);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_hearingTestUserDefaults;
        v15 = v12 + 40;
        do
        {
          v16 = *(v11 + v14);

          v17 = sub_20CE13914();

          [v16 addObserver:v11 forKeyPath:v17 options:3 context:0];

          v15 += 16;
          --v13;
        }

        while (v13);
      }

      *(v11 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_isObservingUserDefaults) = 1;
    }
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_deviceManager];
    if (v18)
    {
      sub_20CDC0950(v2, *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue], v18);
    }

    sub_20CDC08C0(&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_noiseStatusProvider], v28);
    v19 = v29;
    if (v29)
    {
      v20 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v27[3] = type metadata accessor for HearingTestInterruptionManager();
      v27[4] = &protocol witness table for HearingTestInterruptionManager;
      v27[0] = v2;
      v21 = *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue];
      v22 = *(v20 + 16);
      v23 = v2;
      v22(v27, v21, v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    else
    {
      sub_20CDC16E8(v28, &qword_27C812C30, &qword_27C812C38, &protocol descriptor for NoiseStatusProviding, sub_20CD83038);
    }

    v24 = objc_opt_self();
    v25 = [v24 defaultCenter];
    [v25 addObserver:v2 selector:sel_sceneDidEnterBackground name:*MEMORY[0x277D76E58] object:0];

    v26 = [v24 defaultCenter];
    [v26 addObserver:v2 selector:sel_sceneWillDeactivateNotification name:*MEMORY[0x277D76E78] object:0];
  }
}

void sub_20CDBDA1C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C8177B0);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26[0] = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, v26);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] *********** stopObservingInterrupts **********", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_isObservingUserDefaults;
    if (*(v10 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_isObservingUserDefaults) == 1)
    {
      v12 = *(v10 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_userDefaultsKeyPathsToObserve);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_hearingTestUserDefaults;
        v15 = v12 + 40;
        do
        {
          v16 = *(v10 + v14);

          v17 = sub_20CE13914();

          [v16 removeObserver:v10 forKeyPath:v17];

          v15 += 16;
          --v13;
        }

        while (v13);
      }

      *(v10 + v11) = 0;
    }
  }

  if (*&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_deviceManager])
  {
    sub_20CDF8E38(v1);
  }

  sub_20CDC08C0(&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_noiseStatusProvider], v26);
  v18 = v27;
  if (v27)
  {
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v25[3] = type metadata accessor for HearingTestInterruptionManager();
    v25[4] = &protocol witness table for HearingTestInterruptionManager;
    v25[0] = v1;
    v20 = *(v19 + 24);
    v21 = v1;
    v20(v25, v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    sub_20CDC16E8(v26, &qword_27C812C30, &unk_27C812C38, &protocol descriptor for NoiseStatusProviding, sub_20CD83038);
  }

  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  [v23 removeObserver:v1 name:*MEMORY[0x277D76E58] object:0];

  v24 = [v22 defaultCenter];
  [v24 removeObserver:v1 name:*MEMORY[0x277D76E78] object:0];
}

void sub_20CDBDD90(unsigned __int8 *a1)
{
  v3 = sub_20CE13714();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue);
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_20CE13744();
  (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v11 = v7 == 2 || v7 == 5;
  v12 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
  v13 = [*(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions) array];
  v14 = sub_20CE13AB4();

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v14 + 32;
    while (v16 < *(v14 + 16))
    {
      sub_20CD8A98C(v17, v28);
      if ((swift_dynamicCast() & 1) == 0 || (v27 != 2 ? (v18 = v27 == 5) : (v18 = 1), !v18 && (v7 == 3 ? (v19 = v27 == 3) : (v19 = 1), v19 ? (v20 = v7 == 7) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), (v22 = v11 | v21, v27 != 7) ? (v23 = v22) : (v23 = v11), v23)))
      {

        goto LABEL_32;
      }

      ++v16;
      v17 += 32;
      if (v15 == v16)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_31:

  v16 = v15;
LABEL_32:
  v24 = *(v1 + v12);
  v28[0] = v7;
  v25 = v24;
  [v25 insertObject:sub_20CE142C4() atIndex:v16];

  swift_unknownObjectRelease();
}

uint64_t sub_20CDBDFF8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F70];
  sub_20CDC1148(a1, v5, &qword_27C812D30, MEMORY[0x277D84F70] + 8);
  if (!v6)
  {
    sub_20CDC11C8(v5, &qword_27C812D30, v1 + 8);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v2 = 0x18u >> v4;
  if (v4 > 7u)
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t sub_20CDBE0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CE136C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20CE136E4();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_20CE136D4();
  v20 = MEMORY[0x277D84F90];
  sub_20CDC17A0(&qword_27C812AB8, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v16 = MEMORY[0x277D85198];
  sub_20CDC1084(0, &qword_27C812AC0, MEMORY[0x277D85198]);
  sub_20CDC13EC(&qword_27C812AC8, &qword_27C812AC0, v16);
  sub_20CE14044();
  MEMORY[0x20F313260](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

void sub_20CDBE3D0(unsigned __int8 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_20CE12414();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE13714();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue);
  *v11 = v13;
  v14 = *(v9 + 104);
  v93 = *MEMORY[0x277D85200];
  v94 = v9 + 104;
  v92 = v14;
  v14(v11);
  v90 = v13;
  LOBYTE(v13) = sub_20CE13744();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v91 = v16;
  v16(v11, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_50;
  }

  v87 = v11;
  v88 = v15;
  v89 = v8;
  if (v12 != 8)
  {
    LOBYTE(aBlock) = v12;
    sub_20CDBDD90(&aBlock);
  }

  v95 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
  v17 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
  sub_20CE13CA4();
  sub_20CDC17A0(&qword_27C812CA8, 255, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_20CE13F74();
  v18 = MEMORY[0x277D84F90];
  if (v100)
  {
    v86 = v5;
    do
    {
      v19 = v18;
      while (1)
      {
        sub_20CD8A9E8(&aBlock, &v96);
        if (swift_dynamicCast())
        {
          v20 = v97;
          if (v97 != 8)
          {
            break;
          }
        }

        sub_20CE13F74();
        if (!v100)
        {
          v5 = v86;
          goto LABEL_17;
        }
      }

      v21 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_20CD89904(0, *(v18 + 2) + 1, 1, v18);
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      v24 = v19;
      if (v23 >= v22 >> 1)
      {
        v24 = sub_20CD89904((v22 > 1), v23 + 1, 1, v19);
      }

      v25 = v24;
      *(v24 + 2) = v23 + 1;
      v24[v23 + 32] = v20;
      sub_20CE13F74();
      v18 = v25;
      v2 = v21;
      v5 = v86;
    }

    while (v100);
  }

LABEL_17:

  (*(v5 + 1))(v7, v4);
  v26 = *(v18 + 2);
  if (v26)
  {
    v84 = v2;
    *&aBlock = MEMORY[0x277D84F90];
    v86 = v18;
    sub_20CDB4650(0, v26, 0);
    v27 = v86;
    v4 = aBlock;
    v28 = 0x800000020CE1E100;
    v29 = 0x800000020CE1E140;
    v30 = 0x800000020CE1E160;
    v31 = 0x800000020CE1E180;
    v32 = 0x800000020CE1E1A0;
    v33 = 0x800000020CE1E1C0;
    v34 = 0x800000020CE1E1E0;
    v35 = 32;
    do
    {
      v36 = v27[v35];
      v37 = 0xD000000000000015;
      if (v36 == 6)
      {
        v37 = 0xD000000000000013;
        v38 = v29;
      }

      else
      {
        v38 = v28;
      }

      v39 = 0xD000000000000018;
      if (v36 == 4)
      {
        v39 = 0xD000000000000012;
        v40 = v31;
      }

      else
      {
        v40 = v30;
      }

      if (v27[v35] <= 5u)
      {
        v37 = v39;
        v38 = v40;
      }

      v41 = 0xD000000000000017;
      if (v36 == 2)
      {
        v42 = v33;
      }

      else
      {
        v41 = 0xD000000000000012;
        v42 = v32;
      }

      if (v27[v35])
      {
        v43 = 0x6361654420707041;
      }

      else
      {
        v43 = 0xD000000000000010;
      }

      if (v27[v35])
      {
        v44 = 0xEF64657461766974;
      }

      else
      {
        v44 = v34;
      }

      if (v27[v35] <= 1u)
      {
        v41 = v43;
        v42 = v44;
      }

      if (v27[v35] <= 3u)
      {
        v45 = v41;
      }

      else
      {
        v45 = v37;
      }

      if (v27[v35] <= 3u)
      {
        v46 = v42;
      }

      else
      {
        v46 = v38;
      }

      *&aBlock = v4;
      v48 = *(v4 + 16);
      v47 = *(v4 + 24);
      if (v48 >= v47 >> 1)
      {
        v81 = v31;
        v80 = v32;
        v79 = v28;
        v83 = v29;
        v82 = v30;
        v50 = v33;
        v78 = v34;
        sub_20CDB4650((v47 > 1), v48 + 1, 1);
        v34 = v78;
        v33 = v50;
        v32 = v80;
        v31 = v81;
        v30 = v82;
        v29 = v83;
        v28 = v79;
        v27 = v86;
        v4 = aBlock;
      }

      *(v4 + 16) = v48 + 1;
      v49 = v4 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      ++v35;
      --v26;
    }

    while (v26);

    v2 = v84;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  if (qword_27C811D18 != -1)
  {
    goto LABEL_58;
  }

LABEL_50:
  v51 = sub_20CE12CB4();
  __swift_project_value_buffer(v51, qword_27C8177B0);

  v52 = sub_20CE12C94();
  v53 = sub_20CE13CD4();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&aBlock = v55;
    *v54 = 136446466;
    v56 = sub_20CE14414();
    v58 = sub_20CD96DCC(v56, v57, &aBlock);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = MEMORY[0x20F312FD0](v4, MEMORY[0x277D837D0]);
    v61 = v60;

    v62 = sub_20CD96DCC(v59, v61, &aBlock);

    *(v54 + 14) = v62;
    _os_log_impl(&dword_20CD70000, v52, v53, "[%{public}s] Processing interruptions %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v55, -1, -1);
    MEMORY[0x20F314110](v54, -1, -1);
  }

  else
  {
  }

  v63 = v89;
  v64 = v93;
  v66 = v91;
  v65 = v92;
  [*(v2 + v95) copy];
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  sub_20CD83128(0, &qword_27C812CB0, 0x277CBEB70);
  swift_dynamicCast();
  v67 = v96;
  v68 = v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v69 = *(v68 + 8);
    v70 = swift_getObjectType();
    (*(v69 + 8))(v67, v70, v69);
    swift_unknownObjectRelease();
  }

  v71 = v87;
  *v87 = v90;
  v65(v71, v64, v63);
  v72 = sub_20CE13744();
  v66(v71, v63);
  if (v72)
  {
    v73 = *(v2 + v95);
    v101 = sub_20CDC18C0;
    v102 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v99 = sub_20CE01620;
    v100 = &block_descriptor_57;
    v74 = _Block_copy(&aBlock);
    v75 = objc_opt_self();
    v76 = v73;
    v77 = [v75 predicateWithBlock_];
    _Block_release(v74);

    [v76 filterUsingPredicate_];
  }

  else
  {
    __break(1u);
  }
}

id HearingTestInterruptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20CDBEDC8(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v24[6] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C8177B0);
  sub_20CD996F0(a1, v4);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  sub_20CD99704(a1, v4);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136446722;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CD96DCC(0xD00000000000001CLL, 0x800000020CE1E0D0, v24);
    *(v9 + 22) = 2080;
    v14 = sub_20CDF7BCC(a1, v4);
    v16 = sub_20CD96DCC(v14, v15, v24);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] %s called with: %s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  if ((v4 >> 6) > 1u)
  {
    v18 = 8;
  }

  else if (v4 >> 6)
  {
    v18 = 2;
  }

  else
  {
    sub_20CDC1690(0, &unk_27C812B30, &type metadata for HearingTestInterruptionType, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CE16370;
    *(inited + 32) = 2;
    v18 = 3;
    if (v4)
    {
      inited = sub_20CD89904(1, 2, 1, inited);
      *(inited + 16) = 2;
      *(inited + 33) = 3;
      v18 = 8;
    }

    v19 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
    v20 = *(v3 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
    LOBYTE(v24[0]) = *(inited + 32);
    v21 = v20;
    [v21 removeObject_];

    swift_unknownObjectRelease();
    if (v4)
    {
      v22 = *(v3 + v19);
      LOBYTE(v24[0]) = *(inited + 33);
      v23 = v22;
      [v23 removeObject_];

      swift_unknownObjectRelease();
    }
  }

  LOBYTE(v24[0]) = v18;
  sub_20CDBE3D0(v24);
}

void HearingTestInterruptionManager.noiseStatusChanged(status:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_currentNoiseStatus;
  swift_beginAccess();
  sub_20CD85764(a1, v41);
  sub_20CDC1148(v1 + v4, v37, &qword_27C812308, &type metadata for NoiseStatus);
  sub_20CDC1148(v41, &v39, &qword_27C812308, &type metadata for NoiseStatus);
  if (v38 == 255)
  {
    sub_20CDC11C8(v41, &qword_27C812308, &type metadata for NoiseStatus);
    if (v40[24] == 255)
    {
      sub_20CDC11C8(v37, &qword_27C812308, &type metadata for NoiseStatus);
      return;
    }
  }

  else
  {
    sub_20CDC1148(v37, v36, &qword_27C812308, &type metadata for NoiseStatus);
    if (v40[24] != 255)
    {
      v34 = v39;
      v35[0] = *v40;
      *(v35 + 9) = *&v40[9];
      v5 = _s13HearingTestUI11NoiseStatusO2eeoiySbAC_ACtFZ_0(v36, &v34);
      sub_20CD85934(&v34);
      sub_20CDC11C8(v41, &qword_27C812308, &type metadata for NoiseStatus);
      sub_20CD85934(v36);
      sub_20CDC11C8(v37, &qword_27C812308, &type metadata for NoiseStatus);
      if (v5)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_20CDC11C8(v41, &qword_27C812308, &type metadata for NoiseStatus);
    sub_20CD85934(v36);
  }

  sub_20CDC1238(v37);
LABEL_9:
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C8177B0);
  sub_20CD85764(a1, v37);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36[0] = v10;
    *v9 = 136446466;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, v36);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_20CD85764(v37, v41);
    v14 = sub_20CE13974();
    v16 = v15;
    sub_20CD85934(v37);
    v17 = sub_20CD96DCC(v14, v16, v36);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Noise status changed to: %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  else
  {

    sub_20CD85934(v37);
  }

  sub_20CD85764(a1, v37);
  if (v38)
  {
    sub_20CD85934(v37);
    if (*(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager))
    {
      v18 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(ObjectType, v18);
      sub_20CD85764(a1, v37);
      sub_20CDAA09C(v37, v41);
      sub_20CD8F034(v41);

      __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }

    v20 = 4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v21 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
    LOBYTE(v37[0]) = 4;
    v22 = v21;
    [v22 removeObject_];

    swift_unknownObjectRelease();
    v20 = 8;
  }

  sub_20CD85764(a1, v37);
  swift_beginAccess();
  sub_20CDC131C(v37, v2 + v4);
  swift_endAccess();
  v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v24 = sub_20CE13914();
  v25 = [v23 initWithSuiteName_];

  if (v25)
  {
    v26 = sub_20CE0F3A8();

    if (v26)
    {
      v27 = sub_20CE12C94();
      v28 = sub_20CE13CD4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *&v37[0] = v30;
        *v29 = 136446210;
        v31 = sub_20CE14414();
        v33 = sub_20CD96DCC(v31, v32, v37);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_20CD70000, v27, v28, "[%{public}s] Ignoring noise status change because disableNoiseInterruptions is turned on.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x20F314110](v30, -1, -1);
        MEMORY[0x20F314110](v29, -1, -1);
      }
    }

    else
    {
      LOBYTE(v37[0]) = v20;
      sub_20CDBE3D0(v37);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDBF734(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20CDA3DD4(a1, a2, WitnessTable);
}

uint64_t sub_20CDBF830(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  v37 = a1;
  v7 = v4;
  swift_getObjectType();
  v8 = sub_20CE136C4();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20CE136E4();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v14 = sub_20CE12CB4();
  __swift_project_value_buffer(v14, qword_27C8177B0);
  v15 = sub_20CE12C94();
  v16 = sub_20CE13CD4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = a3;
    v18 = v17;
    v34 = v17;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v18 = 136446210;
    v19 = sub_20CE14414();
    v21 = v7;
    v22 = v13;
    v23 = v10;
    v24 = v8;
    v25 = a4;
    v26 = sub_20CD96DCC(v19, v20, aBlock);

    v27 = v34;
    *(v34 + 4) = v26;
    a4 = v25;
    v8 = v24;
    v10 = v23;
    v13 = v22;
    v7 = v21;
    _os_log_impl(&dword_20CD70000, v15, v16, v37, v27, 0xCu);
    v28 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x20F314110](v28, -1, -1);
    a3 = v36;
    MEMORY[0x20F314110](v27, -1, -1);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v7;
  aBlock[4] = a3;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = a4;
  v30 = _Block_copy(aBlock);
  v31 = v7;
  sub_20CE136D4();
  v41 = MEMORY[0x277D84F90];
  sub_20CDC17A0(&qword_27C812AB8, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v32 = MEMORY[0x277D85198];
  sub_20CDC1084(0, &qword_27C812AC0, MEMORY[0x277D85198]);
  sub_20CDC13EC(&qword_27C812AC8, &qword_27C812AC0, v32);
  sub_20CE14044();
  MEMORY[0x20F313260](0, v13, v10, v30);
  _Block_release(v30);
  (*(v40 + 8))(v10, v8);
  (*(v38 + 8))(v13, v39);
}

Swift::Void __swiftcall HearingTestInterruptionManager.sendMockInterrupt(type:)(HearingTestUI::HearingTestInterruptionType type)
{
  v2 = v1;
  v3 = type;
  swift_getObjectType();
  v4 = sub_20CE136C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE136E4();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v12 = sub_20CE12CB4();
  __swift_project_value_buffer(v12, qword_27C8177B0);
  v13 = sub_20CE12C94();
  v14 = sub_20CE13CD4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v5;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136446466;
    v18 = sub_20CE14414();
    v20 = sub_20CD96DCC(v18, v19, aBlock);
    v35 = v2;
    v21 = v10;
    v22 = v7;
    v23 = v4;
    v24 = v11;
    v25 = v20;

    *(v15 + 4) = v25;
    *(v15 + 12) = 2080;
    LOBYTE(v39) = v24;
    v26 = sub_20CE13974();
    v28 = sub_20CD96DCC(v26, v27, aBlock);
    v11 = v24;
    v4 = v23;
    v7 = v22;
    v10 = v21;
    v2 = v35;

    *(v15 + 14) = v28;
    _os_log_impl(&dword_20CD70000, v13, v14, "[%{public}s] Sending mock interrupt %s", v15, 0x16u);
    swift_arrayDestroy();
    v29 = v17;
    v5 = v36;
    MEMORY[0x20F314110](v29, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v2;
  *(v30 + 24) = v11;
  aBlock[4] = sub_20CDC13A4;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_18;
  v31 = _Block_copy(aBlock);
  v32 = v2;
  sub_20CE136D4();
  v39 = MEMORY[0x277D84F90];
  sub_20CDC17A0(&qword_27C812AB8, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v33 = MEMORY[0x277D85198];
  sub_20CDC1084(0, &qword_27C812AC0, MEMORY[0x277D85198]);
  sub_20CDC13EC(&qword_27C812AC8, &qword_27C812AC0, v33);
  sub_20CE14044();
  MEMORY[0x20F313260](0, v10, v7, v31);
  _Block_release(v31);
  (*(v5 + 8))(v7, v4);
  (*(v37 + 8))(v10, v38);
}

Swift::Void __swiftcall HearingTestInterruptionManager.recoverMockInterrupt(type:)(HearingTestUI::HearingTestInterruptionType type)
{
  v2 = type;
  v3 = sub_20CE136C4();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20CE136E4();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v9;
  aBlock[4] = sub_20CDC13E0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_24;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  sub_20CE136D4();
  v17 = MEMORY[0x277D84F90];
  sub_20CDC17A0(&qword_27C812AB8, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v13 = MEMORY[0x277D85198];
  sub_20CDC1084(0, &qword_27C812AC0, MEMORY[0x277D85198]);
  sub_20CDC13EC(&qword_27C812AC8, &qword_27C812AC0, v13);
  sub_20CE14044();
  MEMORY[0x20F313260](0, v8, v5, v11);
  _Block_release(v11);
  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);
}

void sub_20CDC0410(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
  v4[1] = a2;
  v3 = v2;
  [v3 removeObject_];

  swift_unknownObjectRelease();
  v4[0] = 8;
  sub_20CDBE3D0(v4);
}

char *HearingTestInterruptionManager.__allocating_init(supportsMockInterruptions:delegate:)(int a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  v23 = a1;
  v21 = sub_20CE13D34();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE13D14();
  MEMORY[0x28223BE20](v6);
  v7 = sub_20CE136E4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for HearingTestInterruptionManager();
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v22 = v8;
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
  *&v9[v10] = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
  v20 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue;
  v11 = sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  v19[1] = "ptionManager";
  v19[2] = v11;
  sub_20CE136D4();
  v27 = MEMORY[0x277D84F90];
  sub_20CDC17A0(&qword_27C812C70, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v12 = MEMORY[0x277D85230];
  sub_20CDC1084(0, &qword_27C812C78, MEMORY[0x277D85230]);
  sub_20CDC13EC(&qword_27C812C80, &qword_27C812C78, v12);
  sub_20CE14044();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v21);
  *&v9[v20] = sub_20CE13D64();
  v13 = &v9[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_currentNoiseStatus];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[40] = -1;
  *&v9[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_deviceManager] = 0;
  sub_20CDC08C0(v28, &v9[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_noiseStatusProvider]);
  v14 = 0;
  v15 = &v9[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager];
  *v15 = 0;
  v15[1] = 0;
  v16 = v23;
  v9[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_shouldOverrideInterrupts] = v23;
  if (v16)
  {
    v14 = [objc_allocWithZone(type metadata accessor for MockInterruptionProvider()) init];
  }

  *&v9[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider] = v14;
  v26.receiver = v9;
  v26.super_class = v22;
  v17 = objc_msgSendSuper2(&v26, sel_init);
  sub_20CDC16E8(v28, &qword_27C812C30, &unk_27C812C38, &protocol descriptor for NoiseStatusProviding, sub_20CD83038);
  *&v17[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8] = v24;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_20CDC08C0(uint64_t a1, uint64_t a2)
{
  sub_20CDC1744(0, &qword_27C812C30, &unk_27C812C38, &protocol descriptor for NoiseStatusProviding, sub_20CD83038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CDC0950(void *a1, void *a2, uint64_t a3)
{
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C8177C8);
  v7 = a2;
  v8 = a1;
  v9 = sub_20CE12C94();
  v10 = sub_20CE13CD4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v11 = 136446722;
    nullsub_1();
    v13 = sub_20CE14414();
    v15 = sub_20CD96DCC(v13, v14, aBlock);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    type metadata accessor for HearingTestInterruptionManager();
    v16 = v8;
    v17 = sub_20CE13974();
    v19 = sub_20CD96DCC(v17, v18, aBlock);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v7;
    *v12 = a2;
    v20 = v7;
    _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] adding observer %s (queue: %@", v11, 0x20u);
    sub_20CDC16E8(v12, &qword_27C812CA0, &qword_27C813590, 0x277D82BB8, sub_20CD83128);
    MEMORY[0x20F314110](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v23, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
  }

  v21 = *(a3 + 56);
  [v21 registerObserver:v8 queue:v7];
  aBlock[4] = sub_20CDC18C4;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDF91D0;
  aBlock[3] = &block_descriptor_61;
  v22 = _Block_copy(aBlock);

  [v21 notifyObservers_];
  _Block_release(v22);
}

void sub_20CDC0C64(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C8177C8);
  v7 = a2;

  v8 = sub_20CE12C94();
  v9 = sub_20CE13CD4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v10 = 136446722;
    nullsub_1();
    v12 = sub_20CE14414();
    v14 = sub_20CD96DCC(v12, v13, aBlock);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource(0);

    v15 = sub_20CE13974();
    v17 = sub_20CD96DCC(v15, v16, aBlock);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2112;
    *(v10 + 24) = v7;
    *v11 = a2;
    v18 = v7;
    _os_log_impl(&dword_20CD70000, v8, v9, "[%{public}s] adding observer %s (queue: %@", v10, 0x20u);
    sub_20CDC16E8(v11, &qword_27C812CA0, &qword_27C813590, 0x277D82BB8, sub_20CD83128);
    MEMORY[0x20F314110](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v21, -1, -1);
    MEMORY[0x20F314110](v10, -1, -1);
  }

  v19 = *(a3 + 56);
  [v19 registerObserver:a1 queue:v7];
  aBlock[4] = sub_20CDC16E0;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDF91D0;
  aBlock[3] = &block_descriptor_54;
  v20 = _Block_copy(aBlock);

  [v19 notifyObservers_];
  _Block_release(v20);
}

uint64_t sub_20CDC0F80(void *a1, void *a2, uint64_t a3)
{
  v12[3] = type metadata accessor for HearingTestInterruptionManager();
  v12[4] = &protocol witness table for HearingTestInterruptionManager;
  v12[0] = a1;
  sub_20CD7C388(v12, v11);
  v6 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
  swift_beginAccess();
  v7 = a1;
  sub_20CDC17E8(v11, a3 + v6);
  swift_endAccess();
  v8 = *(a3 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue);
  *(a3 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue) = a2;

  v9 = a2;
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_20CDC1084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CDC1148(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_20CDC1690(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CDC11C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_20CDC1690(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CDC1238(uint64_t a1)
{
  sub_20CDC1294(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CDC1294(uint64_t a1)
{
  if (!qword_27C812C58)
  {
    sub_20CDC1690(255, &qword_27C812308, &type metadata for NoiseStatus, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C812C58);
    }
  }
}

uint64_t sub_20CDC131C(uint64_t a1, uint64_t a2)
{
  sub_20CDC1690(0, &qword_27C812308, &type metadata for NoiseStatus, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDC13EC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_20CDC1084(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CDC143C(uint64_t a1, uint64_t a2)
{
  result = sub_20CDC17A0(&qword_27C812C90, a2, type metadata accessor for HearingTestInterruptionManager, &protocol conformance descriptor for HearingTestInterruptionManager);
  *(a1 + 8) = result;
  return result;
}

void sub_20CDC1690(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CDC16E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_20CDC1744(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_20CDC1744(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_20CE13F44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20CDC17A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_20CDC17E8(uint64_t a1, uint64_t a2)
{
  sub_20CDC1744(0, &qword_27C812CB8, &qword_27C812CC0, &protocol descriptor for MockInterruptionObserving, sub_20CD83038);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20CDC18C8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_getObjectType();
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C817780);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v63 = v10;
    *v9 = 136446722;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, &v63);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CD96DCC(0xD000000000000029, 0x800000020CE1E290, &v63);
    *(v9 + 22) = 2080;
    v14 = sub_20CDD108C(a2);
    v16 = sub_20CD96DCC(v14, v15, &v63);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] %s called with %s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  v17 = *&v4[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8];
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 8);
  v20 = v19(ObjectType, v17);
  *&v63 = 0x7466654C6C616573;
  *(&v63 + 1) = 0xE800000000000000;
  v21 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (*(&v62 + 1))
  {
    v22 = swift_dynamicCast();
    v23 = v59;
    if (!v22)
    {
      v23 = 0;
    }

    v24 = v22 ^ 1;
  }

  else
  {
    sub_20CD8CFF0(&v63);
    v23 = 0;
    v24 = 1;
  }

  v25 = v20 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreLeft;
  *v25 = v23;
  *(v25 + 8) = v24;

  v26 = v19(ObjectType, v17);
  *&v63 = 0x686769526C616573;
  *(&v63 + 1) = 0xE900000000000074;
  v27 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (*(&v62 + 1))
  {
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v30 = v28 ^ 1;
  }

  else
  {
    sub_20CD8CFF0(&v63);
    v29 = 0;
    v30 = 1;
  }

  v31 = v26 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreRight;
  *v31 = v29;
  *(v31 + 8) = v30;

  v32 = v19(ObjectType, v17);
  strcpy(&v63, "confidenceLeft");
  HIBYTE(v63) = -18;
  v33 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v33)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (*(&v62 + 1))
  {
    v34 = swift_dynamicCast();
    v35 = v59;
    if (!v34)
    {
      v35 = 0;
    }

    v36 = v34 ^ 1;
  }

  else
  {
    sub_20CD8CFF0(&v63);
    v35 = 0;
    v36 = 1;
  }

  v37 = v32 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreLeft;
  *v37 = v35;
  *(v37 + 8) = v36;

  v38 = v19(ObjectType, v17);
  *&v63 = 0x6E656469666E6F63;
  *(&v63 + 1) = 0xEF74686769526563;
  v39 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v39)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (*(&v62 + 1))
  {
    v40 = swift_dynamicCast();
    v41 = v59;
    if (!v40)
    {
      v41 = 0;
    }

    v42 = v40 ^ 1;
  }

  else
  {
    sub_20CD8CFF0(&v63);
    v41 = 0;
    v42 = 1;
  }

  v43 = v38 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreRight;
  *v43 = v41;
  *(v43 + 8) = v42;

  if (!a2)
  {
    strcpy(&v61, "fitCheckResult");
    HIBYTE(v61) = -18;
    v45 = [a3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v45)
    {
      sub_20CE13FC4();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63 = v61;
    v64 = v62;
    if (*(&v62 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v59 == 6578498 && v60 == 0xE300000000000000)
        {

          v53 = 14;
LABEL_62:
          LOBYTE(v63) = v53;
          (*(v17 + 56))(&v63, ObjectType, v17);
          goto LABEL_63;
        }

        v55 = sub_20CE14284();

        if (v55)
        {
          v53 = 14;
          goto LABEL_62;
        }
      }
    }

    else
    {
      sub_20CD8CFF0(&v63);
    }

    *&v61 = 0xD000000000000010;
    *(&v61 + 1) = 0x800000020CE1E2C0;
    v54 = [a3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_20CE13FC4();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63 = v61;
    v64 = v62;
    if (*(&v62 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v59 == 6578498 && v60 == 0xE300000000000000)
        {

          v53 = 15;
          goto LABEL_62;
        }

        v56 = sub_20CE14284();

        if (v56)
        {
          v53 = 15;
          goto LABEL_62;
        }
      }
    }

    else
    {
      sub_20CD8CFF0(&v63);
    }

    v53 = 9;
    goto LABEL_62;
  }

  if (a2 == 1)
  {
    LOBYTE(v63) = 8;
    (*(v17 + 56))(&v63, ObjectType, v17);
    LOBYTE(v63) = 1;
    v44 = a1;
    sub_20CDE49CC(v44, &v63, v4, v44);

    return;
  }

  v46 = sub_20CE12C94();
  v47 = sub_20CE13CB4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v63 = v49;
    *v48 = 136446466;
    v50 = sub_20CE14414();
    v52 = sub_20CD96DCC(v50, v51, &v63);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_20CD96DCC(0xD000000000000029, 0x800000020CE1E290, &v63);
    _os_log_impl(&dword_20CD70000, v46, v47, "[%{public}s] %s cancelling flow due to unhandled FitNoiseCheckStatus case.", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v49, -1, -1);
    MEMORY[0x20F314110](v48, -1, -1);
  }

LABEL_63:
  sub_20CDDE960();
}

void sub_20CDC22BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return;
  }

  v7 = [v6 buttonTray];
  if (!v7)
  {
    return;
  }

  if (a4 == 1)
  {
    v8 = &selRef_showButtonsBusy;
    goto LABEL_8;
  }

  if (a4 == 2)
  {
    v8 = &selRef_showButtonsAvailable;
LABEL_8:
    v9 = v7;
    [v7 *v8];
    v7 = v9;
  }
}

void sub_20CDC253C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1E270, &v12);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called. Cancelling flow.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v13 = 4;
  (*(v10 + 56))(&v13, ObjectType, v10);

  sub_20CDDE960();
}

uint64_t static FeatureRegulatoryAboutView.makeHearingTestAboutView(healthStore:logger:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_20CDC2BE4(0);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20CE12CB4();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2;
  v11 = sub_20CE12C94();
  v12 = sub_20CE13CD4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1E2E0, v33);
    _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] Making Hearing Test regulated feature view.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x20F314110](v14, -1, -1);
    MEMORY[0x20F314110](v13, -1, -1);
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCD438]) initWithFeatureIdentifier:*MEMORY[0x277CCC058] healthStore:a1];
  sub_20CE12A34();
  swift_allocObject();
  v16 = sub_20CE12A44();
  v17 = [objc_allocWithZone(MEMORY[0x277CCD090]) init];
  type metadata accessor for HearingTestDeviceManager();
  swift_allocObject();
  v18 = sub_20CDFA58C(v16, v17, 0xD00000000000001ALL, 0x800000020CE1E2E0);

  v19 = *(v7 + 16);
  v20 = v9;
  v21 = v9;
  v22 = v30;
  v19(v21, v10, v30);
  type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource(0);
  swift_allocObject();
  v23 = v15;

  sub_20CDC3488(v23, v18, v20);

  sub_20CDC373C(&qword_27C812450, type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource, &unk_20CE18358);
  v19(v20, v10, v22);
  sub_20CE137E4();
  swift_allocObject();
  v29[1] = sub_20CE137D4();
  v24 = type metadata accessor for HearingTestFeatureRegulatoryInfoTransformProvider(0);
  swift_allocObject();
  v25 = a1;
  v26 = sub_20CE13814();
  v33[3] = v24;
  v33[4] = MEMORY[0x277D12718];
  v33[0] = v26;
  v27 = sub_20CE13754();
  (*(*(v27 - 8) + 56))(v31, 1, 1, v27);
  v19(v20, v10, v22);
  sub_20CE13794();
}

void sub_20CDC2BE4(uint64_t a1)
{
  if (!qword_27C812D40)
  {
    sub_20CE13754();
    v1 = sub_20CE13F44();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812D40);
    }
  }
}

uint64_t sub_20CDC2C70()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CDC2D38()
{
  sub_20CE13824();

  return swift_deallocClassInstance();
}

id sub_20CDC2D68()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v12[0] = 0;
  v2 = [v1 pairedFeatureAttributesWithError_];
  v3 = v12[0];
  if (v2)
  {
    v4 = v2;
    v5 = *(v0 + 32);
    if (v5)
    {
      sub_20CDC3784();
      v6 = v3;
      v7 = swift_unknownObjectRetain();
      v5 = sub_20CDC2EA4(v7);
    }

    else
    {
      v9 = v12[0];
    }

    v10 = [v4 localAttributes];
    v3 = [objc_allocWithZone(MEMORY[0x277CCD780]) initWithLocalAttributes:v10 pairedAttributes:v5];
  }

  else
  {
    v8 = v12[0];
    sub_20CE12394();

    swift_willThrow();
  }

  return v3;
}

id sub_20CDC2EA4(void *a1)
{
  v2 = _HKHearingTestAlgorithmVersionString();
  v3 = v2;
  v4 = v2;
  if (!v2)
  {
    sub_20CE13954();
    v4 = sub_20CE13914();

    sub_20CE13954();
    v3 = sub_20CE13914();
  }

  v5 = v2;
  v6 = [a1 firmwareVersion];
  if (v6)
  {
    v7 = v6;
    sub_20CE13954();
  }

  v8 = *MEMORY[0x277D11258];
  v9 = sub_20CE13914();

  v10 = HKFeatureUpdateVersionFromMajorVersionAndBuildVersion();

  v11 = v10;
  v12 = v10;
  if (!v10)
  {
    sub_20CE13954();
    v12 = sub_20CE13914();

    sub_20CE13954();
    v11 = sub_20CE13914();
  }

  v13 = v10;
  v14 = HKUDIDeviceIdentifierFromDeviceIdentifierAndBatchNumber();

  if (!v14)
  {
    sub_20CE13954();
    v14 = sub_20CE13914();
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = *MEMORY[0x277CCBBD0];
  v17 = [v15 initWithFeatureVersion:v3 updateVersion:v11 UDIDeviceIdentifier:v14 yearOfRelease:v16];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_20CDC30A8()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC13HearingTestUIP33_116C8C56BE95EDEDF8D44CEE6DB6B8A850HearingTestPairedDeviceFeatureAttributesDataSource_logger;
  v2 = sub_20CE12CB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_20CDC3168()
{
  result = *(v0 + 32);
  if (result)
  {
    result = [result productName];
    if (result)
    {
      v2 = result;
      v3 = sub_20CE13954();

      return v3;
    }
  }

  return result;
}

uint64_t sub_20CDC31EC()
{
  sub_20CDC36D8();
  sub_20CDC373C(&qword_27C812DA0, sub_20CDC36D8, MEMORY[0x277CBCE20]);
  return sub_20CE12E34();
}

uint64_t sub_20CDC3268(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  sub_20CD996F0(a1, a2);
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();
  sub_20CD99704(a1, v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446466;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = sub_20CDF7BCC(a1, v4);
    v15 = sub_20CD96DCC(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] Device check mode did change: (%{public}s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  if (*(*(v3 + 24) + 24) > 0x3Fu)
  {
    v16 = 0;
  }

  else
  {
    v16 = swift_unknownObjectRetain();
  }

  *(v3 + 32) = v16;
  swift_unknownObjectRelease();
  sub_20CDC36D8();
  sub_20CDC373C(&qword_27C812DA8, sub_20CDC36D8, MEMORY[0x277CBCE18]);
  return sub_20CE12E24();
}

char *sub_20CDC3488(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = 0;
  sub_20CDC36D8();
  swift_allocObject();
  v8 = a1;

  *(v4 + 5) = sub_20CE12DC4();
  v9 = OBJC_IVAR____TtC13HearingTestUIP33_116C8C56BE95EDEDF8D44CEE6DB6B8A850HearingTestPairedDeviceFeatureAttributesDataSource_logger;
  v10 = sub_20CE12CB4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a3, v10);

  sub_20CDC0C64(v12, 0, a2);

  (*(v11 + 8))(a3, v10);
  return v4;
}

uint64_t sub_20CDC3620(uint64_t a1)
{
  result = sub_20CE12CB4();
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

void sub_20CDC36D8()
{
  if (!qword_27C812D98)
  {
    v0 = sub_20CE12DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812D98);
    }
  }
}

uint64_t sub_20CDC373C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20CDC3784()
{
  result = qword_27C812DB0;
  if (!qword_27C812DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812DB0);
  }

  return result;
}

uint64_t sub_20CDC37D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277D85720];
  v9 = MEMORY[0x277D83D88];
  sub_20CDCB5A8(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v23 - v11;
  sub_20CDCB6CC(a3, v23 - v11, &qword_27C811EA0, v8, v9, sub_20CDCB5A8);
  v13 = sub_20CE13BB4();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    sub_20CDCB994(v12, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDCB5A8);
  }

  else
  {
    sub_20CE13BA4();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20CE13B24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20CE13994() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_20CDCB994(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDCB5A8);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CDCB994(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDCB5A8);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_20CDC3B78()
{
  v0 = type metadata accessor for HearingTestOptions();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = 1;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_27C812DC0 = result;
  return result;
}

id HearingTestOptions.__allocating_init(rawValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

char *sub_20CDC3C70()
{
  result = sub_20CDCAA9C(MEMORY[0x277D84F90]);
  qword_27C812DC8 = result;
  return result;
}

id sub_20CDC3CBC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_20CDC3D44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5, uint64_t a6)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a4 != -1)
  {
    swift_once();
  }

  v8 = *a5;

  return v8;
}

id HearingTestOptions.init(rawValue:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HearingTestOptions();
  return objc_msgSendSuper2(&v3, sel_init);
}

BOOL sub_20CDC3ED4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F70];
  sub_20CDCB6CC(a1, v7, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDCBB64);
  if (v8)
  {
    type metadata accessor for HearingTestOptions();
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
      v4 = *&v6[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

      return v3 == v4;
    }
  }

  else
  {
    sub_20CDCB994(v7, &qword_27C812D30, v2 + 8, MEMORY[0x277D83D88], sub_20CDCBB64);
  }

  return 0;
}

id HearingTestOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_20CDC412C@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for HearingTestOptions();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_20CDC4190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = sub_20CDCB740();

  return MEMORY[0x2821FE780](a1, WitnessTable, v3);
}

uint64_t sub_20CDC4200(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = type metadata accessor for HearingTestOptions();
  v5 = *(v2 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v6 = objc_allocWithZone(v4);
  *&v6[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v4;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *(v7 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);

  v9 = *(v3 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) & v8;
  v10 = objc_allocWithZone(v4);
  *&v10[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  LOBYTE(v2) = sub_20CE13E44();

  return v2 & 1;
}

void sub_20CDC42D8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_20CE143E4();
  v3 = *v2;
}

void sub_20CDC4360(void **a1, uint64_t a2, uint64_t a3, void (*a4)(void **, uint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  a4(a1, a2, WitnessTable);

  v9 = *a1;
}

BOOL sub_20CDC43E8(char ***a1, char **a2)
{
  v2 = *a2;
  v3 = sub_20CDC441C(a1, *a2);

  return v3;
}

BOOL sub_20CDC441C(char ***a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
  v7 = *(*v2 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v8 = type metadata accessor for HearingTestOptions();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v7;
  v23.receiver = v9;
  v23.super_class = v8;
  v10 = objc_msgSendSuper2(&v23, sel_init);
  v11 = *(v10 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);

  v12 = *&a2[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v12 & v11;
  v22.receiver = v13;
  v22.super_class = v8;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = sub_20CE13E44();
  if ((v15 & 1) == 0)
  {

    v16 = *&v5[v6];
    v14 = a2;

    v17 = objc_allocWithZone(v8);
    *&v17[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v16 | v12;
    v21.receiver = v17;
    v21.super_class = v8;
    v18 = objc_msgSendSuper2(&v21, sel_init);

    *v3 = v18;
  }

  *a1 = v14;
  return (v15 & 1) == 0;
}

id sub_20CDC4548@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20CDC4574(*a1);
  *a2 = result;
  return result;
}

id sub_20CDC4574(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
  v6 = *(*v1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v7 = type metadata accessor for HearingTestOptions();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v6;
  v33.receiver = v8;
  v33.super_class = v7;
  v9 = objc_msgSendSuper2(&v33, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

  v11 = *(a1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v12 = objc_allocWithZone(v7);
  *&v12[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v11 & v10;
  v32.receiver = v12;
  v32.super_class = v7;
  v13 = objc_msgSendSuper2(&v32, sel_init);
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = 0;
  v31.receiver = v14;
  v31.super_class = v7;
  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = sub_20CE13E44();

  if (v16)
  {

    return 0;
  }

  else
  {
    v17 = *&v4[v5];
    v18 = objc_allocWithZone(v7);
    *&v18[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v17;
    v30.receiver = v18;
    v30.super_class = v7;
    v19 = objc_msgSendSuper2(&v30, sel_init);
    v20 = *&v19[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

    v21 = objc_allocWithZone(v7);
    *&v21[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v20 ^ v11;
    v29.receiver = v21;
    v29.super_class = v7;
    v22 = objc_msgSendSuper2(&v29, sel_init);
    v23 = *&v4[v5];

    v24 = *(v22 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) & v23;
    v25 = objc_allocWithZone(v7);
    *&v25[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v24;
    v28.receiver = v25;
    v28.super_class = v7;
    v26 = objc_msgSendSuper2(&v28, sel_init);

    *v2 = v26;
  }

  return v13;
}

void sub_20CDC4718(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_20CDC4758(*a1);

  *a2 = v4;
}

id sub_20CDC4758(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
  v5 = *(*v1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v6 = type metadata accessor for HearingTestOptions();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v5;
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

  v10 = *(a1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v10 & v9;
  v20.receiver = v11;
  v20.super_class = v6;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v13 = *&v3[v4];

  v14 = objc_allocWithZone(v6);
  *&v14[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v13 | v10;
  v19.receiver = v14;
  v19.super_class = v6;
  *v1 = objc_msgSendSuper2(&v19, sel_init);
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = 0;
  v18.receiver = v15;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  LOBYTE(v6) = sub_20CE13E44();

  if (v6)
  {

    return 0;
  }

  return v12;
}

uint64_t sub_20CDC48A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = sub_20CDCB740();

  return MEMORY[0x2821FE768](a1, a2, WitnessTable, v5);
}

void sub_20CDC492C(void **a1, uint64_t a2, uint64_t a3, void (*a4)(void **, uint64_t, uint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v8 = sub_20CDCB740();
  a4(a1, a2, WitnessTable, v8);
  v9 = *a1;
}

void sub_20CDC49B0()
{
  sub_20CE13FF4();
  v1 = *v0;
}

uint64_t sub_20CDC4A20@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = sub_20CDCAA9C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_20CDC4AA8(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CDC4B08(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_importFlowProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CDC4BA0;
}

void sub_20CDC4BA0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_20CDC4C20()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton);
  }

  else
  {
    v4 = [objc_opt_self() boldButton];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id HearingTestMainViewController.__allocating_init(healthStore:entryPoint:options:articleProvider:importFlowProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_20CDCACA4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id HearingTestMainViewController.init(healthStore:entryPoint:options:articleProvider:importFlowProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_20CDCACA4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

id sub_20CDC4D80(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(type metadata accessor for HearingTestMainViewController());
  swift_unknownObjectRetain();
  v11 = a1;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = sub_20CDCACA4(v11, a2, v12, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v14 setModalInPresentation_];
  [v14 setModalPresentationStyle_];

  return v14;
}

uint64_t sub_20CDC51E0(unsigned __int8 *a1, char *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager;
  swift_beginAccess();
  LOBYTE(v12[0]) = v4;
  v13 = v3;

  v6 = sub_20CD8F120(v12, &v13);

  *(v6 + 40) = v3;
  v7 = *(v2 + v5);
  type metadata accessor for HearingTestFlowEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = *(v7 + 24);
  v12[4] = sub_20CDEA9B4;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_20CDEABD0;
  v12[3] = &block_descriptor_32_0;
  v10 = _Block_copy(v12);

  [v9 submitEvent:v8 completion:v10];
  _Block_release(v10);
}

void sub_20CDC534C()
{
  v1 = v0;
  sub_20CDCB5A8(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager;
  if (!*(v1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager))
  {
    __break(1u);
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  v8 = *(v1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager);
  swift_beginAccess();
  v9 = *(v8 + 32);

  sub_20CE124D4();
  v10 = sub_20CE124E4();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  v11 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_flowStartTime;
  swift_beginAccess();
  sub_20CD83094(v4, v9 + v11);
  swift_endAccess();

  v22[0] = 1;
  v21 = 0;
  sub_20CDC51E0(v22, &v21);
  v12 = *(v1 + v5);
  if (!v12)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  sub_20CDDB588(v22);
  sub_20CDDEAC4(v22);
  if (v14)
  {
    v15 = v14;

    [v7 pushViewController:v15 animated:1];
    v16 = *(v1 + v5);
    if (v16)
    {
      v17 = __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager], *&v16[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24]);
      v18 = *v17;
      *(*v17 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = &off_2823BCE30;
      swift_unknownObjectWeakAssign();
      *(*(v18 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = &off_2823BE868;
      swift_unknownObjectWeakAssign();
      v19 = v16;
      sub_20CDBD644();

      return;
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDC5678()
{
  v1 = v0;
  swift_getObjectType();
  sub_20CDCB5A8(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C817768);
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446210;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] User tapped to start test.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  v13 = sub_20CDC4C20();
  [v13 showsBusyIndicator];

  sub_20CD81FDC(0, &qword_27C812E60, &qword_27C812E68, &protocol descriptor for PreTestTask, MEMORY[0x277D84560]);
  result = swift_allocObject();
  *(result + 16) = xmmword_20CE183A0;
  v15 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_requirementStatusManager];
  *(result + 56) = &type metadata for EnsureSingleTest;
  *(result + 64) = &off_2823BE6C8;
  *(result + 32) = v15;
  *(result + 96) = &type metadata for ActivateDiscovery;
  *(result + 104) = &off_2823BCDA8;
  *(result + 72) = v15;
  v16 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager];
  if (v16)
  {
    v17 = result;
    v18 = *(v16 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager);
    v19 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager];
    *(result + 136) = &type metadata for CheckConnectedDevice;
    *(result + 144) = &off_2823BC428;
    *(result + 112) = v18;
    *(result + 120) = v19;
    *(result + 176) = &type metadata for CheckDeviceFault;
    *(result + 184) = &off_2823BCC00;
    *(result + 152) = v15;
    v20 = sub_20CE13BB4();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    sub_20CE13B84();
    swift_retain_n();

    v21 = v1;
    v22 = sub_20CE13B74();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v17;
    v23[5] = v21;
    sub_20CDC37D0(0, 0, v4, &unk_20CE185A0, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20CDC5A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for PreTestError(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  sub_20CE13B84();
  v5[9] = sub_20CE13B74();
  v7 = sub_20CE13B24();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_20CDC5AF8, v7, v6);
}

uint64_t sub_20CDC5AF8()
{
  v1 = v0[3];
  v2 = v1[2];
  v0[12] = v2;
  if (v2)
  {
    v0[13] = 0;
    v3 = v1[7];
    v4 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
    v10 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_20CDC5CC8;
    v6 = v0[8];

    return v10(v6, v3, v4);
  }

  else
  {

    sub_20CDC534C();
    v8 = sub_20CDC4C20();
    [v8 hidesBusyIndicator];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_20CDC5CC8()
{
  v2 = *v1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_20CDC5FE0;
  }

  else
  {
    v5 = sub_20CDC5E04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20CDC5E04()
{
  v1 = v0[13] + 1;
  if (v1 == v0[12])
  {

    sub_20CDC534C();
    v2 = sub_20CDC4C20();
    [v2 hidesBusyIndicator];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[13] = v1;
    v5 = (v0[3] + 40 * v1);
    v6 = v5[7];
    v7 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
    v10 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_20CDC5CC8;
    v9 = v0[8];

    return v10(v9, v6, v7);
  }
}

uint64_t sub_20CDC5FE0()
{
  v1 = *(v0 + 64);

  sub_20CDCB28C(&qword_27C812648, 255, type metadata accessor for PreTestError, &unk_20CE19018);
  v2 = swift_allocError();
  sub_20CD99634(v1, v3);
  *(v0 + 16) = v2;
  v4 = v2;
  sub_20CD83038(0, &qword_281111358, MEMORY[0x277D84948]);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 56);
    sub_20CD99634(*(v0 + 48), v5);
    sub_20CDC9EC0(v5);
    sub_20CDCB4D0(v5);

    v6 = sub_20CDC4C20();
    [v6 hidesBusyIndicator];
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20CDC61AC()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = ObjectType;
    aBlock[4] = sub_20CDCB588;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CD95834;
    aBlock[3] = &block_descriptor_5;
    v6 = _Block_copy(aBlock);

    [v3 didTapImportAudiogramLinkIn:v0 completion:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  LOBYTE(aBlock[0]) = 7;
  v8 = 0;
  return sub_20CDC51E0(aBlock, &v8);
}

void sub_20CDC62F8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager);
    v6 = Strong;
    v7 = v5;

    if (!v5)
    {
      __break(1u);
      goto LABEL_27;
    }

    v8 = *&v7[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram];
    *&v7[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram] = a1;
    v9 = a1;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = *(v10 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager);
  v12 = v10;
  v13 = v11;

  if (!v11)
  {
LABEL_27:
    __break(1u);
    return;
  }

  LOBYTE(v37[0]) = 9;
  sub_20CDDEAC4(v37);
  v15 = v14;

  if (v15)
  {
    if ([a1 leftEarDiagnostic] && objc_msgSend(a1, sel_rightEarDiagnostic))
    {
      if (qword_27C811D00 != -1)
      {
        swift_once();
      }

      v16 = sub_20CE12CB4();
      __swift_project_value_buffer(v16, qword_27C817768);
      v17 = sub_20CE12C94();
      v18 = sub_20CE13CD4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v37[0] = v20;
        *v19 = 136446210;
        v21 = sub_20CE14414();
        v23 = sub_20CD96DCC(v21, v22, v37);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_20CD70000, v17, v18, "[%{public}s] Showing results page as audiogram ingestion has completed.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x20F314110](v20, -1, -1);
        MEMORY[0x20F314110](v19, -1, -1);
      }

      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        v26 = [v24 navigationController];

        if (v26)
        {
          [v26 pushViewController:v15 animated:1];
        }
      }

      goto LABEL_24;
    }
  }

LABEL_17:
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v27 = sub_20CE12CB4();
  __swift_project_value_buffer(v27, qword_27C817768);
  v28 = sub_20CE12C94();
  v29 = sub_20CE13CD4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v30 = 136446210;
    v32 = sub_20CE14414();
    v34 = sub_20CD96DCC(v32, v33, v37);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_20CD70000, v28, v29, "[%{public}s] Asking our presenter to dismiss us as audiogram ingestion has completed and we don't have results to show.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x20F314110](v31, -1, -1);
    MEMORY[0x20F314110](v30, -1, -1);
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v15 = [v35 presentingViewController];

    if (v15)
    {
      [v15 dismissViewControllerAnimated:1 completion:0];
LABEL_24:
    }
  }
}

uint64_t sub_20CDC672C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v7 = a1;
  sub_20CE13FC4();
  v8 = swift_unknownObjectRelease();
  a5(v8);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

void sub_20CDC6814()
{
  v1 = v0;
  v73 = sub_20CE13D34();
  v72 = *(v73 - 1);
  MEMORY[0x28223BE20](v73);
  v71 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20CE13D14();
  MEMORY[0x28223BE20](v70);
  v3 = sub_20CE136E4();
  MEMORY[0x28223BE20](v3 - 8);
  v66 = [v0 navigationController];
  if (v66)
  {
    v75 = type metadata accessor for HearingTestFlowManager(0);
    v82[0] = v75;
    sub_20CDCBA0C();
    v4 = sub_20CE13974();
    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_requirementStatusManager];
    v8 = objc_allocWithZone(MEMORY[0x277CCD090]);

    v9 = [v8 init];
    type metadata accessor for HearingTestDeviceManager();
    swift_allocObject();
    v10 = sub_20CDFA58C(v7, v9, v4, v6);

    v82[3] = sub_20CE12A34();
    v82[4] = &protocol witness table for HTRequirementStatusManager;
    v82[0] = v7;
    v69 = v1;
    v68 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager;
    v11 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager];
    v67 = type metadata accessor for HearingTestInterruptionManager();
    v12 = objc_allocWithZone(v67);
    v13 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
    v14 = objc_allocWithZone(MEMORY[0x277CBEB40]);
    v74 = v7;
    swift_retain_n();

    *&v12[v13] = [v14 init];
    v15 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue;
    sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
    sub_20CE136D4();
    v78[0] = MEMORY[0x277D84F90];
    sub_20CDCB28C(&qword_27C812C70, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    sub_20CDCB5A8(0, &qword_27C812C78, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    sub_20CDCBA54();
    sub_20CE14044();
    (*(v72 + 104))(v71, *MEMORY[0x277D85260], v73);
    *&v12[v15] = sub_20CE13D64();
    v16 = &v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_currentNoiseStatus];
    *v16 = 0u;
    *(v16 + 1) = 0u;
    *(v16 + 4) = 0;
    v16[40] = -1;
    *&v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_deviceManager] = v10;
    sub_20CDC08C0(v82, &v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_noiseStatusProvider]);
    v17 = &v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager];
    *v17 = v11;
    v17[1] = &off_2823BE0C0;
    v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v19 = sub_20CE13914();
    v20 = [v18 initWithSuiteName_];

    if (v20)
    {
      v73 = "fitConfidenceScoreRight";
      v21 = sub_20CE0F2C4();

      v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_shouldOverrideInterrupts] = v21 & 1;
      v22 = 0;
      if (v21)
      {
        v22 = [objc_allocWithZone(type metadata accessor for MockInterruptionProvider()) init];
      }

      v23 = v75;
      v24 = v74;
      *&v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider] = v22;
      v81.receiver = v12;
      v81.super_class = v67;
      v25 = objc_msgSendSuper2(&v81, sel_init);

      sub_20CDCBADC(v82);
      v26 = v69;
      v27 = v68;
      v28 = *&v69[v68];

      v29 = sub_20CDCA990(v25, v24, v28, v10);
      v30 = *&v26[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_healthStore];
      v72 = v10;
      v31 = *&v26[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_application];
      v32 = *&v26[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_featureStatus];
      v33 = *&v26[v27];
      sub_20CD7C388(&v26[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_articlePresenter], v82);
      v34 = type metadata accessor for HearingTestInterruptionViewControllerManager();
      v79 = v34;
      v80 = &off_2823BE878;
      v78[0] = v29;
      v35 = objc_allocWithZone(v23);
      v36 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
      v70 = &v64;
      MEMORY[0x28223BE20](v36);
      v38 = (&v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v39 + 16))(v38);
      v40 = *v38;
      v77[4] = &off_2823BE878;
      v77[3] = v34;
      v77[0] = v40;
      v41 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails;
      *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails] = 0;
      *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram] = 0;
      v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous] = 0;
      v64 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_navigationController;
      swift_unknownObjectWeakInit();
      v42 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v67 = v30;
      v65 = v31;
      v71 = v32;

      v68 = v33;

      v43 = sub_20CE13914();
      v44 = [v42 initWithSuiteName_];

      if (v44)
      {
        *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_defaults] = v44;
        v45 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer;
        sub_20CE128C4();
        swift_allocObject();
        *&v35[v45] = sub_20CE128D4();
        v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled] = 0;
        v46 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_hearingTestStartDate;
        v47 = sub_20CE124E4();
        (*(*(v47 - 8) + 56))(&v35[v46], 1, 1, v47);
        v48 = &v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultsProcessor];
        sub_20CDCBB64(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
        v50 = v49;
        v51 = MEMORY[0x277D84F90];
        *&v48[v49[7]] = MEMORY[0x277D84F90];
        *&v48[v49[8]] = v51;
        *&v48[v49[9]] = v51;
        *&v48[v49[10]] = v51;
        *&v48[v49[11]] = v51;
        v52 = *MEMORY[0x277D12C48];
        v53 = sub_20CE12644();
        (*(*(v53 - 8) + 104))(v48, v52, v53);
        v54 = &v48[v50[12]];
        *v54 = 0;
        v54[8] = 1;
        v55 = &v48[v50[13]];
        *v55 = 0;
        v55[8] = 1;
        type metadata accessor for ResultsProcessor(0);
        swift_storeEnumTagMultiPayload();
        *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_stepsToSkip] = v51;
        v56 = v67;
        *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore] = v67;
        v57 = v65;
        *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_application] = v65;
        v58 = v66;
        swift_unknownObjectWeakAssign();
        *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_featureStatus] = v71;
        *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager] = v74;
        *&v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager] = v72;
        sub_20CD7C388(v82, &v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_articlePresenter]);
        sub_20CD7C388(v77, &v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager]);
        *&v35[v41] = 0;

        v59 = v56;
        v60 = v57;

        v61 = &v35[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
        *v61 = v68;
        v61[1] = &off_2823BE0C0;
        v76.receiver = v35;
        v76.super_class = v75;
        v62 = objc_msgSendSuper2(&v76, sel_init);

        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        v63 = *&v26[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager];
        *&v26[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager] = v62;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  sub_20CE141B4();
  __break(1u);
}

void sub_20CDC734C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:0 action:0];
  v4 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
  v3 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase + 8];
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D84560];
  sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = 0x6C65636E6143;
  *(v7 + 56) = 0xE600000000000000;
  v27[0] = v7;
  sub_20CDCBB64(0, &qword_27C8121F0, v5, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v8 = v2;

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [v8 setAccessibilityIdentifier_];

  sub_20CD83128(0, &qword_27C812C10, 0x277D750C8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_20CE13E54();
  [v8 setPrimaryAction_];

  sub_20CDCBB64(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, v6);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20CE183B0;
  *(v12 + 32) = v8;
  v28 = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = v8;
  v15 = sub_20CE13914();
  v16 = [v13 initWithSuiteName_];

  if (v16)
  {
    sub_20CE11910();
    v18 = v17;

    if (v18)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20CE16F10;
      v27[3] = type metadata accessor for HearingTestMainViewController();
      v27[0] = v1;
      v20 = v1;
      v21 = sub_20CDEA770(v27, sel_invokeTapToRadar);
      sub_20CDCB994(v27, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDCBB64);
      *(inited + 32) = v21;
      v22 = sub_20CE13914();
      v23 = [objc_opt_self() systemImageNamed_];

      v24 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v23 style:0 target:v20 action:sel_didTapDebugVFXView];
      *(inited + 40) = v24;
      sub_20CDE52A4(inited);
    }

    v25 = [v1 navigationItem];
    sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
    v26 = sub_20CE13AA4();

    [v25 setRightBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDC77B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      sub_20CDDE960();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_20CDC7834()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_20CDCB5A8(0, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v27 - v3;
  sub_20CDCB794(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB82C(0);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB8C4(0);
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v15 = sub_20CE13914();

  v16 = sub_20CE13914();
  v17 = sub_20CE13914();
  [v1 addBulletedListItemWithTitle:v15 description:v16 symbolName:v17];

  v34 = *(*&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_featureStatus] + 32);
  sub_20CDA3448();
  sub_20CDCB28C(&qword_27C812E80, 255, sub_20CDA3448, MEMORY[0x277CBCE48]);

  sub_20CE12E54();

  sub_20CDCB28C(&qword_27C812E90, 255, sub_20CDCB794, MEMORY[0x277CBCC90]);
  sub_20CE12E44();
  (*(v6 + 8))(v8, v5);
  v18 = [objc_opt_self() mainRunLoop];
  v34 = v18;
  v19 = sub_20CE13F34();
  v20 = v30;
  (*(*(v19 - 8) + 56))(v30, 1, 1, v19);
  sub_20CD83128(0, &qword_27C812818, 0x277CBEB88);
  sub_20CDCB28C(&qword_27C812EA0, 255, sub_20CDCB82C, MEMORY[0x277CBCC58]);
  sub_20CDA33E0();
  v21 = v29;
  sub_20CE12E64();
  sub_20CDCB994(v20, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88], sub_20CDCB5A8);

  (*(v28 + 8))(v11, v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = ObjectType;
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  sub_20CDCB28C(&qword_27C812EA8, 255, sub_20CDCB8C4, MEMORY[0x277CBCD60]);
  v25 = v32;
  sub_20CE12E84();

  (*(v31 + 8))(v14, v25);
  swift_beginAccess();
  sub_20CE12DB4();
  swift_endAccess();
}

uint64_t sub_20CDC7EA8(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_20CE14284();
  }

  return v2 & 1;
}

void sub_20CDC7FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817780);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136446210;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] Adding second bullet as Hearing Aid is available.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    v13 = sub_20CE13914();

    v14 = sub_20CE13914();
    v15 = sub_20CE13914();
    [v12 addBulletedListItemWithTitle:v13 description:v14 symbolName:{v15, 0xE000000000000000}];
  }

  else
  {
  }
}

uint64_t sub_20CDC8294()
{
  ObjectType = swift_getObjectType();
  v29 = MEMORY[0x277CC9E70];
  v28 = MEMORY[0x277D83D88];
  sub_20CDCB5A8(0, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  sub_20CDCB794(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB82C(0);
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB8C4(0);
  v27 = v13;
  v30 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(*(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_featureStatus) + 32);
  sub_20CDA3448();
  sub_20CDCB28C(&qword_27C812E80, 255, sub_20CDA3448, MEMORY[0x277CBCE48]);

  sub_20CE12E54();

  sub_20CDCB28C(&qword_27C812E90, 255, sub_20CDCB794, MEMORY[0x277CBCC90]);
  sub_20CE12E44();
  (*(v6 + 8))(v8, v5);
  v16 = [objc_opt_self() mainRunLoop];
  v32 = v16;
  v17 = sub_20CE13F34();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  sub_20CD83128(0, &qword_27C812818, 0x277CBEB88);
  sub_20CDCB28C(&qword_27C812EA0, 255, sub_20CDCB82C, MEMORY[0x277CBCC58]);
  sub_20CDA33E0();
  v18 = v25;
  sub_20CE12E64();
  sub_20CDCB994(v3, &qword_27C812800, v29, v28, sub_20CDCB5A8);

  (*(v26 + 8))(v12, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v21 = ObjectType;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  sub_20CDCB28C(&qword_27C812EA8, 255, sub_20CDCB8C4, MEMORY[0x277CBCD60]);
  v22 = v27;
  sub_20CE12E84();

  (*(v30 + 8))(v15, v22);
  swift_beginAccess();
  sub_20CE12DB4();
  swift_endAccess();
}

uint64_t sub_20CDC87FC(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v1)
  {
    v2 = sub_20CE14284();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

void sub_20CDC8914(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!v3)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v15 = sub_20CE12CB4();
    __swift_project_value_buffer(v15, qword_27C817780);
    v16 = sub_20CE12C94();
    v17 = sub_20CE13CC4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136446466;
      v20 = sub_20CE14414();
      v22 = sub_20CD96DCC(v20, v21, v34);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_20CD96DCC(0x676E69646E6570, 0xE700000000000000, v34);
      _os_log_impl(&dword_20CD70000, v16, v17, "[%{public}s] Returned with unhandled status %s.", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v19, -1, -1);
      MEMORY[0x20F314110](v18, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v3 != 1)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v24 = sub_20CE12CB4();
    __swift_project_value_buffer(v24, qword_27C817780);
    v25 = sub_20CE12C94();
    v26 = sub_20CE13CD4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34[0] = v28;
      *v27 = 136446210;
      v29 = sub_20CE14414();
      v31 = sub_20CD96DCC(v29, v30, v34);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_20CD70000, v25, v26, "[%{public}s] Adding caption text with Hearing Aid is available.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x20F314110](v28, -1, -1);
      MEMORY[0x20F314110](v27, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_25;
    }

LABEL_23:
    v32 = Strong;
    v14 = [Strong buttonTray];

    if (qword_27C811DC8 == -1)
    {
LABEL_24:
      sub_20CE12354();
      v33 = sub_20CE13914();

      [v14 setCaptionText_];

      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_24;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12CB4();
  __swift_project_value_buffer(v4, qword_27C817780);
  v5 = sub_20CE12C94();
  v6 = sub_20CE13CD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34[0] = v8;
    *v7 = 136446210;
    v9 = sub_20CE14414();
    v11 = sub_20CD96DCC(v9, v10, v34);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Adding caption text with Hearing Aid is available.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x20F314110](v8, -1, -1);
    MEMORY[0x20F314110](v7, -1, -1);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 buttonTray];

    if (qword_27C811DC8 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_25:
}

void sub_20CDC8F04()
{
  v1 = v0;
  v2 = sub_20CDC4C20();
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  v4 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton;
  v5 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton];
  v7 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
  v6 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase + 8];
  v8 = MEMORY[0x277D837D0];
  sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CE16360;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = 0x7365547472617453;
  *(v9 + 56) = 0xEF6E6F7474754274;
  sub_20CDCBB64(0, &qword_27C8121F0, v8, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v10 = v5;

  sub_20CE138C4();

  v11 = sub_20CE13914();

  [v10 setAccessibilityIdentifier_];

  [*&v1[v4] addTarget:v1 action:sel_didTapStartTest_ forControlEvents:64];
  v12 = [v1 buttonTray];
  [v12 addButton_];
}

void sub_20CDC9188()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_options];
  if (qword_27C811D90 != -1)
  {
    swift_once();
  }

  v3 = qword_27C812DC0;
  v4 = type metadata accessor for HearingTestOptions();
  v5 = *(v3 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v6 = objc_allocWithZone(v4);
  *&v6[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v5;
  v22.receiver = v6;
  v22.super_class = v4;
  v7 = objc_msgSendSuper2(&v22, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

  v9 = *(v2 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) & v8;
  v10 = objc_allocWithZone(v4);
  *&v10[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v9;
  v21.receiver = v10;
  v21.super_class = v4;
  v11 = objc_msgSendSuper2(&v21, sel_init);
  LOBYTE(v3) = sub_20CE13E44();

  if (v3)
  {
    v12 = [objc_opt_self() linkButton];
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    v13 = sub_20CE13914();

    [v12 setTitle:v13 forState:{0, 0xE000000000000000}];

    v15 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
    v14 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase + 8];
    v16 = MEMORY[0x277D837D0];
    sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20CE16360;
    *(v17 + 32) = v15;
    *(v17 + 40) = v14;
    *(v17 + 48) = 0xD000000000000013;
    *(v17 + 56) = 0x800000020CE1EA00;
    sub_20CDCBB64(0, &qword_27C8121F0, v16, MEMORY[0x277D83940]);
    sub_20CD81F60();
    v18 = v12;

    sub_20CE138C4();

    v19 = sub_20CE13914();

    [v18 setAccessibilityIdentifier_];

    [v18 addTarget:v1 action:sel_didTapImportPriorResult_ forControlEvents:64];
    v20 = [v1 buttonTray];
    [v20 addButton_];
  }
}

void sub_20CDC94D4()
{
  v1 = v0;
  v2 = [v0 headerView];
  v4 = *&v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase + 8];
  v5 = MEMORY[0x277D837D0];
  sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CE16360;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = 0x6E6F63496E69614DLL;
  *(v6 + 56) = 0xE800000000000000;
  sub_20CDCBB64(0, &qword_27C8121F0, v5, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v7 = sub_20CE13914();

  [v2 setIconAccessibilityIdentifier_];

  v8 = [v1 headerView];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CE16360;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = 0x656C746954;
  *(v9 + 56) = 0xE500000000000000;

  sub_20CE138C4();

  v10 = sub_20CE13914();

  [v8 setTitleAccessibilityIdentifier_];
}

void sub_20CDC970C(char *a1)
{
  v2 = v1;
  v60 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE129C4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v58 - v8;
  v10 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager;
  v11 = *&v2[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager];
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v12 = *(v11 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager);
  v13 = *(v12 + 24);
  v58 = v7;
  if (v13 <= 0x3F && (v14 = [*(v12 + 16) name]) != 0)
  {
    v15 = v14;
    v16 = sub_20CE13954();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *&v2[v10];
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = *(v19 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager);
  if (*(v20 + 24) <= 0x3Fu && (v21 = [*(v20 + 16) btAddress]) != 0)
  {
    v22 = v21;
    v23 = sub_20CE13954();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v28 = ObjectType;
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;

  v29 = sub_20CDF02C0(v60, v16, v18, v23, v25, sub_20CDCB580, v27);

  if (v29)
  {
    v30 = qword_27C811D08;
    v31 = v29;
    v32 = v3;
    if (v30 != -1)
    {
      swift_once();
    }

    v33 = sub_20CE12CB4();
    __swift_project_value_buffer(v33, qword_27C817780);
    v34 = v58;
    (*(v58 + 16))(v9, v60, v3);
    v35 = sub_20CE12C94();
    v36 = sub_20CE13CD4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v60 = v2;
      v38 = v34;
      v39 = v37;
      v40 = swift_slowAlloc();
      v61 = v40;
      *v39 = 136446722;
      v41 = sub_20CE14414();
      v43 = sub_20CD96DCC(v41, v42, &v61);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_20CD96DCC(0xD000000000000016, 0x800000020CE1E800, &v61);
      *(v39 + 22) = 2080;
      v44 = HTFaultStatusWithReason.debugDescription.getter();
      v46 = v45;
      (*(v38 + 8))(v9, v32);
      v2 = v60;
      v47 = sub_20CD96DCC(v44, v46, &v61);

      *(v39 + 24) = v47;
      _os_log_impl(&dword_20CD70000, v35, v36, "[%{public}s] %s A device fault has been detected: %s. Presenting its alert.", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v40, -1, -1);
      MEMORY[0x20F314110](v39, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v9, v3);
    }

    [v2 presentViewController:v31 animated:1 completion:{0, v58}];
  }

  else
  {
    v48 = v3;
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v49 = sub_20CE12CB4();
    __swift_project_value_buffer(v49, qword_27C817780);
    v50 = sub_20CE12C94();
    v51 = sub_20CE13CC4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61 = v53;
      *v52 = 136446466;
      v54 = sub_20CE14414();
      v56 = sub_20CD96DCC(v54, v55, &v61);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_20CD96DCC(0xD000000000000016, 0x800000020CE1E800, &v61);
      _os_log_impl(&dword_20CD70000, v50, v51, "[%{public}s] %s A device fault has not been detected. Recursing with HTFaultStatusResultUnknown.", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v53, -1, -1);
      MEMORY[0x20F314110](v52, -1, -1);
    }

    v57 = v58;
    (*(v58 + 104))(v6, *MEMORY[0x277D12D38], v48);
    sub_20CDC970C(v6);
    (*(v57 + 8))(v6, v48);
  }
}

void sub_20CDC9D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12CB4();
  __swift_project_value_buffer(v4, qword_27C817780);
  v5 = sub_20CE12C94();
  v6 = sub_20CE13CD4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136446210;
    v9 = sub_20CE14414();
    v11 = sub_20CD96DCC(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Presenting a controller on behalf of the fault controller.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x20F314110](v8, -1, -1);
    MEMORY[0x20F314110](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong presentViewController:a1 animated:1 completion:0];
  }
}

uint64_t sub_20CDC9EC0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_20CE129C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v55 = type metadata accessor for PreTestError(0);
  v10 = MEMORY[0x28223BE20](v55);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v15 = sub_20CE12CB4();
  __swift_project_value_buffer(v15, qword_27C817780);
  v56 = a1;
  sub_20CDCB46C(a1, v14);
  v16 = sub_20CE12C94();
  v17 = sub_20CE13CB4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v52 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v53 = v1;
    v21 = v20;
    v57 = v20;
    *v19 = 136446466;
    v22 = sub_20CE14414();
    v24 = sub_20CD96DCC(v22, v23, &v57);
    ObjectType = v7;
    v25 = v9;
    v26 = v3;
    v27 = v24;

    *(v19 + 4) = v27;
    *(v19 + 12) = 2080;
    v28 = sub_20CDEF9E0();
    v30 = v29;
    sub_20CDCB4D0(v14);
    v31 = sub_20CD96DCC(v28, v30, &v57);
    v3 = v26;
    v9 = v25;
    v7 = ObjectType;

    *(v19 + 14) = v31;
    _os_log_impl(&dword_20CD70000, v16, v17, "[%{public}s] Test cannot start. Error: %s.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v21, -1, -1);
    v32 = v19;
    v4 = v52;
    MEMORY[0x20F314110](v32, -1, -1);
  }

  else
  {

    sub_20CDCB4D0(v14);
  }

  sub_20CDCB46C(v56, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v34 = *v12;
      v35 = *(v12 + 1);
      if (qword_27C811DC8 != -1)
      {
        swift_once();
      }

      v36 = sub_20CE12354();
      v38 = v37;
      sub_20CE12354();
      sub_20CD81FDC(0, &qword_27C8135A0, &qword_27C812240, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_20CE16370;
      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = sub_20CDCB52C();
      *(v39 + 32) = v34;
      *(v39 + 40) = v35;
      v40 = sub_20CE13924();
      v42 = v41;

      sub_20CD95C28(v36, v38, v40, v42, 0);
    }

    v44 = *v12;
    v45 = sub_20CDA3584(*v12);
    v47 = v46;
    v48 = sub_20CDA3760(v44);
LABEL_18:
    sub_20CD95C28(v45, v47, v48, v49, 0);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    v45 = sub_20CE12354();
    v47 = v50;
    v48 = sub_20CE12354();
    goto LABEL_18;
  }

  (*(v4 + 32))(v9, v12, v3);
  (*(v4 + 16))(v7, v9, v3);
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D12D48])
  {
    v59 = 1;
    v58 = 15;
    sub_20CDC51E0(&v59, &v58);
  }

  else
  {
    v61 = 1;
    v60 = 4;
    sub_20CDC51E0(&v61, &v60);
    (*(v4 + 8))(v7, v3);
  }

  sub_20CDC970C(v9);
  return (*(v4 + 8))(v9, v3);
}

id HearingTestMainViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HearingTestMainViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20CE13914();

  if (a4)
  {
    v12 = sub_20CE13914();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

uint64_t sub_20CDCA7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_20CDCA868(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20CDCA990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for HearingTestInterruptionViewControllerManager();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions] = MEMORY[0x277D84FA0];
  v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck] = 0;
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager] = a1;
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_requirementStatusManager] = a2;
  v11 = &v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_analyticsManager];
  *v11 = a3;
  v11[1] = &off_2823BE0C0;
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_deviceManager] = a4;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

char *sub_20CDCAA9C(unint64_t a1)
{
  v2 = type metadata accessor for HearingTestOptions();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, sel_init);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20CE141C4())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F313610](v5, a1);
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
      v10 = *&v25[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, sel_init);
      v13 = *&v12[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

      v14 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
      v15 = *(v7 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, sel_init);
      v18 = sub_20CE13E44();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, sel_init);

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

id sub_20CDCACA4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_requirementStatusManager;
  sub_20CE12A34();
  swift_allocObject();
  *&v5[v11] = sub_20CE12A44();
  v12 = &v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v14 = qword_27C817868;
  v13 = unk_27C817870;
  v15 = MEMORY[0x277D837D0];
  sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CE16360;
  *(v16 + 32) = v14;
  *(v16 + 40) = v13;
  *(v16 + 48) = 0x776569566E69614DLL;
  *(v16 + 56) = 0xE800000000000000;
  v42[0] = v16;
  sub_20CDCBB64(0, &qword_27C8121F0, v15, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v17 = sub_20CE138C4();
  v19 = v18;

  *v12 = v17;
  v12[1] = v19;
  *&v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton] = 0;
  *&v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_cancellables] = MEMORY[0x277D84FA0];
  if (a4)
  {
    v20 = [swift_unknownObjectRetain() hearingLossArticleViewController];
    v43 = &type metadata for ControllerBasedArticlePresenter;
    v44 = &off_2823BC0D0;
    swift_unknownObjectRelease();
    v42[0] = v20;
  }

  else
  {
    v21 = [objc_opt_self() sharedApplication];
    v43 = &type metadata for URLBasedArticlePresenter;
    v44 = &off_2823BCF30;
    v42[0] = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
  }

  *&v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_healthStore] = a1;
  v22 = objc_opt_self();
  v23 = a1;
  v24 = [v22 sharedApplication];
  *&v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_application] = v24;
  type metadata accessor for HearingTestFlowAnalyticsData(0);
  swift_allocObject();
  v25 = v23;
  v26 = HearingTestFlowAnalyticsData.init(entryPoint:)(a2);
  type metadata accessor for HearingTestAnalyticsManager();
  v27 = swift_allocObject();
  v27[2] = v25;
  v28 = v25;
  v29 = HKLogHearingCategory();
  v30 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v29 healthDataSource:v28];

  v27[3] = v30;
  v27[4] = v26;
  *&v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager] = v27;
  *&v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_options] = a3;
  sub_20CD7C388(v42, &v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_articlePresenter]);
  _s13FeatureStatusCMa();
  swift_allocObject();
  v31 = v28;
  v32 = a3;
  v33 = sub_20CDA2E30(v31);

  *&v6[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_featureStatus] = v33;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v34 = qword_27C8179E8;
  sub_20CE12354();
  v35 = sub_20CE13914();

  v36 = v34;
  v37 = sub_20CE13914();
  v38 = [objc_opt_self() imageNamed:v37 inBundle:{v36, 0xE000000000000000}];

  v41.receiver = v6;
  v41.super_class = type metadata accessor for HearingTestMainViewController();
  v39 = objc_msgSendSuper2(&v41, sel_initWithTitle_detailText_icon_contentLayout_, v35, 0, v38, 2);

  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return v39;
}

uint64_t sub_20CDCB28C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_20CDCB46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreTestError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDCB4D0(uint64_t a1)
{
  v2 = type metadata accessor for PreTestError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CDCB52C()
{
  result = qword_27C812E58;
  if (!qword_27C812E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812E58);
  }

  return result;
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_20CDCB5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDCB60C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CD7C660;

  return sub_20CDC5A18(a1, v4, v5, v7, v6);
}

uint64_t sub_20CDCB6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_20CDCB740()
{
  result = qword_27C812E70;
  if (!qword_27C812E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812E70);
  }

  return result;
}

void sub_20CDCB794(uint64_t a1)
{
  if (!qword_27C812E78)
  {
    sub_20CDA3448();
    sub_20CDCB28C(&qword_27C812E80, 255, sub_20CDA3448, MEMORY[0x277CBCE48]);
    v1 = sub_20CE12D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812E78);
    }
  }
}

void sub_20CDCB82C(uint64_t a1)
{
  if (!qword_27C812E88)
  {
    sub_20CDCB794(255);
    sub_20CDCB28C(&qword_27C812E90, 255, sub_20CDCB794, MEMORY[0x277CBCC90]);
    v1 = sub_20CE12D74();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812E88);
    }
  }
}

void sub_20CDCB8C4(uint64_t a1)
{
  if (!qword_27C812E98)
  {
    sub_20CDCB82C(255);
    sub_20CD83128(255, &qword_27C812818, 0x277CBEB88);
    sub_20CDCB28C(&qword_27C812EA0, 255, sub_20CDCB82C, MEMORY[0x277CBCC58]);
    sub_20CDA33E0();
    v1 = sub_20CE12D94();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812E98);
    }
  }
}

uint64_t sub_20CDCB994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_20CDCBA0C()
{
  result = qword_27C812EB0;
  if (!qword_27C812EB0)
  {
    type metadata accessor for HearingTestFlowManager(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27C812EB0);
  }

  return result;
}

unint64_t sub_20CDCBA54()
{
  result = qword_27C812C80;
  if (!qword_27C812C80)
  {
    sub_20CDCB5A8(255, &qword_27C812C78, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812C80);
  }

  return result;
}

uint64_t sub_20CDCBADC(uint64_t a1)
{
  sub_20CD81FDC(0, &qword_27C812C30, &qword_27C812C38, &protocol descriptor for NoiseStatusProviding, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CDCBB64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *HearingTestInterruptionType.makeViewController(noiseStatusProvider:deviceName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_20CDCBC20(v8, a2, a3, v3, v6, v7);
}

char *sub_20CDCBC20(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v24[3] = a5;
  v24[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (*a4 == 4)
  {
    v23 = 4;
    sub_20CD7C388(v24, v22);
    v13 = objc_allocWithZone(type metadata accessor for HearingTestNoiseInterruptionViewController(0));
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
    MEMORY[0x28223BE20](v14);
    v16 = &v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    v18 = sub_20CDA99E4(&v23, v16, v13, a5, a6);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    LOBYTE(v22[0]) = *a4;
    v19 = objc_allocWithZone(type metadata accessor for HearingTestInterruptionsViewController(0));

    v18 = sub_20CD83D04(v22, a2, a3, 2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v18;
}

void sub_20CDCBE88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE13284();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HearingTestDetailedResultsViewController();
  v105.receiver = v0;
  v105.super_class = v6;
  objc_msgSendSuper2(&v105, sel_viewDidLoad);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 secondarySystemBackgroundColor];
  [v8 setBackgroundColor_];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v11 = sub_20CE13914();

  [v1 setTitle_];

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v98 = v9;
  v99 = v5;
  v97 = ObjectType;
  v14 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollView];
  [v12 addSubview_];

  v100 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer];
  [v14 addSubview_];
  v15 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_chartController];
  [v1 addChildViewController_];
  v16 = [v15 view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v18 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_automationIdentifierBase];
  v19 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_automationIdentifierBase + 8];
  v20 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  v96 = xmmword_20CE16360;
  *(v21 + 16) = xmmword_20CE16360;
  *(v21 + 32) = v18;
  *(v21 + 40) = v19;
  *(v21 + 48) = 0x7472616843;
  *(v21 + 56) = 0xE500000000000000;
  v101 = v21;
  sub_20CDA1464(0, &qword_27C8121F0, v20, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v22 = sub_20CE13914();

  [v17 setAccessibilityIdentifier_];

  v23 = [v15 view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = v100;
  [v100 addArrangedSubview_];

  [v15 didMoveToParentViewController_];
  v27 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_audiogramSample];
  v101 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_healthStore];
  v26 = v101;
  v102 = v27;
  v103 = v18;
  v104 = v19;
  sub_20CDCDCB0(0);
  v29 = objc_allocWithZone(v28);

  v30 = v26;
  v31 = v27;
  v32 = sub_20CE131F4();
  sub_20CE13274();
  sub_20CE131D4();
  v33 = v32;
  [v1 addChildViewController_];
  v34 = [v33 view];
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v1 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  [v36 frame];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [v35 setFrame_];
  v46 = [v33 view];

  if (!v46)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v47 = [v98 clearColor];
  [v46 setBackgroundColor_];

  v48 = [v33 view];
  if (!v48)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v48 setTranslatesAutoresizingMaskIntoConstraints_];

  v49 = [v33 view];
  if (!v49)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v25 addArrangedSubview_];

  [v33 didMoveToParentViewController_];
  sub_20CDA1464(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20CE185B0;
  v51 = [v14 topAnchor];
  v52 = [v1 view];
  if (!v52)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v53 = v52;
  v54 = [v52 safeAreaLayoutGuide];

  v55 = [v54 topAnchor];
  v56 = [v51 constraintEqualToAnchor_];

  *(v50 + 32) = v56;
  v57 = [v14 bottomAnchor];
  v58 = [v1 &selRef_setModalInPresentation_];
  if (!v58)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v59 = v58;
  v60 = [v58 safeAreaLayoutGuide];

  v61 = [v60 bottomAnchor];
  v62 = [v57 constraintEqualToAnchor_];

  *(v50 + 40) = v62;
  v63 = [v14 leadingAnchor];
  v64 = [v1 &selRef_setModalInPresentation_];
  if (!v64)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v65 = v64;
  v66 = [v64 leadingAnchor];

  v67 = [v63 constraintEqualToAnchor_];
  *(v50 + 48) = v67;
  v68 = [v14 trailingAnchor];
  v69 = [v1 &selRef_setModalInPresentation_];
  if (v69)
  {
    v70 = v69;
    v99 = objc_opt_self();
    v71 = [v70 trailingAnchor];

    v72 = [v68 constraintEqualToAnchor_];
    *(v50 + 56) = v72;
    v73 = v100;
    v74 = [v100 topAnchor];
    v75 = [v14 topAnchor];
    v76 = [v74 constraintEqualToAnchor_];

    *(v50 + 64) = v76;
    v77 = [v73 bottomAnchor];
    v78 = [v14 bottomAnchor];
    v79 = [v77 constraintEqualToAnchor:v78 constant:-16.0];

    *(v50 + 72) = v79;
    v80 = [v73 leadingAnchor];
    v81 = [v14 leadingAnchor];
    v82 = [v80 constraintEqualToAnchor_];

    *(v50 + 80) = v82;
    v83 = [v73 trailingAnchor];
    v84 = [v14 trailingAnchor];
    v85 = [v83 constraintEqualToAnchor_];

    *(v50 + 88) = v85;
    v86 = [v73 widthAnchor];
    v87 = [v14 widthAnchor];
    v88 = [v86 constraintEqualToAnchor_];

    *(v50 + 96) = v88;
    sub_20CD83128(0, &qword_27C812F10, 0x277CCAAD0);
    v89 = sub_20CE13AA4();

    [v99 activateConstraints_];

    v90 = [v1 traitCollection];
    sub_20CE13D74();

    sub_20CE13DD4();
    [v73 setDirectionalLayoutMargins_];
    sub_20CDCE16C(0, &qword_27C8127C8, sub_20CDA153C, MEMORY[0x277D84560]);
    v91 = swift_allocObject();
    *(v91 + 16) = v96;
    v92 = sub_20CE13784();
    v93 = sub_20CDCDD60(&qword_27C812F18, MEMORY[0x277D126D0], MEMORY[0x277D126C8]);
    *(v91 + 32) = v92;
    *(v91 + 40) = v93;
    v94 = sub_20CE12D34();
    v95 = MEMORY[0x277D74DB8];
    *(v91 + 48) = v94;
    *(v91 + 56) = v95;
    sub_20CE13CF4();

    swift_unknownObjectRelease();
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_20CDCCAFC()
{
  v16 = *(v0 + OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer);
  v1 = [v16 arrangedSubviews];
  sub_20CD83128(0, &qword_27C812EF8, 0x277D75D18);
  v2 = sub_20CE13AB4();

  v17 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20CE141C4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F313610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_20CE13B84();
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v6 removeFromSuperview];
      v8 = v6;
      MEMORY[0x20F312FA0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20CE13AD4();
      }

      sub_20CE13AF4();

      v9 = v17;

      ++v4;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_19:

  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  for (j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_20CE141C4())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F313610](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_20CE13B84();
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v16 addArrangedSubview_];

      ++v11;
      if (v14 == j)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
}

id sub_20CDCCEB0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HearingTestDetailedResultsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20CDCCF98@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v88 = a1;
  v89 = a2;
  v87 = a3;
  sub_20CDCE3BC(0);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCE348(0, &qword_27C812F40, sub_20CDCE3BC, MEMORY[0x277CDE470]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v86 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v72 - v9;
  sub_20CDCE2B4(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v84 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v72 - v13;
  sub_20CE13B84();
  v82 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v97 = sub_20CE12354();
  v98 = v14;
  v73 = sub_20CD935CC();
  v15 = sub_20CE13414();
  v17 = v16;
  v19 = v18;
  sub_20CE13334();
  sub_20CE132E4();

  v20 = sub_20CE133E4();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_20CD93620(v15, v17, v19 & 1);

  v97 = v20;
  v98 = v22;
  v27 = v24 & 1;
  LOBYTE(v99) = v24 & 1;
  v100 = v26;
  LOWORD(v101) = 256;
  v28 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v81 = v29;
  v30 = swift_allocObject();
  v80 = xmmword_20CE16360;
  *(v30 + 16) = xmmword_20CE16360;
  v31 = v89;
  *(v30 + 32) = v88;
  *(v30 + 40) = v31;
  *(v30 + 48) = 0xD000000000000012;
  *(v30 + 56) = 0x800000020CE1ECE0;
  v91 = v30;
  sub_20CDA1464(0, &qword_27C8121F0, v28, MEMORY[0x277D83940]);
  v79 = v32;
  v78 = sub_20CD81F60();
  swift_bridgeObjectRetain_n();
  sub_20CE138C4();

  v33 = MEMORY[0x277CDFC50];
  sub_20CDCE50C(0, &qword_27C812528, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
  sub_20CDCE990(&qword_27C812A40, &qword_27C812528, v33);
  sub_20CE134A4();

  sub_20CD93620(v20, v22, v27);

  sub_20CE135F4();
  sub_20CE12F04();
  v77 = v97;
  v76 = v99;
  v75 = v101;
  v74 = v102;
  v95 = 1;
  v94 = v98;
  v93 = v100;
  v91 = sub_20CDCE560();
  v92 = v34;
  v73 = sub_20CE13414();
  v36 = v35;
  LOBYTE(v15) = v37;
  v39 = v38;
  LOBYTE(v20) = sub_20CE132A4();
  sub_20CE12E94();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v28) = v15 & 1;
  LOBYTE(v91) = v15 & 1;
  LOBYTE(v96[0]) = 0;
  v48 = [objc_opt_self() tertiarySystemBackgroundColor];
  v49 = sub_20CE134B4();
  LOBYTE(v33) = sub_20CE132A4();
  sub_20CDCE348(0, &qword_27C812F50, sub_20CDCE44C, sub_20CD922F4);
  v51 = &v5[*(v50 + 36)];
  v52 = *(sub_20CE12FE4() + 20);
  v53 = *MEMORY[0x277CE0118];
  v54 = sub_20CE13174();
  (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
  __asm { FMOV            V0.2D, #10.0 }

  *v51 = _Q0;
  sub_20CD922F4(0);
  *&v51[*(v60 + 36)] = 256;
  *v5 = v73;
  *(v5 + 1) = v36;
  v5[16] = v28;
  *(v5 + 3) = v39;
  v5[32] = v20;
  *(v5 + 5) = v41;
  *(v5 + 6) = v43;
  *(v5 + 7) = v45;
  *(v5 + 8) = v47;
  v5[72] = 0;
  *(v5 + 73) = v96[0];
  *(v5 + 19) = *(v96 + 3);
  *(v5 + 10) = v49;
  v5[88] = v33;
  *&v5[*(v83 + 36)] = 256;
  v61 = swift_allocObject();
  *(v61 + 16) = v80;
  v62 = v89;
  *(v61 + 32) = v88;
  *(v61 + 40) = v62;
  *(v61 + 48) = 0xD000000000000010;
  *(v61 + 56) = 0x800000020CE1ED00;
  v91 = v61;
  sub_20CE138C4();

  sub_20CDCE790();
  v63 = v85;
  sub_20CE134A4();

  sub_20CDCEC24(v5, sub_20CDCE3BC);
  v64 = v90;
  v65 = v84;
  sub_20CDCEAA0(v90, v84);
  LOBYTE(v53) = v95;
  LOBYTE(v52) = v94;
  LOBYTE(v36) = v93;
  v66 = v86;
  sub_20CDCEB04(v63, v86);
  v67 = v87;
  sub_20CDCEAA0(v65, v87);
  sub_20CDCE1D0(0);
  v69 = v67 + *(v68 + 48);
  *v69 = 0;
  *(v69 + 8) = v53;
  *(v69 + 16) = v77;
  *(v69 + 24) = v52;
  *(v69 + 32) = v76;
  *(v69 + 40) = v36;
  v70 = v74;
  *(v69 + 48) = v75;
  *(v69 + 56) = v70;
  sub_20CDCEB04(v66, v67 + *(v68 + 64));
  sub_20CDCEB98(v63);
  sub_20CDCEC24(v64, sub_20CDCE2B4);
  sub_20CDCEB98(v66);
  sub_20CDCEC24(v65, sub_20CDCE2B4);
}

uint64_t sub_20CDCD830@<X0>(uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a2 = sub_20CE131C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_20CDCE0D4(0);
  return sub_20CDCCF98(v5, v4, a2 + *(v6 + 44));
}

uint64_t sub_20CDCD89C(char *a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 traitCollection];
  v3 = sub_20CE13D74();

  if (v3 != sub_20CE13D74())
  {
    v4 = [a1 traitCollection];
    sub_20CE13D74();

    v5 = *&a1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer];
    sub_20CE13DD4();
    [v5 setDirectionalLayoutMargins_];
  }

  sub_20CDCCAFC();
}

id sub_20CDCD9C8(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollView;
  v7 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v7 setShowsHorizontalScrollIndicator_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v9 setAxis_];
  [v9 setSpacing_];
  [v9 setDistribution_];
  [v9 setLayoutMarginsRelativeArrangement_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v11 = &v3[v10];
  v13 = qword_27C817868;
  v12 = unk_27C817870;
  v14 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CE16360;
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  *(v15 + 48) = 0x64656C6961746544;
  *(v15 + 56) = 0xEF73746C75736552;
  v25 = v15;
  sub_20CDA1464(0, &qword_27C8121F0, v14, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v16 = sub_20CE138C4();
  v18 = v17;

  *v11 = v16;
  v11[1] = v18;
  *&v3[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_bottomPadding] = 0x4030000000000000;
  *&v3[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_audiogramSample] = a1;
  *&v3[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_healthStore] = a2;
  v19 = objc_allocWithZone(MEMORY[0x277D128C0]);
  v20 = a1;
  v21 = [v19 initWithHealthStore_];
  v22 = [v21 staticAudiogramChartViewControllerWithAudiogramSample:v20 hideEnhancedUI:1];

  *&v3[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_chartController] = v22;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for HearingTestDetailedResultsViewController();
  return objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
}

void sub_20CDCDCB0(uint64_t a1)
{
  if (!qword_27C812F00)
  {
    sub_20CDCDD0C();
    v1 = sub_20CE13204();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812F00);
    }
  }
}

unint64_t sub_20CDCDD0C()
{
  result = qword_27C812F08;
  if (!qword_27C812F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F08);
  }

  return result;
}

uint64_t sub_20CDCDD60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20CDCDDA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollView;
  v3 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v3 setShowsHorizontalScrollIndicator_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer;
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v5 setAxis_];
  [v5 setSpacing_];
  [v5 setDistribution_];
  [v5 setLayoutMarginsRelativeArrangement_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v5;
  v6 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v7 = (v1 + v6);
  v9 = qword_27C817868;
  v8 = unk_27C817870;
  v10 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CE16360;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  *(v11 + 48) = 0x64656C6961746544;
  *(v11 + 56) = 0xEF73746C75736552;
  sub_20CDA1464(0, &qword_27C8121F0, v10, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v12 = sub_20CE138C4();
  v14 = v13;

  *v7 = v12;
  v7[1] = v14;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_bottomPadding) = 0x4030000000000000;
  sub_20CE141B4();
  __break(1u);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20CDCE020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20CDCE068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20CDCE0D4(uint64_t a1)
{
  if (!qword_27C812F20)
  {
    sub_20CDCE16C(255, &qword_27C812F28, sub_20CDCE1D0, MEMORY[0x277CE14B8]);
    v1 = sub_20CE12F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812F20);
    }
  }
}

void sub_20CDCE16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CDCE1D0(uint64_t a1)
{
  if (!qword_27C812F30)
  {
    sub_20CDCE2B4(255);
    sub_20CDCE50C(255, &qword_27C812508, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_20CDCE348(255, &qword_27C812F40, sub_20CDCE3BC, MEMORY[0x277CDE470]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C812F30);
    }
  }
}

void sub_20CDCE2B4(uint64_t a1)
{
  if (!qword_27C812F38)
  {
    sub_20CDCE50C(255, &qword_27C812528, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_20CE13264();
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812F38);
    }
  }
}

void sub_20CDCE348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_20CE12FD4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CDCE3BC(uint64_t a1)
{
  if (!qword_27C812F48)
  {
    sub_20CDCE348(255, &qword_27C812F50, sub_20CDCE44C, sub_20CD922F4);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812F48);
    }
  }
}

void sub_20CDCE44C(uint64_t a1)
{
  if (!qword_27C812F58)
  {
    sub_20CDCE50C(255, &qword_27C812F60, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_20CDCE50C(255, &qword_27C812F68, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812F58);
    }
  }
}

void sub_20CDCE50C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20CDCE560()
{
  v0 = [objc_opt_self() displayTypeWithIdentifier_];
  if (v0 && (v1 = v0, v2 = [v0 localization], v1, v3 = objc_msgSend(v2, sel_summary), v2, v3))
  {
    v4 = sub_20CE13954();
    v6 = v5;

    v14[0] = v4;
    v14[1] = v6;
    sub_20CD935CC();
    v7 = sub_20CE13FA4();

    return v7;
  }

  else
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v9 = sub_20CE12CB4();
    __swift_project_value_buffer(v9, qword_27C817768);
    v10 = sub_20CE12C94();
    v11 = sub_20CE13CC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_20CD96DCC(0xD000000000000043, 0x800000020CE1ED20, v14);
      _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] Couldn't fetch audiogram data type summary", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x20F314110](v13, -1, -1);
      MEMORY[0x20F314110](v12, -1, -1);
    }

    return 0;
  }
}

unint64_t sub_20CDCE790()
{
  result = qword_27C812F70;
  if (!qword_27C812F70)
  {
    sub_20CDCE3BC(255);
    sub_20CDCE810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F70);
  }

  return result;
}

unint64_t sub_20CDCE810()
{
  result = qword_27C812F78;
  if (!qword_27C812F78)
  {
    sub_20CDCE348(255, &qword_27C812F50, sub_20CDCE44C, sub_20CD922F4);
    sub_20CDCE8F0();
    sub_20CDCDD60(&qword_27C812588, sub_20CD922F4, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F78);
  }

  return result;
}

unint64_t sub_20CDCE8F0()
{
  result = qword_27C812F80;
  if (!qword_27C812F80)
  {
    sub_20CDCE44C(255);
    sub_20CDCE990(&qword_27C812F88, &qword_27C812F60, MEMORY[0x277CDF928]);
    sub_20CDCEA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F80);
  }

  return result;
}

uint64_t sub_20CDCE990(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_20CDCE50C(255, a2, MEMORY[0x277CE0BD8], a3, MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20CDCEA1C()
{
  result = qword_27C812F90;
  if (!qword_27C812F90)
  {
    sub_20CDCE50C(255, &qword_27C812F68, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F90);
  }

  return result;
}

uint64_t sub_20CDCEAA0(uint64_t a1, uint64_t a2)
{
  sub_20CDCE2B4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDCEB04(uint64_t a1, uint64_t a2)
{
  sub_20CDCE348(0, &qword_27C812F40, sub_20CDCE3BC, MEMORY[0x277CDE470]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDCEB98(uint64_t a1)
{
  sub_20CDCE348(0, &qword_27C812F40, sub_20CDCE3BC, MEMORY[0x277CDE470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CDCEC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CDCEC84(uint64_t a1)
{
  if (!qword_27C812FA0)
  {
    sub_20CDCE16C(255, &qword_27C812F28, sub_20CDCE1D0, MEMORY[0x277CE14B8]);
    sub_20CDCED18();
    v1 = sub_20CE13584();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812FA0);
    }
  }
}

unint64_t sub_20CDCED18()
{
  result = qword_27C812FA8;
  if (!qword_27C812FA8)
  {
    sub_20CDCE16C(255, &qword_27C812F28, sub_20CDCE1D0, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812FA8);
  }

  return result;
}

Swift::String __swiftcall LocalizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_20CDCEE7C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v63 = sub_20CE131A4();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCF810(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCF9A0(0);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCFA8C(0);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCFB0C(0);
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCFFA4(0, &qword_27C813038, sub_20CDCFB0C, sub_20CDCFD98);
  v50 = v15;
  MEMORY[0x28223BE20](v15);
  v51 = &v49 - v16;
  sub_20CDCFE64(0);
  v54 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCFF70(0);
  v55 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD00C8(0);
  v57 = v23;
  MEMORY[0x28223BE20](v23);
  v56 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v1;
  *v5 = sub_20CE13114();
  *(v5 + 1) = 0x4010000000000000;
  v5[16] = 0;
  sub_20CDD00FC(0);
  sub_20CDCF4E4(v25, &v5[*(v26 + 44)]);
  if (v25)
  {
    v27 = sub_20CE134E4();
  }

  else
  {
    v27 = sub_20CE134D4();
  }

  v28 = v27;
  KeyPath = swift_getKeyPath();
  sub_20CDD01BC(v5, v8, sub_20CDCF810);
  v30 = &v8[*(v52 + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = sub_20CE13334();
  v32 = swift_getKeyPath();
  sub_20CDD01BC(v8, v11, sub_20CDCF9A0);
  v33 = &v11[*(v53 + 36)];
  *v33 = v32;
  v33[1] = v31;
  sub_20CE13314();
  sub_20CDCFB90();
  sub_20CE13444();
  sub_20CDD0644(v11, sub_20CDCFA8C);
  v34 = v51;
  v35 = &v51[*(v50 + 36)];
  sub_20CDCFD98(0);
  v37 = *(v36 + 28);
  v38 = *MEMORY[0x277CE0B48];
  v39 = sub_20CE133D4();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v35 + v37, v38, v39);
  (*(v40 + 56))(v35 + v37, 0, 1, v39);
  *v35 = swift_getKeyPath();
  (*(v58 + 32))(v34, v14, v59);
  v41 = swift_getKeyPath();
  sub_20CD741A4(v34, v19);
  v42 = &v19[*(v54 + 36)];
  *v42 = v41;
  v42[1] = 0x3FE0000000000000;
  v43 = sub_20CE13624();
  sub_20CD74238(v19, v22);
  v44 = &v22[*(v55 + 36)];
  *v44 = v43;
  v44[8] = v25;
  v66 = v25;
  v64 = sub_20CDCF748();
  v65 = v45;
  sub_20CDD02C0();
  sub_20CD935CC();
  v46 = v56;
  sub_20CE13474();

  sub_20CDD057C(v22, sub_20CDCFF70);
  v47 = v60;
  sub_20CE13194();
  sub_20CE12FC4();
  (*(v61 + 8))(v47, v63);
  return sub_20CDD057C(v46, sub_20CDD00C8);
}

uint64_t sub_20CDCF4E4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_20CDCF940(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = sub_20CE13534();
  sub_20CE13484();

  v24 = a1 & 1;
  v22 = sub_20CDCF748();
  v23 = v10;
  sub_20CD935CC();
  v11 = sub_20CE13414();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_20CDD05DC(v9, v7, sub_20CDCF940);
  sub_20CDD05DC(v7, a2, sub_20CDCF940);
  sub_20CDCF8D8(0);
  v19 = a2 + *(v18 + 48);
  *v19 = v11;
  *(v19 + 8) = v13;
  *(v19 + 16) = v15 & 1;
  *(v19 + 24) = v17;
  sub_20CD93B54(v11, v13, v15 & 1);

  sub_20CDD0644(v9, sub_20CDCF940);
  sub_20CD93620(v11, v13, v15 & 1);

  sub_20CDD0644(v7, sub_20CDCF940);
}

uint64_t sub_20CDCF748()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  return sub_20CE12354();
}

void sub_20CDCF810(uint64_t a1)
{
  if (!qword_27C812FB0)
  {
    sub_20CDCF8A4(255);
    sub_20CDCFD00(&qword_27C812FD0, sub_20CDCF8A4, MEMORY[0x277CE14C0]);
    v1 = sub_20CE13574();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812FB0);
    }
  }
}

void sub_20CDCF8D8(uint64_t a1)
{
  if (!qword_27C812FC0)
  {
    sub_20CDCF940(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C812FC0);
    }
  }
}

void sub_20CDCF940(uint64_t a1)
{
  if (!qword_27C812FC8)
  {
    sub_20CE13264();
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812FC8);
    }
  }
}

void sub_20CDCF9A0(uint64_t a1)
{
  if (!qword_27C812FD8)
  {
    sub_20CDCF810(255);
    sub_20CDCFA20(255, &qword_27C812FE0, &qword_27C812FE8, MEMORY[0x277CE0F78]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812FD8);
    }
  }
}

void sub_20CDCFA20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CDCFF20(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CE13254();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CDCFA8C(uint64_t a1)
{
  if (!qword_27C812FF0)
  {
    sub_20CDCF9A0(255);
    sub_20CDCFA20(255, &qword_27C812FF8, &qword_27C813000, MEMORY[0x277CE0AE0]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812FF0);
    }
  }
}

void sub_20CDCFB0C(uint64_t a1)
{
  if (!qword_27C813008)
  {
    sub_20CDCFA8C(255);
    sub_20CDCFB90();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C813008);
    }
  }
}

unint64_t sub_20CDCFB90()
{
  result = qword_27C813010;
  if (!qword_27C813010)
  {
    sub_20CDCFA8C(255);
    sub_20CDCFC30();
    sub_20CDCFD48(&qword_27C813030, &qword_27C812FF8, &qword_27C813000, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813010);
  }

  return result;
}

unint64_t sub_20CDCFC30()
{
  result = qword_27C813018;
  if (!qword_27C813018)
  {
    sub_20CDCF9A0(255);
    sub_20CDCFD00(&qword_27C813020, sub_20CDCF810, MEMORY[0x277CE1138]);
    sub_20CDCFD48(&qword_27C813028, &qword_27C812FE0, &qword_27C812FE8, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813018);
  }

  return result;
}

uint64_t sub_20CDCFD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CDCFD48(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CDCFA20(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CDCFDCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CDCFE64(uint64_t a1)
{
  if (!qword_27C813050)
  {
    sub_20CDCFFA4(255, &qword_27C813038, sub_20CDCFB0C, sub_20CDCFD98);
    sub_20CDCFF20(255, &qword_27C813058, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813050);
    }
  }
}

void sub_20CDCFF20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CDCFFA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_20CE12FD4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CDD0018(uint64_t a1)
{
  if (!qword_27C813068)
  {
    sub_20CDD0074();
    v1 = sub_20CE13184();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813068);
    }
  }
}

unint64_t sub_20CDD0074()
{
  result = qword_27C813070;
  if (!qword_27C813070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813070);
  }

  return result;
}

void sub_20CDD00FC(uint64_t a1)
{
  if (!qword_27C813080)
  {
    sub_20CDCF8A4(255);
    v1 = sub_20CE12F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27C813080);
    }
  }
}

uint64_t sub_20CDD0164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CE130B4();
  *a1 = result;
  return result;
}

uint64_t sub_20CDD01BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CDD0224(uint64_t a1)
{
  sub_20CDCFE30(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20CDD05DC(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_20CDCFE30);
  return sub_20CE130E4();
}

unint64_t sub_20CDD02C0()
{
  result = qword_27C813088;
  if (!qword_27C813088)
  {
    sub_20CDCFF70(255);
    sub_20CDD0370();
    sub_20CDCFD00(&qword_27C8130B0, sub_20CDD0018, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813088);
  }

  return result;
}

unint64_t sub_20CDD0370()
{
  result = qword_27C813090;
  if (!qword_27C813090)
  {
    sub_20CDCFE64(255);
    sub_20CDD03F0();
    sub_20CDD0500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813090);
  }

  return result;
}

unint64_t sub_20CDD03F0()
{
  result = qword_27C813098;
  if (!qword_27C813098)
  {
    sub_20CDCFFA4(255, &qword_27C813038, sub_20CDCFB0C, sub_20CDCFD98);
    sub_20CDCFA8C(255);
    sub_20CDCFB90();
    swift_getOpaqueTypeConformance2();
    sub_20CDCFD00(&qword_27C8130A0, sub_20CDCFD98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813098);
  }

  return result;
}

unint64_t sub_20CDD0500()
{
  result = qword_27C8130A8;
  if (!qword_27C8130A8)
  {
    sub_20CDCFF20(255, &qword_27C813058, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130A8);
  }

  return result;
}

uint64_t sub_20CDD057C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CDD05DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CDD0644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CDD06A4()
{
  result = qword_27C8130B8;
  if (!qword_27C8130B8)
  {
    sub_20CDD00C8(255);
    sub_20CDD02C0();
    sub_20CDCFD00(&qword_27C8125B8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130B8);
  }

  return result;
}

void sub_20CDD0754(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = [a1 hearingLevelSummary];
  v10 = [v9 leftEarMetrics];
  if (!v10)
  {
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v12 = 0;
LABEL_14:
    v47 = 0;
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 averageSensitivity];

  if (!v12)
  {
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_14;
  }

  v13 = a4;
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v43 = 0xE000000000000000;
  sub_20CE12354();
  sub_20CD935CC();
  v14 = sub_20CE13F94();
  v50 = v15;
  v51 = v14;

  v16 = HKHearingLevelClassificationForSensitivity();
  v17 = sub_20CDAAE2C(v16);
  v48 = v18;
  v49 = v17;
  sub_20CDD0AE8(0, a2);
  v20 = v19;
  v22 = v21;

  if (v22)
  {
    v12 = v20;
  }

  else
  {
    v12 = 0;
  }

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v47 = v23;
  a4 = v13;
LABEL_15:
  v24 = [v9 rightEarMetrics];
  if (v24)
  {
    v46 = v12;
    v25 = v24;
    v26 = [v24 averageSensitivity];

    if (v26)
    {
      v44 = v9;
      v45 = a4;
      v27 = a1;
      v28 = a2;
      if (qword_27C811DC8 != -1)
      {
        swift_once();
      }

      sub_20CE12354();
      sub_20CD935CC();
      v29 = sub_20CE13F94();
      v31 = v30;

      v32 = HKHearingLevelClassificationForSensitivity();
      v33 = sub_20CDAAE2C(v32);
      v35 = v34;
      v36 = v27;
      sub_20CDD0AE8(1, v28);
      v38 = v37;
      v40 = v39;

      if (v40)
      {
        v41 = v38;
      }

      else
      {
        v41 = 0;
      }

      v42 = 0xE000000000000000;
      if (v40)
      {
        v42 = v40;
      }

      a4 = v45;
    }

    else
    {

      v29 = 0;
      v31 = 0;
      v33 = 0;
      v35 = 0;
      v41 = 0;
      v42 = 0;
    }

    v12 = v46;
  }

  else
  {

    v29 = 0;
    v31 = 0;
    v33 = 0;
    v35 = 0;
    v41 = 0;
    v42 = 0;
  }

  *a5 = v51;
  a5[1] = v50;
  a5[2] = v49;
  a5[3] = v48;
  a5[4] = v12;
  a5[5] = v47;
  a5[6] = v29;
  a5[7] = v31;
  a5[8] = v33;
  a5[9] = v35;
  a5[10] = v41;
  a5[11] = v42;
  a5[12] = a3;
  a5[13] = a4;
}

void sub_20CDD0AE8(uint64_t a1, void *a2)
{
  v5 = sub_20CE12434();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE12544();
  MEMORY[0x28223BE20](v8 - 8);
  sub_20CDD0FC0(0);
  v10 = v9;
  v34 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = objc_opt_self();
  v17 = [v16 decibelHearingLevelUnit];
  v18 = [a2 localizedDisplayNameForUnit:v17 value:0];

  v39 = v18;
  v40 = v18;
  if (!v18)
  {
    sub_20CE13954();
    v40 = sub_20CE13914();

    sub_20CE13954();
    v39 = sub_20CE13914();
  }

  v38 = a1;
  swift_getKeyPath();
  v19 = v18;
  v37 = v2;
  v20 = [v2 hearingLevelSummary];
  v43 = v20;
  swift_getAtKeyPath();
  v21 = v42;
  if (!v42)
  {

    return;
  }

  v22 = [v42 averageSensitivity];

  if (!v22)
  {

    return;
  }

  v23 = [v16 decibelHearingLevelUnit];
  v33 = v22;
  [v22 doubleValueForUnit_];
  v25 = v24;

  v41 = v25;
  sub_20CE12534();
  sub_20CDA1354();
  sub_20CE123A4();
  sub_20CE12424();
  MEMORY[0x20F311900](v7, v10);
  (*(v35 + 8))(v7, v36);
  v26 = *(v34 + 8);
  v26(v13, v10);
  sub_20CDD1028();
  sub_20CE13864();
  v26(v15, v10);
  if ([v37 isAverageSensitivityUpperClampedForSide_])
  {

    v27 = sub_20CE13914();

    v28 = v40;
    v29 = HKLocalizedStringForUpperClampedValueAndUnit();

LABEL_11:
    sub_20CE13954();

    return;
  }

  v30 = sub_20CE13914();
  v31 = v39;
  v29 = HKFormatValueAndUnit();

  if (v29)
  {

    goto LABEL_11;
  }

  __break(1u);
}

void sub_20CDD0FC0(uint64_t a1)
{
  if (!qword_27C8130C0)
  {
    sub_20CDA1354();
    v1 = sub_20CE12404();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8130C0);
    }
  }
}

unint64_t sub_20CDD1028()
{
  result = qword_27C8130C8;
  if (!qword_27C8130C8)
  {
    sub_20CDD0FC0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130C8);
  }

  return result;
}

uint64_t sub_20CDD108C(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x646573736170;
  }

  if (!a1)
  {
    return 0x64656C696166;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CB4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20CD70000, v3, v4, "Please handle new case of HearingModeUI.FitNoiseCheckStatus.", v5, 2u);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  return 0x6E776F6E6B6E75;
}

void sub_20CDD11B4(uint64_t a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20CE13914();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_userDefaults] = v5;
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_maxPauseTime] = 0x405E000000000000;
    v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState] = 0;
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager] = 0;
    v6 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationStartDate;
    v7 = sub_20CE124E4();
    (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
    v8 = &v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration];
    *v8 = 0;
    v8[8] = 1;
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer] = 0;
    swift_unknownObjectWeakInit();
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager] = a1;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for HTUIEvaluationViewController(0);
    objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for HTUIEvaluationViewController(uint64_t a1)
{
  result = qword_281111368;
  if (!qword_281111368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDD16A4(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for HTUIEvaluationViewController(0);
  objc_msgSendSuper2(&v10, sel_viewDidAppear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager];
  v5 = *(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v9 = 0;
  v7 = *(v5 + 48);
  swift_unknownObjectRetain();
  v7(&v9, v2, &protocol witness table for HTUIEvaluationViewController, ObjectType, v5);
  swift_unknownObjectRelease();
  sub_20CDD19E0(1);
  [*(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_application) setIdleTimerDisabled_];
  v8 = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24));
  sub_20CDB91B4(v2, *v8);
  if ((v2[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState] & 1) == 0)
  {
    [v2 scheduleEvaluationStart];
  }
}

void sub_20CDD19E0(char a1)
{
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817768);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136446466;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    if (a1)
    {
      v11 = 0x657669746361;
    }

    else
    {
      v11 = 0x6576697463616E69;
    }

    if (a1)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    v13 = sub_20CD96DCC(v11, v12, &v26);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] Setting sbsui_hearingTestMode to %s.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  v14 = [v1 viewIfLoaded];
  v15 = [v14 window];

  v24 = [v15 windowScene];
  v16 = v24;
  if (v24)
  {
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
LABEL_14:
    v25 = v16;
    swift_unknownObjectWeakAssign();
    [v25 SBSUI_setHearingTestMode:a1 & 1];
    [v25 _setSystemVolumeHUDEnabled:(a1 & 1) == 0];
    goto LABEL_15;
  }

  v25 = sub_20CE12C94();
  v18 = sub_20CE13CB4();
  if (os_log_type_enabled(v25, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136446210;
    v21 = sub_20CE14414();
    v23 = sub_20CD96DCC(v21, v22, &v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_20CD70000, v25, v18, "[%{public}s] Setting sbsui_hearingTestMode failed as the scene is nil.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x20F314110](v20, -1, -1);
    MEMORY[0x20F314110](v19, -1, -1);
  }

LABEL_15:
}

void sub_20CDD1D3C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton_];

  sub_20CDD9040(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CE183B0;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  v14 = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_20CE13914();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    sub_20CE11910();
    v8 = v7;

    if (v8)
    {
      v13[3] = type metadata accessor for HTUIEvaluationViewController(0);
      v13[0] = v1;
      v9 = v1;
      sub_20CDEA770(v13, sel_invokeTapToRadar);
      v10 = sub_20CDD8EC0(v13, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDD9040);
      MEMORY[0x20F312FA0](v10);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20CE13AD4();
      }

      sub_20CE13AF4();
    }

    v11 = [v1 navigationItem];
    sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
    v12 = sub_20CE13AA4();

    [v11 setRightBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDD1FB0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_20CE136C4();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20CE136E4();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20CE13704();
  v28 = *(v35 - 8);
  v5 = MEMORY[0x28223BE20](v35);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v10 = sub_20CE12CB4();
  __swift_project_value_buffer(v10, qword_27C817768);
  v11 = sub_20CE12C94();
  v12 = sub_20CE13CD4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136446210;
    v15 = sub_20CE14414();
    v17 = ObjectType;
    v18 = sub_20CD96DCC(v15, v16, aBlock);

    *(v13 + 4) = v18;
    ObjectType = v17;
    _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] Scheduling initial state transition.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x20F314110](v14, -1, -1);
    MEMORY[0x20F314110](v13, -1, -1);
  }

  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  v19 = sub_20CE13D44();
  sub_20CE136F4();
  sub_20CE13734();
  v28 = *(v28 + 8);
  (v28)(v7, v35);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = ObjectType;
  aBlock[4] = sub_20CDD8C04;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_38;
  v22 = _Block_copy(aBlock);

  v23 = v29;
  sub_20CE136D4();
  v36 = MEMORY[0x277D84F90];
  sub_20CDD8C0C();
  sub_20CDD8C64(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_20CDD8CC8();
  v24 = v30;
  v25 = v34;
  sub_20CE14044();
  MEMORY[0x20F313230](v9, v23, v24, v22);
  _Block_release(v22);

  (*(v33 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);
  (v28)(v9, v35);
}

void sub_20CDD24B8(uint64_t a1, uint64_t a2)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v3 = Strong;
  if (*&Strong[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer])
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v4 = sub_20CE12CB4();
    __swift_project_value_buffer(v4, qword_27C817768);
    v5 = sub_20CE12C94();
    v6 = sub_20CE13CD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      v9 = sub_20CE14414();
      v11 = sub_20CD96DCC(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Aborting initial state transition as the evaluation is paused.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x20F314110](v8, -1, -1);
      MEMORY[0x20F314110](v7, -1, -1);
    }
  }

  else
  {
    Strong[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState] = 1;
    v12 = [Strong view];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for HTUIEvaluationViewController.View();
      [swift_dynamicCastClassUnconditional() transitionToNextState];

      v14 = *&v3[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager];
      if (v14)
      {
        [v14 startTest];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_20CDD2764()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  type metadata accessor for HTUIEvaluationViewController.View();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v3 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler);
  v6 = *(v3 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler);
  v7 = v5[1];
  *v5 = sub_20CDD9038;
  v5[1] = v4;

  sub_20CD84E24(v6, v7);

  v8 = [v0 view];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton);

  [v10 addTarget:v0 action:sel_didTapAction forControlEvents:64];
}

void sub_20CDD28DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager);
    v3 = Strong;

    if (v2)
    {
      sub_20CD75E84(1);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20CDD2958(uint64_t a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20CE13914();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);
    v7 = *(v6 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager);

    static SessionFactory.make(defaults:channel:statusManager:)(v5, a1, v7, v16);

    v8 = *(v6 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer);
    v14 = sub_20CE128C4();
    v15 = &off_2823BD880;
    *&v13 = v8;
    type metadata accessor for SessionManager(0);
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    swift_unknownObjectWeakInit();
    v10 = OBJC_IVAR____TtC13HearingTestUI14SessionManager_playState;
    v11 = type metadata accessor for SessionManager.PlayState(0);
    (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
    *(v9 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask) = 0;
    *(v9 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 0;
    sub_20CD75924(v16, v9 + 72);
    sub_20CD75924(&v13, v9 + 32);
    v12 = (v9 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_tonePlayDelay);
    *v12 = sub_20CD75964;
    v12[1] = 0;
    *(v9 + 24) = &off_2823BDB28;
    swift_unknownObjectWeakAssign();
    *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager) = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDD2B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_10;
      }

LABEL_9:

      return;
    }

    v8 = *(*&Strong[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
    v9 = Strong;
    ObjectType = swift_getObjectType();
    v11 = 1;
LABEL_16:
    LOBYTE(v22) = v11;
    v21 = *(v8 + 48);
    swift_unknownObjectRetain();
    v21(&v22, v9, &protocol witness table for HTUIEvaluationViewController, ObjectType, v8);

    swift_unknownObjectRelease();
    return;
  }

  if (a4 == 2)
  {
    goto LABEL_9;
  }

  if (a4 == 3)
  {
    v8 = *(*&Strong[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
    v9 = Strong;
    ObjectType = swift_getObjectType();
    v11 = 3;
    goto LABEL_16;
  }

LABEL_10:
  v12 = Strong;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v13 = sub_20CE12CB4();
  __swift_project_value_buffer(v13, qword_27C817768);
  v14 = sub_20CE12C94();
  v15 = sub_20CE13CC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136446466;
    v18 = sub_20CE14414();
    v20 = sub_20CD96DCC(v18, v19, &v22);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20CD96DCC(0xD000000000000012, 0x800000020CE1F000, &v22);
    _os_log_impl(&dword_20CD70000, v14, v15, "[%{public}s] %s received .cannotContinue and that should not happen.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v17, -1, -1);
    MEMORY[0x20F314110](v16, -1, -1);
  }
}

void sub_20CDD2DE8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HTUIEvaluationViewController.View();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

    v4 = *&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager];
    if (v3 == 4)
    {
      sub_20CDDE960();
    }

    else
    {
      v5 = *(*__swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24)) + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager);
      sub_20CDBE3A8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDD2F04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE12924();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CDD3454();
  if (v7 == 4)
  {
    v8 = [v0 view];
    if (!v8)
    {
      __break(1u);
      goto LABEL_22;
    }

    v9 = v8;
    type metadata accessor for HTUIEvaluationViewController.View();
    v10 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

    if (v10 == 4)
    {
      v31 = *&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager];
      LOBYTE(v44) = 6;
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_20CDDDFEC(v1, &v44, v31, v32, ObjectType);

      return;
    }

    if (v10 == 3)
    {
      v11 = [v0 view];
      if (v11)
      {
        v12 = v11;
        [swift_dynamicCastClassUnconditional() transitionToNextState];

        (*(v4 + 104))(v6, *MEMORY[0x277D12CE0], v3);
        sub_20CDD2958(v6);
        (*(v4 + 8))(v6, v3);
        v13 = *&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager];
        if (v13)
        {
          [v13 startTest];
          return;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v33 = sub_20CE12CB4();
    __swift_project_value_buffer(v33, qword_27C817768);
    v42 = sub_20CE12C94();
    v34 = sub_20CE13CB4();
    if (os_log_type_enabled(v42, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136446210;
      v37 = sub_20CE14414();
      v39 = sub_20CD96DCC(v37, v38, &v44);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_20CD70000, v42, v34, "[%{public}s] Unexpected view state when user tapped action button.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x20F314110](v36, -1, -1);
      MEMORY[0x20F314110](v35, -1, -1);
    }

    else
    {
      v40 = v42;
    }
  }

  else
  {
    v14 = v7;
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v15 = sub_20CE12CB4();
    __swift_project_value_buffer(v15, qword_27C817768);
    v16 = sub_20CE12C94();
    v17 = sub_20CE13CB4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136446466;
      v20 = sub_20CE14414();
      v22 = sub_20CD96DCC(v20, v21, &v44);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v43 = v14;
      v23 = sub_20CE13974();
      v25 = sub_20CD96DCC(v23, v24, &v44);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_20CD70000, v16, v17, "[%{public}s] User tapped action, but progress is blocked by %s. Showing alert.", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v19, -1, -1);
      MEMORY[0x20F314110](v18, -1, -1);
    }

    v26 = sub_20CDA3584(v14);
    v28 = v27;
    v29 = sub_20CDA3760(v14);
    sub_20CD95C28(v26, v28, v29, v30, 0);
  }
}

uint64_t sub_20CDD3454()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for HTUIEvaluationViewController.View();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

    if (v3 == 3)
    {
      v4 = *(*(*&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24);
      if (v4 <= 0x3F && (v4 & 1) != 0)
      {
        if (sub_20CDDF9E4())
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HTUIEvaluationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20CE13914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HTUIEvaluationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTUIEvaluationViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CDD377C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_20CE124E4();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD8C64(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v12 = sub_20CE12CB4();
  __swift_project_value_buffer(v12, qword_27C817768);
  v13 = sub_20CE12C94();
  v14 = sub_20CE13CD4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38[0] = v16;
    *v15 = 136315394;
    v17 = sub_20CE14414();
    v19 = sub_20CD96DCC(v17, v18, v38);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20CD96DCC(0xD000000000000011, 0x800000020CE1F020, v38);
    _os_log_impl(&dword_20CD70000, v13, v14, "[%s] %s called.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

  sub_20CE124D4();
  v20 = v37;
  v33 = *(v37 + 56);
  v33(v11, 0, 1, v2);
  v21 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationStartDate;
  swift_beginAccess();
  v34 = v11;
  sub_20CD83094(v11, v1 + v21);
  swift_endAccess();
  v22 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);
  v23 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_hearingTestStartDate;
  swift_beginAccess();
  sub_20CD7DC78(v22 + v23, v9);
  v24 = v1;
  v25 = v2;
  v26 = *(v20 + 48);
  LODWORD(v20) = v26(v9, 1, v2);
  result = sub_20CDD8EC0(v9, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CDD8C64);
  if (v20 == 1)
  {
    v28 = v36;
    sub_20CD7DC78(v24 + v21, v36);
    if (v26(v28, 1, v2) == 1)
    {
      return sub_20CDD8EC0(v28, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CDD8C64);
    }

    else
    {
      v29 = *(v37 + 32);
      v30 = v35;
      v29(v35, v28, v25);
      v31 = v34;
      v29(v34, v30, v25);
      v33(v31, 0, 1, v25);
      swift_beginAccess();
      sub_20CD83094(v31, v22 + v23);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_20CDD3C78(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SessionManager.EndReason(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v101 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v93 = &v93 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v102 = &v93 - v11;
  MEMORY[0x28223BE20](v10);
  v104 = &v93 - v12;
  v13 = sub_20CE127E4();
  v96 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v100 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20CE12694();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15);
  v99 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD8C64(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v93 - v18;
  v20 = sub_20CE124E4();
  v103 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v98 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v93 - v23;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v25 = sub_20CE12CB4();
  v107 = __swift_project_value_buffer(v25, qword_27C817768);
  v26 = sub_20CE12C94();
  v27 = sub_20CE13CD4();
  v28 = os_log_type_enabled(v26, v27);
  v105 = a1;
  v106 = ObjectType;
  v97 = v13;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v109[0] = v30;
    *v29 = 136315394;
    v31 = sub_20CE14414();
    v33 = v2;
    v34 = sub_20CD96DCC(v31, v32, v109);

    *(v29 + 4) = v34;
    v2 = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_20CD96DCC(0xD000000000000016, 0x800000020CE1F040, v109);
    _os_log_impl(&dword_20CD70000, v26, v27, "[%s] %s called.", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v30, -1, -1);
    MEMORY[0x20F314110](v29, -1, -1);
  }

  v35 = [v2 view];
  if (!v35)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v36 = v35;
  type metadata accessor for HTUIEvaluationViewController.View();
  v37 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

  if ((v37 - 2) < 3)
  {
    v107 = sub_20CE12C94();
    v38 = sub_20CE13CC4();
    if (os_log_type_enabled(v107, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v109[0] = v40;
      *v39 = 136446210;
      v41 = sub_20CE14414();
      v43 = sub_20CD96DCC(v41, v42, v109);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_20CD70000, v107, v38, "[%{public}s] Method called with .sessionEnded while view is in an unexpected state.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x20F314110](v40, -1, -1);
      MEMORY[0x20F314110](v39, -1, -1);
    }

    else
    {
      v46 = v107;
    }

    return;
  }

  v44 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationStartDate;
  swift_beginAccess();
  sub_20CD7DC78(v2 + v44, v19);
  v45 = v103;
  if ((*(v103 + 48))(v19, 1, v20) == 1)
  {
    sub_20CDD8EC0(v19, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CDD8C64);
  }

  else
  {
    (*(v45 + 32))(v24, v19, v20);
    v47 = v98;
    sub_20CE124D4();
    sub_20CE12494();
    v49 = v48;
    v50 = *(v45 + 8);
    v50(v47, v20);
    v50(v24, v20);
    v51 = v2 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration;
    *v51 = v49;
    v51[8] = 0;
  }

  v53 = v104;
  v52 = v105;
  sub_20CDD8F74(v105, v104);
  sub_20CD7B6A4(0);
  v55 = v54;
  v56 = *(*(v54 - 8) + 48);
  if (v56(v53, 2, v54))
  {
    sub_20CDD89B0(v53);
    v57 = v102;
    sub_20CDD8F74(v52, v102);
    v58 = sub_20CE12C94();
    v59 = sub_20CE13CB4();
    if (os_log_type_enabled(v58, v59))
    {
      v107 = v2;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v108 = v61;
      *v60 = 136446466;
      v62 = sub_20CE14414();
      v64 = sub_20CD96DCC(v62, v63, &v108);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      v65 = v93;
      sub_20CDD8F74(v57, v93);
      v66 = v56(v65, 2, v55);
      if (v66)
      {
        if (v66 == 1)
        {
          v67 = 0xEC00000065766973;
          v68 = 0x756C636E6F636E49;
        }

        else
        {
          v67 = 0xEE00646574726F62;
          v68 = 0x4120746E65696C43;
        }
      }

      else
      {
        (*(v96 + 8))(v65 + *(v55 + 48), v97);
        (*(v94 + 8))(v65, v95);
        v67 = 0xE900000000000064;
        v68 = 0x6574656C706D6F43;
      }

      sub_20CDD89B0(v102);
      v84 = sub_20CD96DCC(v68, v67, &v108);

      *(v60 + 14) = v84;
      _os_log_impl(&dword_20CD70000, v58, v59, "[%{public}s] Session ended with: %s.", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v61, -1, -1);
      MEMORY[0x20F314110](v60, -1, -1);

      v2 = v107;
      v52 = v105;
    }

    else
    {

      sub_20CDD89B0(v57);
    }

    v85 = v101;
    sub_20CDD8F74(v52, v101);
    v86 = v56(v85, 2, v55);
    sub_20CDD89B0(v85);
    if (v86 == 1)
    {
      v87 = *(*(&v2->isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
      v88 = swift_getObjectType();
      v89 = v2;
      v90 = *(v87 + 8);
      swift_unknownObjectRetain();
      v90(v88, v87);
      v2 = v89;
      swift_unknownObjectRelease();
      LOBYTE(v108) = 4;
      sub_20CD8EDF0(&v108);
    }

    v91 = *(&v2->isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);
    LOBYTE(v108) = 6;
    v92 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_20CDDDFEC(v2, &v108, v91, v92, v106);

    return;
  }

  v69 = *(v55 + 48);
  v71 = v94;
  v70 = v95;
  v72 = v99;
  (*(v94 + 32))(v99, v53, v95);
  v74 = v96;
  v73 = v97;
  v75 = v53 + v69;
  v76 = v100;
  (*(v96 + 32))(v100, v75, v97);
  v77 = *(&v2->isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);
  sub_20CDDBA74(v72, v76);
  if (*(v77 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous))
  {
    (*(v74 + 8))(v76, v73);
    (*(v71 + 8))(v72, v70);
    return;
  }

  v78 = [v2 view];
  if (!v78)
  {
    goto LABEL_35;
  }

  v79 = v78;
  [swift_dynamicCastClassUnconditional() transitionToNextState];

  v80 = [v2 view];
  if (!v80)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v81 = v80;
  v82 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

  v83 = v99;
  if (v82 == 4)
  {
    sub_20CDD19E0(0);
  }

  (*(v74 + 8))(v100, v73);
  (*(v71 + 8))(v83, v70);
}

void sub_20CDD4870()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817768);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Received audio interruption.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = *(*__swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(*(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24)) + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager);
  sub_20CDBE098();
}

uint64_t HTUIEvaluationViewController.handledInterruptionsSet.getter()
{
  v0 = sub_20CDB9D40();
  v3 = MEMORY[0x20F313150](8, &type metadata for HearingTestInterruptionType, v0);
  sub_20CDD6734(&v2, byte_2823BAFC0);
  sub_20CDD6734(&v2, byte_2823BAFC1);
  sub_20CDD6734(&v2, byte_2823BAFC2);
  sub_20CDD6734(&v2, byte_2823BAFC3);
  sub_20CDD6734(&v2, byte_2823BAFC4);
  sub_20CDD6734(&v2, byte_2823BAFC5);
  sub_20CDD6734(&v2, byte_2823BAFC6);
  sub_20CDD6734(&v2, byte_2823BAFC7);
  return v3;
}

uint64_t sub_20CDD4AF4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24);
  if (v1 > 0x3F || (v1 & 1) == 0)
  {
    return 2;
  }

  if (sub_20CDDF9E4())
  {
    return 3;
  }

  return 4;
}

Swift::Void __swiftcall HTUIEvaluationViewController.terminalInterruptionEncountered()()
{
  v1 = type metadata accessor for SessionManager.EndReason(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD4C98();
  v4 = *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager);
  if (v4)
  {
    sub_20CD7B6A4(0);
    (*(*(v5 - 8) + 56))(v3, 2, 2, v5);

    sub_20CD776F4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20CDD3C78(v3);
      swift_unknownObjectRelease();
    }

    if (*(v4 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) == 1)
    {
      *(v4 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 0;
      sub_20CD770DC();
    }

    sub_20CDD89B0(v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDD4C98()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817768);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD000000000000019, 0x800000020CE1F060, &v12);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer;
  [*(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer) invalidate];
  v11 = *(v1 + v10);
  *(v1 + v10) = 0;
}

void sub_20CDD4E60()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817768);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, aBlock);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1EFE0, aBlock);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer;
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer))
  {
    oslog = sub_20CE12C94();
    v11 = sub_20CE13CD4();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      v14 = sub_20CE14414();
      v16 = sub_20CD96DCC(v14, v15, aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_20CD70000, oslog, v11, "[%{public}s] Not setting up a new pause threshold timer as one already exists.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x20F314110](v13, -1, -1);
      MEMORY[0x20F314110](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v18 = sub_20CE13914();
    v19 = [v17 initWithSuiteName_];

    if (v19)
    {
      v20 = COERCE_DOUBLE(NSUserDefaults.overrideHearingTestSessionPauseThreshold.getter());
      v22 = v21;

      if (v22)
      {
        v23 = 120.0;
      }

      else
      {
        v23 = v20;
      }

      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_20CDD8B30;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CD95834;
      aBlock[3] = &block_descriptor_6;
      v25 = _Block_copy(aBlock);
      v26 = objc_opt_self();

      v27 = [v26 timerWithTimeInterval:0 repeats:v25 block:v23];
      _Block_release(v25);

      v28 = *(v1 + v10);
      *(v1 + v10) = v27;
      v29 = v27;

      if (v29)
      {
        v30 = [objc_opt_self() mainRunLoop];
        [v30 addTimer:v29 forMode:*MEMORY[0x277CBE738]];
      }

      else
      {
        v31 = sub_20CE12C94();
        v32 = sub_20CE13CB4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          aBlock[0] = v34;
          *v33 = 136446466;
          v35 = sub_20CE14414();
          v37 = sub_20CD96DCC(v35, v36, aBlock);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          *(v33 + 14) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1EFE0, aBlock);
          _os_log_impl(&dword_20CD70000, v31, v32, "[%{public}s] %s Timer deallocated before it could be added to the RunLoop.", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F314110](v34, -1, -1);
          MEMORY[0x20F314110](v33, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20CDD54D4()
{
  swift_getObjectType();
  sub_20CDD4C98();
  if (v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState] == 1)
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for HTUIEvaluationViewController.View();
      v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

      if (v3 != 2)
      {
        v4 = [v0 view];
        if (!v4)
        {
LABEL_21:
          __break(1u);
          return;
        }

        v5 = v4;
        v6 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

        if ((v6 - 2) < 3)
        {
          if (qword_27C811D00 != -1)
          {
            swift_once();
          }

          v7 = sub_20CE12CB4();
          __swift_project_value_buffer(v7, qword_27C817768);
          oslog = sub_20CE12C94();
          v8 = sub_20CE13CD4();
          if (os_log_type_enabled(oslog, v8))
          {
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            v17 = v10;
            *v9 = 136446210;
            v11 = sub_20CE14414();
            v13 = sub_20CD96DCC(v11, v12, &v17);

            *(v9 + 4) = v13;
            _os_log_impl(&dword_20CD70000, oslog, v8, "[%{public}s] Not calling HearingTestSessionManager.resume() because there is nothing to resume.", v9, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v10);
            MEMORY[0x20F314110](v10, -1, -1);
            MEMORY[0x20F314110](v9, -1, -1);
          }

          return;
        }
      }

      v15 = *&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager];
      if (v15)
      {
        v14 = sel_resume;
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v14 = sel_scheduleEvaluationStart;
  v15 = v0;
LABEL_16:

  [v15 v14];
}

void sub_20CDD5778(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_20CDD5844(uint64_t a1, uint64_t a2)
{
  sub_20CDD8C64(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_20CE13BB4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_20CE13B84();

  v7 = sub_20CE13B74();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_20CDDAF10(0, 0, v5, &unk_20CE18938, v8);
}

uint64_t sub_20CDD598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a1;
  v4[11] = a4;
  sub_20CE13B84();
  v4[12] = sub_20CE13B74();
  v6 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CDD5A24, v6, v5);
}

uint64_t sub_20CDD5A24()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);

    sub_20CD7C388(v3 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager, v0 + 16);
    v4 = *(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager);
    sub_20CDBE0C0();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  **(v0 + 80) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t HTUIEvaluationViewController.stepStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20CE124E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double HTUIEvaluationViewController.appendToHearingTestFlowAnalyticsMetric(_:for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration + 8);
  v3 = a1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration);
  *(v3 + 8) = v2;

  return result;
}

uint64_t sub_20CDD5BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20CE124E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_20CDD5C74(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration + 8);
  v3 = a1 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration);
  *(v3 + 8) = v2;

  return result;
}

uint64_t sub_20CDD5CA4(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = BYTE1(a2);
  v5 = *v2;
  sub_20CE14384();
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  sub_20CE143A4();
  if (v4 != 16)
  {
    HearingTestFlowActionType.rawValue.getter();
    sub_20CE139C4();
  }

  v6 = sub_20CE143B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_106:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v27;
    sub_20CDD71A8(v3, v8, isUniquelyReferenced_nonNull_native);
    *v27 = v30;
    result = 1;
    v25 = v4;
    goto LABEL_109;
  }

  v29 = ~v7;
  v9 = 0xEF64657472617453;
  while (2)
  {
    v10 = (*(v5 + 48) + 2 * v8);
    v11 = v10[1];
    v12 = v9;
    v13 = 0x20676E6974746547;
    switch(*v10)
    {
      case 1:
        v13 = 0xD00000000000001DLL;
        v12 = 0x800000020CE1A690;
        break;
      case 2:
        v13 = 0xD00000000000001ELL;
        v12 = 0x800000020CE1A6B0;
        break;
      case 3:
        break;
      case 4:
        v13 = 0xD000000000000013;
        v12 = 0x800000020CE1A6E0;
        break;
      case 5:
        v13 = 0xD000000000000011;
        v12 = 0x800000020CE1A700;
        break;
      case 6:
        v13 = 0xD000000000000026;
        v12 = 0x800000020CE1A720;
        break;
      case 7:
        v13 = 0xD000000000000026;
        v12 = 0x800000020CE1A750;
        break;
      case 8:
        v13 = 0xD000000000000026;
        v12 = 0x800000020CE1A780;
        break;
      case 9:
        v13 = 0xD000000000000026;
        v12 = 0x800000020CE1A7B0;
        break;
      case 0xA:
        v12 = 0xEA00000000006E6FLL;
        v13 = 0x697461756C617645;
        break;
      case 0xB:
        v13 = 0xD00000000000002FLL;
        v12 = 0x800000020CE1A7F0;
        break;
      case 0xC:
        v12 = 0xE700000000000000;
        v13 = 0x73746C75736552;
        break;
      case 0xD:
        v13 = 0xD000000000000010;
        v12 = 0x800000020CE1A830;
        break;
      case 0xE:
        v13 = 0x7075727265746E49;
        v12 = 0xEC0000006E6F6974;
        break;
      case 0xF:
        v13 = 0xD000000000000014;
        v12 = 0x800000020CE1A850;
        break;
      default:
        v13 = 0xD000000000000013;
        v12 = 0x800000020CE1A670;
        break;
    }

    v14 = 0x20676E6974746547;
    v15 = v9;
    switch(v3)
    {
      case 1:
        v9 = 0x800000020CE1A690;
        if (v13 != 0xD00000000000001DLL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 2:
        v9 = 0x800000020CE1A6B0;
        if (v13 != 0xD00000000000001ELL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 3:
        goto LABEL_51;
      case 4:
        v9 = 0x800000020CE1A6E0;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 5:
        v9 = 0x800000020CE1A700;
        if (v13 != 0xD000000000000011)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 6:
        v9 = 0x800000020CE1A720;
        if (v13 != 0xD000000000000026)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 7:
        v9 = 0x800000020CE1A750;
        if (v13 != 0xD000000000000026)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 8:
        v9 = 0x800000020CE1A780;
        if (v13 != 0xD000000000000026)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 9:
        v9 = 0x800000020CE1A7B0;
        if (v13 != 0xD000000000000026)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 10:
        v9 = 0xEA00000000006E6FLL;
        v14 = 0x697461756C617645;
LABEL_51:
        if (v13 == v14)
        {
          goto LABEL_52;
        }

        goto LABEL_55;
      case 11:
        v9 = 0x800000020CE1A7F0;
        if (v13 != 0xD00000000000002FLL)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 12:
        v9 = 0xE700000000000000;
        if (v13 != 0x73746C75736552)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 13:
        v9 = 0x800000020CE1A830;
        if (v13 != 0xD000000000000010)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 14:
        v9 = 0xEC0000006E6F6974;
        if (v13 != 0x7075727265746E49)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      case 15:
        v9 = 0x800000020CE1A850;
        if (v13 != 0xD000000000000014)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      default:
        v9 = 0x800000020CE1A670;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_55;
        }

LABEL_52:
        if (v12 == v9)
        {
        }

        else
        {
LABEL_55:
          v16 = sub_20CE14284();

          if ((v16 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v17 = v4;
        v18 = 0xEA00000000007265;
        v19 = 0x746E452070657453;
        v20 = 0x746E452070657453;
        switch(v11)
        {
          case 0:
            goto LABEL_72;
          case 1:
            v17 = 107;
            v18 = 0xE900000000000074;
            v20 = 0x78654E2065766F4DLL;
            goto LABEL_72;
          case 2:
            v18 = 0xE90000000000006BLL;
            v20 = 0x6361422065766F4DLL;
            goto LABEL_72;
          case 3:
            v18 = 0xE400000000000000;
            v20 = 1701736260;
            goto LABEL_72;
          case 4:
            v20 = 0x46206C65636E6143;
            v18 = 0xEB00000000776F6CLL;
            goto LABEL_72;
          case 5:
            v20 = 0x764F207472617453;
            goto LABEL_72;
          case 6:
            v17 = 38;
            v20 = 0xD000000000000010;
            v18 = 0x800000020CE1A8A0;
            goto LABEL_72;
          case 7:
            v17 = 38;
            v20 = 0xD000000000000014;
            v18 = 0x800000020CE1A8C0;
            goto LABEL_72;
          case 8:
            v18 = 0xE700000000000000;
            v20 = 0x73736563637553;
            goto LABEL_72;
          case 9:
            v18 = 0xE700000000000000;
            v20 = 0x6572756C696146;
            goto LABEL_72;
          case 10:
            v20 = 0x74654420776F6853;
            v18 = 0xEC000000736C6961;
            goto LABEL_72;
          case 11:
            v20 = 0x74724120776F6853;
            v18 = 0xEC000000656C6369;
            goto LABEL_72;
          case 12:
            v17 = 38;
            v20 = 0xD000000000000015;
            v18 = 0x800000020CE1A900;
            goto LABEL_72;
          case 13:
            v17 = 38;
            v20 = 0xD00000000000001CLL;
            v18 = 0x800000020CE1A920;
            goto LABEL_72;
          case 14:
            v17 = 38;
            v20 = 0xD000000000000010;
            v18 = 0x800000020CE1A940;
            goto LABEL_72;
          case 15:
            v17 = 38;
            v20 = 0xD000000000000012;
            v18 = 0x800000020CE1A960;
            break;
          default:
            if (v4 != 16)
            {
              goto LABEL_6;
            }

            goto LABEL_108;
        }

        break;
    }

LABEL_72:
    v21 = 0xEA00000000007265;
    switch(v17)
    {
      case 0:
        goto LABEL_100;
      case 1:
        v21 = 0xE900000000000074;
        if (v20 != 0x78654E2065766F4DLL)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 2:
        v21 = 0xE90000000000006BLL;
        if (v20 != 0x6361422065766F4DLL)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 3:
        v21 = 0xE400000000000000;
        if (v20 != 1701736260)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 4:
        v21 = 0xEB00000000776F6CLL;
        if (v20 != 0x46206C65636E6143)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 5:
        if (v20 != 0x764F207472617453)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 6:
        v21 = 0x800000020CE1A8A0;
        if (v20 != 0xD000000000000010)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 7:
        v21 = 0x800000020CE1A8C0;
        if (v20 != 0xD000000000000014)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 8:
        v21 = 0xE700000000000000;
        if (v20 != 0x73736563637553)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 9:
        v21 = 0xE700000000000000;
        if (v20 != 0x6572756C696146)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 10:
        v19 = 0x74654420776F6853;
        v21 = 0xEC000000736C6961;
LABEL_100:
        if (v20 == v19)
        {
          goto LABEL_101;
        }

        goto LABEL_102;
      case 11:
        v21 = 0xEC000000656C6369;
        if (v20 != 0x74724120776F6853)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 12:
        v21 = 0x800000020CE1A900;
        if (v20 != 0xD000000000000015)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 13:
        v21 = 0x800000020CE1A920;
        if (v20 != 0xD00000000000001CLL)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 14:
        v21 = 0x800000020CE1A940;
        if (v20 != 0xD000000000000010)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      case 15:
        v21 = 0x800000020CE1A960;
        if (v20 != 0xD000000000000012)
        {
          goto LABEL_102;
        }

LABEL_101:
        if (v18 != v21)
        {
LABEL_102:
          v22 = sub_20CE14284();

          if (v22)
          {
            goto LABEL_108;
          }

LABEL_6:
          v8 = (v8 + 1) & v29;
          v9 = v15;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_106;
          }

          continue;
        }

LABEL_108:
        result = 0;
        v26 = (*(v5 + 48) + 2 * v8);
        LOBYTE(v3) = *v26;
        v25 = v26[1];
LABEL_109:
        *a1 = v3;
        a1[1] = v25;
        return result;
      default:
        goto LABEL_6;
    }
  }
}

uint64_t sub_20CDD6734(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_20CE14384();
  MEMORY[0x20F3138A0](a2);
  v6 = sub_20CE143B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_20CDD7C98(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20CDD682C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20CDD8FD8(0, &qword_27C8130D0, sub_20CDD8F20, &type metadata for HearingTestFlowAnalyticsStepActionPair);
  result = sub_20CE14094();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 2 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_20CE14384();
      sub_20CE139C4();

      sub_20CE143A4();
      if (v20 != 16)
      {
        sub_20CE139C4();
      }

      result = sub_20CE143B4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 2 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CDD6F40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_20CDD8FD8(0, &qword_27C8130E0, sub_20CDB9D40, &type metadata for HearingTestInterruptionType);
  result = sub_20CE14094();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_20CE14384();
      MEMORY[0x20F3138A0](v17);
      result = sub_20CE143B4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CDD71A8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = BYTE1(result);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  v32 = BYTE1(result);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_20CDD682C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_20CDD7DE4();
        goto LABEL_113;
      }

      sub_20CDD8094(v7 + 1);
    }

    v9 = *v3;
    sub_20CE14384();
    HearingTestFlowAnalyticsStep.rawValue.getter();
    sub_20CE139C4();

    sub_20CE143A4();
    if (v6 != 16)
    {
      HearingTestFlowActionType.rawValue.getter();
      sub_20CE139C4();
    }

    result = sub_20CE143B4();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v31 = ~v10;
      v11 = 0xEF64657472617453;
      v12 = 0x20676E6974746547;
      while (1)
      {
        v13 = (*(v9 + 48) + 2 * a2);
        v14 = v13[1];
        v15 = v11;
        v16 = v12;
        switch(*v13)
        {
          case 1:
            v16 = 0xD00000000000001DLL;
            v15 = 0x800000020CE1A690;
            break;
          case 2:
            v16 = 0xD00000000000001ELL;
            v15 = 0x800000020CE1A6B0;
            break;
          case 3:
            break;
          case 4:
            v16 = 0xD000000000000013;
            v15 = 0x800000020CE1A6E0;
            break;
          case 5:
            v16 = 0xD000000000000011;
            v15 = 0x800000020CE1A700;
            break;
          case 6:
            v16 = 0xD000000000000026;
            v15 = 0x800000020CE1A720;
            break;
          case 7:
            v16 = 0xD000000000000026;
            v15 = 0x800000020CE1A750;
            break;
          case 8:
            v16 = 0xD000000000000026;
            v15 = 0x800000020CE1A780;
            break;
          case 9:
            v16 = 0xD000000000000026;
            v15 = 0x800000020CE1A7B0;
            break;
          case 0xA:
            v15 = 0xEA00000000006E6FLL;
            v16 = 0x697461756C617645;
            break;
          case 0xB:
            v16 = 0xD00000000000002FLL;
            v15 = 0x800000020CE1A7F0;
            break;
          case 0xC:
            v15 = 0xE700000000000000;
            v16 = 0x73746C75736552;
            break;
          case 0xD:
            v16 = 0xD000000000000010;
            v15 = 0x800000020CE1A830;
            break;
          case 0xE:
            v16 = 0x7075727265746E49;
            v15 = 0xEC0000006E6F6974;
            break;
          case 0xF:
            v16 = 0xD000000000000014;
            v15 = 0x800000020CE1A850;
            break;
          default:
            v16 = 0xD000000000000013;
            v15 = 0x800000020CE1A670;
            break;
        }

        v17 = v12;
        v18 = v11;
        switch(v5)
        {
          case 1:
            v11 = 0x800000020CE1A690;
            if (v16 != 0xD00000000000001DLL)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 2:
            v11 = 0x800000020CE1A6B0;
            if (v16 != 0xD00000000000001ELL)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 3:
            goto LABEL_58;
          case 4:
            v11 = 0x800000020CE1A6E0;
            if (v16 != 0xD000000000000013)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 5:
            v11 = 0x800000020CE1A700;
            if (v16 != 0xD000000000000011)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 6:
            v11 = 0x800000020CE1A720;
            if (v16 != 0xD000000000000026)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 7:
            v11 = 0x800000020CE1A750;
            if (v16 != 0xD000000000000026)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 8:
            v11 = 0x800000020CE1A780;
            if (v16 != 0xD000000000000026)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 9:
            v11 = 0x800000020CE1A7B0;
            if (v16 != 0xD000000000000026)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 10:
            v11 = 0xEA00000000006E6FLL;
            v12 = 0x697461756C617645;
LABEL_58:
            if (v16 == v12)
            {
              goto LABEL_59;
            }

            goto LABEL_62;
          case 11:
            v11 = 0x800000020CE1A7F0;
            if (v16 != 0xD00000000000002FLL)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 12:
            v11 = 0xE700000000000000;
            if (v16 != 0x73746C75736552)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 13:
            v11 = 0x800000020CE1A830;
            if (v16 != 0xD000000000000010)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 14:
            v11 = 0xEC0000006E6F6974;
            if (v16 != 0x7075727265746E49)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          case 15:
            v11 = 0x800000020CE1A850;
            if (v16 != 0xD000000000000014)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          default:
            v11 = 0x800000020CE1A670;
            if (v16 != 0xD000000000000013)
            {
              goto LABEL_62;
            }

LABEL_59:
            if (v15 == v11)
            {

LABEL_63:
              v20 = v32;
              v21 = 0xEA00000000007265;
              result = 0x746E452070657453;
              switch(v14)
              {
                case 0:
                  goto LABEL_79;
                case 1:
                  v20 = 107;
                  v21 = 0xE900000000000074;
                  result = 0x78654E2065766F4DLL;
                  goto LABEL_79;
                case 2:
                  result = 0x6361422065766F4DLL;
                  v21 = 0xE90000000000006BLL;
                  goto LABEL_79;
                case 3:
                  v21 = 0xE400000000000000;
                  result = 1701736260;
                  goto LABEL_79;
                case 4:
                  result = 0x46206C65636E6143;
                  v21 = 0xEB00000000776F6CLL;
                  goto LABEL_79;
                case 5:
                  result = 0x764F207472617453;
                  goto LABEL_79;
                case 6:
                  v20 = 38;
                  result = 0xD000000000000010;
                  v21 = 0x800000020CE1A8A0;
                  goto LABEL_79;
                case 7:
                  v20 = 38;
                  result = 0xD000000000000014;
                  v21 = 0x800000020CE1A8C0;
                  goto LABEL_79;
                case 8:
                  v21 = 0xE700000000000000;
                  result = 0x73736563637553;
                  goto LABEL_79;
                case 9:
                  v21 = 0xE700000000000000;
                  result = 0x6572756C696146;
                  goto LABEL_79;
                case 10:
                  result = 0x74654420776F6853;
                  v21 = 0xEC000000736C6961;
                  goto LABEL_79;
                case 11:
                  result = 0x74724120776F6853;
                  v21 = 0xEC000000656C6369;
                  goto LABEL_79;
                case 12:
                  v20 = 38;
                  result = 0xD000000000000015;
                  v21 = 0x800000020CE1A900;
                  goto LABEL_79;
                case 13:
                  v20 = 38;
                  result = 0xD00000000000001CLL;
                  v21 = 0x800000020CE1A920;
                  goto LABEL_79;
                case 14:
                  v20 = 38;
                  result = 0xD000000000000010;
                  v21 = 0x800000020CE1A940;
                  goto LABEL_79;
                case 15:
                  v20 = 38;
                  result = 0xD000000000000012;
                  v21 = 0x800000020CE1A960;
LABEL_79:
                  v22 = 0x746E452070657453;
                  v23 = 0xEA00000000007265;
                  switch(v20)
                  {
                    case 0:
                      goto LABEL_107;
                    case 1:
                      v23 = 0xE900000000000074;
                      if (result != 0x78654E2065766F4DLL)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 2:
                      v23 = 0xE90000000000006BLL;
                      if (result != 0x6361422065766F4DLL)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 3:
                      v23 = 0xE400000000000000;
                      if (result != 1701736260)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 4:
                      v23 = 0xEB00000000776F6CLL;
                      if (result != 0x46206C65636E6143)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 5:
                      if (result != 0x764F207472617453)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 6:
                      v23 = 0x800000020CE1A8A0;
                      if (result != 0xD000000000000010)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 7:
                      v23 = 0x800000020CE1A8C0;
                      if (result != 0xD000000000000014)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 8:
                      v23 = 0xE700000000000000;
                      if (result != 0x73736563637553)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 9:
                      v23 = 0xE700000000000000;
                      if (result != 0x6572756C696146)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 10:
                      v22 = 0x74654420776F6853;
                      v23 = 0xEC000000736C6961;
LABEL_107:
                      if (result == v22)
                      {
                        goto LABEL_108;
                      }

                      goto LABEL_109;
                    case 11:
                      v23 = 0xEC000000656C6369;
                      if (result != 0x74724120776F6853)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 12:
                      v23 = 0x800000020CE1A900;
                      if (result != 0xD000000000000015)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 13:
                      v23 = 0x800000020CE1A920;
                      if (result != 0xD00000000000001CLL)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 14:
                      v23 = 0x800000020CE1A940;
                      if (result != 0xD000000000000010)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_108;
                    case 15:
                      v23 = 0x800000020CE1A960;
                      if (result != 0xD000000000000012)
                      {
                        goto LABEL_109;
                      }

LABEL_108:
                      if (v21 == v23)
                      {
                        goto LABEL_116;
                      }

LABEL_109:
                      v24 = sub_20CE14284();

                      if (v24)
                      {
                        goto LABEL_117;
                      }

                      goto LABEL_13;
                    default:
                      goto LABEL_13;
                  }

                default:
                  if (v32 != 16)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_117;
              }
            }

LABEL_62:
            v19 = sub_20CE14284();

            if (v19)
            {
              goto LABEL_63;
            }

LABEL_13:
            a2 = (a2 + 1) & v31;
            v11 = v18;
            v12 = v17;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_113;
            }

            break;
        }
      }
    }
  }

LABEL_113:
  v25 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = (*(v25 + 48) + 2 * a2);
  *v26 = v5;
  v26[1] = v32;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_116:

LABEL_117:
    result = sub_20CE142D4();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}