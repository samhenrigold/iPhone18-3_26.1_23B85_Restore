double sub_24A5D3030()
{
  PRItemFoundThresholdEnter();
  if (qword_27EF4EA90 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  result = v0 / *&qword_27EF5C768;
  qword_27EF5C788 = *&result;
  return result;
}

double sub_24A5D309C()
{
  if (qword_27EF4EAA0 != -1)
  {
    swift_once();
  }

  result = *&qword_27EF5C778 * 1.1;
  *&qword_27EF5C790 = *&qword_27EF5C778 * 1.1;
  return result;
}

void sub_24A5D30FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

char *sub_24A5D3188(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v9 = v8;
  v76 = a6;
  v79 = a5;
  v77 = a4;
  v73 = sub_24A62F004();
  v15 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A62EFD4();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_24A62EAD4();
  MEMORY[0x28223BE20](v19 - 8);
  v74 = *a1;
  v75 = *a2;
  v20 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_style];
  __asm { FMOV            V0.2D, #0.5 }

  *v20 = _Q0;
  *(v20 + 2) = 0;
  v78 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_ringView;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_ringView] = 0;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode] = 0;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode] = 0;
  v26 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_previousHeading];
  *v26 = 0;
  v26[8] = 1;
  v27 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager;
  *&v8[v27] = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_dotCountObservation] = 0;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation] = 0;
  v28 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime];
  *v28 = 0;
  v28[8] = 1;
  v29 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  sub_24A62EAC4();
  sub_24A62EFC4();
  (*(v15 + 104))(v17, *MEMORY[0x277D85260], v73);
  *&v8[v29] = sub_24A62F044();
  v30 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 1;
  v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches] = 0;
  v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity] = 1;
  v32 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_presentedOpacity];
  *v33 = 0;
  v33[8] = 1;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isInteractivelyDebugging] = 0;
  v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_experienceType] = v74;
  *&v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_findingType] = v75;
  v34 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config];
  v35 = *(a3 + 144);
  *(v34 + 8) = *(a3 + 128);
  *(v34 + 9) = v35;
  *(v34 + 10) = *(a3 + 160);
  v34[176] = *(a3 + 176);
  v36 = *(a3 + 80);
  *(v34 + 4) = *(a3 + 64);
  *(v34 + 5) = v36;
  v37 = *(a3 + 112);
  *(v34 + 6) = *(a3 + 96);
  *(v34 + 7) = v37;
  v38 = *(a3 + 16);
  *v34 = *a3;
  *(v34 + 1) = v38;
  v39 = *(a3 + 48);
  *(v34 + 2) = *(a3 + 32);
  *(v34 + 3) = v39;
  v40 = &v8[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_sceneSize];
  *v40 = a7;
  v40[1] = a8;
  v41 = *&v8[v78];
  v42 = v77;
  *&v9[v78] = v77;
  v78 = a3;
  sub_24A5D7C00(a3, aBlock);
  v77 = v42;

  *&v9[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring] = sub_24A5B1B3C(0, 1, 0x3F847AE147AE147BLL, 0, 0, 1);
  v43 = type metadata accessor for FMPFSKScene();
  v80.receiver = v9;
  v80.super_class = v43;
  v44 = objc_msgSendSuper2(&v80, sel_initWithSize_, a7, a8);
  *&v44[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate + 8] = v76;
  swift_unknownObjectWeakAssign();
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 clearColor];
  [v46 setBackgroundColor_];

  [v46 setAnchorPoint_];
  [v46 setScaleMode_];
  sub_24A5D44FC();
  v48 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager;
  [*&v46[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager] setDeviceMotionUpdateInterval_];
  v49 = *&v46[v48];
  v50 = objc_opt_self();
  v51 = v49;
  v52 = [v50 mainQueue];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A5D7DB4;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5D30FC;
  aBlock[3] = &unk_285DA9190;
  v54 = _Block_copy(aBlock);

  [v51 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v52 withHandler:v54];
  _Block_release(v54);

  v55 = objc_opt_self();
  v56 = [v55 standardUserDefaults];
  aBlock[0] = v56;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = sub_24A62E094();

  v58 = *&v46[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_dotCountObservation];
  *&v46[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_dotCountObservation] = v57;

  v59 = [v55 standardUserDefaults];
  aBlock[0] = v59;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = sub_24A62E094();

  v61 = *&v46[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation];
  *&v46[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation] = v60;

  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v62 = sub_24A62E314();
  sub_24A506EB8(v62, qword_27EF5C0E8);
  v63 = sub_24A62E2F4();
  v64 = sub_24A62EF64();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v65 = 138412546;
    *(v65 + 4) = v46;
    *v66 = v46;
    *(v65 + 12) = 2080;
    v68 = v46;
    v69 = sub_24A62F0E4();
    v71 = sub_24A509BA8(v69, v70, aBlock);

    *(v65 + 14) = v71;
    _os_log_impl(&dword_24A503000, v63, v64, "🧭 FMPFSKScene%@: init with size={%s}", v65, 0x16u);
    sub_24A58FDEC(v66);
    MEMORY[0x24C21BBE0](v66, -1, -1);
    sub_24A508C54(v67);
    MEMORY[0x24C21BBE0](v67, -1, -1);
    MEMORY[0x24C21BBE0](v65, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_24A5D7E8C(v78);

  return v46;
}

void sub_24A5D3AE4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24A5D5AA8(a1);
  }
}

double sub_24A5D3B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24A62EAD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EA94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_24A62EA84();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = sub_24A5D7F24;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA9230;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    sub_24A62EAB4();
    MEMORY[0x24C21A950](0, v6, v10, v15);
    _Block_release(v15);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_24A5D3D94(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (!v1)
  {
    return;
  }

  v2 = v1[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType];
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v5 = v1;
      v4 = v1;
      sub_24A5E44D4(0, 1);
      goto LABEL_8;
    }

    if (v1[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType])
    {
      return;
    }
  }

  v5 = v1;
  v3 = v1;
  sub_24A5E0EB0(0, 1);
LABEL_8:
}

double sub_24A5D3E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24A62EAD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EA94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [objc_opt_self() standardUserDefaults];
    v15 = [v14 fmpfDebugMode];

    sub_24A62EA84();
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    aBlock[4] = sub_24A5D7F18;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA91E0;
    v17 = _Block_copy(aBlock);
    v18 = v13;
    sub_24A62EAB4();
    MEMORY[0x24C21A950](0, v6, v10, v17);
    _Block_release(v17);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_24A5D40D4(uint64_t a1, char a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode);
  if (v4)
  {
    [v4 setHidden_];
  }

  v5 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v5)
  {
    v6 = v5;
    sub_24A5FBFB8(a2 & 1);
  }
}

id sub_24A5D4198()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation];
  if (v2)
  {
    v3 = v2;
    sub_24A62E064();
  }

  [*&v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager] stopDeviceMotionUpdates];
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v4 = sub_24A62E314();
  sub_24A506EB8(v4, qword_27EF5C0E8);
  v5 = v1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v5 description];
    v11 = sub_24A62EC14();
    v13 = v12;

    v14 = sub_24A509BA8(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMPFSKScene%s: deinit", v8, 0xCu);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  v15 = type metadata accessor for FMPFSKScene();
  v18.receiver = v5;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

void sub_24A5D44FC()
{
  v1 = sub_24A62EAD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EA94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_sceneSize];
  v10 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_sceneSize + 8];
  v11 = *&v0[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_ringView];
  v12 = v11;
  sub_24A62EA84();
  v13 = swift_allocObject();
  v13[2] = v0;
  v13[3] = v9;
  v13[4] = v10;
  v13[5] = v11;
  aBlock[4] = sub_24A5D82CC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA9690;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  v16 = v0;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v4, v8, v14);
  _Block_release(v14);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

void sub_24A5D4764(char *a1, void *a2, double a3, double a4)
{
  v7 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode;
  [*&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode] removeFromParent];
  v8 = *&a1[v7];
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 standardUserDefaults];
    v12 = [v11 fmpfDebugMode];

    [v10 setHidden_];
  }

  v117 = type metadata accessor for FMPFSKNode();
  v13 = [objc_allocWithZone(v117) init];
  [v13 setZPosition_];
  [a1 addChild_];
  v14 = *&a1[v7];
  *&a1[v7] = v13;

  [a1 size];
  v16 = v15 * -0.5;
  [a1 size];
  v18 = v17 * 0.5;
  v19 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v19 moveToPoint_];
  [v19 addLineToPoint_];
  [v19 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v125 = v19;
  v20 = [v19 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v23 = v22;
  [v23 setPosition_];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 whiteColor];
  [v25 setStrokeColor_];

  [v25 setAlpha_];
  v124 = v25;
  [v13 addChild_];
  [a1 size];
  v28 = v27 * 0.5;
  [a1 size];
  v30 = v29 * -0.5;
  v31 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v31 moveToPoint_];
  [v31 addLineToPoint_];
  [v31 closePath];
  v123 = v31;
  v32 = [v31 CGPath];
  v33 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v34 = v33;
  v35 = [v24 whiteColor];
  [v34 setStrokeColor_];

  [v34 setAlpha_];
  v122 = v34;
  [v13 addChild_];
  sub_24A50D7EC(0, &unk_27EF51830, 0x277D75208);
  [a1 size];
  v37 = v36;
  [a1 size];
  v121 = sub_24A578A28(0.0, 0.0, v37, v38);
  v39 = [v121 CGPath];
  v40 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v41 = v40;
  v42 = [v24 whiteColor];
  [v41 setStrokeColor_];

  [v41 setAlpha_];
  v126 = v13;
  v113 = v41;
  [v13 addChild_];
  v120 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode;
  v43 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode];
  if (v43)
  {
    v44 = *&v43[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor];
    v45 = v43[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor + 8];
    [v43 removeFromParent];
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v44;
    }

    v116 = v46;
  }

  else
  {
    v116 = 0;
  }

  v47 = a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_experienceType];
  v114 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_findingType];
  v48 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 144];
  v151 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 128];
  v152 = v48;
  v153 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 160];
  v154 = a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 176];
  v49 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 80];
  v147 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 64];
  v148 = v49;
  v50 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 112];
  v149 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 96];
  v150 = v50;
  v51 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 16];
  v143 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config];
  v144 = v51;
  v52 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 48];
  v145 = *&a1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_config + 32];
  v146 = v52;
  v119 = type metadata accessor for FMPFSKPatternNode();
  v53 = objc_allocWithZone(v119);
  v54 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_ringView] = 0;
  v55 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode;
  v56 = objc_allocWithZone(v117);
  sub_24A5D7C00(&v143, &v130);
  v115 = a2;
  *&v53[v55] = [v56 init];
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode] = 0;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode] = 0;
  v57 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode;
  *&v53[v57] = [objc_allocWithZone(MEMORY[0x277CDCF58]) init];
  v58 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode;
  *&v53[v58] = [objc_allocWithZone(v117) init];
  v59 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode;
  *&v53[v59] = [objc_allocWithZone(v117) init];
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes] = MEMORY[0x277D84F90];
  v60 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode;
  *&v53[v60] = [objc_allocWithZone(v117) init];
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode] = 0;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode] = 0;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNodeSnappedUnderPointeeNode] = 0;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_extraDiskRadiusWhenSnapping] = 0;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_forceHideNoonNode] = 0;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting] = 0;
  v61 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_track];
  *v61 = 0;
  v61[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackDidChange] = 0;
  v62 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop];
  *v62 = 0;
  *(v62 + 1) = 0;
  v62[16] = 1;
  v63 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom];
  *v63 = 0;
  *(v63 + 1) = 0;
  v63[16] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_needsRecomputeVisibleFragments] = 0;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_inFOV] = 2;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformedToExplodedFactor] = 1;
  v64 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor];
  *v64 = 0;
  v64[8] = 1;
  v65 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor];
  *v65 = 0;
  v65[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyConformationFactor] = 1;
  v66 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor];
  *v66 = 0;
  v66[8] = 1;
  v67 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor];
  *v67 = 0;
  v67[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyBearing] = 1;
  v68 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_bearing];
  *v68 = 0;
  v68[8] = 1;
  v69 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedEnergeticBearing];
  *v69 = 0;
  v69[8] = 1;
  v70 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLethargicBearing];
  *v70 = 0;
  v70[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldApplyCenterFactor] = 1;
  v71 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactor];
  *v71 = 0;
  v71[8] = 1;
  v72 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedCenterFactor];
  *v72 = 0;
  v72[8] = 1;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_derivativeCenterFactor] = 0;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLookout] = 1;
  v73 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookout];
  *v73 = 0;
  v73[8] = 1;
  v74 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLookout];
  *v74 = 0;
  v74[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_shouldLabelsOpacity] = 1;
  v75 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacity];
  *v75 = 0;
  v75[8] = 1;
  v76 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedLabelsOpacity];
  *v76 = 0;
  v76[8] = 1;
  v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType] = v47;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_findingType] = v114;
  v118 = v47;
  if (v47 == 1)
  {
    if (qword_27EF4EA28 != -1)
    {
      swift_once();
    }

    v77 = &xmmword_27EF5C488;
  }

  else
  {
    if (qword_27EF4EA20 != -1)
    {
      swift_once();
    }

    v77 = &xmmword_27EF5C3B8;
  }

  v78 = v77[11];
  v140 = v77[10];
  v141 = v78;
  v142 = v77[12];
  v79 = v77[7];
  v136 = v77[6];
  v137 = v79;
  v80 = v77[9];
  v138 = v77[8];
  v139 = v80;
  v81 = v77[3];
  v132 = v77[2];
  v133 = v81;
  v82 = v77[5];
  v134 = v77[4];
  v135 = v82;
  v83 = v77[1];
  v130 = *v77;
  v131 = v83;
  v84 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style];
  *v84 = v130;
  *(v84 + 4) = v134;
  *(v84 + 3) = v133;
  *(v84 + 2) = v132;
  *(v84 + 1) = v131;
  *(v84 + 8) = v138;
  *(v84 + 7) = v137;
  *(v84 + 6) = v136;
  *(v84 + 5) = v135;
  *(v84 + 11) = v141;
  *(v84 + 10) = v140;
  *(v84 + 9) = v139;
  v85 = v143;
  *(v84 + 12) = v142;
  v86 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config];
  v87 = v144;
  v88 = v146;
  *(v86 + 2) = v145;
  *(v86 + 3) = v88;
  *v86 = v85;
  *(v86 + 1) = v87;
  v89 = v147;
  v90 = v148;
  v91 = v150;
  *(v86 + 6) = v149;
  *(v86 + 7) = v91;
  *(v86 + 4) = v89;
  *(v86 + 5) = v90;
  v92 = v151;
  v93 = v152;
  v94 = v153;
  v86[176] = v154;
  *(v86 + 9) = v93;
  *(v86 + 10) = v94;
  *(v86 + 8) = v92;
  v95 = objc_opt_self();
  sub_24A5D7C00(&v143, v129);

  v96 = sub_24A62EBE4();
  v97 = MGGetSInt32Answer();

  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pixelsPerInch] = v97;
  v98 = &v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize];
  *v98 = a3;
  v98[1] = a4;
  v99 = *&v53[v54];
  *&v53[v54] = a2;
  v100 = v115;

  if (qword_27EF4EA08 != -1)
  {
    swift_once();
  }

  v101 = qword_27EF5C228;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonDotColor] = qword_27EF5C228;
  v102 = qword_27EF5C230;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeDotColor] = qword_27EF5C230;
  v103 = 1.0;
  if (v118 == 1)
  {
    v103 = 0.5;
  }

  v104 = v103 * *v98;
  v105 = v103 * v98[1];
  if (v105 >= v104)
  {
    v105 = v104;
  }

  v106 = v105 * 0.5;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_explodedDiskRadius] = *(v84 + 6) * v106;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius] = v106 * *(v84 + 8);
  *v64 = 0;
  v64[8] = 0;
  *v66 = v116;
  v66[8] = 0;
  v107 = *(v84 + 22);
  v108 = v101;
  v109 = v102;
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactorSpring] = sub_24A5B1B3C(v116, 0, 0x3F50624DD2F1A9FCLL, 0, v107, 0);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, *(v84 + 22), 0);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_energeticAngleSpring] = sub_24A5B1B3C(0, 0, 0x3F69BC65B68B71C3, 0, 0, 1);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lethargicAngleSpring] = sub_24A5B1F80(0, 0, 0x3F69BC65B68B71C3, 0);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_centerFactorSpring] = sub_24A5B1B3C(0, 1, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_lookoutSpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackSpring] = sub_24A5B1F80(0x3FE0000000000000, 0, 0x3F1A36E2EB1C432DLL, 0);
  *&v53[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsOpacitySpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v128.receiver = v53;
  v128.super_class = v119;
  v110 = objc_msgSendSuper2(&v128, sel_init);
  [v110 addChild_];

  sub_24A5D7E8C(&v143);
  v111 = v110;
  [v111 setPosition_];
  [v111 setAlpha_];

  *&v111[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_delegate + 8] = &off_285DA9F48;
  swift_unknownObjectWeakAssign();
  [a1 addChild_];

  v112 = *&a1[v120];
  *&a1[v120] = v111;
}

void sub_24A5D5650(double a1)
{
  v2 = &v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime];
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime];
  if (v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime + 8])
  {
    v3 = a1;
  }

  v4 = a1 - v3;
  *v2 = a1;
  *(v2 + 8) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v6 = objc_opt_self();
  v7 = v1;
  if ([v6 isMainThread])
  {
    v9 = *&v7[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
    v10 = swift_allocObject();
    *(v10 + 16) = sub_24A5D82DC;
    *(v10 + 24) = v5;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_24A5493F0;
    *(v11 + 24) = v10;
    v14[4] = sub_24A517E48;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_24A592ED8;
    v14[3] = &unk_285DA9730;
    v12 = _Block_copy(v14);

    dispatch_sync(v9, v12);

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_24A5D5878(v7, v8, v4);
  }
}

