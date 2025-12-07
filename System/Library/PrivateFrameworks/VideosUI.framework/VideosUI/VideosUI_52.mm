uint64_t objectdestroy_313Tm()
{

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_287Tm()
{

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_297Tm()
{
  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_303Tm_0()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t objectdestroy_439Tm()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_229();

  v2 = OUTLINED_FUNCTION_46_23();
  v3(v2);

  OUTLINED_FUNCTION_191_0();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

id sub_1E3A4C17C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_144_0();
  v5 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v5);
  OUTLINED_FUNCTION_195_0();
  result = sub_1E32AE9B0(a3);
  if (result)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v13 = OUTLINED_FUNCTION_321();
      v7 = MEMORY[0x1E6911E60](v13);
    }

    else
    {
      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v7 = *(a3 + 32);
    }

    v8 = v7;
    v9 = [v7 toObject];

    if (v9)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
      OUTLINED_FUNCTION_77_8();
      swift_dynamicCast();
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_1E325F6F0(&v16, &unk_1ECF296E0, &unk_1E4298030);
LABEL_12:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1E3A333C8();
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v12 = result;

    return v12;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E3A4C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_247();
  v8 = v7(v6);
  OUTLINED_FUNCTION_17_2(v8);
  v9 = OUTLINED_FUNCTION_124();
  return a5(v9);
}

uint64_t objectdestroy_455Tm()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

void sub_1E3A4C518()
{
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);

  sub_1E3A43D18();
}

uint64_t objectdestroy_467Tm()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_229();

  v2 = OUTLINED_FUNCTION_46_23();
  v3(v2);

  OUTLINED_FUNCTION_191_0();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

void sub_1E3A4C678()
{
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  sub_1E3A44474();
}

uint64_t sub_1E3A4C730()
{
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FE414();
  v5 = *(v2 - 8);
  result = v2 - 8;
  v4 = v5;
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    sub_1E328438C(v1, v12);
    OUTLINED_FUNCTION_77_8();
    if (swift_dynamicCast())
    {
      v8 = v10;
      v9 = v11;
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    v6(v0 + v7, v8, v9, 1, 0);
  }

  return result;
}

void sub_1E3A4C83C()
{
  OUTLINED_FUNCTION_50_19();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();
  OUTLINED_FUNCTION_281();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_13_8();

  sub_1E3A3FE68();
}

void sub_1E3A4C8D0()
{
  OUTLINED_FUNCTION_50_19();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_29_38();
  OUTLINED_FUNCTION_13_8();

  sub_1E3A2FC0C();
}

uint64_t objectdestroyTm_20()
{
  OUTLINED_FUNCTION_335();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v13 = v6;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  OUTLINED_FUNCTION_232();
  v8 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_69_11();
  (*(v5 + 8))(v1 + v7, v13);

  (*(v10 + 8))(v1 + v0, v8);
  if (*(v1 + v2))
  {
  }

  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_15_36();

  return swift_deallocObject();
}

uint64_t sub_1E3A4CAC8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_9_5();
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_29_38();
  v11 = *(v3 + v8);
  v12 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = (v3 + v13);
  v15 = *v14;
  v16 = v14[1];

  return a2(v2, v3 + v6, v11, v12, v3 + v10, v15, v16);
}

uint64_t objectdestroy_269Tm()
{
  OUTLINED_FUNCTION_335();
  v12 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  OUTLINED_FUNCTION_232();
  v7 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_69_11();

  (*(v5 + 8))(v1 + v6, v12);
  (*(v9 + 8))(v1 + v0, v7);
  if (*(v1 + v2))
  {
  }

  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_15_36();

  return swift_deallocObject();
}

void sub_1E3A4CD24()
{
  OUTLINED_FUNCTION_11_14();
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v0);
  v1 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_53();
  sub_1E3A40D68();
}

uint64_t sub_1E3A4CE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_247();
  v5 = sub_1E41FE414();
  OUTLINED_FUNCTION_8_0(v5);
  v6 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_8_0(v6);
  OUTLINED_FUNCTION_29_38();
  v7 = OUTLINED_FUNCTION_124();
  return a4(v7);
}

uint64_t OUTLINED_FUNCTION_117_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

unint64_t OUTLINED_FUNCTION_119_4@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3270FC8(0xD00000000000002DLL, a1 | 0x8000000000000000, (v1 - 152));
}

__n128 OUTLINED_FUNCTION_128_5()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  return result;
}

double OUTLINED_FUNCTION_130_5()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v1 - 128) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_176_2@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 264) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_180_1(uint64_t a1)
{

  return sub_1E42079A4();
}

uint64_t OUTLINED_FUNCTION_182_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_185_0@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3270FC8(0xD000000000000024, a1 | 0x8000000000000000, (v1 - 120));
}

double OUTLINED_FUNCTION_201_1()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

void OUTLINED_FUNCTION_203_0()
{
  *(v3 - 440) = v0;
  *(v3 - 432) = v2;
  *(v3 - 424) = v1;
}

unint64_t OUTLINED_FUNCTION_214@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3270FC8(0xD00000000000001DLL, (a1 - 32) | 0x8000000000000000, (v1 - 128));
}

void OUTLINED_FUNCTION_239()
{

  JUMPOUT(0x1E69109E0);
}

id OUTLINED_FUNCTION_263(id a1, SEL a2)
{
  v6 = *(v4 - 320);

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_265(uint64_t a1, uint64_t a2)
{

  return sub_1E4207244();
}

_OWORD *OUTLINED_FUNCTION_267(char a1)
{
  *(v2 - 256) = v1;

  return sub_1E377DF14((v2 - 248), v2 - 152, a1);
}

uint64_t OUTLINED_FUNCTION_268()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_337()
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_340()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_341()
{

  return sub_1E3A3B98C();
}

uint64_t OUTLINED_FUNCTION_342()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0xE000000000000000;

  return sub_1E42074B4();
}

uint64_t OUTLINED_FUNCTION_343()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_346(__n128 a1, uint64_t a2, uint64_t a3)
{

  sub_1E3B79200(v3, a3);
}

void sub_1E3A4D974()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner;
    OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner, v6);
    sub_1E38B9460(v0 + v2, v5);
    v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8);
    v4 = v1;
    v3(v5);
  }
}

uint64_t sub_1E3A4DA28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner, v5);
  return sub_1E38B9460(v1 + v3, a1);
}

uint64_t sub_1E3A4DA78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner;
  swift_beginAccess();
  sub_1E3A4DAE4(a1, v1 + v3);
  swift_endAccess();
  sub_1E3A4D974();
  return sub_1E3A4DB54(a1);
}

uint64_t sub_1E3A4DAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296D0, &qword_1E429BAA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A4DB54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296D0, &qword_1E429BAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3A4DBBC(void *a1)
{
  v2 = v1;
  v17 = *&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
  *&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController] = a1;
  v3 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController;
  v4 = *&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
  v5 = a1;
  if (v4)
  {
    v6 = v17;
    if (v4 == v17)
    {
      goto LABEL_14;
    }

    if (!v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = v17;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  [v6 vui:0 willMoveToParentViewController:?];
  v4 = *&v3[v2];
  if (v4)
  {
LABEL_7:
    v7 = v4;
    [v2 addChildViewController_];
    v8 = [v7 vuiView];
    if (v8)
    {
      v9 = v8;
      [v8 setVuiClipsToBounds_];

      v10 = MEMORY[0x1E69E7D40];
      v11 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x1B8))();
      [v11 setVuiClipsToBounds_];

      if ([v2 view])
      {
        OUTLINED_FUNCTION_106();
        v12 = type metadata accessor for EpicInlineView();
        v13 = *(OUTLINED_FUNCTION_2_98(v11, v12) + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

        v14 = [v7 vuiView];
        (*((*v10 & *v13) + 0x210))(v14);

        if (v17)
        {
          [v17 removeFromParentViewController];
        }

        [v7 vui:v2 didMoveToParentViewController:?];

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (![v2 view])
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_106();
  v15 = type metadata accessor for EpicInlineView();
  v16 = *(OUTLINED_FUNCTION_2_98(v3, v15) + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x210))(0);
  [v17 removeFromParentViewController];
LABEL_14:
}

void sub_1E3A4DEC8()
{
  v1 = v0;
  type metadata accessor for EpicInlineView();
  v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView;
  v3 = *&v36[OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView];
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
  v7 = v3;

  v6(sub_1E3A4E2D0, v4);

  v8 = *&v36[v2];
  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = *((*v5 & *v8) + 0x1C8);
  v11 = v8;

  v10(sub_1E3A4E320, v9);

  v12 = [objc_opt_self() defaultCenter];
  v13 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 sharedInstance];
  [v12 addObserver:v1 selector:sel_handleIsPlaybackUIBeingShownDidChange_ name:v15 object:v16];

  v17 = OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_10_70(v17, v18, v19, sel_handleAppWillEnterForeground_, *MEMORY[0x1E69DDAB0]);

  v20 = OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_10_70(v20, v21, v22, sel_handleAppDidEnterBackground_, *MEMORY[0x1E69DF7E0]);

  v23 = OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_10_70(v23, v24, v25, sel_handleVPPAPresented_, @"VUIVPPAPresentedNotification");

  v26 = OUTLINED_FUNCTION_22_41();
  OUTLINED_FUNCTION_10_70(v26, v27, v28, sel_handleVPPADismissed_, @"VUIVPPADismissedNotification");

  [v1 setView_];
  if (*&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel])
  {
    type metadata accessor for Accessibility();

    sub_1E40A8408();
    v30 = v29;
    v31 = [v1 view];
    if (!v31)
    {
      __break(1u);
      goto LABEL_14;
    }

    v32 = v31;
    if (v30)
    {
      v33 = sub_1E4205ED4();
    }

    else
    {
      v33 = 0;
    }

    [v32 setVuiAccessibilityIdentifier_];
  }

  if ([objc_opt_self() isPad])
  {
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      [v34 setVuiClipsToBounds_];

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
}

void sub_1E3A4E2D0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong addChildViewController_];
  }
}

void sub_1E3A4E320(void *a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      [a1 vui:Strong didMoveToParentViewController:?];
    }
  }
}

double sub_1E3A4E3C0(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_vui_willMoveToParentViewController_, a1);
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor];
  if (a1)
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 304);

    v6(v7);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }

  return result;
}

id sub_1E3A4E500(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v45 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v43 = v12;
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v51.receiver = v2;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, sel_vui_viewDidAppear_, a1 & 1);
  v16 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor;
  if (!*&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor])
  {
    result = [v2 view];
    if (!result)
    {
      goto LABEL_18;
    }

    v18 = result;
    while (1)
    {
      v19 = v18;
      v18 = [v18 superview];

      if (!v18)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for ScrollViewVisibilityMonitor();
        v20 = v18;
        OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        v21 = sub_1E414F9CC();
        result = [v2 view];
        if (!result)
        {
          goto LABEL_19;
        }

        v22 = result;
        OUTLINED_FUNCTION_4_0();
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_36();
        (*(v24 + 288))(v22, v25 & 1, sub_1E3A50DF4, v23);

        OUTLINED_FUNCTION_36();
        (*(v26 + 304))();

        *&v2[v16] = v21;

        break;
      }
    }
  }

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v27 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  v49 = sub_1E3A4EAA4;
  v50 = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  v48 = &block_descriptor_46;
  v29 = _Block_copy(aBlock);
  v30 = v2;
  OUTLINED_FUNCTION_6_19();

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v15, v10, v29);
  _Block_release(v29);

  (*(v45 + 8))(v10, v5);
  (*(v43 + 8))(v15, v44);
  v31 = &v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner];
  result = OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner], v46);
  if (!*(v31 + 24))
  {
    goto LABEL_11;
  }

  sub_1E327F454(v31, aBlock);
  v32 = v48;
  v33 = v49;
  __swift_project_boxed_opaque_existential_1(aBlock, v48);
  result = [v2 view];
  if (result)
  {
    v34 = result;
    [result frame];
    v36 = v35;
    v38 = v37;

    (*(*(*(v33 + 1) + 8) + 24))(v32, 0.0, 0.0, v36, v38);
    result = __swift_destroy_boxed_opaque_existential_1(aBlock);
LABEL_11:
    v39 = *&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel];
    if (!v39 || !*(v31 + 24))
    {
      return result;
    }

    sub_1E327F454(v31, aBlock);
    v40 = v48;
    v41 = v49;
    __swift_project_boxed_opaque_existential_1(aBlock, v48);

    result = [v2 view];
    if (result)
    {
      v42 = result;
      (*(*(*(v41 + 1) + 8) + 56))(result, v39, v40);

      return __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

double sub_1E3A4EAA4()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 304);

    v2(v3);
  }

  return result;
}

void sub_1E3A4EB80(char a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_vui_viewDidDisappear_, a1 & 1);
  if (*&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor])
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 312);

    v5(0);
  }

  if (*&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel])
  {
    v6 = &v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner];
    OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner], v15);
    if (*(v6 + 24))
    {
      sub_1E327F454(v6, v12);
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v9 = *(*(v8 + 8) + 8);
      v10 = *(v9 + 64);

      v10(v11, v7, v9);

      __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }
}

void sub_1E3A4ED04()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_vui_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalCollectionViewModel];
  if (!v1)
  {
    return;
  }

  v2 = OUTLINED_FUNCTION_14_77();
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 bounds];
  OUTLINED_FUNCTION_3();

  if (OUTLINED_FUNCTION_14_25() <= 0.0)
  {

    return;
  }

  v4 = OUTLINED_FUNCTION_14_77();
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  [v4 bounds];
  OUTLINED_FUNCTION_3();

  v6 = OUTLINED_FUNCTION_14_25();
  v7 = OUTLINED_FUNCTION_14_77();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = type metadata accessor for EpicInlineView();
  v10 = *(OUTLINED_FUNCTION_2_98(v8, v9) + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

  v11 = *&v0[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1E3AD9070(v1, v6);

    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v10) + 0x228))(COERCE_DOUBLE(*&v14), v11 == 0);
}

void sub_1E3A4EF10()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_vui_viewDidLayoutSubviews);
  v1 = OUTLINED_FUNCTION_14_77();
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = type metadata accessor for EpicInlineView();
  [OUTLINED_FUNCTION_2_98(v2 v3)];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = OUTLINED_FUNCTION_14_77();
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  [OUTLINED_FUNCTION_2_98(v12 v3)];
  v15 = v14;

  v16 = OUTLINED_FUNCTION_14_77();
  if (v16)
  {
    v17 = v16;
    [OUTLINED_FUNCTION_2_98(v16 v3)];

    sub_1E3A4F044(v9, v15);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1E3A4F044(double a1, double a2)
{
  v3 = v2;
  if (a1 == 0.0 && a2 == 0.0)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_lastViewWidth;
  v6 = *&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_lastViewWidth];
  if (v6 == a1)
  {
    return;
  }

  if (![v2 view])
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_106();
  v7 = type metadata accessor for EpicInlineView();
  v8 = *(OUTLINED_FUNCTION_2_98(v2, v7) + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

  if (!*&v2[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel] || (OUTLINED_FUNCTION_8(), v9 += 61, v10 = *v9, v11 = v9, v12 = , v10(v12), OUTLINED_FUNCTION_6_19(), , !v11) || (v14 = sub_1E373E010(1, v11, v13), , !v14))
  {

    goto LABEL_12;
  }

  v15 = v8;
  [v15 bounds];
  if (CGRectGetWidth(v88) == 0.0)
  {

LABEL_10:
LABEL_12:
    *&v3[v5] = a1;
    return;
  }

  type metadata accessor for LayoutGrid();
  [v15 bounds];
  Width = CGRectGetWidth(v89);
  v17 = sub_1E3A2579C(Width);
  sub_1E3DF9E68(&v78);
  memcpy(__dst, v79, sizeof(__dst));
  [v15 bounds];
  v19 = v18;
  v21 = v20;

  v77 = 0;
  v22 = objc_opt_self();
  v23 = [v22 vui_main];
  v24 = 0.0;
  v25 = 0.0;
  if (v23)
  {
    v26 = v23;
    [v23 vui_nativeScale];
    v25 = v27;
  }

  v72 = v17;
  v71 = v7;
  v28 = [v22 vui_main];
  if (v28)
  {
    v29 = v28;
    [v28 vui_scale];
    v24 = v30;
  }

  v31 = (*(*v14 + 464))();
  v32 = MEMORY[0x1E69E7D40];
  if (!v31)
  {
LABEL_43:
    v85[0] = v19;
    v85[1] = v21;
    v86 = v77;
    memcpy(v87, __dst, sizeof(v87));
    sub_1E3D41814(v72, v85, __src);
    v75 = v81;
    v55 = v83;
    v56 = [v3 view];
    if (!v56)
    {
      goto LABEL_53;
    }

    v57 = v56;
    v58 = *(OUTLINED_FUNCTION_2_98(v56, v71) + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

    v59 = (*((*v32 & *v58) + 0x190))();
    v75 = 0;
    memcpy(v73, __src, 0x60uLL);
    *&v73[12] = v59;
    LOBYTE(v73[13]) = 0;
    *(&v73[13] + 1) = *v82;
    v73[15] = *&v82[15];
    LOBYTE(v73[16]) = 1;
    BYTE1(v73[16]) = v55;
    memcpy(v74, v73, sizeof(v74));
    nullsub_1();
    v60 = memcpy(v84, v74, 0x82uLL);
    v61 = sub_1E3D441E8(v60);
    v62 = sub_1E3D41B90();
    sub_1E3D41C40(v14, v61, v62, v84);
    OUTLINED_FUNCTION_6_19();

    sub_1E39F8998(v73);
    if (v32)
    {
      v63 = [v3 view];
      if (!v63)
      {
        goto LABEL_54;
      }

      v64 = v63;
      v65 = *(OUTLINED_FUNCTION_2_98(v63, v71) + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

      v66 = (*((*v32 & *v65) + 0x1D8))();
      if (v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_1E4298880;
        *(v67 + 32) = v32;
        v68 = v32;
        sub_1E39F8914(v67, v66);
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

  v33 = v31;
  v69 = v14;
  v70 = v15;
  v34 = sub_1E32AE9B0(v31);
  for (i = 0; ; ++i)
  {
    if (v34 == i)
    {

      goto LABEL_42;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1E6911E60](i, v33);
      v36 = v37;
    }

    else
    {
      if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v36 = *(v33 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v74[0] = *(v36 + 98);
    LOWORD(v73[0]) = 39;
    sub_1E3742F1C(v37, v38, v39);
    sub_1E4206254();
    sub_1E4206254();
    if (v84[0] == __src[0] && v84[1] == __src[1])
    {

LABEL_34:

      type metadata accessor for ImageViewModel();
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v43 = v42;
        OUTLINED_FUNCTION_26_0();
        v45 = *(v44 + 392);

        v47 = v45(v46);

        v14 = v69;
        v15 = v70;
        v32 = MEMORY[0x1E69E7D40];
        if (v47)
        {
          v48 = [v3 vuiTraitCollection];
          sub_1E3C2AE10();
          v50 = v49;
          OUTLINED_FUNCTION_36();
          (*(v51 + 1640))();
        }

        if ((sub_1E3A24FDC(v72) & 1) != 0 && v24 < v25)
        {
          (*(*v43 + 1024))(25186, 0xE200000000000000, v72);
        }

        v52 = (*(*v43 + 1040))(v72);
        (*((*v32 & *v70) + 0x180))(v52 & 1);
        v53 = j__OUTLINED_FUNCTION_18();
        v54 = (*(*v43 + 1048))(v72, v53 & 1);
        (*((*v32 & *v70) + 0x168))(v54);

        goto LABEL_43;
      }

LABEL_42:
      v14 = v69;
      v15 = v70;
      v32 = MEMORY[0x1E69E7D40];
      goto LABEL_43;
    }

    v41 = sub_1E42079A4();

    if (v41)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

id sub_1E3A4F934(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (*&v3[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor])
  {
    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 312);

    v10(0);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v23 = sub_1E3A4FB40;
  v24 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E37C7850;
  v22 = &block_descriptor_10_1;
  v12 = _Block_copy(&aBlock);
  v13 = v4;

  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v23 = sub_1E3A4EAA4;
  v24 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E37C7850;
  v22 = &block_descriptor_16_0;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [a1 animateAlongsideTransition:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);
  v18.receiver = v16;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
}

id sub_1E3A4FBE8()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  OUTLINED_FUNCTION_6_84(v2, v3, v4, VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0]);

  v5 = OUTLINED_FUNCTION_21_50();
  OUTLINED_FUNCTION_6_84(v5, v6, v7, *MEMORY[0x1E69DDAB0]);

  v8 = OUTLINED_FUNCTION_21_50();
  OUTLINED_FUNCTION_6_84(v8, v9, v10, *MEMORY[0x1E69DF7E0]);

  v11 = OUTLINED_FUNCTION_21_50();
  OUTLINED_FUNCTION_6_84(v11, v12, v13, @"VUIVPPAPresentedNotification");

  v14 = OUTLINED_FUNCTION_21_50();
  OUTLINED_FUNCTION_6_84(v14, v15, v16, @"VUIVPPADismissedNotification");

  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

double sub_1E3A4FDA8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isPlaybackUIBeingShown];

  v4 = *(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor);
  if (v2)
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 312);

    v6(0);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v8 = *(v7 + 304);

    v8(v9);
  }

  return result;
}

uint64_t sub_1E3A4FF74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FDEE4();
  v13 = a1;
  a4();

  return (*(v8 + 8))(v12, v6);
}

double sub_1E3A5004C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor);
  if (v1)
  {
    v2 = *(*v1 + 304);

    v2(v3);
  }

  return result;
}

