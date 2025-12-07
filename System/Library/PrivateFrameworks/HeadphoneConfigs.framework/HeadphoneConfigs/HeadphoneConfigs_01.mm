void sub_2511D9B2C(void *a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422BE0, &qword_251218B68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_251210D1C();
  v11 = v10;

  v12 = [v7 bundleForClass_];
  v13 = sub_251210D1C();
  v15 = v14;

  v32 = v9;
  v33 = v11;
  v30 = v13;
  v31 = v15;
  v16 = sub_251210DEC();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_2511D001C();
  v17 = sub_251211B4C();
  v19 = v18;
  v21 = v20;
  sub_2511CCD34(v5, &qword_27F422BE0, &qword_251218B68);

  if (v21)
  {
  }

  else
  {
    sub_2511C8A48(0, &qword_27F422BE8, 0x277D3FA10);
    v22 = swift_getObjCClassFromMetadata();
    v23 = NSStringFromClass(v22);
    if (!v23)
    {
      sub_25121179C();
      v23 = sub_25121176C();
    }

    [a1 setProperty:v23 forKey:*MEMORY[0x277D3FF48]];

    v24 = sub_25121176C();
    [a1 setProperty:v24 forKey:*MEMORY[0x277D3FF70]];

    v32 = v17;
    v33 = v19;
    v30 = v9;
    v31 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422BF0, &qword_251218B70);
    sub_2511DF700();
    v34.location = sub_251211A7C();
    v25 = NSStringFromRange(v34);
    if (!v25)
    {
      sub_25121179C();
      v25 = sub_25121176C();
    }

    [a1 setProperty:v25 forKey:*MEMORY[0x277D3FF58]];

    v26 = [objc_opt_self() valueWithNonretainedObject_];
    [a1 setProperty:v26 forKey:*MEMORY[0x277D3FF68]];

    v27 = sub_25121176C();
    [a1 setProperty:v27 forKey:*MEMORY[0x277D3FF50]];
  }
}

id sub_2511D9F58(uint64_t a1)
{
  sub_251210F4C();
  v1 = sub_25121127C();

  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

uint64_t sub_2511D9FC0(void *a1)
{
  sub_251210F4C();
  [a1 BOOLValue];
  sub_25121128C();
}

void sub_2511DA020(void *a1)
{
  v2 = sub_2512118CC();
  [a1 setProperty:v2 forKey:*MEMORY[0x277D3FF38]];
}

void sub_2511DA088()
{
  sub_2511DE9A4(v5);
  v0 = objc_allocWithZone(type metadata accessor for B498TutorialController());
  v1 = sub_2511DAC6C(v5);
  v2 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentViewController:v2 animated:1 completion:0];
  }
}

__n128 sub_2511DA140@<Q0>(uint64_t a1@<X8>)
{
  sub_2511DE9A4(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void sub_2511DA1C4(void *a1)
{
  v2 = sub_25121176C();
  [a1 setIdentifier_];
}

void sub_2511DA234(uint64_t a1@<X8>)
{
  if (*(v1 + 64) > 1u)
  {
    if (*(v1 + 64) != 2)
    {
      v16 = 0uLL;
      v18 = -1;
      v17 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      goto LABEL_9;
    }

    sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = objc_opt_self();
    v21 = [v20 bundleForClass_];
    v22 = sub_251210D1C();
    v48 = v23;
    v51 = v22;

    v24 = [v20 bundleForClass_];
    v25 = sub_251210D1C();
    v27 = v26;

    v28 = [v20 bundleForClass_];
    v29 = sub_251210D1C();
    v31 = v30;

    sub_2511E3340(v51, v48, v25, v27, v29, v31, 0, 0, &v53);
    v16 = v53;
    v17 = v54;
    v18 = 3;
  }

  else if (*(v1 + 64))
  {
    sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
    v32 = swift_getObjCClassFromMetadata();
    v33 = objc_opt_self();
    v34 = [v33 bundleForClass_];
    v35 = sub_251210D1C();
    v49 = v36;
    v52 = v35;

    v37 = [v33 bundleForClass_];
    v38 = sub_251210D1C();
    v40 = v39;

    v41 = [v33 bundleForClass_];
    v42 = sub_251210D1C();
    v44 = v43;

    sub_2511E3340(v52, v49, v38, v40, v42, v44, 0, 0, &v53);
    v16 = v53;
    v17 = v54;
    v18 = 2;
  }

  else
  {
    sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
    v3 = swift_getObjCClassFromMetadata();
    v4 = objc_opt_self();
    v5 = [v4 bundleForClass_];
    v6 = sub_251210D1C();
    v47 = v7;
    v50 = v6;

    v8 = [v4 bundleForClass_];
    v9 = sub_251210D1C();
    v11 = v10;

    v12 = [v4 bundleForClass_];
    v13 = sub_251210D1C();
    v15 = v14;

    sub_2511E3340(v50, v47, v9, v11, v13, v15, 0, 0, &v53);
    v16 = v53;
    v17 = v54;
    v18 = 1;
  }

  v45 = v55;
  v46 = v56;
LABEL_9:
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v45;
  *(a1 + 48) = v46;
  *(a1 + 64) = v18;
}

__n128 sub_2511DA778@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 16);
  v6 = *(v2 + 24);
  v9 = v4;
  v10 = *(v2 + 32);
  v8 = *(v2 + 48);
  sub_2511DF034(v2, v11);
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  result = v10;
  *(a1 + 32) = v10;
  *(a1 + 48) = v8;
  return result;
}

void *sub_2511DA7E0()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController____lazy_storage___player;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController____lazy_storage___player);
  v3 = v2;
  if (v2 == 1)
  {
    sub_2511DA850(v0);
    v3 = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;
    sub_2511DF204(v5);
  }

  sub_2511DF520(v2);
  return v3;
}

void sub_2511DA850(uint64_t a1)
{
  v2 = sub_251210D7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  if (*(v7 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 64) == 3)
  {
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_25121176C();
    v13 = sub_25121176C();
    v14 = [v11 URLForResource:v12 withExtension:v13];

    if (v14)
    {
      sub_251210D5C();

      (*(v3 + 32))(v9, v6, v2);
      v15 = objc_allocWithZone(HPSMovieLoopPlayer);
      v16 = sub_251210D4C();
      v17 = [v15 initWithFrame:v16 urlForResource:{0.0, 0.0, 0.0, 0.0}];

      [v17 load];
      [v17 setDesiredBounds_];
      [v17 setTranslatesAutoresizingMaskIntoConstraints_];
      (*(v3 + 8))(v9, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_2511DAAC4()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController____lazy_storage___continueButton;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController____lazy_storage___continueButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController____lazy_storage___continueButton);
  }

  else
  {
    v4 = [objc_opt_self() boldButton];
    v5 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 16);
    v16[0] = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType);
    v16[1] = v5;
    v6 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 48);
    v17 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 32);
    v18 = v6;
    v19 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 64);
    v7 = *(&v17 + 1);
    v8 = v6;

    sub_2511DF034(v16, v15);

    if (v7)
    {
      v9 = sub_25121176C();
    }

    else
    {
      v9 = 0;
    }

    [v4 setTitle:v9 forState:0];

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v11 = v0;
    sub_2511FE48C(sub_2511DF530, v10);

    v12 = *(v0 + v1);
    *(v11 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

__int128 *sub_2511DAC6C(__int128 *a1)
{
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController____lazy_storage___player] = 1;
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController____lazy_storage___continueButton] = 0;
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_contentHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_micaView] = 0;
  v3 = &v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType];
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  *(v3 + 2) = v6;
  *(v3 + 3) = v5;
  v3[64] = *(a1 + 64);
  *v3 = *a1;
  *(v3 + 1) = v4;
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v33[0] = *a1;
  v33[1] = v7;
  v33[2] = v8;
  v33[3] = v9;
  v10 = a1[3];
  v34 = v6;
  v35 = v10;
  sub_2511DF034(a1, v32);
  sub_2511DF034(a1, v32);

  sub_2511DF06C(v33);
  v11 = sub_25121176C();

  v12 = *(a1 + 1);
  v13 = *(a1 + 2);
  v14 = *(a1 + 3);
  v29[0] = *a1;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v15 = a1[3];
  v30 = a1[2];
  v31 = v15;
  sub_2511DF034(a1, v32);

  sub_2511DF06C(v29);
  v16 = sub_25121176C();

  v17 = *(a1 + 2);
  v18 = *(a1 + 3);
  v24 = *a1;
  v25 = v17;
  v26 = v18;
  v22 = a1[3];
  v27 = a1[2];
  v28 = v22;
  sub_2511DF034(a1, v32);
  v19 = v22;
  sub_2511DF06C(&v24);
  v23.receiver = v1;
  v23.super_class = type metadata accessor for B498TutorialController();
  v20 = objc_msgSendSuper2(&v23, sel_initWithTitle_detailText_icon_contentLayout_, v11, v16, v19, 2);
  sub_2511DF0E4(a1);

  return v20;
}

void sub_2511DAE30(uint64_t a1)
{
  v2 = v1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for B498TutorialController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  [v1 setModalInPresentation_];
  v3 = [v1 navigationItem];
  [v3 setHidesBackButton_];

  v4 = [v2 contentView];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [v2 buttonTray];
  v7 = sub_2511DAAC4();
  [v6 addButton_];

  v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:0];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2511FEA84(sub_2511DF114, v9);

  v10 = [v2 navigationItem];
  [v10 setLeftBarButtonItem_];
}

void sub_2511DB050(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for B498TutorialController();
  objc_msgSendSuper2(&v16, sel_viewDidLayoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_contentHeightConstraint];
  if (v2)
  {
    v3 = v2;
    [v1 availableContentViewHeight];
    v5 = v4;
    v6 = [v1 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v17.origin.x = v8;
    v17.origin.y = v10;
    v17.size.width = v12;
    v17.size.height = v14;
    Width = CGRectGetWidth(v17);
    if (v5 > Width)
    {
      Width = v5;
    }

    [v3 setConstant_];
  }
}

uint64_t sub_2511DB184(char a1)
{
  ObjectType = swift_getObjectType();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for B498TutorialController();
  objc_msgSendSuper2(&v13, sel_viewIsAppearing_, a1 & 1);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2511DB2F4(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422B88, &qword_251218998);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_251217D90;
  v7 = sub_25121145C();
  v8 = MEMORY[0x277D74BF0];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = sub_25121152C();
  v10 = MEMORY[0x277D74DB8];
  *(v6 + 48) = v9;
  *(v6 + 56) = v10;
  v11 = swift_allocObject();
  v11[2] = sub_2511DF174;
  v11[3] = v4;
  v11[4] = ObjectType;

  sub_2512119BC();

  swift_unknownObjectRelease();
}

void sub_2511DB2F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 64) > 1u)
    {
      if (*(Strong + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 64) == 2)
      {
        (*((*MEMORY[0x277D85000] & *Strong) + 0xF8))();
      }

      else
      {
        (*((*MEMORY[0x277D85000] & *Strong) + 0x108))();
      }
    }

    else if (*(Strong + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 64))
    {
      (*((*MEMORY[0x277D85000] & *Strong) + 0xF0))();
    }

    else
    {
      (*((*MEMORY[0x277D85000] & *Strong) + 0xE0))();
    }
  }
}

uint64_t sub_2511DB3F0(uint64_t (*a1)(uint64_t))
{
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  sub_2512113EC();
  v7 = sub_25121142C();
  v8 = sub_25121197C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_251143000, v7, v8, "Secure Fit: Trait registration updated", v9, 2u);
    MEMORY[0x25306E960](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_2511DB58C(uint64_t a1)
{
  v2 = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for B498TutorialController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, v2 & 1);
  v3 = sub_2511DA7E0();
  [v3 play];

  v4 = [v1 traitCollection];
  [v4 userInterfaceStyle];

  v5 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_micaView];
  if (v5)
  {
    v6 = v5;
    v7 = sub_25121176C();

    [v6 setState:v7 animated:1];
  }

  else
  {
  }
}

void sub_2511DB70C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 16);
  v22[0] = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType);
  v22[1] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 48);
  v22[2] = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 32);
  v22[3] = v2;
  v23 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 64);
  v3 = *(&v2 + 1);
  v4 = v2;

  sub_2511DF034(v22, v21);

  if (v3)
  {
    v5 = [v0 contentView];
    v6 = [v5 subviews];

    sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
    v7 = sub_25121187C();

    if (v7 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251211B8C())
    {

      if (i)
      {
        break;
      }

      v9 = (*((*MEMORY[0x277D85000] & *v0) + 0x110))(v3);

      v10 = v9;
      v20 = *(v9 + 16);
      if (!v20)
      {
        break;
      }

      v18 = v9;
      v19 = v0;
      v0 = 0;
      v11 = v9 + 48;
      while (v0 < *(v10 + 16))
      {
        v12 = *(v11 + 32);
        v3 = *(v11 - 8);

        v13 = v12;

        v14 = v13;
        v15 = sub_25121176C();
        v16 = sub_25121176C();
        v17 = v14;
        if (!v12)
        {
          v17 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
        }

        v0 = (v0 + 1);
        [v19 addBulletedListItemWithTitle:v15 description:v16 image:v17];

        v11 += 64;
        v10 = v18;
        if (v20 == v0)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_14:
      ;
    }

LABEL_5:
  }
}

void sub_2511DB9CC(void *a1)
{
  v3 = [v1 contentView];
  v4 = [v3 heightAnchor];

  v5 = [v4 constraintEqualToConstant_];
  v6 = OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_contentHeightConstraint;
  v7 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_contentHeightConstraint];
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_contentHeightConstraint] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251218960;
  v9 = [a1 centerYAnchor];
  v10 = [v1 contentView];
  v11 = [v10 centerYAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v12;
  v13 = [a1 centerXAnchor];
  v14 = [v1 contentView];
  v15 = [v14 centerXAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [a1 widthAnchor];
  v18 = [v1 contentView];
  v19 = [v18 widthAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = [a1 heightAnchor];
  v22 = [a1 widthAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v8 + 56) = v23;
  v24 = *&v1[v6];
  if (v24)
  {
    v25 = objc_opt_self();
    *(v8 + 64) = v24;
    sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
    v26 = v24;
    v27 = sub_25121186C();

    [v25 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2511DBCF4()
{
  v1 = v0;
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2512113EC();
  v6 = sub_25121142C();
  v7 = sub_25121197C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251143000, v6, v7, "Secure Fit: updateFitUI", v8, 2u);
    MEMORY[0x25306E960](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [v1 contentView];
  v10 = [v9 subviews];

  sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
  v11 = sub_25121187C();

  if (v11 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x25306DBD0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 removeFromSuperview];

      ++v13;
      if (v16 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v17 = [v1 traitCollection];
  v18 = [v17 userInterfaceStyle];

  if (v18 == 1)
  {
    v19 = 0xEA00000000006564;
  }

  else
  {
    v19 = 0xE900000000000065;
  }

  type metadata accessor for B498TutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  v23 = objc_allocWithZone(MEMORY[0x277CF0D48]);
  v24 = sub_25121176C();
  v25 = [v23 initWithPackageName:v24 inBundle:v22];

  v26 = OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_micaView;
  v27 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_micaView];
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_micaView] = v25;
  v28 = v25;

  if (!v28)
  {
    __break(1u);
    goto LABEL_40;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v30 = v29;
  v31 = [v29 window];

  if (v31)
  {

    v32 = *&v1[v26];
    if (v32)
    {
      v33 = v32;
      v34 = sub_25121176C();
      [v33 setState:v34 animated:1];
    }
  }

  v97 = v19;
  v35 = [v1 contentView];
  if (!*&v1[v26])
  {
    goto LABEL_41;
  }

  v36 = v35;
  [v35 addSubview_];

  v37 = [v1 traitCollection];
  v38 = [v37 userInterfaceStyle];

  if (v38 == 1)
  {
    v39 = 0x746867694CLL;
  }

  else
  {
    v39 = 1802658116;
  }

  if (v38 == 1)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  v98 = 0;
  v99 = 0xE000000000000000;
  sub_251211BBC();

  v98 = 0xD000000000000014;
  v99 = 0x8000000251221400;
  MEMORY[0x25306D820](v39, v40);
  v41 = [v21 bundleForClass_];
  v42 = sub_25121176C();

  v43 = [objc_opt_self() imageNamed:v42 inBundle:v41];

  v44 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v45 = v44;
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 setContentMode_];
  v46 = [v1 contentView];
  [v46 addSubview_];

  v47 = [v1 contentView];
  v48 = [v47 heightAnchor];

  v49 = [v48 constraintLessThanOrEqualToConstant_];
  v50 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_contentHeightConstraint];
  v96 = OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_contentHeightConstraint;
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_contentHeightConstraint] = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_251218970;
  v52 = *&v1[v26];
  if (!v52)
  {
    goto LABEL_42;
  }

  v53 = [v52 topAnchor];
  v54 = [v1 &selRef_downloadHRTFAsset_withCompletion_];
  v55 = [v54 topAnchor];

  v56 = [v53 constraintEqualToAnchor:v55 constant:20.0];
  *(v51 + 32) = v56;
  v57 = *&v1[v26];
  if (!v57)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v95[1] = v40;
  v58 = [v57 centerXAnchor];
  v59 = [v1 &selRef_downloadHRTFAsset_withCompletion_];
  v60 = [v59 centerXAnchor];

  v61 = [v58 constraintEqualToAnchor_];
  *(v51 + 40) = v61;
  v62 = *&v1[v26];
  if (!v62)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v63 = [v62 widthAnchor];
  v64 = [v1 &selRef_downloadHRTFAsset_withCompletion_];
  v65 = [v64 widthAnchor];

  v66 = [v63 constraintEqualToAnchor_];
  *(v51 + 48) = v66;
  v67 = *&v1[v26];
  if (!v67)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v68 = [v67 heightAnchor];
  v69 = *&v1[v26];
  if (!v69)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v70 = [v69 widthAnchor];
  v71 = [v68 constraintEqualToAnchor_];

  *(v51 + 56) = v71;
  v72 = [v45 topAnchor];
  v73 = *&v1[v26];
  if (!v73)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v74 = [v73 bottomAnchor];
  v75 = [v72 constraintEqualToAnchor:v74 constant:20.0];

  *(v51 + 64) = v75;
  v76 = [v45 centerXAnchor];
  v77 = [v1 contentView];
  v78 = [v77 centerXAnchor];

  v79 = [v76 constraintEqualToAnchor_];
  *(v51 + 72) = v79;
  v80 = [v45 widthAnchor];
  v81 = [v1 contentView];
  v82 = [v81 widthAnchor];

  v83 = [v80 constraintEqualToAnchor_];
  *(v51 + 80) = v83;
  v84 = [v45 heightAnchor];
  v85 = [v45 widthAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v51 + 88) = v86;
  v87 = [v45 bottomAnchor];

  v88 = [v1 contentView];
  v89 = [v88 bottomAnchor];

  v90 = [v87 constraintLessThanOrEqualToAnchor:v89 constant:-20.0];
  *(v51 + 96) = v90;
  v91 = *&v1[v96];
  if (v91)
  {
    v92 = objc_opt_self();
    v93 = v91;

    *(v51 + 104) = v93;
    sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
    v94 = sub_25121186C();

    [v92 activateConstraints_];

    return;
  }

LABEL_48:
  __break(1u);
}

void sub_2511DC818()
{
  v1 = [v0 contentView];
  v2 = [v1 subviews];

  sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
  v3 = sub_25121187C();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25306DBD0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
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

  type metadata accessor for B498TutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_25121176C();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  v13 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v15 = v13;
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setContentMode_];

  (*((*MEMORY[0x277D85000] & *v0) + 0x100))(v15);
  v14 = [v0 contentView];
  [v14 addSubview_];

  sub_2511DB9CC(v15);
}

void sub_2511DCAD8(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v5 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v6 = [v2 traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v7 == 1)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.98;
  }

  v9 = objc_opt_self();
  v20 = v8;
  v21 = *(MEMORY[0x277CD9DA0] + 4);
  v22 = *(MEMORY[0x277CD9DA0] + 20);
  v23 = v8;
  v24 = *(MEMORY[0x277CD9DA0] + 28);
  v25 = *(MEMORY[0x277CD9DA0] + 44);
  v26 = v8;
  *v27 = *(MEMORY[0x277CD9DA0] + 52);
  *&v27[12] = *(MEMORY[0x277CD9DA0] + 64);
  v10 = [v9 valueWithCAColorMatrix_];
  v11 = sub_25121176C();
  [v4 setValue:v10 forKey:v11];

  v12 = sub_25121190C();
  v13 = sub_25121176C();
  [v5 setValue:v12 forKey:v13];

  v14 = [a1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422988, &unk_251219200);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251217D90;
  v16 = sub_2511C8A48(0, &qword_27F422B90, 0x277CD9EA0);
  *(v15 + 32) = v4;
  *(v15 + 88) = v16;
  *(v15 + 56) = v16;
  *(v15 + 64) = v5;
  v17 = v4;
  v18 = v5;
  v19 = sub_25121186C();

  [v14 setFilters_];
}