uint64_t sub_24A5D5878(uint64_t a1, uint64_t a2, double a3)
{
  v5 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode;
  v6 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v6)
  {
    v7 = v6;
    sub_24A6045B0(*&a3, 0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_24A59AE5C(a3);
    result = swift_unknownObjectRelease();
  }

  if ((*(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity + 8) & 1) != 0 || *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity) >= 0.5)
  {
    *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity) = 1;
LABEL_11:
    v11 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring;
    v12 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring);
    result = sub_24A5B19C4();
    if ((result & 1) == 0)
    {
      sub_24A55C858(a3);
      *(v12 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
      v13 = *(a1 + v11);
      v14 = (v13 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v15 = *v14 + *(v13 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (vabdd_f64(v14[35] + *(v13 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v15) <= *(v13 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
      {
        v15 = v14[35] + *(v13 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
      }

      v16 = a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_presentedOpacity;
      *v16 = v15;
      *(v16 + 8) = 0;
      result = *(a1 + v5);
      if (result)
      {
        return [result setAlpha_];
      }
    }

    return result;
  }

  v9 = *(a1 + v5);
  if (!v9 || (v10 = v9 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformationFactor, (*(v10 + 8) & 1) != 0))
  {
    *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity) = 0;
    return result;
  }

  v17 = *v10 > 0.0;
  *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity) = *v10 <= 0.0;
  if (!v17)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_24A5D5AA8(void *a1)
{
  v3 = sub_24A62EAD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EA94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_experienceType] != 2 || !UIAccessibilityIsReduceMotionEnabled()) && a1)
  {
    v11 = a1;
    [v11 heading];
    v13 = v12;
    v14 = &v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_previousHeading];
    if (v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_previousHeading + 8])
    {
    }

    else
    {
      v15 = v12 - *v14;
      v16 = v15 + -360.0;
      if (v15 <= 180.0)
      {
        v16 = v13 - *v14;
      }

      if (v15 >= -180.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15 + 360.0;
      }

      v21[1] = *&v1[OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue];
      sub_24A62EA84();
      v18 = swift_allocObject();
      *(v18 + 16) = v1;
      *(v18 + 24) = v17;
      aBlock[4] = sub_24A5D8280;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A5A8458;
      aBlock[3] = &unk_285DA9640;
      v19 = _Block_copy(aBlock);
      v20 = v1;
      sub_24A62EAB4();
      MEMORY[0x24C21A950](0, v6, v10, v19);

      _Block_release(v19);
      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
    }

    *v14 = v13;
    *(v14 + 8) = 0;
  }
}

void sub_24A5D5D94(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v5 = *&v2[v4];
    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
    {
      v18 = v2;

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C21ACB0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v5 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v2 = *&v10[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring];
        v13 = &v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
        swift_beginAccess();
        v14 = &v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
        v15 = v13[35] + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40];
        v16 = v15 + a2;
        if (v15 == 1.79769313e308)
        {
          sub_24A55C6B4(v15 + a2);
          v17 = v2;

          v17[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
        }

        else
        {
          v8 = v2;
        }

        v9 = v16 - v14[5];
        v13[35] = v9;
        v13[30] = v9;
        v13[31] = 0.0;

        ++v7;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_15:

    if (*&v18[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode])
    {
      sub_24A51F940(a2);
    }
  }
}

void sub_24A5D602C(double a1, double a2)
{
  [v2 size];
  if (v6 != a1 || v5 != a2)
  {
    if (qword_27EF4E990 != -1)
    {
      swift_once();
    }

    v8 = sub_24A62E314();
    sub_24A506EB8(v8, qword_27EF5C0E8);
    v9 = v2;
    v10 = sub_24A62E2F4();
    v11 = sub_24A62EF64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2080;
      v15 = v9;
      v16 = sub_24A62F0E4();
      v18 = sub_24A509BA8(v16, v17, &v20);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMPFSKScene%@: set size={%s}", v12, 0x16u);
      sub_24A58FDEC(v13);
      MEMORY[0x24C21BBE0](v13, -1, -1);
      sub_24A508C54(v14);
      MEMORY[0x24C21BBE0](v14, -1, -1);
      MEMORY[0x24C21BBE0](v12, -1, -1);
    }

    v19 = type metadata accessor for FMPFSKScene();
    v21.receiver = v9;
    v21.super_class = v19;
    objc_msgSendSuper2(&v21, sel_setSize_, a1, a2);
    sub_24A5D44FC();
  }
}

double sub_24A5D6218(void *a1, char a2)
{
  v5 = sub_24A62EAD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62EA94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62EA84();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  *(v13 + 32) = v2;
  aBlock[4] = sub_24A5D81C4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA95F0;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = v2;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v8, v12, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);

  return result;
}

double sub_24A5D6450(char a1, uint64_t a2, int a3)
{
  v19 = a3;
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24A62EA94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24A62EA84();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = v19 & 1;
  aBlock[4] = sub_24A5D8170;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA95A0;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v9, v13, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);

  return result;
}

void sub_24A5D6698(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v8 = v4;
    sub_24A5FC2BC(a2 & 1, a3, a4 & 1);
  }
}

void sub_24A5D6740(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v5 = &v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor];
    *v5 = a3;
    *(v5 + 8) = 0;
    if ((a2 & 1) != 0 && (v6 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring], v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
    {
      v18 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v18 = a3;
      *(v18 + 8) = 0;
      sub_24A5B18FC();
    }

    else
    {
      v8 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactorSpring];
      sub_24A55C6B4(a3);
      *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      v9 = &v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_presentedConformedToExplodedFactor];
      *v9 = a3;
      *(v9 + 8) = 0;
      v10 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
      swift_beginAccess();
      v11 = *&v3[v10];
      if (v11 >> 62)
      {
        goto LABEL_20;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v3 = v3;

      if (v12)
      {
        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x24C21ACB0](v13, v11);
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_15:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              v12 = sub_24A62F464();
              goto LABEL_6;
            }

            v14 = *(v11 + 8 * v13 + 32);
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_15;
            }
          }

          v16 = *(v5 + 8);
          v17 = &v14[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor];
          *v17 = *v5;
          v17[8] = v16;

          ++v13;
        }

        while (v15 != v12);
      }
    }
  }
}

void sub_24A5D69AC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v9 = v4;
    sub_24A5FC854(a2, a3 & 1, a4 & 1, v8);
  }
}

void sub_24A5D6A54(uint64_t a1, char a2, void (*a3)(void, double), double a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v8 = v4;
    a3(a2 & 1, a4);
  }
}

double sub_24A5D6AD4(char a1, char a2)
{
  v5 = sub_24A62EAD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A62EA94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62EA84();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  *(v13 + 25) = a2;
  aBlock[4] = sub_24A5D8088;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA9460;
  v14 = _Block_copy(aBlock);
  v15 = v2;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v8, v12, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);

  return result;
}

void sub_24A5D6D0C(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode];
    if (v4)
    {
      v8 = v3;
      v7 = v4;
      sub_24A51EF90(a2 & 1, a3 & 1);
    }
  }
}

double sub_24A5D6DB0()
{
  v1 = sub_24A62EAD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EA94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62EA84();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_24A5D8048;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA9410;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v4, v8, v10);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  return result;
}

void sub_24A5D6FD8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode];
    if (v2)
    {
      v4 = v1;
      v3 = v2;
      sub_24A608578();
    }
  }
}

double sub_24A5D70A0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v21 = a2;
  v22 = a3;
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A62EA94();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62EA84();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = a1;
  *(v16 + 32) = v21 & 1;
  *(v16 + 33) = v22;
  aBlock[4] = v23;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = v24;
  v17 = _Block_copy(aBlock);
  v18 = v6;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v11, v15, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);

  return result;
}

void sub_24A5D72D8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode];
    if (v5)
    {
      v10 = v4;
      v9 = v5;
      sub_24A51FB30(a2, a3 & 1, a4 & 1);
    }
  }
}

void sub_24A5D73AC(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v9 = v3;
      v7 = v4;
      v8 = a2 & 1;
      if (a3 <= 0.0)
      {
        sub_24A61E440(v8);
      }

      else
      {
        sub_24A61DF70(v8);
      }

      sub_24A608408(a2 & 1, a3);
    }
  }
}

void sub_24A5D74C0(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v7 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode];
      v11 = v3;
      v8 = v4;
      sub_24A61E90C(a2 & 1, a3);
      v9 = *(*(v7 + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode) + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_sizeSpring);
      if (a2)
      {
        v10 = v9 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
        *v10 = a3;
        *(v10 + 8) = 0;
        sub_24A5B18FC();
      }

      else
      {
        sub_24A55C6B4(a3);
        *(v9 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        sub_24A5D8CD4();
      }
    }
  }
}

void sub_24A5D7608(char a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v19 = a3;
  v20 = a4;
  v8 = sub_24A62EAD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A62EA94();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62EA84();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = a5;
  *(v16 + 32) = a1;
  aBlock[4] = v19;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);
  v18 = v5;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v11, v15, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

void sub_24A5D783C(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode];
    if (v4)
    {
      v5 = *(*(*&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] + OBJC_IVAR____TtC11FMFindingUI19FMPFSKBTRangingNode_rangeDiskNode) + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring);
      if (a2)
      {
        v6 = v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
        *v6 = a3;
        *(v6 + 8) = 0;
        sub_24A5B18FC();
      }

      else
      {
        sub_24A55C6B4(a3);
        *(v5 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
        v8 = v3;
        v7 = v4;
        sub_24A5D8CD4();
      }
    }
  }
}

double sub_24A5D7928(char a1)
{
  v3 = sub_24A62EAD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EA94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A62EA84();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_24A5D7F2C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA9280;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  sub_24A62EAB4();
  MEMORY[0x24C21A950](0, v6, v10, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FMPFSKSceneStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_24A5D7C5C(char a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring), v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v11 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v11 = a2;
    *(v11 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacitySpring);
    sub_24A55C6B4(a2);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_presentedOpacity;
    *v9 = a2;
    *(v9 + 8) = 0;
    v10 = *(v3 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
    if (v10)
    {
      [v10 setAlpha_];
    }
  }
}

uint64_t sub_24A5D7D7C()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A5D7DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_24A5D7DE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fmpfArrowDotCount];
  *a2 = result;
  return result;
}

id sub_24A5D7E3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 fmpfDebugMode];
  *a2 = result;
  return result;
}

uint64_t sub_24A5D7EE0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void sub_24A5D7F2C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode);
  if (v1)
  {
    *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_inFOV) = *(v0 + 24);
  }
}

uint64_t sub_24A5D7F58()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24A5D7FC0()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_24A5D8010()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5D8050()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_24A5D8138()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24A5D8184()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_24A5D81C4()
{
  v1 = *(v0 + 24);
  v2 = sel_presentScene_;
  if (*(v0 + 16) == 1)
  {
    [*(v0 + 24) presentScene_];
    v2 = sel_setAsynchronous_;
    v3 = v1;
    v4 = 1;
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = 0;
  }

  return [v3 v2];
}

uint64_t sub_24A5D8248()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5D828C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A5D82E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A5D8330()
{
  v1 = v0;
  v2 = sub_24A62F004();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EFD4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24A62EAD4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_style;
  __asm { FMOV            V0.2D, #0.5 }

  *v8 = _Q0;
  *(v8 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_ringView) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_axisesNode) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_patternNode) = 0;
  v14 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_previousHeading;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_motionManager;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_dotCountObservation) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_debugModeObservation) = 0;
  v16 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_lastRenderTime;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  sub_24A62EAC4();
  sub_24A62EFC4();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v2);
  *(v1 + v17) = sub_24A62F044();
  v18 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialBearing;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_initialTouchDownLocation;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_usingDebuggingTouches) = 0;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_shouldApplyOpacity) = 1;
  v20 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_opacity;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_presentedOpacity;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_altDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11FMFindingUI11FMPFSKScene_isInteractivelyDebugging) = 0;
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5D8788()
{
  v1 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A52934C(v0 + v4, v3);
  v5 = *v3;
  v6 = (v5 >> 13) & 3;
  if (v6 && (v6 == 1 || (v5 & 0x80000000) == 0))
  {
    sub_24A5D8A0C(v3);
    return 0;
  }

  if (*(v3 + *(v1 + 44)))
  {
    sub_24A5D8A0C(v3);
    return 8;
  }

  v8 = v3 + *(v1 + 32);
  v9 = *(v8 + 5);
  v21 = *(v8 + 4);
  *v22 = v9;
  *&v22[13] = *(v8 + 93);
  v10 = *(v8 + 1);
  v17 = *v8;
  v18 = v10;
  v11 = *(v8 + 3);
  v19 = *(v8 + 2);
  v20 = v11;
  sub_24A508CE4(&v17, v16);
  sub_24A5D8A0C(v3);
  if ((*&v22[16] & 0xFC000000 | 0x2000000) == 0x6000000 || (*&v22[16] & 0xFF0000) != 0x40000)
  {
    sub_24A517ABC(&v17);
    return 1;
  }

  if (v18 == 1)
  {
    return 1;
  }

  v12 = BYTE8(v19);
  v13 = BYTE8(v20);
  v14 = BYTE9(v20);
  sub_24A517ABC(&v17);
  if (v12)
  {
    if (v13)
    {
      if ((v14 & 1) == 0)
      {
        return 4;
      }

      return 8;
    }

    if (v14)
    {
      return 8;
    }

    return 2;
  }

  else if (v14)
  {
    return 8;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_24A5D8A0C(uint64_t a1)
{
  v2 = type metadata accessor for FMFindingViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24A5D8B2C()
{
  v11.origin.x = -320.0;
  v11.size.width = 640.0;
  v11.origin.y = -320.0;
  v11.size.height = 640.0;
  v1 = CGPathCreateWithEllipseInRect(v11, 0);
  [v0 setPath_];

  [v0 setLineWidth_];
  v2 = objc_opt_self();
  v3 = [v2 systemBlueColor];
  v4 = objc_opt_self();
  v5 = [v4 traitCollectionWithUserInterfaceStyle_];
  v6 = [v3 resolvedColorWithTraitCollection_];

  [v0 setFillColor_];
  v7 = [v2 systemBlueColor];
  v8 = [v4 traitCollectionWithUserInterfaceStyle_];
  v9 = [v7 resolvedColorWithTraitCollection_];

  [v0 setStrokeColor_];
}

id sub_24A5D8CD4()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring];
  v2 = (v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v3 = *v2 + *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  if (vabdd_f64(v2[35] + *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v3) <= *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v3 = v2[35] + *(v1 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  }

  [v0 setAlpha_];
  swift_beginAccess();
  sub_24A5D8DFC();
  return [v0 setScale_];
}

void sub_24A5D8DFC()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_findingType];
  v2 = (v1 >> 13) & 3;
  if (!v2)
  {
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if ((v1 & 0x8100) != 0x100)
    {
      goto LABEL_7;
    }

LABEL_6:
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      return;
    }

    goto LABEL_7;
  }

  v3 = sub_24A62DF44();
  v9[3] = v3;
  v9[4] = sub_24A5964D0();
  v4 = sub_24A5292E8(v9);
  (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D089D0], v3);
  LOBYTE(v3) = MEMORY[0x24C219850](v9);
  sub_24A508C54(v9);
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = [v0 scene];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }
}

void sub_24A5D8FA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI21FMPFSKBTRangeDiskNode_opacitySpring);
}

id sub_24A5D8FE4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPFSKBTRangeDiskNode();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_24A5D9118()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeObservation];
  if (v2)
  {
    v3 = v2;
    sub_24A62E064();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for FMR1DebugView();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_24A5D93C8(void *a1)
{
  v7 = [objc_opt_self() standardUserDefaults];
  v3 = [a1 selectedSegmentIndex];
  v4 = 40;
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_experienceType) == 1)
  {
    v4 = 48;
  }

  v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_style + v4);
  if (v3 >= *(v5 + 16))
  {
    v6 = 0;
  }

  else
  {
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v3 + 32);
  }

  [v7 setFmpfArrowDotCount_];
}

void sub_24A5D9528(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = objc_opt_self();
  v9 = a1;
  v8 = [v7 standardUserDefaults];
  [v8 *a4];
}

double sub_24A5D95D4()
{
  if ([*&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch] isOn])
  {
    [*&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch] setEnabled_];
    v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler + 8];
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      sub_24A5173CC(v2, v3);
      v5 = v0;
      v2(sub_24A5D9B50, v4);
      sub_24A50D354(v2, v3);
    }
  }

  return result;
}

id sub_24A5D96C8(uint64_t a1, char *a2)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&a2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch] setEnabled_];
  result = [*&a2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch] isOn];
  if (result)
  {
    sub_24A545E8C();
    v13 = sub_24A62F014();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    aBlock[4] = sub_24A5D9B58;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA97F8;
    v15 = _Block_copy(aBlock);
    v16 = a2;

    sub_24A62EAB4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    MEMORY[0x24C21A950](0, v11, v6, v15);
    _Block_release(v15);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

double sub_24A5D9984(char *a1)
{
  if ([*&a1[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch] isOn])
  {
    [*&a1[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch] setEnabled_];
    v3 = *&a1[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler];
    if (v3)
    {
      v4 = *&a1[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler + 8];
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      sub_24A5173CC(v3, v4);
      v6 = a1;
      v3(sub_24A5DA1A4, v5);
      sub_24A50D354(v3, v4);
    }
  }

  return result;
}

uint64_t sub_24A5D9B18()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A5D9B60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_24A5D9B78()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_style;
  if (qword_27EF4EA40 != -1)
  {
    swift_once();
  }

  v21[2] = xmmword_27EF5C638;
  v21[3] = *&qword_27EF5C648;
  v21[4] = unk_27EF5C658;
  v21[0] = xmmword_27EF5C618;
  v21[1] = xmmword_27EF5C628;
  memmove((v0 + v1), &xmmword_27EF5C618, 0x50uLL);
  v2 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugLabel;
  type metadata accessor for FMR1InsetLabel();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_24A5DA138(v21, v20);
  *(v0 + v2) = [v3 init];
  v4 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_controlsView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_dotCountLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_dotCountSegmentedControl;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_ecoModeLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_ecoModeSwitch;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  v9 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingLabel;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  v11 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsLabel;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeObservation) = 0;
  v13 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_lastSamplingTimeIntervalForSKFPS;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_sampleCountForSKFPS;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_lastLoggedSKFPS;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_lastSamplingTimeIntervalForARFPS;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_sampleCountForARFPS;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_lastLoggedARFPS;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = (v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_autoTestsActionHandler);
  *v19 = 0;
  v19[1] = 0;
  sub_24A62F444();
  __break(1u);
}

