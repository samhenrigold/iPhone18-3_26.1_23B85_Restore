void sub_24A57B334(uint64_t a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = *(Strong + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine);
  if (!v3)
  {
    goto LABEL_5;
  }

  v26[0] = 0;
  if ([v3 startAndReturnError_])
  {
    v4 = v26[0];
LABEL_5:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v2;
    v7 = sub_24A62E2F4();
    v8 = sub_24A62EF64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v2;
      v11 = v6;
      _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMR1HaptiCtrl%@: restarted haptic engine", v9, 0xCu);
      sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v10, -1, -1);
      MEMORY[0x24C21BBE0](v9, -1, -1);
    }

    else
    {
    }

    return;
  }

  v12 = v26[0];
  v13 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24A62E314();
  sub_24A506EB8(v14, qword_27EF5C118);
  v15 = v2;
  v16 = v13;
  v17 = sub_24A62E2F4();
  v18 = sub_24A62EF64();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = v21;
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v20 = v2;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v22 = v15;
    v23 = sub_24A62F6A4();
    v25 = sub_24A509BA8(v23, v24, v26);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1HaptiCtrl%@: failed restarting haptic engine: %s", v19, 0x16u);
    sub_24A50D6A4(v20, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    sub_24A508C54(v21);
    MEMORY[0x24C21BBE0](v21, -1, -1);
    MEMORY[0x24C21BBE0](v19, -1, -1);
  }

  else
  {
  }
}

void sub_24A57B6F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v4;
    v7 = sub_24A62E2F4();
    v8 = sub_24A62EF64();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412546;
      *(v9 + 4) = v6;
      *v10 = v4;
      *(v9 + 12) = 2048;
      *(v9 + 14) = a1;
      v11 = v6;
      _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMR1HaptiCtrl%@: stopped haptic engine (%ld)", v9, 0x16u);
      sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v10, -1, -1);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      v6 = v7;
      v7 = v11;
    }
  }
}

double sub_24A57B880(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_24A57B8D4()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup;
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup) == 1)
  {
    sub_24A57BFC4();
    v2 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink;
    v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = v3;
      v6 = [v4 currentRunLoop];
      [v5 removeFromRunLoop:v6 forMode:*MEMORY[0x277CBE738]];

      v7 = *(v0 + v2);
    }

    else
    {
      v7 = 0;
    }

    [v7 invalidate];
    v8 = *(v0 + v2);
    *(v0 + v2) = 0;

    v9 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine;
    v10 = *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine);
    if (v10)
    {
      [v10 stopWithCompletionHandler_];
      v11 = *(v0 + v9);
    }

    else
    {
      v11 = 0;
    }

    *(v0 + v9) = 0;

    *(v0 + v1) = 0;
  }
}

void sub_24A57B9E0()
{
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v1)
  {
    v2 = v0;
    v3 = *MEMORY[0x277CBF638];
    v4 = objc_allocWithZone(MEMORY[0x277CBF6C0]);
    v5 = v1;
    LODWORD(v6) = 0.5;
    v7 = [v4 initWithParameterID:v3 value:v6];
    v8 = *MEMORY[0x277CBF640];
    v9 = objc_allocWithZone(MEMORY[0x277CBF6C0]);
    LODWORD(v10) = 0.5;
    v11 = [v9 initWithParameterID:v8 value:v10];
    v12 = *MEMORY[0x277CBF648];
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24A633810;
    *(v13 + 32) = v7;
    *(v13 + 40) = v11;
    v14 = objc_allocWithZone(MEMORY[0x277CBF6B8]);
    sub_24A50D7EC(0, &qword_27EF507A0, 0x277CBF6C0);
    v15 = v7;
    v16 = v11;
    v17 = sub_24A62ED54();

    v18 = [v14 initWithEventType:v12 parameters:v17 relativeTime:0.0 duration:100.0];

    type metadata accessor for FMR1HapticPattern();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24A6339F0;
    *(v19 + 32) = v18;
    v20 = v18;
    v21 = sub_24A578B24(v19, MEMORY[0x277D84F90]);
    *&v21[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name] = xmmword_24A636D70;
    v34 = v21;

    v35 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPattern];
    *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPattern] = v34;
    v36 = v34;

    v54[0] = 0;
    v37 = [v5 createPlayerWithPattern:v36 error:v54];
    v38 = v54[0];
    if (v37)
    {
      v39 = v20;
      v52 = v15;
      *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer] = v37;
      v40 = v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v41 = sub_24A62E314();
      sub_24A506EB8(v41, qword_27EF5C118);
      v42 = v2;
      v43 = sub_24A62E2F4();
      v44 = sub_24A62EF64();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v42;
        *v46 = v42;
        v47 = v42;
        _os_log_impl(&dword_24A503000, v43, v44, "🧭 FMR1HaptiCtrl%@: created continuous haptic player", v45, 0xCu);
        sub_24A50D6A4(v46, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v46, -1, -1);
        MEMORY[0x24C21BBE0](v45, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v48 = v54[0];
      v49 = sub_24A62E084();

      swift_willThrow();
      v53 = v5;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v22 = sub_24A62E314();
      sub_24A506EB8(v22, qword_27EF5C118);
      v23 = v2;
      v24 = v49;
      v25 = sub_24A62E2F4();
      v26 = sub_24A62EF64();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v51 = v15;
        v28 = swift_slowAlloc();
        v50 = v20;
        v29 = swift_slowAlloc();
        v54[0] = v29;
        *v27 = 138412546;
        *(v27 + 4) = v23;
        *v28 = v23;
        *(v27 + 12) = 2080;
        swift_getErrorValue();
        v30 = v23;
        v31 = sub_24A62F6A4();
        v33 = sub_24A509BA8(v31, v32, v54);

        *(v27 + 14) = v33;
        _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMR1HaptiCtrl%@: failed creating continuous haptic player: %s", v27, 0x16u);
        sub_24A50D6A4(v28, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v28, -1, -1);
        sub_24A508C54(v29);
        MEMORY[0x24C21BBE0](v29, -1, -1);
        MEMORY[0x24C21BBE0](v27, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_24A57BFC4()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer);
  if (v2)
  {
    v7[0] = 0;
    if ([v2 stopAtTime:v7 error:0.0])
    {
      v3 = v7[0];
    }

    else
    {
      v4 = v7[0];
      v5 = sub_24A62E084();

      swift_willThrow();
    }
  }

  *(v0 + v1) = 0;
  return swift_unknownObjectRelease();
}

void sub_24A57C088(uint64_t a1)
{
  v42 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = sub_24A62EB14();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = sub_24A62EA94();
  MEMORY[0x28223BE20](v8);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v9 = sub_24A62E314();
  sub_24A506EB8(v9, qword_27EF5C118);
  v10 = v1;
  v11 = sub_24A62E2F4();
  v12 = sub_24A62EF64();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_24A503000, v11, v12, "🧭 FMR1HaptiCtrl%@: playing continuous haptic", v13, 0xCu);
    sub_24A50D6A4(v14, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v14, -1, -1);
    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  v16 = *&v10[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (v16)
  {
    aBlock[0] = 0;
    if (![v16 startAtTime:aBlock error:0.0])
    {
      v29 = aBlock[0];
      v30 = sub_24A62E084();

      swift_willThrow();
      v31 = v10;
      v32 = v30;
      v33 = sub_24A62E2F4();
      v34 = sub_24A62EF64();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v35 = 138412546;
        *(v35 + 4) = v31;
        *v36 = v31;
        *(v35 + 12) = 2080;
        swift_getErrorValue();
        v38 = v31;
        v39 = sub_24A62F6A4();
        v41 = sub_24A509BA8(v39, v40, aBlock);

        *(v35 + 14) = v41;
        _os_log_impl(&dword_24A503000, v33, v34, "🧭 FMR1HaptiCtrl%@: failed starting continuous haptic player: %s", v35, 0x16u);
        sub_24A50D6A4(v36, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v36, -1, -1);
        sub_24A508C54(v37);
        MEMORY[0x24C21BBE0](v37, -1, -1);
        MEMORY[0x24C21BBE0](v35, -1, -1);
      }

      else
      {
      }

      return;
    }

    v17 = aBlock[0];
  }

  v10[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
  v18 = *&v10[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
  if (v18)
  {
    v19 = *&v10[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
    v20 = *&v10[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPattern];
    sub_24A5173CC(*&v10[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler], v19);
    v21 = v20;
    v18(v20, v42);
    sub_24A50D354(v18, v19);
  }

  v22 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem;
  if (*&v10[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem])
  {

    sub_24A62EB34();
  }

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A582FA4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA6078;
  _Block_copy(aBlock);
  v45 = MEMORY[0x277D84F90];
  sub_24A582FCC(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v24 = sub_24A62EB24();

  *&v10[v22] = v24;

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v25 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v26 = *(v43 + 8);
  v27 = v4;
  v28 = v44;
  v26(v27, v44);
  sub_24A62EFE4();

  v26(v7, v28);
}

void *sub_24A57C71C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v2;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v2;
      v9 = v4;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1HaptiCtrl%@: will restart continuous haptic", v7, 0xCu);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    memset(v10, 0, sizeof(v10));
    sub_24A57C088(v10);

    return sub_24A50D6A4(v10, &unk_27EF50780, &qword_24A638470);
  }

  return result;
}

void sub_24A57C8B4()
{
  v1 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  if (*&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem])
  {

    sub_24A62EB34();
  }

  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v2)
  {
    goto LABEL_6;
  }

  v25[0] = 0;
  if ([v2 stopAtTime:v25 error:0.0])
  {
    v3 = v25[0];
LABEL_6:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v0;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1HaptiCtrl%@: stopped continuous haptic player", v8, 0xCu);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    return;
  }

  v11 = v25[0];
  v12 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v13 = sub_24A62E314();
  sub_24A506EB8(v13, qword_27EF5C118);
  v14 = v1;
  v15 = v12;
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v21 = v14;
    v22 = sub_24A62F6A4();
    v24 = sub_24A509BA8(v22, v23, v25);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMR1HaptiCtrl%@: failed stopping continuous haptic player: %s", v18, 0x16u);
    sub_24A50D6A4(v19, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v19, -1, -1);
    sub_24A508C54(v20);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  else
  {
  }
}

void sub_24A57CC58(unint64_t a1, float a2)
{
  v4 = v2;
  v5 = a1;
  v7 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactor];
  *v7 = a2;
  *(v7 + 4) = 0;
  if (a1 != 2 && (a1 & 1) != 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticRampingFactorSpring];
    sub_24A55C6B4(0.0);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
  }

  v9 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticRampingFactorSpring];
  v10 = v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  v11 = v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  v12 = *(v9 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  if (*(v10 + 280) + v12 == 1.79769313e308)
  {
    sub_24A55C6B4(1.0);
    *(v9 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v12 = *(v11 + 40);
  }

  v13 = 1.0 - v12;
  *(v10 + 280) = v13;
  *(v10 + 240) = v13;
  *(v10 + 248) = 0;
  v14 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactorLogCounter;
  v15 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactorLogCounter];
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v15 + 0x888888888888888, 2) > 0x444444444444444uLL)
  {
    goto LABEL_20;
  }

  v3 = &v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastLoggedContinuousHapticFactor];
  v16 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastLoggedContinuousHapticFactor];
  if (v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastLoggedContinuousHapticFactor + 4])
  {
    v16 = 3.4028e38;
  }

  if (vabds_f32(a2, v16) < 0.01)
  {
    goto LABEL_19;
  }

  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_24A62F384();
  MEMORY[0x24C21A5D0](0x1000000000000012, 0x800000024A63FD70);
  v17 = [v4 description];
  v18 = sub_24A62EC14();
  v20 = v19;

  MEMORY[0x24C21A5D0](v18, v20);

  MEMORY[0x24C21A5D0](0x1000000000000034, 0x800000024A63FD90);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v21 = swift_allocObject();
  v22 = v21;
  *(v21 + 16) = xmmword_24A633A00;
  if (v5 == 2 || (v5 & 1) == 0)
  {
    v24 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = 0xE800000000000000;
    v24 = 0x20676E69706D6172;
  }

  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_24A508FEC();
  *(v22 + 32) = v24;
  *(v22 + 40) = v23;
  v25 = MEMORY[0x277D83B08];
  *(v22 + 96) = MEMORY[0x277D83A90];
  *(v22 + 104) = v25;
  *(v22 + 72) = a2 * 100.0;
  v10 = sub_24A62EC24();
  v5 = v26;

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v27 = sub_24A62E314();
    sub_24A506EB8(v27, qword_27EF5C118);

    v28 = sub_24A62E2F4();
    v29 = sub_24A62EF64();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34[0] = v31;
      *v30 = 136315138;
      v10 = sub_24A509BA8(v10, v5, v34);

      *(v30 + 4) = v10;
      _os_log_impl(&dword_24A503000, v28, v29, "%s", v30, 0xCu);
      sub_24A508C54(v31);
      MEMORY[0x24C21BBE0](v31, -1, -1);
      MEMORY[0x24C21BBE0](v30, -1, -1);
    }

    else
    {
    }

LABEL_19:
    *v3 = a2;
    *(v3 + 4) = 0;
    v15 = *&v4[v14];
LABEL_20:
    v32 = __OFADD__(v15, 1);
    v33 = v15 + 1;
    if (!v32)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  *&v4[v14] = v33;
}

void sub_24A57D08C()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBF610];
  v2 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
  LODWORD(v3) = 1.0;
  v4 = [v2 initWithParameterID:v1 value:v3 relativeTime:0.0];
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v5)
  {
    goto LABEL_4;
  }

  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A6339F0;
  *(v6 + 32) = v4;
  sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
  swift_unknownObjectRetain();
  v7 = v4;
  v8 = sub_24A62ED54();

  v31[0] = 0;
  v9 = [v5 sendParameters:v8 atTime:v31 error:0.0];
  swift_unknownObjectRelease();

  if (v9)
  {
    v10 = v31[0];
LABEL_4:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A62E314();
    sub_24A506EB8(v11, qword_27EF5C118);
    v12 = v0;
    v13 = sub_24A62E2F4();
    v14 = sub_24A62EF64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1HaptiCtrl%@: reset continuous haptic player intensity to 1.0", v15, 0xCu);
      sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v16, -1, -1);
      MEMORY[0x24C21BBE0](v15, -1, -1);
    }

    goto LABEL_9;
  }

  v18 = v31[0];
  v19 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v20 = sub_24A62E314();
  sub_24A506EB8(v20, qword_27EF5C118);
  v21 = v0;
  v22 = v19;
  v4 = sub_24A62E2F4();
  v23 = sub_24A62EF64();

  if (os_log_type_enabled(v4, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    v27 = v21;
    v28 = sub_24A62F6A4();
    v30 = sub_24A509BA8(v28, v29, v31);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_24A503000, v4, v23, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v24, 0x16u);
    sub_24A50D6A4(v25, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v25, -1, -1);
    sub_24A508C54(v26);
    MEMORY[0x24C21BBE0](v26, -1, -1);
    MEMORY[0x24C21BBE0](v24, -1, -1);

LABEL_9:
    return;
  }
}

void sub_24A57D4E4()
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBF610];
  v2 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
  LODWORD(v3) = 1058642330;
  v4 = [v2 initWithParameterID:v1 value:v3 relativeTime:0.0];
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
  if (!v5)
  {
    goto LABEL_4;
  }

  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A6339F0;
  *(v6 + 32) = v4;
  sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
  swift_unknownObjectRetain();
  v7 = v4;
  v8 = sub_24A62ED54();

  v31[0] = 0;
  v9 = [v5 sendParameters:v8 atTime:v31 error:0.0];
  swift_unknownObjectRelease();

  if (v9)
  {
    v10 = v31[0];
LABEL_4:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A62E314();
    sub_24A506EB8(v11, qword_27EF5C118);
    v12 = v0;
    v13 = sub_24A62E2F4();
    v14 = sub_24A62EF64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 0x3FE3333340000000;
      v17 = v12;
      _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1HaptiCtrl%@: reset continuous haptic player intensity to %f", v15, 0x16u);
      sub_24A50D6A4(v16, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v16, -1, -1);
      MEMORY[0x24C21BBE0](v15, -1, -1);
    }

    goto LABEL_9;
  }

  v18 = v31[0];
  v19 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v20 = sub_24A62E314();
  sub_24A506EB8(v20, qword_27EF5C118);
  v21 = v0;
  v22 = v19;
  v4 = sub_24A62E2F4();
  v23 = sub_24A62EF64();

  if (os_log_type_enabled(v4, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v24 = 138412546;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    v27 = v21;
    v28 = sub_24A62F6A4();
    v30 = sub_24A509BA8(v28, v29, v31);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_24A503000, v4, v23, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v24, 0x16u);
    sub_24A50D6A4(v25, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v25, -1, -1);
    sub_24A508C54(v26);
    MEMORY[0x24C21BBE0](v26, -1, -1);
    MEMORY[0x24C21BBE0](v24, -1, -1);

LABEL_9:
    return;
  }
}

id sub_24A57D95C(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_enablePlayingAheadHaptic;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_enablePlayingAheadHaptic) == 1)
  {
    memset(v23, 0, sizeof(v23));
    sub_24A5803DC(v23);
    sub_24A50D6A4(v23, &unk_27EF50780, &qword_24A638470);
    *(v1 + v4) = 0;
  }

  else if ((*(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod + 8) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod);
    v6 = v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp;
    if (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp + 8) & 1) != 0 || (v7 = v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay, (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay + 8)))
    {
      [a1 timestamp];
      *v6 = v8;
      *(v6 + 8) = 0;
      v9 = v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay;
      *v9 = v5;
      *(v9 + 8) = 0;
    }

    else
    {
      v17 = *v7;
      v18 = *v6;
      [a1 timestamp];
      v20 = v19 - v18;
      if (v17 > v5)
      {
        v21 = v17;
      }

      else
      {
        v21 = v5;
      }

      if (v21 > v20)
      {
        goto LABEL_8;
      }

      [a1 timestamp];
      *v6 = v22;
      *(v6 + 8) = 0;
      *v7 = v5;
      *(v7 + 8) = 0;
    }

    sub_24A5828AC();
  }

LABEL_8:
  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern) == 1 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastRenderTime + 8) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactor + 4) & 1) == 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactor);
    v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastRenderTime);
    [a1 timestamp];
    v13 = *(v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticRampingFactorSpring);
    sub_24A55C858(v12 - v11);
    *(v13 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    sub_24A58245C(v10);
  }

  result = [a1 timestamp];
  v15 = v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastRenderTime;
  *v15 = v16;
  *(v15 + 8) = 0;
  return result;
}

float sub_24A57DBDC(double a1)
{
  if (a1 < 0.2)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap1HapticPattern;
LABEL_7:
    v4 = *(v1 + v3);
    v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern;
    v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern);
    goto LABEL_8;
  }

  if (a1 < 0.4)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap2HapticPattern;
    goto LABEL_7;
  }

  if (a1 < 0.6)
  {
    v3 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap3HapticPattern;
    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern;
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern);
  if (a1 >= 0.8)
  {
    v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap5HapticPattern;
  }

  else
  {
    v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap4HapticPattern;
  }

  v4 = *(v1 + v12);
LABEL_8:
  *(v1 + v5) = v4;
  v7 = v4;

  v8 = 1.0 - a1;
  v9 = a1;
  result = (v9 * 0.65) + (v8 * 0.4);
  v11 = v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity;
  *v11 = result;
  *(v11 + 4) = 0;
  return result;
}

void sub_24A57DCF4(uint64_t a1)
{

  sub_24A57DDE4(a1, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_buildHapticPattern, "🧭 FMR1HaptiCtrl%@: playing build haptic", "🧭 FMR1HaptiCtrl%@: failed playing build haptic (%s)");
}