double sub_1E3A500F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_scrollViewMonitor);
  if (v1)
  {
    v2 = *(*v1 + 312);

    v2(0);
  }

  return result;
}

char *sub_1E3A50198(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311D8, qword_1E42B4A10);
  sub_1E4148C68(sub_1E3A505D8, v6, v39);
  v7 = v39[0];
  v8 = *(*a1 + 872);
  v9 = v39[0];
  v8(v7, &off_1F5D6C6C8);
  *&v9[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel] = a1;

  v10 = *(*a1 + 392);

  if (!v10(v11))
  {
    v7 = 0;
LABEL_21:

    return v7;
  }

  OUTLINED_FUNCTION_26_0();
  (*(v12 + 1560))();

  v14 = *(*a1 + 488);
  v15 = v14(v13);
  if (v15)
  {
    v17 = sub_1E373E010(138, v15, v16);

    if (v17)
    {
      v18 = (*v17 + 392);
      v19 = *v18;
      if ((*v18)(v15))
      {
        v20 = [objc_opt_self() current];
        sub_1E3C2AE10();
        v38 = v19;
        v22 = v21;
        OUTLINED_FUNCTION_36();
        (*(v23 + 1640))();

        v19 = v38;
      }

      type metadata accessor for LayoutGrid();
      sub_1E3A25914();
      OUTLINED_FUNCTION_3();
      if (v19())
      {
        v39[0] = v1;
        v39[1] = v2;
        v39[2] = v3;
        v39[3] = v4;
        v40 = 0;
        OUTLINED_FUNCTION_26_0();
        (*(v24 + 184))(v39);
      }
    }
  }

  v25 = v14(v15);
  if (!v25)
  {
    goto LABEL_16;
  }

  v27 = sub_1E373E010(117, v25, v26);

  if (!v27)
  {
    goto LABEL_16;
  }

  type metadata accessor for CollectionViewModel();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

LABEL_16:
    sub_1E3A4DBBC(0);
    goto LABEL_19;
  }

  v29 = v28;
  v30 = *&v9[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalCollectionViewModel];
  *&v9[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalCollectionViewModel] = v28;

  v31 = *&v9[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
  if (v31)
  {
    v32 = v31;
    OUTLINED_FUNCTION_6_19();
    sub_1E404AF18();
  }

  else
  {
    type metadata accessor for StackViewController(0);

    v33 = j__OUTLINED_FUNCTION_18();
    sub_1E41CA4D8(v29, v33 & 1);
    sub_1E3A4DBBC(v34);
  }

LABEL_19:
  result = [v9 view];
  if (result)
  {
    v9 = result;
    v36 = type metadata accessor for EpicInlineView();
    v37 = OUTLINED_FUNCTION_2_98(v9, v36);
    sub_1E39F73B4(v37, a1);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id sub_1E3A505D8@<X0>(void *a2@<X8>)
{
  type metadata accessor for EpicInlineViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

id sub_1E3A50614(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner);
  OUTLINED_FUNCTION_4_101(&OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel);
  if (a2)
  {
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1E3A50728(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_collectionImpressioner);
  OUTLINED_FUNCTION_4_101(&OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel);
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void (*sub_1E3A5081C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3A50874;
}

void sub_1E3A50874(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3A4D974();
  }
}

uint64_t sub_1E3A508AC(uint64_t result)
{
  if (result)
  {
    v6 = v1;
    type metadata accessor for EpicInlineViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      v7 = result;
      OUTLINED_FUNCTION_26_0();
      v9 = *(v8 + 392);
      v10 = swift_retain_n();
      if (v9(v10))
      {
        type metadata accessor for EpicInlineLayout();
        v11 = swift_dynamicCastClass();
        if (!v11)
        {

          return 0;
        }

        v12 = OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel;
        v13 = *&v1[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_shelfViewModel];
        if (v13)
        {
          v14 = v11;
          v15 = *(*v13 + 392);

          v17 = v15(v16);

          if (v17)
          {
            OUTLINED_FUNCTION_8();
            (*(v18 + 1560))();

            v19 = *(*v7 + 872);
            v20 = swift_unknownObjectRetain();
            v19(v20, &off_1F5D6C6C8);
            v21 = [objc_opt_self() current];
            sub_1E3C2AE10();
            v23 = v22;
            v25 = v24;
            v47 = v26;
            (*(*v14 + 1640))();
            *&v6[v12] = v7;

            v28 = *(*v7 + 488);
            v29 = v28(v27);
            if (v29)
            {
              v31 = sub_1E373E010(138, v29, v30);

              if (v31)
              {
                v46 = *(*v31 + 392);
                if ((v46)(v29))
                {
                  OUTLINED_FUNCTION_26_0();
                  (*(v32 + 1640))(v23, v47, v25);
                }

                type metadata accessor for LayoutGrid();
                sub_1E3A25914();
                OUTLINED_FUNCTION_3();
                if (v46())
                {
                  v48[0] = v2;
                  v48[1] = v3;
                  v48[2] = v4;
                  v48[3] = v5;
                  v49 = 0;
                  OUTLINED_FUNCTION_26_0();
                  (*(v33 + 184))(v48);
                }
              }
            }

            v34 = v28(v29);

            if (v34)
            {
              v36 = sub_1E373E010(117, v34, v35);

              if (v36)
              {
                type metadata accessor for CollectionViewModel();
                v37 = swift_dynamicCastClass();
                if (v37)
                {
                  v38 = v37;
                  *&v6[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalCollectionViewModel] = v37;

                  v39 = *&v6[OBJC_IVAR____TtC8VideosUI24EpicInlineViewController_horizontalStackViewController];
                  if (v39)
                  {
                    v40 = v39;
                    sub_1E404AF18();
                  }

                  else
                  {
                    type metadata accessor for StackViewController(0);

                    v41 = j__OUTLINED_FUNCTION_18();
                    sub_1E41CA4D8(v38, v41 & 1);
                    sub_1E3A4DBBC(v42);
                  }

                  goto LABEL_28;
                }
              }
            }

            sub_1E3A4DBBC(0);
LABEL_28:
            result = [v6 view];
            if (result)
            {
              v43 = result;
              v44 = type metadata accessor for EpicInlineView();
              v45 = OUTLINED_FUNCTION_2_98(v43, v44);
              sub_1E39F73B4(v45, v7);

              return 1;
            }

            else
            {
              __break(1u);
            }

            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1E3A50DF4(uint64_t a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong view])
    {
      OUTLINED_FUNCTION_106();
      v5 = type metadata accessor for EpicInlineView();
      v6 = *(OUTLINED_FUNCTION_2_98(v1, v5) + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

      v7 = MEMORY[0x1E69E7D40];
      v8 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1F0))() & 1;

      if (v8 == (v2 & 1))
      {
LABEL_6:

        return;
      }

      v9 = [v4 view];
      if (v9)
      {
        v10 = v9;
        v11 = *(OUTLINED_FUNCTION_2_98(v9, v5) + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);

        (*((*v7 & *v11) + 0x1F8))(v2 & 1);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t NSTextContentStorage.writingDirectionOfLine(_:textLayoutManager:lineNumberReported:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v6 = a2;
  if (a2)
  {
    v8 = a2;
    while (1)
    {
      v12 = v6;
      v13 = [v4 attributedString];
      if (!v13)
      {
        if (a3)
        {
          v20 = -1;
          *a3 = -1;
        }

        else
        {

          return -1;
        }

        return v20;
      }

      v14 = v13;
      v24 = 0;
      v25 = -1;
      v23 = 0;
      v15 = [v8 documentRange];
      v4 = [v15 location];

      v6 = swift_allocObject();
      v6[2] = &v24;
      v6[3] = &v23;
      v6[4] = a1;
      v6[5] = v8;
      v6[6] = v4;
      v6[7] = v14;
      v6[8] = &v25;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_1E3A51354;
      *(a1 + 24) = v6;
      aBlock[4] = sub_1E3A5151C;
      aBlock[5] = a1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E3A512A0;
      aBlock[3] = &block_descriptor_47;
      v16 = _Block_copy(aBlock);
      v17 = v8;
      swift_unknownObjectRetain();

      v10 = v14;

      v18 = [v17 enumerateTextLayoutFragmentsFromLocation:0 options:12 usingBlock:v16];
      swift_unknownObjectRelease();
      _Block_release(v16);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_20:
      v11 = MEMORY[0x1E6911E60](0, v10);
LABEL_7:
      v8 = v11;
    }

    if (!a3)
    {
      goto LABEL_14;
    }

    v19 = v24;
    if ((v23 & 1) != 0 || (v19 = v24 - 1, !__OFSUB__(v24, 1)))
    {
      *a3 = v19;
LABEL_14:
      swift_unknownObjectRelease();

      v20 = v25;

      return v20;
    }

    goto LABEL_22;
  }

  v9 = [v4 textLayoutManagers];
  sub_1E3280A90(0, &qword_1ECF311E0, 0x1E69DB828);
  v10 = sub_1E42062B4();
  if (sub_1E32AE9B0(v10))
  {

    if ((v10 & 0xC000000000000001) != 0)
    {
      goto LABEL_20;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3A512A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1E3A512E4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a1;
  v11 = NSTextContentStorage.writingDirectionOfLine(_:textLayoutManager:lineNumberReported:)(a3, a4, a5);

  return v11;
}

void sub_1E3A51354(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v10 = [a1 textLineFragments];
  sub_1E3280A90(0, &unk_1ECF31250, 0x1E69DB830);
  v11 = sub_1E42062B4();

  v12 = sub_1E32AE9B0(v11);

  v13 = *v3 + v12;
  if (__OFADD__(*v3, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*v3 <= v6)
  {
    *v4 = v14 >= v6;
    if (v6 != -1 && v14 < v6)
    {
LABEL_5:
      if (!__OFADD__(v14, 1))
      {
        *v3 = v13;
        return;
      }

      goto LABEL_18;
    }
  }

  else
  {
    *v4 = 0;
    if (v6 != -1)
    {
      goto LABEL_5;
    }
  }

  v16 = [a1 rangeInElement];
  v17 = [v16 location];

  v18 = [v5 offsetFromLocation:v8 toLocation:v17];
  swift_unknownObjectRelease();
  v19 = [v7 paragraphStyleAtIndex:v18 effectiveRange:0];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 baseWritingDirection];

    *v9 = v21;
  }

  if (*v4 || (v6 = v14 + 1, !__OFADD__(v14, 1)))
  {
    *v3 = v6;
    return;
  }

LABEL_19:
  __break(1u);
}

void type metadata accessor for NSWritingDirection()
{
  if (!qword_1EE23B198)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B198);
    }
  }
}

void sub_1E3A515A4(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1);
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = *v1;
    v4 = *(v2 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView);
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA0);
    v6 = v4;
    v5(v3);
  }
}

void sub_1E3A51640(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset;
  v6 = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  sub_1E3A515A4(v6);
}

void sub_1E3A516A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView;
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView);
  v6 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle, a2);
  v7 = *(v2 + v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xB8);
  v10 = v5;
  v9(v7);

  v11 = *(v3 + v4);
  LOBYTE(v3) = *(v3 + v6);
  v12 = *((*v8 & *v11) + 0xD0);
  v13 = v11;
  v12((v3 & 1) == 0);
}

void sub_1E3A51794(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle;
  v5 = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle, a2);
  *(v2 + v4) = a1;
  sub_1E3A516A4(v5, v6);
}

void sub_1E3A517E0(uint64_t a1)
{
  v2 = sub_1E3A7B638(a1);
  if (v2)
  {
    v5 = v2;
    v3 = [v2 vuiParentViewController];
    if (!v3 || (v4 = v3, v3, v4 != v1))
    {
      [v1 vui:v5 addChildViewController:?];
      [v5 vui:v1 didMoveToParentViewController:?];
    }
  }
}

void sub_1E3A51884(void *a1)
{
  v2 = v1;
  v14 = sub_1E3A7B638(a1);
  v4 = a1;
  sub_1E3A7B674(a1);
  v6 = sub_1E3A7B638(v5);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      if (!v14)
      {
LABEL_6:
        v10 = *(v1 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView);
        v11 = [v9 view];
        OUTLINED_FUNCTION_21();
        (*(v12 + 232))();

        v13 = v14;
        if (v14)
        {
          v13 = [v14 vui_removeFromParentViewController];
        }

        sub_1E3A517E0(v13);
        [v9 setDelegate_];
        goto LABEL_9;
      }

      if (v8 != v14)
      {
        [v14 vui:0 willMoveToParentViewController:?];
        goto LABEL_6;
      }
    }

LABEL_9:
  }
}

void (*sub_1E3A519D4(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3A7B638(a1);
  return sub_1E3A51A1C;
}

void sub_1E3A51A1C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1E3A51884(v2);
  }

  else
  {
    sub_1E3A51884(*a1);
  }
}

void sub_1E3A51A84()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_vui_loadView);
  sub_1E3A517E0([v0 setVuiView_]);
}

id sub_1E3A51B24(void *a1)
{
  v1 = (*a1 + 896);
  v2 = *v1;
  v3 = (*v1)();
  if (!v3)
  {
    return 0;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31280, &qword_1E42B4AA8);
  sub_1E4148C68(sub_1E3A51C1C, v4, &v10);
  v5 = v10;

  sub_1E3A7B5A0(v6);

  v8 = (v2)(v7);
  sub_1E3A51884(v8);
  return v5;
}

id sub_1E3A51C1C@<X0>(void *a2@<X8>)
{
  type metadata accessor for AccountMessageViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

id sub_1E3A51C58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented] = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset);
  v3[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle] = v8;
  v9 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView;
  type metadata accessor for AccountMessageView();
  *&v3[v9] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  if (a2)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_1E3A51DA0()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented] = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset);
  v1[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_appliesPhoneStyle] = v3;
  v4 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_containerView;
  type metadata accessor for AccountMessageView();
  *&v1[v4] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v0);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1E3A51EA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration, a1);
  return sub_1E327F454(v2 + v4, a2);
}

uint64_t sub_1E3A51EEC(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v1 + v3), a1);
  swift_endAccess();
  sub_1E3A527A4();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a1[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v5;
      a1[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v14, a1, v4);
        if ((v9 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v8 + 16))(a1, a2, v5);
        }

        (*(v6 + 8))(v14, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1E3A5217C(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E3A521E4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E3A52228()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 96))(v3);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39570, &qword_1E42B4AB0);
  type metadata accessor for AccountMessageContentConfiguration();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_12_1();

  return v1;
}

void *sub_1E3A522EC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void sub_1E3A5232C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1E3A523DC(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void sub_1E3A524D0()
{
  *(v0 + OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3A52550(double a1, double a2)
{
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 120))();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 view];

    if (v8)
    {
      [v8 sizeThatFits_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9.receiver = v2;
    v9.super_class = type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView();
    objc_msgSendSuper2(&v9, sel_sizeThatFits_, a1, a2);
  }
}

void sub_1E3A52694()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 120))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 view];

    if (v4)
    {
      [v0 bounds];
      [v4 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3A527A4()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 128);
  v3 = v2();
  [v3 removeFromSuperview];

  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 120))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_21();
  v9 = (*(v8 + 136))(v7);
  v10 = (v2)(v9);
  if (v10)
  {
    v11 = v10;
    [v0 addSubview_];
    [v0 setNeedsLayout];
  }
}

id sub_1E3A52964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E3A52A58(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 112))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3A52AE4()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_allocObject();
  sub_1E3A52B20(v0);
  return v1;
}

uint64_t sub_1E3A52B20(void *a1)
{
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_14_0(v1 + 16, v3);
  swift_unknownObjectWeakAssign();

  return v1;
}

id sub_1E3A52B70()
{
  v1 = objc_allocWithZone(type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView());
  OUTLINED_FUNCTION_12_1();

  v3 = sub_1E3A52DAC(v2, v0);
  sub_1E3A52F88(&qword_1ECF31298, type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView, &unk_1E42B4AB8);
  return v3;
}

uint64_t sub_1E3A52BE4()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1E3A52C40@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E38074D0();
  *a1 = v3;
  return result;
}