void sub_2511DCD88()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = [v2 subviews];

  sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
  v4 = sub_25121187C();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25306DBD0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
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

  v10 = sub_2511DA7E0();
  if (v10)
  {
    v11 = v10;
    v12 = [v1 contentView];
    v13 = v11;
    [v12 addSubview_];

    v14 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2512183D0;
    v16 = [v13 topAnchor];

    v17 = [v1 contentView];
    v18 = [v17 topAnchor];

    v19 = [v16 constraintEqualToAnchor_];
    *(v15 + 32) = v19;
    v20 = [v13 centerXAnchor];

    v21 = [v1 contentView];
    v22 = [v21 centerXAnchor];

    v23 = [v20 constraintEqualToAnchor_];
    *(v15 + 40) = v23;
    v24 = [v13 widthAnchor];

    v25 = [v24 constraintEqualToConstant_];
    *(v15 + 48) = v25;
    v26 = [v13 heightAnchor];

    v27 = [v13 widthAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v15 + 56) = v28;
    sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
    v29 = sub_25121186C();

    v94 = v14;
    [v14 activateConstraints_];

    v96 = v13;
    [v13 load];
    type metadata accessor for IconWithNumberedBulletList();
    sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = objc_opt_self();
    v32 = [v31 bundleForClass_];
    sub_251210D1C();
    v93 = v1;

    sub_2511D001C();
    v33 = sub_251211B2C();
    v35 = v34;

    v36 = sub_2511C78F0(v33, v35, 0xD000000000000013, 0x8000000251221490);
    [v36 setTranslatesAutoresizingMaskIntoConstraints_];
    v97 = [objc_opt_self() _preferredFontForTextStyle_weight_];
    if (v97)
    {
      v37 = [v31 &selRef_addAdaptiveVolumeSpecifier + 3];
      v38 = ObjCClassFromMetadata;
      v39 = sub_251210D1C();
      v40 = v31;
      v42 = v41;

      v92 = objc_opt_self();
      v43 = [v92 secondaryLabelColor];
      v44 = v36;
      v95 = *((*MEMORY[0x277D85000] & *v36) + 0xC8);
      v95(v39, v42, 49, 0xE100000000000000, v97, v43, 20.0);

      v45 = [v40 bundleForClass_];
      v46 = sub_251210D1C();
      v48 = v47;

      v49 = [v92 secondaryLabelColor];
      v95(v46, v48, 50, 0xE100000000000000, v97, v49, 20.0);

      v50 = v38;
      v51 = [v40 bundleForClass_];
      v52 = sub_251210D1C();
      v54 = v53;

      v55 = [v92 secondaryLabelColor];
      v95(v52, v54, 51, 0xE100000000000000, v97, v55, 20.0);

      v56 = [v1 contentView];
      v57 = v44;
      [v56 addSubview_];

      v58 = [objc_opt_self() accessoryButton];
      [v58 setTranslatesAutoresizingMaskIntoConstraints_];
      v59 = v58;
      v60 = [v40 bundleForClass_];
      sub_251210D1C();

      v61 = sub_25121176C();

      [v59 setTitle:v61 forState:{0, 0xE000000000000000}];

      sub_2511C8A48(0, &qword_27F422B58, 0x277D750C8);
      v62 = sub_251211A6C();
      [v59 addAction:v62 forControlEvents:{64, 0, 0, 0, sub_2511DDB50, 0}];

      LODWORD(v63) = 1148846080;
      [v59 setContentCompressionResistancePriority:1 forAxis:v63];
      v64 = [v59 titleLabel];

      if (v64)
      {
        [v64 setFont_];
      }

      v65 = [v93 contentView];
      [v65 &selRef:v59 colorWithAlphaComponent:?];

      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_251218980;
      v67 = [v44 topAnchor];
      v68 = [v96 bottomAnchor];

      v69 = [v67 constraintEqualToAnchor:v68 constant:35.0];
      *(v66 + 32) = v69;
      v70 = [v57 leadingAnchor];
      v71 = [v93 contentView];
      v72 = [v71 &selRef_needsResetUI_ + 1];

      v73 = [v70 constraintEqualToAnchor_];
      *(v66 + 40) = v73;
      v74 = [v57 trailingAnchor];
      v75 = [v93 contentView];
      v76 = [v75 trailingAnchor];

      v77 = [v74 constraintEqualToAnchor_];
      *(v66 + 48) = v77;
      v78 = [v59 topAnchor];
      v79 = [v57 bottomAnchor];
      v80 = [v78 constraintEqualToAnchor:v79 constant:24.0];

      *(v66 + 56) = v80;
      v81 = [v59 leadingAnchor];
      v82 = [v57 leadingAnchor];
      v83 = [v81 constraintEqualToAnchor:v82 constant:40.0];

      *(v66 + 64) = v83;
      v84 = [v59 trailingAnchor];
      v85 = [v57 trailingAnchor];

      v86 = [v84 constraintEqualToAnchor:v85 constant:-40.0];
      *(v66 + 72) = v86;
      v87 = [v93 contentView];
      v88 = [v87 bottomAnchor];

      v89 = [v59 bottomAnchor];
      v90 = [v88 constraintEqualToAnchor_];

      *(v66 + 80) = v90;
      v91 = sub_25121186C();

      [v94 activateConstraints_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2511DDB50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422BB8, &qword_251218B48);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_251210D7C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251210D6C();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = objc_opt_self();
    v9 = [v8 sharedApplication];
    v10 = sub_251210D4C();
    v11 = [v9 canOpenURL_];

    if (v11)
    {
      v12 = [v8 sharedApplication];
      v13 = sub_251210D4C();
      sub_2511DF358(MEMORY[0x277D84F90]);
      type metadata accessor for OpenExternalURLOptionsKey();
      sub_2511DF800(&qword_27F422BC0, &unk_251218D04);
      v14 = sub_25121171C();

      [v12 openURL:v13 options:v14 completionHandler:0];
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_2511DDDD0(uint64_t a1)
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    v3 = 1802658116;
  }

  else
  {
    v3 = 0x746867694CLL;
  }

  if (v2 == 2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x25306D820](v3, v4);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_25121176C();

  v9 = objc_opt_self();
  v10 = [v9 imageNamed:v8 inBundle:v7];

  MEMORY[0x25306D820](v3, v4);
  v11 = [v6 &selRef_addAdaptiveVolumeSpecifier + 3];
  v12 = sub_25121176C();

  v13 = [v9 imageNamed:v12 inBundle:v11];

  MEMORY[0x25306D820](v3, v4);

  v14 = [v6 bundleForClass_];
  v15 = sub_25121176C();

  v16 = [v9 imageNamed:v15 inBundle:v14];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422B98, &qword_2512189A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2512183C0;
  *(inited + 32) = v10;
  *(inited + 40) = v13;
  *(inited + 48) = v16;
  v18 = v10;
  v19 = v13;
  v20 = v16;

  v22 = sub_2511DE0FC(v21, inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422BA0, &qword_2512189A8);
  swift_arrayDestroy();
  return v22;
}

id sub_2511DE0FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v63 = MEMORY[0x277D84F90];
  sub_2511DE878(0, v6, 0);
  v7 = v63;
  v42 = v4;
  v43 = v2;
  v41 = v5;
  v44 = a1;
  if (v6)
  {
    v47 = v63;

    if (v4)
    {
      v48 = (v2 + 32);
      v45 = v4;
      v46 = v6 - 1;
      v49 = v5;
      v50 = (a1 + 32);
      do
      {
        v9 = v50[1];
        v56 = *v50;
        v57 = v9;
        v10 = v50[3];
        v58 = v50[2];
        v59 = v10;
        if (!v49)
        {
          break;
        }

        v11 = *v48;
        v12 = v56;
        v13 = v57;
        v14 = v58;
        v15 = v59;
        sub_2511DF2FC(&v56, v61);
        result = v11;
        if (!*(&v12 + 1))
        {
          break;
        }

        v16 = result;

        v17 = v16;
        sub_2511E3340(v12, *(&v12 + 1), v13, *(&v13 + 1), 0, 0, v11, 0, v62);
        v56 = v12;
        v57 = v13;
        v58 = v14;
        v59 = v15;
        v60 = v11;
        result = sub_2511CCD34(&v56, &qword_27F422BA8, &qword_251218B38);
        v7 = v47;
        v63 = v47;
        v19 = *(v47 + 16);
        v18 = *(v47 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_2511DE878((v18 > 1), v19 + 1, 1);
          v7 = v63;
        }

        *(v7 + 16) = v19 + 1;
        v20 = (v7 + (v19 << 6));
        v21 = v62[0];
        v22 = v62[1];
        v23 = v62[3];
        v20[4] = v62[2];
        v20[5] = v23;
        v20[2] = v21;
        v20[3] = v22;
        if (!v46)
        {
          v2 = v43;
          v5 = v41;
          if (v4 > v41)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        }

        --v49;
        v50 += 4;
        v47 = v7;
        ++v48;
        --v45;
        --v46;
      }

      while (v45);
    }
  }

  else
  {

    if (v4 <= v5)
    {
LABEL_26:

      return v7;
    }

LABEL_17:
    v24 = (v6 << 6) | 0x20;
    while (v6 < v4)
    {
      v25 = (v44 + v24);
      v26 = *(v44 + v24 + 16);
      v52 = *(v44 + v24);
      v53 = v26;
      v27 = *(v44 + v24 + 48);
      v54 = *(v44 + v24 + 32);
      v55 = v27;
      v28 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_28;
      }

      if (v5 == v6)
      {
        goto LABEL_26;
      }

      if (v6 >= v5)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_30;
      }

      v29 = *(v2 + 8 * v6 + 32);
      v30 = v25[1];
      v56 = *v25;
      v57 = v30;
      v31 = v25[3];
      v58 = v25[2];
      v59 = v31;
      v60 = v29;
      v32 = v52;
      v33 = v53;
      v34 = v29;
      sub_2511DF2FC(&v52, v51);

      sub_2511E3340(v32, *(&v32 + 1), v33, *(&v33 + 1), 0, 0, v29, 0, v61);
      result = sub_2511CCD34(&v56, &qword_27F422BA8, &qword_251218B38);
      v63 = v7;
      v36 = *(v7 + 16);
      v35 = *(v7 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_2511DE878((v35 > 1), v36 + 1, 1);
        v7 = v63;
      }

      *(v7 + 16) = v36 + 1;
      v37 = (v7 + (v36 << 6));
      v38 = v61[0];
      v39 = v61[1];
      v40 = v61[3];
      v37[4] = v61[2];
      v37[5] = v40;
      v37[2] = v38;
      v37[3] = v39;
      ++v6;
      v24 += 64;
      v4 = v42;
      v2 = v43;
      v5 = v41;
      if (v28 == v42)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2511DE4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_25121176C();

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

  v13 = sub_25121176C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_25121176C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id sub_2511DE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_25121176C();

  if (a4)
  {
    v12 = sub_25121176C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id sub_2511DE710(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for B498TutorialController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2511DE7E0(uint64_t a1)
{
  v2 = sub_2511DF800(&qword_27F422BC0, &unk_251218D04);
  v3 = sub_2511DF800(&qword_27F422C20, &unk_251218C58);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_2511DE878(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2511DE898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2511DE898(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422BB0, &qword_251218B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_2511DE9A4@<D0>(uint64_t a1@<X8>)
{
  sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_251210D1C();
  v62 = v5;
  v63 = v4;

  v6 = [v2 &selRef_addAdaptiveVolumeSpecifier + 3];
  v7 = sub_251210D1C();
  v60 = v8;
  v61 = v7;

  v9 = [v2 &selRef_addAdaptiveVolumeSpecifier + 3];
  v10 = sub_251210D1C();
  v58 = v11;
  v59 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422BB0, &qword_251218B40);
  v12 = swift_allocObject();
  v12[1] = xmmword_2512183C0;
  v13 = [v2 &selRef_addAdaptiveVolumeSpecifier + 3];
  v14 = sub_251210D1C();
  v52 = v15;
  v54 = v14;

  v16 = [v2 &selRef_addAdaptiveVolumeSpecifier + 3];
  v17 = sub_251210D1C();
  v19 = v18;

  v20 = [v2 &selRef_addAdaptiveVolumeSpecifier + 3];
  v21 = sub_25121176C();
  v57 = objc_opt_self();
  v22 = [v57 imageNamed:v21 inBundle:v20];

  sub_2511E3340(v54, v52, v17, v19, 0, 0, v22, 0, v65);
  v23 = v65[1];
  v12[2] = v65[0];
  v12[3] = v23;
  v24 = v65[3];
  v12[4] = v65[2];
  v12[5] = v24;
  v25 = [v2 bundleForClass_];
  v26 = sub_251210D1C();
  v53 = v27;
  v55 = v26;

  v28 = [v2 bundleForClass_];
  v29 = sub_251210D1C();
  v31 = v30;

  v32 = [v2 bundleForClass_];
  v33 = sub_25121176C();
  v34 = [v57 imageNamed:v33 inBundle:v32];

  sub_2511E3340(v55, v53, v29, v31, 0, 0, v34, 0, v66);
  v35 = v66[1];
  v12[6] = v66[0];
  v12[7] = v35;
  v36 = v66[3];
  v12[8] = v66[2];
  v12[9] = v36;
  v37 = [v2 bundleForClass_];
  v38 = sub_251210D1C();
  v56 = v39;

  v40 = [v2 bundleForClass_];
  v41 = sub_251210D1C();
  v43 = v42;

  v44 = [v2 bundleForClass_];
  v45 = sub_25121176C();
  v46 = [v57 imageNamed:v45 inBundle:v44];

  sub_2511E3340(v38, v56, v41, v43, 0, 0, v46, 0, v67);
  v47 = v67[1];
  v12[10] = v67[0];
  v12[11] = v47;
  v48 = v67[3];
  v12[12] = v67[2];
  v12[13] = v48;
  sub_2511E3340(v63, v62, v61, v60, v59, v58, 0, v12, v68);
  v49 = v68[1];
  *a1 = v68[0];
  *(a1 + 16) = v49;
  result = *&v69;
  v51 = v70;
  *(a1 + 32) = v69;
  *(a1 + 48) = v51;
  *(a1 + 64) = 0;
  return result;
}

void sub_2511DF114()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_2511DF184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 3u)
  {
  }
}

void sub_2511DF204(id a1)
{
  if (a1 != 1)
  {
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2511DF244(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_2511DF28C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_2511DF358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422BC8, &qword_251218B50);
    v3 = sub_251211C8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2511DF4B0(v4, &v11);
      v5 = v11;
      result = sub_2511C8660(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2511C8CB0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_27F422C00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F422C00);
    }
  }
}

uint64_t sub_2511DF4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422BD0, &qword_251218B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2511DF520(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_2511DF530()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v17[0] = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType);
      v4 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 32);
      v3 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 48);
      v5 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 16);
      v18 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs22B498TutorialController_b498PaneType + 64);
      v17[2] = v4;
      v17[3] = v3;
      v17[1] = v5;
      v6 = v2;
      sub_2511DF034(v17, v15);

      sub_2511DA234(v13);
      sub_2511DF0E4(v17);
      if (v14 != 255)
      {
        v15[0] = v13[0];
        v15[1] = v13[1];
        v15[2] = v13[2];
        v15[3] = v13[3];
        v16 = v14;
        v7 = objc_allocWithZone(type metadata accessor for B498TutorialController());
        sub_2511DF034(v15, &v12);
        v8 = sub_2511DAC6C(v15);
        v9 = [v1 navigationController];
        if (v9)
        {
          v10 = v9;
          [v9 pushViewController:v8 animated:1];

          sub_2511CCD34(v13, &qword_27F422BD8, &qword_251218B60);
          v8 = v10;
        }

        else
        {

          sub_2511CCD34(v13, &qword_27F422BD8, &qword_251218B60);
        }

        goto LABEL_9;
      }
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    return;
  }

  v8 = v11;
  [v11 dismissViewControllerAnimated:1 completion:0];