void sub_24A57DD6C(uint64_t a1)
{

  sub_24A57DDE4(a1, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_scatterHapticPattern, "🧭 FMR1HaptiCtrl%@: playing scatter haptic", "🧭 FMR1HaptiCtrl%@: failed playing scatter haptic (%s)");
}

void sub_24A57DDE4(uint64_t a1, uint64_t *a2, void *a3, const char *a4, const char *a5)
{
  v10 = v5;
  v71 = *MEMORY[0x277D85DE8];
  v12 = &v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v12 = 0;
  v12[8] = 1;
  memset(v70, 0, sizeof(v70));
  v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v70, &v5[v13]);
  swift_endAccess();
  sub_24A57FD10();
  v14 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v5[v14] = 0;

  v15 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v5[v15] = 0;

  v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v16 = *a2;
  if (*&v5[*a2])
  {

    sub_24A62EB34();
  }

  *&v5[v16] = 0;

  v17 = *&v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v17)
  {
    v18 = *&v5[*a3];
    if (v18)
    {
      *&v70[0] = 0;
      v19 = v18;
      v20 = v17;
      v21 = [v20 createPlayerWithPattern:v19 error:v70];
      if (v21)
      {
        v22 = v21;
        v69 = a1;
        v23 = qword_27EF4E9A0;
        v24 = *&v70[0];
        if (v23 != -1)
        {
          swift_once();
        }

        v25 = sub_24A62E314();
        sub_24A506EB8(v25, qword_27EF5C118);
        v26 = v10;
        v27 = sub_24A62E2F4();
        v28 = sub_24A62EF64();

        v68 = v22;
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = v18;
          v31 = v19;
          v32 = v20;
          v33 = a5;
          v34 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v26;
          *v34 = v26;
          v35 = v26;
          _os_log_impl(&dword_24A503000, v27, v28, a4, v29, 0xCu);
          sub_24A50D6A4(v34, &qword_27EF4FED0, &unk_24A635E00);
          v36 = v34;
          a5 = v33;
          v20 = v32;
          v19 = v31;
          v18 = v30;
          MEMORY[0x24C21BBE0](v36, -1, -1);
          v37 = v29;
          v22 = v68;
          MEMORY[0x24C21BBE0](v37, -1, -1);
        }

        *&v70[0] = 0;
        v38 = [v22 startAtTime:v70 error:0.0];
        v39 = *&v70[0];
        if (v38)
        {
          v26[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v40 = v39;
          v41 = v69;
        }

        else
        {
          v66 = a5;
          v44 = *&v70[0];
          v45 = sub_24A62E084();

          swift_willThrow();
          v46 = v26;
          v47 = v45;
          v48 = sub_24A62E2F4();
          v49 = sub_24A62EF64();

          if (os_log_type_enabled(v48, v49))
          {
            v65 = v48;
            v50 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&v70[0] = v67;
            *v50 = 138412546;
            *(v50 + 4) = v46;
            *v64 = v46;
            *(v50 + 12) = 2080;
            swift_getErrorValue();
            v51 = v46;
            v52 = sub_24A62F6A4();
            v54 = sub_24A509BA8(v52, v53, v70);

            *(v50 + 14) = v54;
            _os_log_impl(&dword_24A503000, v65, v49, v66, v50, 0x16u);
            sub_24A50D6A4(v64, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v64, -1, -1);
            sub_24A508C54(v67);
            MEMORY[0x24C21BBE0](v67, -1, -1);
            MEMORY[0x24C21BBE0](v50, -1, -1);
          }

          else
          {
          }

          v41 = v69;
        }

        v55 = *&v26[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v55)
        {
          v56 = *&v26[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v57 = v19;
          sub_24A5173CC(v55, v56);
          v55(v18, v41);
          sub_24A50D354(v55, v56);
        }

        v58 = *&v26[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink];
        if (v58)
        {
          v59 = v58;
          [v59 timestamp];
          v61 = v60;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v61 = 0;
        }

        v62 = &v26[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
        *v62 = v61;
        v62[8] = 0;
        v63 = &v26[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay];
        *v63 = 0x3FF0000000000000;
        v63[8] = 0;
      }

      else
      {
        v42 = *&v70[0];
        v43 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }
}

void sub_24A57E3EC(char a1, uint64_t a2)
{
  v3 = v2;
  v52 = *MEMORY[0x277D85DE8];
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v5 = 0;
  v5[8] = 1;
  memset(v51, 0, sizeof(v51));
  v6 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v51, &v3[v6]);
  swift_endAccess();
  if ((a1 & 1) == 0)
  {
    sub_24A57FD10();
  }

  v7 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v3[v7] = 0;

  v8 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v3[v8] = 0;

  v9 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v3[v9] = 0;

  v10 = *&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v10)
  {
    v11 = *&v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachHapticPattern];
    if (v11)
    {
      *&v51[0] = 0;
      v12 = v11;
      v49 = v10;
      v13 = [v49 createPlayerWithPattern:v12 error:v51];
      if (v13)
      {
        v14 = v13;
        v15 = qword_27EF4E9A0;
        v16 = *&v51[0];
        if (v15 != -1)
        {
          swift_once();
        }

        v17 = sub_24A62E314();
        sub_24A506EB8(v17, qword_27EF5C118);
        v18 = v3;
        v19 = sub_24A62E2F4();
        v20 = sub_24A62EF64();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = v14;
          v23 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v23 = v18;
          v24 = v18;
          _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMR1HaptiCtrl%@: playing arm's reach haptic", v21, 0xCu);
          sub_24A50D6A4(v23, &qword_27EF4FED0, &unk_24A635E00);
          v25 = v23;
          v14 = v22;
          MEMORY[0x24C21BBE0](v25, -1, -1);
          MEMORY[0x24C21BBE0](v21, -1, -1);
        }

        *&v51[0] = 0;
        v26 = [v14 startAtTime:v51 error:0.0];
        v27 = *&v51[0];
        if (v26)
        {
          v18[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v28 = v27;
        }

        else
        {
          v31 = *&v51[0];
          v32 = sub_24A62E084();

          swift_willThrow();
          v33 = v18;
          v34 = v32;
          v35 = sub_24A62E2F4();
          v36 = sub_24A62EF64();

          if (os_log_type_enabled(v35, v36))
          {
            v47 = v36;
            v37 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *&v51[0] = v48;
            buf = v37;
            *v37 = 138412546;
            *(v37 + 4) = v33;
            *v46 = v33;
            *(v37 + 12) = 2080;
            swift_getErrorValue();
            v38 = v33;
            v39 = sub_24A62F6A4();
            v41 = sub_24A509BA8(v39, v40, v51);

            *(buf + 14) = v41;
            _os_log_impl(&dword_24A503000, v35, v47, "🧭 FMR1HaptiCtrl%@: failed playing arm's reach haptic (%s)", buf, 0x16u);
            sub_24A50D6A4(v46, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v46, -1, -1);
            sub_24A508C54(v48);
            MEMORY[0x24C21BBE0](v48, -1, -1);
            MEMORY[0x24C21BBE0](buf, -1, -1);
          }

          else
          {
          }
        }

        v42 = *&v18[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v42)
        {
          v43 = *&v18[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v44 = v12;
          sub_24A5173CC(v42, v43);
          v42(v11, a2);

          sub_24A50D354(v42, v43);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v29 = *&v51[0];
        v30 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }
}

void sub_24A57E970(uint64_t a1)
{
  v2 = v1;
  v98 = a1;
  v103 = *MEMORY[0x277D85DE8];
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A62EAF4();
  v95 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v86 - v14;
  v16 = &v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v16 = 0;
  v16[8] = 1;
  aBlock = 0u;
  v100 = 0u;
  v17 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(&aBlock, &v2[v17]);
  swift_endAccess();
  sub_24A57FD10();
  v18 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v2[v18] = 0;

  v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v19 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v2[v19] = 0;

  v20 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v2[v20] = 0;

  sub_24A57D08C();
  v21 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v21)
  {
    v22 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticPattern];
    if (v22)
    {
      v90 = v4;
      v91 = v3;
      *&aBlock = 0;
      v23 = v22;
      v24 = v21;
      v25 = [v24 createPlayerWithPattern:v23 error:&aBlock];
      if (!v25)
      {
        v33 = aBlock;
        v34 = sub_24A62E084();

        swift_willThrow();
        return;
      }

      v93 = v25;
      v92 = v23;
      v94 = v24;
      v26 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink];
      v88 = v22;
      if (v26)
      {
        v27 = aBlock;
        [v26 timestamp];
        v29 = v28;
        v30 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
        v31 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp + 8];
        if (*v31)
        {
          v32 = v94;
          if (v28 >= 2.0)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }

        v32 = v94;
      }

      else
      {
        v30 = &v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
        v35 = v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp + 8];
        v36 = aBlock;
        v32 = v94;
        if (v35)
        {
LABEL_19:
          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v37 = sub_24A62E314();
          sub_24A506EB8(v37, qword_27EF5C118);
          v38 = v2;
          v39 = sub_24A62E2F4();
          v40 = sub_24A62EF64();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            *(v41 + 4) = v38;
            *v42 = v38;
            v43 = v38;
            _os_log_impl(&dword_24A503000, v39, v40, "🧭 FMR1HaptiCtrl%@: not playing nearby haptic (we just played it)", v41, 0xCu);
            sub_24A50D6A4(v42, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v42, -1, -1);
            MEMORY[0x24C21BBE0](v41, -1, -1);
          }

          swift_unknownObjectRelease();
          return;
        }

        v31 = v30 + 1;
        v29 = 0.0;
      }

      if (*v30 + 2.0 <= v29)
      {
LABEL_24:
        v87 = v31;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v44 = sub_24A62E314();
        sub_24A506EB8(v44, qword_27EF5C118);
        v45 = v2;
        v46 = sub_24A62E2F4();
        v47 = sub_24A62EF64();
        v89 = v45;

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v86 = v30;
          v49 = v48;
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = v89;
          *(v49 + 4) = v89;
          *v50 = v51;
          v52 = v51;
          _os_log_impl(&dword_24A503000, v46, v47, "🧭 FMR1HaptiCtrl%@: playing nearby haptic", v49, 0xCu);
          sub_24A50D6A4(v50, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v50, -1, -1);
          v53 = v49;
          v30 = v86;
          MEMORY[0x24C21BBE0](v53, -1, -1);
        }

        *&aBlock = 0;
        v54 = [v93 startAtTime:&aBlock error:0.0];
        v55 = aBlock;
        if (v54)
        {
          v56 = v89;
          v89[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v57 = v56;
          sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
          v58 = v55;
          v86 = sub_24A62F014();
          sub_24A62EAE4();
          sub_24A62EB54();
          v95 = *(v95 + 8);
          (v95)(v12, v10);
          v59 = swift_allocObject();
          *(v59 + 16) = v57;
          v101 = sub_24A58235C;
          v102 = v59;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v100 = sub_24A5A8458;
          *(&v100 + 1) = &unk_285DA6050;
          v60 = _Block_copy(&aBlock);
          v61 = v57;

          sub_24A62EAB4();
          *&aBlock = MEMORY[0x277D84F90];
          sub_24A582FCC(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
          sub_24A529464();
          v62 = v30;
          v63 = v91;
          sub_24A62F254();
          v64 = v86;
          MEMORY[0x24C21A910](v15, v9, v6, v60);
          _Block_release(v60);

          v65 = v63;
          v30 = v62;
          v66 = v89;
          (*(v90 + 8))(v6, v65);
          (*(v96 + 8))(v9, v97);
          (v95)(v15, v10);
        }

        else
        {
          v67 = aBlock;
          v68 = sub_24A62E084();

          swift_willThrow();
          v66 = v89;
          v69 = v89;
          v70 = v68;
          v71 = sub_24A62E2F4();
          v72 = sub_24A62EF64();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v86 = v30;
            v76 = v75;
            *&aBlock = v75;
            *v73 = 138412546;
            *(v73 + 4) = v69;
            *v74 = v69;
            *(v73 + 12) = 2080;
            swift_getErrorValue();
            v77 = v69;
            v66 = v89;
            v78 = sub_24A62F6A4();
            v80 = sub_24A509BA8(v78, v79, &aBlock);

            *(v73 + 14) = v80;
            _os_log_impl(&dword_24A503000, v71, v72, "🧭 FMR1HaptiCtrl%@: failed playing nearby haptic (%s)", v73, 0x16u);
            sub_24A50D6A4(v74, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v74, -1, -1);
            sub_24A508C54(v76);
            v81 = v76;
            v30 = v86;
            MEMORY[0x24C21BBE0](v81, -1, -1);
            MEMORY[0x24C21BBE0](v73, -1, -1);
          }

          else
          {
          }
        }

        v82 = v94;
        v83 = *&v66[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v83)
        {
          v84 = *&v66[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v85 = v92;
          sub_24A5173CC(v83, v84);
          v83(v88, v98);

          sub_24A50D354(v83, v84);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        *v30 = v29;
        *v87 = 0;
        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_24A57F540(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_24A62EB14();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v20 - v12;
  v14 = sub_24A62EA94();
  MEMORY[0x28223BE20](v14);
  v15 = *a1;
  if (!*(v4 + *a1))
  {
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = a2;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = a3;
    v20[1] = _Block_copy(aBlock);
    v22 = MEMORY[0x277D84F90];
    sub_24A582FCC(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    sub_24A62EB44();
    swift_allocObject();
    v17 = sub_24A62EB24();

    *(v4 + v15) = v17;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v18 = sub_24A62F014();
    sub_24A62EB04();
    sub_24A62EB54();
    v19 = *(v21 + 8);
    v19(v10, v8);
    sub_24A62EFE4();

    v19(v13, v8);
  }
}

void sub_24A57F864(char a1)
{
  v3 = sub_24A62EB14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = sub_24A62EA94();
  MEMORY[0x28223BE20](v10);
  v11 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (!*(v1 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem))
  {
    v12 = swift_allocObject();
    v21 = v3;
    v13 = v12;
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1 & 1;
    aBlock[4] = sub_24A5822B8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA5FB0;
    v20[1] = _Block_copy(aBlock);
    v22 = MEMORY[0x277D84F90];
    sub_24A582FCC(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    sub_24A62EB44();
    swift_allocObject();
    v15 = sub_24A62EB24();

    *(v1 + v11) = v15;

    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v16 = sub_24A62F014();
    sub_24A62EB04();
    sub_24A62EB54();
    v17 = *(v4 + 8);
    v18 = v6;
    v19 = v21;
    v17(v18, v21);
    sub_24A62EFE4();

    v17(v9, v19);
  }
}

double sub_24A57FBB4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    memset(v6, 0, sizeof(v6));
    sub_24A57E3EC(a2 & 1, v6);
    sub_24A50D6A4(v6, &unk_27EF50780, &qword_24A638470);
    *&v5[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem] = 0;
  }

  return result;
}

void sub_24A57FC78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern))
    {
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern) = 1;
      memset(v3, 0, sizeof(v3));
      sub_24A57C088(v3);

      sub_24A50D6A4(v3, &unk_27EF50780, &qword_24A638470);
    }
  }
}

void sub_24A57FD10()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_startContinuousHapticWorkItem;
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_startContinuousHapticWorkItem))
  {

    sub_24A62EB34();
  }

  *(v0 + v1) = 0;

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern) == 1)
  {
    *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern) = 0;

    sub_24A57C8B4();
  }
}

void *sub_24A57FDD8(uint64_t a1, void (*a2)(_OWORD *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    memset(v5, 0, sizeof(v5));
    a2(v5);

    return sub_24A50D6A4(v5, &unk_27EF50780, &qword_24A638470);
  }

  return result;
}

void sub_24A57FE58(uint64_t a1)
{
  v2 = v1;
  v50 = *MEMORY[0x277D85DE8];
  v3 = &v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v3 = 0;
  v3[8] = 1;
  memset(v49, 0, sizeof(v49));
  v4 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v49, &v1[v4]);
  swift_endAccess();
  sub_24A57FD10();
  v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v5] = 0;

  v6 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v6] = 0;

  v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v7 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v7] = 0;

  v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_connectedHapticPattern];
    if (v9)
    {
      *&v49[0] = 0;
      v10 = v9;
      v47 = v8;
      v11 = [v47 createPlayerWithPattern:v10 error:v49];
      if (v11)
      {
        v12 = v11;
        v13 = qword_27EF4E9A0;
        v14 = *&v49[0];
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = sub_24A62E314();
        sub_24A506EB8(v15, qword_27EF5C118);
        v16 = v2;
        v17 = sub_24A62E2F4();
        v18 = sub_24A62EF64();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = v12;
          v21 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v16;
          *v21 = v16;
          v22 = v16;
          _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1HaptiCtrl%@: playing connected haptic", v19, 0xCu);
          sub_24A50D6A4(v21, &qword_27EF4FED0, &unk_24A635E00);
          v23 = v21;
          v12 = v20;
          MEMORY[0x24C21BBE0](v23, -1, -1);
          MEMORY[0x24C21BBE0](v19, -1, -1);
        }

        *&v49[0] = 0;
        v24 = [v12 startAtTime:v49 error:0.0];
        v25 = *&v49[0];
        if (v24)
        {
          v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v26 = v25;
        }

        else
        {
          v29 = *&v49[0];
          v30 = sub_24A62E084();

          swift_willThrow();
          v31 = v16;
          v32 = v30;
          v33 = sub_24A62E2F4();
          v34 = sub_24A62EF64();

          if (os_log_type_enabled(v33, v34))
          {
            v45 = v34;
            v35 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *&v49[0] = v46;
            buf = v35;
            *v35 = 138412546;
            *(v35 + 4) = v31;
            *v44 = v31;
            *(v35 + 12) = 2080;
            swift_getErrorValue();
            v36 = v31;
            v37 = sub_24A62F6A4();
            v39 = sub_24A509BA8(v37, v38, v49);

            *(buf + 14) = v39;
            _os_log_impl(&dword_24A503000, v33, v45, "🧭 FMR1HaptiCtrl%@: failed playing connected haptic (%s)", buf, 0x16u);
            sub_24A50D6A4(v44, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v44, -1, -1);
            sub_24A508C54(v46);
            MEMORY[0x24C21BBE0](v46, -1, -1);
            MEMORY[0x24C21BBE0](buf, -1, -1);
          }

          else
          {
          }
        }

        v40 = *&v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v40)
        {
          v41 = *&v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v42 = v10;
          sub_24A5173CC(v40, v41);
          v40(v9, a1);

          sub_24A50D354(v40, v41);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v27 = *&v49[0];
        v28 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }
}