id sub_1E3A52C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11, v10);
  v13 = objc_allocWithZone(type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView());
  (*(v6 + 16))(v8, v12, a3);
  v14 = sub_1E3A52E74(v8, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

id sub_1E3A52DAC(uint64_t a1, char *a2)
{
  v7[3] = type metadata accessor for AccountMessageContentConfiguration();
  v7[4] = sub_1E3A52F88(&qword_1ECF312A0, type metadata accessor for AccountMessageContentConfiguration, &unk_1E42B4AF8);
  v7[0] = a1;
  *&a2[OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView] = 0;
  sub_1E327F454(v7, &a2[OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration]);
  v6.receiver = a2;
  v6.super_class = type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

id sub_1E3A52E74(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_accountMessageView] = 0;
  sub_1E327F454(v11, &a2[OBJC_IVAR____TtCC8VideosUI34AccountMessageContentConfiguration25AccountMessageContentView_configuration]);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for AccountMessageContentConfiguration.AccountMessageContentView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t sub_1E3A52F88(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3A52FCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView;
  OUTLINED_FUNCTION_3_102(a1, a2, a3, a4, a5, a6, a7, a8, v16);
  v11 = *&v8[v10];
  *&v8[v10] = a1;
  v12 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView;
  v13 = a1;
  OUTLINED_FUNCTION_1_121(v13, v14, v15);
  [v8 vui:*&v8[v12] addSubview:v11 oldView:?];
}

void sub_1E3A53044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_3_102(a1, a2, a3, a4, a5, a6, a7, a8, v16);
  v11 = *&v8[v10];
  *&v8[v10] = a1;
  v12 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  v13 = a1;
  OUTLINED_FUNCTION_1_121(v13, v14, v15);
  [v8 vui:*&v8[v12] addSubview:v11 oldView:?];
}

void sub_1E3A530BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView;
  OUTLINED_FUNCTION_3_102(a1, a2, a3, a4, a5, a6, a7, a8, v18);
  v11 = *(v8 + v10);
  *(v8 + v10) = a1;
  v12 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView;
  v13 = a1;
  OUTLINED_FUNCTION_1_121(v13, v14, v15);
  v16 = *(v8 + v12);
  v17 = v16;
  sub_1E3C8BDFC(v16, v11);
}

id sub_1E3A53138(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
  OUTLINED_FUNCTION_0_12(a1);
  result = *(v2 + v4);
  if (result)
  {
    return [result vui:a2 sizeThatFits:0.0];
  }

  return result;
}

id sub_1E3A5319C(char a1, double a2, double a3)
{
  v4 = v3;
  v29.receiver = v3;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  v9 = v8;
  v13 = a2 - sub_1E3952BE0(v10, v8, v11, v12);
  sub_1E3A53138(v14, v13);
  v16 = v15;
  v17 = &v3[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate];
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate], v28);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    (*(v19 + 8))(&v30, ObjectType, v19, a2);
    result = swift_unknownObjectRelease();
  }

  if ((a1 & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView;
    OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView], v27);
    v22 = *&v4[v21];
    if (v22)
    {
      [v22 setFrame_];
    }

    v23 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView;
    OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView], v26);
    result = *&v4[v23];
    if (result)
    {
      OUTLINED_FUNCTION_6_85(result);
      v24 = OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView;
      OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView], v25);
      result = *&v4[v24];
      if (result)
      {
        return OUTLINED_FUNCTION_6_85(result);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1E3A533AC()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView) = 0;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, ObjectType);
}

id sub_1E3A53474(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_headerViewLayout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI20EpisodeContainerView_decorationView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E3A535F0()
{
  v1 = OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
    [v5 setShouldRasterize_];
    v6 = [objc_opt_self() mainScreen];
    [v6 scale];
    v8 = v7;

    [v5 setRasterizationScale_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E4297BD0;
    v10 = objc_opt_self();
    v11 = [v10 blackColor];
    v12 = [v11 colorWithAlphaComponent_];

    v13 = [v12 CGColor];
    type metadata accessor for CGColor();
    v15 = v14;
    *(v9 + 56) = v14;
    *(v9 + 32) = v13;
    v16 = [v10 blackColor];
    v17 = [v16 colorWithAlphaComponent_];

    v18 = [v17 CGColor];
    *(v9 + 88) = v15;
    *(v9 + 64) = v18;
    v19 = [v10 blackColor];
    v20 = [v19 colorWithAlphaComponent_];

    v21 = [v20 CGColor];
    *(v9 + 120) = v15;
    *(v9 + 96) = v21;
    sub_1E38E2BE0(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E42A73A0;
    sub_1E376948C();
    *(v22 + 32) = sub_1E4206F34();
    *(v22 + 40) = sub_1E4206F34();
    *(v22 + 48) = sub_1E4206F34();
    sub_1E38E2B5C(v22, v5);
    v23 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v24 = v2;
  return v3;
}

void sub_1E3A538DC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer);
  *(v1 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer) = a1;
}

void (*sub_1E3A538F0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3A535F0();
  return sub_1E3A53938;
}

void sub_1E3A53938(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer);
  *(v1 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer) = v2;
}

void *sub_1E3A53950()
{
  OUTLINED_FUNCTION_0_8();
  v16 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312D8, &unk_1E42B4BF0);
  sub_1E4148C68(sub_1E3A53B0C, v1, &v17);
  v2 = v17;
  [v2 setUserInteractionEnabled_];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v5 = v4();
  v6 = [v5 superlayer];

  if (!v6)
  {
    v7 = [v2 layer];
    v6 = v4();
    [v7 addSublayer_];
  }

  v8 = OUTLINED_FUNCTION_2_0();
  [v9 v10];

  v11 = v4();
  v12 = OUTLINED_FUNCTION_2_0();
  [v13 v14];

  return v2;
}

id sub_1E3A53B0C@<X0>(void *a1@<X8>)
{
  type metadata accessor for NavigationBarGradientView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3A53B48()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer) = 0;
  v5 = type metadata accessor for NavigationBarGradientView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3A53BE8(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI25NavigationBarGradientView____lazy_storage___gradientLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NavigationBarGradientView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3A53C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3A53CD0(double a1)
{
  v1[4] = a1;
  v2 = 0.0;
  if (a1 > 0.0 && v1[2] + v1[3] * -0.5 > a1)
  {
    v2 = 1.0;
  }

  v1[5] = v2;
}

uint64_t sub_1E3A53D04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312E0, &qword_1E42B4C20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v29 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312E8, &qword_1E42B4C28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  if (*v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378, &qword_1E42B4C40);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E4298AD0;
    sub_1E4203704();
    sub_1E4203734();

    *(v10 + 32) = sub_1E4203C14();
    *(v10 + 40) = v11;
    sub_1E4203704();
    *(v10 + 48) = sub_1E4203C14();
    *(v10 + 56) = v12;
    sub_1E4203704();
    *(v10 + 64) = sub_1E4203C14();
    *(v10 + 72) = v13;
    sub_1E4203704();
    sub_1E4203734();

    *(v10 + 80) = sub_1E4203C14();
    *(v10 + 88) = v14;
    sub_1E4203F74();
    sub_1E4203F84();
    sub_1E4203C24();
    sub_1E4201064();
    v15 = v29[1];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312F0, &unk_1E42B4C30);
    OUTLINED_FUNCTION_2();
    (*(v17 + 16))(v6, a1, v16);
    v18 = &v6[*(v3 + 36)];
    *v18 = v15;
    v19 = v30;
    *(v18 + 24) = v31;
    *(v18 + 8) = v19;
    sub_1E3A5413C(v6, v9);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_121();
    sub_1E32752B0(v20, v21, &unk_1E42B4C30, v22);
    sub_1E3A54058();
    sub_1E4201F44();
    return sub_1E3A541AC(v6);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312F0, &unk_1E42B4C30);
    OUTLINED_FUNCTION_2();
    (*(v25 + 16))(v9, a1, v24);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_121();
    sub_1E32752B0(v26, v27, &unk_1E42B4C30, v28);
    sub_1E3A54058();
    return sub_1E4201F44();
  }
}

unint64_t sub_1E3A54058()
{
  result = qword_1ECF31300;
  if (!qword_1ECF31300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF312E0, &qword_1E42B4C20);
    sub_1E32752B0(&qword_1ECF312F8, &qword_1ECF312F0, &unk_1E42B4C30, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF31308, &qword_1ECF31310, &qword_1E42D6210, MEMORY[0x1E697DDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31300);
  }

  return result;
}

uint64_t sub_1E3A5413C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312E0, &qword_1E42B4C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A541AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF312E0, &qword_1E42B4C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_1E3A54258(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_1E3A54284;
}

void sub_1E3A54284(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_1E3A53CD0(v2);
  }

  else
  {
    *(v3 + 32) = v2;
    v4 = 0.0;
    if (v2 > 0.0)
    {
      OUTLINED_FUNCTION_4_102();
      if (v5)
      {
        v4 = 1.0;
      }
    }

    *(v3 + 40) = v4;
  }
}

uint64_t sub_1E3A542D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_103(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_2_99();

  return MEMORY[0x1EEDDA6B0](v3);
}

uint64_t sub_1E3A54324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_103(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_2_99();

  return MEMORY[0x1EEDDA6A8](v3);
}

uint64_t sub_1E3A54374(char a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8[0] = a1;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = 0;
  return MEMORY[0x1E690DE70](v8, a2, &type metadata for GradientMaskModifier, a3);
}

unint64_t sub_1E3A543B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31318;
  if (!qword_1ECF31318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31318);
  }

  return result;
}

unint64_t sub_1E3A54410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31320;
  if (!qword_1ECF31320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31320);
  }

  return result;
}

unint64_t sub_1E3A54468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31328;
  if (!qword_1ECF31328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31328);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E3A544EC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[48])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A54538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E3A54598()
{
  result = qword_1ECF31330;
  if (!qword_1ECF31330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31338, &qword_1E42B4D48);
    sub_1E32752B0(&qword_1ECF312F8, &qword_1ECF312F0, &unk_1E42B4C30, MEMORY[0x1E697FDF8]);
    sub_1E3A54058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31330);
  }

  return result;
}

unint64_t sub_1E3A54650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31340;
  if (!qword_1ECF31340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31340);
  }

  return result;
}

uint64_t sub_1E3A546A4@<X0>(unsigned __int16 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a3;
  v190 = a4;
  v194 = a2;
  v202 = a5;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31348, &qword_1E42B4D70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v181 = v7;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31350, &qword_1E42B4D78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v184 = v9;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31358, &qword_1E42B4D80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v183 = v11;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31360, &qword_1E42B4D88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v176 = v13;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31368, &qword_1E42B4D90);
  OUTLINED_FUNCTION_0_10();
  v175 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v182 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31370, &qword_1E42B4D98);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v173 - v21;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31378, &qword_1E42B4DA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v201 = v24;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31380, &qword_1E42B4DA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v197 = v26;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31388, &unk_1E42B4DB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v198 = v28;
  OUTLINED_FUNCTION_138();
  sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v192 = v30;
  v193 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_3();
  v191 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v173 - v36;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31390, &qword_1E42B4DC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v173 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31398, &qword_1E42B4DC8);
  OUTLINED_FUNCTION_0_10();
  v187 = v42;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v173 - v44;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A0, &qword_1E42B4DD0);
  OUTLINED_FUNCTION_0_10();
  v188 = v46;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v186 = v48;
  OUTLINED_FUNCTION_138();
  type metadata accessor for CollectionViewModel();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    v53 = v182;
    v52 = v183;
    v54 = v184;
    v190 = v19;
    type metadata accessor for EpisodeCollectionViewModel();
    if (swift_dynamicCastClass())
    {
      swift_storeEnumTagMultiPayload();
      v59 = sub_1E3A5707C();
      v62 = sub_1E3A577C8(v59, v60, v61);

      v206[0] = v204;
      v206[1] = &type metadata for CollectionDecorator;
      v206[2] = v59;
      v206[3] = v62;
      v63 = OUTLINED_FUNCTION_20_54();
      v206[0] = v41;
      v206[1] = v63;
      OUTLINED_FUNCTION_1_122();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      v64 = &unk_1E42B4DB0;
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v65, v66, v67, v68);
      swift_storeEnumTagMultiPayload();
      sub_1E3A56F5C();
      sub_1E3A5781C();
      sub_1E4201F44();

      v69 = OUTLINED_FUNCTION_138_0();
      return sub_1E325F6F0(v69, v70, v64);
    }

    v91 = a1[49];
    v92 = sub_1E373F6E0(v91, 148, v55, v56, v57, v58);
    v185 = a1;
    v174 = v22;
    if (v92)
    {
      type metadata accessor for EpicInlineViewModel();
      if (swift_dynamicCastClass())
      {
        LODWORD(v204) = v91;
        swift_retain_n();
        sub_1E3294EE4(v194, v206, &qword_1ECF2B5C0, &unk_1E42B4E40);
        sub_1E401DE60();
        v97 = (*(*a1 + 576))();
        if (v97)
        {
          v98 = v34;
          (*(*v97 + 224))(v97);
        }

        else
        {
          v141 = sub_1E4204724();
          v98 = v34;
          v99 = __swift_storeEnumTagSinglePayload(v34, 1, 1, v141);
        }

        v142 = v177;
        v143 = sub_1E3A579C4(v99, v100, v101);
        v144 = v191;
        sub_1E3B29C44(&type metadata for EpicInline, v143);
        v145 = v53;
        sub_1E3B29C48();
        (*(v192 + 8))(v144, v193);
        sub_1E325F6F0(v98, &qword_1ECF2B7B0, &qword_1E429EC30);
        memcpy(v205, v206, 0x248uLL);
        sub_1E3A57B4C(v205);
        v146 = v175;
        (*(v175 + 16))(v52, v53, v142);
        swift_storeEnumTagMultiPayload();
        v210[0] = &type metadata for EpicInline;
        v210[1] = v143;
        OUTLINED_FUNCTION_1_122();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_1E3A57A18(OpaqueTypeConformance2, v148, v149);
        v150 = v176;
        sub_1E4201F44();
        sub_1E3294EE4(v150, v184, &qword_1ECF31360, &qword_1E42B4D88);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31408, &qword_1E42B4E38);
        sub_1E3A5790C();
        sub_1E3A57A6C();
        v151 = v142;
        v152 = v174;
        OUTLINED_FUNCTION_69_0();
        sub_1E4201F44();

        sub_1E325F6F0(v150, &qword_1ECF31360, &qword_1E42B4D88);
        (*(v146 + 8))(v145, v151);
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8, &qword_1E42B4DD8);
        __swift_storeEnumTagSinglePayload(v152, 0, 1, v153);
        v140 = v181;
        v91 = v204;
LABEL_30:
        v154 = sub_1E373F6E0(v91, 89, v136, v137, v138, v139);
        v155 = v190;
        if (v154)
        {
          memcpy(v206, v194, 0x150uLL);
          if (sub_1E3748B78(v206) == 1)
          {
            sub_1E3A57880(v207);
          }

          else
          {
            memcpy(v210, v206, 0xC3uLL);
            memcpy(v205, v206, 0xC3uLL);
            nullsub_1();
            sub_1E375C1CC(v210, v209);
            memcpy(v207, v205, 0xC3uLL);
          }

          sub_1E3799FDC(v156, v207, v210);
          nullsub_1();
          memcpy(v205, v210, 0x129uLL);
        }

        else
        {
          sub_1E3A56F54(v205);
        }

        v64 = &qword_1E42B4D98;
        v157 = v174;
        sub_1E3294EE4(v174, v155, &qword_1ECF31370, &qword_1E42B4D98);
        memcpy(v208, v205, sizeof(v208));
        sub_1E3294EE4(v155, v140, &qword_1ECF31370, &qword_1E42B4D98);
        v158 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313B0, &qword_1E42B4DE0) + 48);
        memcpy(v209, v208, 0x129uLL);
        memcpy((v140 + v158), v208, 0x129uLL);
        memcpy(v210, v208, 0x129uLL);
        OUTLINED_FUNCTION_69_0();
        sub_1E3294EE4(v159, v160, v161, v162);
        OUTLINED_FUNCTION_69_0();
        sub_1E3294EE4(v163, v164, v165, v166);
        OUTLINED_FUNCTION_90();
        sub_1E325F6F0(v167, v168, v169);
        sub_1E325F6F0(v155, &qword_1ECF31370, &qword_1E42B4D98);
        sub_1E3294EE4(v140, v201, &qword_1ECF31348, &qword_1E42B4D70);
        swift_storeEnumTagMultiPayload();
        sub_1E3A56F5C();
        sub_1E3A5781C();
        sub_1E4201F44();
        OUTLINED_FUNCTION_90();
        sub_1E325F6F0(v170, v171, v172);
        sub_1E325F6F0(v140, &qword_1ECF31348, &qword_1E42B4D70);
        v69 = v157;
        v70 = &qword_1ECF31370;
        return sub_1E325F6F0(v69, v70, v64);
      }
    }

    if (sub_1E373F6E0(v91, 107, v93, v94, v95, v96))
    {

      sub_1E3881F30(v106, 0, __src);
      memcpy(v52, __src, 0x48uLL);
      swift_storeEnumTagMultiPayload();
      v107 = sub_1E3881D84(__src, v206);
      v110 = sub_1E3A579C4(v107, v108, v109);
      v206[0] = &type metadata for EpicInline;
      v206[1] = v110;
      OUTLINED_FUNCTION_1_122();
      v111 = swift_getOpaqueTypeConformance2();
      sub_1E3A57A18(v111, v112, v113);
      v114 = v176;
      sub_1E4201F44();
      sub_1E3294EE4(v114, v54, &qword_1ECF31360, &qword_1E42B4D88);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31408, &qword_1E42B4E38);
      sub_1E3A5790C();
      sub_1E3A57A6C();
      v115 = v174;
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      sub_1E3A57AF8(__src);
      sub_1E325F6F0(v114, &qword_1ECF31360, &qword_1E42B4D88);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8, &qword_1E42B4DD8);
      v117 = v115;
    }

    else if (sub_1E373F6E0(v91, 75, v102, v103, v104, v105))
    {

      v123 = sub_1E379869C(v122);
      LODWORD(v204) = v91;
      *&v205[0] = v123;
      *(&v205[0] + 1) = v124;
      *&v205[1] = v125;
      *(&v205[1] + 1) = v126;
      LOBYTE(v205[2]) = 0;
      sub_1E3A578B8(v123, v124, v125);

      sub_1E4201F44();
      OUTLINED_FUNCTION_24_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31408, &qword_1E42B4E38);
      sub_1E3A5790C();
      v127 = v174;
      sub_1E3A57A6C();
      sub_1E4201F44();
      v91 = v204;

      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8, &qword_1E42B4DD8);
      v117 = v127;
    }

    else
    {
      v128 = sub_1E373F6E0(v91, 135, v118, v119, v120, v121);
      if ((v128 & 1) == 0)
      {
        v128 = sub_1E373F6E0(v91, 137, v130, v131, v132, v133);
        if ((v128 & 1) == 0)
        {
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8, &qword_1E42B4DD8);
          v117 = v174;
          v135 = 1;
          goto LABEL_27;
        }
      }

      memset(v205, 0, 32);
      LOBYTE(v205[2]) = 1;
      sub_1E3A578B8(v128, v129, v130);
      sub_1E4201F44();
      OUTLINED_FUNCTION_24_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31408, &qword_1E42B4E38);
      sub_1E3A5790C();
      sub_1E3A57A6C();
      v134 = v174;
      sub_1E4201F44();
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313A8, &qword_1E42B4DD8);
      v117 = v134;
    }

    v135 = 0;