LABEL_9:
}

unint64_t sub_2511DF700()
{
  result = qword_27F422BF8;
  if (!qword_27F422BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F422BF0, &qword_251218B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422BF8);
  }

  return result;
}

uint64_t sub_2511DF800(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2511DF844()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F4256B0);
  __swift_project_value_buffer(v0, qword_27F4256B0);
  return sub_25121143C();
}

uint64_t sub_2511DF8C4()
{
  if (qword_27F423D10 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F4256B0);
}

uint64_t sub_2511DF928@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423D10 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F4256B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_2511DF9D0()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result headphoneDevice];
  }

  return result;
}

void *sub_2511DFA14()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    v2 = [v1 address];
    if (v2)
    {
      v3 = v2;
      v4 = sub_25121179C();

      swift_unknownObjectRelease();
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id BTSDeviceConfigController.addTopLevelEntry(hpDevice:)()
{
  result = [v0 specifier];
  if (result)
  {

    return [v0 reloadSpecifiers];
  }

  return result;
}

id BTSDeviceConfigController.removeTopLevelEntry(hpDevice:)()
{
  v1 = v0;
  if ([v0 device])
  {
    v2 = sub_2511DF9D0();
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_25121101C();
      v5 = v4;
      if (v3 == sub_25121101C() && v5 == v6)
      {
      }

      else
      {
        v8 = sub_251211CCC();

        if ((v8 & 1) == 0)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      v9 = [v0 navigationController];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 presentedViewController];

        if (v11)
        {

          v12 = [v1 navigationController];
          if (v12)
          {
            v13 = v12;
            [v12 dismissViewControllerAnimated:1 completion:0];
          }
        }
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  if (qword_27F423D10 != -1)
  {
    swift_once();
  }

  v14 = sub_25121144C();
  __swift_project_value_buffer(v14, qword_27F4256B0);
  v15 = sub_25121142C();
  v16 = sub_25121197C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2511CBE4C(0xD00000000000001ELL, 0x8000000251221960, &v20);
    _os_log_impl(&dword_251143000, v15, v16, "Connected Headphones: %s removing device", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x25306E960](v18, -1, -1);
    MEMORY[0x25306E960](v17, -1, -1);
  }

  return [v1 reloadSpecifiers];
}

Swift::String __swiftcall BTSDeviceConfigController.getVoiceAssistant()()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_251210D1C();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_2511DFF7C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_251210D1C();

  return v4;
}

uint64_t BTSDeviceConfigController.adaptiveVolumeSupported.getter()
{
  if ([v0 device] && (v1 = sub_2511DF9D0(), swift_unknownObjectRelease(), v1))
  {
    v2 = sub_251210FCC();

    return v2 & 1;
  }

  else
  {
    if (qword_27F423D10 != -1)
    {
      swift_once();
    }

    v4 = sub_25121144C();
    __swift_project_value_buffer(v4, qword_27F4256B0);
    v5 = sub_25121142C();
    v6 = sub_25121196C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2511CBE4C(0xD000000000000017, 0x8000000251221980, &v9);
      _os_log_impl(&dword_251143000, v5, v6, "HeadphoneConfigs: %s no device!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x25306E960](v8, -1, -1);
      MEMORY[0x25306E960](v7, -1, -1);
    }

    return 0;
  }
}

uint64_t BTSDeviceConfigController.conversationDetectSupported.getter()
{
  if ([v0 device] && (v1 = sub_2511DF9D0(), swift_unknownObjectRelease(), v1))
  {
    v2 = sub_251210FCC();

    return v2 & 1;
  }

  else
  {
    if (qword_27F423D10 != -1)
    {
      swift_once();
    }

    v4 = sub_25121144C();
    __swift_project_value_buffer(v4, qword_27F4256B0);
    v5 = sub_25121142C();
    v6 = sub_25121196C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2511CBE4C(0xD00000000000001BLL, 0x80000002512219A0, &v9);
      _os_log_impl(&dword_251143000, v5, v6, "HeadphoneConfigs: %s no device!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x25306E960](v8, -1, -1);
      MEMORY[0x25306E960](v7, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_2511E0530()
{
  if (![v0 device])
  {
    return 0;
  }

  v1 = sub_2511DF9D0();
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_251210FCC();

  return v2 & 1;
}

BOOL sub_2511E0654()
{
  if (![v0 device])
  {
    return 1;
  }

  v1 = sub_2511DF9D0();
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 1;
  }

  v2 = sub_251210F8C();
  v3 = sub_2512110CC();

  v4 = sub_251210F8C();
  v5 = sub_2512110FC();

  v7 = v3 != 1 || v5 != 2;
  if (qword_27F423D10 != -1)
  {
    swift_once();
  }

  v8 = sub_25121144C();
  __swift_project_value_buffer(v8, qword_27F4256B0);
  v9 = sub_25121142C();
  v10 = sub_25121196C();
  if (os_log_type_enabled(v9, v10))
  {
    v23 = v3;
    v24 = v5;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315650;
    if (v7)
    {
      v13 = 5457241;
    }

    else
    {
      v13 = 20302;
    }

    if (v7)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = 0xE200000000000000;
    }

    v15 = sub_2511CBE4C(v13, v14, &v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    if (v23 == 1)
    {
      v16 = 5457241;
    }

    else
    {
      v16 = 20302;
    }

    if (v23 == 1)
    {
      v17 = 0xE300000000000000;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    v18 = sub_2511CBE4C(v16, v17, &v25);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    if (v24 == 2)
    {
      v19 = 5457241;
    }

    else
    {
      v19 = 20302;
    }

    if (v24 == 2)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = 0xE200000000000000;
    }

    v21 = sub_2511CBE4C(v19, v20, &v25);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_251143000, v9, v10, "Hearing: AdaptiveTransparency: Should Show: %s, HA Capa: %s, HP Region: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v12, -1, -1);
    MEMORY[0x25306E960](v11, -1, -1);
  }

  return v7;
}

uint64_t sub_2511E08E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_251210D1C();

  v5 = sub_2512117AC();

  return v5;
}

uint64_t sub_2511E0AA0(void (*a1)(void), uint64_t (*a2)(id, void *), uint64_t (*a3)(id, void *), const char *a4)
{
  v9 = sub_25121144C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v4 device])
  {
    v13 = sub_2511DF9D0();
    swift_unknownObjectRelease();
    if (v13)
    {
      a1(0);
      if ((a2(v13, v4) & 0x100) != 0)
      {
        v18 = a3(v13, v4);

        return v18;
      }
    }
  }

  sub_2512113EC();
  v14 = sub_25121142C();
  v15 = sub_25121196C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_251143000, v14, v15, a4, v16, 2u);
    MEMORY[0x25306E960](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  return MEMORY[0x277D84F90];
}

id sub_2511E0CC4(void *a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(id, void *), uint64_t (*a5)(id, void *), const char *a6)
{
  v10 = a1;
  sub_2511E0AA0(a3, a4, a5, a6);

  sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
  v11 = sub_25121186C();

  return v11;
}

BOOL sub_2511E0D68()
{
  v1 = sub_25121144C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 device] && (v5 = sub_2511DF9D0(), swift_unknownObjectRelease(), v5))
  {
    sub_251210F4C();
    v6 = sub_2512112DC();

    return v6 == 1;
  }

  else
  {
    sub_2512113EC();
    v8 = sub_25121142C();
    v9 = sub_25121196C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_251143000, v8, v9, "Permanent Pair: isTempPaired Invalid HP Device", v10, 2u);
      MEMORY[0x25306E960](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

id sub_2511E0F38()
{
  v1 = v0;
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 device] && (v6 = sub_2511DF9D0(), swift_unknownObjectRelease(), v6))
  {
    if ([v1 isTempPaired])
    {
      v7 = [objc_opt_self() currentDevice];
      [v7 userInterfaceIdiom];

      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = [objc_opt_self() bundleForClass_];
      v10 = sub_251210D1C();
      v12 = v11;

      type metadata accessor for HeadphoneSpecifier();
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v1;
      v14 = v6;
      v15 = v1;
      HeadphoneSpecifier.__allocating_init(name:setAction:getAction:detail:cell:edit:buttonAction:)(v10, v12, 0, 0, 0, 0, 0, 13, 0, sub_2511E2224, v13);
      v17 = v16;
      v18 = sub_25121176C();
      [v17 setIdentifier_];

      return v17;
    }
  }

  else
  {
    sub_2512113EC();
    v20 = sub_25121142C();
    v21 = sub_25121196C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_251143000, v20, v21, "Permanent Pair: getPermanentPairSpecifier Invalid HP Device", v22, 2u);
      MEMORY[0x25306E960](v22, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

id sub_2511E12D0()
{
  v1 = sub_25121144C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 device] && (v5 = sub_2511DF9D0(), swift_unknownObjectRelease(), v5))
  {
    if ([v0 isTempPaired])
    {
      type metadata accessor for HeadphoneSpecifier();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_251217FE0;
      v7 = sub_25121100C();
      v9 = v8;
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = sub_2511C3C9C();
      *(v6 + 32) = v7;
      *(v6 + 40) = v9;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      sub_251210D1C();

      v12 = sub_2512117AC();
      v14 = v13;

      HeadphoneSpecifier.__allocating_init(name:setAction:getAction:detail:cell:edit:buttonAction:)(v12, v14, 0, 0, 0, 0, 0, 4, 0, 0, 0);
      v16 = v15;
      v17 = sub_25121176C();
      [v16 setIdentifier_];

      return v16;
    }
  }

  else
  {
    sub_2512113EC();
    v19 = sub_25121142C();
    v20 = sub_25121196C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_251143000, v19, v20, "Temporary Pair: getTemporaryPairSpecifier Invalid HP Device", v21, 2u);
      MEMORY[0x25306E960](v21, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return 0;
}

uint64_t sub_2511E1658()
{
  v1 = sub_25121144C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 device])
  {
    v5 = sub_2511DF9D0();
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = sub_25121134C();
      if (v6 & 0x100) != 0 && (v6)
      {
        v7 = sub_25121133C();

        return v7;
      }
    }
  }

  sub_2512113EC();
  v9 = sub_25121142C();
  v10 = sub_25121196C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_251143000, v9, v10, "BTSDeviceConfig: no device cant show BatteryChargingFeature!", v11, 2u);
    MEMORY[0x25306E960](v11, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return MEMORY[0x277D84F90];
}

void sub_2511E187C()
{
  v1 = v0;
  sub_25121108C();
  v2 = sub_25121107C();
  v3 = sub_25121104C();

  if (v3)
  {
    if (os_variant_has_internal_ui())
    {
      if ([v1 device])
      {
        v4 = sub_2511DF9D0();
        swift_unknownObjectRelease();
        if (v4)
        {

          v5 = [v1 navigationController];
          if (v5)
          {
            v6 = v5;
            v7 = [v5 viewControllers];

            sub_2511C8A48(0, &qword_27F4229E0, 0x277D75D28);
            v8 = sub_25121187C();

            v27[0] = MEMORY[0x277D84F90];
            if (v8 >> 62)
            {
              goto LABEL_21;
            }

            for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
            {
              v10 = 0;
              while (1)
              {
                if ((v8 & 0xC000000000000001) != 0)
                {
                  v11 = MEMORY[0x25306DBD0](v10, v8);
                }

                else
                {
                  if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_20;
                  }

                  v11 = *(v8 + 8 * v10 + 32);
                }

                v12 = v11;
                v13 = v10 + 1;
                if (__OFADD__(v10, 1))
                {
                  break;
                }

                sub_25121130C();
                if (swift_dynamicCastClass())
                {
                  sub_251211BFC();
                  sub_251211C2C();
                  sub_251211C3C();
                  sub_251211C0C();
                }

                else
                {
                }

                ++v10;
                if (v13 == i)
                {
                  v14 = v27[0];
                  goto LABEL_23;
                }
              }

              __break(1u);
LABEL_20:
              __break(1u);
LABEL_21:
              ;
            }

            v14 = MEMORY[0x277D84F90];
LABEL_23:

            if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
            {
              v15 = sub_251211B8C();
            }

            else
            {
              v15 = *(v14 + 16);
            }

            if (!v15)
            {
              v16 = sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
              v27[3] = v16;
              v27[0] = v1;
              v17 = v1;
              v18 = sub_25121176C();
              if (v16)
              {
                v19 = __swift_project_boxed_opaque_existential_0Tm(v27, v16);
                v20 = *(v16 - 8);
                MEMORY[0x28223BE20](v19);
                v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v20 + 16))(v22);
                v23 = sub_251211CBC();
                (*(v20 + 8))(v22, v16);
                __swift_destroy_boxed_opaque_existential_0(v27);
              }

              else
              {
                v23 = 0;
              }

              v24 = objc_allocWithZone(MEMORY[0x277D751E0]);
              v25 = [v24 initWithTitle:v18 style:2 target:v23 action:{sel_showModernHPS, v27[0]}];

              swift_unknownObjectRelease();
              v26 = [v17 navigationItem];
              [v26 setRightBarButtonItem_];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2511E1CA0()
{
  v1 = v0;
  sub_25121130C();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if ([v0 device])
  {
    sub_2511DF9D0();
    swift_unknownObjectRelease();
  }

  sub_2512112FC();
  v13 = v2;
  v3 = [v13 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v3 layer];

  v6 = [objc_opt_self() redColor];
  v7 = [v6 CGColor];

  [v5 setBorderColor_];
  v8 = [v13 view];

  if (!v8)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x2821F9730]();
  }

  v9 = [v8 layer];

  [v9 setBorderWidth_];
  v10 = [v1 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 pushViewController:v13 animated:1];
  }

  return MEMORY[0x2821F9730]();
}

id _sSo25BTSDeviceConfigControllerC16HeadphoneConfigsE19updateTopLevelEntry8hpDevicey0D7Manager0dK0C_tF_0()
{
  v1 = v0;
  if (qword_27F423D10 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  __swift_project_value_buffer(v2, qword_27F4256B0);
  v3 = sub_25121142C();
  v4 = sub_25121197C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2511CBE4C(0xD00000000000001ELL, 0x8000000251221B00, &v8);
    _os_log_impl(&dword_251143000, v3, v4, "Connected Headphones: %s update device", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x25306E960](v6, -1, -1);
    MEMORY[0x25306E960](v5, -1, -1);
  }

  return [v1 reloadSpecifiers];
}

uint64_t sub_2511E2034(uint64_t a1, uint64_t a2)
{
  v4 = sub_25121144C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1;
  if (a2 != 8212 && a2 != 8228)
  {
    v10 = v6;
    sub_2511CCD94(a1, v20);
    sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
    if (swift_dynamicCast())
    {
      v11 = v19;
      v12 = [v19 headphoneDevice];
      if (v12)
      {
        v13 = v12;
        v9 = sub_251210FCC();

        return v9 & 1;
      }
    }

    sub_2512113EC();
    v14 = sub_25121142C();
    v15 = sub_25121196C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_251143000, v14, v15, "BTSDeviceConfig: shouldShowCaseSoundForNewAccessories no device!", v16, 2u);
      MEMORY[0x25306E960](v16, -1, -1);
    }

    (*(v5 + 8))(v8, v10);
    v9 = 0;
  }

  return v9 & 1;
}

void sub_2511E2224(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_251210F4C();
  sub_2512112EC();

  v3 = sub_25121176C();
  [v2 removeSpecifierID_];

  v4 = sub_25121176C();
  [v2 removeSpecifierID_];
}

uint64_t (*sub_2511E2334(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = sub_25121124C();
  return sub_2511E2380;
}

uint64_t sub_2511E23F8(unsigned __int8 a1)
{
  if (a1 < 4u)
  {
    return 0x10200u >> (8 * (a1 & 0x1F));
  }

  type metadata accessor for AAHeadGestureConfig(0);
  result = sub_251211CDC();
  __break(1u);
  return result;
}

uint64_t (*sub_2511E2468(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = sub_25121129C();
  return sub_2511E24B4;
}

uint64_t sub_2511E2530(unsigned __int8 a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v5 = a1;
  a2();
  if (v5 < 4)
  {
    return a3(0x10200u >> (8 * (a1 & 0x1F)));
  }

  type metadata accessor for AAHeadGestureConfig(0);
  result = sub_251211CDC();
  __break(1u);
  return result;
}

uint64_t (*sub_2511E25B8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = sub_2512112BC();
  return sub_2511E2604;
}

uint64_t sub_2511E2630(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v5 = *(a1 + 8);
  v6 = (a1 + 9);
  a3(*(a1 + 8));
  if (v5 < 4)
  {
    return a4(0x10200u >> (8 * v5));
  }

  type metadata accessor for AAHeadGestureConfig(0);
  *v6 = v5;
  result = sub_251211CDC();
  __break(1u);
  return result;
}

uint64_t sub_2511E26CC(char a1, char a2, char a3, uint64_t a4)
{
  v8 = sub_25121144C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 24) = a4;
  *(v12 + 16) = a1;
  *(v12 + 17) = a2;
  *(v12 + 18) = a3;

  v13 = sub_2511E2FFC();
  (*(v9 + 16))(v11, v13, v8);

  v14 = sub_25121142C();
  v15 = sub_25121197C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = sub_25121122C();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_251143000, v14, v15, "Bobble: reload for value change %@", v16, 0xCu);
    sub_2511E2EE8(v17);
    MEMORY[0x25306E960](v17, -1, -1);
    MEMORY[0x25306E960](v16, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_2511E28D8(char a1, char a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_25121144C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = a4;
  *(v5 + 16) = a1;
  *(v5 + 17) = a2;
  *(v5 + 18) = a3;

  v14 = sub_2511E2FFC();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_25121142C();
  v16 = sub_25121197C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = sub_25121122C();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_251143000, v15, v16, "Bobble: reload for value change %@", v17, 0xCu);
    sub_2511E2EE8(v18);
    MEMORY[0x25306E960](v18, -1, -1);
    MEMORY[0x25306E960](v17, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v13, v10);
  return v5;
}

uint64_t sub_2511E2AF4()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2511E2B2C()
{
  v1 = v0;
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25121124C();
  v7 = sub_25121129C();
  v8 = sub_2512112BC();
  type metadata accessor for BobbleSettingsViewModel();
  v9 = swift_allocObject();
  *(v9 + 24) = v1;
  *(v9 + 16) = v6;
  *(v9 + 17) = v7;
  *(v9 + 18) = v8;
  swift_retain_n();
  v10 = sub_2511E2FFC();
  (*(v3 + 16))(v5, v10, v2);

  v11 = sub_25121142C();
  v12 = sub_25121197C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_25121122C();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_251143000, v11, v12, "Bobble: reload for value change %@", v13, 0xCu);
    sub_2511E2EE8(v14);
    MEMORY[0x25306E960](v14, -1, -1);
    MEMORY[0x25306E960](v13, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_2511E2D48(unsigned __int8 a1)
{
  v3 = 0xD00000000000001ELL;
  if (a1 > 1u)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        v3 = 0xD000000000000023;
        v4 = 0x8000000251221B50;

        return sub_2511E326C(v3, v4);
      }

      goto LABEL_15;
    }

LABEL_8:
    v3 = 0xD000000000000021;
    v4 = 0x8000000251221B20;

    return sub_2511E326C(v3, v4);
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    v4 = 0x8000000251221B80;

    return sub_2511E326C(v3, v4);
  }