void sub_24A5803DC(uint64_t a1)
{
  v2 = v1;
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v3] = 0;

  v4 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v4] = 0;

  v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v5] = 0;

  v6 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v6] = 0;

  v7 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v7)
  {
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadHapticPattern];
    if (v8)
    {
      v52[0] = 0;
      v9 = v8;
      v10 = v7;
      v11 = [v10 createPlayerWithPattern:v9 error:v52];
      if (v11)
      {
        v12 = v11;
        v13 = qword_27EF4E9A0;
        v14 = v52[0];
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = sub_24A62E314();
        sub_24A506EB8(v15, qword_27EF5C118);
        v16 = v2;
        v17 = sub_24A62E2F4();
        v18 = sub_24A62EF64();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v16;
          *v20 = v16;
          v21 = v16;
          _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1HaptiCtrl%@: playing ahead (green) haptic", v19, 0xCu);
          sub_24A50D6A4(v20, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v20, -1, -1);
          MEMORY[0x24C21BBE0](v19, -1, -1);
        }

        v52[0] = 0;
        v22 = [v12 startAtTime:v52 error:0.0];
        v23 = v52[0];
        if (v22)
        {
          v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v24 = v23;
        }

        else
        {
          v50 = v10;
          v27 = v52[0];
          v28 = sub_24A62E084();

          swift_willThrow();
          v29 = v16;
          v30 = v28;
          v31 = sub_24A62E2F4();
          v32 = sub_24A62EF64();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v52[0] = v49;
            *v33 = 138412546;
            *(v33 + 4) = v29;
            *v48 = v29;
            *(v33 + 12) = 2080;
            swift_getErrorValue();
            v47 = v32;
            v34 = v29;
            v35 = sub_24A62F6A4();
            v37 = sub_24A509BA8(v35, v36, v52);

            *(v33 + 14) = v37;
            _os_log_impl(&dword_24A503000, v31, v47, "🧭 FMR1HaptiCtrl%@: failed playing ahead haptic (%s)", v33, 0x16u);
            sub_24A50D6A4(v48, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v48, -1, -1);
            sub_24A508C54(v49);
            MEMORY[0x24C21BBE0](v49, -1, -1);
            MEMORY[0x24C21BBE0](v33, -1, -1);
          }

          else
          {
          }

          v10 = v50;
        }

        v38 = *&v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v38)
        {
          v39 = *&v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v40 = v9;
          sub_24A5173CC(v38, v39);
          v38(v8, a1);
          sub_24A50D354(v38, v39);
        }

        v41 = *&v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink];
        if (v41)
        {
          v42 = v41;
          [v42 timestamp];
          v44 = v43;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v44 = 0;
        }

        v45 = &v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
        *v45 = v44;
        v45[8] = 0;
        v46 = &v16[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay];
        *v46 = 0;
        v46[8] = 0;
      }

      else
      {
        v25 = v52[0];
        v26 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }
}

void sub_24A580990(uint64_t a1)
{

  sub_24A580C04(a1, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadOffHapticPattern, "🧭 FMR1HaptiCtrl%@: playing ahead off (green) haptic", "🧭 FMR1HaptiCtrl%@: failed playing ahead off haptic (%s)");
}

uint64_t sub_24A580A00(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  sub_24A57FD10();
  v8 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem))
  {

    sub_24A62EB34();
  }

  *(v3 + v8) = 0;

  v9 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem))
  {

    sub_24A62EB34();
  }

  *(v3 + v9) = 0;

  *(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 0;
  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem))
  {

    sub_24A62EB34();
  }

  *(v3 + v10) = 0;

  v11 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem))
  {

    sub_24A62EB34();
  }

  *(v3 + v11) = 0;

  sub_24A57DBDC(a2);
  sub_24A57FD10();
  v12 = v3 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod;
  *v12 = a3;
  *(v12 + 8) = 0;
  sub_24A582188(a1, v15);
  v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v15, v4 + v13);
  return swift_endAccess();
}

void sub_24A580B94(uint64_t a1)
{

  sub_24A580C04(a1, &OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachOffHapticPattern, "🧭 FMR1HaptiCtrl%@: playing arm's reach off haptic", "🧭 FMR1HaptiCtrl%@: failed playing arm's reach off haptic (%s)");
}

void sub_24A580C04(uint64_t a1, void *a2, const char *a3, char *a4)
{
  v8 = v4;
  v62 = *MEMORY[0x277D85DE8];
  v10 = &v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v10 = 0;
  v10[8] = 1;
  memset(v61, 0, sizeof(v61));
  v11 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v61, &v4[v11]);
  swift_endAccess();
  sub_24A57FD10();
  v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v4[v12] = 0;

  v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v4[v13] = 0;

  v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v14 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v4[v14] = 0;

  v15 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v4[v15] = 0;

  v16 = *&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v16)
  {
    v17 = *&v4[*a2];
    if (v17)
    {
      *&v61[0] = 0;
      v18 = v17;
      v19 = v16;
      v20 = [v19 createPlayerWithPattern:v18 error:v61];
      if (v20)
      {
        v21 = v20;
        v60 = a1;
        v22 = qword_27EF4E9A0;
        v23 = *&v61[0];
        if (v22 != -1)
        {
          swift_once();
        }

        v24 = sub_24A62E314();
        sub_24A506EB8(v24, qword_27EF5C118);
        v25 = v8;
        v26 = sub_24A62E2F4();
        v27 = sub_24A62EF64();

        if (os_log_type_enabled(v26, v27))
        {
          v56 = v19;
          formata = v18;
          v28 = a4;
          v29 = swift_slowAlloc();
          v30 = v21;
          v31 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v25;
          *v31 = v25;
          v32 = v25;
          _os_log_impl(&dword_24A503000, v26, v27, a3, v29, 0xCu);
          sub_24A50D6A4(v31, &qword_27EF4FED0, &unk_24A635E00);
          v33 = v31;
          v21 = v30;
          MEMORY[0x24C21BBE0](v33, -1, -1);
          v34 = v29;
          a4 = v28;
          v19 = v56;
          v18 = formata;
          MEMORY[0x24C21BBE0](v34, -1, -1);
        }

        *&v61[0] = 0;
        v35 = [v21 startAtTime:v61 error:0.0];
        v36 = *&v61[0];
        if (v35)
        {
          v25[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v37 = v36;
        }

        else
        {
          format = a4;
          v40 = *&v61[0];
          v41 = sub_24A62E084();

          swift_willThrow();
          v42 = v25;
          v43 = v41;
          v44 = sub_24A62E2F4();
          v45 = sub_24A62EF64();

          if (os_log_type_enabled(v44, v45))
          {
            v55 = v45;
            v46 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *&v61[0] = v57;
            *v46 = 138412546;
            *(v46 + 4) = v42;
            *v54 = v42;
            *(v46 + 12) = 2080;
            swift_getErrorValue();
            v47 = v42;
            v48 = sub_24A62F6A4();
            v50 = sub_24A509BA8(v48, v49, v61);

            *(v46 + 14) = v50;
            _os_log_impl(&dword_24A503000, v44, v55, format, v46, 0x16u);
            sub_24A50D6A4(v54, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v54, -1, -1);
            sub_24A508C54(v57);
            MEMORY[0x24C21BBE0](v57, -1, -1);
            MEMORY[0x24C21BBE0](v46, -1, -1);
          }

          else
          {
          }
        }

        v51 = *&v25[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v51)
        {
          v52 = *&v25[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v53 = v18;
          sub_24A5173CC(v51, v52);
          v51(v17, v60);

          sub_24A50D354(v51, v52);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v38 = *&v61[0];
        v39 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }
}

void sub_24A5811D4(uint64_t a1)
{
  v2 = v1;
  v51 = *MEMORY[0x277D85DE8];
  v3 = &v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v3 = 0;
  v3[8] = 1;
  memset(v50, 0, sizeof(v50));
  v4 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v50, &v1[v4]);
  swift_endAccess();
  sub_24A57FD10();
  v5 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v5] = 0;

  v6 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v6] = 0;

  v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  v7 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v7] = 0;

  v8 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v1[v8] = 0;

  sub_24A57D08C();
  v9 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v9)
  {
    v10 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_preNearbyHapticPattern];
    if (v10)
    {
      *&v50[0] = 0;
      v11 = v10;
      v48 = v9;
      v12 = [v48 createPlayerWithPattern:v11 error:v50];
      if (v12)
      {
        v13 = v12;
        v14 = qword_27EF4E9A0;
        v15 = *&v50[0];
        if (v14 != -1)
        {
          swift_once();
        }

        v16 = sub_24A62E314();
        sub_24A506EB8(v16, qword_27EF5C118);
        v17 = v2;
        v18 = sub_24A62E2F4();
        v19 = sub_24A62EF64();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = v13;
          v22 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v22 = v17;
          v23 = v17;
          _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMR1HaptiCtrl%@: playing pre-nearby haptic", v20, 0xCu);
          sub_24A50D6A4(v22, &qword_27EF4FED0, &unk_24A635E00);
          v24 = v22;
          v13 = v21;
          MEMORY[0x24C21BBE0](v24, -1, -1);
          MEMORY[0x24C21BBE0](v20, -1, -1);
        }

        *&v50[0] = 0;
        v25 = [v13 startAtTime:v50 error:0.0];
        v26 = *&v50[0];
        if (v25)
        {
          v17[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v27 = v26;
        }

        else
        {
          v30 = *&v50[0];
          v31 = sub_24A62E084();

          swift_willThrow();
          v32 = v17;
          v33 = v31;
          v34 = sub_24A62E2F4();
          v35 = sub_24A62EF64();

          if (os_log_type_enabled(v34, v35))
          {
            v46 = v35;
            v36 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *&v50[0] = v47;
            buf = v36;
            *v36 = 138412546;
            *(v36 + 4) = v32;
            *v45 = v32;
            *(v36 + 12) = 2080;
            swift_getErrorValue();
            v37 = v32;
            v38 = sub_24A62F6A4();
            v40 = sub_24A509BA8(v38, v39, v50);

            *(buf + 14) = v40;
            _os_log_impl(&dword_24A503000, v34, v46, "🧭 FMR1HaptiCtrl%@: failed playing -prenearby haptic (%s)", buf, 0x16u);
            sub_24A50D6A4(v45, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v45, -1, -1);
            sub_24A508C54(v47);
            MEMORY[0x24C21BBE0](v47, -1, -1);
            MEMORY[0x24C21BBE0](buf, -1, -1);
          }

          else
          {
          }
        }

        v41 = *&v17[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v41)
        {
          v42 = *&v17[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v43 = v11;
          sub_24A5173CC(v41, v42);
          v41(v10, a1);

          sub_24A50D354(v41, v42);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v28 = *&v50[0];
        v29 = sub_24A62E084();

        swift_willThrow();
      }
    }
  }
}

void sub_24A581798()
{

  sub_24A581878(&OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelIncreaseHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level increased haptic", "🧭 FMR1HaptiCtrl%@: failed playing level increased haptic (%s)");
}

void sub_24A581808()
{

  sub_24A581878(&OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelDecreaseHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level decreased haptic", "🧭 FMR1HaptiCtrl%@: failed playing level decreased haptic (%s)");
}

void sub_24A581878(void *a1, const char *a2, const char *a3)
{
  v7 = v3;
  v51 = *MEMORY[0x277D85DE8];
  v8 = &v3[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v8 = 0;
  v8[8] = 1;
  memset(v50, 0, sizeof(v50));
  v9 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
  swift_beginAccess();
  sub_24A582118(v50, &v7[v9]);
  swift_endAccess();
  sub_24A57FD10();
  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v7[v10] = 0;

  v11 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v7[v11] = 0;

  v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
  if (*&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
  {

    sub_24A62EB34();
  }

  *&v7[v12] = 0;

  v13 = *&v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v13)
  {
    v14 = *&v7[*a1];
    if (v14)
    {
      *&v50[0] = 0;
      v15 = v14;
      v16 = v13;
      v17 = [v16 createPlayerWithPattern:v15 error:v50];
      v18 = *&v50[0];
      if (v17)
      {
        v19 = v17;
        *&v50[0] = 0;
        v20 = v18;
        v21 = [v19 startAtTime:v50 error:0.0];
        v22 = *&v50[0];
        if (v21)
        {
          v7[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          v23 = qword_27EF4E9A0;
          v24 = v22;
          if (v23 != -1)
          {
            swift_once();
          }

          v25 = sub_24A62E314();
          sub_24A506EB8(v25, qword_27EF5C118);
          v26 = v7;
          v27 = sub_24A62E2F4();
          v28 = sub_24A62EF64();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *v29 = 138412290;
            *(v29 + 4) = v26;
            *v30 = v26;
            v31 = v26;
            _os_log_impl(&dword_24A503000, v27, v28, a2, v29, 0xCu);
            sub_24A50D6A4(v30, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v30, -1, -1);
            MEMORY[0x24C21BBE0](v29, -1, -1);
          }

          swift_unknownObjectRelease();
          return;
        }

        v49 = v16;
        v35 = *&v50[0];
        v36 = sub_24A62E084();

        swift_willThrow();
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v37 = sub_24A62E314();
        sub_24A506EB8(v37, qword_27EF5C118);
        v38 = v7;
        v39 = v36;
        v40 = sub_24A62E2F4();
        v41 = sub_24A62EF64();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *&v50[0] = v48;
          *v42 = 138412546;
          *(v42 + 4) = v38;
          *v47 = v38;
          *(v42 + 12) = 2080;
          swift_getErrorValue();
          v43 = v38;
          v44 = sub_24A62F6A4();
          v46 = sub_24A509BA8(v44, v45, v50);

          *(v42 + 14) = v46;
          _os_log_impl(&dword_24A503000, v40, v41, a3, v42, 0x16u);
          sub_24A50D6A4(v47, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v47, -1, -1);
          sub_24A508C54(v48);
          MEMORY[0x24C21BBE0](v48, -1, -1);
          MEMORY[0x24C21BBE0](v42, -1, -1);

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
        v34 = v36;
      }

      else
      {
        v32 = *&v50[0];
        v33 = sub_24A62E084();

        swift_willThrow();
        v34 = v33;
      }
    }
  }
}

void sub_24A581DDC()
{

  sub_24A581878(&OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farNearHapticPattern, "🧭 FMR1HaptiCtrl%@: playing level far->near haptic", "🧭 FMR1HaptiCtrl%@: failed playing far->near haptic (%s)");
}

void sub_24A581E4C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying;
  if (v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] == 1)
  {
    v2 = v0;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v0;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1HaptiCtrl%@: stopping haptics", v7, 0xCu);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    v10 = &v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
    *v10 = 0;
    v10[8] = 1;
    memset(v16, 0, sizeof(v16));
    v11 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
    swift_beginAccess();
    sub_24A582118(v16, &v4[v11]);
    swift_endAccess();
    sub_24A57FD10();
    v12 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem])
    {

      sub_24A62EB34();
    }

    *&v4[v12] = 0;

    v13 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem])
    {

      sub_24A62EB34();
    }

    *&v4[v13] = 0;

    v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
    v14 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem])
    {

      sub_24A62EB34();
    }

    *&v4[v14] = 0;

    v15 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem;
    if (*&v4[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem])
    {

      sub_24A62EB34();
    }

    *&v4[v15] = 0;

    v2[v1] = 0;
  }
}

uint64_t sub_24A5820F4(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_24A50D354(v4, v5);
}

uint64_t sub_24A582118(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF50780, &qword_24A638470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A582188(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF50780, &qword_24A638470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5821F8()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A582260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A582280()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A582324()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5823AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_24A62EC94();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

void sub_24A58245C(float a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern] == 1)
  {
    v2 = 1.0 - a1;
    v3 = (a1 * 0.6) + ((1.0 - a1) * 0.5);
    v4 = *MEMORY[0x277CBF610];
    v6 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
    *&v7 = v3;
    v34 = [v6 initWithParameterID:v4 value:v7 relativeTime:0.0];
    v8 = *MEMORY[0x277CBF618];
    v9 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
    *&v10 = (a1 * 0.1) - v2;
    v11 = [v9 initWithParameterID:v8 value:v10 relativeTime:0.0];
    v12 = v11;
    v13 = *&v1[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer];
    if (v13)
    {
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_24A633810;
      *(v14 + 32) = v34;
      *(v14 + 40) = v12;
      sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
      swift_unknownObjectRetain();
      v15 = v34;
      v16 = v12;
      v17 = sub_24A62ED54();

      v35[0] = 0;
      v18 = [v13 sendParameters:v17 atTime:v35 error:0.0];
      swift_unknownObjectRelease();

      if (v18)
      {
        v19 = v35[0];
      }

      else
      {
        v20 = v35[0];
        v21 = sub_24A62E084();

        swift_willThrow();
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v22 = sub_24A62E314();
        sub_24A506EB8(v22, qword_27EF5C118);
        v23 = v1;
        v24 = v21;
        v25 = sub_24A62E2F4();
        v26 = sub_24A62EF64();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v35[0] = v29;
          *v27 = 138412546;
          *(v27 + 4) = v23;
          *v28 = v23;
          *(v27 + 12) = 2080;
          swift_getErrorValue();
          v30 = v23;
          v31 = sub_24A62F6A4();
          v33 = sub_24A509BA8(v31, v32, v35);

          *(v27 + 14) = v33;
          _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMR1HaptiCtrl%@: failed parametering continuous haptic player: %s", v27, 0x16u);
          sub_24A50D6A4(v28, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v28, -1, -1);
          sub_24A508C54(v29);
          MEMORY[0x24C21BBE0](v29, -1, -1);
          MEMORY[0x24C21BBE0](v27, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

void sub_24A5828AC()
{
  v61[4] = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern];
    if (v2)
    {
      v61[0] = 0;
      v3 = v1;
      v4 = v2;
      v5 = [v3 createPlayerWithPattern:v4 error:v61];
      v6 = v61[0];
      if (v5)
      {
        v7 = v5;
        if (v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity + 4])
        {
          v8 = v61[0];
        }

        else
        {
          v12 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity];
          v13 = *MEMORY[0x277CBF610];
          v14 = objc_allocWithZone(MEMORY[0x277CBF6A8]);
          v15 = v6;
          LODWORD(v16) = v12;
          v17 = [v14 initWithParameterID:v13 value:v16 relativeTime:0.0];
          sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_24A6339F0;
          *(v18 + 32) = v17;
          sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
          v19 = v17;
          v20 = sub_24A62ED54();

          v61[0] = 0;
          LOBYTE(v13) = [v7 sendParameters:v20 atTime:v61 error:0.0];

          if (v13)
          {
            v21 = v61[0];
          }

          else
          {
            v57 = v19;
            v58 = v4;
            v22 = v61[0];
            v23 = sub_24A62E084();

            swift_willThrow();
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v24 = sub_24A62E314();
            sub_24A506EB8(v24, qword_27EF5C118);
            v56 = v0;
            v25 = v0;
            v26 = v23;
            v27 = sub_24A62E2F4();
            v28 = sub_24A62EF64();

            if (os_log_type_enabled(v27, v28))
            {
              v60 = v7;
              v29 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v61[0] = v55;
              *v29 = 138412546;
              *(v29 + 4) = v25;
              *v54 = v25;
              *(v29 + 12) = 2080;
              swift_getErrorValue();
              v30 = v25;
              v31 = sub_24A62F6A4();
              v33 = sub_24A509BA8(v31, v32, v61);

              *(v29 + 14) = v33;
              _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMR1HaptiCtrl%@: failed parametering tap haptic player: %s", v29, 0x16u);
              sub_24A50D6A4(v54, &qword_27EF4FED0, &unk_24A635E00);
              MEMORY[0x24C21BBE0](v54, -1, -1);
              sub_24A508C54(v55);
              MEMORY[0x24C21BBE0](v55, -1, -1);
              v34 = v29;
              v7 = v60;
              MEMORY[0x24C21BBE0](v34, -1, -1);
            }

            else
            {
            }

            v0 = v56;
            v4 = v58;
          }
        }

        v35 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
        if (v35)
        {
          v36 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler + 8];
          v37 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
          swift_beginAccess();
          sub_24A582188(&v0[v37], v61);
          v38 = v4;
          sub_24A5173CC(v35, v36);
          v35(v2, v61);

          sub_24A50D354(v35, v36);
          sub_24A50D6A4(v61, &unk_27EF50780, &qword_24A638470);
        }

        v61[0] = 0;
        if ([v7 startAtTime:v61 error:{0.0, v54}])
        {
          v39 = v61[0];

          swift_unknownObjectRelease();
          v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 1;
          return;
        }

        v40 = v61[0];
        v41 = sub_24A62E084();

        swift_willThrow();
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v42 = sub_24A62E314();
        sub_24A506EB8(v42, qword_27EF5C118);
        v43 = v0;
        v44 = v41;
        v45 = sub_24A62E2F4();
        v46 = sub_24A62EF64();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v59 = v4;
          v49 = swift_slowAlloc();
          v61[0] = v49;
          *v47 = 138412546;
          *(v47 + 4) = v43;
          *v48 = v43;
          *(v47 + 12) = 2080;
          swift_getErrorValue();
          v50 = v43;
          v51 = sub_24A62F6A4();
          v53 = sub_24A509BA8(v51, v52, v61);

          *(v47 + 14) = v53;
          _os_log_impl(&dword_24A503000, v45, v46, "🧭 FMR1HaptiCtrl%@: failed playing single tap haptic (%s)", v47, 0x16u);
          sub_24A50D6A4(v48, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v48, -1, -1);
          sub_24A508C54(v49);
          MEMORY[0x24C21BBE0](v49, -1, -1);
          MEMORY[0x24C21BBE0](v47, -1, -1);

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
        v11 = v41;
      }

      else
      {
        v9 = v61[0];
        v10 = sub_24A62E084();

        swift_willThrow();
        v11 = v10;
      }
    }
  }
}