LABEL_27:
    __swift_storeEnumTagSinglePayload(v117, v135, 1, v116);
    v140 = v181;
    goto LABEL_30;
  }

  v50 = v49;
  LOBYTE(v205[0]) = 13;
  v51 = *(*a1 + 776);

  v185 = a1;
  v51(v206, v205, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v206[3])
  {
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1E325F6F0(v206, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3F36E38(0);
LABEL_9:
  v71 = sub_1E3F36DEC();
  nullsub_1();
  v73 = v72;
  v74 = sub_1E3A55924(v50, v194, v189, v190, v40);
  if (v71 != 8)
  {
    LOBYTE(v206[0]) = v71;
    LOBYTE(v205[0]) = 0;
    sub_1E37E6B30(v74, v75, v76);
    sub_1E4205E84();
  }

  LOBYTE(v206[0]) = v73;
  v77 = sub_1E3A5707C();
  v80 = sub_1E3A577C8(v77, v78, v79);
  sub_1E3E35E58();
  v81 = sub_1E325F6F0(v40, &qword_1ECF31390, &qword_1E42B4DC0);
  v82 = (*(*v185 + 576))(v81);
  if (v82)
  {
    (*(*v82 + 224))(v82);
  }

  else
  {
    v83 = sub_1E4204724();
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v83);
  }

  v206[0] = v204;
  v206[1] = &type metadata for CollectionDecorator;
  v206[2] = v77;
  v206[3] = v80;
  v84 = OUTLINED_FUNCTION_20_54();
  v85 = v191;
  sub_1E3B29C44(v41, v84);
  v86 = v186;
  sub_1E3B29C48();
  (*(v192 + 8))(v85, v193);
  sub_1E325F6F0(v37, &qword_1ECF2B7B0, &qword_1E429EC30);
  (*(v187 + 8))(v45, v41);
  v87 = v188;
  v88 = v195;
  (*(v188 + 16))(v197, v86, v195);
  swift_storeEnumTagMultiPayload();
  v206[0] = v41;
  v206[1] = v84;
  OUTLINED_FUNCTION_1_122();
  swift_getOpaqueTypeConformance2();
  v89 = v198;
  sub_1E4201F44();
  sub_1E3294EE4(v89, v201, &qword_1ECF31388, &unk_1E42B4DB0);
  swift_storeEnumTagMultiPayload();
  sub_1E3A56F5C();
  sub_1E3A5781C();
  sub_1E4201F44();

  sub_1E325F6F0(v89, &qword_1ECF31388, &unk_1E42B4DB0);
  return (*(v87 + 8))(v86, v88);
}

uint64_t sub_1E3A55924@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v301 = a4;
  v310 = a3;
  v323 = a2;
  v333 = a5;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v289 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v288 = v8;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31438, &qword_1E42B4E78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v305 = v10;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31440, &qword_1E42B4E80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v300 = v12;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31400, &qword_1E42B4E30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v302 = v14;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313F8, &qword_1E42B4E28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v306 = v16;
  v17 = OUTLINED_FUNCTION_138();
  v296 = type metadata accessor for HorizontalMultiRowCollectionView(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  v286 = v19;
  v20 = OUTLINED_FUNCTION_138();
  v298 = type metadata accessor for HorizontalMultiGroupCollectionView(v20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_3();
  v287 = v22;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31448, &qword_1E42B4E88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v295 = v24;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313F0, &qword_1E42B4E20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v299 = v26;
  v27 = OUTLINED_FUNCTION_138();
  v292 = type metadata accessor for ListCollectionView(v27);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  v285 = v29;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31450, &qword_1E42B4E90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v313 = v31;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31458, &qword_1E42B4E98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v291 = v33;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313E8, &qword_1E42B4E18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v293 = v35;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313E0, &qword_1E42B4E10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v315 = v37;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31460, &qword_1E42B4EA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v283 - v39;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313D8, &qword_1E42B4E08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  v317 = v42;
  v43 = OUTLINED_FUNCTION_138();
  v309 = type metadata accessor for GridView(v43);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9_3();
  v284 = v45;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31468, &qword_1E42B4EA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  v331 = v47;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31470, &qword_1E42B4EB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44();
  v326 = v49;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31478, &qword_1E42B4EB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  v320 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31480, &unk_1E42B4EC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v283 - v53;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313D0, &qword_1E42B4E00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  v308 = v56;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313C8, &qword_1E42B4DF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v322 = v58;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF313C0, &qword_1E42B4DF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  v328 = v60;
  v61 = OUTLINED_FUNCTION_138();
  type metadata accessor for HorizontalCollectionViewWithHeader(v61);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_9_3();
  v64 = v63;
  v65 = *(*a1 + 1344);
  v66 = a1;
  switch(v65())
  {
    case 0x75u:
    case 0x81u:
    case 0x96u:

      OUTLINED_FUNCTION_19_57(v67, v68, &qword_1ECF2B5C0, &unk_1E42B4E40);

      v69 = v64;
      v70 = OUTLINED_FUNCTION_8_12();
      sub_1E381AC68(v70, v71, v72, v73);
      OUTLINED_FUNCTION_16_64();
      sub_1E3A57CEC(v64, v54, v74);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_122();
      sub_1E3A57780(v75, v76, &unk_1E42A0A58);
      OUTLINED_FUNCTION_14_78();
      sub_1E3A57780(v77, v78, &unk_1E42DDCB8);
      OUTLINED_FUNCTION_29_39();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E3294EE4(v79, v80, v81, &qword_1E42B4E00);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57220();
      sub_1E3A5730C();
      OUTLINED_FUNCTION_25_46();
      sub_1E4201F44();
      goto LABEL_4;
    case 0x76u:

      OUTLINED_FUNCTION_19_57(v202, v203, &qword_1ECF2B5C0, &unk_1E42B4E40);
      v204 = v301;

      v205 = v310;

      v69 = v284;
      sub_1E3F1966C(a1, v205, a1, v204, v284);
      a1 = type metadata accessor for GridView;
      sub_1E3A57CEC(v69, v54, type metadata accessor for GridView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_122();
      sub_1E3A57780(v206, v207, &unk_1E42A0A58);
      OUTLINED_FUNCTION_14_78();
      sub_1E3A57780(v208, v209, &unk_1E42DDCB8);
      OUTLINED_FUNCTION_29_39();
      sub_1E4201F44();
      sub_1E3294EE4(v66, v320, &qword_1ECF313D0, &qword_1E42B4E00);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57220();
      sub_1E3A5730C();
      OUTLINED_FUNCTION_25_46();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v210, v211, v212);
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v213, v214, v215, v216);
      goto LABEL_13;
    case 0x77u:

      OUTLINED_FUNCTION_19_57(v217, v218, &qword_1ECF2B5C0, &unk_1E42B4E40);

      v69 = v285;
      v219 = OUTLINED_FUNCTION_8_12();
      sub_1E41682FC(v219, v220, v221, v222);
      a1 = type metadata accessor for ListCollectionView;
      sub_1E3A57CEC(v69, v291, type metadata accessor for ListCollectionView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_58();
      sub_1E3A57780(v223, v224, &unk_1E42EFBB8);
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v225, v226, v227, v228);
      goto LABEL_12;
    case 0x78u:

      OUTLINED_FUNCTION_19_57(v121, v122, &qword_1ECF2B5C0, &unk_1E42B4E40);
      v123 = OUTLINED_FUNCTION_138_0();
      sub_1E3CA5E9C(v123, v124, v125);
      memcpy(v295, v335, 0x180uLL);
      swift_storeEnumTagMultiPayload();
      v126 = sub_1E3A57C3C(v335, v334);
      sub_1E3A575CC(v126, v127, v128);
      OUTLINED_FUNCTION_18_50();
      sub_1E3A57780(v129, v130, &unk_1E42D7548);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v131, v132, v133, v134);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57454();
      sub_1E3A57510();
      OUTLINED_FUNCTION_27_31();
      v135 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v135, v136, v137);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v138, v139, v140, v141);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57194();
      sub_1E3A573C8();
      OUTLINED_FUNCTION_26_42();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v142, v143, v144);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v145, v146, v147, v148);
      OUTLINED_FUNCTION_31_33();
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_11_73();
      sub_1E3A57C98(v335);
      goto LABEL_18;
    case 0x79u:

      OUTLINED_FUNCTION_19_57(v149, v150, &qword_1ECF2B5C0, &unk_1E42B4E40);
      v69 = v287;
      v151 = OUTLINED_FUNCTION_138_0();
      sub_1E3E6313C(v151, v152, v153);
      a1 = type metadata accessor for HorizontalMultiGroupCollectionView;
      sub_1E3A57CEC(v69, v295, type metadata accessor for HorizontalMultiGroupCollectionView);
      v154 = swift_storeEnumTagMultiPayload();
      sub_1E3A575CC(v154, v155, v156);
      OUTLINED_FUNCTION_18_50();
      sub_1E3A57780(v157, v158, &unk_1E42D7548);
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v159, v160, v161, v162);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_1E3A57454();
      sub_1E3A57510();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v229, v230, v231);
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v232, v233, v234, v235);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      sub_1E3A57194();
      sub_1E3A573C8();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v236, v237, v238);
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v239, v240, v241, v242);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_30_36();
      OUTLINED_FUNCTION_55_0();
      goto LABEL_14;
    case 0x7Au:

      OUTLINED_FUNCTION_19_57(v163, v164, &qword_1ECF2B5C0, &unk_1E42B4E40);
      v69 = v286;
      v165 = OUTLINED_FUNCTION_138_0();
      sub_1E3E25F54(v165, v166, v167);
      a1 = type metadata accessor for HorizontalMultiRowCollectionView;
      sub_1E3A57CEC(v69, v300, type metadata accessor for HorizontalMultiRowCollectionView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_68();
      sub_1E3A57780(v168, v169, &unk_1E42D4F18);
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v170, v171, v172, v173);
      swift_storeEnumTagMultiPayload();
      v174 = sub_1E3A576C4();
      OUTLINED_FUNCTION_5_1(v174);
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v175, v176, v177);
      OUTLINED_FUNCTION_7_24();
      sub_1E3294EE4(v178, v179, v180, v181);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_30_36();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v182, v183, v184);
      goto LABEL_15;
    case 0x7Bu:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_68();
      sub_1E3A57780(v266, v267, &unk_1E42D4F18);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v268, v269, v270, v271);
      swift_storeEnumTagMultiPayload();
      v272 = sub_1E3A576C4();
      OUTLINED_FUNCTION_5_1(v272);
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v273, v274, v275);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v276, v277, v278, v279);
      OUTLINED_FUNCTION_31_33();
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_11_73();
      v280 = OUTLINED_FUNCTION_8_12();
      return sub_1E325F6F0(v280, v281, v282);
    case 0x7Eu:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_58();
      sub_1E3A57780(v243, v244, &unk_1E42EFBB8);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v245, v246, v247, v248);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57454();
      sub_1E3A57510();
      OUTLINED_FUNCTION_27_31();
      v249 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v249, v250, v251);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v252, v253, v254, v255);
      goto LABEL_17;
    case 0x7Fu:
    case 0x80u:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_122();
      sub_1E3A57780(v108, v109, &unk_1E42A0A58);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v110, v111, v112, v113);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57220();
      sub_1E3A5730C();
      sub_1E4201F44();
      v114 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v114, v115, v116);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v117, v118, v119, v120);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      sub_1E3A57194();
      sub_1E3A573C8();
      OUTLINED_FUNCTION_26_42();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v256, v257, v258);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v259, v260, v261, v262);
      OUTLINED_FUNCTION_31_33();
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_11_73();
LABEL_18:
      v263 = OUTLINED_FUNCTION_8_12();
      result = sub_1E325F6F0(v263, v264, v265);
      break;
    case 0x84u:
    case 0x85u:
    case 0x86u:

      OUTLINED_FUNCTION_19_57(v82, v83, &qword_1ECF2B5C0, &unk_1E42B4E40);
      v69 = v64;
      v84 = OUTLINED_FUNCTION_138_0();
      sub_1E381AC68(v84, v85, 0, v86);
      OUTLINED_FUNCTION_16_64();
      sub_1E3A57CEC(v64, v40, v87);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_122();
      sub_1E3A57780(v88, v89, &unk_1E42A0A58);
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E3294EE4(v90, v91, v92, &qword_1E42B4E08);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57220();
      sub_1E3A5730C();
      OUTLINED_FUNCTION_25_46();
      sub_1E4201F44();
LABEL_4:
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v93, v94, v95);
      OUTLINED_FUNCTION_55_0();
      sub_1E3294EE4(v96, v97, v98, &qword_1E42B4DF8);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57194();
      sub_1E3A573C8();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v99, v100, v101);
      OUTLINED_FUNCTION_55_0();
      sub_1E3294EE4(v102, v103, v104, &qword_1E42B4DF0);
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
LABEL_14:
      sub_1E325F6F0(v105, v106, v107);
LABEL_15:
      result = sub_1E3A57D4C(v69, a1);
      break;
    default:
      v335[0] = 0;
      v335[1] = 0xE000000000000000;
      sub_1E42074B4();
      v185 = MEMORY[0x1E69109E0](0xD00000000000003BLL, 0x80000001E426DC70);
      v186 = (v65)(v185);
      v334[0] = v186;
      sub_1E37D144C(v186, v187, v188);
      v189 = sub_1E4207944();
      MEMORY[0x1E69109E0](v189);

      v190 = v288;
      nullsub_1();

      v191 = v289;
      v192 = v307;
      (*(v289 + 16))(v305, v190, v307);
      swift_storeEnumTagMultiPayload();
      v193 = sub_1E3A576C4();
      OUTLINED_FUNCTION_5_1(v193);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v194, v195, v196, v197);
      OUTLINED_FUNCTION_31_33();
      swift_storeEnumTagMultiPayload();
      sub_1E3A57108();
      sub_1E3A57620();
      OUTLINED_FUNCTION_11_73();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v198, v199, v200);
      result = (*(v191 + 8))(v190, v192);
      break;
  }

  return result;
}

unint64_t sub_1E3A56F5C()
{
  result = qword_1EE288E68;
  if (!qword_1EE288E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31388, &unk_1E42B4DB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31398, &qword_1E42B4DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31390, &qword_1E42B4DC0);
    v3 = sub_1E3A5707C();
    sub_1E3A577C8(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E68);
  }

  return result;
}

unint64_t sub_1E3A5707C()
{
  result = qword_1EE288A78;
  if (!qword_1EE288A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31390, &qword_1E42B4DC0);
    sub_1E3A57108();
    sub_1E3A57620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A78);
  }

  return result;
}

unint64_t sub_1E3A57108()
{
  result = qword_1EE288AF0;
  if (!qword_1EE288AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313C0, &qword_1E42B4DF0);
    sub_1E3A57194();
    sub_1E3A573C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AF0);
  }

  return result;
}

unint64_t sub_1E3A57194()
{
  result = qword_1EE288C00;
  if (!qword_1EE288C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313C8, &qword_1E42B4DF8);
    sub_1E3A57220();
    sub_1E3A5730C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C00);
  }

  return result;
}

unint64_t sub_1E3A57220()
{
  result = qword_1EE288FA8;
  if (!qword_1EE288FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313D0, &qword_1E42B4E00);
    sub_1E3A57780(qword_1EE240A68, type metadata accessor for HorizontalCollectionViewWithHeader, &unk_1E42A0A58);
    sub_1E3A57780(qword_1EE23BFD0, type metadata accessor for GridView, &unk_1E42DDCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FA8);
  }

  return result;
}

unint64_t sub_1E3A5730C()
{
  result = qword_1EE288FB0;
  if (!qword_1EE288FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313D8, &qword_1E42B4E08);
    sub_1E3A57780(qword_1EE240A68, type metadata accessor for HorizontalCollectionViewWithHeader, &unk_1E42A0A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FB0);
  }

  return result;
}

unint64_t sub_1E3A573C8()
{
  result = qword_1EE288B60;
  if (!qword_1EE288B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313E0, &qword_1E42B4E10);
    sub_1E3A57454();
    sub_1E3A57510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B60);
  }

  return result;
}

unint64_t sub_1E3A57454()
{
  result = qword_1EE288D50;
  if (!qword_1EE288D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313E8, &qword_1E42B4E18);
    sub_1E3A57780(&qword_1EE277430, type metadata accessor for ListCollectionView, &unk_1E42EFBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D50);
  }

  return result;
}

unint64_t sub_1E3A57510()
{
  result = qword_1EE289060;
  if (!qword_1EE289060)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313F0, &qword_1E42B4E20);
    sub_1E3A575CC(v1, v2, v3);
    sub_1E3A57780(qword_1EE2409C0, type metadata accessor for HorizontalMultiGroupCollectionView, &unk_1E42D7548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289060);
  }

  return result;
}

unint64_t sub_1E3A575CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE266528[0];
  if (!qword_1EE266528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE266528);
  }

  return result;
}

unint64_t sub_1E3A57620()
{
  result = qword_1EE288C10;
  if (!qword_1EE288C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF313F8, &qword_1E42B4E28);
    sub_1E3A576C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C10);
  }

  return result;
}

unint64_t sub_1E3A576C4()
{
  result = qword_1EE288FD8;
  if (!qword_1EE288FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31400, &qword_1E42B4E30);
    sub_1E3A57780(qword_1EE2419E0, type metadata accessor for HorizontalMultiRowCollectionView, &unk_1E42D4F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FD8);
  }

  return result;
}

uint64_t sub_1E3A57780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3A577C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE275070;
  if (!qword_1EE275070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE275070);
  }

  return result;
}

unint64_t sub_1E3A5781C()
{
  result = qword_1EE288318;
  if (!qword_1EE288318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31348, &qword_1E42B4D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288318);
  }

  return result;
}

double sub_1E3A57880(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 179) = 0u;
  return result;
}

unint64_t sub_1E3A578B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2789F0;
  if (!qword_1EE2789F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2789F0);
  }

  return result;
}

unint64_t sub_1E3A5790C()
{
  result = qword_1ECF31410;
  if (!qword_1ECF31410)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31360, &qword_1E42B4D88);
    sub_1E3A579C4(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3A57A18(OpaqueTypeConformance2, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31410);
  }

  return result;
}