void sub_24A5D9E20(double a1, double a2)
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC30;
  v6 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugLabel];
  *(inited + 32) = v6;
  v7 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_ecoModeSwitch];
  *(inited + 40) = v7;
  v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeWithoutBearingSwitch];
  *(inited + 48) = v8;
  v9 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_runTestsSwitch];
  *(inited + 56) = v9;
  v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_dotCountSegmentedControl];
  *(inited + 64) = v10;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = 0;
  while (1)
  {
    if (v16 == 5)
    {
LABEL_9:

      return;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C21ACB0](v16, inited);
      goto LABEL_6;
    }

    if (v16 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v17 = *(inited + 8 * v16 + 32);
LABEL_6:
    v18 = v17;
    ++v16;
    [v2 convertPoint:v17 toCoordinateSpace:{a1, a2}];
    v20 = v19;
    v22 = v21;
    [v18 bounds];
    v24.x = v20;
    v24.y = v22;
    v23 = CGRectContainsPoint(v25, v24);

    if (v23)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_24A5D9FC0()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_controlsView;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_controlsView) alpha];
  v3 = v2 == 0.0;
  v4 = *(v0 + v1);
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v9[4] = sub_24A5DA114;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A5A8458;
  v9[3] = &unk_285DA9870;
  v7 = _Block_copy(v9);
  v8 = v4;

  [v5 animateWithDuration:v7 animations:0.5];

  _Block_release(v7);
}

uint64_t sub_24A5DA0DC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

id sub_24A5DA114()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

uint64_t sub_24A5DA1BC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 6);
  v6 = *(a4 + 16);
  v7 = *(a2 + 4);
  v9 = *a2;
  v10 = v4;
  v11 = v5;
  v12 = v7;
  return v6(a1, &v9, a3);
}

id sub_24A5DA24C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_backgroundLayer;
  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v3[v6] = v8;
  v9 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v10 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v11 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v12 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v13 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v14 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton;
  *&v3[v14] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v15 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton;
  *&v3[v15] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v16 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton;
  *&v3[v16] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v17 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton;
  *&v3[v17] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v18 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton;
  *&v3[v18] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v19 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton;
  *&v3[v19] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v20 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton;
  *&v3[v20] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v21 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton;
  *&v3[v21] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v22 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton;
  *&v3[v22] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v23 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider;
  v24 = type metadata accessor for FMFindingDebugSlider();
  v25 = objc_allocWithZone(v24);
  *&v3[v23] = sub_24A60C168(0x63614620676E6952, 0xEB00000000726F74, 0.0, 6.0, 0.01);
  v26 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider;
  v27 = objc_allocWithZone(v24);
  *&v3[v26] = sub_24A60C168(0x61704F20676E6952, 0xEC00000079746963, 0.0, 1.0, 0.01);
  v28 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider;
  v29 = objc_allocWithZone(v24);
  *&v3[v28] = sub_24A60C168(0x4620636974706148, 0xEC0000006563726FLL, 0.0, 1.0, 0.01);
  v30 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider;
  v31 = objc_allocWithZone(v24);
  *&v3[v30] = sub_24A60C168(0xD000000000000010, 0x800000024A642950, 0.0, 1.0, 0.01);
  v32 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider;
  v33 = objc_allocWithZone(v24);
  *&v3[v32] = sub_24A60C168(0x65502065736C7550, 0xEC000000646F6972, 0.0, 2.0, 0.001);
  v34 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton;
  *&v3[v34] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v35 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton;
  *&v3[v35] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v36 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton;
  *&v3[v36] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v37 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton;
  *&v3[v37] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  *&v3[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession] = a2;
  v40.receiver = v3;
  v40.super_class = type metadata accessor for FMFindingDebugViewController();

  v38 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  sub_24A5DA734();

  return v38;
}

id sub_24A5DA734()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = result;
  [result addSubview_];

  sub_24A5DA7EC();
  sub_24A5DB168();
  sub_24A5DBAE4();

  return sub_24A5DB888();
}

id sub_24A5DA7EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView);
  [v1 setAxis_];
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView);
  [v2 setAxis_];
  v90 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView);
  [v90 setAxis_];
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView);
  [(SEL *)v3 setAxis:0];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  v89 = xmmword_24A63AC30;
  *(inited + 16) = xmmword_24A63AC30;
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton);
  *(inited + 32) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton);
  *(inited + 40) = v6;
  v7 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v8 = v5;
  v9 = v6;
  *(inited + 48) = [v7 init];
  v10 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
  *(inited + 56) = v10;
  v91 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  *(inited + 64) = v11;
  v12 = inited & 0xC000000000000001;
  v13 = (inited & 0xFFFFFFFFFFFFFF8);
  v14 = v10;
  v15 = v11;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_69;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_66;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v17 = i;
    [v2 addArrangedSubview_];

    if (v12)
    {
      v18 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (v13[2] < 2uLL)
      {
        goto LABEL_66;
      }

      v18 = *(inited + 40);
    }

    v19 = v18;
    [v2 addArrangedSubview_];

    if (v12)
    {
      v20 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (v13[2] < 3uLL)
      {
        goto LABEL_66;
      }

      v20 = *(inited + 48);
    }

    v21 = v20;
    [v2 addArrangedSubview_];

    if (v12)
    {
      v22 = MEMORY[0x24C21ACB0](3, inited);
    }

    else
    {
      if (v13[2] < 4uLL)
      {
        goto LABEL_66;
      }

      v22 = *(inited + 56);
    }

    v23 = v22;
    [v2 addArrangedSubview_];

    v88 = v3;
    if (v12)
    {
      v24 = v1;
      v25 = MEMORY[0x24C21ACB0](4, inited);
    }

    else
    {
      if (v13[2] < 5uLL)
      {
        goto LABEL_66;
      }

      v24 = v1;
      v25 = *(inited + 64);
    }

    v26 = v25;
    v87 = v2;
    [v2 addArrangedSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();
    inited = swift_initStackObject();
    *(inited + 16) = v89;
    v27 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider);
    *(inited + 32) = v27;
    v28 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider);
    *(inited + 40) = v28;
    v29 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider);
    *(inited + 48) = v29;
    v1 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider);
    *(inited + 56) = v1;
    v30 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider);
    *(inited + 64) = v30;
    v12 = inited & 0xC000000000000001;
    v13 = (inited & 0xFFFFFFFFFFFFFF8);
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v1;
    v35 = v30;
    if ((inited & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x24C21ACB0](0, inited);
      v2 = v90;
      v3 = &property descriptor for FMFindingViewController.dismissedHandler;
    }

    else
    {
      v2 = v90;
      v3 = &property descriptor for FMFindingViewController.dismissedHandler;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v36 = v31;
    }

    [v2 v3[153]];

    if (v12)
    {
      v37 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_67;
      }

      v37 = *(inited + 40);
    }

    v38 = v37;
    [v2 v3[153]];

    if (v12)
    {
      v39 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_67;
      }

      v39 = *(inited + 48);
    }

    v40 = v39;
    [v2 v3[153]];

    if (v12)
    {
      v41 = MEMORY[0x24C21ACB0](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_67;
      }

      v41 = *(inited + 56);
    }

    v42 = v41;
    [v2 v3[153]];

    v86 = v24;
    if (v12)
    {
      v43 = MEMORY[0x24C21ACB0](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_67;
      }

      v43 = *(inited + 64);
    }

    v44 = v43;
    [v2 v3[153]];

    swift_setDeallocating();
    swift_arrayDestroy();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A63AC60;
    v45 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton);
    *(inited + 32) = v45;
    *&v89 = inited + 32;
    v2 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton);
    *(inited + 40) = v2;
    v46 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton);
    *(inited + 48) = v46;
    v47 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton);
    *(inited + 56) = v47;
    v1 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton);
    *(inited + 64) = v1;
    v48 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton);
    *(inited + 72) = v48;
    v13 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton);
    *(inited + 80) = v13;
    v12 = inited & 0xC000000000000001;
    v49 = v45;
    v50 = v2;
    v51 = v46;
    v52 = v47;
    v53 = v1;
    v54 = v48;
    v55 = v13;
    if ((inited & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x24C21ACB0](0, inited);
      v3 = v88;
      v56 = &property descriptor for FMFindingViewController.dismissedHandler;
    }

    else
    {
      v3 = v88;
      v56 = &property descriptor for FMFindingViewController.dismissedHandler;
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v57 = v49;
    }

    [v3 v56[153]];

    if (v12)
    {
      v58 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_65;
      }

      v58 = *(inited + 40);
    }

    v59 = v58;
    [v3 v56[153]];

    if (v12)
    {
      v60 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_65;
      }

      v60 = *(inited + 48);
    }

    v61 = v60;
    [v3 v56[153]];

    if (v12)
    {
      v62 = MEMORY[0x24C21ACB0](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_65;
      }

      v62 = *(inited + 56);
    }

    v63 = v62;
    [v3 v56[153]];

    if (v12)
    {
      v64 = MEMORY[0x24C21ACB0](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_65;
      }

      v64 = *(inited + 64);
    }

    v65 = v64;
    [v3 v56[153]];

    if (v12)
    {
      v66 = MEMORY[0x24C21ACB0](5, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_65;
      }

      v66 = *(inited + 72);
    }

    v67 = v66;
    [v3 v56[153]];

    if (v12)
    {
      v68 = MEMORY[0x24C21ACB0](6, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 7uLL)
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v68 = *(inited + 80);
    }

    v69 = v68;
    [v3 v56[153]];

    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_24A633820;
    v70 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    *(v12 + 32) = v70;
    inited = v12 + 32;
    v71 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
    *(v12 + 40) = v71;
    v72 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
    *(v12 + 48) = v72;
    v73 = *(v91 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
    *(v12 + 56) = v73;
    v74 = v12 & 0xC000000000000001;
    v13 = (v12 & 0xFFFFFFFFFFFFFF8);
    v75 = v71;
    v76 = v72;
    v77 = v73;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v78 = MEMORY[0x24C21ACB0](0, v12);
      v2 = v87;
    }

    else
    {
      v2 = v87;
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v78 = v70;
    }

    [v3 v56[153]];

    if (v74)
    {
      v79 = MEMORY[0x24C21ACB0](1, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_68;
      }

      v79 = *(v12 + 40);
    }

    v80 = v79;
    [v3 v56[153]];

    if (v74)
    {
      v81 = MEMORY[0x24C21ACB0](2, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_68;
      }

      v81 = *(v12 + 48);
    }

    v82 = v81;
    [v3 v56[153]];

    if (v74)
    {
      break;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v83 = *(v12 + 56);
      goto LABEL_64;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v83 = MEMORY[0x24C21ACB0](3, v12);
LABEL_64:
  v84 = v83;
  [v3 v56[153]];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v86 v56[153]];
  [v86 v56[153]];
  return [v86 v56[153]];
}

void sub_24A5DB168()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC70;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider];
  *(inited + 72) = v7;
  v72 = v0;
  v73 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider];
  *(inited + 80) = v73;
  v8 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_backgroundLayer];
  *(inited + 88) = v8;
  v75 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton];
  *(inited + 96) = v75;
  v9 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton];
  *(inited + 104) = v9;
  v71 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v73;
  v74 = v8;
  v16 = v75;
  v17 = v9;
  for (i = 4; i != 14; ++i)
  {
    v19 = i - 4;
    if ((inited & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x24C21ACB0](v19, inited);
    }

    else
    {
      if (v19 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v20 = *(inited + 8 * i);
    }

    v21 = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24A633820;
  v23 = [v71 topAnchor];
  v24 = [v72 view];
  if (!v24)
  {
    goto LABEL_18;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 topAnchor];
  v28 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v28;
  v29 = [v71 leadingAnchor];
  v30 = [v72 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = v30;
  v32 = [v30 safeAreaLayoutGuide];

  v33 = [v32 leadingAnchor];
  v34 = [v29 constraintEqualToAnchor_];

  *(v22 + 40) = v34;
  v35 = [v71 trailingAnchor];
  v36 = [v72 view];
  if (!v36)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v37 = v36;
  v38 = [v36 safeAreaLayoutGuide];

  v39 = [v38 trailingAnchor];
  v40 = [v35 constraintEqualToAnchor_];

  *(v22 + 48) = v40;
  v41 = [v71 bottomAnchor];
  v42 = [v72 view];
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = v42;
  v44 = objc_opt_self();
  v45 = [v43 safeAreaLayoutGuide];

  v46 = [v45 bottomAnchor];
  v47 = [v41 constraintEqualToAnchor_];

  *(v22 + 56) = v47;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v48 = sub_24A62ED54();

  [v44 activateConstraints_];

  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_24A633820;
  v50 = [v74 topAnchor];
  v51 = [v72 view];
  if (!v51)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v50 constraintEqualToAnchor_];
  *(v49 + 32) = v54;
  v55 = [v74 bottomAnchor];
  v56 = [v72 view];
  if (!v56)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = v56;
  v58 = [v56 bottomAnchor];

  v59 = [v55 constraintEqualToAnchor_];
  *(v49 + 40) = v59;
  v60 = [v74 leadingAnchor];
  v61 = [v72 view];
  if (!v61)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v62 = v61;
  v63 = [v61 leadingAnchor];

  v64 = [v60 constraintEqualToAnchor_];
  *(v49 + 48) = v64;
  v65 = [v74 trailingAnchor];
  v66 = [v72 view];
  if (v66)
  {
    v67 = v66;
    v68 = [v66 trailingAnchor];

    v69 = [v65 constraintEqualToAnchor_];
    *(v49 + 56) = v69;
    v70 = sub_24A62ED54();

    [v44 activateConstraints_];

    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_24A5DB888()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC30;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider);
  *(inited + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider);
  *(inited + 64) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  for (i = v8; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v14 = i;
    [i addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

    if (v7)
    {
      v15 = MEMORY[0x24C21ACB0](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_17;
      }

      v15 = *(inited + 40);
    }

    v16 = v15;
    [v15 addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

    if (v7)
    {
      v17 = MEMORY[0x24C21ACB0](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_17;
      }

      v17 = *(inited + 48);
    }

    v18 = v17;
    [v17 addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

    if (v7)
    {
      v19 = MEMORY[0x24C21ACB0](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_17;
      }

      v19 = *(inited + 56);
    }

    v20 = v19;
    [v19 addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

    if (v7)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v21 = *(inited + 64);
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v21 = MEMORY[0x24C21ACB0](4, inited);
LABEL_16:
  v22 = v21;
  [v21 addTarget:v0 action:sel_handleWithSlider_ forControlEvents:4096];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_24A5DBAE4()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A63AC80;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton);
  *(inited + 32) = v2;
  v29 = inited + 32;
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton);
  *(inited + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton);
  *(inited + 64) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton);
  *(inited + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
  *(inited + 80) = v8;
  v37 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
  *(inited + 88) = v37;
  v39 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
  *(inited + 96) = v39;
  v41 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  *(inited + 104) = v41;
  v43 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton);
  *(inited + 112) = v43;
  v44 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton);
  *(inited + 120) = v44;
  v45 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
  *(inited + 128) = v45;
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v9 = v43;
  v10 = v44;
  v46 = v45;
  v11 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C21ACB0](v11, inited);
      goto LABEL_5;
    }

    if (v11 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v12 = *(inited + 8 * v11 + 32);
LABEL_5:
    v13 = v12;
    ++v11;
    [v12 addTarget:v0 action:sel_handleWithButton_ forControlEvents:{64, v29}];

    if (v11 == 13)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      v14 = sub_24A5DE800(0xD000000000000016, 0x800000024A63D500);
      [v10 setImage:v14 forState:0];

      v15 = sub_24A5DE800(0xD000000000000014, 0x800000024A6428A0);
      [v9 setImage:v15 forState:0];

      v16 = sub_24A5DE800(0xD000000000000018, 0x800000024A642840);
      [v40 setImage:v16 forState:0];

      v17 = sub_24A5DE800(0xD000000000000011, 0x800000024A6428C0);
      [v42 setImage:v17 forState:0];

      v18 = sub_24A5DE800(0x656C637269632E31, 0xED00006C6C69662ELL);
      [v30 setImage:v18 forState:0];

      v19 = sub_24A5DE800(0x656C637269632E32, 0xED00006C6C69662ELL);
      [v31 setImage:v19 forState:0];

      v20 = sub_24A5DE800(0x656C637269632E33, 0xED00006C6C69662ELL);
      [v32 setImage:v20 forState:0];

      v21 = sub_24A5DE800(0x656C637269632E34, 0xED00006C6C69662ELL);
      [v33 setImage:v21 forState:0];

      v22 = sub_24A5DE800(0x656C637269632E35, 0xED00006C6C69662ELL);
      [v34 setImage:v22 forState:0];

      v23 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton);
      v24 = sub_24A5DE800(0x656C637269632E36, 0xED00006C6C69662ELL);
      [v23 setImage:v24 forState:0];

      v25 = sub_24A5DE800(0x656C637269632E37, 0xED00006C6C69662ELL);
      [v35 setImage:v25 forState:0];

      v26 = sub_24A5DE800(0xD000000000000010, 0x800000024A642820);
      [v46 setImage:v26 forState:0];

      v27 = sub_24A5DE800(0xD000000000000019, 0x800000024A6428E0);
      [v36 setImage:v27 forState:0];

      v28 = sub_24A5DE800(0xD00000000000001ALL, 0x800000024A642900);
      [v38 setImage:v28 forState:0];

      return;
    }
  }

  __break(1u);
}