LABEL_15:
  type metadata accessor for AAHeadGestureConfig(0);
  result = sub_251211CDC();
  __break(1u);
  return result;
}

uint64_t sub_2511E2E20(char a1)
{
  v3 = 0xD000000000000011;
  switch(a1)
  {
    case 0:
      v3 = 0xD000000000000015;
      v4 = 0x8000000251221BA0;

      return sub_2511E326C(v3, v4);
    case 1:
      v4 = 0x8000000251221BE0;

      return sub_2511E326C(v3, v4);
    case 2:
      v3 = 0xD000000000000012;
      v4 = 0x8000000251221BC0;

      return sub_2511E326C(v3, v4);
  }

  type metadata accessor for AAMultiState(0);
  result = sub_251211CDC();
  __break(1u);
  return result;
}

uint64_t sub_2511E2EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229F8, &qword_251218D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2511E2F88()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F4256C8);
  __swift_project_value_buffer(v0, qword_27F4256C8);
  return sub_25121143C();
}

uint64_t sub_2511E2FFC()
{
  if (qword_27F423D20 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F4256C8);
}

uint64_t sub_2511E3060@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423D20 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F4256C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_2511E3108(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for BobbleTutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_251210D1C();
  v10 = v9;

  v11 = [v6 bundleForClass_];
  v12 = sub_251210D1C();
  v14 = v13;

  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v12;
  *(a3 + 40) = v14;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
}

uint64_t sub_2511E326C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BobbleTutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_251210D1C();

  return v4;
}

uint64_t sub_2511E3340@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

void sub_2511E3354(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for BobbleTutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_251210D1C();
  v10 = v9;

  v11 = [v6 bundleForClass_];
  v12 = sub_251210D1C();
  v14 = v13;

  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v12;
  *(a3 + 40) = v14;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 2;
}

void sub_2511E34B8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2512112BC();
  v5 = sub_25121129C();
  if (!*(v2 + 64))
  {
    type metadata accessor for BobbleTutorialController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();
    v15 = [v14 bundleForClass_];
    v16 = sub_251210D1C();
    v18 = v17;

    if (v4 != 1 && v5 != 1)
    {
      if (qword_27F423D20 != -1)
      {
        swift_once();
      }

      v32 = sub_25121144C();
      __swift_project_value_buffer(v32, qword_27F4256C8);
      v33 = sub_25121142C();
      v34 = sub_25121196C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_251143000, v33, v34, "AADevice did not have mappings for accept / decline defaulting to nod -> accept shake -> decline", v35, 2u);
        MEMORY[0x25306E960](v35, -1, -1);
      }
    }

    v36 = [v14 bundleForClass_];
    v19 = sub_251210D1C();
    v20 = v37;

    v30 = [v14 bundleForClass_];
    v21 = sub_251210D1C();
    v22 = v38;
    v23 = 1;
    goto LABEL_23;
  }

  if (*(v2 + 64) == 1)
  {
    type metadata accessor for BobbleTutorialController();
    v6 = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();
    v8 = [v7 bundleForClass_];
    v9 = sub_251210D1C();
    v11 = v10;

    v39 = v11;
    if (v4 == 2)
    {
      v12 = v9;
    }

    else if (v5 == 2)
    {
      v12 = v9;
    }

    else
    {
      if (qword_27F423D20 != -1)
      {
        swift_once();
      }

      v24 = sub_25121144C();
      __swift_project_value_buffer(v24, qword_27F4256C8);
      v25 = sub_25121142C();
      v26 = sub_25121196C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_251143000, v25, v26, "AADevice did not have mappings for accept / decline defaulting to nod -> accept shake -> decline", v27, 2u);
        MEMORY[0x25306E960](v27, -1, -1);
      }

      v12 = v9;
    }

    v28 = [v7 bundleForClass_];
    v19 = sub_251210D1C();
    v20 = v29;

    v30 = [v7 &selRef_addAdaptiveVolumeSpecifier + 3];
    v21 = sub_251210D1C();
    v22 = v31;
    v23 = 2;
    v16 = v12;
    v18 = v39;
LABEL_23:

    goto LABEL_24;
  }

  v16 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = -1;
LABEL_24:
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v23;
}

double sub_2511E3A28@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[3];
  v11 = v1[2];
  v12 = v4;
  sub_2511E5994(v1, v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

__n128 sub_2511E3A7C@<Q0>(uint64_t a1@<X8>)
{
  sub_2511E59CC(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2511E3AF0()
{
  if (*(v0 + 64) < 2u)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

char *sub_2511E3B50(uint64_t *a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topAsset] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topSucessMark] = 0;
  v7 = &v3[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType];
  v8 = *(a1 + 1);
  v9 = *(a1 + 3);
  *(v7 + 2) = *(a1 + 2);
  *(v7 + 3) = v9;
  v7[64] = *(a1 + 64);
  *v7 = *a1;
  *(v7 + 1) = v8;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_hpDevice] = a3;
  if (a1[1])
  {
  }

  else
  {
    sub_2511E5994(a1, v18);
  }

  sub_2511E5994(a1, v18);
  v10 = a3;
  v11 = sub_25121176C();

  if (a1[1])
  {
  }

  v12 = sub_25121176C();

  v17.receiver = v3;
  v17.super_class = type metadata accessor for BobbleTutorialController();
  v13 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v11, v12, 0, 1);

  v14 = v13;
  if (a2)
  {

    sub_2511E5B78(a1);
    v15 = *(v14 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager);
    *(v14 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager) = a2;
  }

  else
  {
    sub_2511E4F30();

    sub_2511E5B78(a1);
  }

  return v14;
}

void sub_2511E3D10(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BobbleTutorialController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  v3 = sub_2511E4AA4();
  [v3 play];
}

uint64_t sub_2511E3DE4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_251210F6C();
  v4 = [v3 primaryPlacement];

  if (v4 != 1)
  {
    v5 = sub_251210F6C();
    v6 = [v5 secondaryPlacement];

    if (v6 != 1)
    {
      v8 = sub_251210F6C();
      v9 = [v8 productID];

      if (CBProductIDIsBeats(v9))
      {
        if (v9 == 8221)
        {
          sub_2511D9050(0xD00000000000002BLL, 0x8000000251221F50);
          sub_2511D9050(0xD000000000000029, 0x8000000251221F80);
          sub_2511D9050(0xD00000000000002BLL, 0x8000000251221FB0);
LABEL_13:

          v23 = sub_25121176C();

          v24 = sub_25121176C();

          v7 = 1;
          v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

          v26 = sub_25121176C();

          aBlock[4] = nullsub_1;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2511E718C;
          aBlock[3] = &block_descriptor_28;
          v27 = _Block_copy(aBlock);

          v28 = [objc_opt_self() actionWithTitle:v26 style:0 handler:v27];
          _Block_release(v27);

          [v25 addAction_];
          [v2 presentViewController:v25 animated:1 completion:0];

          return v7;
        }

        if (qword_27F423D20 != -1)
        {
          swift_once();
        }

        v10 = sub_25121144C();
        __swift_project_value_buffer(v10, qword_27F4256C8);
        v11 = sub_25121142C();
        v12 = sub_25121196C();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          aBlock[0] = v14;
          *v13 = 136315138;
          v31 = v9;
          type metadata accessor for CBProductID();
          v15 = sub_2512117CC();
          v17 = sub_2511CBE4C(v15, v16, aBlock);

          *(v13 + 4) = v17;
          _os_log_impl(&dword_251143000, v11, v12, "Unknown Beats product ID: %s, falling back to AirPods strings.", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x25306E960](v14, -1, -1);
          MEMORY[0x25306E960](v13, -1, -1);
        }
      }

      type metadata accessor for BobbleTutorialController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = objc_opt_self();
      v20 = [v19 bundleForClass_];
      sub_251210D1C();

      v21 = [v19 &selRef_addAdaptiveVolumeSpecifier + 3];
      sub_251210D1C();

      v22 = [v19 bundleForClass_];
      sub_251210D1C();

      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t sub_2511E432C()
{
  v1 = v0;
  v2 = sub_251211A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BobbleTutorialController();
  v39.receiver = v0;
  v39.super_class = v6;
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  [v0 setModalInPresentation_];
  v7 = [objc_opt_self() boldButton];
  v8 = &v0[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType];
  v9 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 8];
  v10 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 40];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
  }

  else
  {
  }

  v12 = sub_25121176C();

  [v7 setTitle:v12 forState:0];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2511FE48C(sub_2511E5BA8, v13);

  v14 = [v1 buttonTray];
  [v14 addButton_];

  v15 = [v1 navigationItem];
  [v15 setHidesBackButton_];

  v16 = [v1 contentView];
  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  v18 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:0];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2511FEA84(sub_2511E5F30, v19);

  v20 = [v1 navigationItem];
  [v20 setLeftBarButtonItem_];

  if (v8[64])
  {
    v21 = OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager;
    v22 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager];
    if (v22)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v7;
      aBlock[4] = sub_2511E60E4;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2511E718C;
      aBlock[3] = &block_descriptor_0;
      v25 = _Block_copy(aBlock);
      v26 = v22;
      v27 = v7;

      [v26 setHeadGestureUpdatedHandler_];
      _Block_release(v25);
    }

    [v7 setEnabled_];
    v28 = *&v1[v21];
    if (v28)
    {
      [v28 setHeadGestureUpdateFlags_];
    }

    if (qword_27F423D20 != -1)
    {
      swift_once();
    }

    v29 = sub_25121144C();
    __swift_project_value_buffer(v29, qword_27F4256C8);
    v30 = sub_25121142C();
    v31 = sub_25121197C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_251143000, v30, v31, "HG ViewDidLoad: button enabled == false, setting unumte [.headGesture, .audioFeedback].", v32, 2u);
      MEMORY[0x25306E960](v32, -1, -1);
    }
  }

  v33 = sub_2511E4AA4();
  v34 = [v1 contentView];
  [v34 addSubview_];

  v35 = [v1 contentView];
  [v33 pinToOther_];

  [v33 load];
  v36 = [objc_opt_self() defaultCenter];
  sub_251211A2C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2511E68C8();
  sub_25121167C();

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  sub_25121155C();
  swift_endAccess();
}

uint64_t sub_2511E49B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2511E49F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_2511E4AA4()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topAsset;
  v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topAsset];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topAsset];
  }

  else
  {
    v4 = v0[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 64];
    type metadata accessor for BobbleVideoLoopPlayer();
    v5 = [v0 traitCollection];
    v6 = [v5 userInterfaceStyle];

    if (v4 < 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = v0;
    sub_2511F3830(v7, v6, 0.0, 0.0, 0.0, 0.0);
    v10 = v9;
    [v9 load];
    [v10 setDesiredBounds_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *&v0[v1];
    *&v8[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_2511E4BCC()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topSucessMark;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topSucessMark);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topSucessMark);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_25121176C();
    v6 = [objc_opt_self() systemImageNamed_];

    if (v6)
    {
      v7 = [objc_opt_self() systemGreenColor];
      v8 = [v6 imageWithTintColor:v7 renderingMode:1];
    }

    else
    {
      v8 = 0;
    }

    v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v10 = v9;
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addSubview_];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2512183D0;
    v13 = [v10 centerXAnchor];
    v14 = [v4 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v12 + 32) = v15;
    v16 = [v10 centerYAnchor];
    v17 = [v4 centerYAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v12 + 40) = v18;
    v19 = [v10 widthAnchor];
    v20 = [v19 constraintEqualToConstant_];

    *(v12 + 48) = v20;
    v21 = [v10 heightAnchor];

    v22 = [v21 constraintEqualToConstant_];
    *(v12 + 56) = v22;
    sub_2511E6B30();
    v23 = sub_25121186C();

    [v11 activateConstraints_];

    v24 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v25 = v2;
  return v3;
}

void sub_2511E4F30()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF810]) init];
  v2 = OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager;
  v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager);
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager) = v1;
  v4 = v1;

  if (v4)
  {
    [v4 setHeadGestureUpdateFlags_];
  }

  v5 = *(v0 + v2);
  if (v5)
  {
    v20 = sub_2511E51C4;
    v21 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_2511E49B0;
    v19 = &block_descriptor_46;
    v6 = _Block_copy(&v16);
    v7 = v5;
    [v7 setInterruptionHandler_];
    _Block_release(v6);

    v8 = *(v0 + v2);
    if (v8)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = sub_2511E6D88;
      v21 = v9;
      v16 = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_2511E49B0;
      v19 = &block_descriptor_50;
      v10 = _Block_copy(&v16);
      v11 = v8;

      [v11 setInvalidationHandler_];
      _Block_release(v10);

      v12 = *(v0 + v2);
      if (v12)
      {
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = sub_2511E6F4C;
        v21 = v13;
        v16 = MEMORY[0x277D85DD0];
        v17 = 1107296256;
        v18 = sub_2511E530C;
        v19 = &block_descriptor_54;
        v14 = _Block_copy(&v16);
        v15 = v12;

        [v15 activateWithCompletion_];
        _Block_release(v14);
      }
    }
  }
}

void sub_2511E51C4()
{
  if (qword_27F423D20 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();
  __swift_project_value_buffer(v0, qword_27F4256C8);
  oslog = sub_25121142C();
  v1 = sub_25121196C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_2511CBE4C(0xD000000000000016, 0x8000000251222000, &v5);
    _os_log_impl(&dword_251143000, oslog, v1, "%s aaDeviceManager interrupted!", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x25306E960](v3, -1, -1);
    MEMORY[0x25306E960](v2, -1, -1);
  }
}

void sub_2511E530C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_2511E5378()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager;
  v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager];
  if (v2)
  {
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2511E49B0;
    aBlock[3] = &block_descriptor_9;
    v3 = _Block_copy(aBlock);
    v4 = v2;
    [v4 setInvalidationHandler_];
    _Block_release(v3);

    v5 = *&v0[v1];
    if (v5)
    {
      [v5 invalidate];
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for BobbleTutorialController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2511E55FC()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2511E562C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *sub_2511E5664()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_2511E56E0(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

void sub_2511E572C()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  if (v2)
  {
    v3 = v2;
    sub_2511E59CC(v11);
    objc_allocWithZone(type metadata accessor for BobbleTutorialController());
    v4 = v3;
    v5 = sub_2511E3B50(v11, 0, v4);
    oslog = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    [v1 presentViewController:oslog animated:1 completion:0];
  }

  else
  {
    if (qword_27F423D20 != -1)
    {
      swift_once();
    }

    v6 = sub_25121144C();
    __swift_project_value_buffer(v6, qword_27F4256C8);
    oslog = sub_25121142C();
    v7 = sub_25121196C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2511CBE4C(0xD000000000000018, 0x8000000251221DD0, v11);
      _os_log_impl(&dword_251143000, oslog, v7, "%s Unable to present tutorial with out depedencies", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x25306E960](v9, -1, -1);
      MEMORY[0x25306E960](v8, -1, -1);
    }
  }
}

_DWORD *sub_2511E5978@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void sub_2511E59CC(uint64_t a1@<X8>)
{
  type metadata accessor for BobbleTutorialController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v15 = sub_251210D1C();
  v6 = v5;

  v7 = [v3 bundleForClass_];
  v8 = sub_251210D1C();
  v10 = v9;

  v11 = [v3 bundleForClass_];
  v12 = sub_251210D1C();
  v14 = v13;

  *a1 = v15;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

void sub_2511E5BA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v36[0] = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType);
      v4 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 32);
      v3 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 48);
      v5 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 16);
      v37 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 64);
      v36[2] = v4;
      v36[3] = v3;
      v36[1] = v5;
      v6 = v2;
      sub_2511E5994(v36, &aBlock);

      v7 = OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_hpDevice;
      sub_251210F4C();
      sub_2511E34B8(v29);

      v8 = sub_2511E5B78(v36);
      if (v30 != 255)
      {
        aBlock = v29[0];
        v32 = v29[1];
        v33 = v29[2];
        v34 = v29[3];
        v35 = v30;
        if (sub_2511E3DE4(v8))
        {
          sub_2511CCD34(v29, &qword_27F422C70, &unk_251218FF8);
        }

        else
        {
          v20 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager];
          v21 = *&v1[v7];
          v22 = objc_allocWithZone(type metadata accessor for BobbleTutorialController());
          v23 = v21;
          sub_2511E6D18(v29, &v28);
          v24 = v20;
          v25 = sub_2511E3B50(&aBlock, v20, v23);
          v26 = [v1 navigationController];
          if (v26)
          {
            v27 = v26;
            [v26 pushViewController:v25 animated:1];
            sub_2511CCD34(v29, &qword_27F422C70, &unk_251218FF8);

            v1 = v27;
          }

          else
          {
            sub_2511CCD34(v29, &qword_27F422C70, &unk_251218FF8);
          }
        }

        goto LABEL_16;
      }
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager);
    v11 = v9;
    v12 = v10;

    if (v10)
    {
      *&v33 = nullsub_1;
      *(&v33 + 1) = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v32 = sub_2511E49B0;
      *(&v32 + 1) = &block_descriptor_43;
      v13 = _Block_copy(&aBlock);
      [v12 setInvalidationHandler_];
      _Block_release(v13);
    }
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager);

    [v16 invalidate];
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = *&v17[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager];
    *&v17[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager] = 0;
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v1 = v19;
    [v19 dismissViewControllerAnimated:1 completion:0];