unint64_t sub_1E3A579C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31418;
  if (!qword_1ECF31418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31418);
  }

  return result;
}

unint64_t sub_1E3A57A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31420;
  if (!qword_1ECF31420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31420);
  }

  return result;
}

unint64_t sub_1E3A57A6C()
{
  result = qword_1ECF31428;
  if (!qword_1ECF31428)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31408, &qword_1E42B4E38);
    sub_1E3A578B8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31428);
  }

  return result;
}

unint64_t sub_1E3A57BB0()
{
  result = qword_1EE288BA0;
  if (!qword_1EE288BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31430, &unk_1E42B4E68);
    sub_1E3A56F5C();
    sub_1E3A5781C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BA0);
  }

  return result;
}

uint64_t sub_1E3A57CEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E3A57D4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3A57DE8(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 16) uiConfiguration];
  [v2 setShouldWrapModalInNavigationController_];

  return sub_1E4201E44();
}

id sub_1E3A57F24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentHostingViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DocumentHostingViewController(uint64_t a1)
{
  result = qword_1ECF53BE0;
  if (!qword_1ECF53BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A57FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  sub_1E3D98BF4(a1, a3, 1, 0);
  v4 = sub_1E4202734();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31488, &qword_1E42B4ED0) + 36)) = v4;
  type metadata accessor for Router(0);
  sub_1E40C4334();

  sub_1E40C49A8();
  v6 = v5;

  sub_1E3A58140(&qword_1EE23C228, type metadata accessor for Router, &unk_1E42EB398);
  v7 = sub_1E4200504();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31490, &qword_1E42B4ED8) + 36));
  *v8 = v7;
  v8[1] = v6;
  v9 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment(0);
  sub_1E3A58140(&qword_1EE283350, type metadata accessor for AppEnvironment, &unk_1E42BD340);

  v10 = sub_1E4200504();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31498, qword_1E42B4EE0);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_1E3A58140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3A58204()
{
  result = qword_1ECF314A0;
  if (!qword_1ECF314A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31498, qword_1E42B4EE0);
    sub_1E3A582A8();
    sub_1E3A583F0(&qword_1EE288820, &qword_1ECF2A7B8, &qword_1E429E4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF314A0);
  }

  return result;
}

unint64_t sub_1E3A582A8()
{
  result = qword_1ECF314A8;
  if (!qword_1ECF314A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31490, &qword_1E42B4ED8);
    sub_1E3A5834C();
    sub_1E3A583F0(&qword_1EE2887F0, &unk_1ECF2A7A8, &qword_1E42B2790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF314A8);
  }

  return result;
}

unint64_t sub_1E3A5834C()
{
  result = qword_1ECF314B0;
  if (!qword_1ECF314B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31488, &qword_1E42B4ED0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF314B0);
  }

  return result;
}

uint64_t sub_1E3A583F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E3A58480(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3A584D8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E3A58564(uint64_t a1)
{
  OUTLINED_FUNCTION_29_0(a1);
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3A585A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1E3A586A8()
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 2208))();
  if (!v2)
  {
    return 0;
  }

  return result;
}

void sub_1E3A58710()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v0);
  OUTLINED_FUNCTION_6_86();
}

void sub_1E3A587A8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v0);
  OUTLINED_FUNCTION_6_86();
}

void sub_1E3A58840()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v0);
  OUTLINED_FUNCTION_6_86();
}

void sub_1E3A588D8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v0);
  OUTLINED_FUNCTION_6_86();
}

uint64_t sub_1E3A58964()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 560))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 464))();

  if (!v2)
  {
    return v2;
  }

  result = sub_1E32AE9B0(v2);
  if (!result)
  {

    return 0;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v2);
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:

    type metadata accessor for CollectionViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v2 = *(v4 + 16);

      return v2;
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_1E3A58AA0()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for LivePostPlayTemplateViewController(0);
  objc_msgSendSuper2(&v12, sel_vui_viewDidLoad);
  if (TVAppFeature.isEnabled.getter(10, v2, v3))
  {
    sub_1E3A5A640();
  }

  OUTLINED_FUNCTION_13_75();
  v4 += 55;
  v5 = *v4;
  v6 = (*v4)();
  v7 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_21();
  (*(v8 + 176))();

  v9 = v5();
  v10 = [v9 vuiLayer];

  if (v10)
  {
    [v10 setMasksToBounds_];
  }

  return [v1 vui:2 setOverrideUserInterfaceStyle:?];
}

uint64_t sub_1E3A58C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for LivePostPlayTemplateViewController(0);
  v8 = objc_msgSendSuper2(&v14, sel_vuiCollectionView_orthogonalScrollViewDidScroll_section_, a1, a2, a3);
  if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x888))(v8))
  {
    swift_getObjectType();
    v9 = OUTLINED_FUNCTION_20_55();
    v10(v9);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_13_75();
  v11 = OUTLINED_FUNCTION_4_103();
  return v12(v11);
}

uint64_t sub_1E3A58DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1E3ED69F4(a1, a2, a3, a4, a5, a6);
  if ((*((*MEMORY[0x1E69E7D40] & *v6) + 0x888))())
  {
    swift_getObjectType();
    v7 = OUTLINED_FUNCTION_20_55();
    v8(v7);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_13_75();
  v9 = OUTLINED_FUNCTION_4_103();

  return v10(v9);
}

void sub_1E3A58EB0(char a1)
{
  v2 = v1;
  if (sub_1E3A5A548())
  {
    v4 = v2;
    oslog = sub_1E41FFC94();
    v5 = sub_1E4206814();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_160();
      *v6 = 138412290;
      *(v6 + 4) = v4;
      *v7 = v4;
      v8 = v4;
      _os_log_impl(&dword_1E323F000, oslog, v5, "%@ auto-play is disabled due to either device settings or shareplay session is active", v6, 0xCu);
      sub_1E325F7A8(v7, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7D40];
    if (a1)
    {
      v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8B8))();
      if (v11)
      {
        return;
      }

      v12 = v10;
      v13 = v2;
      v14 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_84_1())
      {
        v15 = swift_slowAlloc();
        v16 = OUTLINED_FUNCTION_160();
        OUTLINED_FUNCTION_15_69(v16, 5.778e-34);
        *(v15 + 12) = 2048;
        *(v15 + 14) = v12;
        v17 = v13;
        OUTLINED_FUNCTION_35_8();
        _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
        sub_1E325F7A8(v16, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      OUTLINED_FUNCTION_29_40();
      v24 = (*(v23 + 2256))();
    }

    else
    {
      v26 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x8E8))();
      if (v27)
      {
        return;
      }

      v12 = v26;
      v13 = v2;
      v28 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_84_1())
      {
        v29 = swift_slowAlloc();
        v30 = OUTLINED_FUNCTION_160();
        OUTLINED_FUNCTION_15_69(v30, 5.778e-34);
        *(v29 + 12) = 2048;
        *(v29 + 14) = v12;
        v31 = v13;
        OUTLINED_FUNCTION_35_8();
        _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
        sub_1E325F7A8(v30, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      OUTLINED_FUNCTION_29_40();
      v24 = (*(v37 + 2304))();
    }

    (*((*v9 & *v13) + 0x988))(0, v12, 0, v24, v25 & 1);
  }
}

void sub_1E3A59250(char a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v6 = v5;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  *&v16 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v18 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView;
    v20 = *&v6[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView];
    if (v20)
    {
      v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x170);
      v22 = v20;
      v21();

      v23 = *&v6[v19];
      if (v23)
      {
        [v23 vui_removeFromSuperView];
      }

      [*&v6[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView] vui_removeFromSuperView];
      *&v6[v19] = 0;
      goto LABEL_31;
    }

LABEL_53:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v118 = v15;
  if (a3)
  {
    v118 = OUTLINED_FUNCTION_105(v6);
    v24 = sub_1E4206814();

    if (os_log_type_enabled(v118, v24))
    {
      v25 = OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_13_15(v26, 5.7779e-34);
      v27 = "%@ cannot show auto play timer as duration is nil";
LABEL_30:
      _os_log_impl(&dword_1E323F000, v118, v24, v27, v25, 0xCu);
      sub_1E325F7A8(v26, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v28 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView;
  v29 = *&v6[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView];
  if (!v29 || (v30 = [v29 superview]) == 0)
  {
    v116 = a5;
    v31 = sub_1E3A59E64();
    if (v31)
    {
      v32 = v31;
      v33 = sub_1E3A5A2B4();
      if (v33)
      {
        v117 = v33;
        v108[1] = a4;
        v34 = *&a2;
        v35 = v6;
        v36 = sub_1E41FFC94();
        v37 = sub_1E4206814();

        v38 = OUTLINED_FUNCTION_84_1();
        v115 = v32;
        if (v38)
        {
          v39 = OUTLINED_FUNCTION_6_21();
          v40 = OUTLINED_FUNCTION_160();
          *v39 = 138412290;
          *(v39 + 4) = v35;
          *v40 = v35;
          v41 = v35;
          _os_log_impl(&dword_1E323F000, v36, v37, "%@ adding countdown progress view", v39, 0xCu);
          sub_1E325F7A8(v40, &unk_1ECF28E30, &qword_1E429E820);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_6_0();
        }

        type metadata accessor for CountDownProgressView();
        v42 = *&v35[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewColor];
        v43 = *&v35[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewImage];
        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        v46 = v117;
        *(v45 + 24) = v117;
        v47 = v43;
        v114 = v46;
        v48 = sub_1E4004540(v42, v43, v42, 0, sub_1E3A5AFD0, v45, 0.0, 0.0, 63.0, 63.0, v34, 4.0);
        v49 = sub_1E3A5A5D4();
        v50 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v48) + 0x110))(v49);
        v51 = *&v6[v28];
        *&v6[v28] = v48;
        v52 = v48;

        v53 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        v54 = [objc_opt_self() blackColor];
        v55 = [v54 colorWithAlphaComponent_];

        [v53 setBackgroundColor_];
        v56 = *&v35[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView];
        v110 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView;
        *&v35[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView] = v53;
        v57 = v53;

        v58 = (*((*v50 & *v35) + 0x1B8))();
        v59 = [v58 indexPathsForVisibleItems];

        v60 = v118;
        v61 = sub_1E42062B4();

        v120[0] = v61;

        v62 = 0;
        sub_1E3A5AEDC(v120);
        v113 = v52;
        v111 = v48;

        v63 = v120[0];
        v112 = v35;
        swift_unknownObjectWeakInit();
        v119 = MEMORY[0x1E69E7CC0];
        v64 = *(v63 + 16);
        if (v64)
        {
          v109 = v57;
          v65 = (*(v13 + 80) + 32) & ~*(v13 + 80);
          v108[2] = v63;
          v66 = v63 + v65;
          swift_beginAccess();
          v68 = *(v13 + 16);
          v67 = (v13 + 16);
          v117 = v68;
          v69 = v67[7];
          v62 = v67;
          v70 = (v67 - 1);
          v71 = MEMORY[0x1E69E7CC0];
          do
          {
            v117(v18, v66, v60);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v73 = Strong;
              v74 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8))();

              v75 = sub_1E41FE7E4();
              v76 = [v74 vui:v75 cellForItemAtIndexPath:?];

              v60 = v118;
              v77 = (*v70)(v18, v60);
              if (v76)
              {
                MEMORY[0x1E6910BF0](v77);
                if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1E42062F4();
                }

                sub_1E4206324();
                v71 = v119;
              }
            }

            else
            {
              (*v70)(v18, v60);
            }

            v66 += v69;
            --v64;
          }

          while (v64);

          v57 = v109;
        }

        else
        {

          v71 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1E69144A0](v120);
        v80 = sub_1E32AE9B0(v71);
        v81 = v115;
        if (v80)
        {
          if ((v71 & 0xC000000000000001) != 0)
          {
            v82 = MEMORY[0x1E6911E60](0, v71);
          }

          else
          {
            if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);

              __break(1u);
              return;
            }

            v82 = *(v71 + 32);
          }

          v83 = v82;
        }

        else
        {

          v83 = 0;
        }

        v85 = (*(*v81 + 392))(v84);
        v86 = v113;
        if (v85)
        {
          OUTLINED_FUNCTION_26_0();
          (*(v87 + 552))(v120);

          if (v121)
          {
            v88 = 0.0;
          }

          else
          {
            v88 = *v120;
          }

          if (v83)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v88 = 0.0;
          if (v83)
          {
LABEL_46:
            objc_opt_self();
            v89 = swift_dynamicCastObjCClass();
            if (v89)
            {
              v90 = v89;
              v91 = [v57 vuiLayer];
              [v91 setCornerRadius_];

              v92 = [v90 vuiContentView];
              v93 = v112;
              v94 = v110;
              [v92 vui:*(v112 + v110) addSubview:0 oldView:?];
              v95 = v86;
              [v92 vui:v95 addSubview:0 oldView:?];
              [v92 frame];
              v97 = v96;
              v99 = v98;
              [v95 frame];
              CGRectGetWidth(v122);
              [v95 frame];
              CGRectGetHeight(v123);
              [v95 frame];
              nullsub_1();
              [v95 setFrame_];
              [v57 setFrame_];
              [v95 setVuiUserInteractionEnabled_];

              v100 = [*(v93 + v94) setVuiUserInteractionEnabled_];
              v101 = MEMORY[0x1E69E7D40];
              v102 = (*((*MEMORY[0x1E69E7D40] & *v95) + 0x168))(v100);
              v104 = v57;
              if ((*((*v101 & *v93) + 0x888))(v102))
              {
                v105 = v103;
                swift_getObjectType();
                v106 = v114;
                v107 = [v114 tvpPlaylist];
                (*(v105 + 24))(v34);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            else
            {
            }

            goto LABEL_53;
          }
        }

        goto LABEL_53;
      }
    }

    v118 = OUTLINED_FUNCTION_105(v6);
    v24 = sub_1E4206814();

    if (os_log_type_enabled(v118, v24))
    {
      v25 = OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_13_15(v26, 5.7779e-34);
      v27 = "%@ cannot show auto play timer as media info is nil for the first item and we won't be able to autoplay";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v118 = OUTLINED_FUNCTION_105(v6);
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v118, v24))
  {
    v25 = OUTLINED_FUNCTION_6_21();
    v26 = OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_13_15(v26, 5.7779e-34);
    v27 = "%@ we are already showing a countdown progress view, returning early";
    goto LABEL_30;
  }

LABEL_31:
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3A59E64()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  if (!(*(v2 + 560))() || (OUTLINED_FUNCTION_26_0(), v4 = (*(v3 + 464))(), , !v4))
  {
LABEL_21:
    v12 = v1;
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_160();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v1;
      v17 = v12;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v18, v19, "%@ collectionViewModel is nil, cannot find viewModel for first item");
      sub_1E325F7A8(v16, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    goto LABEL_23;
  }

  if (!sub_1E32AE9B0(v4))
  {

    goto LABEL_21;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_26_0();
  v6 = (*(v5 + 1040))();
  if (!v6)
  {
LABEL_27:
    v20 = v1;
    v21 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      OUTLINED_FUNCTION_6_21();
      v22 = OUTLINED_FUNCTION_160();
      OUTLINED_FUNCTION_15_69(v22, 5.7779e-34);
      v23 = v20;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      sub_1E325F7A8(v22, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    return 0;
  }

  v4 = v6;
  if (!sub_1E32AE9B0(v6))
  {

    goto LABEL_27;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_36:
    v7 = MEMORY[0x1E6911E60](0, v4);
    goto LABEL_13;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_38;
  }

  v7 = *(v4 + 32);

LABEL_13:

  v9 = (*(*v7 + 872))(v8);
  if (!v9)
  {
LABEL_31:
    v29 = v1;
    v13 = sub_1E41FFC94();
    v30 = sub_1E4206814();

    if (os_log_type_enabled(v13, v30))
    {
      v31 = OUTLINED_FUNCTION_6_21();
      v32 = OUTLINED_FUNCTION_160();
      *v31 = 138412290;
      *(v31 + 4) = v29;
      *v32 = v1;
      v33 = v29;
      _os_log_impl(&dword_1E323F000, v13, v30, "%@ items array is nil or empty, cannot find viewModel for first item", v31, 0xCu);
      sub_1E325F7A8(v32, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

LABEL_23:

    return 0;
  }

  v4 = v9;
  result = sub_1E32AE9B0(v9);
  if (!result)
  {

    goto LABEL_31;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_38:
    v11 = MEMORY[0x1E6911E60](0, v4);
    goto LABEL_18;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v4 + 32);

LABEL_18:

    return v11;
  }

  __break(1u);
  return result;
}

id sub_1E3A5A2B4()
{
  LOBYTE(v17) = 1;
  OUTLINED_FUNCTION_26_0();
  v0 += 97;
  v1 = *v0;
  (*v0)(v18, &v17, &unk_1F5D5E578, &off_1F5D5CBF8);
  if (!v19)
  {
    goto LABEL_9;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_21_12(v2) & 1) == 0)
  {
    return 0;
  }

  v3 = v17;
  LOBYTE(v17) = 2;
  v4 = v1(v18, &v17, &unk_1F5D5E578, &off_1F5D5CBF8);
  if (!v19)
  {

LABEL_9:
    sub_1E325F7A8(v18, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if ((OUTLINED_FUNCTION_21_12(v4) & 1) == 0)
  {

    return 0;
  }

  v5 = v17;
  v6 = sub_1E3744600(v3);

  v7 = sub_1E3744600(v5);

  v8 = objc_allocWithZone(VUIVideosPlayable);
  v9 = sub_1E37448C4(v6, v7);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E4298880;
    *(v10 + 32) = v9;
    v11 = objc_allocWithZone(VUIMediaInfo);
    v12 = v9;
    v9 = sub_1E376538C(13, v10, MEMORY[0x1E69E7CC0], 0);
    [v9 setIntent_];
    [v9 setAutomaticPlaybackStart_];
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 appController];

    if (v14)
    {
      v15 = [v14 appContext];
    }

    else
    {
      v15 = 0;
    }

    [v9 setAppContext_];
  }

  return v9;
}

uint64_t sub_1E3A5A548()
{
  v0 = [objc_opt_self() isFeatureEnabled_];
  v1 = [objc_opt_self() isPostPlayAutoPlayEnabledForType_];
  v2 = *sub_1E32A9398();
  v3 = sub_1E3C14D60();

  return v0 & 1 | ((v1 & 1) == 0) | v3 & 1u;
}

id sub_1E3A5A5D4()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  return v1;
}