float sub_24A5DC0F4(uint64_t a1)
{
  v3 = *(a1 + 8);
  *&v3 = v3;
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v3);
  sub_24A60BF8C(v3);
  v4 = *a1;
  *&v4 = *a1;
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v4);
  sub_24A60BF8C(v4);
  LODWORD(v5) = *(a1 + 24);
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v5);
  sub_24A60BF8C(v5);
  v6 = *(a1 + 32);
  *&v6 = v6;
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v6);
  sub_24A60BF8C(v6);
  v7 = *(a1 + 16);
  *&v7 = v7;
  *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value) = LODWORD(v7);
  sub_24A60BF8C(v7);
  return result;
}

double sub_24A5DC1C4@<D0>(uint64_t a1@<X8>)
{
  result = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v3 = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v4 = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v5 = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v6 = *(*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24A5DC244(uint64_t a1)
{
  v3 = sub_24A62E0F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_24A62DFA4();
  swift_allocObject();
  sub_24A62DF94();
  v24 = a1;
  sub_24A5DF2F8();
  v10 = sub_24A62DF84();
  v12 = v11;

  v23 = v1;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 temporaryDirectory];

  sub_24A62E0D4();
  sub_24A62E0C4();
  v15 = *(v4 + 8);
  v15(v6, v3);
  sub_24A62E124();
  sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24A633830;
  *(v16 + 56) = v3;
  v17 = sub_24A5292E8((v16 + 32));
  (*(v4 + 16))(v17, v9, v3);
  v18 = objc_allocWithZone(MEMORY[0x277D546D8]);
  v19 = sub_24A62ED54();

  v20 = [v18 initWithActivityItems:v19 applicationActivities:0];

  [v23 presentViewController:v20 animated:1 completion:0];
  sub_24A5DF248(v10, v12);

  return (v15)(v9, v3);
}

id sub_24A5DC5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
  v2 = sub_24A5DE800(0xD000000000000016, 0x800000024A642860);
  [v1 setImage:v2 forState:0];

  [*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView) setHidden_];
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
  v5 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
  v6 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v22 = [v6 init];
  v23 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  v10 = v1;

  v21 = v10;
  v20 = v8;

  v11 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView);
  v12 = [v11 arrangedSubviews];
  sub_24A50D7EC(0, &qword_27EF513A8, 0x277D75D18);
  v13 = sub_24A62ED64();

  if (v13 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C21ACB0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [v16 removeFromSuperview];

      ++v15;
      if (v18 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];
  [v11 addArrangedSubview_];

  [v11 addArrangedSubview_];

  return [v11 addArrangedSubview_];
}

id sub_24A5DC860()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
  v2 = sub_24A5DE800(0xD000000000000018, 0x800000024A642840);
  v53 = v1;
  [v1 setImage:v2 forState:0];

  [*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView) setHidden_];
  v52 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView);
  [v52 setHidden_];
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton);
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton);
  v5 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v6 = v3;
  v7 = v4;
  v47 = [v5 init];
  v49 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  v43 = v6;

  v45 = v7;
  v8 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView);
  v9 = [v8 arrangedSubviews];
  sub_24A50D7EC(0, &qword_27EF513A8, 0x277D75D18);
  v10 = sub_24A62ED64();

  if (v10 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C21ACB0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 removeFromSuperview];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  [v8 addArrangedSubview_];
  [v8 addArrangedSubview_];
  [v8 addArrangedSubview_];

  [v8 addArrangedSubview_];
  [v8 addArrangedSubview_];
  v16 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton);
  v17 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton);
  v18 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton);
  v19 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton);
  v20 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton);
  v21 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton);
  v50 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton);
  v22 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v23 = v16;
  v54 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v50;
  v29 = [v22 init];
  v30 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
  v48 = v29;
  v51 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
  v31 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
  v32 = v30;

  v42 = v31;
  v41 = v26;

  v33 = [v52 arrangedSubviews];
  v34 = sub_24A62ED64();

  v44 = v27;
  v46 = v32;
  if (v34 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24A62F464())
  {
    v36 = 0;
    while (1)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x24C21ACB0](v36, v34);
      }

      else
      {
        if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v37 = *(v34 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v37 removeFromSuperview];

      ++v36;
      if (v39 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];

  [v52 addArrangedSubview_];
  [v52 addArrangedSubview_];

  return [v52 addArrangedSubview_];
}

void sub_24A5DCDB0()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75458]);
  v2 = sub_24A62ED54();
  v3 = [v1 initWithDocumentTypes:v2 inMode:0];

  [v3 setDelegate_];
  [v3 setModalPresentationStyle_];
  [v3 setAllowsMultipleSelection_];
  [v3 setShouldShowFileExtensions_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_24A5DCEA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
  v2 = sub_24A5DE800(0xD000000000000010, 0x800000024A642820);
  [v1 setImage:v2 forState:0];

  v3 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer;
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer) invalidate];
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;
}

void sub_24A5DCF40()
{
  v1 = v0;
  v2 = sub_24A62E214();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession];
  v10 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
  swift_beginAccess();
  sub_24A592BFC(v9 + v10, v8);
  v11 = *(v8 + 1);
  if (!*(v11 + 16))
  {

    goto LABEL_8;
  }

  v12 = *(v6 + 36);

  v13 = sub_24A515AC8(&v8[v12]);
  if ((v14 & 1) == 0)
  {
LABEL_8:
    sub_24A62F444();
    __break(1u);
    return;
  }

  sub_24A508AE4(*(v11 + 56) + 40 * v13, v30);
  sub_24A508CA0(v30, aBlock);
  sub_24A592C60(v8);
  v15 = v27;
  v16 = v28;
  sub_24A50A204(aBlock, v27);
  (*(v16 + 2))(v15, v16);
  v17 = COERCE_DOUBLE(sub_24A5A7870(v5));
  LOBYTE(v15) = v18;

  (*(v3 + 8))(v5, v2);
  sub_24A508C54(aBlock);
  if (v15)
  {
    v19 = 3.0;
  }

  else
  {
    v19 = v17;
  }

  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  v28 = sub_24A5DF2D4;
  v29 = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5BE9EC;
  v27 = &unk_285DA9938;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  v24 = [v20 scheduledTimerWithTimeInterval:0 repeats:v22 block:v19];
  _Block_release(v22);
  v25 = *&v23[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer];
  *&v23[OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer] = v24;
}

void sub_24A5DD2A8(uint64_t a1)
{
  v119 = sub_24A62E214();
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for FMFindingSessionState(0);
  MEMORY[0x28223BE20](v117);
  v113 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v114 = &v112 - v5;
  MEMORY[0x28223BE20](v6);
  v115 = &v112 - v7;
  MEMORY[0x28223BE20](v8);
  v116 = &v112 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v112 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v112 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v112 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v112 - v20;
  v22 = v1;
  v23 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton);
  sub_24A50D7EC(0, &unk_27EF51A50, 0x277D75220);
  v24 = v23;
  LOBYTE(v23) = sub_24A62F164();

  if (v23)
  {
    v25 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v26 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A592BFC(v25 + v26, v21);
    v27 = *(v21 + 1);
    if (!*(v27 + 16))
    {
      goto LABEL_69;
    }

    v28 = *(v117 + 36);

    v29 = sub_24A515AC8(&v21[v28]);
    if (v30)
    {
      sub_24A508AE4(*(v27 + 56) + 40 * v29, &v123);
      sub_24A508CA0(&v123, &v126);
      sub_24A592C60(v21);
      v31 = *(&v127 + 1);
      v32 = v128;
      sub_24A50A204(&v126, *(&v127 + 1));
      v33 = v118;
      (*(v32 + 16))(v31, v32);
      sub_24A5A7870(v33);
LABEL_9:

      (*(v120 + 8))(v33, v119);
      v44 = &v126;
LABEL_37:
      sub_24A508C54(v44);
      return;
    }

    goto LABEL_70;
  }

  v34 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton);
  v35 = sub_24A62F164();

  if (v35)
  {
    v36 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v37 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A592BFC(v36 + v37, v18);
    v38 = *(v18 + 1);
    if (!*(v38 + 16))
    {
      goto LABEL_69;
    }

    v39 = *(v117 + 36);

    v40 = sub_24A515AC8(&v18[v39]);
    if (v41)
    {
      sub_24A508AE4(*(v38 + 56) + 40 * v40, &v123);
      sub_24A508CA0(&v123, &v126);
      sub_24A592C60(v18);
      v42 = *(&v127 + 1);
      v43 = v128;
      sub_24A50A204(&v126, *(&v127 + 1));
      v33 = v118;
      (*(v43 + 16))(v42, v43);
      sub_24A5A7888(v33);
      goto LABEL_9;
    }

    while (1)
    {
LABEL_70:
      sub_24A62F444();
      __break(1u);
LABEL_69:
    }
  }

  v45 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton);
  v46 = sub_24A62F164();

  if (v46)
  {
    v47 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v48 = *(v47 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v49 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A592BFC(v47 + v49, v15);
    v50 = *(v15 + 1);
    if (!*(v50 + 16))
    {
      goto LABEL_69;
    }

    v51 = *(v117 + 36);

    v52 = sub_24A515AC8(&v15[v51]);
    if ((v53 & 1) == 0)
    {
      goto LABEL_70;
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v133 = 0;
    v132 = 0x4000000;
    sub_24A508AE4(*(v50 + 56) + 40 * v52, v122);
    sub_24A508CA0(v122, &v123);
    v54 = v15;
    goto LABEL_35;
  }

  v55 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton);
  v56 = sub_24A62F164();

  if (v56)
  {
    v57 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v58 = *(v57 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v59 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    sub_24A592BFC(v57 + v59, v12);
    v60 = *(v12 + 1);
    if (!*(v60 + 16))
    {
      goto LABEL_69;
    }

    v61 = *(v117 + 36);

    v62 = sub_24A515AC8(&v12[v61]);
    if ((v63 & 1) == 0)
    {
      goto LABEL_70;
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v133 = 0;
    v132 = 83886080;
    sub_24A508AE4(*(v60 + 56) + 40 * v62, v122);
    sub_24A508CA0(v122, &v123);
    sub_24A592C60(v12);
    v64 = v124;
    v65 = v125;
    sub_24A50A204(&v123, v124);
    v66 = v118;
    (*(v65 + 16))(v64, v65);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = *(v58 + 40);
    *(v58 + 40) = 0x8000000000000000;
    sub_24A5578E0(&v126, v66, isUniquelyReferenced_nonNull_native);
    *(v58 + 40) = v121;
    swift_endAccess();
    sub_24A5A7334();
LABEL_36:

    (*(v120 + 8))(v66, v119);
    v44 = &v123;
    goto LABEL_37;
  }

  v68 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton);
  v69 = sub_24A62F164();

  if (v69)
  {
    v70 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v48 = *(v70 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v71 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    v72 = v116;
    sub_24A592BFC(v70 + v71, v116);
    v73 = *(v72 + 8);
    if (!*(v73 + 16))
    {
      goto LABEL_69;
    }

    v74 = *(v117 + 36);

    v75 = sub_24A515AC8(v72 + v74);
    if ((v76 & 1) == 0)
    {
      goto LABEL_70;
    }

    *&v126 = 0;
    v77 = 768;
LABEL_34:
    HIWORD(v132) = v77;
    v133 = 3;
    sub_24A508AE4(*(v73 + 56) + 40 * v75, v122);
    sub_24A508CA0(v122, &v123);
    v54 = v72;
LABEL_35:
    sub_24A592C60(v54);
    v96 = v124;
    v97 = v125;
    sub_24A50A204(&v123, v124);
    v66 = v118;
    (*(v97 + 16))(v96, v97);
    swift_beginAccess();
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v121 = *(v48 + 40);
    *(v48 + 40) = 0x8000000000000000;
    sub_24A5578E0(&v126, v66, v98);
    *(v48 + 40) = v121;
    swift_endAccess();
    sub_24A5A7334();
    goto LABEL_36;
  }

  v78 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton);
  v79 = sub_24A62F164();

  if (v79)
  {
    v80 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v48 = *(v80 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v81 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    v72 = v115;
    sub_24A592BFC(v80 + v81, v115);
    v73 = *(v72 + 8);
    if (!*(v73 + 16))
    {
      goto LABEL_69;
    }

    v82 = *(v117 + 36);

    v75 = sub_24A515AC8(v72 + v82);
    if ((v83 & 1) == 0)
    {
      goto LABEL_70;
    }

    *&v126 = 0;
    v77 = 769;
    goto LABEL_34;
  }

  v84 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton);
  v85 = sub_24A62F164();

  if (v85)
  {
    v86 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v48 = *(v86 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v87 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    v72 = v114;
    sub_24A592BFC(v86 + v87, v114);
    v73 = *(v72 + 8);
    if (!*(v73 + 16))
    {
      goto LABEL_69;
    }

    v88 = *(v117 + 36);

    v75 = sub_24A515AC8(v72 + v88);
    if ((v89 & 1) == 0)
    {
      goto LABEL_70;
    }

    *&v126 = 0;
    v77 = 770;
    goto LABEL_34;
  }

  v90 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton);
  v91 = sub_24A62F164();

  if (v91)
  {
    v92 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_mockSession);
    v48 = *(v92 + OBJC_IVAR____TtC11FMFindingUI20FMMockFindingSession_mockLocalizer);
    v93 = OBJC_IVAR____TtC11FMFindingUI16FMFindingSession_state;
    swift_beginAccess();
    v72 = v113;
    sub_24A592BFC(v92 + v93, v113);
    v73 = *(v72 + 8);
    if (!*(v73 + 16))
    {
      goto LABEL_69;
    }

    v94 = *(v117 + 36);

    v75 = sub_24A515AC8(v72 + v94);
    if ((v95 & 1) == 0)
    {
      goto LABEL_70;
    }

    *&v126 = 0;
    v77 = 771;
    goto LABEL_34;
  }

  v99 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton);
  v100 = sub_24A62F164();

  if (v100)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer) setHidden_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v102 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton);
    v103 = sub_24A62F164();

    if (v103)
    {

      sub_24A5DCDB0();
    }

    else
    {
      v104 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton);
      v105 = sub_24A62F164();

      if (v105)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {

          sub_24A5DC244(v106);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v107 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton);
        v108 = sub_24A62F164();

        if (v108)
        {
          if ([*(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView) isHidden])
          {

            sub_24A5DC860();
          }

          else
          {

            sub_24A5DC5A0();
          }
        }

        else
        {
          v109 = *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton);
          v110 = sub_24A62F164();

          if (v110)
          {
            if (*(v22 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer))
            {

              sub_24A5DCEA4();
            }

            else
            {
              v111 = sub_24A5DE800(0xD000000000000011, 0x800000024A6427E0);
              [v109 setImage:v111 forState:0];

              sub_24A5DCF40();
            }
          }
        }
      }
    }
  }
}

id sub_24A5DE1C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMFindingDebugViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_24A5DE404(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_24A62E104();
    v7 = v6;
    sub_24A62DF74();
    swift_allocObject();
    sub_24A62DF64();
    sub_24A5DF1F4();
    sub_24A62DF54();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24A5BEC98(v8);
      swift_unknownObjectRelease();
      sub_24A5DF248(v5, v7);
    }

    else
    {
      sub_24A5DF248(v5, v7);
    }
  }

  return result;
}

void sub_24A5DE55C(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277D75110]) init];
  v4 = sub_24A62EBE4();
  [v3 setTitle_];

  swift_getErrorValue();
  sub_24A62F6A4();
  v5 = sub_24A62EBE4();

  [v3 setMessage_];

  v6 = sub_24A62EBE4();
  v7 = [objc_opt_self() actionWithTitle:v6 style:0 handler:0];

  [v3 addAction_];
  [v2 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_24A5DE6A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A62E0F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_24A62E0D4();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

id sub_24A5DE800(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() configurationWithPointSize_];
  v3 = sub_24A62EBE4();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_opt_self() whiteColor];
    v6 = [v4 imageWithTintColor:v5 renderingMode:1];
  }

  else
  {

    return 0;
  }

  return v6;
}

void sub_24A5DE908()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_backgroundLayer;
  v3 = [objc_opt_self() effectWithStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_stackView;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_topStackView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v7 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_middleStackView;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v8 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_bottomStackView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v9 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayButton;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v10 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_nextStateButton;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v11 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_prevStateButton;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v12 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_disconnectedStateButton;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v13 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_connectingStateButton;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v14 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_coldStateButton;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v15 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmStateButton;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v16 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_warmerStateButton;
  *(v1 + v16) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v17 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hotStateButton;
  *(v1 + v17) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v18 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_foundStateButton;
  *(v1 + v18) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v19 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider;
  v20 = type metadata accessor for FMFindingDebugSlider();
  v21 = objc_allocWithZone(v20);
  *(v1 + v19) = sub_24A60C168(0x63614620676E6952, 0xEB00000000726F74, 0.0, 6.0, 0.01);
  v22 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider;
  v23 = objc_allocWithZone(v20);
  *(v1 + v22) = sub_24A60C168(0x61704F20676E6952, 0xEC00000079746963, 0.0, 1.0, 0.01);
  v24 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider;
  v25 = objc_allocWithZone(v20);
  *(v1 + v24) = sub_24A60C168(0x4620636974706148, 0xEC0000006563726FLL, 0.0, 1.0, 0.01);
  v26 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider;
  v27 = objc_allocWithZone(v20);
  *(v1 + v26) = sub_24A60C168(0xD000000000000010, 0x800000024A642950, 0.0, 1.0, 0.01);
  v28 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider;
  v29 = objc_allocWithZone(v20);
  *(v1 + v28) = sub_24A60C168(0x65502065736C7550, 0xEC000000646F6972, 0.0, 2.0, 0.001);
  v30 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_saveButton;
  *(v1 + v30) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v31 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_loadButton;
  *(v1 + v31) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v32 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_closeButton;
  *(v1 + v32) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v33 = OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hideButton;
  *(v1 + v33) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_autoplayTimer) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A62F444();
  __break(1u);
}