_OWORD *sub_24A582FBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24A582FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24A583054(uint64_t a1, unsigned __int8 a2)
{
  sub_24A62EC74();

  return result;
}

uint64_t sub_24A583164(uint64_t a1, unsigned __int8 a2)
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A583288(uint64_t a1, unsigned __int8 a2)
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

void sub_24A5833C4(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if ((sub_24A60D6B4(v26, a1) & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
    swift_beginAccess();
    if (*(v1 + v4))
    {
      *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState) = a1;
      if (qword_27EF4E9A8 != -1)
      {
        swift_once();
      }

      v5 = sub_24A62E314();
      sub_24A506EB8(v5, qword_27EF5C130);
      v6 = sub_24A62E2F4();
      v7 = sub_24A62EF64();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v25 = v9;
        *v8 = 136315138;
        v10 = sub_24A62EC44();
        v12 = sub_24A509BA8(v10, v11, &v25);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_24A503000, v6, v7, "VFXManager: setState pendingState %s..", v8, 0xCu);
        sub_24A508C54(v9);
        MEMORY[0x24C21BBE0](v9, -1, -1);
        MEMORY[0x24C21BBE0](v8, -1, -1);
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      v13 = v25;
      *(v1 + v4) = 1;
      v14 = objc_opt_self();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      sub_24A58B61C(v13, a1);
      v15 = [v14 scheduledTimerWithTimeInterval:v2 target:sel_onAnimationTimerCompleted selector:0 userInfo:0 repeats:?];
      v16 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_animationCompletionTimer);
      *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_animationCompletionTimer) = v15;

      sub_24A5843A4();
      sub_24A52BC40(a1, v13, 0, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v25) = a1;

      sub_24A62E364();
      sub_24A583D84();
      if (qword_27EF4E9A8 != -1)
      {
        swift_once();
      }

      v17 = sub_24A62E314();
      sub_24A506EB8(v17, qword_27EF5C130);
      v18 = sub_24A62E2F4();
      v19 = sub_24A62EF64();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136315138;
        v22 = sub_24A62EC44();
        v24 = sub_24A509BA8(v22, v23, &v25);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_24A503000, v18, v19, "VFXManager: setState %s..", v20, 0xCu);
        sub_24A508C54(v21);
        MEMORY[0x24C21BBE0](v21, -1, -1);
        MEMORY[0x24C21BBE0](v20, -1, -1);
      }

      sub_24A5869E4(0, 0);
      sub_24A5871C0(0, 0);
      sub_24A5879C8(0, 0);
      sub_24A5881B0(0);
    }
  }
}

void sub_24A58384C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view);
  if (v1)
  {
    v2 = v0;
    sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 16) = xmmword_24A633830;
    *(v3 + 56) = v4;
    *(v3 + 32) = 0x6E69726170657250;
    *(v3 + 40) = 0xEF2E2E5846562067;
    v5 = v1;
    sub_24A62F314();

    v6 = [objc_opt_self() mainScreen];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    v11 = (v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_viewSize);
    *v11 = v8;
    v11[1] = v10;
    sub_24A5841E0();
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v12 = sub_24A62E314();
    sub_24A506EB8(v12, qword_27EF5C130);
    v13 = sub_24A62E2F4();
    v14 = sub_24A62EF34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = 0;
      _os_log_impl(&dword_24A503000, v13, v14, "Preparing world progress: %{public}f", v15, 0xCu);
      MEMORY[0x24C21BBE0](v15, -1, -1);
    }

    v16 = *(v2 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_world);
    v19[4] = sub_24A585698;
    v19[5] = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_24A585908;
    v19[3] = &unk_285DA6450;
    v17 = _Block_copy(v19);
    v18 = v5;
    [v16 prepareForRenderer:v18 progressHandler:v17];
    _Block_release(v17);
  }
}

BOOL sub_24A583AD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v2 != 3)
  {
    return 0;
  }

  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return fabs(v1 * 57.2957795) < 30.0;
}

void sub_24A583BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = [v3 behaviorGraph];
  if (v6)
  {
    v7 = v6;
    sub_24A5889BC(v5);
    sub_24A50D63C(a2, v16, &unk_27EF50780, &qword_24A638470);
    v8 = v17;
    if (v17)
    {
      v9 = sub_24A50A204(v16, v17);
      v10 = *(v8 - 8);
      v11 = MEMORY[0x28223BE20](v9);
      v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_24A62F624();
      (*(v10 + 8))(v13, v8);
      sub_24A508C54(v16);
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_24A62EBE4();

    [v7 setObject:v14 forKeyedSubscript:v15];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_24A583D84()
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C130);

  v1 = sub_24A62E2F4();
  v2 = sub_24A62EF34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v20 = v4;
    *v3 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v5 = 0xE700000000000000;
    v6 = 0x6C616974696E69;
    if (v19 != 6)
    {
      v6 = 0x726F727265;
      v5 = 0xE500000000000000;
    }

    v7 = 0xE400000000000000;
    v8 = 1918985582;
    if (v19 != 4)
    {
      v8 = 0x646E756F66;
      v7 = 0xE500000000000000;
    }

    if (v19 <= 5u)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0xE300000000000000;
    v10 = 6517345;
    if (v19 != 2)
    {
      v10 = 0x776F727261;
      v9 = 0xE500000000000000;
    }

    v11 = 0xE300000000000000;
    if (v19)
    {
      v12 = 7496038;
    }

    else
    {
      v12 = 0x63656E6E6F436F6ELL;
    }

    if (!v19)
    {
      v11 = 0xEC0000006E6F6974;
    }

    if (v19 <= 1u)
    {
      v10 = v12;
      v9 = v11;
    }

    if (v19 <= 3u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v6;
    }

    if (v19 <= 3u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v5;
    }

    v15 = sub_24A509BA8(v13, v14, &v20);

    *(v3 + 4) = v15;
    _os_log_impl(&dword_24A503000, v1, v2, "VFXManager: State Updated: %s", v3, 0xCu);
    sub_24A508C54(v4);
    MEMORY[0x24C21BBE0](v4, -1, -1);
    MEMORY[0x24C21BBE0](v3, -1, -1);
  }

  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v22 > 1u || v22)
  {
    v17 = sub_24A62F634();

    v16 = v17 ^ 1;
  }

  else
  {

    v16 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v16 & 1;
  return sub_24A62E364();
}

uint64_t sub_24A58416C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return v1;
}

uint64_t sub_24A5841E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_viewSize);
  v2 = 12.0 / v1;
  v3 = 300.0 / v1;
  v4 = 189.0 / v1;
  v5 = 15.0 / v1;
  v6 = MEMORY[0x277D83A90];
  v7 = 30.0 / v1;
  v10 = MEMORY[0x277D83A90];
  *v9 = v3;
  sub_24A583BD0(12, v9);
  sub_24A50D6A4(v9, &unk_27EF50780, &qword_24A638470);
  v10 = v6;
  *v9 = v4;
  sub_24A583BD0(13, v9);
  sub_24A50D6A4(v9, &unk_27EF50780, &qword_24A638470);
  v10 = v6;
  *v9 = v2;
  sub_24A583BD0(14, v9);
  sub_24A50D6A4(v9, &unk_27EF50780, &qword_24A638470);
  v10 = v6;
  *v9 = v5;
  sub_24A583BD0(15, v9);
  sub_24A50D6A4(v9, &unk_27EF50780, &qword_24A638470);
  v10 = v6;
  *v9 = v4;
  sub_24A583BD0(16, v9);
  sub_24A50D6A4(v9, &unk_27EF50780, &qword_24A638470);
  v10 = v6;
  *v9 = v7;
  sub_24A583BD0(17, v9);
  return sub_24A50D6A4(v9, &unk_27EF50780, &qword_24A638470);
}

uint64_t sub_24A5843D8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    swift_allocObject();

    v6 = a3(v9);

    *(v8 + v4) = v6;
  }

  return v6;
}

uint64_t sub_24A584470()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24A5844B4(char a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_24A584564(uint64_t a1, unint64_t a2)
{
  v4 = sub_24A62E0F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26[3] = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_24A62EBE4();
  v16 = sub_24A62EBE4();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (v17)
  {
    sub_24A62E0D4();

    sub_24A50D7EC(0, &qword_27EF50900, 0x277D78170);
    (*(v5 + 16))(v9, v12, v4);
    v18 = sub_24A59C4A0(MEMORY[0x277D84F90]);
    v24 = sub_24A584AF4(v9, v18);
    (*(v5 + 8))(v12, v4);
    return v24;
  }

  else
  {
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A62E314();
    sub_24A506EB8(v19, qword_27EF5C130);

    v20 = sub_24A62E2F4();
    v21 = sub_24A62EF44();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_24A509BA8(a1, a2, &v27);
      _os_log_impl(&dword_24A503000, v20, v21, "Error getting VFX source file url for %s", v22, 0xCu);
      sub_24A508C54(v23);
      MEMORY[0x24C21BBE0](v23, -1, -1);
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }

    return 0;
  }
}

id sub_24A584AF4(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24A62E0B4();
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_24A58CF48(&qword_27EF4F1B0, type metadata accessor for VFXWorldLoaderOption, &unk_24A633728);
    v5 = sub_24A62EB74();
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() worldWithURL:v4 options:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_24A62E0F4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_24A62E084();

    swift_willThrow();
    v12 = sub_24A62E0F4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t VFXManager.deinit()
{
  sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D837D0];
  *(v1 + 16) = xmmword_24A633830;
  *(v1 + 56) = v2;
  *(v1 + 32) = 0x74696E696564;
  *(v1 + 40) = 0xE600000000000000;
  sub_24A62F314();

  v3 = OBJC_IVAR____TtC11FMFindingUI10VFXManager__state;
  v4 = sub_24A508FA4(&qword_27EF507E8, &qword_24A636E68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 64);
  v9[5] = v5;
  v9[6] = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 96);
  v10 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 112);
  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset + 32);
  v9[3] = v7;
  sub_24A5294D0(v9);

  return v0;
}

uint64_t sub_24A584E98(void *a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A508FA4(&qword_27EF507E8, &qword_24A636E68);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - v12;
  v14 = *a2;
  v15 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v15 setUnitOptions_];
  [v15 setUnitStyle_];
  *(v5 + 16) = v15;
  v16 = OBJC_IVAR____TtC11FMFindingUI10VFXManager__state;
  LOBYTE(v50[0]) = 6;
  sub_24A62E344();
  (*(v11 + 32))(v5 + v16, v13, v10);
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view) = 0;
  v17 = (v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_viewSize);
  *v17 = 0;
  v17[1] = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___values) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___animationCoordinator) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxHasDistance) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState) = 8;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_currentAnimation) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_animationCompletionTimer) = 0;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager) = a4;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType) = v14;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_world) = a1;

  v18 = a1;
  v19 = [v18 rootNode];
  v20 = sub_24A62EBE4();
  v21 = [v19 childNodeWithName_];

  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = [v18 rootNode];
  v23 = sub_24A62EBE4();
  v24 = [v22 childNodeWithName_];

  if (!v24)
  {

LABEL_15:
    result = sub_24A62F444();
    __break(1u);
    return result;
  }

  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_camera) = v21;
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter) = v24;
  v25 = v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_videoAsset;
  v26 = *(a3 + 80);
  *(v25 + 64) = *(a3 + 64);
  *(v25 + 80) = v26;
  *(v25 + 96) = *(a3 + 96);
  *(v25 + 112) = *(a3 + 112);
  v27 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v27;
  v28 = *(a3 + 48);
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = v28;
  v29 = (v14 >> 13) & 3;
  if (v29)
  {
    if (v29 == 1)
    {
      v30 = (v14 >> 8) & 0x9F;
    }

    else if ((v14 & 0x80000000) != 0)
    {
      v30 = (v14 >> 8) & 0x1F;
    }

    else
    {
      v30 = v14;
    }
  }

  else
  {
    v30 = BYTE1(v14);
  }

  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_threshold) = v30 == 2;
  v31 = v24;
  v32 = v21;
  sub_24A5843A4();
  swift_weakAssign();

  v51 = MEMORY[0x277D83A90];
  v50[0] = 1065353216;
  sub_24A583BD0(8, v50);
  sub_24A50D6A4(v50, &unk_27EF50780, &qword_24A638470);
  v33 = [objc_opt_self() mainScreen];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = [objc_allocWithZone(MEMORY[0x277D78160]) initWithFrame_];
  v43 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_view;
  v44 = *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view);
  *(v5 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view) = v42;

  v45 = *(v5 + v43);
  if (v45)
  {
    [v45 setRendersContinuously_];
    v46 = *(v5 + v43);
    if (v46)
    {
      v47 = v18;
      v48 = v46;
      [v48 setWorld_];
    }
  }

  return v5;
}

uint64_t sub_24A5853DC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VFXManager(0);
  result = sub_24A62E334();
  *a2 = result;
  return result;
}

uint64_t sub_24A58541C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24A585474(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_24A5854F0(uint64_t a1)
{
  sub_24A52A2FC(319, &qword_27EF50818, &type metadata for VFXManager.State);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24A585698(NSObject *a1, float a2)
{
  if (!a1)
  {
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v12 = sub_24A62E314();
    sub_24A506EB8(v12, qword_27EF5C130);
    oslog = sub_24A62E2F4();
    v13 = sub_24A62EF34();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = a2;
      _os_log_impl(&dword_24A503000, oslog, v13, "Preparing world progress: %{public}f", v14, 0xCu);
      MEMORY[0x24C21BBE0](v14, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = a1;
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C130);
  v5 = a1;
  oslog = sub_24A62E2F4();
  v6 = sub_24A62EF44();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24A503000, oslog, v6, "Failure preparing world: %{public}@", v7, 0xCu);
    sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v8, -1, -1);
    MEMORY[0x24C21BBE0](v7, -1, -1);

LABEL_10:
    v15 = oslog;

    goto LABEL_12;
  }

  v15 = a1;

LABEL_12:
}

void sub_24A585908(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v7(a2, a3, a4);
}

uint64_t sub_24A5859B0()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24A5859DC, v1, 0);
}

uint64_t sub_24A5859DC()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_24A5160C8(3), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);

    v5(v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_24A58CF90();
    v0[7] = swift_allocError();
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_24A58D01C, 0, 0);
  }
}

uint64_t sub_24A585B14()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24A585B40, v1, 0);
}

uint64_t sub_24A585B40()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_24A5160C8(2), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);

    v5(v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_24A58CF90();
    v0[7] = swift_allocError();
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_24A585C58, 0, 0);
  }
}

uint64_t sub_24A585C58()
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);
  v3 = v1;
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A503000, v4, v5, "Failure executing dismiss flow action: %{public}@", v8, 0xCu);
    sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24A585E1C()
{
  v1 = *(v0 + 64);
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v2 = *(v0 + 16);
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_actionsManager);
  *(v0 + 72) = v3;
  if (v2 == 1)
  {
    v4 = sub_24A585F04;
  }

  else
  {
    v4 = sub_24A5861BC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24A585F04()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_24A5160C8(1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);

    v5(v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_24A58CF90();
    v0[10] = swift_allocError();
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_24A58601C, 0, 0);
  }
}

uint64_t sub_24A58601C()
{
  v1 = *(v0 + 80);
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);
  v3 = v1;
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24A503000, v4, v5, "Failure executing dismiss flow action: %{public}@", v6, 0xCu);
    sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24A5861BC()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_24A5160C8(0), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);

    v5(v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_24A58CF90();
    v0[11] = swift_allocError();
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_24A5862D4, 0, 0);
  }
}

uint64_t sub_24A5862D4()
{
  v1 = *(v0 + 88);
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);
  v3 = v1;
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24A503000, v4, v5, "Failure executing dismiss flow action: %{public}@", v6, 0xCu);
    sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24A586474()
{
  v1 = sub_24A62EA94();
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A62EAD4();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v7 = sub_24A62F014();
  aBlock[4] = sub_24A58CF40;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA6428;
  v8 = _Block_copy(aBlock);

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v6, v3, v8);
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

void sub_24A586754(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_animationCompletionTimer) invalidate];
  v2 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_isAnimationRunning;
  swift_beginAccess();
  *(a1 + v2) = 0;
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState);
  if (v3 == 8)
  {
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C130);
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24A503000, v5, v6, "All Animations Completed Successfully 🎉", v7, 2u);
      v8 = v7;
LABEL_10:
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState) = 8;
    sub_24A5833C4(v3);
    if (qword_27EF4E9A8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A62E314();
    sub_24A506EB8(v9, qword_27EF5C130);
    v5 = sub_24A62E2F4();
    v10 = sub_24A62EF64();
    if (os_log_type_enabled(v5, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      v13 = sub_24A62EC44();
      v15 = sub_24A509BA8(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A503000, v5, v10, "Animations completed with pending state. Running pending state %s..", v11, 0xCu);
      sub_24A508C54(v12);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      v8 = v11;
      goto LABEL_10;
    }
  }
}