double sub_1E3A5A640()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v20 - v1;
  v3 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = [objc_opt_self() defaultCenter];
  v16 = *sub_1E37E1340();
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v17 = sub_1E4206A04();
  v20[1] = v17;
  v18 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v18);
  sub_1E38DF10C();
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F7A8(v2, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v5 + 8))(v8, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E38DF1B8();
  sub_1E4200844();

  (*(v11 + 8))(v14, v9);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

void sub_1E3A5A950()
{
  OUTLINED_FUNCTION_156();
  v3 = objc_allocWithZone(v1);
  sub_1E3A5A990(v2, v0);
}

void sub_1E3A5A990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = (v2 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_loggingIdentifier);
  *v6 = 0;
  v6[1] = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_gameEndAutoPlayTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_gameEndPlaybackPrefetchTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_broadcastEndAutoPlayTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_broadcastEndPlaybackPrefetchTimerDuration);
  *(v2 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewCell) = 0;
  OUTLINED_FUNCTION_27_32(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewSize);
  *(v2 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewLineWidth) = 0x4010000000000000;
  v7 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewColor;
  *(v3 + v7) = [objc_opt_self() whiteColor];
  v8 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewImage;
  sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
  v9 = [objc_opt_self() configurationWithTextStyle_];
  *(v3 + v8) = OUTLINED_FUNCTION_2_100(v9);
  *(v3 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_cancellables) = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_23_41();

  sub_1E3ED15A8(a1, a2);
}

id sub_1E3A5AB30(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_loggingIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_gameEndAutoPlayTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_gameEndPlaybackPrefetchTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_broadcastEndAutoPlayTimerDuration);
  OUTLINED_FUNCTION_1_123(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_broadcastEndPlaybackPrefetchTimerDuration);
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewProtectionView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewCell] = 0;
  OUTLINED_FUNCTION_27_32(OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewSize);
  *&v1[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewLineWidth] = 0x4010000000000000;
  v5 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewColor;
  *&v2[v5] = [objc_opt_self() whiteColor];
  v6 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_countdownProgressViewImage;
  sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
  v7 = [objc_opt_self() configurationWithTextStyle_];
  *&v2[v6] = OUTLINED_FUNCTION_2_100(v7);
  *&v2[OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_cancellables] = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_23_41();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for LivePostPlayTemplateViewController(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  return v8;
}

uint64_t sub_1E3A5AD08()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_delegate);

  v1 = OBJC_IVAR____TtC8VideosUI34LivePostPlayTemplateViewController_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id sub_1E3A5ADD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LivePostPlayTemplateViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3A5AEDC(uint64_t *a1)
{
  v2 = *(sub_1E41FE874() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E3A5C928(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1E3A5B19C(v5);
  *a1 = v3;
}

uint64_t type metadata accessor for LivePostPlayTemplateViewController(uint64_t a1)
{
  result = qword_1ECF53BF0;
  if (!qword_1ECF53BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A5AFD0()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x888))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      (*(v5 + 16))(v1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E3A5B0A8(uint64_t a1)
{
  result = sub_1E41FFCB4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1E3A5B19C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1E4207914();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E41FE874();
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E41FE874() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1E3A5B610(v8, v9, a1, v4);
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
    sub_1E3A5B2CC(0, v2, 1, a1);
  }
}

void sub_1E3A5B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E41FE874();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v40 = a2;
  if (a3 == a2)
  {
    return;
  }

  v18 = &v38 - v15;
  v19 = *a4;
  v21 = *(v16 + 16);
  v20 = v16 + 16;
  v22 = *(v20 + 56);
  v50 = (v20 - 8);
  v51 = v21;
  v52 = v20;
  v48 = (v20 + 16);
  v49 = v19;
  v23 = (v19 + v22 * (a3 - 1));
  v47 = -v22;
  v24 = a1 - a3;
  v39 = v22;
  v25 = v19 + v22 * a3;
  while (2)
  {
    v43 = v23;
    v44 = a3;
    v41 = v25;
    v42 = v24;
    v26 = v24;
    v27 = v23;
    while (1)
    {
      v28 = v51;
      (v51)(v18, v25, v8, v17);
      v28(v13, v27, v8);
      v29 = v18;
      v30 = sub_1E41FE854();
      if (v30 >= sub_1E41FE854())
      {
        break;
      }

      v31 = *v50;
      (*v50)(v13, v8);
      v31(v29, v8);
      v18 = v29;
LABEL_8:
      if (!v49)
      {
        __break(1u);
        return;
      }

      v35 = *v48;
      (*v48)(v10, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      v35(v27, v10, v8);
      v27 += v47;
      v25 += v47;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_13;
      }
    }

    v32 = sub_1E41FE854();
    if (v32 == sub_1E41FE854())
    {
      v46 = sub_1E41FE824();
      v45 = sub_1E41FE824();
      v33 = v10;
      v34 = *v50;
      (*v50)(v13, v8);
      v34(v29, v8);
      v10 = v33;
      v18 = v29;
      if (v46 >= v45)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v37 = *v50;
    (*v50)(v13, v8);
    v37(v29, v8);
    v18 = v29;
LABEL_13:
    a3 = v44 + 1;
    v23 = &v43[v39];
    v24 = v42 - 1;
    v25 = v41 + v39;
    if (v44 + 1 != v40)
    {
      continue;
    }

    break;
  }
}

void sub_1E3A5B610(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v8 = sub_1E41FE874();
  MEMORY[0x1EEE9AC00](v8);
  v140 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v131 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v131 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v131 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v134 = &v131 - v21;
  v26 = MEMORY[0x1EEE9AC00](v22);
  v133 = &v131 - v27;
  v144 = v23;
  v145 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v158 = *v135;
    if (!v158)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_151;
  }

  v147 = v19;
  v148 = v25;
  v154 = v24;
  v132 = a4;
  v29 = 0;
  v158 = v23 + 16;
  v157 = (v23 + 8);
  v155 = (v23 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v156 = v14;
  while (1)
  {
    v31 = v29++;
    v137 = v31;
    if (v29 >= v28)
    {
      goto LABEL_39;
    }

    v143 = v28;
    v136 = v30;
    v32 = *v145;
    v33 = *(v23 + 72);
    v34 = v29;
    v35 = *(v23 + 16);
    v36 = v133;
    v35(v133, &(*v145)[v33 * v29], v8, v26);
    v150 = v33;
    v37 = &v32[v33 * v31];
    v38 = v134;
    v142 = v35;
    (v35)(v134, v37, v8);
    v39 = sub_1E41FE854();
    if (v39 >= sub_1E41FE854())
    {
      v41 = sub_1E41FE854();
      if (v41 != sub_1E41FE854())
      {
        LODWORD(v149) = 0;
        goto LABEL_10;
      }

      v42 = sub_1E41FE824();
      v40 = v42 < sub_1E41FE824();
    }

    else
    {
      v40 = 1;
    }

    LODWORD(v149) = v40;
LABEL_10:
    if (v5)
    {
      v130 = *v157;
      (*v157)(v38, v8);
      v130(v36, v8);
LABEL_126:

      return;
    }

    v43 = *v157;
    (*v157)(v38, v8);
    v141 = v43;
    (v43)(v36, v8);
    v44 = (v137 + 2);
    v45 = v150 * (v137 + 2);
    v46 = &v32[v45];
    v47 = v150 * v29;
    v30 = &v32[v150 * v29];
    do
    {
      v48 = v44;
      v49 = v34;
      v50 = v47;
      v51 = v45;
      if (v44 >= v143)
      {
        break;
      }

      v153 = v34;
      v151 = v44;
      v146 = v5;
      v52 = v142;
      (v142)(v147, v46, v8);
      v52(v148, v30, v8);
      v53 = sub_1E41FE854();
      if (v53 >= sub_1E41FE854())
      {
        v55 = sub_1E41FE854();
        if (v55 == sub_1E41FE854())
        {
          v56 = sub_1E41FE824();
          v54 = v56 < sub_1E41FE824();
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        v54 = 1;
      }

      v5 = v146;
      v57 = v141;
      (v141)(v148, v8);
      v57(v147, v8);
      v48 = v151;
      v44 = v151 + 1;
      v46 += v150;
      v30 += v150;
      v49 = v153;
      v34 = v153 + 1;
      v47 = v50 + v150;
      v45 = v51 + v150;
    }

    while (v149 == v54);
    v23 = v144;
    if (v149)
    {
      v31 = v137;
      if (v48 < v137)
      {
        goto LABEL_150;
      }

      if (v137 >= v48)
      {
        v29 = v48;
        v30 = v136;
        v14 = v156;
        goto LABEL_39;
      }

      v58 = v137 * v150;
      do
      {
        if (v31 != v49)
        {
          v153 = v49;
          v59 = *v145;
          if (!*v145)
          {
            goto LABEL_155;
          }

          v60 = v48;
          v151 = *v155;
          (v151)(v140, &v59[v58], v8);
          v61 = v58 < v50 || &v59[v58] >= &v59[v51];
          if (v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v58 != v50)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          (v151)(&v59[v50], v140, v8);
          v48 = v60;
          v49 = v153;
        }

        ++v31;
        v50 -= v150;
        v51 -= v150;
        v58 += v150;
        v62 = v31 < v49--;
      }

      while (v62);
      v29 = v48;
      v23 = v144;
    }

    else
    {
      v29 = v48;
    }

    v30 = v136;
    v14 = v156;
    v31 = v137;
LABEL_39:
    v63 = v145[1];
    if (v29 < v63)
    {
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_147;
      }

      if (v29 - v31 < v132)
      {
        break;
      }
    }

LABEL_60:
    if (v29 < v31)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1E37FFF70(0, *(v30 + 2) + 1, 1, v30);
    }

    v82 = *(v30 + 2);
    v81 = *(v30 + 3);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      v30 = sub_1E37FFF70((v81 > 1), v82 + 1, 1, v30);
    }

    *(v30 + 2) = v83;
    v84 = v30 + 32;
    v85 = &v30[16 * v82 + 32];
    *v85 = v137;
    *(v85 + 1) = v29;
    v153 = *v135;
    if (!v153)
    {
      goto LABEL_156;
    }

    if (v82)
    {
      v149 = v29;
      v151 = v30 + 32;
      while (1)
      {
        v86 = v83 - 1;
        v87 = &v84[16 * v83 - 16];
        v88 = &v30[16 * v83];
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v89 = *(v30 + 4);
          v90 = *(v30 + 5);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_81:
          if (v92)
          {
            goto LABEL_133;
          }

          v104 = *v88;
          v103 = *(v88 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_136;
          }

          v108 = *(v87 + 1);
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_141;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v83 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v83 < 2)
        {
          goto LABEL_135;
        }

        v111 = *v88;
        v110 = *(v88 + 1);
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_96:
        if (v107)
        {
          goto LABEL_138;
        }

        v113 = *v87;
        v112 = *(v87 + 1);
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_140;
        }

        if (v114 < v106)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v86 - 1 >= v83)
        {
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v145)
        {
          goto LABEL_153;
        }

        v118 = v30;
        v119 = &v84[16 * v86 - 16];
        v120 = *v119;
        v121 = v86;
        v30 = &v84[16 * v86];
        v122 = *(v30 + 1);
        sub_1E3A5C204(&(*v145)[*(v144 + 72) * *v119], &(*v145)[*(v144 + 72) * *v30], &(*v145)[*(v144 + 72) * v122], v153);
        if (v5)
        {
          goto LABEL_126;
        }

        if (v122 < v120)
        {
          goto LABEL_128;
        }

        v5 = *(v118 + 2);
        if (v121 > v5)
        {
          goto LABEL_129;
        }

        *v119 = v120;
        *(v119 + 1) = v122;
        if (v121 >= v5)
        {
          goto LABEL_130;
        }

        v83 = v5 - 1;
        memmove(v30, v30 + 16, 16 * (v5 - 1 - v121));
        v30 = v118;
        *(v118 + 2) = v5 - 1;
        v62 = v5 > 2;
        v5 = 0;
        v14 = v156;
        v29 = v149;
        v84 = v151;
        if (!v62)
        {
          goto LABEL_110;
        }
      }

      v93 = &v84[16 * v83];
      v94 = *(v93 - 8);
      v95 = *(v93 - 7);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_131;
      }

      v98 = *(v93 - 6);
      v97 = *(v93 - 5);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_132;
      }

      v100 = *(v88 + 1);
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_134;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_137;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = *(v87 + 1);
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_145;
        }

        if (v91 < v117)
        {
          v86 = v83 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v23 = v144;
    v28 = v145[1];
    if (v29 >= v28)
    {
      goto LABEL_114;
    }
  }

  v64 = (v31 + v132);
  if (__OFADD__(v31, v132))
  {
    goto LABEL_148;
  }

  if (v64 >= v63)
  {
    v64 = v145[1];
  }

  if (v64 < v31)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v30 = sub_1E37FFF5C(v30);
LABEL_116:
    v123 = v30 + 16;
    v124 = *(v30 + 2);
    while (v124 >= 2)
    {
      if (!*v145)
      {
        goto LABEL_154;
      }

      v125 = v30;
      v126 = &v30[16 * v124];
      v127 = *v126;
      v30 = &v123[2 * v124];
      v128 = *(v30 + 1);
      sub_1E3A5C204(&(*v145)[*(v144 + 72) * *v126], &(*v145)[*(v144 + 72) * *v30], &(*v145)[*(v144 + 72) * v128], v158);
      if (v5)
      {
        break;
      }

      if (v128 < v127)
      {
        goto LABEL_142;
      }

      if (v124 - 2 >= *v123)
      {
        goto LABEL_143;
      }

      *v126 = v127;
      *(v126 + 1) = v128;
      v129 = *v123 - v124;
      if (*v123 < v124)
      {
        goto LABEL_144;
      }

      v124 = *v123 - 1;
      memmove(v30, v30 + 16, 16 * v129);
      *v123 = v124;
      v30 = v125;
    }

    goto LABEL_126;
  }

  if (v29 == v64)
  {
    goto LABEL_60;
  }

  v136 = v30;
  v146 = v5;
  v65 = *v145;
  v66 = *(v23 + 72);
  v153 = *(v23 + 16);
  v67 = &v65[v66 * (v29 - 1)];
  v150 = -v66;
  v151 = v65;
  v68 = (v31 - v29);
  v138 = v66;
  v139 = v64;
  v69 = &v65[v29 * v66];
LABEL_48:
  v149 = v29;
  v141 = v69;
  v142 = v68;
  v143 = v67;
  while (1)
  {
    v70 = v153;
    v71 = v154;
    (v153)(v154, v69, v8);
    v70(v14, v67, v8);
    v72 = sub_1E41FE854();
    if (v72 >= sub_1E41FE854())
    {
      v74 = sub_1E41FE854();
      if (v74 != sub_1E41FE854())
      {
        v80 = *v157;
        (*v157)(v14, v8);
        v80(v71, v8);
LABEL_58:
        v29 = v149 + 1;
        v67 = (v143 + v138);
        v68 = v142 - 1;
        v69 = &v141[v138];
        if ((v149 + 1) == v139)
        {
          v29 = v139;
          v5 = v146;
          v30 = v136;
          v31 = v137;
          goto LABEL_60;
        }

        goto LABEL_48;
      }

      v75 = sub_1E41FE824();
      v76 = sub_1E41FE824();
      v77 = *v157;
      (*v157)(v156, v8);
      v77(v71, v8);
      v14 = v156;
      if (v75 >= v76)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v73 = *v157;
      (*v157)(v14, v8);
      v73(v71, v8);
    }

    if (!v151)
    {
      break;
    }

    v78 = *v155;
    v79 = v152;
    (*v155)(v152, v69, v8);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v8);
    v67 += v150;
    v69 += v150;
    v61 = __CFADD__(v68++, 1);
    if (v61)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_1E3A5C204(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v68 = a2;
  v7 = sub_1E41FE874();
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v20 = v68 - a1;
  v21 = v68 - a1 == 0x8000000000000000 && v19 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - v68;
  if (a3 - v68 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v24 = v20 / v19;
  v71 = a1;
  v70 = a4;
  v66 = (v15 + 16);
  v67 = (v15 + 8);
  v25 = v22 / v19;
  if (v20 / v19 < v22 / v19)
  {
    sub_1E390E78C(a1, v24, a4);
    v64 = (a4 + v24 * v19);
    v65 = v7;
    v69 = v64;
    v63 = a3;
    while (1)
    {
      if (a4 >= v64 || v68 >= a3)
      {
        goto LABEL_70;
      }

      v27 = v19;
      v28 = *v66;
      (*v66)(v17, v68, v7);
      v28(v13, a4, v7);
      v29 = sub_1E41FE854();
      if (v29 < sub_1E41FE854())
      {
        break;
      }

      v33 = sub_1E41FE854();
      if (v33 == sub_1E41FE854())
      {
        v34 = sub_1E41FE824();
        v62 = sub_1E41FE824();
        v35 = a4;
        v36 = *v67;
        v37 = v65;
        (*v67)(v13, v65);
        v36(v17, v37);
        a4 = v35;
        if (v34 < v62)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v38 = *v67;
        v39 = v65;
        (*v67)(v13, v65);
        v38(v17, v39);
      }

      v19 = v27;
      if (a1 < a4 || a1 >= a4 + v27)
      {
        v7 = v65;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v63;
      }

      else
      {
        a3 = v63;
        v7 = v65;
        if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v70 = a4 + v27;
      a4 += v27;
LABEL_40:
      a1 += v19;
      v71 = a1;
    }

    v30 = *v67;
    (*v67)(v13, v7);
    v30(v17, v7);
LABEL_18:
    v19 = v27;
    v31 = v68 + v27;
    if (a1 < v68 || a1 >= v31)
    {
      v7 = v65;
      swift_arrayInitWithTakeFrontToBack();
      v68 = v31;
      a3 = v63;
    }

    else
    {
      a3 = v63;
      v7 = v65;
      if (a1 != v68)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = v31;
    }

    goto LABEL_40;
  }

  sub_1E390E78C(v68, v22 / v19, a4);
  v41 = a4 + v25 * v19;
  v42 = -v19;
  v43 = v41;
  v61 = a1;
  v62 = a4;
LABEL_42:
  v63 = v68 + v42;
  v44 = a3;
  v59 = v43;
  while (1)
  {
    if (v41 <= a4)
    {
      v71 = v68;
      v69 = v43;
      goto LABEL_70;
    }

    if (v68 <= a1)
    {
      break;
    }

    v60 = v43;
    v45 = v41 + v42;
    v46 = *v66;
    (*v66)(v64, v41 + v42, v7);
    v46(v65, v63, v7);
    v47 = sub_1E41FE854();
    if (v47 >= sub_1E41FE854())
    {
      v49 = sub_1E41FE854();
      if (v49 == sub_1E41FE854())
      {
        v50 = sub_1E41FE824();
        v48 = v50 < sub_1E41FE824();
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      v48 = 1;
    }

    a3 = v44 + v42;
    v51 = *v67;
    (*v67)(v65, v7);
    v51(v64, v7);
    if (v48)
    {
      v53 = v44 < v68 || a3 >= v68;
      a1 = v61;
      a4 = v62;
      if (v53)
      {
        v54 = v63;
        swift_arrayInitWithTakeFrontToBack();
        v68 = v54;
        v43 = v60;
      }

      else
      {
        v43 = v60;
        v55 = v68;
        v56 = v63;
        v68 = v63;
        if (v44 != v55)
        {
          v57 = v60;
          swift_arrayInitWithTakeBackToFront();
          v68 = v56;
          v43 = v57;
        }
      }

      goto LABEL_42;
    }

    v52 = v44 < v41 || a3 >= v41;
    a1 = v61;
    a4 = v62;
    if (v52)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v43 = v41 + v42;
    v21 = v41 == v44;
    v44 += v42;
    v41 += v42;
    if (!v21)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      v44 = a3;
      v41 = v45;
      v43 = v45;
    }
  }

  v71 = v68;
  v69 = v59;
LABEL_70:
  sub_1E3A5C848(&v71, &v70, &v69);
}

uint64_t sub_1E3A5C848(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1E41FE874();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1E3A5C93C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2DB28, qword_1E42AA670);
  v10 = *(sub_1E41FE874() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E41FE874() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E390E78C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1E3A5CAF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OUTLINED_FUNCTION_105(Strong);
    v4 = sub_1E4206814();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_160();
      *v5 = 138412290;
      *(v5 + 4) = v0;
      *v6 = v2;
      v7 = v0;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v8, v9, "%@ watch modal will appear notification received");
      sub_1E325F7A8(v6, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }

    if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x888))())
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(0, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    v13 = OUTLINED_FUNCTION_4_103();
    v14(v13);
  }
}