uint64_t sub_24A5DED80(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringFactorSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v4 = *(*(v2 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_ringOpacitySlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v5 = *(*(v2 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_hapticForceSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v6 = *(*(v2 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_pulsePeriodSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v18[0] = *(*(v2 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_dotScaleSlider) + OBJC_IVAR____TtC11FMFindingUI20FMFindingDebugSlider_value);
  v18[1] = v3;
  v18[2] = v4;
  v19 = v5;
  v20 = v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
    v9 = result + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
    swift_beginAccess();
    v10 = (v9 + *(type metadata accessor for FMFindingViewState(0) + 32));
    v11 = v10[3];
    v12 = v10[4];
    v13 = v10[5];
    *(v22 + 13) = *(v10 + 93);
    v21[4] = v12;
    v22[0] = v13;
    v21[3] = v11;
    v14 = *v10;
    v15 = v10[2];
    v21[1] = v10[1];
    v21[2] = v15;
    v21[0] = v14;
    swift_bridgeObjectRetain_n();
    sub_24A508CE4(v21, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[0] = v8;
    sub_24A557E84(v18, v21, isUniquelyReferenced_nonNull_native);

    sub_24A517ABC(v21);
    sub_24A5BEC98(v17[0]);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A5DEF14(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    sub_24A62E0F4();
    v1 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
    v2 = sub_24A62E0B4();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = sub_24A5DF19C;
    v4[3] = v3;
    aBlock[4] = sub_24A5DF1B4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5DE6A0;
    aBlock[3] = &unk_285DA98E8;
    v5 = _Block_copy(aBlock);

    aBlock[0] = 0;
    [v1 coordinateReadingItemAtURL:v2 options:0 error:aBlock byAccessor:v5];
    _Block_release(v5);

    v6 = aBlock[0];
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    if (v6)
    {
      v7 = v6;
      sub_24A5DE55C(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_24A5DF164()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_24A5DF1DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_24A5DF1F4()
{
  result = qword_27EF51A48;
  if (!qword_27EF51A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A48);
  }

  return result;
}

double sub_24A5DF248(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_24A5DF29C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24A5DF2F8()
{
  result = qword_27EF51A60;
  if (!qword_27EF51A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A60);
  }

  return result;
}

void sub_24A5DF354(double a1)
{
  v2 = v1;
  if ((v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction + 32] & 1) == 0 && (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 288] & 1) == 0)
  {
    v3 = &v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction];
    a1 = pow(a1 * a1 * a1 * v3[3] + a1 * a1 * ((1.0 - a1) * (v3[2] * 3.0)) + (1.0 - a1) * ((1.0 - a1) * (1.0 - a1)) * *v3 + (1.0 - a1) * (1.0 - a1) * (v3[1] * 3.0) * a1, *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 280]);
  }

  v13 = a1;
  sub_24A5A5308(v14, a1);
  if ((v15 & 1) == 0)
  {
    v4 = v14[0];
    if ((v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor + 8] & 1) == 0 && (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset + 16] & 1) == 0)
    {
      v4 = vaddq_f64(v14[0], vmulq_n_f64(*&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset], v13 * (1.0 - *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor])));
    }

    if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_explodedPosition + 16] & 1) != 0 || (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor + 8])
    {
      [*&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode] setPosition_];
      v5 = v13;
      v6 = 1.0 - v13;
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode] setPosition_];
      v6 = 1.0 - v13;
      v5 = v13;
    }

    v12 = v6;
    v7 = v6 * *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_nonConformedBrightness] + v5 * *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformedBrightness];
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_renderingColor];
    v9 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode];
    v10 = v8;
    sub_24A60CFCC(v10, v7);

    v11 = v12 * *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 104] + v13 * *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 96];

    [v2 setAlpha_];
  }
}

id sub_24A5DF5EC(double a1)
{
  v2 = 1.0;
  v3 = 1.0 - a1;
  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_maxScaleFactor) * a1 + (1.0 - a1) * *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_minScaleFactor);
  v5 = v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style;
  v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 192);
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 200))
  {
    v6 = 1.0;
  }

  v7 = *(v5 + 208);
  if (*(v5 + 216))
  {
    v7 = 1.0;
  }

  v8 = *(v5 + 224);
  if (*(v5 + 232))
  {
    v8 = 1.0;
  }

  if (!*(v5 + 248))
  {
    v2 = *(v5 + 240);
  }

  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling) == 1 && (*(v5 + 264) & 1) == 0)
  {
    v9 = *(v5 + 256);
    v10 = 1.0;
    if (v6 > 1.0)
    {
      v6 = v6 * v9;
      if (v7 <= 1.0)
      {
LABEL_13:
        if (v8 <= 1.0)
        {
          goto LABEL_14;
        }

        goto LABEL_25;
      }
    }

    else if (v7 <= 1.0)
    {
      goto LABEL_13;
    }

    v7 = v7 * v9;
    if (v8 <= 1.0)
    {
LABEL_14:
      if (v2 <= 1.0)
      {
LABEL_16:
        v2 = v2 * v10;
        goto LABEL_17;
      }

LABEL_15:
      v10 = *(v5 + 256);
      goto LABEL_16;
    }

LABEL_25:
    v8 = v8 * v9;
    if (v2 <= 1.0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v11 = v3 * v7 + v2 * a1;
  v12 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode;
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_dotNode) setXScale_];
  [*(v1 + v12) setYScale_];
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_experienceType) == 1)
  {
    [*(v1 + v12) size];
    v14 = v13;
    [*(v1 + v12) xScale];
    v16 = v14 / v15;
    [*(v1 + v12) size];
    v18 = (v17 - v16) * 0.5;
    v19 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode);
  }

  else
  {
    v19 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_gimbalNode);
    v18 = 0.0;
  }

  return [v19 setPosition_];
}

void sub_24A5DF804(double a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset] != 1)
  {
    goto LABEL_29;
  }

  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = &v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
  swift_beginAccess();
  v7 = &v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
  if (v6[35] + *&v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40] == 1.79769313e308)
  {
    goto LABEL_29;
  }

  v8 = &v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
  swift_beginAccess();
  v9 = &v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
  if (v8[35] + *&v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40] == 1.79769313e308)
  {
    goto LABEL_29;
  }

  v10 = &v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style];
  if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 136] & 1) != 0 || (v10[120])
  {
    goto LABEL_29;
  }

  v47 = *(v10 + 16);
  v11 = *(v10 + 14);
  sub_24A55C858(a1);
  v4[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 1;
  sub_24A55C858(a1);
  v5[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 1;
  v12 = *v6 + *v7;
  if (vabdd_f64(v6[35] + v7[5], v12) <= *&v4[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold])
  {
    v12 = v6[35] + v7[5];
  }

  v13 = *v8 + *v9;
  if (vabdd_f64(v8[35] + v9[5], v13) <= *&v5[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold])
  {
    v13 = v8[35] + v9[5];
  }

  v14 = &v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
  *v14 = v12;
  v14[1] = v13;
  *(v14 + 16) = 0;
  if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8])
  {
    v15 = v4;
    v16 = v5;
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
    v18 = v4;
    v19 = v5;
    sub_24A5DF354(v17);
  }

  v20 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_60;
  }

  *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter] = v22;
  if (!v47)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v22 == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_61;
  }

  if (!(v22 % v47))
  {
    v23 = fmax(v11 * *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralDiskRadius], 1.0);
    v24 = v23 + v23;
    if (COERCE__INT64(fabs(v23 + v23)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v25 = sub_24A5EB5CC();
      v26 = v24 * vcvtd_n_f64_u64(v25, 0x35uLL) - v23;
      if (v25 == 0x20000000000000)
      {
        v27 = v23;
      }

      else
      {
        v27 = v26;
      }

      v28 = sub_24A5EB5CC();
      v29.n128_f64[0] = v24 * vcvtd_n_f64_u64(v28, 0x35uLL) - v23;
      if (v28 == 0x20000000000000)
      {
        v30 = v23;
      }

      else
      {
        v30 = v29.n128_f64[0];
      }

      v29.n128_f64[0] = v27;
      sub_24A5A4C78(1, v29, v30);
      goto LABEL_28;
    }

LABEL_62:
    __break(1u);
    return;
  }

LABEL_28:

LABEL_29:
  if (v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor] == 1)
  {
    v31 = *&v1[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring];
    if (v31)
    {
      if (!sub_24A5B19C4())
      {
        sub_24A55C858(a1);
        *(v31 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
        v32 = (v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
        swift_beginAccess();
        v33 = *v32 + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
        if (vabdd_f64(v32[35] + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v33) <= *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
        {
          v33 = v32[35] + *(v31 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
        }

        v34 = &v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
        *v34 = v33;
        *(v34 + 8) = 0;
      }
    }
  }

  v35 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring;
  v36 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_headingSpring];
  if (!sub_24A5B19C4() && *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction])
  {
    sub_24A55C858(a1);
    *(v36 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    v37 = *&v2[v35];
    v38 = (v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    v39 = *v38 + *(v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (vabdd_f64(v38[35] + *(v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v39) <= *(v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v39 = v38[35] + *(v37 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading] = v39;
    [v2 setZRotation_];
  }

  v40 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_noiseSubSpring];
  sub_24A55C858(a1);
  *(v40 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
  v41 = &v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor];
  if ((v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
  {
    v42 = *v41;
    if (*v41 <= 0.0 && v42 <= *&v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style + 56])
    {
      sub_24A5A4608();
      return;
    }

    if (v42 > 0.0)
    {
      sub_24A5A47D0();
      return;
    }

    if (v42 == 1.0)
    {
      v44 = &v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
      v45 = &v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
      if (v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        if ((v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition + 16] & 1) == 0)
        {
LABEL_58:
          sub_24A5A4B5C();
        }
      }

      else
      {
        if (v2[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_initialPeripheralPosition + 16])
        {
          goto LABEL_58;
        }

        if (*v44 != *v45 || v44[1] != v45[1])
        {
          goto LABEL_58;
        }
      }
    }
  }
}

FMFindingUI::FindingModel_optional __swiftcall FindingModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A62F4B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FindingModel.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x74696D69786F7270;
  }
}

void sub_24A5DFE7C(char *a2@<X8>)
{
  v3 = sub_24A62F4B4();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_24A5DFEDC(unint64_t *a1@<X8>)
{
  v2 = 0x800000024A63CED0;
  v3 = 0x74696D69786F7270;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEB00000000495579;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_24A5DFF28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x74696D69786F7270;
  }

  if (v2)
  {
    v4 = 0xEB00000000495579;
  }

  else
  {
    v4 = 0x800000024A63CED0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x74696D69786F7270;
  }

  if (*a2)
  {
    v6 = 0x800000024A63CED0;
  }

  else
  {
    v6 = 0xEB00000000495579;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A62F634();
  }

  return v8 & 1;
}

uint64_t sub_24A5DFFDC()
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

double sub_24A5E006C(uint64_t a1)
{
  sub_24A62EC74();

  return result;
}

uint64_t sub_24A5E00E8(uint64_t a1)
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t FindingExperienceType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = (v2 >> 13) & 3;
  if (!v3)
  {
    v4 = v2 >> 8;
    v5 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = (v2 >> 8) & 0xFFFFFF9F;
    v5 = 1;
LABEL_5:
    MEMORY[0x24C21B040](v5);
    sub_24A62EC74();

    return MEMORY[0x24C21B040](v4);
  }

  MEMORY[0x24C21B040](2);
  if ((v2 & 0x8000) != 0)
  {
    v4 = (v2 >> 8) & 0x1F;
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    return MEMORY[0x24C21B040](v4);
  }

  MEMORY[0x24C21B040](0);
  MEMORY[0x24C21B040](v2);
  return sub_24A62F734();
}

uint64_t FindingExperienceType.hashValue.getter()
{
  v2[39] = *v0;
  sub_24A62F714();
  FindingExperienceType.hash(into:)(v2);
  return sub_24A62F754();
}

uint64_t sub_24A5E02C4()
{
  v2[39] = *v0;
  sub_24A62F714();
  FindingExperienceType.hash(into:)(v2);
  return sub_24A62F754();
}

uint64_t sub_24A5E0314(uint64_t a1)
{
  v3[39] = *v1;
  sub_24A62F714();
  FindingExperienceType.hash(into:)(v3);
  return sub_24A62F754();
}

uint64_t FMFindingTechnology.hash(into:)()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    return MEMORY[0x24C21B040]((v1 >> 8) & 0x7F);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    MEMORY[0x24C21B040](v1);
    return sub_24A62F734();
  }
}

uint64_t FMFindingTechnology.hashValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  sub_24A62F714();
  if (v1 < 0)
  {
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    MEMORY[0x24C21B040]((v2 >> 8) & 0x7F);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    MEMORY[0x24C21B040](v2);
    sub_24A62F734();
  }

  return sub_24A62F754();
}

uint64_t sub_24A5E049C()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    return MEMORY[0x24C21B040]((v1 >> 8) & 0x7F);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    MEMORY[0x24C21B040](v1);
    return sub_24A62F734();
  }
}

uint64_t sub_24A5E050C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  sub_24A62F714();
  if (v2 < 0)
  {
    MEMORY[0x24C21B040](1);
    sub_24A62F734();
    MEMORY[0x24C21B040]((v3 >> 8) & 0x7F);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    MEMORY[0x24C21B040](v3);
    sub_24A62F734();
  }

  return sub_24A62F754();
}

uint64_t sub_24A5E05A8(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 48) + ((v6 << 7) | (2 * v7))) < 0)
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11FMFindingUI0A10TechnologyO2eeoiySbAC_ACtFZ_0(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 & 0x80000000) == 0)
  {
    if ((v3 & 0x80000000) == 0 && v3 == v2)
    {
      return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
    }

    return 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  return ((v3 ^ v2) < 0x100) & (v3 ^ v2 ^ 1);
}

BOOL _s11FMFindingUI21FindingExperienceTypeO2eeoiySbAC_ACtFZ_0(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 13) & 3;
  v5 = v3 & 0x6000;
  if (!v4)
  {
    if ((v3 & 0x6000) == 0)
    {
      if (v2)
      {
        v10 = 0xD000000000000011;
      }

      else
      {
        v10 = 0x74696D69786F7270;
      }

      if (v2)
      {
        v11 = 0x800000024A63CED0;
      }

      else
      {
        v11 = 0xEB00000000495579;
      }

      if (v3)
      {
        v12 = 0xD000000000000011;
      }

      else
      {
        v12 = 0x74696D69786F7270;
      }

      if (v3)
      {
        v13 = 0x800000024A63CED0;
      }

      else
      {
        v13 = 0xEB00000000495579;
      }

      if (v10 == v12 && v11 == v13)
      {
      }

      else
      {
        v15 = sub_24A62F634();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      return (v3 ^ v2) < 0x100;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v5 == 0x2000)
    {
      if (v2)
      {
        v6 = 0xD000000000000011;
      }

      else
      {
        v6 = 0x74696D69786F7270;
      }

      if (v2)
      {
        v7 = 0x800000024A63CED0;
      }

      else
      {
        v7 = 0xEB00000000495579;
      }

      if (v3)
      {
        v8 = 0xD000000000000011;
      }

      else
      {
        v8 = 0x74696D69786F7270;
      }

      if (v3)
      {
        v9 = 0x800000024A63CED0;
      }

      else
      {
        v9 = 0xEB00000000495579;
      }

      if (v6 == v8 && v7 == v9)
      {

        return ((v3 ^ v2) & 0xFFFF9F00) == 0;
      }

      v16 = sub_24A62F634();

      if (v16)
      {
        return ((v3 ^ v2) & 0xFFFF9F00) == 0;
      }
    }

    return 0;
  }

  if (v5 != 0x4000)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if (v3 & 0x80000000) == 0 || ((v3 ^ v2) & 0x1F00) != 0 || ((v3 ^ v2))
    {
      return 0;
    }
  }

  else if (v3 < 0 || v3 != v2 || ((((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8)) & 1) == 0)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_24A5E0890()
{
  result = qword_27EF51A68;
  if (!qword_27EF51A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A68);
  }

  return result;
}

unint64_t sub_24A5E08E8()
{
  result = qword_27EF51A70;
  if (!qword_27EF51A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A70);
  }

  return result;
}

unint64_t sub_24A5E0940()
{
  result = qword_27EF51A78;
  if (!qword_27EF51A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A78);
  }

  return result;
}

unint64_t sub_24A5E0998()
{
  result = qword_27EF51A80;
  if (!qword_27EF51A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A80);
  }

  return result;
}

unint64_t sub_24A5E09F0()
{
  result = qword_27EF51A88;
  if (!qword_27EF51A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindingExperienceType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FE)
  {
    goto LABEL_17;
  }

  if (a2 + 63490 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 63490 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 63490;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 63490;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 63490;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x700 | *a1 & 0xFC | (*a1 >> 13) & 3) ^ 0x7FF;
  if (v6 >= 0x7FD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for FindingExperienceType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63490 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 63490 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7FE)
  {
    v4 = 0;
  }

  if (a2 > 0x7FD)
  {
    v5 = ((a2 - 2046) >> 16) + 1;
    *result = a2 - 2046;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 2) & 0x1FF) - (a2 << 9);
    *result = (16 * v6) & 0x7C00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFindingTechnology(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFF)
  {
    goto LABEL_17;
  }

  if (a2 + 61441 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61441 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61441;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61441;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 15) | (2 * ((*a1 >> 4) & 0x7C0 | (*a1 >> 2)))) ^ 0xFFF;
  if (v6 >= 0xFFE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for FMFindingTechnology(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61441 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61441 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFFE)
  {
    v5 = ((a2 - 4095) >> 16) + 1;
    *result = a2 - 4095;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 1) & 0x7FF) - (a2 << 11);
    *result = (16 * v6) & 0xFC00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_24A5E0E0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v5 setNumberStyle_];
  [v5 setMaximumFractionDigits_];

  *a3 = v5;
}

void sub_24A5E0EB0(char *a1, char a2)
{
  v3 = v2;
  v169 = objc_opt_self();
  v5 = [v169 standardUserDefaults];
  v163 = [v5 fmpfDebugMode];

  if (a2)
  {
    a1 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor);
    v159 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor + 8);
  }

  else
  {
    v159 = 0;
  }

  v161 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode);
  v6 = [v161 children];
  sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
  v7 = sub_24A62ED64();

  v156 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode);
  v8 = [v156 children];
  v9 = sub_24A62ED64();

  v174[0] = v7;
  sub_24A5E5FD0(v9, sub_24A5E84B4);
  v10 = v7;
  v11 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12 >> 62)
  {
    goto LABEL_18;
  }

  swift_bridgeObjectRetain_n();
  sub_24A62F644();
  for (i = v12; ; i = sub_24A62F454())
  {

    *v173 = v10;
    sub_24A5E5FD0(i, sub_24A5E84B4);
    v14 = v10;
    if (v10 >> 62)
    {
      break;
    }

    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_20;
    }