double sub_24A5869E4(void (*a1)(uint64_t), uint64_t a2)
{
  v31 = a2;
  v3 = sub_24A62EA94();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62E654();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A5888B0();
  sub_24A5843A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v12 != LOBYTE(aBlock[0]))
  {
    v15 = dispatch_group_create();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(aBlock[0]) - 4 >= 2)
    {
      if (LOBYTE(aBlock[0]) == 3)
      {
        sub_24A584370();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24A62E354();

        v18 = qword_27EF4EB50;
        if (fabs(aBlock[0] * 57.2957795) >= 30.0)
        {
          v17 = v15;

          if (v18 == -1)
          {
LABEL_14:
            dispatch_group_enter(v17);
            sub_24A62E644();
            v20 = swift_allocObject();
            v20[2] = 0;
            v20[3] = 0;
            v20[4] = v15;
            v21 = v17;
            sub_24A62E3E4();

            (*(v26 + 8))(v11, v27);
            sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
            v22 = sub_24A62F014();
            v23 = swift_allocObject();
            v24 = v31;
            *(v23 + 16) = a1;
            *(v23 + 24) = v24;
            *&aBlock[4] = sub_24A58D014;
            *&aBlock[5] = v23;
            *&aBlock[0] = MEMORY[0x277D85DD0];
            *&aBlock[1] = 1107296256;
            *&aBlock[2] = sub_24A5A8458;
            *&aBlock[3] = &unk_285DA61D0;
            v25 = _Block_copy(aBlock);
            sub_24A519360(a1, v24);
            sub_24A62EAB4();
            v32 = MEMORY[0x277D84F90];
            sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
            sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
            sub_24A62F254();
            sub_24A62EFB4();
            _Block_release(v25);

            (*(v30 + 8))(v5, v3);
            (*(v28 + 8))(v8, v29);

            return result;
          }
        }

        else
        {

          v17 = v15;
          if (v18 == -1)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v19 = qword_27EF4EB50;
        v17 = v15;

        if (v19 == -1)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v16 = qword_27EF4EB50;
      v17 = v15;

      if (v16 == -1)
      {
        goto LABEL_14;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  if (a1)
  {
    a1(v13);
  }

  return result;
}

void sub_24A5871C0(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v66 = a2;
  v3 = sub_24A62E654();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24A62EA94();
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24A62EAD4();
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A62EAF4();
  v49 = v8;
  v69 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = dispatch_group_create();
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v2;
  sub_24A62E354();

  v15 = aBlock == 3;
  v16 = sub_24A5843A4();
  v17 = v14;
  dispatch_group_enter(v17);
  v59 = sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v18 = sub_24A62F014();
  sub_24A62EAE4();
  sub_24A62EB54();
  v19 = *(v69 + 8);
  v69 += 8;
  v50 = v19;
  v19(v10, v8);
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v15;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  v60 = v14;
  *(v20 + 48) = v14;
  v76 = sub_24A58CB7C;
  v77 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_24A5A8458;
  v75 = &unk_285DA6298;
  v21 = _Block_copy(&aBlock);
  v52 = v17;

  v22 = v51;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v23 = sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v24 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v25 = sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  v57 = v24;
  v56 = v25;
  v26 = v68;
  v58 = v23;
  sub_24A62F254();
  MEMORY[0x24C21A910](v13, v22, v6, v21);
  _Block_release(v21);

  v27 = *(v64 + 1);
  v64 = v6;
  v28 = v6;
  v29 = v22;
  v55 = v27;
  v27(v28, v26);
  v30 = *(v70 + 8);
  v70 += 8;
  v54 = v30;
  v30(v22, v67);
  v50(v13, v49);
  v31 = v53;
  v32 = sub_24A583AD8();
  v33 = *(v31 + OBJC_IVAR____TtC11FMFindingUI10VFXManager____lazy_storage___animationCoordinator);
  v34 = qword_27EF4EB70;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = v52;
  dispatch_group_enter(v52);
  v36 = v61;
  v37 = sub_24A62E644();
  MEMORY[0x28223BE20](v37);
  *(&v48 - 2) = v33;
  *(&v48 - 8) = v32;
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v60;
  v39 = v35;
  sub_24A62E3E4();

  (*(v62 + 8))(v36, v63);
  v40 = sub_24A62F014();
  v41 = swift_allocObject();
  v43 = v65;
  v42 = v66;
  *(v41 + 16) = v65;
  *(v41 + 24) = v42;
  v76 = sub_24A58CBB0;
  v77 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v73 = 1107296256;
  v74 = sub_24A5A8458;
  v75 = &unk_285DA6310;
  v44 = _Block_copy(&aBlock);
  sub_24A519360(v43, v42);
  sub_24A62EAB4();
  v71 = MEMORY[0x277D84F90];
  v45 = v29;
  v46 = v64;
  v47 = v68;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v44);

  v55(v46, v47);
  v54(v45, v67);
}

void sub_24A5879C8(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v3 = sub_24A62EA94();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EAD4();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v18);
  v42 = &v40 - v19;
  v20 = dispatch_group_create();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (LOBYTE(aBlock[0]) == 4)
  {
  }

  else
  {
    v21 = sub_24A62F634();

    v22 = 0.0;
    if ((v21 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v40 = v20;
  v41 = v7;
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v2;
  sub_24A62E354();

  if ((*(v12 + 48))(v10, 1, v11))
  {
    sub_24A50D6A4(v10, &unk_27EF4FE20, &qword_24A634BA0);
    v22 = 0.0;
    v20 = v40;
    v7 = v41;
  }

  else
  {
    (*(v12 + 16))(v14, v10, v11);
    sub_24A50D6A4(v10, &unk_27EF4FE20, &qword_24A634BA0);
    v24 = [objc_opt_self() meters];
    sub_24A62DFE4();

    v25 = *(v12 + 8);
    v25(v14, v11);
    v26 = v42;
    (*(v12 + 32))(v42, v17, v11);
    if (*(v23 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_threshold))
    {
      v27 = 1.8288;
      v28 = 1.88976;
      v20 = v40;
      v7 = v41;
    }

    else
    {
      v7 = v41;
      if (qword_27EF4EAB0 != -1)
      {
        swift_once();
      }

      v27 = *&qword_27EF5C788;
      v20 = v40;
      if (qword_27EF4EA90 != -1)
      {
        swift_once();
      }

      v28 = *&qword_27EF5C768;
    }

    sub_24A62DFD4();
    v30 = v29;
    v25(v26, v11);
    v31 = (v30 - v27) / (v28 - v27);
    if (v31 > 1.0)
    {
      v31 = 1.0;
    }

    if (v31 < 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v31;
    }
  }

LABEL_18:
  sub_24A5843A4();
  v32 = v20;
  sub_24A52A860(v20, 0, 0, v22);

  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v33 = sub_24A62F014();
  v34 = swift_allocObject();
  v36 = v43;
  v35 = v44;
  *(v34 + 16) = v43;
  *(v34 + 24) = v35;
  aBlock[4] = sub_24A58D014;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA6360;
  v37 = _Block_copy(aBlock);
  sub_24A519360(v36, v35);
  sub_24A62EAB4();
  v50 = MEMORY[0x277D84F90];
  sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  v38 = v47;
  v39 = v49;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v37);

  (*(v48 + 8))(v38, v39);
  (*(v45 + 8))(v7, v46);
}

uint64_t sub_24A5881B0(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing);
  v4 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D839B0];
  v8[0] = v3;
  sub_24A583BD0(2, v8);
  sub_24A50D6A4(v8, &unk_27EF50780, &qword_24A638470);
  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow);
  v9 = v4;
  v8[0] = v5;
  sub_24A583BD0(3, v8);
  sub_24A50D6A4(v8, &unk_27EF50780, &qword_24A638470);
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere);
  v9 = v4;
  v8[0] = v6;
  sub_24A583BD0(4, v8);
  result = sub_24A50D6A4(v8, &unk_27EF50780, &qword_24A638470);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_24A5882BC()
{
  v1 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v23 > 3u && v23 <= 5u && v23 != 4)
  {

    goto LABEL_13;
  }

  v8 = sub_24A62F634();

  if (v8)
  {
LABEL_13:
    sub_24A584370();
    v14 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A640450);
    v16 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v14;
    v24 = v16;
    sub_24A62E364();
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = 0;
    v24 = 0xE000000000000000;

    sub_24A62E364();
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_14;
  }

  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24A50D6A4(v3, &unk_27EF4FE20, &qword_24A634BA0);
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = 0;
    v24 = 0xE000000000000000;
LABEL_14:

    return sub_24A62E364();
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_24A50D7EC(0, &qword_27EF4FEA0, 0x277CCAE20);
  v9 = sub_24A62DFB4();
  v10 = [objc_opt_self() meters];
  v11 = sub_24A62F164();

  sub_24A62DFD4();
  if ((v11 & 1) == 0)
  {
    if (v12 >= 2.0)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (qword_27EF4EAC8 != -1)
    {
      swift_once();
    }

    v13 = &qword_27EF5C7A0;
    goto LABEL_19;
  }

  if (v12 < 10.0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (qword_27EF4EAC0 != -1)
  {
    swift_once();
  }

  v13 = &qword_27EF5C798;
LABEL_19:
  v18 = *(v0 + 16);
  v19 = *v13;
  [v18 setNumberFormatter_];

  v20 = sub_24A62F0C4();
  v22 = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v20;
  v24 = v22;
  sub_24A62E364();
  sub_24A5879C8(0, 0);

  return (*(v5 + 8))(v7, v4);
}

BOOL sub_24A5888B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v2 - 4 < 2)
  {
    return 1;
  }

  if (v2 != 3)
  {
    return 0;
  }

  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return fabs(v1 * 57.2957795) < 30.0;
}

unint64_t sub_24A5889BC(char a1)
{
  result = 0x416874756D697A61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6C75466372417369;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x7053746567726174;
      break;
    case 5:
      result = 0x6F69746365726964;
      break;
    case 6:
    case 14:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x6169446372417369;
      break;
    case 8:
      result = 0x656C636974726170;
      break;
    case 9:
      result = 0x656C637269436F74;
      break;
    case 10:
      result = 0x65706168536F74;
      break;
    case 11:
      result = 0x63614679616C6564;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24A588C5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A58C944(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A588C8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x63656E6E6F436F6ELL;
  v5 = 0xE700000000000000;
  v6 = 0x6C616974696E69;
  if (v2 != 6)
  {
    v6 = 0x726F727265;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1918985582;
  if (v2 != 4)
  {
    v8 = 0x646E756F66;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6517345;
  if (v2 != 2)
  {
    v10 = 0x776F727261;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 7496038;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A588D7C()
{
  v1 = OBJC_IVAR____TtCCC11FMFindingUI10VFXManager6Values16CoreMotionValues__motionRotationX;
  v2 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCCC11FMFindingUI10VFXManager6Values16CoreMotionValues__motionRotationY, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24A588E54@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VFXManager.Values.CoreMotionValues(0);
  result = sub_24A62E334();
  *a2 = result;
  return result;
}

double sub_24A588E94()
{
  v0 = sub_24A62EA94();
  v16 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24A62EAD4();
  v14 = *(v3 - 8);
  v15 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v7 + 104))(v9, *MEMORY[0x277D851C8], v6);
  v10 = sub_24A62F054();
  (*(v7 + 8))(v9, v6);
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24A58CEF4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA63B0;
  v12 = _Block_copy(aBlock);

  sub_24A62EAB4();
  v17 = MEMORY[0x277D84F90];
  sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v5, v2, v12);
  _Block_release(v12);

  (*(v16 + 8))(v2, v0);
  (*(v14 + 8))(v5, v15);

  return result;
}

void sub_24A589258(uint64_t a1)
{
  v1 = sub_24A62EA94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EAD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v9)
  {
    v18 = v9;
    if ([v9 hasTorch] && objc_msgSend(v18, sel_isTorchAvailable))
    {
      v10 = [v18 torchMode] == 1;
      sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
      v17 = v2;
      v16 = sub_24A62F014();
      v11 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
      aBlock[4] = sub_24A58CF34;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DA6400;
      v13 = _Block_copy(aBlock);

      sub_24A62EAB4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24A58CF48(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      sub_24A518A6C(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30, MEMORY[0x277D83970]);
      sub_24A62F254();
      v14 = v16;
      MEMORY[0x24C21A950](0, v8, v4, v13);
      _Block_release(v13);

      (*(v17 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v15 = v18;
    }
  }
}

uint64_t sub_24A589644(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24A62E364();
  }

  return result;
}

double sub_24A589724()
{
  v0 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v0);
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C130);

  v2 = sub_24A62E2F4();
  v3 = sub_24A62EF34();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24A509BA8(0x65636E6174736964, 0xE800000000000000, &v10);
    *(v4 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v6 = sub_24A62EC44();
    v8 = sub_24A509BA8(v6, v7, &v10);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24A503000, v2, v3, "Updated value VFXManager.Values.%s to %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v5, -1, -1);
    MEMORY[0x24C21BBE0](v4, -1, -1);
  }

  if (swift_weakLoadStrong())
  {
    sub_24A5882BC();
  }

  return result;
}

double sub_24A589978()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return result;
}

uint64_t sub_24A589A2C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return v3;
}

void sub_24A589A98(double a1)
{
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(v5[0]) != 6)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      *(v1 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values_azimuthVelocity) = fmod(a1 * 57.2957795 - v5[0] * 57.2957795 + 180.0, 360.0) + -180.0;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v4 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_24A62E354();

        *&v5[3] = MEMORY[0x277D839F8];
        v5[0] = v5[0] * 57.2957795;
        sub_24A583BD0(0, v5);

        sub_24A50D6A4(v5, &unk_27EF50780, &qword_24A638470);
      }
    }
  }
}

void sub_24A589CAC()
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v1 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_24A509BA8(0x61635365736C7570, 0xEA0000000000656CLL, &v6);
    *(v2 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    *(v2 + 14) = v5;
    _os_log_impl(&dword_24A503000, oslog, v1, "Updated value VFXManager.Values.%s to %f", v2, 0x16u);
    sub_24A508C54(v3);
    MEMORY[0x24C21BBE0](v3, -1, -1);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }

  else
  {
  }
}

void sub_24A589E98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A62E314();
  sub_24A506EB8(v6, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v7 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24A509BA8(a1, a2, &v12);
    *(v8 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    *(v8 + 14) = v11;
    _os_log_impl(&dword_24A503000, oslog, v7, "Updated value VFXManager.Values.%s to %f", v8, 0x16u);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  else
  {
  }
}

void sub_24A58A088()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v8[3] = MEMORY[0x277D839F8];
    *v8 = *v8 * 57.2957795;
    sub_24A583BD0(5, v8);

    sub_24A50D6A4(v8, &unk_27EF50780, &qword_24A638470);
  }

  if (swift_weakLoadStrong())
  {
    sub_24A5871C0(0, 0);
  }

  if (swift_weakLoadStrong())
  {
    sub_24A5869E4(0, 0);
  }

  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C130);

  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24A509BA8(0x746E6F7A69726F68, 0xEF656C676E416C61, v8);
    *(v5 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    *(v5 + 14) = v7 * 57.2957795;
    _os_log_impl(&dword_24A503000, v3, v4, "Updated value VFXManager.Values.%s to %f", v5, 0x16u);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }
}

void sub_24A58A360()
{
  if (qword_27EF4E9A8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A62E314();
  sub_24A506EB8(v0, qword_27EF5C130);

  oslog = sub_24A62E2F4();
  v1 = sub_24A62EF34();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 134217984;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    *(v2 + 4) = v4;
    _os_log_impl(&dword_24A503000, oslog, v1, "Update SwiftUI value .arcToArrowDuration to %f", v2, 0xCu);
    MEMORY[0x24C21BBE0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A58A4F4()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isPlaySoundEnabled;
  v2 = sub_24A508FA4(&qword_27EF4FC70, &qword_24A637600);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isFlashLightOn, v2);
  v3(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isFlashLightVisible, v2);
  v4 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__currentFindableName;
  v5 = sub_24A508FA4(&qword_27EF508E8, &qword_24A637608);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v7 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__distance;
  v8 = sub_24A508FA4(&qword_27EF508F0, &qword_24A637610);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v6(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__formattedDistance, v5);
  v6(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__hintSubtitle, v5);
  v6(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__findingSubtitle, v5);
  v9 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__azimuthAngle;
  v10 = sub_24A508FA4(&qword_27EF508F8, &qword_24A637618);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v12 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseFrequency;
  v13 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v15 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseScale;
  v16 = sub_24A508FA4(&qword_27EF4FC60, &unk_24A637620);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v14(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseDuration, v13);
  v11(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__horizontalAngle, v10);
  v14(v0 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__arcToArrowDuration, v13);
  return v0;
}

uint64_t sub_24A58A80C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_24A58A890(uint64_t a1)
{
  sub_24A52A2FC(319, &qword_27EF4FC48, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_24A52A2FC(319, &qword_27EF508A0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24A58AAD0(319);
      if (v3 <= 0x3F)
      {
        sub_24A52A2FC(319, &qword_27EF508B0, MEMORY[0x277CE0EC8]);
        if (v4 <= 0x3F)
        {
          sub_24A52A2FC(319, &qword_27EF4FC50, MEMORY[0x277D839F8]);
          if (v5 <= 0x3F)
          {
            sub_24A52A2FC(319, &qword_27EF4FC58, MEMORY[0x277D85048]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_24A58AAD0(uint64_t a1)
{
  if (!qword_27EF508A8)
  {
    sub_24A50E1E0(&unk_27EF4FE20, &qword_24A634BA0);
    v1 = sub_24A62E374();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF508A8);
    }
  }
}

void sub_24A58AB5C(uint64_t a1)
{
  sub_24A52A2FC(319, &qword_27EF4FC50, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for VFXManager.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VFXManager.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A58AD94@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VFXManager.Values(0);
  result = sub_24A62E334();
  *a2 = result;
  return result;
}

void sub_24A58AEA0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  sub_24A589E98(a7, a8, a5, a6);
}

void sub_24A58AF70(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a2 = v3;
}

uint64_t sub_24A58AFF0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  return sub_24A583D84();
}

double sub_24A58B0B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return result;
}

uint64_t sub_24A58B134(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_24A50D63C(a1, &v10 - v7, &unk_27EF4FE20, &qword_24A634BA0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A50D63C(v8, v5, &unk_27EF4FE20, &qword_24A634BA0);

  sub_24A62E364();
  sub_24A589724();
  return sub_24A50D6A4(v8, &unk_27EF4FE20, &qword_24A634BA0);
}

void sub_24A58B2CC(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a4 = v5;
  a4[1] = v6;
}

uint64_t sub_24A58B35C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A58B3F0(double *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  sub_24A589A98(v2);
}

uint64_t sub_24A58B500(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_24A62E364();
  return a7(v8);
}

void sub_24A58B59C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  sub_24A58A360();
}

void sub_24A58B61C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (a1 > 3u || a1 <= 1u || a1 == 2)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (a1 > 3u)
        {
          if (a1 > 5u)
          {
            v4 = a1;
          }

          else
          {
            if (a1 == 4)
            {
              goto LABEL_31;
            }

            v4 = a1;
          }
        }

        else
        {
          v4 = a1;
        }

        v6 = sub_24A62F634();

        if (v6)
        {
          return;
        }

        if (v4 <= 3u || v4 > 5u || v4 == 4)
        {
          goto LABEL_74;
        }
      }

LABEL_31:

      return;
    }

    if (!a2)
    {
      if (a1 <= 3u)
      {
        v2 = a1;
        goto LABEL_43;
      }

      if (a1 <= 5u)
      {
        v2 = a1;
        goto LABEL_43;
      }

      if (a1 != 6)
      {
        v2 = a1;
LABEL_43:
        v7 = sub_24A62F634();

        if (v7)
        {
          return;
        }

        if (v2 <= 3u && v2 > 1u && v2 != 2)
        {
          goto LABEL_71;
        }

        v10 = sub_24A62F634();

        if (v10)
        {
          return;
        }

        if (v2 == 4)
        {
          goto LABEL_71;
        }

        v12 = sub_24A62F634();

        if (v12)
        {
          return;
        }

        if (v2 > 3u && v2 <= 5u && v2 != 4)
        {
          goto LABEL_71;
        }

LABEL_74:
        sub_24A62F634();

        return;
      }

      goto LABEL_31;
    }

    if (a1 > 3u)
    {
      v3 = a1;
    }

    else if (a1 > 1u)
    {
      if (a1 != 2)
      {
        goto LABEL_71;
      }

      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    v5 = sub_24A62F634();

    if (v5)
    {
      return;
    }

    if (v3 <= 3u || v3 != 4)
    {
      v8 = sub_24A62F634();

      if (v8)
      {
        return;
      }

      if (v3 <= 3u)
      {
        v9 = v3;
        goto LABEL_63;
      }

      if (v3 > 5u)
      {
        v9 = v3;
LABEL_63:
        v11 = sub_24A62F634();

        if (v11)
        {
          return;
        }

        if (v9 == 2)
        {
          goto LABEL_71;
        }

        goto LABEL_74;
      }

      if (v3 == 4)
      {
        v9 = v3;
        goto LABEL_63;
      }
    }

LABEL_71:
  }
}

uint64_t sub_24A58C10C(uint64_t a1)
{
  v63 = a1;
  v2 = sub_24A508FA4(&qword_27EF4FC60, &unk_24A637620);
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v48 - v3;
  v4 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v48 - v5;
  v56 = sub_24A508FA4(&qword_27EF508F8, &qword_24A637618);
  v64 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v48 - v6;
  v7 = sub_24A508FA4(&qword_27EF508F0, &qword_24A637610);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - v8;
  v51 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v49 = sub_24A508FA4(&qword_27EF508E8, &qword_24A637608);
  v13 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = &v48 - v14;
  v16 = sub_24A508FA4(&qword_27EF4FC70, &qword_24A637600);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  swift_weakInit();
  type metadata accessor for VFXManager.Values.CoreMotionValues(0);
  v20 = swift_allocObject();
  v65 = 0;
  sub_24A62E344();
  v65 = 0;
  sub_24A62E344();
  *(v1 + 24) = v20;
  v21 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isPlaySoundEnabled;
  LOBYTE(v65) = 0;
  sub_24A62E344();
  v22 = *(v17 + 32);
  v22(v1 + v21, v19, v16);
  v23 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isFlashLightOn;
  LOBYTE(v65) = 0;
  sub_24A62E344();
  v22(v1 + v23, v19, v16);
  v24 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__isFlashLightVisible;
  LOBYTE(v65) = 0;
  sub_24A62E344();
  v22(v1 + v24, v19, v16);
  v25 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__currentFindableName;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_24A62E344();
  v26 = *(v13 + 32);
  v48 = v13 + 32;
  v27 = v49;
  v26(v1 + v25, v15, v49);
  v28 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__distance;
  v29 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  sub_24A50D63C(v12, v50, &unk_27EF4FE20, &qword_24A634BA0);
  v30 = v52;
  sub_24A62E344();
  sub_24A50D6A4(v12, &unk_27EF4FE20, &qword_24A634BA0);
  (*(v53 + 32))(v1 + v28, v30, v54);
  v31 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__formattedDistance;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_24A62E344();
  v26(v1 + v31, v15, v27);
  v32 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__hintSubtitle;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_24A62E344();
  v26(v1 + v32, v15, v27);
  v33 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__findingSubtitle;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_24A62E344();
  v26(v1 + v33, v15, v27);
  v34 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__azimuthAngle;
  v65 = 0;
  v35 = v55;
  sub_24A62E344();
  v36 = *(v64 + 32);
  v64 += 32;
  v37 = v56;
  v36(v1 + v34, v35, v56);
  *(v1 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values_azimuthVelocity) = 0;
  v38 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseFrequency;
  v65 = 0x3FE0000000000000;
  v39 = v57;
  sub_24A62E344();
  v40 = v59;
  v41 = *(v58 + 32);
  v41(v1 + v38, v39, v59);
  v42 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseScale;
  v65 = 0x4012000000000000;
  v43 = v60;
  sub_24A62E344();
  (*(v61 + 32))(v1 + v42, v43, v62);
  v44 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__pulseDuration;
  v65 = 0x3FE0000000000000;
  sub_24A62E344();
  v41(v1 + v44, v39, v40);
  v45 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__horizontalAngle;
  v65 = 0;
  sub_24A62E344();
  v36(v1 + v45, v35, v37);
  v46 = OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values__arcToArrowDuration;
  v65 = 0x3FD3333333333333;
  sub_24A62E344();
  v41(v1 + v46, v39, v40);
  swift_weakAssign();
  sub_24A588E94();
  return v1;
}

unint64_t sub_24A58C944(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A62F4B4();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A58CAA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A58CB2C()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A58CE1C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A58CEBC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A58CEFC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A58CF48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A58CF90()
{
  result = qword_27EF50910;
  if (!qword_27EF50910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50910);
  }

  return result;
}

uint64_t FMMockFindingSession.__allocating_init(findables:primaryPart:findingType:groupedItemIdentifiers:arSession:)(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v37 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v29 - v11;
  v34 = swift_allocObject();
  LODWORD(a3) = *a3;
  type metadata accessor for FMFindingMockLocalizer();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  v33 = a3;
  v32 = v13;
  *(v13 + 32) = a3;
  v14 = *(a1 + 16);
  v36 = a1;
  if (v14)
  {
    v29 = a4;
    v31 = a2;
    v41 = MEMORY[0x277D84F90];
    v30 = a5;
    v15 = a5;
    sub_24A58D928(0, v14, 0);
    v16 = v41;
    v17 = a1 + 32;
    do
    {
      sub_24A508AE4(v17, v38);
      v18 = &v12[*(v37 + 48)];
      v19 = v39;
      v20 = v40;
      sub_24A50A204(v38, v39);
      (*(v20 + 16))(v19, v20);
      *(v18 + 4) = 0u;
      *(v18 + 5) = 0u;
      *(v18 + 2) = 0u;
      *(v18 + 3) = 0u;
      *v18 = 0u;
      *(v18 + 1) = 0u;
      v18[100] = 0;
      *(v18 + 24) = 0x4000000;
      sub_24A508C54(v38);
      v41 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_24A58D928((v21 > 1), v22 + 1, 1);
        v16 = v41;
      }

      *(v16 + 16) = v22 + 1;
      sub_24A58D948(v12, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22);
      v17 += 40;
      --v14;
    }

    while (v14);
    a5 = v30;
    a2 = v31;
    a4 = v29;
    if (*(v16 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = a5;
    v16 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
      v23 = sub_24A62F494();
      goto LABEL_10;
    }
  }

  v23 = MEMORY[0x277D84F98];
LABEL_10:
  v38[0] = v23;
  v25 = v35;
  sub_24A58DA38(v16, 1, v38);
  if (v25)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v26 = v32;
    *(v32 + 40) = v38[0];
    *(v34 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer) = v26;
    sub_24A50D63C(a2, v38, &unk_27EF522E0, qword_24A637660);
    LOWORD(v41) = v33;
    v27 = sub_24A60E654(v36, v38, &v41, a4, a5);
    sub_24A58E048(a2);
    *(*(v27 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer) + 24) = &off_285DAB2A0;
    swift_unknownObjectWeakAssign();
    return v27;
  }

  return result;
}