uint64_t sub_1E3A5CC94()
{
  type metadata accessor for PlaybackEndManager(0);
  v0 = swift_allocObject();
  result = sub_1E3A5DDB0();
  qword_1EE2AAF70 = v0;
  return result;
}

uint64_t sub_1E3A5CCD4()
{
  v0 = swift_allocObject();
  sub_1E3A5DDB0();
  return v0;
}

uint64_t *sub_1E3A5CD0C()
{
  if (qword_1EE2A0630 != -1)
  {
    OUTLINED_FUNCTION_1_124(&qword_1EE2A0630);
  }

  return &qword_1EE2AAF70;
}

void sub_1E3A5CD4C(uint64_t a1)
{
  oslog = sub_1E41FFC94();
  v1 = sub_1E4206814();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1E323F000, oslog, v1, "set playbackBroadcastDidEndHandler", v2, 2u);
    OUTLINED_FUNCTION_6_0();
  }
}

uint64_t sub_1E3A5CDF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1E34AF604(a1, a2);
  v8 = sub_1E34AF594(v6, v7);
  sub_1E3A5CD4C(v8);
  return sub_1E34AF594(a1, a2);
}

void sub_1E3A5CE7C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v82 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v77 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC0, &qword_1E42DFB70);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v72 = v8;
  v83 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v73 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD10, &qword_1E42B50B0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314B8, &qword_1E42B50B8);
  OUTLINED_FUNCTION_0_10();
  v70 = v18;
  v71 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v21 = v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314C0, &qword_1E42B50C0);
  OUTLINED_FUNCTION_0_10();
  v76 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v74 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314C8, &unk_1E42B50C8);
  OUTLINED_FUNCTION_0_10();
  v80 = v26;
  v81 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v79 = v28;
  v29 = a1;
  v75 = v1;
  v30 = sub_1E41FFC94();
  v31 = sub_1E4206814();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    OUTLINED_FUNCTION_7_34(&dword_1E323F000, v35, v36, "monitor %@");
    sub_1E325F7A8(v33, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  type metadata accessor for PlayerLiveEventMonitor(0);
  v37 = v29;
  v38 = sub_1E3B3DAB8();
  v68 = v37;
  v39 = [v37 currentMediaItem];
  if (v39)
  {
    ObjectType = swift_getObjectType();
    v41 = MEMORY[0x1E69E63B0];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E63B0]);
    sub_1E4123590(@"VUIMediaItemMetadataKeyAutoExitOnBroadcastEndInSeconds", v41, &v85);
    v39 = swift_unknownObjectRelease();
  }

  (*(*v38 + 192))(v39);
  sub_1E32752B0(&qword_1EE28A0F8, &qword_1ECF2CD10, &qword_1E42B50B0, MEMORY[0x1E695C068]);
  v42 = v21;
  v43 = v67;
  sub_1E4200794();
  (*(v13 + 8))(v16, v43);
  v44 = v69;
  sub_1E4207064();
  v45 = v72;
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v83);
  v46 = [objc_opt_self() mainRunLoop];
  v67 = v38;
  v47 = v46;
  v85 = v46;
  v48 = sub_1E4207054();
  v49 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v48);
  sub_1E3280A90(0, &qword_1EE23AD08, 0x1E695DFD0);
  sub_1E32752B0(&qword_1ECF314D0, &qword_1ECF314B8, &qword_1E42B50B8, MEMORY[0x1E695BC90]);
  sub_1E32ADE7C(&qword_1EE23AD10, &qword_1EE23AD08, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v50 = v74;
  v51 = v71;
  sub_1E4200784();
  sub_1E325F7A8(v49, &unk_1ECF3DB30, &unk_1E42A89B0);

  sub_1E325F7A8(v45, &qword_1ECF2CEC0, &qword_1E42DFB70);
  (*(v73 + 8))(v44, v83);
  (*(v70 + 8))(v42, v51);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v52 = sub_1E4206A04();
  v85 = v52;
  v53 = sub_1E42069A4();
  v54 = v82;
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v53);
  sub_1E32752B0(&qword_1ECF314D8, &qword_1ECF314C0, &qword_1E42B50C0, MEMORY[0x1E695BDB0]);
  sub_1E32ADE7C(&qword_1EE23B1E0, &qword_1EE23B1D0, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v55 = v78;
  v56 = v79;
  sub_1E42007D4();
  sub_1E325F7A8(v54, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v76 + 8))(v50, v55);
  v57 = swift_allocObject();
  v58 = v75;
  swift_weakInit();
  v59 = swift_allocObject();
  v60 = v68;
  *(v59 + 16) = v57;
  *(v59 + 24) = v60;
  sub_1E32752B0(&qword_1ECF314E0, &qword_1ECF314C8, &unk_1E42B50C8, MEMORY[0x1E695BE98]);
  v61 = v60;
  v62 = v81;
  v63 = sub_1E4200844();

  (*(v80 + 8))(v56, v62);
  v64 = OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors;
  swift_beginAccess();

  v65 = v67;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = *(v58 + v64);
  sub_1E3A5DFCC(v63, v65, v61, isUniquelyReferenced_nonNull_native);
  *(v58 + v64) = v84;
  swift_endAccess();
}

double sub_1E3A5D7D8(uint64_t a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  OUTLINED_FUNCTION_5_0(a1 + 16, v25);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v6 + 16))(v9, Strong + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_logger, v4);

    v11 = a2;
    v12 = sub_1E41FFC94();
    v13 = sub_1E4206814();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_1E323F000, v12, v13, "%@ in broadcast end range", v14, 0xCu);
      sub_1E325F7A8(v15, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_5_0(a1 + 16, v24);
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v19 = v17 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler;
    OUTLINED_FUNCTION_5_0(v17 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler, v23);
    v20 = *v19;
    if (*v19)
    {
      v21 = *(v19 + 8);
      sub_1E34AF604(v20, v21);

      v20(a2);
      sub_1E34AF594(v20, v21);
    }

    else
    {
    }
  }

  return result;
}

void sub_1E3A5DA24(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16) && (sub_1E3A5DF88(a1), (v4 & 1) != 0))
  {
    swift_endAccess();

    v5 = a1;
    v6 = sub_1E41FFC94();
    v7 = sub_1E4206814();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      OUTLINED_FUNCTION_7_34(&dword_1E323F000, v11, v12, "remove %@");
      sub_1E325F7A8(v9, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    sub_1E42004E4();
    swift_beginAccess();
    v13 = sub_1E3A5DE40(v5);
    v15 = v14;
    swift_endAccess();
    sub_1E37E6C80(v13, v15);
  }

  else
  {
    swift_endAccess();
  }
}

void sub_1E3A5DBD8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors, v11);
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 48) + ((v8 << 9) | (8 * v9)));
    sub_1E3A5DA24(v10);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1E3A5DCD8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_logger;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler), *(v0 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler + 8));
  return v0;
}

uint64_t sub_1E3A5DD58()
{
  sub_1E3A5DCD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A5DDB0()
{
  sub_1E41FFCA4();
  *(v0 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_monitors) = MEMORY[0x1E69E7CC8];
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI18PlaybackEndManager_playbackBroadcastDidEndHandler);
  *v1 = 0;
  v1[1] = 0;
  return v0;
}

uint64_t sub_1E3A5DE40(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3A5DF88(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314E8, &qword_1E42B50F0);
  sub_1E4207644();

  v6 = *(*(v8 + 56) + 16 * v5);
  sub_1E3280A90(0, &qword_1ECF3A0B0, 0x1E69D5A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314F0, &qword_1E42B50F8);
  sub_1E32ADE7C(&unk_1ECF314F8, &qword_1ECF3A0B0, 0x1E69D5A50, MEMORY[0x1E69E81B8]);
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

unint64_t sub_1E3A5DF88(uint64_t a1)
{
  v2 = sub_1E4206F54();

  return sub_1E3A5E26C(a1, v2);
}

void sub_1E3A5DFCC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v8 = *v4;
  v9 = sub_1E3A5DF88(a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF314E8, &qword_1E42B50F0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E3A5DF88(a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1E3280A90(0, &qword_1ECF3A0B0, 0x1E69D5A50);
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v5;
  if (v12)
  {
    v16 = (v15[7] + 16 * v11);
    *v16 = a1;
    v16[1] = a2;
  }

  else
  {
    sub_1E3A5E224(v11, a3, a1, a2, v15);

    v17 = a3;
  }
}

uint64_t type metadata accessor for PlaybackEndManager(uint64_t a1)
{
  result = qword_1EE2A0620;
  if (!qword_1EE2A0620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A5E17C(uint64_t a1)
{
  result = sub_1E41FFCB4();
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

unint64_t sub_1E3A5E224(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E3A5E26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1E3280A90(0, &qword_1ECF3A0B0, 0x1E69D5A50);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1E4206F64();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E3A5E38C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3A5E3EC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3A5E46C;
}

void sub_1E3A5E46C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

double variable initialization expression of TVExtensionController.notificationObserver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void static TVExtensionController.prewarm()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  [v1 prewarmOnMainWithPrefetchSelectedPage_];

  v2 = [v0 sharedInstance];
  sub_1E3CC4420();
}

uint64_t static TVExtensionController.createTVExtensionController(delegate:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  type metadata accessor for TVExtension(0);
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1E3A5E66C;

  return sub_1E3ABD728(a3, a1, a2);
}

uint64_t sub_1E3A5E66C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_31();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E3A5E7B0, 0, 0);
  }
}

uint64_t sub_1E3A5E7B0()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 48) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3A5E83C, v2, v1);
}

uint64_t sub_1E3A5E83C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  type metadata accessor for TVExtensionController();
  v0[7] = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1E3A5E9B8(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3A5E8DC()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_13_7();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_1E3A5E93C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1E3A5E9B8(a1, a2, a3);
  return v6;
}

uint64_t sub_1E3A5E9B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 40) = a1;
  swift_beginAccess();
  *(v4 + 24) = a3;
  swift_unknownObjectWeakAssign();
  type metadata accessor for VideosUI();
  v7 = a1;
  static VideosUI.initializeUIFactory()();
  v8 = [objc_allocWithZone(VUIAppContext) initWithApplication:v7 mode:0 delegate:v7];
  *(v4 + 32) = v8;
  [v8 start];
  [objc_opt_self() showGDPRWelcomeScreen_];
  v9 = [objc_opt_self() defaultCenter];
  v10 = swift_allocObject();
  swift_weakInit();
  v20 = sub_1E3A5EC48;
  v21 = v10;
  aBlock.receiver = MEMORY[0x1E69E9820];
  aBlock.super_class = 1107296256;
  v18 = sub_1E3A5EE04;
  ObjectType = &block_descriptor_48;
  v11 = _Block_copy(&aBlock);

  v12 = [v9 addObserverForName:@"VUIActionAskToBuyNotification" object:0 queue:0 usingBlock:v11];
  _Block_release(v11);

  ObjectType = swift_getObjectType();
  aBlock.receiver = v12;
  swift_beginAccess();
  sub_1E37EB5D0(&aBlock, v4 + 56);
  swift_endAccess();
  updated = type metadata accessor for DocumentUpdateEventSubscriber();
  v14 = objc_allocWithZone(updated);

  swift_weakInit();
  swift_weakAssign();
  aBlock.receiver = v14;
  aBlock.super_class = updated;
  objc_msgSendSuper2(&aBlock, sel_init);
  OUTLINED_FUNCTION_50();

  swift_unknownObjectRelease();
  v15 = *(v4 + 88);
  *(v4 + 88) = updated;

  return v4;
}

void sub_1E3A5EC48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_1E41FDF24();
  if (!v2)
  {

    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_1E325F748(&v10, &unk_1ECF296E0, &unk_1E4298030);
    return;
  }

  v3 = v2;
  sub_1E4205F14();
  sub_1E4207414();
  sub_1E375D7E8(v3, &v10, &v9);

  sub_1E375D84C(&v9);
  if (!*(&v11 + 1))
  {

    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v4 = sub_1E4205ED4();

    if ((*(*v1 + 128))(v5))
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, v4, ObjectType, v7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1E3A5EE04(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E41FDF34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1E41FDEE4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id *TVExtensionController.deinit()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedMonitor];
    [v4 removeObserver_];
  }

  [v0[4] stop];
  sub_1E32AF6F8((v0 + 2));

  sub_1E325F748((v0 + 7), &unk_1ECF296E0, &unk_1E4298030);
  return v0;
}

uint64_t TVExtensionController.__deallocating_deinit()
{
  TVExtensionController.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t TVExtensionController.createRootViewController(productPageURL:)()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v1[2] = v2;
  v1[3] = v0;
  v4 = sub_1E41FE414();
  v1[4] = v4;
  v1[5] = *(v4 - 8);
  v1[6] = swift_task_alloc();
  v5 = sub_1E41FFCB4();
  v1[7] = v5;
  v1[8] = *(v5 - 8);
  v1[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[10] = v6;
  *v6 = v1;
  v6[1] = sub_1E3A5F168;

  return sub_1E3A5F910(v3);
}

uint64_t sub_1E3A5F168()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3A5F258()
{
  v39 = v0;
  if (*(v0 + 88))
  {
    sub_1E4206434();
    *(v0 + 96) = sub_1E4206424();
    OUTLINED_FUNCTION_50();
    v2 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E3A5F570, v2, v1);
  }

  else
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v0 + 16);
    v10 = Logger.tvExtension.unsafeMutableAddressor();
    (*(v4 + 16))(v3, v10, v5);
    (*(v8 + 16))(v6, v9, v7);
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067F4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 32);
    v18 = *(v0 + 40);
    if (v13)
    {
      v37 = *(v0 + 56);
      v20 = OUTLINED_FUNCTION_6_21();
      v35 = v12;
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136380675;
      sub_1E326D148();
      v22 = sub_1E4207944();
      v36 = v14;
      v24 = v23;
      (*(v18 + 8))(v16, v19);
      sub_1E3270FC8(v22, v24, &v38);
      OUTLINED_FUNCTION_50();

      *(v20 + 4) = v16;
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v25 = (*(v15 + 8))(v36, v37);
    }

    else
    {

      (*(v18 + 8))(v16, v19);
      v25 = (*(v15 + 8))(v14, v17);
    }

    if ((*(**(v0 + 24) + 128))(v25))
    {
      v27 = v26;
      ObjectType = swift_getObjectType();
      sub_1E3A609B8(ObjectType, v29, v30);
      v31 = swift_allocError();
      *v32 = 1;
      (*(v27 + 32))(v31, ObjectType, v27);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_13_7();

    return v33(0);
  }
}

uint64_t sub_1E3A5F570()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[11];
  v2 = v0[3];

  v0[13] = sub_1E3A5FEC8(v1, v2, &off_1F5D6C990);
  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3A5F5EC()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_13_7();

  return v2(v1);
}