LABEL_16:
  }
}

void sub_2511E5F30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2511E49B0;
      aBlock[3] = &block_descriptor_40;
      v4 = _Block_copy(aBlock);
      [v3 setInvalidationHandler_];
      _Block_release(v4);
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager);

    [v7 invalidate];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager];
    *&v8[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager] = 0;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_2511E60E4(void *a1)
{
  v3 = *(v1 + 24);
  if (qword_27F423D20 != -1)
  {
    swift_once();
  }

  v4 = sub_25121144C();
  __swift_project_value_buffer(v4, qword_27F4256C8);
  v5 = a1;
  v6 = sub_25121142C();
  v7 = sub_25121197C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v37[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2511CBE4C(0x4C64694477656976, 0xED0000292864616FLL, v37);
    *(v8 + 12) = 256;
    *(v8 + 14) = [v5 detectedHeadGesture];

    _os_log_impl(&dword_251143000, v6, v7, "%s Headgesture detected: %hhu", v8, 0xFu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25306E960](v9, -1, -1);
    MEMORY[0x25306E960](v8, -1, -1);
  }

  else
  {
  }

  v10 = [v5 detectedHeadGesture];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v37[0] = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType), v13 = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 32), v12 = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 48), v14 = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 16), v38 = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 64), v37[2] = v13, v37[3] = v12, v37[1] = v14, v15 = Strong, sub_2511E5994(v37, aBlock), v15, LOBYTE(v15) = v38, sub_2511E5B78(v37), v10 == ((0x30200u >> (8 * v15)) & 3)))
  {
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      return;
    }

    v17 = v16;
    if ([v3 isEnabled])
    {

      return;
    }

    [v3 setEnabled_];
    v22 = *&v17[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager];
    if (v22)
    {
      [v22 setHeadGestureUpdateFlags_];
    }

    v23 = sub_25121142C();
    v24 = sub_25121197C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_251143000, v23, v24, "HG Callback: button enabled == true, setting mute: [.headGesture, .audioFeedback, .muteAudioFeedback].", v25, 2u);
      MEMORY[0x25306E960](v25, -1, -1);
    }

    if (v17[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_bobblePaneType + 64] == 2)
    {
      v26 = [v17 navigationItem];
      [v26 setLeftBarButtonItem_];
    }

    v27 = sub_2511E4BCC();
    [v27 setAlpha_];

    v28 = v17;
    v29 = [v28 contentView];
    v30 = OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController____lazy_storage___topSucessMark;
    [v29 addSubview_];

    v31 = *&v28[v30];
    v32 = [v28 contentView];

    [v31 pinToOther_];
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = v28;
    aBlock[4] = sub_2511E6C70;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2511E49B0;
    aBlock[3] = &block_descriptor_37;
    v35 = _Block_copy(aBlock);
    v18 = v28;

    [v33 animateWithDuration:v35 animations:0.5];
    _Block_release(v35);
  }

  else
  {
    v18 = sub_25121142C();
    v19 = sub_25121197C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v37[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2511CBE4C(0x4C64694477656976, 0xED0000292864616FLL, v37);
      _os_log_impl(&dword_251143000, v18, v19, "%s Headgesture detected not match:", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25306E960](v21, -1, -1);
      MEMORY[0x25306E960](v20, -1, -1);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2511E6678()
{
  v1 = v0;
  if (qword_27F423D20 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  __swift_project_value_buffer(v2, qword_27F4256C8);
  v3 = sub_25121142C();
  v4 = sub_25121197C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_251143000, v3, v4, "Invalidate device manager and dismissing.", v5, 2u);
    MEMORY[0x25306E960](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      [v9 setInvalidationHandler_];
    }
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager);

    [v12 invalidate];
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    aBlock[4] = sub_2511E6BF4;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2511E49B0;
    aBlock[3] = &block_descriptor_31_0;
    v15 = _Block_copy(aBlock);

    [v14 dismissViewControllerAnimated:1 completion:v15];
    _Block_release(v15);
  }
}

unint64_t sub_2511E68C8()
{
  result = qword_27F422C68;
  if (!qword_27F422C68)
  {
    sub_251211A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422C68);
  }

  return result;
}

void sub_2511E6920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 2u)
  {
    sub_2511E6934(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_2511E6934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a2)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_16HeadphoneConfigs16TutorialProviderVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2511E69C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2511E6A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2511E6A88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2511E6AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2511E6B30()
{
  result = qword_27F422898;
  if (!qword_27F422898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F422898);
  }

  return result;
}

void type metadata accessor for CBProductID()
{
  if (!qword_27F422C78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F422C78);
    }
  }
}

void sub_2511E6BF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_listeners;
    v2 = Strong;
    swift_beginAccess();
    *&v2[v1] = MEMORY[0x277D84FA0];
  }
}

void sub_2511E6C70()
{
  v1 = *(v0 + 16);
  v2 = sub_2511E4BCC();
  [v2 setAlpha_];

  v3 = sub_2511E4AA4();
  [v3 setAlpha_];

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2511E6D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422C70, &unk_251218FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2511E6D88()
{
  if (qword_27F423D20 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();
  __swift_project_value_buffer(v0, qword_27F4256C8);
  v1 = sub_25121142C();
  v2 = sub_25121196C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2511CBE4C(0xD000000000000016, 0x8000000251222000, v11);
    _os_log_impl(&dword_251143000, v1, v2, "%s aaDeviceManager invalidated! reconstructing!", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x25306E960](v4, -1, -1);
    MEMORY[0x25306E960](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(MEMORY[0x277CEF810]) init];
    v8 = *&v6[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager];
    *&v6[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager] = v7;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_2511E4F30();
  }
}

void sub_2511E6F4C(void *a1)
{
  if (a1)
  {
    if (qword_27F423D20 != -1)
    {
      swift_once();
    }

    v2 = sub_25121144C();
    __swift_project_value_buffer(v2, qword_27F4256C8);
    v3 = a1;
    v4 = sub_25121142C();
    v5 = sub_25121196C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13[0] = v8;
      *v6 = 136315394;
      *(v6 + 4) = sub_2511CBE4C(0xD000000000000016, 0x8000000251222000, v13);
      *(v6 + 12) = 2112;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v10;
      *v7 = v10;
      _os_log_impl(&dword_251143000, v4, v5, "%s unable to activate bobble gesture detection %@", v6, 0x16u);
      sub_2511CCD34(v7, &qword_27F4229F8, &qword_251218D50);
      MEMORY[0x25306E960](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x25306E960](v8, -1, -1);
      MEMORY[0x25306E960](v6, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = *&Strong[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager];
      *&Strong[OBJC_IVAR____TtC16HeadphoneConfigs24BobbleTutorialController_aaDeviceManager] = 0;
    }
  }
}

id sub_2511E7260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_25121176C();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for HPSVisionOSSubtitleOnOffIndicatorCell();
  v8 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, a4);

  if (v8)
  {

    v9 = v8;
    [v9 setAccessoryType_];
  }

  return v8;
}

id sub_2511E73B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for HPSVisionOSSubtitleOnOffIndicatorCell();
  v6 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = v6;
  [v7 setAccessoryType_];
  [v7 setHoverStyle_];

  return v7;
}

void sub_2511E75DC(void *a1)
{
  v2 = v1;
  v4 = sub_2512114BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25121151C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_40;
  }

  v46 = v5;
  v12 = [a1 name];
  v45 = v7;
  if (v12)
  {
    v13 = v12;
    sub_25121179C();
    v53 = v14;
  }

  else
  {
    v53 = 0;
  }

  v15 = [a1 propertyForKey_];
  v47 = v4;
  if (v15)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v56 = v59;
  v57 = v60;
  v49 = v9;
  v50 = v8;
  if (*(&v60 + 1))
  {
    if (swift_dynamicCast())
    {
      v52 = v54;
      goto LABEL_13;
    }
  }

  else
  {
    sub_2511E7DB4(&v56);
  }

  v52 = 0;
LABEL_13:
  v16 = sub_25121176C();
  v17 = [a1 propertyForKey_];

  if (v17)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v56 = v59;
  v57 = v60;
  if (*(&v60 + 1))
  {
    if (swift_dynamicCast())
    {
      v44 = v54;
      v48 = v55;
      goto LABEL_21;
    }
  }

  else
  {
    sub_2511E7DB4(&v56);
  }

  v44 = (*((*MEMORY[0x277D85000] & *v2) + 0x50))(0x42414C5F4C4C4543, 0xEE0046464F5F4C45);
  v48 = v18;
LABEL_21:
  v19 = sub_25121176C();
  v20 = [a1 propertyForKey_];

  if (v20)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v56 = v59;
  v57 = v60;
  if (*(&v60 + 1))
  {
    sub_2511D5484();
    if (swift_dynamicCast())
    {
      v21 = v54;
      goto LABEL_29;
    }
  }

  else
  {
    sub_2511E7DB4(&v56);
  }

  sub_2511D5484();
  v21 = sub_251211A4C();
LABEL_29:
  v51 = v2;
  sub_25121146C();

  sub_25121150C();
  v22 = objc_opt_self();
  v23 = *MEMORY[0x277D76918];
  v24 = *MEMORY[0x277D74418];
  if (![v22 _preferredFontForTextStyle_weight_])
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v43 = v23;
  v25 = sub_2512114CC();
  sub_25121148C();
  v25(&v56, 0);
  if ([v21 BOOLValue])
  {
    v26 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v27 = v45;
    sub_2512114DC();
    sub_25121149C();
    (*(v46 + 8))(v27, v47);
  }

  v28 = sub_2512114CC();
  sub_2512114AC();
  v28(&v56, 0);

  sub_25121147C();
  if (![v22 _preferredFontForTextStyle_weight_])
  {
    goto LABEL_41;
  }

  v29 = sub_2512114EC();
  sub_25121148C();
  v29(&v56, 0);
  LODWORD(v29) = [v21 BOOLValue];
  v30 = objc_opt_self();
  v31 = &selRef_tertiaryLabelColor;
  if (!v29)
  {
    v31 = &selRef_secondaryLabelColor;
  }

  v32 = [v30 *v31];
  v33 = sub_2512114EC();
  sub_2512114AC();
  v33(&v56, 0);
  sub_2512114FC();
  v34 = v50;
  *(&v57 + 1) = v50;
  v58 = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
  v36 = v49;
  (*(v49 + 16))(boxed_opaque_existential_1, v11, v34);
  v37 = v51;
  MEMORY[0x25306D9B0](&v56);
  sub_2511D5484();
  v38 = sub_251211A4C();
  v39 = sub_251211A5C();

  if (v39)
  {
    v40 = [v22 _preferredFontForTextStyle_weight_];
    [v37 _setBadgeFont_];

    v41 = sub_25121176C();

    [v37 _setBadgeText_];

    (*(v36 + 8))(v11, v34);
  }

  else
  {
    (*(v36 + 8))(v11, v34);
  }
}

uint64_t sub_2511E7DB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EB0, &unk_251218400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2511E7EEC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_251210D1C();

  return v4;
}

id sub_2511E7FA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSVisionOSSubtitleOnOffIndicatorCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2511E8014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_251210D1C();

  return v6;
}

uint64_t BTSDeviceConfigController.turnOffListeningModeSpecifiers.getter()
{
  v1 = v0;
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v49 - v7;
  if (![v1 device])
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9 || (v10 = [v9 headphoneDevice]) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v39 = sub_2511F1160();
    (*(v3 + 16))(v6, v39, v2);
    v40 = sub_25121142C();
    v41 = sub_25121196C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_251143000, v40, v41, "No device!", v42, 2u);
      MEMORY[0x25306E960](v42, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v12 = sub_251210F8C();
  v13 = [v12 listeningModeOffAllowed];

  if (v13)
  {
    v14 = sub_251210F8C();
    v15 = sub_2512110BC();

    if (v15 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
      v16 = sub_2511D4478();
      v18 = v17;
      v19 = sub_2511D4478();
      v21 = sub_2511D4484(v16, v18, v19, v20);
      v22 = MEMORY[0x28223BE20](v21);
      v23 = (*(*v22 + 144))(sub_2511E9608);

      sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_251210D1C();
      v28 = v27;

      memset(v49, 0, sizeof(v49));
      v29 = swift_allocObject();
      *(v29 + 16) = v11;
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v11;
      *(v31 + 24) = v30;
      v32 = v11;

      v33 = sub_2511D3E4C();
      *(&v48 + 1) = sub_2511E97D0;
      *(&v47 + 1) = sub_2511E9764;
      *&v48 = v29;
      *&v47 = 0;
      sub_2511D4428(0, 0, v26, v28, v49, 0, 0, 6, v50, 0, v33 & 1, v47, v48, v31, 0);

      v34 = (*(*v23 + 152))(v50);

      sub_2511CCA6C(v50);
      v35 = (*(*v34 + 168))(sub_2511E9160, 0);

      v37 = (*(*v35 + 176))(v36);
      swift_unknownObjectRelease();

      return v37;
    }
  }

  v43 = sub_2511F1160();
  (*(v3 + 16))(v8, v43, v2);
  v44 = sub_25121142C();
  v45 = sub_25121196C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_251143000, v44, v45, "Requirements not meet !", v46, 2u);
    MEMORY[0x25306E960](v46, -1, -1);
  }

  (*(v3 + 8))(v8, v2);
  swift_unknownObjectRelease();
  return MEMORY[0x277D84F90];
}

void sub_2511E8778(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_25121144C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v74 - v11;
  v13 = sub_251210F8C();
  v14 = sub_2512110EC();

  if (v14 == 1)
  {
    v15 = sub_251210F6C();
    v16 = [v15 productID];

    if ((v16 == 8212 || (v17 = sub_251210F6C(), v18 = [v17 productID], v17, v18 == 8228)) && objc_msgSend(a1, sel_BOOLValue))
    {
      v78 = a3;
      v19 = sub_251210F8C();
      v20 = sub_2512110FC();

      v21 = v20 == 2;
      if (v20 == 2)
      {
        v22 = 0;
      }

      else
      {
        v22 = 1599230796;
      }

      if (v21)
      {
        v23 = 0xE000000000000000;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      v24 = sub_2511F1160();
      (*(v7 + 16))(v12, v24, v6);

      v79 = a2;
      v25 = v23;
      v26 = sub_25121142C();
      v27 = sub_25121195C();

      v28 = os_log_type_enabled(v26, v27);
      v76 = v22;
      v77 = v23;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock = v30;
        *v29 = 136315394;
        *(v29 + 4) = sub_2511CBE4C(v22, v25, &aBlock);
        *(v29 + 12) = 256;
        v75 = a1;
        v31 = v79;
        v32 = sub_251210F8C();
        v33 = sub_2512110FC();

        *(v29 + 14) = v33;
        a1 = v75;
        _os_log_impl(&dword_251143000, v26, v27, "OffModeAlert: Prefix is %s %hhu!", v29, 0xFu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x25306E960](v30, -1, -1);
        MEMORY[0x25306E960](v29, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v12, v6);
      aBlock = 0;
      v81 = 0xE000000000000000;
      sub_251211BBC();
      v49 = v77;

      v50 = v76;
      aBlock = v76;
      v81 = v49;
      MEMORY[0x25306D820](0xD00000000000001FLL, 0x8000000251222260);
      sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v52 = objc_opt_self();
      v53 = [v52 bundleForClass_];
      v75 = sub_251210D1C();

      aBlock = 0;
      v81 = 0xE000000000000000;
      sub_251211BBC();

      aBlock = v50;
      v81 = v49;
      MEMORY[0x25306D820](0xD00000000000001DLL, 0x8000000251222280);
      v54 = [v52 bundleForClass_];
      sub_251210D1C();

      v55 = sub_25121176C();

      v56 = sub_25121176C();

      v57 = [objc_opt_self() alertControllerWithTitle:v55 message:v56 preferredStyle:1];

      v58 = [v52 bundleForClass_];
      sub_251210D1C();

      v59 = swift_allocObject();
      v60 = v79;
      *(v59 + 16) = v79;
      *(v59 + 24) = a1;
      v61 = v60;
      v62 = a1;
      v63 = sub_25121176C();

      v84 = sub_2511E97D8;
      v85 = v59;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_2511E718C;
      v83 = &block_descriptor_1;
      v64 = _Block_copy(&aBlock);

      v65 = objc_opt_self();
      v66 = [v65 actionWithTitle:v63 style:0 handler:v64];
      _Block_release(v64);

      [v57 addAction_];
      v67 = [v52 bundleForClass_];
      sub_251210D1C();

      v68 = v78;

      v69 = sub_25121176C();

      v84 = sub_2511E9864;
      v85 = v68;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_2511E718C;
      v83 = &block_descriptor_12;
      v70 = _Block_copy(&aBlock);

      v71 = [v65 actionWithTitle:v69 style:1 handler:v70];
      _Block_release(v70);

      [v57 addAction_];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v73 = Strong;
        [Strong presentViewController:v57 animated:1 completion:0];
      }
    }

    else
    {
      v79 = sub_251210F8C();
      if ([a1 BOOLValue])
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      [v79 setListeningModeOffAllowed_];
      v48 = v79;
    }
  }

  else
  {
    v34 = sub_251210F8C();
    if ([a1 BOOLValue])
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    [v34 setListeningModeOffAllowed_];

    v36 = sub_2511F1160();
    (*(v7 + 16))(v10, v36, v6);
    v37 = a2;
    v38 = sub_25121142C();
    v39 = sub_25121197C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136315138;
      v42 = [v37 description];
      v43 = sub_25121179C();
      v45 = v44;

      v46 = sub_2511CBE4C(v43, v45, &aBlock);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_251143000, v38, v39, "Hearing Protection Capability not supported! %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x25306E960](v41, -1, -1);
      MEMORY[0x25306E960](v40, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }
}

void sub_2511E9160(void *a1)
{
  v2 = sub_2512118CC();
  [a1 setProperty:v2 forKey:*MEMORY[0x277D3FF38]];

  v3 = sub_25121176C();
  [a1 setIdentifier_];
}

BOOL sub_2511E9234()
{
  v1 = v0;
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  if (![v1 device])
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9 || (v10 = [v9 headphoneDevice]) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v19 = sub_2511F1160();
    (*(v3 + 16))(v6, v19, v2);
    v20 = sub_25121142C();
    v21 = sub_25121196C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2511CBE4C(0xD000000000000015, 0x80000002512221E0, &v30);
      _os_log_impl(&dword_251143000, v20, v21, "%s: No device return true!", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x25306E960](v23, -1, -1);
      MEMORY[0x25306E960](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 1;
  }

  v11 = v10;
  v12 = sub_251210F8C();
  v13 = [v12 listeningModeOffAllowed];

  if (!v13)
  {
    v24 = sub_2511F1160();
    (*(v3 + 16))(v8, v24, v2);
    v25 = sub_25121142C();
    v26 = sub_25121196C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2511CBE4C(0xD000000000000015, 0x80000002512221E0, &v30);
      _os_log_impl(&dword_251143000, v25, v26, "%s: listeningModeOffAllowed is unknown, return true!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x25306E960](v28, -1, -1);
      MEMORY[0x25306E960](v27, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v3 + 8))(v8, v2);
    return 1;
  }

  v14 = sub_251210F8C();
  v15 = sub_2512110BC();

  if (v15 == 1)
  {
    v16 = sub_251210F8C();
    v17 = [v16 listeningModeOffAllowed];

    swift_unknownObjectRelease();
    return v17 == 1;
  }

  else
  {

    swift_unknownObjectRelease();
    return 0;
  }
}

void sub_2511E9608(void *a1)
{
  v2 = sub_251210F8C();
  sub_2512110FC();

  sub_2511C8A48(0, &qword_27F422B48, off_2796ACA28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_251210D1C();

  v5 = sub_25121176C();

  [a1 setProperty:v5 forKey:{*MEMORY[0x277D3FF88], 0xE000000000000000}];
}

id sub_2511E9764(uint64_t a1)
{
  v1 = sub_251210F8C();
  v2 = [v1 listeningModeOffAllowed];

  v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v3 initWithInteger_];
}

void sub_2511E97D8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = sub_251210F8C();
  if ([v2 BOOLValue])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [v4 setListeningModeOffAllowed_];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2511E9864()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_25121176C();
    [v1 reloadSpecifierID_];
  }
}