LABEL_8:
    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x24C21ACB0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v10 = v17;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v17 removeFromParent];

      ++v16;
      if (v18 == v15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
  }

  v15 = sub_24A62F464();
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_20:

  *(v3 + v11) = MEMORY[0x277D84F90];

  v19 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize);
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize + 8) < v19)
  {
    v19 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_sceneSize + 8);
  }

  v20 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style);
  v21 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style);
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style + 8))
  {
    v21 = 1.0;
  }

  v22 = v19 * v21;
  v23 = *(v20 + 2);
  v24 = *(v20 + 3);
  v25 = v19 * v21 - v23;
  v26 = v23 + 2.22044605e-16;
  v152 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style);
  if (v23 + 2.22044605e-16 <= v19 * v21 * *(v20 + 4))
  {
    v26 = v22 * *(v20 + 4);
  }

  v150 = *(v20 + 2);
  v167 = v26 * 0.5;
  v27 = v26 * 0.5 + v23 * -0.5;
  v28 = 0.0 - v27;
  v166 = v27 / tan(v24);
  v29 = v25 * 0.5 - v166;
  v30 = v27 + 0.0;
  v164 = cos(v24);
  v31 = &property descriptor for FMFindingViewController.dismissedHandler;
  [v156 addChild_];
  v32 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode);
  [v161 addChild_];
  v33 = &property descriptor for FMFindingViewController.dismissedHandler;
  v34 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v34 moveToPoint_];
  [v34 addLineToPoint_];
  [v34 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v144 = v34;
  v35 = [v34 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 whiteColor];
  [v39 setStrokeColor_];

  [v39 setLineCap_];
  v41 = qword_27EF4EA08;
  v42 = v39;
  if (v41 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v43 = *&qword_27EF5C238;
    [v42 setAlpha_];

    v143 = v42;
    [v32 v31[251]];
    v44 = [objc_allocWithZone(MEMORY[0x277D75208]) v33[162]];
    [v44 moveToPoint_];
    [v44 addLineToPoint_];
    [v44 closePath];
    v142 = v44;
    v45 = [v44 CGPath];
    v46 = v33;
    v47 = v31;
    v48 = v32;
    v49 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v50 = v49;
    v51 = [v38 whiteColor];
    [v50 setStrokeColor_];

    [v50 setLineCap_];
    [v50 setAlpha_];
    v141 = v50;
    [v48 v47 + 1411];
    v52 = [objc_allocWithZone(MEMORY[0x277D75208]) v46[162]];
    [v52 moveToPoint_];
    [v52 addLineToPoint_];
    [v52 closePath];
    v140 = v52;
    v53 = [v52 CGPath];
    v54 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v55 = v54;
    v56 = [v38 whiteColor];
    [v55 setStrokeColor_];

    [v55 setLineCap_];
    [v55 setAlpha_];
    v148 = v48;
    v139 = v55;
    [v48 addChild_];
    sub_24A50D7EC(0, &unk_27EF51830, 0x277D75208);
    v138 = sub_24A578A28(0.0, 0.0, v167 + v167, v22);
    v57 = [v138 CGPath];
    v58 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v59 = v58;
    v60 = [v38 whiteColor];
    [v59 setStrokeColor_];

    v61 = v59;
    [v61 setAlpha_];
    v31 = &property descriptor for FMFindingViewController.dismissedHandler;
    [v161 addChild_];
    v62 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode;
    v63 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) = v61;

    v165 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;
    v22 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius);
    v137 = [objc_opt_self() bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v22 clockwise:{-3.14159265, 3.14159265}];
    v64 = [v137 CGPath];
    v65 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v66 = v65;
    v151 = v38;
    v67 = [v38 whiteColor];
    [v66 setStrokeColor_];

    v68 = v66;
    [v68 setAlpha_];
    [v68 setZPosition_];
    [v161 addChild_];
    v38 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode;
    v69 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode) = v68;

    v42 = [v169 standardUserDefaults];
    v70 = [v42 fmpfArrowDotCount];

    if (__OFSUB__(v70, 1))
    {
      break;
    }

    v71 = fmax((v25 + v166 / v164 + v166 / v164) / (v70 - 1), 2.22044605e-16);
    v72 = round(v166 / v164 / v71);
    if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_52;
    }

    if (v72 <= -9.22337204e18)
    {
      goto LABEL_53;
    }

    if (v72 >= 9.22337204e18)
    {
      goto LABEL_54;
    }

    if (__OFADD__(v72, 1))
    {
      goto LABEL_55;
    }

    v157 = v72 + 1;
    v73 = round(v25 / v71);
    if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_56;
    }

    if (v73 <= -9.22337204e18)
    {
      goto LABEL_57;
    }

    if (v73 >= 9.22337204e18)
    {
      goto LABEL_58;
    }

    if (__OFADD__(v73, 1))
    {
      goto LABEL_59;
    }

    v70 = &property descriptor for FMFindingViewController.dismissedHandler;
    v149 = (v73 + 1);
    v146 = v38;
    v136 = v61;
    v154 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_explodedDiskRadius;
    v153 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor);
    v155 = qword_27EF5C220;
    v42 = v3;
    v74 = sub_24A5E8854(v157, 1, qword_27EF5C220, *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor), *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformedToExplodedFactor + 8), a1, v159, 0, v28, v29, 0.0, v25 * 0.5, *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_explodedDiskRadius), *&v165[v3]);
    v31 = v75;
    v164 = *&OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode;
    v134 = v74;
    [*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) &selRef_frame + 3];
    v135 = v68;
    v147 = v62;
    if (v31 >> 62)
    {
      goto LABEL_60;
    }

    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v145 = v31;
    if (!v32)
    {
      goto LABEL_61;
    }

LABEL_38:
    v33 = 0;
    ObjCClassFromMetadata = (v31 & 0xC000000000000001);
    v70 = v31 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (ObjCClassFromMetadata)
      {
        v76 = MEMORY[0x24C21ACB0](v33, v31);
      }

      else
      {
        if (v33 >= *(v70 + 16))
        {
          goto LABEL_49;
        }

        v76 = v31[v33 + 4];
      }

      v42 = v76;
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      swift_beginAccess();
      v77 = v42;
      MEMORY[0x24C21A660]();
      if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A62ED84();
        v31 = v145;
      }

      v42 = (v3 + v11);
      sub_24A62EDA4();
      swift_endAccess();

      v33 = (v33 + 1);
      if (v38 == v32)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  v32 = sub_24A62F464();
  v145 = v31;
  if (v32)
  {
    goto LABEL_38;
  }

LABEL_61:
  v78 = sub_24A5E8854(v157, 1, v155, *v153, *(v153 + 8), a1, v159, v157, v30, v29, 0.0, v25 * 0.5, *(v3 + v154), *&v165[v3]);
  v80 = v79;
  v133 = v78;
  [*(v3 + *&v164) addChild_];
  v168 = v11;
  v170 = v3;
  if (v80 >> 62)
  {
    goto LABEL_75;
  }

  for (j = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24A62F464())
  {
    v82 = 0;
    *&v166 = v80 & 0xC000000000000001;
    while (1)
    {
      if (v166 == 0.0)
      {
        if (v82 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v83 = *(v80 + 8 * v82 + 32);
      }

      else
      {
        v83 = MEMORY[0x24C21ACB0](v82, v80);
      }

      v84 = v83;
      v85 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      v3 = v80;
      v70 = v168;
      swift_beginAccess();
      v86 = v84;
      MEMORY[0x24C21A660]();
      if (*((*(v170 + v70) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v170 + v70) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      swift_endAccess();

      ++v82;
      if (v85 == j)
      {
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

LABEL_76:
  if (v157 + 0x4000000000000000 < 0)
  {
    goto LABEL_115;
  }

  v3 = v170;
  v87 = COERCE_DOUBLE(sub_24A5E8854(v149, 0, v155, *v153, *(v153 + 8), a1, v159, 2 * v157, 0.0, v25 * -0.5, 0.0, v25 * 0.5, *(v170 + v154), *&v165[v170]));
  v70 = v88;
  [*(v170 + *&v164) addChild_];
  v166 = v87;
  if (v70 >> 62)
  {
    goto LABEL_116;
  }

  v89 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v90 = v168;
    if (v89)
    {
      v91 = 0;
      v168 = v70 & 0xC000000000000001;
      while (1)
      {
        if (v168)
        {
          v92 = MEMORY[0x24C21ACB0](v91, v70);
        }

        else
        {
          if (v91 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v92 = *(v70 + 8 * v91 + 32);
        }

        v93 = v92;
        v94 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          break;
        }

        swift_beginAccess();
        v95 = v93;
        MEMORY[0x24C21A660]();
        if (*((*(v3 + v90) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v90) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A62ED84();
          v3 = v170;
        }

        sub_24A62EDA4();
        swift_endAccess();

        ++v91;
        if (v94 == v89)
        {
          goto LABEL_90;
        }
      }

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
      v89 = sub_24A62F464();
      continue;
    }

    break;
  }

LABEL_90:
  [v156 addChild_];
  if (v163)
  {
    v96 = [v151 yellowColor];
  }

  else
  {
    v96 = qword_27EF5C228;
  }

  v97 = v96;
  v168 = v80;
  v98 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode;
  v99 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_noonNode);
  if (v99)
  {
    [v99 removeFromParent];
  }

  v171 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType;
  v172 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType);
  v100 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_findingType;
  v173[0] = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_findingType);
  v101 = *&v165[v3];
  v102 = *(v152 + 14);
  v103 = type metadata accessor for FMPFSKPeripheralDotNode();
  objc_allocWithZone(v103);
  v160 = v97;
  v104 = sub_24A51D718(&v172, v173, 1852796750, 0xE400000000000000, v97, v101, 0, v102, v150, 0, 0, 0, 0x3FF0000000000000, 0, 0, 0, 1);
  [v3 addChild_];
  [*&v104[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] removeFromParent];
  v80 = *(v3 + v98);
  *(v3 + v98) = v104;
  v105 = v104;

  if (v163)
  {
    v106 = [v151 purpleColor];
  }

  else
  {
    v106 = qword_27EF5C230;
  }

  v107 = v106;
  v158 = v105;
  v108 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode;
  v109 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_pointeeNode);
  if (v109)
  {
    [v109 removeFromParent];
  }

  v172 = *(v3 + v171);
  v173[0] = *(v3 + v100);
  v110 = *&v165[v3];
  v111 = *(v152 + 12);
  v112 = objc_allocWithZone(v103);
  v170 = v107;
  v113 = sub_24A51D718(&v172, v173, 0x6565746E696F50, 0xE700000000000000, v107, v110, 0, v111, v150, 0, 0, 0, 0x3FF0000000000000, 0, 0, 0, 1);
  [v3 addChild_];
  v114 = *(v3 + v108);
  *(v3 + v108) = v113;
  v165 = v113;

  [v161 setHidden_];
  [*(v3 + v147) setHidden_];
  [*&v146[v3] setHidden_];
  v115 = [v148 children];
  v116 = sub_24A62ED64();

  if (!(v116 >> 62))
  {
    v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v117)
    {
      goto LABEL_118;
    }

    goto LABEL_102;
  }

  v117 = sub_24A62F464();
  if (v117)
  {
LABEL_102:
    v118 = 0;
    v70 = 0x277CDC000uLL;
    do
    {
      if ((v116 & 0xC000000000000001) != 0)
      {
        v119 = MEMORY[0x24C21ACB0](v118, v116);
      }

      else
      {
        if (v118 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_114;
        }

        v119 = *(v116 + 8 * v118 + 32);
      }

      v120 = v119;
      v80 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        goto LABEL_113;
      }

      objc_opt_self();
      v121 = swift_dynamicCastObjCClass();
      if (v121)
      {
        [v121 setLineWidth_];
      }

      ++v118;
    }

    while (v80 != v117);
  }

LABEL_118:

  [*(v3 + *&v164) setHidden_];
  if (v163)
  {
    v122 = [v151 yellowColor];
    v123 = [v122 colorWithAlphaComponent_];

    v124 = v158;
    sub_24A51E82C(v123);
    v125 = [v151 purpleColor];
    v126 = [v125 colorWithAlphaComponent_];

    v127 = v126;
    v129 = v135;
    v128 = v136;
    v130 = v166;
    v131 = v160;
    v132 = v170;
  }

  else
  {
    v131 = v160;
    v124 = v158;
    sub_24A51E82C(v160);
    v132 = v170;
    v127 = v170;
    v129 = v135;
    v128 = v136;
    v130 = v166;
  }

  sub_24A51E82C(v127);
  [v124 setHidden_];

  [v165 setHidden_];
}

void sub_24A5E23D0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v20[0] = v4 + 32;
  v20[1] = v5;
  v6 = sub_24A62F5F4();
  if (v6 >= v5)
  {
    if (v5 >= 2)
    {
      v10 = (v4 + 48);
      v11 = -1;
      for (i = 1; i != v5; ++i)
      {
        v13 = *(v4 + 32 + 16 * i + 8);
        v14 = v11;
        v15 = v10;
        do
        {
          if (v13 >= *(v15 - 1))
          {
            break;
          }

          v16 = *v15;
          *v15 = *(v15 - 1);
          *(v15 - 1) = v13;
          *(v15 - 2) = v16;
          v15 -= 2;
        }

        while (!__CFADD__(v14++, 1));
        v10 += 2;
        --v11;
      }
    }
  }

  else
  {
    v7 = v6;
    v8 = (v5 >> 1);
    if (v5 >= 2)
    {
      type metadata accessor for CGPoint(0);
      v9 = sub_24A62ED94();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v18[0] = (v9 + 32);
    v18[1] = v8;
    sub_24A5E63F4(v18, v19, v20, v7);
    *(v9 + 16) = 0;
  }

  *a1 = v4;
}