void sub_1E3A5F660(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_8();
  v23 = [a1 descriptor];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = Logger.tvExtension.unsafeMutableAddressor();
    (*(v6 + 16))(v1, v10, v4);
    v11 = v23;
    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_6_21();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v14 = 136380675;
      v15 = [v9 canonicalID];
      v16 = sub_1E4205F14();
      v18 = v17;

      v19 = sub_1E3270FC8(v16, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1E323F000, v12, v13, "Received purchase event for canonical ID: %{private}s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_6_0();
      v2 = v1;
      OUTLINED_FUNCTION_6_0();
    }

    v20 = (*(v6 + 8))(v1, v4);
    if ((*(*v2 + 128))(v20))
    {
      OUTLINED_FUNCTION_145();
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v2, @"purchase", ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t sub_1E3A5F910(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  v3 = OUTLINED_FUNCTION_11_1();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3A5F938()
{
  v1 = v0[63];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 openURLHandler];
  v0[64] = v3;

  v4 = sub_1E41FE364();
  v0[65] = v4;
  v5 = *(v1 + 32);
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1E3A5FAC0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31520, &qword_1E42B5280);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E3A5FE5C;
  v0[13] = &block_descriptor_24_1;
  v0[14] = v6;
  [v3 createProductPageDocumentDataSource:v4 appContext:v5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E3A5FAC0()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E3A5FB98, 0, 0);
}

uint64_t sub_1E3A5FB98()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  swift_unknownObjectRelease();

  if ((*(*v3 + 128))())
  {
    OUTLINED_FUNCTION_145();
    v4 = *(v0 + 504);
    ObjectType = swift_getObjectType();
    v2[3](v4, ObjectType, v2);
    v27 = *(v0 + 464);
    v28 = *(v0 + 448);
    v26 = *(v0 + 480);
    swift_unknownObjectRelease();
    v7 = v26;
    v6 = v27;
    v8 = v28;
  }

  else
  {
    v8 = xmmword_1E4297170;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *(v0 + 400) = v8;
  *(v0 + 416) = v6;
  *(v0 + 432) = v7;
  TVExtensionConfig.init(askToBuy:appConfig:)((v0 + 400), 0, 1, (v0 + 320));
  if (v1)
  {
    v9 = v1;
    v10 = [v9 contextData];
    if (!v10)
    {
      v10 = [objc_allocWithZone(VUIDocumentContextData) init];
    }

    v11 = *(v0 + 328);
    if (v11 != 1)
    {
      v12 = *(v0 + 320);
      v13 = *(v0 + 352);
      *(v0 + 176) = *(v0 + 336);
      *(v0 + 192) = v13;
      v14 = *(v0 + 384);
      *(v0 + 208) = *(v0 + 368);
      *(v0 + 224) = v14;
      *(v0 + 160) = v12;
      *(v0 + 168) = v11;
      memcpy((v0 + 80), (v0 + 320), 0x50uLL);
      v15 = sub_1E3A60EE0(v0 + 80, v0 + 240);
      v18 = sub_1E3A60F3C(v15, v16, v17);
      sub_1E3BFE88C(&type metadata for TVExtensionConfig, v18, v19);
      v21 = v20;
      memcpy((v0 + 240), (v0 + 160), 0x50uLL);
      sub_1E3A60F90(v0 + 240);
      if (v21)
      {
        sub_1E3280A90(0, &qword_1ECF31538, off_1E8728350);
        v22 = sub_1E3744600(v21);

        v23 = sub_1E37766C4(v22);
        [v10 setExtensionContextData_];
      }
    }

    sub_1E325F748(v0 + 320, &qword_1ECF31528, &unk_1E42B5288);
    [v9 setContextData_];
  }

  else
  {
    sub_1E325F748(v0 + 320, &qword_1ECF31528, &unk_1E42B5288);
  }

  OUTLINED_FUNCTION_13_7();

  return v24(v1);
}

uint64_t sub_1E3A5FE5C(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_1E3A5FEA8(v3, a2);
}

id sub_1E3A5FEC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v86 = v80 - v16;
  v17 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v84 = v3;
  v18 = v17;
  v19 = sub_1E3D51180();

  if (v19)
  {
    type metadata accessor for DocumentRequestViewController(0);
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x550);
      swift_unknownObjectRetain();
      v22 = a1;
      v23 = v19;
      v21(a2, a3);

      a1 = v22;
    }

    v24 = [a1 contextData];
    if (v24 && (v25 = sub_1E3751A20(v24)) != 0)
    {
      v26 = v25;
      v87 = 0x6449776F6873;
      v88 = 0xE600000000000000;

      sub_1E4207414();
      sub_1E375D7E8(v26, &v90, v89);

      sub_1E375D84C(v89);
      if (*(&v91 + 1))
      {
        if (swift_dynamicCast())
        {
          v28 = v89[0];
          v27 = v89[1];

          goto LABEL_23;
        }

        goto LABEL_15;
      }

      v29 = 0;
    }

    else
    {
      v26 = 0;
      v90 = 0u;
      v91 = 0u;
      v29 = 1;
    }

    sub_1E325F748(&v90, &unk_1ECF296E0, &unk_1E4298030);
    if (v29)
    {
      v90 = 0u;
      v91 = 0u;
LABEL_22:
      sub_1E325F748(&v90, &unk_1ECF296E0, &unk_1E4298030);
      v27 = 0;
      v28 = 0;
LABEL_23:
      v40 = Logger.tvExtension.unsafeMutableAddressor();
      v42 = v9 + 16;
      v41 = *(v9 + 16);
      v43 = v86;
      v82 = v40;
      v81 = v41;
      (v41)(v86);

      v44 = sub_1E41FFC94();
      v45 = sub_1E42067E4();

      v46 = os_log_type_enabled(v44, v45);
      v83 = v19;
      v80[1] = v28;
      if (v46)
      {
        v47 = OUTLINED_FUNCTION_6_21();
        v80[0] = a1;
        v48 = v47;
        v49 = swift_slowAlloc();
        v89[0] = v49;
        *v48 = 136380675;
        if (v27)
        {
          v50 = v28;
        }

        else
        {
          v50 = 7104878;
        }

        v51 = v9;
        v52 = v7;
        if (v27)
        {
          v53 = v27;
        }

        else
        {
          v53 = 0xE300000000000000;
        }

        v54 = sub_1E3270FC8(v50, v53, v89);
        v7 = v52;

        *(v48 + 4) = v54;
        _os_log_impl(&dword_1E323F000, v44, v45, "Created document data source for canonicalId = %{private}s.", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_6_0();
        a1 = v80[0];
        OUTLINED_FUNCTION_6_0();

        v55 = *(v51 + 8);
        v55(v86, v52);
      }

      else
      {

        v55 = *(v9 + 8);
        v55(v43, v7);
      }

      v56 = v84;
      if (v27)
      {
        v57 = *(v84 + 88);
        if (v57)
        {
          v58 = objc_opt_self();
          v59 = v57;
          v60 = [v58 sharedMonitor];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4298880;
          sub_1E3280A90(0, &qword_1EE23AED8, off_1E87281F8);
          v62 = v59;
          *(inited + 32) = sub_1E3A60798();
          if (sub_1E32AE9B0(inited))
          {
            sub_1E3A60C9C(inited);
          }

          else
          {
            swift_setDeallocating();
            sub_1E377D458();
          }

          v72 = v83;
          sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
          sub_1E3A60E60();
          v78 = sub_1E4206614();

          [v60 addObserver:v62 forEventDescriptors:v78 viewController:v72];

LABEL_44:
          v38 = [objc_allocWithZone(VUIAppNavigationController) initWithRootViewController_];

          return v38;
        }
      }

      v63 = v7;
      v81(v85, v82, v7);
      v64 = a1;
      v65 = sub_1E41FFC94();
      v66 = sub_1E42067F4();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_6_21();
        v68 = swift_slowAlloc();
        *v67 = 138477827;
        *(v67 + 4) = v64;
        *v68 = v64;
        v69 = v64;
        _os_log_impl(&dword_1E323F000, v65, v66, "No canonical ID for data source %{private}@.", v67, 0xCu);
        sub_1E325F748(v68, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v70 = (v55)(v85, v63);
      v71 = (*(*v56 + 128))(v70);
      v72 = v83;
      if (v71)
      {
        OUTLINED_FUNCTION_145();
        ObjectType = swift_getObjectType();
        sub_1E3A609B8(ObjectType, v74, v75);
        v76 = swift_allocError();
        *v77 = 2;
        (*(v42 + 32))(v76, ObjectType, v42);
        swift_unknownObjectRelease();
      }

      goto LABEL_44;
    }

LABEL_15:
    v87 = 25705;
    v88 = 0xE200000000000000;
    sub_1E4207414();
    sub_1E375D7E8(v26, &v90, v89);

    sub_1E375D84C(v89);
    if (*(&v91 + 1))
    {
      v39 = swift_dynamicCast();
      if (v39)
      {
        v27 = v93;
      }

      else
      {
        v27 = 0;
      }

      if (v39)
      {
        v28 = v92;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v30 = Logger.tvExtension.unsafeMutableAddressor();
  (*(v9 + 16))(v12, v30, v7);
  v31 = a1;
  v32 = sub_1E41FFC94();
  v33 = sub_1E42067F4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_6_21();
    v35 = v7;
    v36 = swift_slowAlloc();
    *v34 = 138477827;
    *(v34 + 4) = v31;
    *v36 = v31;
    v37 = v31;
    _os_log_impl(&dword_1E323F000, v32, v33, "Could not create view controller for data source %{private}@.", v34, 0xCu);
    sub_1E325F748(v36, &unk_1ECF28E30, &qword_1E429E820);
    v7 = v35;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v12, v7);
  return 0;
}

id sub_1E3A60798()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithCanonicalID_];

  return v2;
}

void sub_1E3A6080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  if ((a5 & 0xE000) == 0x6000)
  {
    v11 = Logger.tvExtension.unsafeMutableAddressor();
    (*(v9 + 16))(v5, v11, v7);
    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E323F000, v12, v13, "Document finished fetching.", v14, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v15 = (*(v9 + 8))(v5, v7);
    if ((*(*v5 + 128))(v15))
    {
      OUTLINED_FUNCTION_145();
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v5, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1E3A609B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF32470;
  if (!qword_1ECF32470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32470);
  }

  return result;
}

double sub_1E3A60A0C(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 264))(a1);
  }

  return result;
}

id sub_1E3A60B40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentUpdateEventSubscriber();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI16TVExtensionErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A60BA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A60C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1E3A60C5C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1E3A60C9C(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510, &unk_1E42B5270);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_1E3A60E60()
{
  result = qword_1EE23AEE8;
  if (!qword_1EE23AEE8)
  {
    sub_1E3280A90(255, &qword_1EE23AEF0, off_1E8728218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AEE8);
  }

  return result;
}

unint64_t sub_1E3A60F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31530;
  if (!qword_1ECF31530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31530);
  }

  return result;
}

uint64_t sub_1E3A60FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31540, &qword_1E42B5328);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31548, &unk_1E42B5330) + 36));
  *v8 = sub_1E3A615F4;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;
}

void sub_1E3A610FC(uint64_t a1)
{
  LOBYTE(v15) = 18;
  (*(*a1 + 776))(v16, &v15, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v16[3])
  {
    sub_1E329505C(v16);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v2 = 1;
    goto LABEL_9;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v2 = v15;
LABEL_9:
  v3 = (*(*a1 + 1040))();
  if (!v3)
  {
LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  v4 = v3;
  if (!sub_1E32AE9B0(v3))
  {

    goto LABEL_18;
  }

  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 32);

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_35;
  }

  v5 = MEMORY[0x1E6911E60](0, v4);
LABEL_14:

  v6 = *(*v5 + 872);

  v8 = v6(v7);

  if (v8)
  {
    v9 = sub_1E32AE9B0(v8);

    if (v2 < v9)
    {
LABEL_26:
      v12 = (*(*v5 + 872))(v10);

      if (v12)
      {
        sub_1E3A61424(v2, v12);
        if (v13 == v14 >> 1)
        {

          swift_unknownObjectRelease();
          return;
        }

        if (v13 < (v14 >> 1))
        {

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_38;
      }

      goto LABEL_29;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (v2 < 0)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_26;
  }

  if (!v5)
  {
    return;
  }

LABEL_22:
  v11 = (*(*v5 + 872))(v10);

  if (v11)
  {
    sub_1E37D027C(v11);

    return;
  }

LABEL_29:
}

void sub_1E3A61424(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_17;
  }

  sub_1E37EFABC(v7, a2);
  sub_1E37EFABC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    goto LABEL_13;
  }

  if (v7 < v4)
  {
    type metadata accessor for ViewModel();

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      sub_1E42074F4();
      v8 = v9;
    }

    while (v4 != v9);
LABEL_13:
    if (!(a2 >> 62))
    {
      if ((v4 & 0x8000000000000000) == 0)
      {

        return;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_18:

    sub_1E4207704();

    return;
  }

LABEL_20:
  __break(1u);
}

unint64_t sub_1E3A61574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A0640[0];
  if (!qword_1EE2A0640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A0640);
  }

  return result;
}

void sub_1E3A615F4()
{
  if (*(v0 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
    sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF80]);
    sub_1E4200624();
  }
}

unint64_t sub_1E3A61674()
{
  result = qword_1EE289AF8;
  if (!qword_1EE289AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31548, &unk_1E42B5330);
    sub_1E32752B0(&qword_1EE2889C0, &qword_1ECF31540, &qword_1E42B5328, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AF8);
  }

  return result;
}

void sub_1E3A6180C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3A61868(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___VUIJSSportsKitJavascriptInterface_context;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

id SportsKitJavascriptInterface.init(context:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SportsKitJavascriptInterface();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

JSValue __swiftcall SportsKitJavascriptInterface.checkActivityExists(for:)(Swift::String a1)
{
  v2 = v1;
  sub_1E4205004();
  v3 = sub_1E4204FF4();
  v4 = sub_1E4204F94();

  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))();
  v6 = [objc_opt_self() valueWithBool:v4 & 1 inContext:v5];

  if (v6)
  {
    return v6;
  }

  __break(1u);
  return result;
}

id SportsKitJavascriptInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SportsKitJavascriptInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsKitJavascriptInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SearchRACMenuOption(uint64_t a1)
{
  result = qword_1EE29E710;
  if (!qword_1EE29E710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A61C3C()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A61C90(char a1)
{
  if (a1)
  {
    return 0x5479616C70736964;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1E3A61CD4(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x736E7265636E6F63;
    }

    if (v2 == 1)
    {
      v4 = 0x80000001E426E210;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else
  {
    v4 = 0x80000001E426E1F0;
    v3 = 0xD000000000000012;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x736E7265636E6F63;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001E426E210;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0x80000001E426E1F0;
    v5 = 0xD000000000000012;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3A61DBC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x5479616C70736964;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB000000006D7265;
  }

  if (a2)
  {
    v5 = 0x5479616C70736964;
  }

  else
  {
    v5 = 1701869940;
  }

  if (a2)
  {
    v6 = 0xEB000000006D7265;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3A61E84(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3A61F1C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3A61F90(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A62010(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A620BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A61C3C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A620EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A61C90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3A62120@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A61C3C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A62158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3A623D4(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1E3A62190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3A623D4(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1E3A621C8(uint64_t a1, uint64_t a2)
{
  if ((sub_1E41FE604() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for SearchRACMenuOption(0);
  OUTLINED_FUNCTION_13_76(*(v2 + 20));
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_76(*(v2 + 24));
  if (v5 && v6 == v7)
  {
    return 1;
  }

  return sub_1E42079A4();
}

uint64_t sub_1E3A62264(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31558, &qword_1E42B5360);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3A623D4(v9, v10, v11);
  sub_1E4207C14();
  type metadata accessor for SearchRACMenuOption(0);
  v13[15] = 0;
  sub_1E42078C4();
  if (!v1)
  {
    v13[14] = 1;
    sub_1E42078C4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1E3A623D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31560;
  if (!qword_1ECF31560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31560);
  }

  return result;
}

uint64_t sub_1E3A62428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31568, &qword_1E42B5368);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v29 = type metadata accessor for SearchRACMenuOption(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE614();
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3A623D4(v13, v14, v15);
  sub_1E4207C04();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1E41FE624();
    OUTLINED_FUNCTION_2();
    return (*(v18 + 8))(v12);
  }

  else
  {
    v16 = v28;
    v31 = 0;
    v17 = sub_1E4207834();
    v19 = v29;
    v20 = &v12[*(v29 + 20)];
    *v20 = v17;
    v20[1] = v21;
    v30 = 1;
    v22 = sub_1E4207834();
    v23 = v9;
    v25 = v24;
    (*(v6 + 8))(v23, v4);
    v26 = &v12[*(v19 + 24)];
    *v26 = v22;
    v26[1] = v25;
    sub_1E390E2C8(v12, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E390E548(v12);
  }
}

unint64_t sub_1E3A626E0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3A6272C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x736E7265636E6F63;
}

unint64_t sub_1E3A627B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A626E0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A627E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A6272C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E3A62818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A626E0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A6284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3A62AE0(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1E3A62884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3A62AE0(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1E3A628BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31570, &qword_1E42B5370);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1E3A62AE0(v5, v6, v7);
  sub_1E4207C04();
  if (!v1)
  {
    LOBYTE(v4) = sub_1E4207844();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31578, qword_1E42B5378);
    sub_1E3A62B34();
    sub_1E4207864();
    if (sub_1E4207884())
    {
      sub_1E4207854();
    }

    v9 = OUTLINED_FUNCTION_9_70();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4 & 1;
}

unint64_t sub_1E3A62AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24E8D8;
  if (!qword_1EE24E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8D8);
  }

  return result;
}

unint64_t sub_1E3A62B34()
{
  result = qword_1EE23B590;
  if (!qword_1EE23B590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31578, qword_1E42B5378);
    sub_1E3A644D0(qword_1EE26F7D8, type metadata accessor for SearchRACMenuOption, &unk_1E42B54D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B590);
  }

  return result;
}

uint64_t sub_1E3A62BE8(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1E4205C44();
  v18 = 0;
  v4 = [v1 dataWithJSONObject:v3 options:0 error:&v18];

  v5 = v18;
  if (v4)
  {
    v6 = sub_1E41FE464();
    v8 = v7;

    sub_1E41FDE24();
    swift_allocObject();
    v9 = sub_1E41FDE14();
    sub_1E3A64310(v9, v10, v11);
    sub_1E41FDE04();

    sub_1E38DCCB0(v6, v8);
    return v18;
  }

  else
  {
    v13 = v5;
    v14 = sub_1E41FE274();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E4297BE0;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1E42074B4();
    MEMORY[0x1E69109E0](0xD000000000000027, 0x80000001E426E230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E4207614();
    v16 = v18;
    v17 = v19;
    *(v15 + 56) = v2;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    sub_1E4207B14();

    return 0;
  }
}

uint64_t sub_1E3A62E44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E3A628BC(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1E3A62E78()
{
  type metadata accessor for SearchRACManager();
  v0 = swift_allocObject();
  result = sub_1E3A63028();
  qword_1EE2AB0A0 = v0;
  return result;
}

uint64_t *sub_1E3A62EB4()
{
  if (qword_1EE2A2A90 != -1)
  {
    OUTLINED_FUNCTION_5_100(&qword_1EE2A2A90);
  }

  return &qword_1EE2AB0A0;
}

void sub_1E3A62EF4()
{
  byte_1EE2AB0A8 = 0;
  qword_1EE2AB0B0 = 2000;
  unk_1EE2AB0B8 = MEMORY[0x1E69E7CC0];
}

char *sub_1E3A62F14()
{
  if (qword_1EE2A2A98 != -1)
  {
    OUTLINED_FUNCTION_1_125(&qword_1EE2A2A98);
  }

  return &byte_1EE2AB0A8;
}

void *sub_1E3A62F54()
{
  OUTLINED_FUNCTION_5_0(v0 + 56, v4);
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_1E3A62F90(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_1E3A63028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = 0;
  v4 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1E3A63354(0, 0, v3, &unk_1E42B57B8, v5);

  return v0;
}

uint64_t sub_1E3A63124()
{
  OUTLINED_FUNCTION_27_2();
  *(v0 + 16) = v1;
  v5 = (*(*v2 + 224) + **(*v2 + 224));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1E3A63238;

  return v5();
}

uint64_t sub_1E3A63238()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 48) = v0;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3A6332C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  *v3 = *(v0 + 48);
  *(v3 + 8) = v2;
  *(v3 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1E3A63354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E325A828(a3, v24 - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325A8C0(v11);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1E325A8C0(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325A8C0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1E3A635F0(void (*a1)(void *, void, void, uint64_t), uint64_t a2)
{
  v5 = (*(*v2 + 184))();
  if (!v5)
  {
    v11 = OUTLINED_FUNCTION_22_42("jsRACInterface is nil. Aborting configuration population");
    sub_1E3A648A8(v11, v12, v13);
    v6 = swift_allocError();
    *v14 = xmmword_1E4297170;
    a1(v6, 0, 0, 1);

    goto LABEL_3;
  }

  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();

  sub_1E3A64934();
  v8 = *(*(v2 + 48) + 16);
  sub_1E3A64980(v8);
  v9 = *(v2 + 48);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_1E3A648FC;
  *(v10 + 40) = v7;
  *(v2 + 48) = v9;
  swift_endAccess();
  if (*(v2 + 40) == 1)
  {
LABEL_3:

    return;
  }

  *(v2 + 40) = 1;
  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  swift_weakInit();

  sub_1E3F17A28(sub_1E3A649C0, v15);
}