uint64_t FMMockFindingSession.init(findables:primaryPart:findingType:groupedItemIdentifiers:arSession:)(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v6 = v5;
  v41 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  v12 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v33 - v13;
  LODWORD(a3) = *a3;
  type metadata accessor for FMFindingMockLocalizer();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  v38 = a3;
  v37 = v15;
  *(v15 + 32) = a3;
  v16 = *(a1 + 16);
  v40 = a1;
  if (v16)
  {
    v33 = a4;
    v35 = v6;
    v36 = a2;
    v45 = MEMORY[0x277D84F90];
    v34 = a5;
    v17 = a5;
    sub_24A58D928(0, v16, 0);
    v18 = v45;
    v19 = a1 + 32;
    do
    {
      sub_24A508AE4(v19, v42);
      v20 = &v14[*(v41 + 48)];
      v21 = v43;
      v22 = v44;
      sub_24A50A204(v42, v43);
      (*(v22 + 16))(v21, v22);
      *(v20 + 4) = 0u;
      *(v20 + 5) = 0u;
      *(v20 + 2) = 0u;
      *(v20 + 3) = 0u;
      *v20 = 0u;
      *(v20 + 1) = 0u;
      v20[100] = 0;
      *(v20 + 24) = 0x4000000;
      sub_24A508C54(v42);
      v45 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_24A58D928((v23 > 1), v24 + 1, 1);
        v18 = v45;
      }

      *(v18 + 16) = v24 + 1;
      sub_24A58D948(v14, v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24);
      v19 += 40;
      --v16;
    }

    while (v16);
    v6 = v35;
    a2 = v36;
    v25 = v33;
    a5 = v34;
    if (*(v18 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v25 = a4;
    v27 = a5;
    v18 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
      v26 = sub_24A62F494();
      goto LABEL_10;
    }
  }

  v26 = MEMORY[0x277D84F98];
LABEL_10:
  v29 = v39;
  v28 = v40;
  v42[0] = v26;
  sub_24A58DA38(v18, 1, v42);
  if (v29)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    v30 = v37;
    *(v37 + 40) = v42[0];
    *(v6 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer) = v30;
    sub_24A50D63C(a2, v42, &unk_27EF522E0, qword_24A637660);
    LOWORD(v45) = v38;
    v31 = sub_24A60E654(v28, v42, &v45, v25, a5);
    sub_24A58E048(a2);
    *(*(v31 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer) + 24) = &off_285DAB2A0;
    swift_unknownObjectWeakAssign();
    return v31;
  }

  return result;
}

uint64_t FMMockFindingSession.deinit()
{
  v0 = FMFindingSession.deinit();

  return v0;
}