uint64_t sub_24A5E252C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24A5E8840(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v22[0] = v4 + 32;
  v22[1] = v6;
  result = sub_24A62F5F4();
  if (result < v6)
  {
    v8 = result;
    v9 = (v6 >> 1);
    if (v6 >= 2)
    {
      type metadata accessor for FMPFSKPatternFragmentNode();
      v10 = sub_24A62ED94();
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v21[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
    v21[1] = v9;
    sub_24A5E700C(v21, v23, v22, v8, a2);
    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return sub_24A62F3F4();
  }

  if (v6 < 2)
  {
    return sub_24A62F3F4();
  }

  v11 = -1;
  v12 = 1;
  v13 = (v4 + 32);
LABEL_9:
  v14 = *(v4 + 32 + 8 * v12);
  v15 = v11;
  v16 = v13;
  while (1)
  {
    v17 = v14 + *a2;
    if (*(v17 + 16))
    {
      break;
    }

    v18 = *v16;
    v19 = *v16 + *a2;
    if (*(v19 + 16))
    {
      goto LABEL_20;
    }

    if (*(v17 + 8) < *(v19 + 8))
    {
      *v16 = v14;
      v16[1] = v18;
      --v16;
      if (!__CFADD__(v15++, 1))
      {
        continue;
      }
    }

    ++v12;
    ++v13;
    --v11;
    if (v12 == v6)
    {
      return sub_24A62F3F4();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24A5E26B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24A5E8840(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = (v2 + 32);
  v6[1] = v4;
  sub_24A5E6228(v6);
  return sub_24A62F3F4();
}

void sub_24A5E272C(uint64_t a1, char a2)
{
  if (v2[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_experienceType] != 1 || (v2[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 48] & 1) != 0 || *&v2[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 40] < 1)
  {
    return;
  }

  v169 = &v2[OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config];
  LOBYTE(v191) = a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v189[0] = v2;
  v5 = *&v2[v4];
  v192[0] = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_232;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v8 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C21ACB0](v8, v5);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_18;
    }

LABEL_13:
    if (*(v9 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16) & 1) != 0 || (*(v9 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
    {
    }

    else
    {
      sub_24A62F3E4();
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
    }

    ++v8;
    if (v10 == v6)
    {
      goto LABEL_19;
    }
  }

  if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_217;
  }

  v9 = *(v5 + 8 * v8 + 32);
  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v11 = v192[0];
  v7 = MEMORY[0x277D84F90];
LABEL_21:

  v192[0] = sub_24A5E8420(v12);
  v5 = 0;
  sub_24A5E252C(v192, &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
  v13 = v192[0];
  v192[0] = v7;
  v14 = (v13 >> 62) & 1;
  if (v13 < 0)
  {
    LODWORD(v14) = 1;
  }

  v173 = v14;
  if (v14 == 1)
  {
    v15 = sub_24A62F464();
    if (v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v15 = *(v13 + 16);
    if (v15)
    {
LABEL_25:
      v16 = 0;
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x24C21ACB0](v16, v13);
        }

        else
        {
          if (v16 >= *(v13 + 16))
          {
            goto LABEL_219;
          }

          v17 = *(v13 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_218;
        }

        if ([v17 isHidden])
        {
        }

        else
        {
          sub_24A62F3E4();
          sub_24A62F414();
          sub_24A62F424();
          sub_24A62F3F4();
        }

        ++v16;
      }

      while (v19 != v15);
      v7 = v192[0];
    }
  }

  v20 = v7 < 0 || (v7 & 0x4000000000000000) != 0;
  if (!v20)
  {
    if (*(v7 + 16))
    {
      goto LABEL_41;
    }

LABEL_236:
    v192[0] = 0;
    v192[1] = 0xE000000000000000;
    v7 = v192;
    sub_24A62F384();
    MEMORY[0x24C21A5D0](0x1000000000000016, 0x800000024A6429D0);
    v24 = [v189[0] description];
    v5 = sub_24A62EC14();
    v23 = v144;

    MEMORY[0x24C21A5D0](v5, v23);

    MEMORY[0x24C21A5D0](0xD00000000000002ALL, 0x800000024A6429F0);
    LODWORD(v167) = 0;
    v166 = 377;
    sub_24A62F444();
    __break(1u);
LABEL_237:
    v145 = sub_24A62F464();
    v26 = v145 - v23;
    if (!__OFSUB__(v145, v23))
    {
      goto LABEL_54;
    }

LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  if (!sub_24A62F464())
  {
    goto LABEL_236;
  }

LABEL_41:
  if (v173)
  {
    v21 = sub_24A62F464();
  }

  else
  {
    v21 = *(v13 + 16);
  }

  v22 = v21;
  if (v191)
  {
    v3 = v22 * 0.5;
    if (!v20)
    {
      goto LABEL_46;
    }

LABEL_48:
    v23 = sub_24A62F464();
  }

  else
  {
    v3 = (1.0 - *&a1) * v22;
    if (v20)
    {
      goto LABEL_48;
    }

LABEL_46:
    v23 = *(v7 + 16);
  }

  LODWORD(v24) = v11 < 0 || (v11 & 0x4000000000000000) != 0;
  if (v24 == 1)
  {
    goto LABEL_237;
  }

  v25 = *(v11 + 16);
  v26 = v25 - v23;
  if (__OFSUB__(v25, v23))
  {
    goto LABEL_239;
  }

LABEL_54:
  v27 = v3 - (v23 / 2);
  if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v180 = v7;
  v171 = v15;
  if (v27 < 0)
  {
    if (v26 <= 0)
    {
      goto LABEL_60;
    }

    v26 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_61:
    v28 = v23;
    v175 = v26;
    v29 = sub_24A62F464();
  }

  else
  {
    if (v26 >= v27)
    {
      v26 = v27;
    }

LABEL_60:
    if (v24)
    {
      goto LABEL_61;
    }

LABEL_64:
    v28 = v23;
    v175 = v26;
    v29 = *(v11 + 16);
  }

  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v29 != v30)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x24C21ACB0](v30, v11);
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (v30 >= *(v11 + 16))
      {
        goto LABEL_216;
      }

      v32 = *(v11 + 8 * v30 + 32);
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
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
        v6 = sub_24A62F464();
        goto LABEL_6;
      }
    }

    v191 = *&v32[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
    v34 = v32[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16];

    ++v30;
    if ((v34 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_24A617A30(0, *(v31 + 2) + 1, 1, v31);
      }

      v36 = *(v31 + 2);
      v35 = *(v31 + 3);
      v37 = v191;
      if (v36 >= v35 >> 1)
      {
        v38 = sub_24A617A30((v35 > 1), v36 + 1, 1, v31);
        v37 = v191;
        v31 = v38;
      }

      *(v31 + 2) = v36 + 1;
      *&v31[16 * v36 + 32] = v37;
      v30 = v33;
    }
  }

  v192[0] = v31;

  sub_24A5E23D0(v192, sub_24A5E882C);
  v168 = v5;
  if (v5)
  {
    goto LABEL_248;
  }

  v183 = v13;

  if (v28 < 0)
  {
    goto LABEL_243;
  }

  v182 = v192[0];
  v39 = v175;
  v179 = v28;
  if (v28)
  {
    v40 = 0;
    v177 = v192[0] + 32;
    v3 = 3.14159265;
    v170 = 0xC01921FB54442D18;
    do
    {
      if (v39 < 0)
      {
        goto LABEL_220;
      }

      if (v40 + v39 >= *(v182 + 16))
      {
        goto LABEL_221;
      }

      v191 = *(v177 + 16 * (v40 + v39));
      if ((v180 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x24C21ACB0](v40, v180);
      }

      else
      {
        if (v40 >= *(v180 + 16))
        {
          goto LABEL_229;
        }

        v43 = *(v180 + 32 + 8 * v40);
      }

      v44 = v43;
      v45 = &v43[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
      *v45 = v191;
      *(v45 + 16) = 0;
      v46 = &v43[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
      if (v43[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        v47 = 1;
        v48 = *v46;
      }

      else
      {
        v49 = *v46;
        if (v43[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle])
        {
          v50 = sub_24A62F634();

          v39 = v175;
          if ((v50 & 1) == 0)
          {
            v47 = v46[16];
            v48 = *v46;
            goto LABEL_100;
          }
        }

        else
        {
        }

        *&v191 = *&v44[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
        v52 = *&v44[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style];
        sub_24A5E5268(v51, 0.0, 3.14159265);
        v54 = v53 * 0.25;
        v55 = 2.0;
        if (v49 > 0.0)
        {
          v55 = -2.0;
        }

        v57 = __sincos_stret(v52 * (v55 * v54) + 1.57079633);
        v56.f64[0] = v57.__cosval;
        v47 = 0;
        v56.f64[1] = v57.__sinval;
        v48 = vmulq_n_f64(v56, *&v191);
      }

LABEL_100:
      v5 = &v44[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
      *v5 = v48;
      *(v5 + 16) = v47;
      v58 = 0.0;
      if ((v45[2] & 1) == 0 && (v47 & 1) == 0)
      {
        v187 = v48;
        *v189 = *v45;
        v61 = v45[1];
        v62 = sub_24A5A4124(*v45);
        v64 = v63;
        v65 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
        *&v66.f64[0] = v62;
        v66.f64[1] = v67;
        v185 = v66;
        v60 = 0.0;
        v68 = *v189;
        v69 = 1;
        while (1)
        {
          *&v191 = vcvtd_n_f64_u64(v69, 4uLL);
          *&a1 = 1.0 - *&v191;
          if (v44[v65])
          {
            v71 = sub_24A62F634();

            if (v71)
            {
              goto LABEL_112;
            }

            if (!v44[v65] || v44[v65] != 1)
            {
              v72 = sub_24A62F634();

              if ((v72 & 1) == 0)
              {
                goto LABEL_104;
              }

              goto LABEL_112;
            }
          }

LABEL_112:
          if ((v64 & 1) == 0)
          {
            v70 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v185, *&v191), vmulq_n_f64(*v189, *&a1)), *&a1), vmulq_n_f64(vaddq_f64(vmulq_n_f64(v187, *&v191), vmulq_n_f64(v185, *&a1)), *&v191));
            goto LABEL_105;
          }

LABEL_104:
          v70 = vaddq_f64(vmulq_n_f64(v187, *&v191), vmulq_n_f64(*v189, *&a1));
LABEL_105:
          v60 = v60 + sqrt((v70.f64[0] - v68) * (v70.f64[0] - v68) + (v70.f64[1] - v61) * (v70.f64[1] - v61));
          ++v69;
          v61 = v70.f64[1];
          v68 = v70.f64[0];
          if (v69 == 17)
          {
            v59 = 0;
            v39 = v175;
            goto LABEL_115;
          }
        }
      }

      v59 = 1;
      v60 = 0.0;
LABEL_115:
      v73 = &v44[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
      *v73 = v60;
      *(v73 + 8) = v59;
      if (*(v5 + 16) & 1) != 0 || (v46[16])
      {
        v41 = 1;
      }

      else
      {
        v74 = *v46;
        v75 = *(v46 + 1);
        v77 = *v5;
        v76 = *(v5 + 8);
        v78 = hypot(*v46, v75);
        v79 = atan2(v76, v77);
        v80 = atan2(v75, v74);
        v81 = v80 - v79;
        if (vabdd_f64(v80, v79) > 3.14159265)
        {
          if (v79 >= 0.0 || v80 < 0.0)
          {
            if (v80 < 0.0 && v79 >= 0.0)
            {
              v81 = v81 + 6.28318531;
            }
          }

          else
          {
            v81 = v81 + -6.28318531;
          }
        }

        v41 = 0;
        v58 = fabs((v78 + v78) * v81);
      }

      ++v40;
      v42 = &v44[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
      *v42 = v58;
      *(v42 + 8) = v41;
    }

    while (v40 != v179);
  }

  v83 = MEMORY[0x277D84F90];
  v192[0] = MEMORY[0x277D84F90];
  if (v171)
  {
    v84 = 0;
    v85 = v183;
    do
    {
      if ((v183 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x24C21ACB0](v84, v85);
      }

      else
      {
        if (v84 >= *(v85 + 16))
        {
          goto LABEL_223;
        }

        v86 = *(v85 + 8 * v84 + 32);
      }

      v5 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_222;
      }

      if (v86[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        goto LABEL_246;
      }

      if (*&v86[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 8] >= 0.0)
      {
      }

      else
      {
        sub_24A62F3E4();
        sub_24A62F414();
        sub_24A62F424();
        sub_24A62F3F4();
      }

      ++v84;
      v85 = v183;
    }

    while (v5 != v171);
    v87 = v192[0];
    v39 = v175;
  }

  else
  {
    v87 = MEMORY[0x277D84F90];
    v85 = v183;
  }

  v192[0] = sub_24A5E8420(v87);
  sub_24A5E827C();
  v88 = v192[0];
  v192[0] = v83;
  if (v173)
  {
    v89 = sub_24A62F464();
    if (v89)
    {
      goto LABEL_143;
    }

LABEL_156:
    v93 = MEMORY[0x277D84F90];
    goto LABEL_157;
  }

  v89 = *(v85 + 16);
  if (!v89)
  {
    goto LABEL_156;
  }

LABEL_143:
  v90 = 0;
  v5 = v85 & 0xC000000000000001;
  do
  {
    if (v5)
    {
      v91 = MEMORY[0x24C21ACB0](v90, v85);
    }

    else
    {
      if (v90 >= *(v85 + 16))
      {
        goto LABEL_225;
      }

      v91 = *(v85 + 8 * v90 + 32);
    }

    v92 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      goto LABEL_224;
    }

    if (v91[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
    {
      goto LABEL_247;
    }

    if (*&v91[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 8] < 0.0)
    {
    }

    else
    {
      sub_24A62F3E4();
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
    }

    ++v90;
    v85 = v183;
  }

  while (v92 != v89);
  v93 = v192[0];
  v39 = v175;
LABEL_157:

  v192[0] = sub_24A5E8420(v93);
  sub_24A5E827C();
  v94 = v192[0];
  v192[0] = v88;
  sub_24A5E5FD0(v94, sub_24A5E8654);
  v95 = v192[0];
  v170 = v192[0];
  if (v192[0] >> 62)
  {
LABEL_244:
    v146 = sub_24A62F464();
    if ((v146 & 0x8000000000000000) == 0)
    {
      v5 = v146;
      v39 = v175;
      v95 = v170;
      if (v146)
      {
        goto LABEL_159;
      }

      goto LABEL_250;
    }

    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    v147 = v168;
LABEL_287:

    __break(1u);
    return;
  }

  v5 = *((v192[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_159:
    v96 = 0;
    v97 = 0;
    v184 = v95 & 0xC000000000000001;
    v172 = v95 + 32;
    v174 = v95 & 0xFFFFFFFFFFFFFF8;
    v3 = 3.14159265;
    v98 = __OFADD__(v39, v179);
    v179 += v39;
    v99 = v98;
    v178 = v99;
    v176 = v5;
    do
    {
      if (v184)
      {
        v100 = MEMORY[0x24C21ACB0](v97, v95);
      }

      else
      {
        if (v97 >= *(v174 + 16))
        {
          goto LABEL_230;
        }

        v100 = *(v172 + 8 * v97);
      }

      v101 = v100;
      if (![v100 isHidden])
      {

        goto LABEL_164;
      }

      if (v96 == v39)
      {
        v102 = v179;
      }

      else
      {
        v102 = v96;
      }

      if (((v96 == v39) & v178) != 0)
      {
        goto LABEL_231;
      }

      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_226;
      }

      if (v102 >= *(v182 + 16))
      {
        goto LABEL_227;
      }

      v103 = &v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
      *v103 = *(v182 + 32 + 16 * v102);
      *(v103 + 16) = 0;
      v104 = &v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
      v181 = &v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
      if (v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        v105 = 1;
        v106 = *v104;
      }

      else
      {
        v107 = v104->f64[0];
        if (v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle])
        {
          v108 = sub_24A62F634();

          v39 = v175;
          if ((v108 & 1) == 0)
          {
            v105 = v181[16];
            v106 = *v181;
            goto LABEL_185;
          }
        }

        else
        {
        }

        *&v191 = *&v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
        v110 = *&v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style];
        sub_24A5E5268(v109, 0.0, 3.14159265);
        v112 = v111 * 0.25;
        v113 = 2.0;
        if (v107 > 0.0)
        {
          v113 = -2.0;
        }

        v115 = __sincos_stret(v110 * (v113 * v112) + 1.57079633);
        v114.f64[0] = v115.__cosval;
        v105 = 0;
        v114.f64[1] = v115.__sinval;
        v106 = vmulq_n_f64(v114, *&v191);
      }

LABEL_185:
      v116 = &v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
      *v116 = v106;
      v116[16] = v105;
      v117 = 0.0;
      if ((v103[2] & 1) == 0 && (v105 & 1) == 0)
      {
        v188 = v106;
        *v189 = *v103;
        v120 = v103[1];
        v121 = sub_24A5A4124(*v103);
        v123 = v122;
        v124 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
        *&v125.f64[0] = v121;
        v125.f64[1] = v126;
        v186 = v125;
        v119 = 0.0;
        v127 = *v189;
        v128 = 1;
        while (1)
        {
          *&v191 = vcvtd_n_f64_u64(v128, 4uLL);
          *&a1 = 1.0 - *&v191;
          if (v101[v124])
          {
            v130 = sub_24A62F634();

            if (v130)
            {
              goto LABEL_197;
            }

            if (!v101[v124] || v101[v124] != 1)
            {
              v131 = sub_24A62F634();

              if ((v131 & 1) == 0)
              {
                goto LABEL_189;
              }

              goto LABEL_197;
            }
          }

LABEL_197:
          if ((v123 & 1) == 0)
          {
            v129 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v186, *&v191), vmulq_n_f64(*v189, *&a1)), *&a1), vmulq_n_f64(vaddq_f64(vmulq_n_f64(v188, *&v191), vmulq_n_f64(v186, *&a1)), *&v191));
            goto LABEL_190;
          }

LABEL_189:
          v129 = vaddq_f64(vmulq_n_f64(v188, *&v191), vmulq_n_f64(*v189, *&a1));
LABEL_190:
          v119 = v119 + sqrt((v129.f64[0] - v127) * (v129.f64[0] - v127) + (v129.f64[1] - v120) * (v129.f64[1] - v120));
          ++v128;
          v120 = v129.f64[1];
          v127 = v129.f64[0];
          if (v128 == 17)
          {
            v118 = 0;
            v39 = v175;
            v95 = v170;
            goto LABEL_200;
          }
        }
      }

      v118 = 1;
      v119 = 0.0;
LABEL_200:
      v132 = &v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
      *v132 = v119;
      *(v132 + 8) = v118;
      v5 = v176;
      if (v116[16] & 1) != 0 || (v181[16])
      {
        v133 = 1;
      }

      else
      {
        v134 = *v181;
        v135 = *(v181 + 1);
        v137 = *v116;
        v136 = *(v116 + 1);
        v138 = hypot(*v181, v135);
        v139 = atan2(v136, v137);
        v140 = atan2(v135, v134);
        v141 = v140 - v139;
        if (vabdd_f64(v140, v139) > 3.14159265)
        {
          if (v139 >= 0.0 || v140 < 0.0)
          {
            if (v140 < 0.0 && v139 >= 0.0)
            {
              v141 = v141 + 6.28318531;
            }
          }

          else
          {
            v141 = v141 + -6.28318531;
          }
        }

        v133 = 0;
        v117 = fabs((v138 + v138) * v141);
      }

      v143 = &v101[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
      *v143 = v117;
      *(v143 + 8) = v133;

      v96 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        goto LABEL_228;
      }

LABEL_164:
      ++v97;
    }

    while (v97 != v5);
  }