id sub_2511E98F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setNumberOfLines_];
  sub_2511E326C(0xD00000000000001ALL, 0x8000000251222040);
  v1 = sub_25121176C();

  [v0 setText_];

  [v0 setTextAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setUserInteractionEnabled_];
  return v0;
}

id sub_2511E9A40(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HPSCenterContentCell();
  return objc_msgSendSuper2(&v4, sel_addSubview_, a1);
}

id sub_2511E9ACC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_label;
  *&v4[v8] = sub_2511E98F4();
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_headphoneDevice] = 0;
  if (a3)
  {
    v9 = sub_25121176C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for HPSCenterContentCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_specifier_, a1, v9, a4);

  if (v10)
  {
  }

  return v10;
}

id sub_2511E9C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_label;
  *&v3[v6] = sub_2511E98F4();
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_headphoneDevice] = 0;
  if (a3)
  {
    v7 = sub_25121176C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for HPSCenterContentCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);

  return v8;
}

id sub_2511E9D78(void *a1)
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_label;
  *&v1[v3] = sub_2511E98F4();
  *&v1[OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_headphoneDevice] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HPSCenterContentCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void *sub_2511E9F40()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2511E9FEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id BobbleSettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25121176C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BobbleSettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGestureMappingSection] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___tryBobbleSection] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___movieLoopView] = 0;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___topAsset] = 0;
  if (a2)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for BobbleSettingsViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

uint64_t sub_2511EA28C()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection;
  if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection])
  {
    v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection];
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
    v4 = sub_2511D4478();
    v6 = v5;
    v7 = sub_2511D4478();
    v9 = sub_2511D4484(v4, v6, v7, v8);
    v18 = type metadata accessor for BobbleSettingsViewController();
    *&v17 = v3;
    v10 = v3;
    v11 = sub_2511D3E4C();
    v12 = sub_2511D4428(0, 0, 0, 0, &v17, 0, 0, -1, v19, 0, v11 & 1, 0, 0, 0, 0);
    v13 = (*(*v9 + 160))(v19, v12);

    sub_2511CCA6C(v19);
    v14 = (*(*v13 + 168))(sub_2511EA47C, 0);

    v2 = (*(*v14 + 176))(v15);

    *&v3[v1] = v2;
  }

  return v2;
}

uint64_t sub_2511EA47C(void *a1, uint64_t a2)
{
  type metadata accessor for HPSCenterContentCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D50, &qword_251219228);
  [a1 setProperty:sub_251211CEC() forKey:*MEMORY[0x277D3FE58]];
  return swift_unknownObjectRelease();
}

uint64_t (*sub_2511EA510(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2511EA28C();
  return sub_2511EA558;
}

uint64_t sub_2511EA564()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection;
  if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection])
  {
    v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection];
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
    v4 = sub_2511D4478();
    v6 = v5;
    v7 = sub_2511D4478();
    v9 = sub_2511D4484(v4, v6, v7, v8);
    v10 = sub_2511E326C(0xD00000000000001BLL, 0x8000000251222350);
    v12 = v11;
    v20 = type metadata accessor for BobbleSettingsViewController();
    *&v19 = v3;
    v13 = v3;
    v14 = sub_2511D3E4C();
    v15 = sub_2511D4428(0, 0, v10, v12, &v19, sel_headGesturesEnabled, sel_setHeadGesturesEnabledWithEnabled_, 6, v21, 0, v14 & 1, 0, 0, 0, 0);
    v16 = (*(*v9 + 160))(v21, v15);

    v17 = sub_2511CCA6C(v21);
    v2 = (*(*v16 + 176))(v17);

    *&v3[v1] = v2;
  }

  return v2;
}

uint64_t (*sub_2511EA754(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2511EA564();
  return sub_2511EA79C;
}

uint64_t sub_2511EA7A8()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGestureMappingSection;
  if (*(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGestureMappingSection))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGestureMappingSection);
  }

  else
  {
    swift_unknownObjectWeakInit();
    v2 = sub_2511EA830(v4);
    MEMORY[0x25306E9D0](v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2511EA830(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
  v3 = sub_2511D4478();
  v5 = v4;
  v6 = sub_2511D4478();
  v8 = sub_2511D4484(v3, v5, v6, v7);
  v9 = sub_2511E326C(0xD000000000000024, 0x8000000251222560);
  v11 = v10;
  v12 = type metadata accessor for BobbleSettingsViewController();
  v35 = v12;
  *&v34 = v2;
  v13 = type metadata accessor for BobbleMappingSelectionController();
  v14 = v2;
  v15 = sub_2511D3E4C();
  memset(&v32[8], 0, 32);
  *v32 = v13;
  v16 = sub_2511D4428(0, 0, v9, v11, &v34, sel_acceptReplyPlayPauseStringMapping, 0, 2, v36, 0, v15 & 1, *v32, *&v32[16], *&v32[32], 0);
  v17 = (*(*v8 + 160))(v36, v16);

  v18 = sub_2511CCA6C(v36);
  MEMORY[0x28223BE20](v18);
  *(&v33 + 1) = v14;
  v19 = (*(*v17 + 168))(sub_2511EE120);

  v20 = sub_2511E326C(0xD000000000000027, 0x8000000251222590);
  v22 = v21;
  v35 = v12;
  *&v34 = v14;
  v23 = v14;
  v24 = sub_2511D3E4C();
  memset(&v32[8], 0, 32);
  *v32 = v13;
  v25 = sub_2511D4428(0, 0, v20, v22, &v34, sel_declineDismissSkipStringMapping, 0, 2, v36, 0, v24 & 1, *v32, *&v32[16], *&v32[32], 0);
  v26 = (*(*v19 + 160))(v36, v25);

  v27 = sub_2511CCA6C(v36);
  MEMORY[0x28223BE20](v27);
  *(&v33 + 1) = v23;
  v28 = (*(*v26 + 168))(sub_2511EE128);

  v30 = (*(*v28 + 176))(v29);

  return v30;
}

uint64_t (*sub_2511EABFC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2511EA7A8();
  return sub_2511EAC44;
}

uint64_t sub_2511EAC50()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___tryBobbleSection;
  if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___tryBobbleSection])
  {
    v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___tryBobbleSection];
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
    v4 = sub_2511D4478();
    v6 = v5;
    v7 = sub_2511D4478();
    v9 = sub_2511D4484(v4, v6, v7, v8);
    v10 = sub_2511E326C(0xD000000000000015, 0x8000000251222540);
    v12 = v11;
    v21 = type metadata accessor for BobbleSettingsViewController();
    *&v20 = v3;
    v13 = v3;
    v14 = sub_2511D3E4C();
    v15 = sub_2511D4428(0, 0, v10, v12, &v20, 0, 0, 13, v22, 0, v14 & 1, 0, 0, 0, 0);
    v16 = (*(*v9 + 160))(v22, v15);

    sub_2511CCA6C(v22);
    v17 = (*(*v16 + 168))(sub_2511EAE64, 0);

    v2 = (*(*v17 + 176))(v18);

    *&v3[v1] = v2;
  }

  return v2;
}

uint64_t (*sub_2511EAE90(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2511EAC50();
  return sub_2511EAED8;
}

Swift::OpaquePointer_optional __swiftcall BobbleSettingsViewController.specifiers()()
{
  v1 = v0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422CD8, &qword_2512190E0);
  v92 = *(v93 - 8);
  v2 = MEMORY[0x28223BE20](v93);
  v4 = &v83[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v83[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422CE0, &qword_2512190E8);
  v97 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v96 = &v83[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422CE8, &unk_2512190F0);
  v95 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v94 = &v83[-v10];
  v11 = sub_25121144C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v98 = &v83[-v16];
  v17 = [v1 specifier];
  if (!v17)
  {
    __break(1u);
    goto LABEL_36;
  }

  v19 = v17;
  v20 = [v17 userInfo];

  if (v20)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v104 = v102;
  v105 = v103;
  if (*(&v103 + 1))
  {
    v90 = v9;
    sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
    if (swift_dynamicCast())
    {
      v21 = v99[0];
      v22 = [objc_opt_self() deviceKey];
      if (!v22)
      {
        sub_25121179C();
        v22 = sub_25121176C();
      }

      v91 = v21;
      v23 = [v21 objectForKey_];

      if (v23)
      {
        sub_251211B5C();
        swift_unknownObjectRelease();
      }

      else
      {
        v102 = 0u;
        v103 = 0u;
      }

      v104 = v102;
      v105 = v103;
      v24 = v91;
      if (*(&v103 + 1))
      {
        sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
        if (swift_dynamicCast())
        {
          v25 = v99[0];
          v26 = [v99[0] headphoneDevice];
          if (v26)
          {
            v27 = v26;
            v89 = v25;
            v28 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice;
            swift_beginAccess();
            v29 = *(v1 + v28);
            *(v1 + v28) = v27;
            v30 = v27;

            sub_251210F4C();
            v31 = sub_2511E2B2C();

            *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel) = v31;

            v32 = sub_2511E2FFC();
            v33 = v98;
            (*(v12 + 16))(v98, v32, v11);
            v34 = v30;
            v35 = sub_25121142C();
            v36 = sub_25121197C();

            v37 = os_log_type_enabled(v35, v36);
            v88 = v34;
            v87 = v7;
            if (v37)
            {
              v38 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *&v102 = v86;
              *v38 = 136315394;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
              v39 = swift_allocObject();
              v84 = v36;
              v40 = v39;
              *(v39 + 16) = xmmword_251217FE0;
              *(v39 + 56) = sub_25121102C();
              *(v40 + 64) = sub_2511ED8A4();
              *(v40 + 32) = v34;
              v41 = v34;
              v42 = sub_2512117BC();
              v44 = sub_2511CBE4C(v42, v43, &v102);

              *(v38 + 4) = v44;
              *(v38 + 12) = 2112;
              sub_251210F4C();
              v45 = sub_25121122C();

              *(v38 + 14) = v45;
              v46 = v85;
              *v85 = v45;
              _os_log_impl(&dword_251143000, v35, v84, "Bobble: specifiers, HeadphoneDevice:%s aad: %@ ", v38, 0x16u);
              sub_2511CCD34(v46, &qword_27F4229F8, &qword_251218D50);
              MEMORY[0x25306E960](v46, -1, -1);
              v47 = v86;
              __swift_destroy_boxed_opaque_existential_0(v86);
              MEMORY[0x25306E960](v47, -1, -1);
              MEMORY[0x25306E960](v38, -1, -1);

              (*(v12 + 8))(v98, v11);
            }

            else
            {

              (*(v12 + 8))(v33, v11);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422978, qword_251218410);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2512190C0;
            v56 = MEMORY[0x277D85000];
            *(inited + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xE0))();
            *(inited + 40) = (*((*v56 & *v1) + 0xF8))();
            *(inited + 48) = (*((*v56 & *v1) + 0x110))();
            *(inited + 56) = (*((*v56 & *v1) + 0x128))();
            v57 = sub_2511CB83C(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422980, &qword_251219A90);
            swift_arrayDestroy();
            sub_2511ECFD0();
            sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
            v58 = sub_25121186C();
            v59 = sub_25121176C();
            [v1 setValue:v58 forKey:v59];

            v60 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_listeners;
            v61 = swift_beginAccess();
            v62 = *(v1 + v60);
            if ((v62 & 0xC000000000000001) != 0)
            {

              v63 = sub_251211B8C();

              if (v63)
              {
LABEL_28:
                v64 = sub_2511CBB34(v57);

LABEL_34:

                v17 = v64;
                goto LABEL_39;
              }
            }

            else if (*(v62 + 16))
            {
              goto LABEL_28;
            }

            v98 = v57;
            v65 = *((*v56 & *v1) + 0x98);
            v17 = v65(v61);
            if (v17)
            {
              v66 = v17;
              sub_251210F4C();

              v67 = v96;
              sub_25121126C();

              v68 = v87;
              v69 = sub_251210F3C();
              v70 = (*(v97 + 8))(v67, v68);
              v99[0] = v69;
              v17 = v65(v70);
              if (v17)
              {
                v71 = v17;
                sub_251210F4C();

                sub_2512112CC();

                v72 = v93;
                v73 = sub_251210F3C();
                v74 = v6;
                v75 = *(v92 + 8);
                v76 = v75(v74, v72);
                v101 = v73;
                v17 = v65(v76);
                if (v17)
                {
                  v77 = v17;
                  sub_251210F4C();

                  sub_2512112AC();

                  v78 = sub_251210F3C();
                  v75(v4, v72);
                  v100 = v78;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422CF0, &qword_251219100);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422CF8, &qword_251219108);
                  v79 = MEMORY[0x277CBCD90];
                  sub_2511C6790(&qword_27F422D00, &qword_27F422CF0, &qword_251219100, MEMORY[0x277CBCD90]);
                  sub_2511C6790(&qword_27F422D08, &qword_27F422CF8, &qword_251219108, v79);
                  v80 = v94;
                  sub_25121153C();
                  sub_2511C6790(&qword_27F422D10, &qword_27F422CE8, &unk_2512190F0, MEMORY[0x277CBCAF8]);
                  v81 = v90;
                  v82 = sub_25121160C();
                  (*(v95 + 8))(v80, v81);
                  v99[0] = v82;
                  swift_allocObject();
                  swift_unknownObjectWeakInit();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D18, &unk_251219110);
                  sub_2511C6790(&qword_27F422D20, &qword_27F422D18, &unk_251219110, v79);
                  sub_25121167C();

                  swift_beginAccess();
                  sub_25121155C();
                  swift_endAccess();

                  v64 = sub_2511CBB34(v98);

                  goto LABEL_34;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_2511CCD34(&v104, &unk_27F422EB0, &unk_251218400);
      }
    }
  }

  else
  {
    sub_2511CCD34(&v104, &unk_27F422EB0, &unk_251218400);
  }

  sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
  v48 = sub_25121186C();
  v49 = sub_25121176C();
  [v1 setValue:v48 forKey:v49];

  v50 = sub_2511E2FFC();
  (*(v12 + 16))(v15, v50, v11);
  v51 = sub_25121142C();
  v52 = sub_25121196C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v104 = v54;
    *v53 = 136315394;
    *(v53 + 4) = sub_2511CBE4C(0x6569666963657073, 0xEC00000029287372, &v104);
    *(v53 + 12) = 2048;
    *(v53 + 14) = 154;
    _os_log_impl(&dword_251143000, v51, v52, "%s: %ld Depedencies not meet, bailing out of specifiers returning empty conroller!", v53, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x25306E960](v54, -1, -1);
    MEMORY[0x25306E960](v53, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v17 = 0;
LABEL_39:
  result.value._rawValue = v17;
  result.is_nil = v18;
  return result;
}

uint64_t sub_2511EBE44(uint64_t a1)
{
  v1 = sub_25121144C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong reloadSpecifiers];
  }

  v7 = sub_2511E2FFC();
  (*(v2 + 16))(v4, v7, v1);
  v8 = sub_25121142C();
  v9 = sub_25121197C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_251143000, v8, v9, "Bobble: reload for value change", v10, 2u);
    MEMORY[0x25306E960](v10, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

Swift::Void __swiftcall BobbleSettingsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BobbleSettingsViewController();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1);
  sub_2511ECFD0();
  v3 = sub_2511ECCBC();
  [v3 play];

  [v1 reloadSpecifiers];
}