uint64_t FMMockFindingSession.__deallocating_deinit()
{
  FMFindingSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A58D808(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v10 = *a3;
  type metadata accessor for FMMockFindingSession(0);
  swift_allocObject();
  return FMMockFindingSession.init(findables:primaryPart:findingType:groupedItemIdentifiers:arSession:)(a1, a2, &v10, a4, a5);
}

char *sub_24A58D888(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E532C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D8A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E545C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A58D8C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E5634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D8E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E5744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D908(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E5438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D928(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E5768(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24A58D948(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_24A58D9B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E5974(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D9D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E5A78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58D9F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E5A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24A58DA18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A5E5C08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_24A58DA38(void (*a1)(char *, char *, uint64_t), char a2, void *a3)
{
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A508FA4(&qword_27EF50918, &unk_24A637650);
  MEMORY[0x28223BE20](v11);
  v15 = v73 - v14;
  if (!*(a1 + 2))
  {
    goto LABEL_14;
  }

  v74 = *(a1 + 2);
  v73[1] = v3;
  v16 = &v15[*(v12 + 48)];
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v75 = *(v13 + 72);
  v76 = a1;
  v73[0] = v17;
  sub_24A50D63C(a1 + v17, v73 - v14, &qword_27EF50918, &unk_24A637650);
  v77 = v8;
  v78 = v7;
  v20 = *(v8 + 32);
  v19 = (v8 + 32);
  v18 = v20;
  v20(v10, v15, v7);
  v21 = *(v16 + 5);
  v86 = *(v16 + 4);
  v87[0] = v21;
  *(v87 + 13) = *(v16 + 93);
  v22 = *(v16 + 1);
  v82 = *v16;
  v83 = v22;
  v23 = *(v16 + 3);
  v84 = *(v16 + 2);
  v85 = v23;
  v79 = a3;
  v24 = *a3;
  v25 = sub_24A515AC8(v10);
  v27 = *(v24 + 16);
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v26;
  if (*(v24 + 24) < v30)
  {
    sub_24A5558A0(v30, a2 & 1);
    v25 = sub_24A515AC8(v10);
    if ((v31 & 1) != (v32 & 1))
    {
LABEL_5:
      sub_24A62F674();
      __break(1u);
      goto LABEL_14;
    }

LABEL_8:
    if (v31)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v25;
  sub_24A55891C();
  v25 = v35;
  if (v31)
  {
LABEL_9:
    v33 = swift_allocError();
    swift_willThrow();

    v88 = v33;
    v34 = v33;
    sub_24A508FA4(&unk_27EF4F990, &unk_24A6349E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_24A517ABC(&v82);
      (*(v77 + 8))(v10, v78);

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v36 = v78;
  v37 = *v79;
  *(*v79 + 8 * (v25 >> 6) + 64) |= 1 << v25;
  v38 = v25;
  v18(v37[6] + *(v77 + 72) * v25, v10, v36);
  v39 = v37[7] + 104 * v38;
  v40 = v82;
  v41 = v84;
  *(v39 + 16) = v83;
  *(v39 + 32) = v41;
  *v39 = v40;
  v42 = v85;
  v43 = v86;
  v44 = v87[0];
  *(v39 + 93) = *(v87 + 13);
  *(v39 + 64) = v43;
  *(v39 + 80) = v44;
  *(v39 + 48) = v42;
  v45 = v37[2];
  v29 = __OFADD__(v45, 1);
  v46 = v45 + 1;
  if (!v29)
  {
    v37[2] = v46;
    if (v74 == 1)
    {
LABEL_14:

      return;
    }

    if (*(v76 + 2) < 2uLL)
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v47 = v76 + v75 + v73[0];
      v74 = 2 - v74;
      v48 = 1;
      while (1)
      {
        sub_24A50D63C(v47, v15, &qword_27EF50918, &unk_24A637650);
        v49 = *v19;
        (*v19)(v10, v15, v78);
        v50 = *(v16 + 5);
        v86 = *(v16 + 4);
        v87[0] = v50;
        *(v87 + 13) = *(v16 + 93);
        v51 = *(v16 + 1);
        v82 = *v16;
        v83 = v51;
        v52 = *(v16 + 3);
        v84 = *(v16 + 2);
        v85 = v52;
        v53 = *v79;
        v54 = sub_24A515AC8(v10);
        v56 = v53[2];
        v57 = (v55 & 1) == 0;
        v29 = __OFADD__(v56, v57);
        v58 = v56 + v57;
        if (v29)
        {
          break;
        }

        v59 = v55;
        if (v53[3] < v58)
        {
          sub_24A5558A0(v58, 1);
          v54 = sub_24A515AC8(v10);
          if ((v59 & 1) != (v60 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v59)
        {
          goto LABEL_9;
        }

        v61 = v78;
        v62 = *v79;
        *(*v79 + 8 * (v54 >> 6) + 64) |= 1 << v54;
        v63 = v54;
        v49((v62[6] + *(v77 + 72) * v54), v10, v61);
        v64 = v62[7] + 104 * v63;
        v65 = v82;
        v66 = v84;
        *(v64 + 16) = v83;
        *(v64 + 32) = v66;
        *v64 = v65;
        v67 = v85;
        v68 = v86;
        v69 = v87[0];
        *(v64 + 93) = *(v87 + 13);
        *(v64 + 64) = v68;
        *(v64 + 80) = v69;
        *(v64 + 48) = v67;
        v70 = v62[2];
        v29 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v29)
        {
          goto LABEL_26;
        }

        v72 = v74 + v48;
        v62[2] = v71;
        if (v72 == 1)
        {
          goto LABEL_14;
        }

        ++v48;
        v47 += v75;
        if (v48 >= *(v76 + 2))
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_24A62F384();
  MEMORY[0x24C21A5D0](0xD00000000000001BLL, 0x800000024A63ECC0);
  sub_24A62F434();
  MEMORY[0x24C21A5D0](39, 0xE100000000000000);
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A58E048(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FMMockFindingSession(uint64_t a1)
{
  result = qword_27EF50920;
  if (!qword_27EF50920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FMPFMetalBGRABackdropMixerParameters(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double sub_24A58E1A8()
{
  v1 = sub_24A62EA94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EAD4();
  v6 = *(v5 - 8);
  *&result = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalDevice];
  if (v10)
  {
    v14[0] = *&v0[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue];
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v0;
    aBlock[4] = sub_24A58FF4C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA65F0;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v13 = v0;
    sub_24A62EAB4();
    v14[1] = MEMORY[0x277D84F90];
    sub_24A58FDA4(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v9, v4, v12);
    _Block_release(v12);
    swift_unknownObjectRelease();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_24A58E478(id metalDevice, char *a2)
{
  cacheOut[1] = *MEMORY[0x277D85DE8];
  cacheOut[0] = 0;
  CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], 0, metalDevice, 0, cacheOut);
  v4 = cacheOut[0];
  v5 = *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache];
  *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache] = cacheOut[0];
  v6 = v4;

  v7 = [metalDevice newCommandQueue];
  *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue] = v7;
  swift_unknownObjectRelease();
  type metadata accessor for FMPFView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v34 = 0;
  v10 = [metalDevice newDefaultLibraryWithBundle:v9 error:&v34];
  v11 = v34;
  if (v10)
  {
    v12 = v10;
    swift_unknownObjectRetain();
    v13 = v11;
    v14 = sub_24A62EBE4();
    v15 = [v12 newFunctionWithName_];
    swift_unknownObjectRelease();

    if (v15)
    {
      v34 = 0;
      v16 = [metalDevice newComputePipelineStateWithFunction:v15 error:&v34];
      v17 = v34;
      if (v16)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        *&a2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState] = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = v17;
        v21 = sub_24A62E084();

        swift_willThrow();
        if (qword_27EF4E990 != -1)
        {
          swift_once();
        }

        v22 = sub_24A62E314();
        sub_24A506EB8(v22, qword_27EF5C0E8);
        v23 = a2;
        v24 = v21;
        v25 = sub_24A62E2F4();
        v26 = sub_24A62EF64();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v34 = v33;
          *v27 = 138412546;
          *(v27 + 4) = v23;
          *v32 = v23;
          *(v27 + 12) = 2080;
          swift_getErrorValue();
          v28 = v23;
          v29 = sub_24A62F6A4();
          v31 = sub_24A509BA8(v29, v30, &v34);

          *(v27 + 14) = v31;
          _os_log_impl(&dword_24A503000, v25, v26, "🧭 FMPFView%@: failed loading Metal Shader (%s)", v27, 0x16u);
          sub_24A58FDEC(v32);
          MEMORY[0x24C21BBE0](v32, -1, -1);
          sub_24A508C54(v33);
          MEMORY[0x24C21BBE0](v33, -1, -1);
          MEMORY[0x24C21BBE0](v27, -1, -1);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v18 = v34;
    v19 = sub_24A62E084();

    swift_willThrow();
  }
}

void sub_24A58E8A4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache;
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache);
  if (v3)
  {
    CVMetalTextureCacheFlush(v3, 0);
    v3 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
}

id sub_24A58E8F8(__CVBuffer *a1, double a2)
{
  textureOut[1] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalTextureCache);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = sub_24A61C2D0(a1, a2);

  if (v7)
  {
    Width = CVPixelBufferGetWidth(v7);
    Height = CVPixelBufferGetHeight(v7);
    textureOut[0] = 0;
    if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], v6, v7, 0, MTLPixelFormatBGRA8Unorm_sRGB, Width, Height, 0, textureOut))
    {

      return 0;
    }

    if (textureOut[0])
    {
      v11 = textureOut[0];
      v12 = CVMetalTextureGetTexture(v11);
    }

    else
    {

      v12 = 0;
    }

    return v12;
  }

  else
  {

    return 0;
  }
}

void sub_24A58EA70(void *a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalDevice);
  if (!v3 || (v4 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalCommandQueue)) == 0 || (v5 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerPipelineState)) == 0)
  {
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v8 = sub_24A62E314();
    sub_24A506EB8(v8, qword_27EF5C0E8);
    v9 = v2;
    oslog = sub_24A62E2F4();
    v10 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&dword_24A503000, oslog, v10, "🧭 FMPFView%@: cannot use Metal Shader as it is not set up", v11, 0xCu);
      sub_24A58FDEC(v12);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      MEMORY[0x24C21BBE0](v11, -1, -1);
    }

    goto LABEL_38;
  }

  v7 = &property descriptor for FMFindingViewController.dismissedHandler;
  if (*(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalHasLoggedSetup))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalHasLoggedSetup) = 1;
    v14 = qword_27EF4E990;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_24A62E314();
    sub_24A506EB8(v15, qword_27EF5C0E8);
    swift_unknownObjectRetain_n();
    osloga = v2;
    v16 = v2;
    v17 = sub_24A62E2F4();
    v18 = sub_24A62EF64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412802;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2048;
      v21 = v16;
      v22 = [a1 width];
      swift_unknownObjectRelease();
      *(v19 + 14) = v22;
      swift_unknownObjectRelease();
      *(v19 + 22) = 2048;
      v23 = [a1 height];
      swift_unknownObjectRelease();
      *(v19 + 24) = v23;
      v7 = &property descriptor for FMFindingViewController.dismissedHandler;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMPFView%@: set up Metal Shader %ldx%ld in/out texture", v19, 0x20u);
      sub_24A58FDEC(v20);
      MEMORY[0x24C21BBE0](v20, -1, -1);
      MEMORY[0x24C21BBE0](v19, -1, -1);

      v2 = osloga;
    }

    else
    {

      swift_unknownObjectRelease_n();
      v2 = osloga;
      v7 = &property descriptor for FMFindingViewController.dismissedHandler;
    }
  }

  oslog = [objc_opt_self() texture2DDescriptorWithPixelFormat:objc_msgSend(a1 width:sel_pixelFormat) height:objc_msgSend(a1 mipmapped:v7[408]), objc_msgSend(a1, sel_height), 1];
  [oslog setUsage:3];
  v24 = [v3 newTextureWithDescriptor_];
  if (v24)
  {
    v25 = v24;
    v26 = [v4 commandBuffer];
    if (v26)
    {
      v27 = v26;
      v28 = [v4 commandBuffer];
      if (v28)
      {
        v29 = v28;
        v30 = swift_allocObject();
        *(v30 + 16) = a2;
        *(v30 + 24) = v25;
        v59 = sub_24A58FE94;
        v60 = v30;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v57 = sub_24A58F36C;
        v58 = &unk_285DA65A0;
        v31 = _Block_copy(&aBlock);
        v32 = a2;
        swift_unknownObjectRetain();

        [v29 addCompletedHandler_];
        _Block_release(v31);
        if (*(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_experienceType) < 2u)
        {
          v33 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_backdropSigmaSpring);
          v34 = (v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
          swift_beginAccess();
          v35 = *v34 + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
          if (vabdd_f64(v34[35] + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v35) <= *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
          {
            v35 = v34[35] + *(v33 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
          }

          v36 = v35;
          v37 = objc_allocWithZone(MEMORY[0x277CD7520]);
          *&v38 = v36;
          v39 = [v37 initWithDevice:v3 sigma:v38];
          [v39 encodeToCommandBuffer:v27 sourceTexture:a1 destinationTexture:v25];
          [v27 commit];
        }

        v40 = [v29 computeCommandEncoder];
        if (!v40)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_43;
        }

        v41 = v40;
        v55 = *(&v2->isa + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalBGRABackdropMixerParameters);
        [v40 setComputePipelineState_];
        [v41 setBytes:&v55 length:16 atIndex:0];
        swift_unknownObjectRetain();
        [v41 setTexture:v25 atIndex:0];
        [v41 setTexture:v25 atIndex:1];
        swift_unknownObjectRelease();
        v42 = sqrt([v5 maxTotalThreadsPerThreadgroup]);
        if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v42 > -9.22337204e18)
        {
          if (v42 < 9.22337204e18)
          {
            v43 = v42 + 15;
            if (v42 >= 0)
            {
              v43 = v42;
            }

            sub_24A58FEFC(v43 & 0xFFFFFFFFFFFFFFF0, v43 & 0xFFFFFFFFFFFFFFF0, &aBlock);
            v44 = aBlock;
            v50 = v57;
            v45 = [a1 width];
            if (v44)
            {
              v46 = v45;
              if (v45 == 0x8000000000000000 && v44 == -1)
              {
                goto LABEL_49;
              }

              v47 = [a1 height];
              if (*(&v44 + 1))
              {
                if (v47 != 0x8000000000000000 || *(&v44 + 1) != -1)
                {
                  sub_24A58FEFC(v46 / v44, v47 / *(&v44 + 1), &aBlock);
                  v53 = v44;
                  v54 = v50;
                  [v41 dispatchThreadgroups:&aBlock threadsPerThreadgroup:&v53];
                  [v41 endEncoding];
                  [v48 commit];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
LABEL_43:
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  return;
                }

LABEL_50:
                __break(1u);
              }

LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        __break(1u);
        goto LABEL_46;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_37:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_38:
}

uint64_t sub_24A58F36C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_24A58F3CC(void *a1, void *a2)
{
  v5 = sub_24A62EA94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62EAD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CVPixelBufferGetPixelFormatType(a1) == 875704422)
  {
    v43 = v6;
    v13 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView;
    [*&v2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_scnSceneView] bounds];
    v15 = v14;
    [*&v2[v13] bounds];
    if ((v2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy] & 1) == 0)
    {
      v35 = v15 / v16;
      v42[1] = *&v2[OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingQueue];
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = a1;
      *(v37 + 32) = v35;
      *(v37 + 40) = a2;
      aBlock[4] = sub_24A58FD7C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DA6550;
      v38 = _Block_copy(aBlock);

      v39 = a1;
      v40 = a2;
      sub_24A62EAB4();
      v44 = MEMORY[0x277D84F90];
      sub_24A58FDA4(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      sub_24A529464();
      sub_24A62F254();
      MEMORY[0x24C21A950](0, v12, v8, v38);
      _Block_release(v38);
      (v43[1].isa)(v8, v5);
      (*(v10 + 8))(v12, v9);

      return;
    }

    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v17 = sub_24A62E314();
    sub_24A506EB8(v17, qword_27EF5C0E8);
    v18 = v2;
    v43 = sub_24A62E2F4();
    v19 = sub_24A62EF64();

    if (os_log_type_enabled(v43, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&dword_24A503000, v43, v19, "🧭 FMPFView%@: dropping frame - metal processing queue is busy", v20, 0xCu);
      sub_24A58FDEC(v21);
      MEMORY[0x24C21BBE0](v21, -1, -1);
      MEMORY[0x24C21BBE0](v20, -1, -1);
    }
  }

  else
  {
    sub_24A508FA4(&qword_27EF50530, qword_24A636270);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24A633A00;
    *(v23 + 56) = type metadata accessor for FMPFView();
    *(v23 + 64) = sub_24A58FDA4(&qword_27EF50938, type metadata accessor for FMPFView, MEMORY[0x277D85388]);
    *(v23 + 32) = v2;
    v24 = v2;
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v26 = MEMORY[0x277D84D30];
    *(v23 + 96) = MEMORY[0x277D84CC0];
    *(v23 + 104) = v26;
    *(v23 + 72) = PixelFormatType;
    v27 = sub_24A62EC24();
    v29 = v28;
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v30 = sub_24A62E314();
    sub_24A506EB8(v30, qword_27EF5C0E8);

    v43 = sub_24A62E2F4();
    v31 = sub_24A62EF64();

    if (os_log_type_enabled(v43, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136315138;
      v34 = sub_24A509BA8(v27, v29, aBlock);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_24A503000, v43, v31, "%s", v32, 0xCu);
      sub_24A508C54(v33);
      MEMORY[0x24C21BBE0](v33, -1, -1);
      MEMORY[0x24C21BBE0](v32, -1, -1);

      return;
    }
  }

  v41 = v43;
}

void sub_24A58FA50(uint64_t a1, __CVBuffer *a2, void *a3, double a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy;
    *(Strong + OBJC_IVAR____TtC11FMFindingUI8FMPFView_metalProcessingBusy) = 1;
    Width = CVPixelBufferGetWidth(a2);
    v11 = 0.5;
    if (Width < 1920)
    {
      v11 = 0.75;
    }

    v12 = sub_24A58E8F8(a2, v11);
    if (v12)
    {
      v13 = v12;
      v14 = [v12 width];
      v15 = 1.0 / (v14 / [v13 height]);
      v33 = 0uLL;
      v32 = 0uLL;
      v31 = 0uLL;
      v16 = v15 < a4;
      v17 = a4 / v15;
      v18 = v15 / a4;
      if (v16)
      {
        v19 = v18;
      }

      else
      {
        v19 = 1.0;
      }

      if (v16)
      {
        v20 = 1.0;
      }

      else
      {
        v20 = v17;
      }

      SCNMatrix4MakeRotation(&a, 1.5708, 0.0, 0.0, 1.0);
      b.m11 = v19;
      *&b.m12 = v33;
      b.m22 = v20;
      *&b.m23 = v32;
      b.m33 = 1.0;
      *&b.m34 = v31;
      b.m44 = 1.0;
      SCNMatrix4Mult(&v28, &a, &b);
      [a3 setContentsTransform_];
      sub_24A58EA70(v13, a3);
      swift_unknownObjectRelease();
      v8[v9] = 0;
    }

    else
    {
      if (qword_27EF4E990 != -1)
      {
        swift_once();
      }

      v21 = sub_24A62E314();
      sub_24A506EB8(v21, qword_27EF5C0E8);
      v22 = v8;
      v23 = sub_24A62E2F4();
      v24 = sub_24A62EF64();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v8;
        v27 = v22;
        _os_log_impl(&dword_24A503000, v23, v24, "🧭 FMPFView%@: cannot process camera frame as it could not be converted to BGRA", v25, 0xCu);
        sub_24A58FDEC(v26);
        MEMORY[0x24C21BBE0](v26, -1, -1);
        MEMORY[0x24C21BBE0](v25, -1, -1);
      }

      v8[v9] = 0;
    }
  }
}

uint64_t sub_24A58FCFC()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A58FD34()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A58FD8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A58FDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A58FDEC(uint64_t a1)
{
  v2 = sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A58FE54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_24A58FE94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setWrapT_];
  [v1 setWrapS_];

  return [v1 setContents_];
}

uint64_t sub_24A58FEFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_24A58FF0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A58FF64()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton];
  v3 = sub_24A5D2200(0xD00000000000001BLL, 0x800000024A6405E0);
  v4 = &v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
  *v4 = v3;
  v4[1] = v5;

  v6 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];

  v7 = v6;
  v8 = sub_24A62EBE4();

  [v7 setText_];

  v9 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (!v9)
  {
LABEL_13:
    v26 = *&v0[v1];
    v125 = type metadata accessor for FMFindingViewController(0);
    v124[0] = v0;
    v27 = v0;
    v28 = v26;
    v29 = sub_24A5D2200(0xD000000000000024, 0x800000024A640600);
    v31 = v30;
    v32 = [v28 layer];
    [v32 removeAllAnimations];

    v33 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v34 = [*&v28[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v34 removeAllAnimations];

    v35 = [*&v28[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
    [v35 removeAllAnimations];

    v36 = *&v28[v33];
    sub_24A582188(v124, v122);
    v37 = v123;
    if (v123)
    {
      v38 = sub_24A50A204(v122, v123);
      v39 = *(v37 - 8);
      v40 = MEMORY[0x28223BE20](v38);
      v42 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42, v40);
      v43 = v36;
      v44 = sub_24A62F624();
      (*(v39 + 8))(v42, v37);
      sub_24A508C54(v122);
    }

    else
    {
      v45 = v36;
      v44 = 0;
    }

    [v36 addTarget:v44 action:sel_torchActionWithSender_ forControlEvents:64];

    swift_unknownObjectRelease();

    v46 = sub_24A62EBE4();
    [v28 setAccessibilityLabel_];

    sub_24A50D7EC(0, &qword_27EF50940, 0x277D75088);
    sub_24A582188(v124, v122);
    v47 = sub_24A5921B4(v29, v31, v122, sel_torchActionWithSender_);
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_24A6339F0;
    *(v48 + 32) = v47;
    v49 = v47;
    v50 = sub_24A62ED54();

    [v28 setAccessibilityCustomActions_];

    sub_24A50D6A4(v124, &unk_27EF50780, &qword_24A638470);
    return 0;
  }

  v10 = v9;
  if (![v9 hasTorch])
  {

    goto LABEL_13;
  }

  v11 = [v10 torchMode];
  v12 = *&v0[v1];
  v13 = *&v12[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named];
  v14 = *&v12[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named + 8];
  if (v11 != 1)
  {
    if (v14 && (v13 == 0xD000000000000013 ? (v52 = v14 == 0x800000024A640630) : (v52 = 0), v52 || (sub_24A62F634() & 1) != 0))
    {
    }

    else
    {
      v53 = objc_opt_self();
      v54 = v12;
      v55 = [v53 whiteColor];
      v56 = [v53 whiteColor];
      v57 = [v56 colorWithAlphaComponent_];

      sub_24A62A8A4(0xD000000000000013, 0x800000024A640630, v55, v57);
      v58 = *&v0[v1];
      v125 = type metadata accessor for FMFindingViewController(0);
      v124[0] = v0;
      v59 = v0;
      v60 = v58;
      v61 = sub_24A5D2200(0xD000000000000024, 0x800000024A640600);
      v63 = v62;
      v64 = [v60 layer];
      [v64 removeAllAnimations];

      v65 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
      v66 = [*&v60[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
      [v66 removeAllAnimations];

      v67 = [*&v60[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
      [v67 removeAllAnimations];

      v68 = *&v60[v65];
      sub_24A582188(v124, v122);
      v69 = v123;
      if (v123)
      {
        v70 = sub_24A50A204(v122, v123);
        v121 = &v120;
        v71 = *(v69 - 8);
        v72 = MEMORY[0x28223BE20](v70);
        v74 = &v120 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v71 + 16))(v74, v72);
        v75 = v68;
        v76 = sub_24A62F624();
        (*(v71 + 8))(v74, v69);
        sub_24A508C54(v122);
      }

      else
      {
        v100 = v68;
        v76 = 0;
      }

      [v68 addTarget:v76 action:sel_torchActionWithSender_ forControlEvents:64];

      swift_unknownObjectRelease();

      v101 = sub_24A62EBE4();
      [v60 setAccessibilityLabel_];

      sub_24A50D7EC(0, &qword_27EF50940, 0x277D75088);
      sub_24A582188(v124, v122);
      v102 = sub_24A5921B4(v61, v63, v122, sel_torchActionWithSender_);
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_24A6339F0;
      *(v103 + 32) = v102;
      v104 = v102;
      v105 = sub_24A62ED54();

      [v60 setAccessibilityCustomActions_];

      sub_24A50D6A4(v124, &unk_27EF50780, &qword_24A638470);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v106 = sub_24A62E314();
      sub_24A506EB8(v106, qword_27EF5C118);
      v107 = sub_24A62E2F4();
      v108 = sub_24A62EF64();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_24A503000, v107, v108, "🧭 FMFindingViewCtrl: Updated torch button (light is off)", v109, 2u);
        MEMORY[0x24C21BBE0](v109, -1, -1);
      }
    }

    return 0;
  }

  if (!v14 || (v13 == 0xD000000000000012 ? (v15 = v14 == 0x800000024A640650) : (v15 = 0), !v15 && (sub_24A62F634() & 1) == 0))
  {
    v16 = v0;
    if (*(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_findingView] + OBJC_IVAR____TtC11FMFindingUI8FMPFView_isConvergingBackdropShown) == 1)
    {
      v17 = objc_opt_self();
      v18 = v12;
      v19 = [v17 standardUserDefaults];
      [v19 fmpfGreenBackdropHue];
      v21 = v20;
      [v19 fmpfGreenBackdropSaturation];
      v23 = v22;
      [v19 fmpfGreenBackdropValue];
      v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v21 saturation:v23 brightness:v24 alpha:1.0];
    }

    else
    {
      v77 = objc_opt_self();
      v78 = v12;
      v25 = [v77 systemBlackColor];
    }

    v79 = [objc_opt_self() whiteColor];
    v80 = [v79 colorWithAlphaComponent_];

    sub_24A62A8A4(0xD000000000000012, 0x800000024A640650, v25, v80);
    v81 = *&v16[v1];
    v125 = type metadata accessor for FMFindingViewController(0);
    v124[0] = v16;
    v82 = v81;
    v83 = v16;
    v84 = sub_24A5D2200(0xD000000000000025, 0x800000024A640670);
    v86 = v85;
    v87 = [v82 layer];
    [v87 removeAllAnimations];

    v88 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v89 = [*&v82[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v89 removeAllAnimations];

    v90 = [*&v82[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
    [v90 removeAllAnimations];

    v91 = *&v82[v88];
    sub_24A582188(v124, v122);
    v92 = v123;
    if (v123)
    {
      v93 = sub_24A50A204(v122, v123);
      v121 = &v120;
      v94 = *(v92 - 8);
      v95 = MEMORY[0x28223BE20](v93);
      v97 = &v120 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v94 + 16))(v97, v95);
      v98 = v91;
      v99 = sub_24A62F624();
      (*(v94 + 8))(v97, v92);
      sub_24A508C54(v122);
    }

    else
    {
      v110 = v91;
      v99 = 0;
    }

    [v91 addTarget:v99 action:sel_torchActionWithSender_ forControlEvents:64];

    swift_unknownObjectRelease();

    v111 = sub_24A62EBE4();
    [v82 setAccessibilityLabel_];

    sub_24A50D7EC(0, &qword_27EF50940, 0x277D75088);
    sub_24A582188(v124, v122);
    v112 = sub_24A5921B4(v84, v86, v122, sel_torchActionWithSender_);
    sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_24A6339F0;
    *(v113 + 32) = v112;
    v114 = v112;
    v115 = sub_24A62ED54();

    [v82 setAccessibilityCustomActions_];

    sub_24A50D6A4(v124, &unk_27EF50780, &qword_24A638470);
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v116 = sub_24A62E314();
    sub_24A506EB8(v116, qword_27EF5C118);
    v117 = sub_24A62E2F4();
    v118 = sub_24A62EF64();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_24A503000, v117, v118, "🧭 FMFindingViewCtrl: Updated torch button (light is on)", v119, 2u);
      MEMORY[0x24C21BBE0](v119, -1, -1);
    }
  }

  return 1;
}

void sub_24A590DEC(char a1, char a2)
{
  v3 = v2;
  v6 = sub_24A62EB14();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_24A62EA94();
  MEMORY[0x28223BE20](v12);
  v13 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem;
  v14 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_showTorchButtonWorkItem];
  if (a1)
  {
    if (!v14)
    {
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a2 & 1;
      v35 = sub_24A592D80;
      v36 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_24A5A8458;
      v34 = &unk_285DA6758;
      _Block_copy(&aBlock);
      v30 = MEMORY[0x277D84F90];
      sub_24A592D8C(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      v28 = v6;
      sub_24A529464();
      sub_24A62F254();
      sub_24A62EB44();
      swift_allocObject();
      v17 = sub_24A62EB24();

      *&v2[v13] = v17;

      sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
      v18 = sub_24A62F014();
      sub_24A62EB04();
      sub_24A62EB54();
      v19 = *(v29 + 8);
      v20 = v8;
      v21 = v28;
      v19(v20, v28);
      sub_24A62EFE4();

      v19(v11, v21);
    }
  }

  else
  {
    if (v14)
    {

      sub_24A62EB34();
    }

    *&v2[v13] = 0;

    v22 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton];
    if (a2)
    {
      v23 = objc_opt_self();
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = 0;
      v35 = sub_24A592D3C;
      v36 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_24A5A8458;
      v34 = &unk_285DA6708;
      v25 = _Block_copy(&aBlock);
      v26 = v22;

      [v23 animateWithDuration:v25 animations:0.5];
      _Block_release(v25);
    }

    else
    {
      [v22 setAlpha_];
    }

    [v3 accessibilityShowViewHandler];
  }
}

uint64_t sub_24A59127C(uint64_t a1)
{
  sub_24A598DB4();
  v2 = a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_dismissedHandler;
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    v5 = *(v2 + 8);

    v4(v6);
    return sub_24A50D354(v4, v5);
  }

  return result;
}