LABEL_250:

  if (v169[16] == 1)
  {

    v148 = v168;
  }

  else
  {
    v149 = *(v169 + 1);

    v192[0] = sub_24A5E8420(v150);
    v148 = v168;
    sub_24A5E252C(v192, &OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
    if (v168)
    {
LABEL_286:
      v147 = v148;
      goto LABEL_287;
    }

    v152 = v192[0];
    if (v192[0] < 0 || (v192[0] & 0x4000000000000000) != 0)
    {
      v151 = sub_24A62F464();
      if ((v151 & 0x8000000000000000) == 0)
      {
        goto LABEL_267;
      }

      __break(1u);
      goto LABEL_265;
    }

    v153 = *(v192[0] + 16);
    if (v153)
    {
      do
      {
        v98 = __OFADD__(v149++, 1);
        if (v98)
        {
LABEL_265:
          __break(1u);
        }

        else if (v149)
        {
          v154 = 0;
          do
          {
            if ((v152 & 0xC000000000000001) != 0)
            {
              v155 = MEMORY[0x24C21ACB0](v154, v152);
            }

            else
            {
              v155 = *(v152 + 8 * v154 + 32);
            }

            v155[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_useAlternateScaling] = v154 % v149 == 0;

            ++v154;
          }

          while (v153 != v154);
          break;
        }

        __break(1u);
LABEL_267:
        v153 = v151;
      }

      while (v151);
    }
  }

  v192[0] = sub_24A5E8420(v156);
  sub_24A5E26B0(v192);
  if (v148)
  {
    goto LABEL_286;
  }

  v157 = v192[0];
  if (v192[0] < 0 || (v192[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_283;
  }

  v158 = *(v192[0] + 16);
  for (i = v158; v158; v158 = sub_24A62F464())
  {
    v160 = 0;
    v161 = 0.0;
    v162 = 1.0 / i;
    while ((v157 & 0xC000000000000001) != 0)
    {
      v163 = MEMORY[0x24C21ACB0](v160, v157);
      v164 = v160 + 1;
      if (__OFADD__(v160, 1))
      {
        goto LABEL_281;
      }

LABEL_277:
      v165 = &v163[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_conformationTimingFunction];
      *v165 = 0;
      *(v165 + 8) = vmulq_n_f64(xmmword_24A63B020, 1.0 - v161);
      *(v165 + 3) = 0x3FF0000000000000;
      v165[32] = 0;

      v161 = v162 + v161;
      ++v160;
      if (v164 == v158)
      {
        goto LABEL_284;
      }
    }

    if (v160 >= *(v157 + 16))
    {
      goto LABEL_282;
    }

    v163 = *(v157 + 8 * v160 + 32);
    v164 = v160 + 1;
    if (!__OFADD__(v160, 1))
    {
      goto LABEL_277;
    }

LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    i = sub_24A62F464();
  }

LABEL_284:
}

void *sub_24A5E3C3C(void *result, void *a2)
{
  v2 = *result + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
  if (*(v2 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *result + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
  if (*(v3 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = *a2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
  if (*(v4 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *a2 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition;
  if ((*(v5 + 16) & 1) == 0)
  {
    v6 = *(v2 + 8) - *(v3 + 8);
    return (v6 * v6 + (*v2 - *v3) * (*v2 - *v3) < (*(v4 + 8) - *(v5 + 8)) * (*(v4 + 8) - *(v5 + 8)) + (*v4 - *v5) * (*v4 - *v5));
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24A5E3CE0(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop + 16))
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom + 16))
  {
    return 0;
  }

  v2 = (v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config);
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 48))
  {
    return 0;
  }

  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop + 8);
    v5 = *(v1 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom + 8);
    v6 = (v4 - v5) / (*v2 - 1) * v2[5] * 0.5;
    if (v6 + a1 < v4)
    {
      v4 = v6 + a1;
    }

    return *&v4;
  }

  return result;
}

void sub_24A5E3D98()
{
  [*(v0 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode) position];
  *&v2 = COERCE_DOUBLE(sub_24A5E3CE0(-v1));
  if ((v4 & 1) == 0)
  {
    v5 = *&v2;
    v6 = v3;
    v7 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v8 = *(v0 + v7);
    if (v8 >> 62)
    {
      goto LABEL_64;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
    {
      v10 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_style;
      v84 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;

      if (!i)
      {
        break;
      }

      v11 = 0;
      v12 = (v5 + *&v6) * 0.5;
      v5 = 4.45014772e-308;
      v83 = v0 + v10;
      v13 = v8 & 0xC000000000000001;
      v6 = v8 & 0xFFFFFFFFFFFFFF8;
      v85 = v8 + 32;
      v14 = -0.5;
      v15 = 0.5;
      v80 = i;
      v81 = v8 & 0xFFFFFFFFFFFFFF8;
      v82 = v8 & 0xC000000000000001;
      v78 = v8;
      v79 = v0;
      v77 = v12;
      while (1)
      {
        if (v13)
        {
          v18 = MEMORY[0x24C21ACB0](v11, v8);
        }

        else
        {
          if (v11 >= *(v6 + 16))
          {
            goto LABEL_62;
          }

          v18 = *(v85 + 8 * v11);
        }

        v19 = v18;
        if (__OFADD__(v11++, 1))
        {
          break;
        }

        if (([v18 isHidden] & 1) == 0)
        {
          v21 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition];
          if ((v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16] & 1) == 0)
          {
            if (v12 <= v21[1])
            {
              do
              {
                v89 = 0;
                v22 = MEMORY[0x24C21BC00](&v89, 8);
              }

              while (0x20000000000001 * v89 < 0x1FFFFFFFFFF801);
              v26 = (v89 * 0x20000000000001uLL) >> 64;
              v25 = 3.14159265;
              if (v26 != 0x20000000000000)
              {
                v25 = vcvtd_n_f64_u64(v26, 0x35uLL) * 3.14159265 + 0.0;
              }
            }

            else
            {
              do
              {
                v89 = 0;
                v22 = MEMORY[0x24C21BC00](&v89, 8);
              }

              while (0x20000000000001 * v89 < 0x1FFFFFFFFFF801);
              v23 = (v89 * 0x20000000000001uLL) >> 64;
              v24 = -(vcvtd_n_f64_u64(v23, 0x35uLL) * 3.14159265 + 2.22044605e-16);
              if (v23 == 0x20000000000000)
              {
                v25 = -3.14159265;
              }

              else
              {
                v25 = v24;
              }
            }

            v27 = *(v83 + 72);
            v28 = v27 * v14;
            v29 = v27 * v15;
            if (v28 > v29)
            {
              goto LABEL_63;
            }

            sub_24A5E5268(v22, v28, v29);
            v31 = *(v0 + v84) * (1.0 - v30);
            v32 = __sincos_stret(v25);
            v33 = v32.__cosval * v31;
            v34 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition];
            *v34 = v32.__cosval * v31;
            v34[1] = v32.__sinval * v31;
            *(v34 + 16) = 0;
            v35 = OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle;
            if (v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_travelingStyle])
            {
              v36 = sub_24A62F634();

              i = v80;
              if ((v36 & 1) == 0)
              {
                v38 = *v34;
                v39 = v34[1];
                v40 = *(v34 + 16);
                goto LABEL_31;
              }
            }

            else
            {
            }

            v41 = *&v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
            v42 = *&v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_style];
            sub_24A5E5268(v37, 0.0, 3.14159265);
            v44 = v43 * 0.25;
            v45 = 2.0;
            if (v33 > 0.0)
            {
              v45 = -2.0;
            }

            v46 = __sincos_stret(v42 * (v45 * v44) + 1.57079633);
            v40 = 0;
            v38 = v41 * v46.__cosval;
            v39 = v41 * v46.__sinval;
LABEL_31:
            v47 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_intermediatePosition];
            *v47 = v38;
            *(v47 + 1) = v39;
            v47[16] = v40;
            v48 = 0.0;
            if (v21[2] & 1) != 0 || (v40)
            {
              v49 = 1;
              v50 = 0.0;
LABEL_46:
              v67 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_curveLength];
              *v67 = v50;
              *(v67 + 8) = v49;
              if (v47[16] & 1) != 0 || (v34[2])
              {
                v16 = 1;
                v5 = 4.45014772e-308;
                v6 = v81;
                v13 = v82;
              }

              else
              {
                v68 = *v34;
                v69 = v34[1];
                v71 = *v47;
                v70 = *(v47 + 1);
                v72 = hypot(*v34, v69);
                v73 = atan2(v70, v71);
                v74 = atan2(v69, v68);
                v75 = v74 - v73;
                if (vabdd_f64(v74, v73) > 3.14159265)
                {
                  if (v73 >= 0.0 || v74 < 0.0)
                  {
                    if (v74 < 0.0 && v73 >= 0.0)
                    {
                      v75 = v75 + 6.28318531;
                    }
                  }

                  else
                  {
                    v75 = v75 + -6.28318531;
                  }
                }

                v5 = 4.45014772e-308;
                v6 = v81;
                v13 = v82;
                v14 = -0.5;
                v15 = 0.5;
                v16 = 0;
                v48 = fabs((v72 + v72) * v75);
              }

              v17 = &v19[OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_arcLength];
              *v17 = v48;
              *(v17 + 8) = v16;
              goto LABEL_8;
            }

            v87 = v39;
            v88 = v38;
            v52 = *v21;
            v51 = v21[1];
            *&v53 = COERCE_DOUBLE(sub_24A5A4124(*v21));
            v55 = v54;
            v86 = *&v53;
            v57 = v56;
            v50 = 0.0;
            v58 = v51;
            v59 = v52;
            v60 = 1;
            while (2)
            {
              v63 = vcvtd_n_f64_u64(v60, 4uLL);
              v64 = 1.0 - v63;
              if (!v19[v35])
              {
LABEL_41:

                goto LABEL_43;
              }

              v65 = sub_24A62F634();

              if (v65)
              {
                goto LABEL_43;
              }

              if (v19[v35] && v19[v35] == 1)
              {
                goto LABEL_41;
              }

              v66 = sub_24A62F634();

              if (v66)
              {
LABEL_43:
                if ((v55 & 1) == 0)
                {
                  v61 = v64 * (v63 * v86 + v59 * v64) + v63 * (v88 * v63 + v64 * v86);
                  v62 = v64 * (v63 * v57 + v58 * v64) + v63 * (v87 * v63 + v64 * v57);
LABEL_36:
                  v50 = v50 + sqrt((v61 - v52) * (v61 - v52) + (v62 - v51) * (v62 - v51));
                  ++v60;
                  v51 = v62;
                  v52 = v61;
                  if (v60 == 17)
                  {
                    v49 = 0;
                    v8 = v78;
                    v0 = v79;
                    i = v80;
                    v12 = v77;
                    v14 = -0.5;
                    v15 = 0.5;
                    v48 = 0.0;
                    goto LABEL_46;
                  }

                  continue;
                }
              }

              break;
            }

            v61 = v88 * v63 + v59 * v64;
            v62 = v87 * v63 + v58 * v64;
            goto LABEL_36;
          }
        }

LABEL_8:

        if (v11 == i)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      ;
    }

LABEL_59:
  }
}

void sub_24A5E44D4(unint64_t a1, char a2)
{
  v3 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v90 = [v6 fmpfDebugMode];

  if (a2)
  {
    v92 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor);
    LOBYTE(v91) = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_conformationFactor + 8);
  }

  else
  {
    v92 = a1;
    LOBYTE(v91) = 0;
  }

  v93 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDebugNode);
  v7 = [v93 children];
  sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
  v8 = sub_24A62ED64();

  v94 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_gimbalNode);
  v9 = [v94 children];
  v10 = sub_24A62ED64();

  sub_24A5E5FD0(v10, sub_24A5E84B4);
  v11 = v8;
  v12 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v96 = v12;
  v13 = *(v3 + v12);
  if (v13 >> 62)
  {
    goto LABEL_18;
  }

  swift_bridgeObjectRetain_n();
  sub_24A62F644();
  for (i = v13; ; i = sub_24A62F454())
  {

    sub_24A5E5FD0(i, sub_24A5E84B4);
    v15 = v11;
    if (v11 >> 62)
    {
      break;
    }

    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_8:
    v17 = 0;
    v18 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        v19 = MEMORY[0x24C21ACB0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      v11 = v19;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v19 removeFromParent];

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
  }

  v16 = sub_24A62F464();
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_20:
  *(v3 + v96) = MEMORY[0x277D84F90];

  v21 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config);
  if (*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_config + 32))
  {
    __break(1u);
    return;
  }

  v22 = *v21;
  v23 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius;
  v24 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_peripheralDiskRadius);
  v25 = v21[3];

  v89 = v22;
  v26 = (v24 + v24) * v22 / v25;
  v27 = -*(v3 + v23);
  v28 = v26 * 0.5;
  v29 = v26 * -0.5;
  v30 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackTop);
  *v30 = v27;
  v30[1] = v26 * 0.5;
  *(v30 + 16) = 0;
  v31 = (v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_trackBottom);
  *v31 = v27;
  v31[1] = v26 * -0.5;
  *(v31 + 16) = 0;
  v32 = &property descriptor for FMFindingViewController.dismissedHandler;
  v33 = v93;
  [v94 addChild_];
  v34 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasPatternSpinesNode);
  [v93 addChild_];
  v35 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v35 moveToPoint_];
  [v35 addLineToPoint_];
  [v35 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v87 = v35;
  v36 = [v35 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 whiteColor];
  v42 = &selRef_effectForBlurEffect_style_;
  [v40 setStrokeColor_];

  [v40 setLineCap_];
  v43 = qword_27EF4EA08;
  v44 = v40;
  if (v43 != -1)
  {
    goto LABEL_37;
  }

  while (2)
  {
    v45 = *&qword_27EF5C238;
    [v44 setAlpha_];

    v95 = v34;
    v86 = v44;
    [v34 v32[251]];
    v85 = [objc_opt_self() bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:*(v3 + v23) clockwise:{-3.14159265, 3.14159265}];
    v46 = [v85 CGPath];
    v47 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v48 = v47;
    v49 = [v39 whiteColor];
    [v48 v42[48]];

    v50 = v48;
    [v50 setAlpha_];
    [v50 setZPosition_];
    [v33 v32[251]];
    v51 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode);
    v84 = v50;
    v88 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode;
    *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasDiskBezierNode) = v50;

    v42 = v3;
    v52 = sub_24A5E9A4C(v89, qword_27EF5C220, v92, v91, 0, v27, v29, v27, v28, *(v3 + v23));
    v54 = v53;
    v91 = v55;
    v92 = OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode;
    v89 = v52;
    [*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_patternFragmentsNode) v32[251]];
    if (!(v54 >> 62))
    {
      v44 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v34;
      if (!v44)
      {
        break;
      }

      goto LABEL_24;
    }

    v44 = sub_24A62F464();
    v39 = v34;
    if (v44)
    {
LABEL_24:
      v23 = 0;
      v34 = (v54 & 0xC000000000000001);
      ObjCClassFromMetadata = (v54 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v34)
        {
          v56 = MEMORY[0x24C21ACB0](v23, v54);
        }

        else
        {
          if (v23 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v56 = v54[v23 + 4];
        }

        v42 = v56;
        v39 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v32 = v54;
        swift_beginAccess();
        v33 = v42;
        MEMORY[0x24C21A660]();
        v57 = v96;
        if (*((*(v3 + v57) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v57) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A62ED84();
          v57 = v96;
        }

        v42 = (v3 + v57);
        sub_24A62EDA4();
        swift_endAccess();

        ++v23;
        v58 = v39 == v44;
        v39 = v95;
        if (v58)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
      continue;
    }

    break;
  }

LABEL_39:
  [v94 addChild_];
  v59 = *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode);
  *(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_labelsNode) = v91;
  v60 = v91;

  [v94 addChild_];
  [v93 setHidden_];
  [*(v3 + OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) setHidden_];
  [*(v3 + v88) setHidden_];
  v61 = [v39 children];
  v62 = sub_24A62ED64();

  v83 = v54;
  if (v62 >> 62)
  {
    goto LABEL_52;
  }

  for (j = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24A62F464())
  {
    v64 = 0;
    while (1)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x24C21ACB0](v64, v62);
      }

      else
      {
        if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v65 = *(v62 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        [v68 setLineWidth_];
      }

      ++v64;
      if (v67 == j)
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

  [*(v3 + v92) setHidden_];
  [v94 position];
  *&v70 = COERCE_DOUBLE(sub_24A5E3CE0(-v69));
  if ((v72 & 1) == 0)
  {
    v73 = *&v70;
    v74 = v71;
    v75 = *(v3 + v96);
    if (v75 >> 62)
    {
      goto LABEL_73;
    }

    for (k = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_24A62F464())
    {

      if (!k)
      {
        break;
      }

      v77 = 0;
      v78 = v73 + 1.0;
      while (1)
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v79 = COERCE_DOUBLE(MEMORY[0x24C21ACB0](v77, v75));
        }

        else
        {
          if (v77 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          *&v79 = *(v75 + 8 * v77 + 32);
        }

        v73 = v79;
        v80 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if ((*(*&v79 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16) & 1) == 0)
        {
          v81 = *(*&v79 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 8);
          v82 = v74 + -1.0 > v81 || v81 > v78;
          [*&v79 setHidden_];
        }

        ++v77;
        if (v80 == k)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

LABEL_69:
  }

  sub_24A5E272C(0, 1);
}

void *sub_24A5E4FC4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_24A508FA4(&unk_27EF4FF40, &unk_24A635E60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_24A5E5054(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_24A508FA4(&qword_27EF51AC0, &qword_24A63B080);
  v4 = *(sub_24A62E214() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24A5E5150(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_24A5E51DC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C21BC00](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C21BC00](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5E5280(uint64_t result, uint64_t (*a2)(uint64_t, double, double), double a3, double a4)
{
  if (a3 == a4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a4 - a3;
  if (COERCE__INT64(fabs(a4 - a3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = 0;
  result = MEMORY[0x24C21BC00](&v9, 8);
  if (v6 * vcvtd_n_f64_u64(v9 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a3 == a4)
  {
    return a2(v8, a3, a4);
  }

  return result;
}

char *sub_24A5E532C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A5E545C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A508FA4(&qword_27EF51AC0, &qword_24A63B080);
  v10 = *(sub_24A62E214() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24A62E214() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24A5E5634(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_24A5E578C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A508FA4(a5, a6);
  v16 = *(sub_24A508FA4(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_24A508FA4(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_24A5E5974(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A508FA4(&unk_27EF52400, &qword_24A63B068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_24A5E5AC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_24A508FA4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A508FA4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24A5E5C2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_24A508FA4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A508FA4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_24A5E5D64(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_24A62F464();
  }

  return sub_24A62F3A4();
}

void sub_24A5E5DDC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_24A617A0C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_24A5E5EE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_24A617A30(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_24A5E5FD0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_24A62F464();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_24A62F464();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_24A5E6188(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_24A5E60CC(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_24A62F464();
    }

    result = sub_24A62F3A4();
    *v2 = result;
  }

  return result;
}

uint64_t sub_24A5E6188(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24A62F464();
LABEL_9:
  result = sub_24A62F3A4();
  *v2 = result;
  return result;
}

void sub_24A5E6228(uint64_t **a1)
{
  v2 = a1[1];
  v3 = sub_24A62F5F4();
  if (v3 >= v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v2 < 2)
      {
        return;
      }

      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
LABEL_9:
      v11 = *(v7 + 8 * v9);
      v12 = v8;
      v13 = v10;
      while (1)
      {
        v14 = (v11 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v11 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_25;
        }

        v15 = (v11 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v11 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_27;
        }

        v16 = *v13;
        v17 = *v13 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v17 + 16))
        {
          goto LABEL_26;
        }

        if (*(v16 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_24;
        }

        v19 = v14[1] - v15[1];
        v18 = (v16 + OBJC_IVAR____TtC11FMFindingUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (v19 * v19 + (*v14 - *v15) * (*v14 - *v15) < (*(v17 + 8) - v18[1]) * (*(v17 + 8) - v18[1]) + (*v17 - *v18) * (*v17 - *v18))
        {
          if (!v7)
          {
            goto LABEL_28;
          }

          *v13 = v11;
          v13[1] = v16;
          --v13;
          if (!__CFADD__(v12++, 1))
          {
            continue;
          }
        }

        ++v9;
        ++v10;
        --v8;
        if (v9 == v2)
        {
          return;
        }

        goto LABEL_9;
      }
    }
  }

  else
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
        type metadata accessor for FMPFSKPatternFragmentNode();
        v6 = sub_24A62ED94();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v21[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v21[1] = v5;
      sub_24A5E6970(v21, v22, a1, v4);
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}