void sub_2511EC13C()
{
  v1 = sub_25121144C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2511E2FFC();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = sub_25121142C();
  v8 = sub_25121197C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = MEMORY[0x277D85000];
  if (!v9)
  {

    v27 = (*(v2 + 8))(v4, v1);
    goto LABEL_7;
  }

  v33 = v8;
  v11 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v35 = v32;
  *v11 = 136315650;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_251217FE0;
  v13 = *((*v10 & *v6) + 0x98);
  v14 = v13();
  if (!v14)
  {
LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v31 = v1;
  *(v12 + 56) = sub_25121102C();
  *(v12 + 64) = sub_2511ED8A4();
  *(v12 + 32) = v15;
  v16 = sub_2512117BC();
  v18 = sub_2511CBE4C(v16, v17, &v35);

  *(v11 + 4) = v18;
  *(v11 + 12) = 2112;
  v20 = (v13)(v19);

  if (!v20)
  {
LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  sub_251210F4C();

  v21 = sub_25121122C();

  *(v11 + 14) = v21;
  v23 = v34;
  *v34 = v21;
  *(v11 + 22) = 256;
  v24 = (v13)(v22);
  if (v24)
  {
    v25 = v24;
    sub_251210F4C();

    LOBYTE(v25) = sub_25121124C();

    *(v11 + 24) = v25;

    _os_log_impl(&dword_251143000, v7, v33, "Bobble: headGesturesEnabled, HeadphoneDevice:%s aad: %@ %hhd", v11, 0x19u);
    sub_2511CCD34(v23, &qword_27F4229F8, &qword_251218D50);
    MEMORY[0x25306E960](v23, -1, -1);
    v26 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x25306E960](v26, -1, -1);
    MEMORY[0x25306E960](v11, -1, -1);

    v27 = (*(v2 + 8))(v4, v31);
    v10 = MEMORY[0x277D85000];
LABEL_7:
    v28 = (*((*v10 & *v6) + 0x98))(v27);
    if (v28)
    {
      v29 = v28;
      sub_2511C8A48(0, &qword_27F422FA0, 0x277CCABB0);
      sub_251210F4C();

      sub_25121124C();

      sub_251211A4C();
      return;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_12:

  __break(1u);
}

void *sub_2511EC5AC(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v2)
  {
    v3 = result;

    if ([v3 BOOLValue])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    (*(*v2 + 144))(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2511EC828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
  v2 = sub_2511D4478();
  v4 = v3;
  v5 = sub_2511D4478();
  v7 = sub_2511D4484(v2, v4, v5, v6);
  v8 = sub_2511E326C(0xD00000000000001BLL, 0x8000000251222350);
  v10 = v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D28, qword_251219120);
  *&v19 = v1;
  v11 = type metadata accessor for BobbleSettingsViewController();
  v12 = sub_2511D3E4C();
  memset(v18 + 8, 0, 24);
  *&v18[0] = v11;
  v13 = sub_2511D4428(0, 0, v8, v10, &v19, sel_headGestureOnInput_, 0, 2, v21, 0, v12 & 1, v18[0], v18[1], 0, 0);
  v14 = (*(*v7 + 160))(v21, v13);

  v15 = sub_2511CCA6C(v21);
  v16 = (*(*v14 + 176))(v15);

  return v16;
}

void sub_2511ECA44()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v1)
  {
    v2 = *(*v1 + 232);

    v4 = v2(v3);

    sub_2511E2D48(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_2511ECB80()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v1)
  {
    v2 = *(*v1 + 184);

    v4 = v2(v3);

    sub_2511E2D48(v4);
  }

  else
  {
    __break(1u);
  }
}

id sub_2511ECCBC()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___movieLoopView;
  v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___movieLoopView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___movieLoopView];
  }

  else
  {
    type metadata accessor for BobbleVideoLoopPlayer();
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    v6 = v0;
    sub_2511F3830(0, v5, 0.0, 0.0, 0.0, 0.0);
    v8 = v7;
    [v7 load];
    [v8 setDesiredBounds_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *&v0[v1];
    *&v6[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_2511ECDCC()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = sub_2511ECCBC();
    [v4 addSubview_];

    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2512190D0;
    v8 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___movieLoopView;
    v9 = [*(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___movieLoopView) centerXAnchor];
    v10 = [v4 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v7 + 32) = v11;
    v12 = [*(v0 + v8) centerYAnchor];
    v13 = [v4 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:20.0];

    *(v7 + 40) = v14;
    sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
    v15 = sub_25121186C();

    [v6 activateConstraints_];

    v16 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

void sub_2511ECFD0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75B70]) initWithFrame_];
  v3 = [v2 contentView];
  v4 = sub_2511ECDCC();
  [v3 addSubview_];

  v5 = v2;
  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    [v5 setFrame_];
    v8 = OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___topAsset;
    [*&v1[OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___topAsset] setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *&v1[v8];
    v10 = [v5 contentView];
    [v9 pinToOther_];

    v11 = [v1 table];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 tableHeaderView];
      if (!v13 || (v14 = v13, sub_2511C8A48(0, &qword_27F422948, 0x277D75D18), v15 = v5, v16 = sub_251211A5C(), v14, v15, (v16 & 1) == 0))
      {
        [v12 setTableHeaderView_];
      }
    }

    v17 = [v1 table];
    v18 = [v17 tableHeaderView];

    [v18 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id sub_2511ED23C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2511ED34C()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  [v0 setSelectionStyle_];
  v2 = [v0 subviews];
  sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
  v3 = sub_25121187C();

  v4 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs20HPSCenterContentCell_label];
  v29 = v4;
  v28[2] = &v29;
  v5 = sub_2511CC5CC(sub_2511CC9DC, v28, v3);

  if (v5)
  {
    [v4 layoutIfNeeded];
    [v0 layoutIfNeeded];
  }

  else
  {
    v6 = [v0 subviews];
    v7 = sub_25121187C();

    if (v7 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x25306DBD0](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        [v10 removeFromSuperview];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    [v0 addSubview_];
    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2512183D0;
    v15 = [v4 topAnchor];
    v16 = [v0 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];

    *(v14 + 32) = v17;
    v18 = [v4 leadingAnchor];
    v19 = [v0 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:20.0];

    *(v14 + 40) = v20;
    v21 = [v4 trailingAnchor];
    v22 = [v0 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-20.0];

    *(v14 + 48) = v23;
    v24 = [v4 bottomAnchor];
    v25 = [v0 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];

    *(v14 + 56) = v26;
    sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
    v27 = sub_25121186C();

    [v13 activateConstraints_];
  }
}

void sub_2511ED7CC()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_headphoneDevice) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_listeners) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___headGestureMappingSection) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___tryBobbleSection) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___movieLoopView) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController____lazy_storage___topAsset) = 0;
  sub_251211C4C();
  __break(1u);
}

unint64_t sub_2511ED8A4()
{
  result = qword_27F422B40;
  if (!qword_27F422B40)
  {
    sub_25121102C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422B40);
  }

  return result;
}

unint64_t sub_2511ED8FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D48, &qword_251219220);
    v3 = sub_251211C8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2511EE294(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2511CC6F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2511C8CB0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

BOOL _s16HeadphoneConfigs28BobbleSettingsViewControllerC15bobbleSupportedySbyXlFZ_0(uint64_t a1)
{
  v1 = sub_25121144C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v40[-v6];
  v8 = sub_25121176C();
  CFPreferencesAppSynchronize(v8);

  v9 = sub_25121176C();
  v10 = sub_25121176C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v9, v10, 0);

  if (AppBooleanValue)
  {
    return 1;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13 && (v14 = [v13 headphoneDevice]) != 0)
  {
    v15 = v14;
    v16 = sub_2511E2FFC();
    (*(v2 + 16))(v7, v16, v1);
    v17 = v15;
    v18 = sub_25121142C();
    v19 = sub_25121197C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v20 = 136315650;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226F8, &unk_251217E40);
      v21 = swift_allocObject();
      v42 = v18;
      v22 = v21;
      *(v21 + 16) = xmmword_251217FE0;
      *(v21 + 56) = sub_25121102C();
      *(v22 + 64) = sub_2511ED8A4();
      *(v22 + 32) = v17;
      v23 = v17;
      v41 = v19;
      v24 = v23;
      v25 = sub_2512117BC();
      v27 = sub_2511CBE4C(v25, v26, &v45);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2080;
      v28 = sub_251210F5C();
      v44 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D30, &qword_2512191F8);
      v29 = sub_251211AEC();
      v31 = v30;

      v32 = sub_2511CBE4C(v29, v31, &v45);

      *(v20 + 14) = v32;
      *(v20 + 22) = 256;
      sub_251210F4C();
      LOBYTE(v31) = sub_25121121C();

      *(v20 + 24) = v31;

      v33 = v42;
      _os_log_impl(&dword_251143000, v42, v41, "Bobble: headGesturesEnabled, HeadphoneDevice:%s aad: %s %hhu", v20, 0x19u);
      v34 = v43;
      swift_arrayDestroy();
      MEMORY[0x25306E960](v34, -1, -1);
      MEMORY[0x25306E960](v20, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v7, v1);
    sub_251210F4C();
    v39 = sub_25121121C();

    swift_unknownObjectRelease();
    return v39 == 2;
  }

  else
  {
    swift_unknownObjectRelease();
    v35 = sub_2511E2FFC();
    (*(v2 + 16))(v5, v35, v1);
    v36 = sub_25121142C();
    v37 = sub_25121197C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_251143000, v36, v37, "Bobble not supported!", v38, 2u);
      MEMORY[0x25306E960](v38, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }
}

uint64_t sub_2511EDED4(void *a1)
{
  if ([a1 userInfo])
  {
    sub_251211B5C();
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
    goto LABEL_16;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_2511E326C(0xD000000000000012, 0x8000000251221BC0);
  }

  v1 = [objc_opt_self() deviceKey];
  if (!v1)
  {
    sub_25121179C();
    v1 = sub_25121176C();
  }

  v2 = [v8 objectForKey_];

  if (v2)
  {
    sub_251211B5C();
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

LABEL_16:
    sub_2511CCD34(&v11, &unk_27F422EB0, &unk_251218400);
    return sub_2511E326C(0xD000000000000012, 0x8000000251221BC0);
  }

  sub_2511C8A48(0, &qword_27F422968, off_2796ACA80);
  if (swift_dynamicCast())
  {
    v3 = [v8 headphoneDevice];
    if (v3)
    {
      v4 = v3;
      sub_251210F4C();

      v5 = sub_25121124C();
      v6 = sub_2511E2E20(v5);

      return v6;
    }
  }

  else
  {
  }

  return sub_2511E326C(0xD000000000000012, 0x8000000251221BC0);
}

void sub_2511EE130(void *a1, char a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D38, &qword_251219210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251217D90;
  *(inited + 32) = 0x65736163657375;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for BobbleMappingUseCase;
  *(inited + 80) = 0x65646F4D77656976;
  *(inited + 88) = 0xE90000000000006CLL;
  v7 = *(v5 + OBJC_IVAR____TtC16HeadphoneConfigs28BobbleSettingsViewController_viewModel);
  if (v7)
  {
    v8 = inited;
    *(inited + 120) = type metadata accessor for BobbleSettingsViewModel();
    *(v8 + 96) = v7;

    sub_2511ED8FC(v8);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D40, &qword_251219218);
    swift_arrayDestroy();
    v9 = sub_25121171C();

    [a1 setUserInfo_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2511EE294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D40, &qword_251219218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2511EE324()
{
  [v0 bounds];

  return [v0 trackRectForBounds_];
}

uint64_t sub_2511EE3B4()
{
  v1 = *(*&v0[qword_280B19818] + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2511F07A4(0, v1, 0);
    v3 = 0;
    v2 = v15;
    v14 = xmmword_251219230;
    do
    {
      v4 = [v0 maximumValue];
      v6 = sub_2511F0308(v4, (v5 / (*(*&v0[qword_280B19818] + 16) - 1)) * v3);
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_2511F07A4((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
      }

      ++v3;
      *(v15 + 16) = v9 + 1;
      v10 = v15 + 32 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      *(v10 + 48) = v14;
    }

    while (v1 != v3);
  }

  return v2;
}

id sub_2511EE4F0(void *a1)
{
  v1 = a1;
  v2 = sub_2511EE524();

  return v2;
}

id sub_2511EE524()
{
  [v0 value];

  return sub_2511F0270(v1);
}

void sub_2511EE558(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_2511EE5AC(a3);
}

id sub_2511EE5AC(uint64_t a1)
{
  v2 = a1;
  [v1 maximumValue];
  *&v3 = (*&v3 / (*(*&v1[qword_280B19818] + 16) - 1)) * v2;

  return [v1 setValue:1 animated:0 objectChange:v3];
}

uint64_t sub_2511EE620()
{
  [v0 selectedIndex];

  return sub_2512118BC();
}

uint64_t sub_2511EE6A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_2511F09E8();
  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);

  return v5(a1);
}

uint64_t (*sub_2511EE730(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  [v1 selectedIndex];
  sub_2512118BC();
  return sub_2511EE89C;
}

void sub_2511EE89C(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (v6[2])((*a1)[3], v4, v5);
    [v7 setSelectedIndex_];
    v8 = v6[1];
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    [v7 setSelectedIndex_];
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double sub_2511EEA38(void *a1)
{
  v1 = a1;
  v5 = sub_2511EEA7C(v1, v2, v3, v4);

  return v5;
}

double sub_2511EEA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v19.receiver = v4;
  v19.super_class = v5;
  objc_msgSendSuper2(&v19, sel_intrinsicContentSize);
  v7 = v6;
  [v4 bounds];
  v9 = v8;
  v10 = *(v4 + qword_280B19810);
  if (v10 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
  {
    v12 = 0;
    v13 = v7;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x25306DBD0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v14 frame];
      MaxY = CGRectGetMaxY(v20);

      if (v13 <= MaxY)
      {
        v13 = MaxY;
      }

      ++v12;
      if (v16 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return v9;
}

char **sub_2511EEC50(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = *MEMORY[0x277D85000] & *v2;
  v5 = MEMORY[0x277D84F90];
  *(v2 + qword_280B19820) = MEMORY[0x277D84F90];
  *(v2 + qword_280B19830) = 0x4024000000000000;
  *(v2 + qword_280B19808) = 0x403B000000000000;
  *(v2 + qword_280B19828) = a2;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 connectedScenes];

  sub_2511C8A48(0, &qword_27F422D58, 0x277D75940);
  sub_2511F0A94();
  v8 = sub_25121191C();

  sub_2511EF4C8(v8);
  v10 = v9;

  if (v10 >> 62)
  {
    goto LABEL_45;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  while (1)
  {
LABEL_19:

LABEL_20:

    v24 = a1;
LABEL_21:
    v55 = a1;
    *(v3 + qword_280B19818) = v24;
    v25 = *(v24 + 2);
    if (v25)
    {
      v54 = v3;
      v60[0] = v5;

      v10 = v60;
      sub_251211C1C();
      a1 = 0;
      v3 = (v24 + 40);
      v26 = *MEMORY[0x277D76968];
      while (a1 < *(v24 + 2))
      {

        v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
        [v27 setTranslatesAutoresizingMaskIntoConstraints_];
        v28 = sub_2511EF84C(v26);
        [v27 setFont_];

        v29 = sub_25121176C();
        [v27 setText_];

        ++a1;
        sub_251211BFC();
        v5 = *(v60[0] + 16);
        sub_251211C2C();
        sub_251211C3C();
        v10 = v60;
        sub_251211C0C();
        v3 += 2;
        if (v25 == a1)
        {
          v31 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *(v57 + 80), *(v57 + 88), v30);

          v32 = v60[0];
          v3 = v54;
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v31 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *(v57 + 80), *(v57 + 88), v23);
    v32 = MEMORY[0x277D84F90];
LABEL_27:
    *(v3 + qword_280B19810) = v32;
    v59.receiver = v3;
    v59.super_class = v31;
    v58.receiver = objc_msgSendSuper2(&v59, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, v54);
    v58.super_class = v31;
    v3 = v58.receiver;
    objc_msgSendSuper2(&v58, sel__setTrackEnabled_, 1);
    [v3 setMinimumValue_];
    v33 = *(v55 + 16);

    *&v34 = (v33 - 1);
    [v3 setMaximumValue_];

    a1 = *(v3 + qword_280B19810);
    if (a1 >> 62)
    {
      v35 = sub_251211B8C();
    }

    else
    {
      v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = MEMORY[0x277D84F90];
    if (!v35)
    {
LABEL_39:
      *(v3 + qword_280B19820) = v36;

      v51 = objc_opt_self();
      sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);

      v52 = sub_25121186C();

      [v51 activateConstraints_];

      return v3;
    }

    v60[0] = MEMORY[0x277D84F90];

    v10 = v60;
    sub_251211C1C();
    if (v35 < 0)
    {
      break;
    }

    v37 = 0;
    v56 = v35;
    v57 = a1 & 0xC000000000000001;
    v54 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v57)
      {
        v39 = MEMORY[0x25306DBD0](v37, a1);
      }

      else
      {
        if (v37 >= *(v54 + 16))
        {
          goto LABEL_42;
        }

        v39 = *(a1 + 8 * v37 + 32);
      }

      v40 = v39;
      [v3 addSubview_];
      v41 = [v40 topAnchor];
      v42 = [v3 topAnchor];
      v5 = &selRef_constraintLessThanOrEqualToAnchor_constant_;
      v43 = [v41 constraintEqualToAnchor:v42 constant:47.0];

      [v43 setActive_];
      v44 = [v40 bottomAnchor];
      v45 = [v3 bottomAnchor];
      v46 = [v44 constraintEqualToAnchor_];

      [v46 setActive_];
      v47 = [v40 centerXAnchor];
      v48 = [v3 leftAnchor];
      [v3 value];
      v50 = [v47 constraintEqualToAnchor:v48 constant:sub_2511F0368(v49)];

      sub_251211BFC();
      sub_251211C2C();
      sub_251211C3C();
      v10 = v60;
      sub_251211C0C();
      ++v37;
      if (v38 == v56)
      {

        v36 = v60[0];
        goto LABEL_39;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      if (!sub_251211B8C())
      {
        break;
      }

LABEL_3:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25306DBD0](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_52;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;

      v13 = [v12 windows];

      sub_2511C8A48(0, &qword_27F422D68, 0x277D75DA0);
      v10 = sub_25121187C();

      if (v10 >> 62)
      {
        v14 = sub_251211B8C();
        if (!v14)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_19;
        }
      }

      v5 = v3;
      v15 = a1;
      v16 = 0;
      a1 = v10 & 0xC000000000000001;
      v3 = &selRef_constraintLessThanOrEqualToAnchor_constant_;
      while (1)
      {
        if (a1)
        {
          v17 = MEMORY[0x25306DBD0](v16, v10);
        }

        else
        {
          if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v17 = *(v10 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if ([v17 isKeyWindow])
        {

          v20 = [v18 traitCollection];

          v21 = [v20 layoutDirection];
          a1 = v15;
          v3 = v5;
          v5 = MEMORY[0x277D84F90];
          if (v21 != 1)
          {
            goto LABEL_20;
          }

          v24 = sub_2511EF734(v22);
          goto LABEL_21;
        }

        ++v16;
        if (v19 == v14)
        {
          a1 = v15;
          v3 = v5;
          v5 = MEMORY[0x277D84F90];
          goto LABEL_19;
        }
      }
    }
  }

LABEL_52:
  __break(1u);

  __break(1u);
  return result;
}

void sub_2511EF4C8(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_251211B7C();
    sub_2511C8A48(0, &qword_27F422D58, 0x277D75940);
    sub_2511F0A94();
    sub_25121192C();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_251211B9C() || (sub_2511C8A48(0, &qword_27F422D58, 0x277D75940), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_2511F1038(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x25306D860]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25121189C();
      }

      sub_2512118AC();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *sub_2511EF734(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2511F08C8(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id sub_2511EF84C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_25121179C();
  v7 = v6;
  if (v5 == sub_25121179C() && v7 == v8)
  {
    goto LABEL_14;
  }

  v10 = sub_251211CCC();

  if (v10)
  {
LABEL_6:

    goto LABEL_15;
  }

  v11 = sub_25121179C();
  v13 = v12;
  if (v11 == sub_25121179C() && v13 == v14)
  {
    goto LABEL_14;
  }

  v16 = sub_251211CCC();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = sub_25121179C();
  v19 = v18;
  if (v17 == sub_25121179C() && v19 == v20)
  {
    goto LABEL_14;
  }

  v34 = sub_251211CCC();

  if (v34)
  {
    goto LABEL_6;
  }

  v35 = *MEMORY[0x277D76838];
  v36 = sub_25121179C();
  v38 = v37;
  if (v36 == sub_25121179C() && v38 == v39)
  {
LABEL_14:

    goto LABEL_15;
  }

  v40 = sub_251211CCC();

  if ((v40 & 1) == 0)
  {
    v22 = v35;
    goto LABEL_16;
  }

LABEL_15:
  v21 = [v2 sharedApplication];
  v22 = [v21 preferredContentSizeCategory];

LABEL_16:
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 traitCollectionWithPreferredContentSizeCategory_];

  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:v27];
  v29 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v30 = objc_opt_self();
  [v28 pointSize];
  v31 = [v30 systemFontOfSize_];
  [v28 pointSize];
  v32 = [v29 scaledFontForFont:v31 maximumPointSize:v27 compatibleWithTraitCollection:?];

  return v32;
}

void sub_2511EFC30(void *a1)
{
  v1 = a1;
  sub_2511F0B94();
}

id sub_2511EFC78()
{
  v11 = *MEMORY[0x277D85000] & *v0;
  v1 = *(v0 + qword_280B19820);
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_251211B8C())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25306DBD0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v0 maximumValue];
      [v5 setConstant_];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v9 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *(v11 + 80), *(v11 + 88), v8);
  v12.receiver = v0;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_updateConstraints);
}

void sub_2511EFE10(void *a1)
{
  v1 = a1;
  sub_2511EFC78();
}

id sub_2511EFE58(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *((*MEMORY[0x277D85000] & *v8) + 0x50), *((*MEMORY[0x277D85000] & *v8) + 0x58), a8);
  v15.receiver = v8;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_trackRectForBounds_, a1, a2, a3, a4);
}