void sub_24A5913F4(uint64_t a1)
{
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A582188(a1, v34);
  if (!v34[3])
  {
    v20 = &unk_27EF50780;
    v21 = &qword_24A638470;
    v22 = v34;
LABEL_10:
    sub_24A50D6A4(v22, v20, v21);
    goto LABEL_11;
  }

  sub_24A508FA4(&qword_27EF50950, &unk_24A637728);
  if (swift_dynamicCast())
  {
    v29 = v1;
    v7 = v31;
    ObjectType = swift_getObjectType();
    (*(*(&v7 + 1) + 8))(&v31, ObjectType, *(&v7 + 1));
    if (v32)
    {
      sub_24A508CA0(&v31, v34);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v9 = sub_24A62E314();
      sub_24A506EB8(v9, qword_27EF5C118);
      sub_24A508AE4(v34, &v31);
      v10 = sub_24A62E2F4();
      v11 = sub_24A62EF64();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v12 = 136315138;
        v13 = v32;
        v14 = v33;
        sub_24A50A204(&v31, v32);
        (*(v14 + 16))(v13, v14);
        sub_24A592D8C(&qword_27EF4F660, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v15 = sub_24A62F614();
        v17 = v16;
        (*(v4 + 8))(v6, v3);
        sub_24A508C54(&v31);
        v18 = sub_24A509BA8(v15, v17, &v30);

        *(v12 + 4) = v18;
        _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMFindingViewCtrl: User selected %s through part picker.", v12, 0xCu);
        v19 = v28;
        sub_24A508C54(v28);
        MEMORY[0x24C21BBE0](v19, -1, -1);
        MEMORY[0x24C21BBE0](v12, -1, -1);
      }

      else
      {

        sub_24A508C54(&v31);
      }

      sub_24A60FEC8(v34);

      sub_24A508C54(v34);
      return;
    }

    v20 = &unk_27EF522E0;
    v21 = qword_24A637660;
    v22 = &v31;
    goto LABEL_10;
  }

LABEL_11:
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v23 = sub_24A62E314();
  sub_24A506EB8(v23, qword_27EF5C118);
  v24 = sub_24A62E2F4();
  v25 = sub_24A62EF44();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24A503000, v24, v25, "🧭 FMFindingViewCtrl: Unknown part selected.", v26, 2u);
    MEMORY[0x24C21BBE0](v26, -1, -1);
  }
}

void sub_24A591960(char a1, char a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  if (![v4 hasTorch])
  {

LABEL_8:
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v8 = sub_24A62E314();
    sub_24A506EB8(v8, qword_27EF5C118);
    oslog = sub_24A62E2F4();
    v9 = sub_24A62EF64();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24A503000, oslog, v9, "🧭 FMFindingViewCtrl: Unable to set torch mode", v10, 2u);
      MEMORY[0x24C21BBE0](v10, -1, -1);
    }

    return;
  }

  v28[0] = 0;
  if ([v5 lockForConfiguration_])
  {
    if (a2 == 2 || (a2 & 1) == 0)
    {
      if (a1 == 2)
      {
        v17 = v28[0];
LABEL_34:
        [v5 unlockForConfiguration];
        sub_24A58FF64();

        return;
      }

      v7 = a1 & 1;
      v18 = v28[0];
    }

    else
    {
      v6 = v28[0];
      v7 = [v5 torchMode] != 1;
    }

    [v5 setTorchMode_];
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v19 = sub_24A62E314();
    sub_24A506EB8(v19, qword_27EF5C118);
    v20 = sub_24A62E2F4();
    v21 = sub_24A62EF64();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      if (v7 == 1)
      {
        v24 = 28271;
      }

      else
      {
        v24 = 6710895;
      }

      if (v7 == 1)
      {
        v25 = 0xE200000000000000;
      }

      else
      {
        v25 = 0xE300000000000000;
      }

      v26 = sub_24A509BA8(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_24A503000, v20, v21, "🧭 FMFindingViewCtrl: Did set torch mode %s", v22, 0xCu);
      sub_24A508C54(v23);
      MEMORY[0x24C21BBE0](v23, -1, -1);
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }

    sub_24A591F94(v7);
    goto LABEL_34;
  }

  v11 = v28[0];
  v12 = sub_24A62E084();

  swift_willThrow();
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v13 = sub_24A62E314();
  sub_24A506EB8(v13, qword_27EF5C118);
  v14 = sub_24A62E2F4();
  v15 = sub_24A62EF64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A503000, v14, v15, "🧭 FMFindingViewCtrl: Failed setting torch mode", v16, 2u);
    MEMORY[0x24C21BBE0](v16, -1, -1);
  }
}

void sub_24A591E28(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_torchButton);
    if (a2)
    {
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = 1;
      aBlock[4] = sub_24A592E9C;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DA67A8;
      v8 = _Block_copy(aBlock);
      v9 = v5;

      [v6 animateWithDuration:v8 animations:0.5];
      _Block_release(v8);
    }

    else
    {
      [v5 setAlpha_];
    }

    [v4 accessibilityShowViewHandler];
  }
}

uint64_t sub_24A591F94(uint64_t a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = v1;
  v5 = sub_24A62E2F4();
  v6 = sub_24A62EF64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    if (a1 == 1)
    {
      v10 = 28271;
    }

    else
    {
      v10 = 6710895;
    }

    if (a1 == 1)
    {
      v11 = 0xE200000000000000;
    }

    else
    {
      v11 = 0xE300000000000000;
    }

    v12 = v4;
    v13 = sub_24A509BA8(v10, v11, v17);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1RangingVC%@: Analytics: Torch button changed state to %s", v7, 0x16u);
    sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v8, -1, -1);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v7, -1, -1);
  }

  sub_24A60F570(v17);
  v14 = v18;
  v15 = v19;
  sub_24A50A204(v17, v18);
  (*(v15 + 80))(a1, v14, v15);
  return sub_24A508C54(v17);
}

id sub_24A5921B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_24A62EBE4();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_24A50A204(a3, a3[3]);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_24A62F624();
    (*(v9 + 8))(v12, v7);
    sub_24A508C54(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v13 selector:a4];

  swift_unknownObjectRelease();
  return v14;
}

void sub_24A59232C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton);
  v3[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_isEnabled] = a1;
  v4 = v3;
  [v4 setUserInteractionEnabled_];
  v5 = objc_opt_self();
  v6 = *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button];
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v11[4] = sub_24A5924BC;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A5A8458;
  v11[3] = &unk_285DA6640;
  v8 = _Block_copy(v11);
  v9 = v4;
  v10 = v6;

  [v5 transitionWithView:v10 duration:5242880 options:v8 animations:0 completion:0.25];
  _Block_release(v8);
}

uint64_t sub_24A592484()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5924C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5924DC()
{
  v1 = v0;
  sub_24A59232C(0);
  v2 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_isSoundPlaying;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMFindingViewCtrl: Asked to play ranging sound", v8, 2u);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    sub_24A598770();
    v9 = v1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_playSoundHandler;
    result = swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 8);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_24A519360(v10, v11);

      v10(1, 0, sub_24A592CF4, v12);
      sub_24A50D354(v10, v11);
    }
  }

  return result;
}

void sub_24A5926B4()
{
  v1 = sub_24A508FA4(&qword_27EF50948, &qword_24A63AA70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - v2;
  v4 = sub_24A62E0F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_session);
  v12 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A592BFC(v11 + v12, v10);
  v13 = *(v10 + 1);
  if (*(v13 + 16) && (v14 = sub_24A515AC8(&v10[*(v8 + 36)]), (v15 & 1) != 0))
  {
    sub_24A508AE4(*(v13 + 56) + 40 * v14, &v31);
    sub_24A508CA0(&v31, &v34);
    sub_24A592C60(v10);
    v16 = v36;
    v17 = v37;
    sub_24A50A204(&v34, v36);
    (*(v17 + 24))(&v31, v16, v17);
    v18 = *(&v31 + 1);
    v19 = v32;
    if (v33 != 1)
    {
      sub_24A55B284(v31, *(&v31 + 1), v32, v33);
      sub_24A508C54(&v34);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v20 = sub_24A62E314();
      sub_24A506EB8(v20, qword_27EF5C118);
      v21 = sub_24A62E2F4();
      v22 = sub_24A62EF44();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_16;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "FMFindingViewCtrl: Can't open messages without a friend";
      goto LABEL_15;
    }

    sub_24A508C54(&v34);
    if (v19)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_24A62F384();

      v34 = 0xD000000000000012;
      v35 = 0x800000024A6406A0;
      MEMORY[0x24C21A5D0](v18, v19);
    }

    sub_24A62E0E4();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_24A50D6A4(v3, &qword_27EF50948, &qword_24A63AA70);
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v25 = sub_24A62E314();
      sub_24A506EB8(v25, qword_27EF5C118);
      v21 = sub_24A62E2F4();
      v22 = sub_24A62EF44();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_16;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "FMFindingViewCtrl: Error opening settings. Invalid URL";
LABEL_15:
      _os_log_impl(&dword_24A503000, v21, v22, v24, v23, 2u);
      MEMORY[0x24C21BBE0](v23, -1, -1);
LABEL_16:

      return;
    }

    (*(v5 + 32))(v7, v3, v4);
    v26 = [objc_opt_self() defaultWorkspace];
    if (v26)
    {
      v27 = v26;
      v28 = sub_24A62E0B4();
      v29 = sub_24A62EB74();
      [v27 openSensitiveURL:v28 withOptions:v29];
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_24A62F444();
    __break(1u);
  }
}

uint64_t sub_24A592BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingSessionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A592C60(uint64_t a1)
{
  v2 = type metadata accessor for FMFindingSessionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A592CBC()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A592D04()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A592D48()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A592D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A592DD4()
{
  v0 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v0)
  {
    v1 = v0;
    if ([v0 hasTorch] && objc_msgSend(v1, sel_isTorchModeSupported_, 0))
    {
      v2 = 1;
      v3 = [v1 isTorchModeSupported_];

      if (v3)
      {
        return v2;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_24A592F00(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24A592F60()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24A592FAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24A5930B4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A593120(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A5931C0;
}

void sub_24A5931C0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

char *FMPrecisionConnectionManager.init(findables:connectionContext:arSession:)(uint64_t a1, char *a2, void *a3)
{
  v6 = *a2;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession) = 0;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF4E9C8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EF5C218;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_nearbyInteractionManager) = qword_27EF5C218;
  swift_beginAccess();
  v9 = *(v3 + v7);
  *(v3 + v7) = a3;
  v10 = v8;
  v11 = a3;

  LOBYTE(v26) = v6;
  v12 = sub_24A509448(a1, &v26);
  v13 = qword_27EF4E998;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_24A62E314();
  sub_24A506EB8(v15, qword_27EF5C100);
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;

    v21 = MEMORY[0x24C21A690](v20, MEMORY[0x277D837D0]);
    v23 = v22;

    v24 = sub_24A509BA8(v21, v23, &v26);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_24A503000, v16, v17, "FMPrecisionConnectionManager: initialized for items: %s", v18, 0xCu);
    sub_24A508C54(v19);
    MEMORY[0x24C21BBE0](v19, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  return v14;
}

void sub_24A5934F4()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    v5 = os_log_type_enabled(v3, v4);
    v33 = v2;
    if (v5)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      v8 = MEMORY[0x24C21A690](*(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers), MEMORY[0x277D837D0]);
      v10 = sub_24A509BA8(v8, v9, aBlock);
      v2 = v33;

      *(v6 + 4) = v10;
      _os_log_impl(&dword_24A503000, v3, v4, "FMPrecisionConnectionManager: requesting connection for items: %s", v6, 0xCu);
      sub_24A508C54(v7);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables);
    v12 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    v13 = *(v11 + 16);
    if (!v13)
    {
      break;
    }

    v32 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_nearbyInteractionManager;
    v31 = OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_connectionContext;
    v14 = v11 + 32;
    v30 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
    swift_beginAccess();
    v29[1] = v37;
    while (1)
    {
      v34 = v13;
      v15 = sub_24A508AE4(v14, v39);
      v35 = v29;
      v16 = v33;
      v17 = v32;
      v18 = *(v33 + v32);
      v19 = *(v33 + v30);
      MEMORY[0x28223BE20](v15);
      v29[-6] = v18;
      v29[-5] = v19;
      v29[-4] = v39;
      LOWORD(v29[-3]) = v20;
      v29[-2] = v16;
      v29[-1] = &off_285DA68C0;
      type metadata accessor for FMNearbyInteractionManagerSubscription(0);
      v21 = v18;
      v22 = v19;
      sub_24A62F024();

      v23 = *(v16 + v17);
      v24 = *&v23[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      sub_24A508AE4(v39, v38);
      v0 = swift_allocObject();
      sub_24A508CA0(v38, (v0 + 2));
      v0[7] = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_24A594B48;
      *(v25 + 24) = v0;
      v37[2] = sub_24A5493F0;
      v37[3] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v37[0] = sub_24A592ED8;
      v37[1] = &unk_285DA6820;
      v26 = _Block_copy(aBlock);
      v27 = v23;

      dispatch_sync(v24, v26);
      _Block_release(v26);
      sub_24A508C54(v39);

      LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

      if (v26)
      {
        break;
      }

      MEMORY[0x24C21A660](v28);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      v14 += 40;
      v13 = v34 - 1;
      if (v34 == 1)
      {
        v12 = v40;
        v2 = v33;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_11:
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions) = v12;
}

void sub_24A5939DC()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x24C21A690](*&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
      v9 = sub_24A509BA8(v7, v8, aBlock);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_24A503000, v3, v4, "FMPrecisionConnectionManager: requesting disconnection for items: %s", v5, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions];
    if (v10 >> 62)
    {
      v25 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions];
      v26 = sub_24A62F464();
      v10 = v25;
      v11 = v26;
      if (!v26)
      {
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }
    }

    if (v11 < 1)
    {
      break;
    }

    v28 = v10 & 0xC000000000000001;
    v29 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_nearbyInteractionManager;
    v12 = v10;

    v13 = v12;
    v14 = 0;
    v27 = v12;
    while (1)
    {
      v0 = v11;
      v15 = v28 ? MEMORY[0x24C21ACB0](v14, v13) : *(v13 + 8 * v14 + 32);
      v16 = v15;
      v17 = v2;
      v18 = *&v2[v29];
      v19 = *&v18[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v16;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24A55B77C;
      *(v21 + 24) = v20;
      aBlock[4] = sub_24A59502C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A592ED8;
      aBlock[3] = &unk_285DA6898;
      v22 = _Block_copy(aBlock);
      v23 = v18;
      v24 = v16;

      dispatch_sync(v19, v22);

      _Block_release(v22);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        break;
      }

      v14 = v14 + 1;
      v11 = v0;
      v2 = v17;
      v13 = v27;
      if (v0 == v14)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  __break(1u);
}

void sub_24A593D68(void *a1)
{
  v2 = v1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C118);
  v5 = sub_24A62E2F4();
  v6 = sub_24A62EF34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMPrecisionConnectionManager: Updating location for local device", v7, 2u);
    MEMORY[0x24C21BBE0](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions);
  if (v8 >> 62)
  {
    v9 = sub_24A62F464();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v8 & 0xC000000000000001;

    v10 = 0;
    v28 = v8;
    v29 = a1;
    v30 = v9;
    do
    {
      if (v31)
      {
        v11 = MEMORY[0x24C21ACB0](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = Strong;
        v16 = a1;
        v17 = sub_24A62E2F4();
        v18 = sub_24A62EF34();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412546;
          *(v19 + 4) = v15;
          *v20 = v14;
          *(v19 + 12) = 2112;
          v21 = v15;
          v22 = sub_24A608A14();
          *(v19 + 14) = v22;
          v20[1] = v22;
          _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1NIContxt%@: Updating local device location: %@", v19, 0x16u);
          sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
          swift_arrayDestroy();
          v23 = v20;
          v8 = v28;
          MEMORY[0x24C21BBE0](v23, -1, -1);
          v24 = v19;
          a1 = v29;
          MEMORY[0x24C21BBE0](v24, -1, -1);
        }

        v25 = *&v15[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niSession];
        if (v25)
        {
          v26 = [v25 findingNotifier];
          v27 = sub_24A608A14();
          [v26 notifyUpdatedLocationForLocalDevice_];

          v15 = v26;
          v12 = v27;
        }

        v9 = v30;
      }

      ++v10;
    }

    while (v9 != v10);
  }
}

void sub_24A5940C8(void *a1)
{
  v2 = v1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C118);
  v5 = sub_24A62E2F4();
  v6 = sub_24A62EF34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMPrecisionConnectionManager: Updating heading for local device", v7, 2u);
    MEMORY[0x24C21BBE0](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions);
  if (v8 >> 62)
  {
    v9 = sub_24A62F464();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C21ACB0](i, v8);
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_24A5613AC(a1);
      }
    }
  }
}

void sub_24A59429C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C118);
  sub_24A508AE4(a1, v35);
  v11 = sub_24A62E2F4();
  v12 = sub_24A62EF34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    v33 = v3;
    v34 = v14;
    v15 = v36;
    v16 = v37;
    sub_24A50A204(v35, v36);
    v17 = *(v16 + 16);
    v31 = v12;
    v17(v15, v16);
    sub_24A594C30();
    v18 = sub_24A62F614();
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    sub_24A508C54(v35);
    v21 = sub_24A509BA8(v18, v20, &v34);
    v3 = v33;

    *(v13 + 4) = v21;
    _os_log_impl(&dword_24A503000, v11, v31, "🧭 FMPrecisionConnectionManager: Updating location for findable: %s", v13, 0xCu);
    v22 = v32;
    sub_24A508C54(v32);
    MEMORY[0x24C21BBE0](v22, -1, -1);
    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  else
  {

    sub_24A508C54(v35);
  }

  v23 = *(v3 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_subscriptions);
  if (v23 >> 62)
  {
    v24 = sub_24A62F464();
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      return;
    }
  }

  if (v24 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v24; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C21ACB0](i, v23);
      }

      else
      {
        v26 = *(v23 + 8 * i + 32);
      }

      v27 = v26;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v29 = Strong;
        sub_24A561788(a1, a2);
      }
    }
  }
}

uint64_t sub_24A5945D0()
{

  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;

  return sub_24A52358C(v1);
}

id FMPrecisionConnectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPrecisionConnectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A5946D0(unsigned __int8 a1)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    *v6 = 136315138;
    v10 = 0xE500000000000000;
    v11 = 0x7964616572;
    v12 = 0xE500000000000000;
    v13 = 0x726F727265;
    if (a1 != 3)
    {
      v13 = 0x666F206574617473;
      v12 = 0xE900000000000066;
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a1)
    {
      v9 = 0x6461657220746F6ELL;
      v8 = 0xE900000000000079;
    }

    if (a1 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_24A509BA8(v14, v15, v23);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_24A503000, v4, v5, "FMPrecisionConnectionManager: entered state: %s", v6, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  if (a1)
  {
    v17 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v1, a1 == 2, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_24A62E2F4();
    v20 = sub_24A62EF64();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A503000, oslog, v20, "FMPrecisionConnectionManager: ignoring unknown state, waiting for a decision to be made before forwarding.", v21, 2u);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }
  }
}

uint64_t sub_24A5949CC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, 0, a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A594A68(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, (a1 & 1) == 0, 0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A594B08()
{
  sub_24A508C54((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A594B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A594B7C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A594BBC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_24A594C30()
{
  result = qword_27EF4F660;
  if (!qword_27EF4F660)
  {
    sub_24A62E214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F660);
  }

  return result;
}

id sub_24A594CAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24A594D18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A594D74(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC11FMFindingUI28FMPrecisionConnectionManager_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

__int16 *sub_24A595034(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDotNode;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for FMPFSKBTRangeDotNode()) init];
  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_findingType] = v3;
  v15 = v3;
  v5 = objc_allocWithZone(type metadata accessor for FMPFSKBTLevelsNode());
  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_levelRingsNode] = sub_24A61D674(&v15);
  v6 = type metadata accessor for FMPFSKBTRangeDiskNode();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_sizeSpring;
  *&v7[v8] = sub_24A5B1B2C(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v9 = OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring;
  *&v7[v9] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v7[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_findingType] = v3;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  sub_24A5D8B2C();

  *&v2[OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode] = v10;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for FMPFSKBTRangingNode();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_24A59522C();

  return v11;
}