double sub_2511EFF08(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_2511EFE58(a2, a3, a4, a5, v9, v10, v11, v12);
  v14 = v13;

  return v14;
}

void sub_2511EFF88(void *a1, float a2)
{
  v2 = a1;
  sub_2511F0F88();
}

id sub_2511EFFE0(uint64_t a1, char a2, float a3)
{
  v5 = a1;
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_2511F0270(a3);
  [v3 maximumValue];
  v10 = (v9 / (*(*(v3 + qword_280B19818) + 16) - 1)) * v8;
  v12 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), v11);
  v15.receiver = v3;
  v15.super_class = v12;
  *&v13 = v10;
  result = objc_msgSendSuper2(&v15, sel_setValue_animated_, v5 & 1, v13);
  if (a2)
  {
    swift_getWitnessTable();
    sub_25121157C();
    sub_25121158C();
  }

  return result;
}

void sub_2511F00F8(void *a1, uint64_t a2, uint64_t a3, char a4, float a5)
{
  v8 = a1;
  sub_2511EFFE0(a3, a4, a5);
}

void sub_2511F0164()
{
  v1 = [v0 _minTrackView];
  if (v1)
  {
    v5 = v1;
    v2 = [v0 _maxTrackView];
    if (v2)
    {
      v3 = v2;
      [v5 setHidden_];
      [v3 setHidden_];

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }
  }
}

float sub_2511F0220(uint64_t a1)
{
  v2 = a1;
  [v1 maximumValue];
  return (v3 / (*(*&v1[qword_280B19818] + 16) - 1)) * v2;
}

id sub_2511F0270(float a1)
{
  result = [v1 maximumValue];
  v5 = roundf(a1 / (v4 / (*(*&v1[qword_280B19818] + 16) - 1)));
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.2234e18)
  {
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

CGFloat sub_2511F0308(uint64_t a1, float a2)
{
  v3 = sub_2511F0368(a2) + -1.0;
  [v2 bounds];
  [v2 trackRectForBounds_];
  CGRectGetMidY(v5);
  return v3;
}

CGFloat sub_2511F0368(float a1)
{
  [v1 maximumValue];
  v4 = v3;
  [v1 minimumValue];
  v6 = v4 - v5;
  [v1 bounds];
  [v1 trackRectForBounds_];
  v7 = (CGRectGetWidth(v10) + -16.0) / v6 * a1;
  [v1 bounds];
  [v1 trackRectForBounds_];
  return v7 + v8 + 8.0;
}

id sub_2511F0420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v16.receiver = v4;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  v7 = *(v4 + qword_280B19810);
  if (v7 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
  {
    v9 = 0;
    v10 = *MEMORY[0x277D76968];
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25306DBD0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = sub_2511EF84C(v10);
      [v12 setFont_];

      ++v9;
      if (v13 == i)
      {
        return [v4 setNeedsDisplay];
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return [v4 setNeedsDisplay];
}

void sub_2511F059C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_2511F0420(a3, v8, v6, v7);
}

id sub_2511F0684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2511F06F4(uint64_t a1)
{
}

uint64_t sub_2511F0760@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for HeadphoneAccessoryLabeledSlider(0, *(a1 + 80), *(a1 + 88), x3_0);
  result = sub_25121157C();
  *a3 = result;
  return result;
}

char *sub_2511F07A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2511F07C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2511F07C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D70, &qword_251219308);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_2511F08DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4229D0, &qword_251219310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

id sub_2511F09E8()
{
  v1 = (*(*((*MEMORY[0x277D85000] & *v0) + 0x58) + 8))(*((*MEMORY[0x277D85000] & *v0) + 0x50));

  return [v0 setSelectedIndex_];
}

unint64_t sub_2511F0A94()
{
  result = qword_27F422D60;
  if (!qword_27F422D60)
  {
    sub_2511C8A48(255, &qword_27F422D58, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422D60);
  }

  return result;
}

void sub_2511F0AFC()
{
  *(v0 + qword_280B19820) = MEMORY[0x277D84F90];
  *(v0 + qword_280B19830) = 0x4024000000000000;
  *(v0 + qword_280B19808) = 0x403B000000000000;
  sub_251211C4C();
  __break(1u);
}

void sub_2511F0B94()
{
  sub_2511F0164();
  v1 = objc_opt_self();
  v2 = [v1 systemFillColor];
  [v2 set];

  [v0 bounds];
  [v0 trackRectForBounds_];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v0 bounds];
  [v0 trackRectForBounds_];
  v11 = CGRectGetHeight(v44) * 0.5;
  v12 = [objc_opt_self() bezierPathWithRoundedRect:v4 cornerRadius:{v6, v8, v10, v11}];
  [v12 fill];

  v13 = [v1 systemGray4Color];
  [v13 set];

  v14 = sub_2511EE3B4();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v14 + 56);
    while (v17 < *(v15 + 16))
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v22 = *(v18 - 3);
      v21 = *(v18 - 2);
      [v0 maximumValue];
      v24 = sub_2511F0368((v23 / (*(*&v0[qword_280B19818] + 16) - 1)) * v17);
      if (v17)
      {
        v25 = v24;
      }

      else
      {
        v26 = *&v0[qword_280B19810];
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x25306DBD0](0, v24);
        }

        else
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v27 = *(v26 + 32);
        }

        v28 = v27;
        [v27 bounds];
        v30 = v29;

        v25 = v30 * 0.5;
      }

      [v0 maximumValue];
      if ((LODWORD(v31) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        goto LABEL_30;
      }

      if (v31 <= -9.2234e18)
      {
        goto LABEL_31;
      }

      if (v31 >= 9.2234e18)
      {
        goto LABEL_32;
      }

      if (v17 == v31)
      {
        [v0 bounds];
        [v0 trackRectForBounds_];
        v33 = v32;
        v34 = *&v0[qword_280B19810];
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x25306DBD0](v17);
        }

        else
        {
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v17)
          {
            goto LABEL_34;
          }

          v35 = *(v34 + 8 * v17 + 32);
        }

        v36 = v35;
        [v35 bounds];
        v38 = v37;

        v25 = v33 + v38 * -0.5;
      }

      v39 = *&v0[qword_280B19820];
      if ((v39 & 0xC000000000000001) != 0)
      {

        v40 = MEMORY[0x25306DBD0](v17, v39);
      }

      else
      {
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v17)
        {
          goto LABEL_33;
        }

        v40 = *(v39 + 8 * v17 + 32);
      }

      ++v17;
      [v40 setConstant_];

      v45.origin.x = v22;
      v45.origin.y = v21;
      v45.size.width = v20;
      v45.size.height = v19;
      v41 = CGRectGetWidth(v45) * 0.5;
      v42 = [objc_opt_self() bezierPathWithRoundedRect:v22 cornerRadius:{v21, v20, v19, v41}];
      [v42 fill];

      v18 += 4;
      if (v16 == v17)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_26:
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2511F104C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2511F106C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2511F10E8()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F4256E0);
  __swift_project_value_buffer(v0, qword_27F4256E0);
  return sub_25121143C();
}

uint64_t sub_2511F1160()
{
  if (qword_27F423EB0 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F4256E0);
}

uint64_t sub_2511F11C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F423EB0 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F4256E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2511F1278(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 6516321;
  v3 = 0x726170736E617274;
  if (a1 != 3)
  {
    v3 = 0x636E416F747561;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 6710895;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2511F1318(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 6710895;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 6516321;
  }

  else if (a1 == 3)
  {
    v3 = 0x726170736E617274;
    v4 = 0xEC00000079636E61;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x636E416F747561;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6710895;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x726170736E617274;
    v6 = 0xEC00000079636E61;
    if (a2 != 3)
    {
      v5 = 0x636E416F747561;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 6516321;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_251211CCC();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2511F1494()
{
  sub_251211D1C();
  sub_2512117FC();

  return sub_251211D3C();
}

uint64_t sub_2511F1570(uint64_t a1)
{
  sub_2512117FC();
}

uint64_t sub_2511F1638(uint64_t a1)
{
  sub_251211D1C();
  sub_2512117FC();

  return sub_251211D3C();
}

unint64_t sub_2511F1710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2511F2C30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2511F1740(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE300000000000000;
  v6 = 6516321;
  v7 = 0xEC00000079636E61;
  v8 = 0x726170736E617274;
  if (v2 != 3)
  {
    v8 = 0x636E416F747561;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6710895;
    v3 = 0xE300000000000000;
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

char *sub_2511F17D8(int64_t a1)
{
  v2 = *(sub_2511F191C() + 2);

  if (v2 > a1)
  {
    result = sub_2511F191C();
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(result + 2) > a1)
      {
        v4 = &result[4 * a1 + 32];
LABEL_10:
        v9 = *v4;

        return v9;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (qword_27F423EB0 != -1)
  {
LABEL_12:
    swift_once();
  }

  v5 = sub_25121144C();
  __swift_project_value_buffer(v5, qword_27F4256E0);
  v6 = sub_25121142C();
  v7 = sub_25121196C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251143000, v6, v7, "_modeForIndex: Index out of bounds!", v8, 2u);
    MEMORY[0x25306E960](v8, -1, -1);
  }

  result = sub_2511F191C();
  if (*(result + 2))
  {
    v4 = result + 32;
    goto LABEL_10;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void *sub_2511F191C()
{
  v1 = [v0 autoANCSupported];
  v2 = [v0 modeOffSupported];
  v3 = &unk_286339328;
  if (v2)
  {
    v3 = &unk_2863392F8;
  }

  v4 = &unk_286339388;
  if (v2)
  {
    v4 = &unk_286339358;
  }

  if (v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (qword_27F423EB0 != -1)
  {
    swift_once();
  }

  v6 = sub_25121144C();
  __swift_project_value_buffer(v6, qword_27F4256E0);
  v7 = v0;

  v8 = sub_25121142C();
  v9 = sub_25121197C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 67109634;
    *(v10 + 4) = [v7 autoANCSupported];
    *(v10 + 8) = 1024;
    *(v10 + 10) = [v7 modeOffSupported];

    *(v10 + 14) = 2080;
    type metadata accessor for BTAccessoryListeningMode(0);
    v13 = MEMORY[0x25306D890](v5, v12);
    v15 = v14;

    v16 = sub_2511CBE4C(v13, v15, &v18);

    *(v10 + 16) = v16;
    _os_log_impl(&dword_251143000, v8, v9, "validModes: autoANCSupported: %{BOOL}d, modeOffSupported:%{BOOL}d, modes:%s", v10, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25306E960](v11, -1, -1);
    MEMORY[0x25306E960](v10, -1, -1);
  }

  else
  {
  }

  return v5;
}

uint64_t sub_2511F1B80(int a1)
{
  v2 = sub_2511F191C();
  v3 = v2[2];
  if (v3)
  {
    v4 = 0;
    while (*(v2 + v4 + 8) != a1)
    {
      if (v3 == ++v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    if (qword_27F423EB0 != -1)
    {
      swift_once();
    }

    v5 = sub_25121144C();
    __swift_project_value_buffer(v5, qword_27F4256E0);
    v6 = sub_25121142C();
    v7 = sub_25121196C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_251143000, v6, v7, "_indexForMode: No valid index found", v8, 2u);
      MEMORY[0x25306E960](v8, -1, -1);
    }

    return 0;
  }

  return v4;
}

void sub_2511F1CD8(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D90, &qword_251219370);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422D98, &qword_251219378);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = sub_2511F226C();
  if (v12)
  {
    if (!*(v12 + 16))
    {

      if (!a1)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    sub_2511CC6F4(0x726576726573624FLL, 0xE800000000000000);
    v14 = v13;

    if (v14)
    {
      return;
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_7:
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    swift_unknownObjectRetain();
    v17 = [v16 headphoneDevice];
    if (v17)
    {
      v18 = v17;
      v33 = a1;
      sub_2511F226C();
      v31 = sub_25121156C();
      v19 = sub_25121171C();

      swift_beginAccess();
      objc_setAssociatedObject(v2, &byte_27F4256F8, v19, 1);
      swift_endAccess();

      v32 = sub_251210F8C();
      sub_2512110DC();
      v20 = v9;
      v21 = sub_251210F3C();
      (*(v5 + 8))(v7, v4);
      v34 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422DA0, &qword_251219380);
      sub_2511C6790(&qword_27F422DA8, &qword_27F422DA0, &qword_251219380, MEMORY[0x277CBCD90]);
      sub_2511F2C90();
      sub_25121166C();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_2511C6790(&qword_27F422DB8, &qword_27F422D98, &qword_251219378, MEMORY[0x277CBCBE0]);
      v22 = sub_25121167C();

      (*(v20 + 8))(v11, v8);
      v23 = sub_2511F226C();
      if (v23)
      {
        v24 = v23;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v24;
        sub_2511F2944(v22, 0x726576726573624FLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
        if (v34)
        {
          v26 = sub_25121171C();
        }

        else
        {
          v26 = 0;
        }

        swift_beginAccess();
        objc_setAssociatedObject(v2, &byte_27F4256F8, v26, 1);
        swift_endAccess();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }

      return;
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
  if (qword_27F423EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_25121144C();
  __swift_project_value_buffer(v27, qword_27F4256E0);
  v33 = sub_25121142C();
  v28 = sub_25121196C();
  if (os_log_type_enabled(v33, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_251143000, v33, v28, "startObservingOffModeChanges: Precondition not meet no record!", v29, 2u);
    MEMORY[0x25306E960](v29, -1, -1);
  }

  v30 = v33;
}

uint64_t sub_2511F226C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &byte_27F4256F8);
  swift_endAccess();
  if (v1)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422DE0, qword_251219570);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2511E7DB4(v6);
  }

  return 0;
}

BOOL sub_2511F23B4(void *a1)
{
  v2 = *(sub_2511F191C() + 2);

  v3 = [a1 numberOfSegments];
  if (qword_27F423EB0 != -1)
  {
    swift_once();
  }

  v4 = sub_25121144C();
  __swift_project_value_buffer(v4, qword_27F4256E0);
  v5 = sub_25121142C();
  v6 = sub_25121197C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v2 != v3;
    _os_log_impl(&dword_251143000, v5, v6, "needsResetUI: %{BOOL}d", v7, 8u);
    MEMORY[0x25306E960](v7, -1, -1);
  }

  return v2 != v3;
}

uint64_t sub_2511F2578(char a1)
{
  result = swift_beginAccess();
  byte_27F4256F8 = a1;
  return result;
}

uint64_t sub_2511F269C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422DD8, &unk_251219560);
  v34 = v4;
  result = sub_251211C7C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_251211D1C();
      sub_2512117FC();
      result = sub_251211D3C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2511F2944(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2511CC6F4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2511F269C(v16, a4 & 1);
      v11 = sub_2511CC6F4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_251211CFC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2511F2AC0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_2511F2AC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422DD8, &unk_251219560);
  v2 = *v0;
  v3 = sub_251211C6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}