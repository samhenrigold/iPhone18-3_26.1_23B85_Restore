id sub_24E2216C8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for GKDashboardInviteFriendButtonCollectionViewCell();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_displayBackground;
  swift_beginAccess();
  v2 = v0[v1];
  v3 = [v0 contentView];
  v4 = objc_opt_self();
  if (v2 == 1)
  {
    v5 = [v4 labelColor];
    v6 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v6 = [v4 clearColor];
  }

  [v3 setBackgroundColor_];

  swift_beginAccess();
  v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_separator];
  [v0 bounds];
  [v0 bounds];
  sub_24E3484F8();
  [v7 setFrame_];
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_label];
  [v0 bounds];
  sub_24E3484F8();
  return [v8 setFrame_];
}

void sub_24E221918(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  v5 = sub_24DFD29F8(1937075312, 0xE400000000000000);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 imageWithTintColor_];
  }

  else
  {
    v7 = 0;
  }

  [v4 setImage_];

  sub_24DF88A8C(0, &qword_27F1E2410, 0x277CCAB48);
  v15 = sub_24E079130();
  v8 = [objc_opt_self() attributedStringWithAttachment_];
  [v15 appendAttributedString_];

  sub_24DF88A8C(0, &qword_27F1E2418, 0x277CCA898);
  v9 = sub_24E079130();
  [v15 appendAttributedString_];

  v10 = sub_24E347CB8();
  v11 = GKGameCenterUIFrameworkBundle();
  v12 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  v13 = sub_24E079130();
  [v15 appendAttributedString_];

  v14 = *(v2 + OBJC_IVAR____TtC12GameCenterUI47GKDashboardInviteFriendButtonCollectionViewCell_label);
  [v14 setAttributedText_];
  [v14 setTextColor_];
}

id GKDashboardInviteFriendButtonCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKDashboardInviteFriendButtonCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_24E221DDC(uint64_t a1, uint64_t a2)
{
  v2 = 16.0;
  if ((GKIsXRUIIdiomShouldUsePadUI() & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = [v3 currentTraitCollection];
    v5 = [v4 verticalSizeClass];

    if (v5 != 2 || (v6 = [v3 currentTraitCollection], v7 = objc_msgSend(v6, sel_horizontalSizeClass), v6, v2 = 7.0, v7 != 2))
    {
      v8 = [v3 currentTraitCollection];
      [v8 verticalSizeClass];

      return 10.0;
    }
  }

  return v2;
}

id sub_24E221EC4()
{
  type metadata accessor for WelcomeArtworkView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24DFD8050(0xD000000000000029, 0x800000024E3AE460, v0);
  return v0;
}

id sub_24E221F24()
{
  v0 = [objc_opt_self() boldButton];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  [v2 setActive_];
  v3 = [objc_opt_self() local];
  LOBYTE(v2) = sub_24E1A3090();

  if (v2)
  {
    OUTLINED_FUNCTION_0_152();
  }

  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  v7 = sub_24E347CF8();
  v9 = v8;

  sub_24E2BE6B4(v7, v9, 0, v0);
  sub_24DFD8050(0xD00000000000002FLL, 0x800000024E3AE400, v0);

  return v0;
}

id sub_24E2220FC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___secondaryBarButton;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___secondaryBarButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___secondaryBarButton];
  }

  else
  {
    v4 = sub_24E222160(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_24E222160(void *a1)
{
  swift_getObjectType();
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = a1;
  sub_24E3076B4();
  v7 = v6;
  sub_24DFD8050(0xD000000000000031, 0x800000024E3AE490, v6);
  return v7;
}

id sub_24E222278()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___artworkHeight;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___artworkHeight);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___artworkHeight);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_welcomeArtworkView) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    [v5 setActive_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_24E222334()
{
  sub_24DF88A8C(0, &qword_27F1DFF00, 0x277D755E8);
  v0 = sub_24E15BC0C(0xD000000000000010, 0x800000024E3AE3E0, 0xD000000000000022, 0x800000024E3A9510);
  [v0 setContentMode_];
  v1 = [v0 heightAnchor];
  v2 = [v1 constraintEqualToConstant_];

  [v2 setActive_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];

  return v0;
}

id sub_24E22243C()
{
  sub_24E343AA8();
  v0 = sub_24E343868();
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setNumberOfLines_];
  sub_24DFA0B40(v0, v2, v3);
  type metadata accessor for OnboardingTemplateView();
  if (sub_24E324668())
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  [v3 setTextAlignment_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v6 setLayoutMarginsRelativeArrangement_];
  [v6 addArrangedSubview_];
  sub_24DFD8050(0xD000000000000036, 0x800000024E3AE3A0, v6);

  return v6;
}

id sub_24E2225AC()
{
  v0 = [objc_opt_self() tintColor];
  sub_24DF88A8C(0, &qword_280BE0110, 0x277D755B8);
  v1 = sub_24DFD29F8(0xD000000000000017, 0x800000024E3AE240);
  v2 = v1;
  v45 = v0;
  if (v1)
  {
    v3 = [v1 imageWithRenderingMode_];

    v4 = [objc_opt_self() configurationWithHierarchicalColor_];
    v2 = [v3 imageWithSymbolConfiguration_];

    if (v2)
    {
      sub_24DFD8050(0xD00000000000002DLL, 0x800000024E3AE370, v2);
    }
  }

  v44 = v2;
  v5 = sub_24E347CB8();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();

  v8 = sub_24E347CF8();
  v10 = v9;

  v11 = sub_24E347CB8();
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();

  v14 = sub_24E347CF8();
  v16 = v15;

  v17 = type metadata accessor for Bullet();
  v18 = objc_allocWithZone(v17);
  v19 = sub_24E2240EC(v2, v8, v10, v14, v16);
  v20 = sub_24DFD29F8(0xD000000000000019, 0x800000024E3AE2C0);
  v21 = v20;
  if (v20)
  {
    v22 = [v20 imageWithRenderingMode_];

    v23 = [objc_opt_self() configurationWithHierarchicalColor_];
    v21 = [v22 imageWithSymbolConfiguration_];

    if (v21)
    {
      sub_24DFD8050(0xD00000000000002DLL, 0x800000024E3AE340, v21);
    }
  }

  v24 = v21;
  v25 = sub_24E347CB8();
  v26 = GKGameCenterUIFrameworkBundle();
  v27 = GKGetLocalizedStringFromTableInBundle();

  v28 = sub_24E347CF8();
  v30 = v29;

  v31 = sub_24E347CB8();
  v32 = GKGameCenterUIFrameworkBundle();
  v33 = GKGetLocalizedStringFromTableInBundle();

  v34 = sub_24E347CF8();
  v36 = v35;

  v37 = objc_allocWithZone(v17);
  v38 = sub_24E2240EC(v21, v28, v30, v34, v36);
  sub_24DF88A8C(0, &qword_27F1E8138, 0x277D75A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24E36BFC0;
  *(v39 + 32) = v19;
  *(v39 + 40) = v38;
  v40 = v19;
  v41 = v38;
  v42 = sub_24E222A6C(v39);
  [v42 setAxis_];
  [v42 setLayoutMarginsRelativeArrangement_];

  return v42;
}

id sub_24E222A6C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
  v2 = sub_24E347EE8();

  v3 = [v1 initWithArrangedSubviews_];

  return v3;
}

void sub_24E222AF4()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_welcomeArtworkView;
  *(v0 + v1) = sub_24E221EC4();
  v2 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_primaryTrayButton;
  *(v0 + v2) = sub_24E221F24();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___secondaryBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView____lazy_storage___artworkHeight) = 0;
  v3 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_gameCenterIcon;
  *(v0 + v3) = sub_24E222334();
  v4 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_whatsNewSubtitleView;
  *(v0 + v4) = sub_24E22243C();
  v5 = OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_whatsNewBullets;
  *(v0 + v5) = sub_24E2225AC();
  sub_24E348AE8();
  __break(1u);
}

void sub_24E222C1C()
{
  swift_getObjectType();
  v1 = sub_24E324668();
  if (v1)
  {
    v9 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_gameCenterIcon);
    v10 = sub_24E325D8C();
    [v10 addArrangedSubview_];
  }

  sub_24E324958(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, *&v15[0], *&v15[1], *&v15[2], *&v15[3], *&v15[4], *&v15[5], *&v15[6], *&v15[7], *&v15[8], *&v15[9], *&v15[10], *&v15[11], *&v15[12], *&v15[13]);
  v16[0] = xmmword_24E37D430;
  v16[1] = xmmword_24E37D420;
  v16[2] = xmmword_24E37D410;
  v16[3] = xmmword_24E37D400;
  v16[4] = xmmword_24E37D3F0;
  v16[5] = xmmword_24E37D3E0;
  v16[6] = xmmword_24E37D3D0;
  v16[7] = xmmword_24E37D3C0;
  v16[8] = xmmword_24E37D3B0;
  v16[9] = xmmword_24E37D3A0;
  v16[10] = xmmword_24E385ED0;
  v17[0] = xmmword_24E37D560;
  v17[1] = xmmword_24E37D550;
  v17[2] = xmmword_24E37D540;
  v17[3] = xmmword_24E37D530;
  v17[4] = xmmword_24E37D520;
  v17[5] = xmmword_24E37D510;
  v17[6] = xmmword_24E37D470;
  v17[7] = xmmword_24E37D500;
  v17[8] = xmmword_24E37D4F0;
  v17[9] = xmmword_24E37D4E0;
  v17[10] = xmmword_24E385EE0;
  v18[0] = xmmword_24E37D570;
  v18[1] = xmmword_24E37D4C0;
  v18[2] = xmmword_24E37D4B0;
  v18[3] = xmmword_24E37D4A0;
  v18[4] = xmmword_24E37D490;
  v18[5] = xmmword_24E37D480;
  v18[6] = xmmword_24E37D470;
  v18[7] = xmmword_24E37D460;
  v18[8] = xmmword_24E37D450;
  v18[9] = xmmword_24E37D440;
  v18[10] = xmmword_24E385EE0;
  sub_24E2D0A70(v16, v17, v18, v15);
  v11 = v15[0];
  v14 = sub_24E222278();
  [v14 setConstant_];
}

uint64_t sub_24E222FE8(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v2 = [objc_opt_self() local];
  v3 = sub_24E1A3090();

  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_152();

    if ((v4 & 1) == 0)
    {
      v5 = a2;

      return v5();
    }
  }

  else
  {
  }

  v5 = a1;

  return v5();
}

uint64_t sub_24E2231EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  [*&v0[OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_primaryTrayButton] setEnabled_];
  v5 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_24E348068();
  v6 = v0;
  v7 = sub_24E348058();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_24DFC8700(0, 0, v4, &unk_24E385F38, v8);
}

uint64_t sub_24E223308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24E348068();
  v4[3] = sub_24E348058();
  v6 = sub_24E347FF8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24E2233A0, v6, v5);
}

uint64_t sub_24E2233A0()
{
  OUTLINED_FUNCTION_9_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24E22349C;

    return sub_24E19FF10();
  }

  else
  {

    [*(v0[2] + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_primaryTrayButton) setEnabled_];
    OUTLINED_FUNCTION_12_5();

    return v4();
  }
}

uint64_t sub_24E22349C()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v4 = v3;

  v5 = *(v1 + 40);
  v6 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24E2235D0, v6, v5);
}

uint64_t sub_24E2235D0()
{
  OUTLINED_FUNCTION_9_7();

  [*(*(v0 + 16) + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_primaryTrayButton) setEnabled_];
  OUTLINED_FUNCTION_12_5();

  return v1();
}

void sub_24E223690()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24E1A324C();
  }

  sub_24DF88A8C(0, &qword_27F1DFB28, 0x277D75110);
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  v5 = sub_24E347CF8();
  v7 = v6;

  v8 = sub_24E347CB8();
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();

  v11 = sub_24E347CF8();
  v13 = v12;

  v14 = sub_24E3191B4(v5, v7, v11, v13, 1);
  sub_24DF88A8C(0, &qword_27F1E2900, 0x277D750F8);
  v15 = sub_24E347CB8();
  v16 = GKGameCenterUIFrameworkBundle();
  v17 = GKGetLocalizedStringFromTableInBundle();

  v18 = sub_24E347CF8();
  v20 = v19;

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_24E3190AC(v18, v20, 2, sub_24E224A9C, v21);
  v23 = sub_24E347CB8();
  v24 = GKGameCenterUIFrameworkBundle();
  v25 = GKGetLocalizedStringFromTableInBundle();

  v26 = sub_24E347CF8();
  v28 = v27;

  v31 = sub_24E3190AC(v26, v28, 0, sub_24E223E7C, 0);
  [v14 addAction_];
  [v14 addAction_];
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    [v29 presentViewController:v14 animated:1 completion:0];
  }
}

uint64_t sub_24E2239D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v7 = sub_24E347CF8();
  v9 = v8;
  v10 = sub_24E347CF8();
  sub_24E08FD58(v7, v9, v10, v11, v6);

  v12 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  sub_24E348068();

  v13 = sub_24E348058();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a2;
  sub_24DFC8C08(0, 0, v5, &unk_24E385F28, v14);
}

uint64_t sub_24E223B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_24E348068();
  v4[7] = sub_24E348058();
  v6 = sub_24E347FF8();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_24E223BD8, v6, v5);
}

uint64_t sub_24E223BD8()
{
  OUTLINED_FUNCTION_9_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), *(v0 + 80) = v3, v2, v3))
  {
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_24E223CE8;

    return sub_24E1A2844();
  }

  else
  {

    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_12_5();

    return v6();
  }
}

uint64_t sub_24E223CE8()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v4 = v3;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24E223E1C, v6, v5);
}

uint64_t sub_24E223E1C()
{
  OUTLINED_FUNCTION_9_7();

  **(v0 + 40) = 0;
  OUTLINED_FUNCTION_12_5();

  return v1();
}

void sub_24E223E7C()
{
  v5 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v0 = sub_24E347CF8();
  v2 = v1;
  v3 = sub_24E347CF8();
  sub_24E08FD58(v0, v2, v3, v4, v5);
}

void sub_24E223F58()
{
  sub_24DE73F0C(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21WelcomeOnboardingView_whatsNewBullets);
}

char *sub_24E2240EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a4;
  *&v68 = a5;
  v65 = a2;
  v66 = a3;
  v70 = a1;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v64 - v8;
  v10 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_titleLabel;
  v64 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_titleLabel;
  v11 = *MEMORY[0x277D769D0];
  *v9 = *MEMORY[0x277D769D0];
  *(v9 + 2) = 2;
  v12 = *MEMORY[0x277D22680];
  v13 = sub_24E344158();
  v14 = *(*(v13 - 8) + 104);
  v14(v9, v12, v13);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v15 = type metadata accessor for DynamicTypeLabel(0);
  v16 = objc_allocWithZone(v15);
  v17 = v11;
  *&v5[v10] = sub_24E0AEF24(v9, 0, 0, 0, 1, 0);
  v18 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_subtitleLabel;
  *v9 = v17;
  *(v9 + 2) = 0;
  v14(v9, v12, v13);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v19 = objc_allocWithZone(v15);
  *&v5[v18] = sub_24E0AEF24(v9, 0, 0, 0, 1, 0);
  v20 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v21 = [v20 initWithImage_];
  v22 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_iconView;
  *&v5[OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_iconView] = v21;
  [v21 setContentMode_];
  v23 = *&v5[v22];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 tintColor];
  [v25 setTintColor_];

  v27 = [*&v6[v22] widthAnchor];
  v28 = [v27 constraintEqualToConstant_];

  [v28 setActive_];
  [*&v6[v22] setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = v64;
  sub_24DFA0B40(v65, v66, *&v6[v64]);
  sub_24DFA0B40(v67, v68, *&v6[v18]);
  sub_24DF88A8C(0, &qword_27F1E8138, 0x277D75A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v30 = swift_allocObject();
  v68 = xmmword_24E36BFC0;
  *(v30 + 16) = xmmword_24E36BFC0;
  v31 = *&v6[v29];
  v32 = *&v6[v18];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  v33 = v31;
  v34 = v32;
  v35 = sub_24E222A6C(v30);
  v36 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_textStackView;
  *&v6[OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_textStackView] = v35;
  [v35 setAxis_];
  [*&v6[v36] setDistribution_];
  [*&v6[v36] setAlignment_];
  v37 = swift_allocObject();
  *(v37 + 16) = v68;
  v38 = *&v6[v22];
  v39 = *&v6[v36];
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = v38;
  v41 = v39;
  v42 = sub_24E222A6C(v37);
  v43 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_mainStackView;
  *&v6[OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_mainStackView] = v42;
  [v42 setAxis_];
  [*&v6[v43] setSpacing_];
  [*&v6[v43] setTranslatesAutoresizingMaskIntoConstraints_];
  v71.receiver = v6;
  v71.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v71, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v45 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_mainStackView;
  v46 = *&v44[OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_mainStackView];
  v47 = v44;
  [v47 addSubview_];
  v48 = objc_opt_self();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_24E36D5F0;
  v50 = [*&v44[v45] centerXAnchor];
  v51 = [v47 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v49 + 32) = v52;
  v53 = [*&v44[v45] centerYAnchor];
  v54 = [v47 centerYAnchor];

  v55 = [v53 constraintEqualToAnchor_];
  *(v49 + 40) = v55;
  v56 = [*&v44[v45] widthAnchor];
  v57 = [v47 widthAnchor];

  v58 = [v56 constraintEqualToAnchor_];
  *(v49 + 48) = v58;
  v59 = [*&v44[v45] heightAnchor];
  v60 = [v47 heightAnchor];

  v61 = [v59 constraintEqualToAnchor_];
  *(v49 + 56) = v61;
  sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
  v62 = sub_24E347EE8();

  [v48 activateConstraints_];

  return v47;
}

void sub_24E224760()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v20 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_titleLabel;
  v8 = *MEMORY[0x277D769D0];
  *v7 = *MEMORY[0x277D769D0];
  *(v7 + 2) = 2;
  v9 = *MEMORY[0x277D22680];
  v10 = sub_24E344158();
  v11 = *(*(v10 - 8) + 104);
  v11(v7, v9, v10);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  v12 = type metadata accessor for DynamicTypeLabel(0);
  v13 = objc_allocWithZone(v12);
  v14 = v8;
  v15 = sub_24E0AEF24(v7, 0, 0, 0, 1, 0);
  *(v1 + v20) = v15;
  v16 = OBJC_IVAR____TtC12GameCenterUIP33_77E2C0FF35C92BF2BDB0FAEFD7D57C4E6Bullet_subtitleLabel;
  *v4 = v14;
  *(v4 + 2) = 0;
  v11(v4, v9, v10);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v10);
  v17 = objc_allocWithZone(v12);
  v18 = v14;
  *(v1 + v16) = sub_24E0AEF24(v4, 0, 0, 0, 1, 0);
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E224AA4()
{
  OUTLINED_FUNCTION_8_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_21(v1);

  return sub_24E223B40(v2, v3, v4, v5);
}

uint64_t sub_24E224B40()
{
  OUTLINED_FUNCTION_8_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_21(v1);

  return sub_24E223308(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_0_152()
{

  return sub_24E348C08();
}

id sub_24E224C20(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DashboardSidebarCollectionViewCell(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 set:20.0 gkFocusHighlightCornerRadius:?];
  return v9;
}

uint64_t sub_24E224D38(void *a1)
{
  v1 = a1;
  v2 = sub_24E224E50(&selRef_isHighlighted);

  return v2 & 1;
}

void sub_24E224D80(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_24E224F18(v3, &selRef_setHighlighted_, &selRef_isHighlighted, &qword_27F1E2970);
}

uint64_t sub_24E224E08(void *a1)
{
  v1 = a1;
  v2 = sub_24E224E50(&selRef_isSelected);

  return v2 & 1;
}

id sub_24E224E50(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DashboardSidebarCollectionViewCell(0);
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_24E224E90(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_24E224F18(v3, &selRef_setSelected_, &selRef_isSelected, &qword_27F1E2968);
}

id sub_24E224F18(char a1, SEL *a2, SEL *a3, void *a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DashboardSidebarCollectionViewCell(0);
  objc_msgSendSuper2(&v10, *a2, a1 & 1);
  return sub_24E224F84(a3, a4);
}

id sub_24E224F84(SEL *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[qword_280BE0C10];
  *(v4 + *a2) = [v3 *a1];
  return sub_24E0914C0();
}

double sub_24E224FD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a4;
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v30 = v7;
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058, &unk_24E36F980);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Shelf.Presentation(0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - v20;
  sub_24DF8BD90(a2, &v28 - v20, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8BD90(a3, &v21[*(v19 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  sub_24DF8BD90(v17, v13, &qword_27F1DF058, &unk_24E36F980);
  sub_24E225D54(v17, type metadata accessor for Shelf.Presentation);
  v22 = type metadata accessor for HeaderData(0);
  LODWORD(v19) = __swift_getEnumTagSinglePayload(v13, 1, v22);
  sub_24DF8BFF4(v13, &qword_27F1DF058, &unk_24E36F980);
  if (v19 == 1)
  {
    if (qword_27F1DDC40 != -1)
    {
      swift_once();
    }

    v23 = sub_24E3444F8();
    __swift_project_value_buffer(v23, qword_27F20B4D0);
    v24 = [v29 traitCollection];
    sub_24E343F98();
    sub_24E3444C8();
    v26 = v25;

    (*(v30 + 8))(v10, v31);
  }

  else
  {
    v26 = *MEMORY[0x277D768C8];
  }

  sub_24DF8BFF4(v21, &unk_27F1E1CA0, &unk_24E36C0D0);
  return v26;
}

id sub_24E225338(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for DashboardSidebarItemData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = (v6 - v5);
  v8 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  if (qword_27F1DDC50 != -1)
  {
LABEL_14:
    swift_once();
  }

  v15 = sub_24E3444F8();
  __swift_project_value_buffer(v15, qword_27F20B500);
  v16 = [a3 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v18 = v17;

  (*(v10 + 8))(v14, v8);
  v8 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  v19 = 0;
  v43 = *&v47[0] + 32;
  v44 = *&v47[0];
  v20 = *(*&v47[0] + 16);
  v21 = 0.0;
  while (1)
  {
    v22 = 0uLL;
    v10 = v20;
    v23 = 0uLL;
    v24 = 0uLL;
    if (v19 != v20)
    {
      if (v19 >= *(v44 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v10 = v19 + 1;
      *&v46[0] = v19;
      sub_24DF89628(v43 + 40 * v19, v46 + 8);
      v22 = v46[0];
      v23 = v46[1];
      v24 = v46[2];
    }

    v47[0] = v22;
    v47[1] = v23;
    v47[2] = v24;
    if (!v24)
    {
      break;
    }

    v45 = v22;
    sub_24DE56CE8((v47 + 8), v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
    swift_dynamicCast();
    type metadata accessor for DashboardSidebarCellView(0);
    [objc_msgSend(a3 container)];
    swift_unknownObjectRelease();
    sub_24E091720(v7, a3);
    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v27 fractionalWidthDimension_];
    v29 = [v27 absoluteDimension_];
    v30 = [objc_opt_self() sizeWithWidthDimension:v28 heightDimension:v29];

    v31 = [objc_opt_self() itemWithLayoutSize_];
    MEMORY[0x25303EA30]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24E347F48();
    }

    v21 = v21 + v26;
    sub_24E347F88();
    v8 = v48;
    swift_getKeyPath();
    sub_24E347128();

    v32 = *(*&v46[0] + 16);

    if (v45 < v32 - 1)
    {
      v21 = v18 + v21;
    }

    sub_24E225D54(v7, type metadata accessor for DashboardSidebarItemData);
    v19 = v10;
  }

  v33 = objc_opt_self();
  v34 = [v33 fractionalWidthDimension_];
  v35 = [v33 absoluteDimension_];
  v36 = [objc_opt_self() sizeWithWidthDimension:v34 heightDimension:v35];

  v37 = objc_opt_self();
  sub_24E1698C0();
  v38 = sub_24E347EE8();

  v39 = [v37 verticalGroupWithLayoutSize:v36 subitems:v38];

  v40 = [objc_opt_self() fixedSpacing_];
  [v39 setInterItemSpacing_];

  v41 = [objc_opt_self() sectionWithGroup_];
  return v41;
}

double sub_24E225910@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  sub_24DF8BD90(a1, v18 - v10, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8BD90(a2, &v11[*(v9 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  *a4 = [objc_opt_self() clearColor];
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 33) = 0u;
  *(a4 + 56) = -1;
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v12, qword_27F20BF00);
  v13 = [a3 traitCollection];
  sub_24E33670C(v13, v18);

  v14 = v18[1];
  *(a4 + 64) = v18[0];
  *(a4 + 80) = v14;
  *(a4 + 96) = v19;
  v15 = [a3 traitCollection];
  sub_24E33670C(v15, v20);

  sub_24DF8BFF4(v11, &unk_27F1E1CA0, &unk_24E36C0D0);
  result = *v20;
  v17 = v20[1];
  *(a4 + 104) = v20[0];
  *(a4 + 120) = v17;
  *(a4 + 136) = v21;
  return result;
}

id sub_24E225AF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardSidebarCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DashboardSidebarCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E8140;
  if (!qword_27F1E8140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E225BCC(uint64_t a1)
{
  result = sub_24E225D0C(&unk_27F1E8150, type metadata accessor for DashboardSidebarCollectionViewCell, &unk_24E385F74);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E225CB4(uint64_t a1)
{
  result = sub_24E225D0C(&qword_27F1E6498, type metadata accessor for DashboardSidebarCollectionViewCell, &unk_24E385FA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E225D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E225D54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_24E225DAC(void *a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24E36BFC0;
  sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
  sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
  v8 = a1;
  v9 = v3;
  OUTLINED_FUNCTION_0_153();
  *(v7 + 32) = sub_24E225F14(v10, 9, 0, v11, 9, 1.0, a2);
  v12 = v8;
  v13 = v3;
  OUTLINED_FUNCTION_0_153();
  *(v7 + 40) = sub_24E225F14(v14, 10, 0, v15, 10, 1.0, a3);
  v16 = sub_24E347EE8();

  [v3 addConstraints_];
}

id sub_24E225F14(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_24E348BE8();
  v15 = a4[3];
  if (v15)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v25 = a5;
    v26 = a2;
    v17 = a3;
    v18 = *(v15 - 8);
    v19 = MEMORY[0x28223BE20](v16);
    v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_24E348BE8();
    (*(v18 + 8))(v21, v15);
    a3 = v17;
    a5 = v25;
    a2 = v26;
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v22 = 0;
  }

  v23 = [swift_getObjCClassFromMetadata() constraintWithItem:v14 attribute:a2 relatedBy:a3 toItem:v22 attribute:a5 multiplier:a6 constant:a7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v23;
}

void sub_24E2260F0(void *a1, uint64_t a2, double a3, double a4)
{
  sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
  sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
  v9 = a1;
  v10 = v4;
  OUTLINED_FUNCTION_0_153();
  v13 = sub_24E225F14(v11, a2, 0, v12, a2, a4, a3);
  [a1 addConstraint_];
}

double sub_24E2261D8(uint64_t a1)
{
  if (a1)
  {
    v1 = swift_unknownObjectRetain();
    sub_24E010D5C(v1);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_24E226244(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI26ScrollViewDelegateObserver_compoundScrollObserver);
    swift_beginAccess();
    v7 = *(v5 + 16);
    v8 = (v7 + 32);
    v9 = *(v7 + 16) + 1;
    while (--v9)
    {
      v10 = *v8;
      v8 += 2;
      if (v10 == a1)
      {
        return result;
      }
    }

    v11 = swift_unknownObjectRetain();
    sub_24E010CB0(v11, a2);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_24E22667C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC12GameCenterUI26ScrollViewDelegateObserver_compoundScrollObserver;
  type metadata accessor for CompoundScrollObserver();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_24E226770(uint64_t a1)
{
  sub_24E345238();
  OUTLINED_FUNCTION_0_14();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24E345898();
}

uint64_t sub_24E22682C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E345B68();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlayerGroupView(0);
  sub_24DFAE87C(v1 + *(v10 + 28), v9, &qword_27F1E0FD0, &qword_24E382C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24E347B98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24E348268();
    v13 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24E226A34()
{
  v1 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + *(type metadata accessor for PlayerGroupView(0) + 36));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_24E348268();
  v10 = sub_24E346198();
  sub_24E343EA8();

  sub_24E345B58();
  swift_getAtKeyPath();
  sub_24DE73F34(v8, 0);
  (*(v3 + 8))(v6, v1);
  return *&v11[1];
}

uint64_t PlayerGroupView.init(images:backgroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for PlayerGroupView(0);
  v7 = v6[7];
  *&a3[v7] = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
  OUTLINED_FUNCTION_3_100(v8);
  v9 = v6[8];
  *&a3[v9] = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  OUTLINED_FUNCTION_3_100(v10);
  v11 = &a3[v6[9]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v6[10];
  type metadata accessor for ArtworkLoader();
  *&a3[v12] = sub_24E2002B8(100);
  *&a3[v6[11]] = 7;
  *a3 = a1;
  *(a3 + 1) = a2;
  v13 = v6[6];
  v14 = *MEMORY[0x277CE13D8];
  sub_24E346E88();
  OUTLINED_FUNCTION_5_2();
  v16 = *(v15 + 104);

  return v16(&a3[v13], v14);
}

uint64_t type metadata accessor for PlayerGroupView(uint64_t a1)
{
  result = qword_27F1E8168;
  if (!qword_27F1E8168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayerGroupView.init(images:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PlayerGroupView(0);
  v5 = v4[7];
  *&a2[v5] = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
  OUTLINED_FUNCTION_3_100(v6);
  v7 = v4[8];
  *&a2[v7] = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  OUTLINED_FUNCTION_3_100(v8);
  v9 = &a2[v4[9]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v4[10];
  type metadata accessor for ArtworkLoader();
  *&a2[v10] = sub_24E2002B8(100);
  *&a2[v4[11]] = 7;
  *a2 = a1;
  v11 = [objc_opt_self() quaternaryLabelColor];
  *(a2 + 1) = sub_24E346948();
  v12 = v4[6];
  v13 = *MEMORY[0x277CE13D8];
  sub_24E346E88();
  OUTLINED_FUNCTION_5_2();
  v15 = *(v14 + 104);

  return v15(&a2[v12], v13);
}

uint64_t PlayerGroupView.init(images:backgroundColor:backgroundBlendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for PlayerGroupView(0);
  v9 = v8[7];
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
  swift_storeEnumTagMultiPayload();
  v10 = v8[8];
  *&a4[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  swift_storeEnumTagMultiPayload();
  v11 = &a4[v8[9]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v8[10];
  type metadata accessor for ArtworkLoader();
  *&a4[v12] = sub_24E2002B8(100);
  *&a4[v8[11]] = 7;
  *a4 = a1;
  *(a4 + 1) = a2;
  v13 = v8[6];
  sub_24E346E88();
  OUTLINED_FUNCTION_5_2();
  v15 = *(v14 + 32);

  return v15(&a4[v13], a3);
}

void *sub_24E226FA8()
{
  v1 = *(*v0 + 16);
  v2 = *(v0 + *(type metadata accessor for PlayerGroupView(0) + 44));
  if (v2 >= v1)
  {
    v2 = v1;
  }

  v3 = v2 - 2;
  if (v3 > 5)
  {
    return &unk_286111C30;
  }

  else
  {
    return *(&off_27966E0D0 + v3);
  }
}

uint64_t sub_24E227008@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v39 = a2;
  v8 = type metadata accessor for PlayerGroupView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = type metadata accessor for AsyncArtworkImageView(0);
  MEMORY[0x28223BE20](v38);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8228, &qword_24E3861F0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for ArtworkImageView(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(a1 + 32);
  v19 = a1[1];
  v41 = *a1;
  v42 = v19;
  if (v43)
  {
    sub_24E228C60(v4, &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayerGroupView);
    v20 = (*(v9 + 80) + 72) & ~*(v9 + 80);
    v21 = swift_allocObject();
    v22 = v42;
    *(v21 + 16) = v41;
    *(v21 + 32) = v22;
    *(v21 + 48) = v43;
    *(v21 + 56) = a3;
    *(v21 + 64) = a4;
    sub_24E22837C(&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v23 = *(v4 + 8);
    v24 = *(v38 + 24);
    sub_24E228C04(&v41, v40);

    sub_24E347BB8();
    v25 = sub_24E347BC8();
    __swift_storeEnumTagSinglePayload(&v12[v24], 0, 1, v25);
    *v12 = sub_24E228B9C;
    *(v12 + 1) = v21;
    v12[16] = 0;
    *(v12 + 3) = v23;
    sub_24E228C60(v12, v15, type metadata accessor for AsyncArtworkImageView);
    swift_storeEnumTagMultiPayload();
    sub_24E228AEC(&qword_27F1E7338, type metadata accessor for ArtworkImageView, &unk_24E381514);
    sub_24E228AEC(&qword_27F1E8218, type metadata accessor for AsyncArtworkImageView, &unk_24E382AE8);
    sub_24E345E38();
    v26 = type metadata accessor for AsyncArtworkImageView;
    v27 = v12;
  }

  else
  {
    v28 = v41;
    v29 = *a1;
    v30 = v16[10];
    v31 = v29;
    sub_24E347BB8();
    v32 = sub_24E347BC8();
    __swift_storeEnumTagSinglePayload(v18 + v30, 0, 1, v32);
    *v18 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
    swift_storeEnumTagMultiPayload();
    v33 = v16[5];
    *(v18 + v33) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FE8, qword_24E36FFB0);
    swift_storeEnumTagMultiPayload();
    v34 = v16[6];
    *(v18 + v34) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
    swift_storeEnumTagMultiPayload();
    *(v18 + v16[7]) = v28;
    *(v18 + v16[8]) = 2;
    v35 = (v18 + v16[9]);
    *v35 = a3;
    v35[1] = a4;
    sub_24E228C60(v18, v15, type metadata accessor for ArtworkImageView);
    swift_storeEnumTagMultiPayload();
    sub_24E228AEC(&qword_27F1E7338, type metadata accessor for ArtworkImageView, &unk_24E381514);
    sub_24E228AEC(&qword_27F1E8218, type metadata accessor for AsyncArtworkImageView, &unk_24E382AE8);
    sub_24E345E38();
    v26 = type metadata accessor for ArtworkImageView;
    v27 = v18;
  }

  return sub_24E228CC0(v27, v26);
}

id sub_24E227534(uint64_t a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for AsyncArtworkViewConfig(0);
  v8 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v8;
  v15 = *(a1 + 32);
  v13 = 2;
  sub_24E228C04(a1, v12);
  v9 = sub_24E226A34();
  v10 = *(a2 + *(type metadata accessor for PlayerGroupView(0) + 40));

  return sub_24E0BD748(v14, &v13, v10, a3, a4, v9);
}

uint64_t sub_24E2275F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a6@<D2>)
{
  v79 = a2;
  v84 = a3;
  v8 = type metadata accessor for PlayerGroupView(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = v10;
  v78 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E81A0, &qword_24E386180);
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v62 - v14;
  v73 = sub_24E347B98();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v75 = sub_24E346E88();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E81A8, &qword_24E386188);
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v71 = &v62 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E81B0, &qword_24E386190);
  MEMORY[0x28223BE20](v27 - 8);
  v76 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v62 - v30;
  v32 = *a1;
  v33 = *(*a1 + 16);
  v85 = &v62 - v30;
  if (v33 < 2)
  {
    __swift_storeEnumTagSinglePayload(&v62 - v30, 1, 1, v22);
  }

  else
  {
    v69 = v22;
    v62 = v8;
    v70 = v9;
    v34 = a1[1];
    v35 = a1;
    sub_24E346E28();
    sub_24E3453D8();
    v63 = v90;
    v65 = v92;
    v68 = v94;
    v67 = v95;
    v64 = v91;
    v87 = v91;
    v66 = v93;
    v86 = v93;

    sub_24E22682C(v19);
    sub_24E347B88();
    v36 = sub_24E347B78();
    v37 = *(v72 + 8);
    v38 = v16;
    v39 = v73;
    v37(v38, v73);
    v37(v19, v39);
    if (v36)
    {
      v40 = v74;
      v41 = v75;
      (*(v74 + 104))(v21, *MEMORY[0x277CE13D8], v75);
    }

    else
    {
      v40 = v74;
      v41 = v75;
      (*(v74 + 16))(v21, v35 + *(v62 + 24), v75);
    }

    a1 = v35;
    v42 = v69;
    (*(v40 + 32))(&v24[*(v69 + 36)], v21, v41);
    v43 = v63;
    *v24 = v34;
    *(v24 + 1) = v43;
    v24[16] = v64;
    *(v24 + 17) = v89;
    *(v24 + 5) = *(&v89 + 3);
    *(v24 + 3) = v65;
    v24[32] = v66;
    *(v24 + 33) = *v88;
    *(v24 + 9) = *&v88[3];
    v44 = v67;
    *(v24 + 5) = v68;
    *(v24 + 6) = v44;
    *(v24 + 28) = 256;
    v45 = v71;
    sub_24DFB4B20(v24, v71, &qword_27F1E81A8, &qword_24E386188);
    v31 = v85;
    sub_24DFB4B20(v45, v85, &qword_27F1E81A8, &qword_24E386188);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v42);
    v9 = v70;
  }

  v89 = sub_24E117058(v32);
  swift_getKeyPath();
  v46 = v78;
  sub_24E228C60(a1, v78, type metadata accessor for PlayerGroupView);
  v47 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v48 = (v77 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  sub_24E22837C(v46, v49 + v47);
  *(v49 + v48) = v79;
  *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_24E2286BC;
  *(v50 + 24) = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E81B8, &qword_24E3861B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E81C0, &qword_24E3861C0);
  sub_24DFB4C28(&qword_27F1E81C8, &qword_27F1E81B8, &qword_24E3861B8, MEMORY[0x277D83980]);
  sub_24E2287AC();
  v51 = v80;
  sub_24E346CC8();
  v52 = v31;
  v53 = v76;
  sub_24DFAE87C(v52, v76, &qword_27F1E81B0, &qword_24E386190);
  v55 = v81;
  v54 = v82;
  v56 = *(v82 + 16);
  v57 = v83;
  v56(v81, v51, v83);
  v58 = v84;
  sub_24DFAE87C(v53, v84, &qword_27F1E81B0, &qword_24E386190);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8220, &qword_24E3861E8);
  v56((v58 + *(v59 + 48)), v55, v57);
  v60 = *(v54 + 8);
  v60(v51, v57);
  sub_24E228B34(v85);
  v60(v55, v57);
  return sub_24E228B34(v53);
}

uint64_t sub_24E227E9C@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E81E0, &qword_24E3861C8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = *a2;
  v26 = *(a2 + 16);
  v27 = v15;
  v16 = *(a2 + 32);
  result = type metadata accessor for PlayerGroupView(0);
  if (*(a3 + *(result + 44)) <= a1)
  {

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v12);
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*(a4 + 16) > a1)
    {
      v18 = (a4 + 32 * a1);
      v19 = v18[4];
      v20 = v18[5];
      v21 = v18[6] * a6;
      v22 = v18[7] * a6;
      v28 = v27;
      v29 = v26;
      LOBYTE(v30) = v16;
      sub_24E227008(&v28, v14, v21, v22);
      *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8200, &qword_24E3861D8) + 36)] = 256;
      sub_24E346E28();
      sub_24E3453D8();
      v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E81F0, &qword_24E3861D0) + 36)];
      v24 = v29;
      *v23 = v28;
      *(v23 + 1) = v24;
      *(v23 + 2) = v30;
      v25 = &v14[*(v12 + 36)];
      *v25 = v19 * a6;
      v25[1] = v20 * a6;
      sub_24DFB4B20(v14, a5, &qword_27F1E81E0, &qword_24E3861C8);
      return __swift_storeEnumTagSinglePayload(a5, 0, 1, v12);
    }

    __break(1u);
  }

  return result;
}

uint64_t PlayerGroupView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = type metadata accessor for PlayerGroupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24E228C60(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayerGroupView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24E22837C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_24E2283E0;
  a1[1] = v7;
  return result;
}

uint64_t sub_24E2281D8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8188, &qword_24E386170);
  MEMORY[0x28223BE20](v4);
  v6 = (v18 - v5);
  sub_24E345488();
  v8 = v7;
  sub_24E345488();
  v10 = v9;
  sub_24E345488();
  v12 = v11;
  if (v8 != v10)
  {
    sub_24E345488();
    if (v13 < v12)
    {
      v12 = v13;
    }
  }

  v14 = sub_24E226FA8();
  *v6 = sub_24E346DC8();
  v6[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8190, &qword_24E386178);
  sub_24E2275F0(a1, v14, v6 + *(v16 + 44), v12 / 72.0);

  sub_24DFB4C28(&qword_27F1E8198, &qword_27F1E8188, &qword_24E386170, MEMORY[0x277CE11A8]);
  v18[1] = sub_24E346C48();
  result = sub_24E346C48();
  *a2 = result;
  return result;
}

uint64_t sub_24E22837C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerGroupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2283E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PlayerGroupView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24E2281D8(v4, a1);
}

void sub_24E2284A4(uint64_t a1)
{
  sub_24E22866C(319, &qword_280BDFB88, &type metadata for ImageProvider, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E346E88();
    if (v2 <= 0x3F)
    {
      sub_24E228618(319, &qword_27F1E6A90, MEMORY[0x277CE3AF8]);
      if (v3 <= 0x3F)
      {
        sub_24E228618(319, &qword_27F1DF478, MEMORY[0x277CDF3E0]);
        if (v4 <= 0x3F)
        {
          sub_24E22866C(319, &qword_27F1E15F0, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ArtworkLoader();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24E228618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E345278();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E22866C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24E2286BC@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PlayerGroupView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E227E9C(a1, a2, v3 + v8, v10, a3, v11);
}

unint64_t sub_24E2287AC()
{
  result = qword_27F1E81D0;
  if (!qword_27F1E81D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E81C0, &qword_24E3861C0);
    sub_24E228830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E81D0);
  }

  return result;
}

unint64_t sub_24E228830()
{
  result = qword_27F1E81D8;
  if (!qword_27F1E81D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E81E0, &qword_24E3861C8);
    sub_24E2288BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E81D8);
  }

  return result;
}

unint64_t sub_24E2288BC()
{
  result = qword_27F1E81E8;
  if (!qword_27F1E81E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E81F0, &qword_24E3861D0);
    sub_24E228948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E81E8);
  }

  return result;
}

unint64_t sub_24E228948()
{
  result = qword_27F1E81F8;
  if (!qword_27F1E81F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8200, &qword_24E3861D8);
    sub_24E228A00();
    sub_24DFB4C28(&qword_27F1E42D8, &qword_27F1E42E0, &unk_24E378880, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E81F8);
  }

  return result;
}

unint64_t sub_24E228A00()
{
  result = qword_27F1E8208;
  if (!qword_27F1E8208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8210, &qword_24E3861E0);
    sub_24E228AEC(&qword_27F1E7338, type metadata accessor for ArtworkImageView, &unk_24E381514);
    sub_24E228AEC(&qword_27F1E8218, type metadata accessor for AsyncArtworkImageView, &unk_24E382AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8208);
  }

  return result;
}

uint64_t sub_24E228AEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E228B34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E81B0, &qword_24E386190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E228B9C()
{
  v1 = *(type metadata accessor for PlayerGroupView(0) - 8);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  return sub_24E227534(v0 + 16, v4, v2, v3);
}

uint64_t sub_24E228C60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E228CC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_26();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_100(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_6_77()
{
  sub_24DE73F34(*(v1 + *(v0 + 36)), *(v1 + *(v0 + 36) + 8));
}

uint64_t OUTLINED_FUNCTION_8_65()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_24E228DDC(uint64_t *a1)
{
  v2 = sub_24E347218();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = sub_24E346EE8();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  sub_24E346F08();
  OUTLINED_FUNCTION_0_14();
  v48 = v17;
  v49 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820, &unk_24E376E20);
  if (!Strong)
  {
    (*(v4 + 104))(v8, *MEMORY[0x277D21CA8], v2);
    return sub_24E347AA8();
  }

  v47 = v11;
  v46 = sub_24E347AD8();
  sub_24DF88A8C(0, &qword_27F1DFB28, 0x277D75110);
  v22 = *a1;
  v23 = a1[1];
  v25 = a1[2];
  v24 = a1[3];

  v26 = sub_24E3191B4(v22, v23, v25, v24, 1);
  v27 = a1[4];
  if (sub_24DFD8654() < 1)
  {
    sub_24DF88A8C(0, &qword_27F1E2900, 0x277D750F8);
    v34 = sub_24E347CB8();
    v35 = GKGameCenterUIFrameworkBundle();
    v36 = GKGetLocalizedStringFromTableInBundle();

    v37 = sub_24E347CF8();
    v39 = v38;

    v40 = sub_24E3190AC(v37, v39, 0, 0, 0);
    [v26 addAction_];

    goto LABEL_13;
  }

  result = sub_24DFD8654();
  if (!result)
  {
LABEL_13:
    sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
    v41 = sub_24E348368();
    v42 = swift_allocObject();
    v42[2] = Strong;
    v42[3] = v26;
    v33 = v46;
    v42[4] = v46;
    aBlock[4] = sub_24E229424;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_79;
    v43 = _Block_copy(aBlock);
    v44 = Strong;
    v45 = v26;

    sub_24E346EF8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24E229448(&qword_27F1DFD00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
    sub_24DFCD5F4();
    sub_24E3487E8();
    MEMORY[0x25303EED0](0, v20, v15, v43);
    _Block_release(v43);

    (*(v47 + 8))(v15, v9);
    (*(v48 + 8))(v20, v49);
    return v33;
  }

  v29 = result;
  if (result >= 1)
  {
    for (i = 0; i != v29; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x25303F560](i, v27);
      }

      else
      {
        v31 = *(v27 + 8 * i + 32);
      }

      v32 = v31;
      [v26 addAction_];
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E229308(void *a1, uint64_t a2)
{
  v4 = sub_24E347218();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 presentViewController:a2 animated:1 completion:{0, v6}];
  (*(v5 + 104))(v8, *MEMORY[0x277D21CA8], v4);
  sub_24E347AC8();
  return (*(v5 + 8))(v8, v4);
}

double block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24E229448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_24E2294A0(id a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a8)
  {
    v10 = [a1 layoutSize];
    v11 = [v10 widthDimension];

    v12 = objc_opt_self();
    if (qword_27F1DDC30 != -1)
    {
      swift_once();
    }

    v13 = sub_24E3444F8();
    __swift_project_value_buffer(v13, qword_27F20B4A0);
    sub_24E3444E8();
    v15 = [v12 absoluteDimension_];
    v16 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v15];

    v17 = [objc_opt_self() verticalGroupWithLayoutSize:v16 subitem:a1 count:2];
    v18 = objc_opt_self();
    sub_24E3444E8();
    v19 = [v18 fixedSpacing_];
    [v17 setInterItemSpacing_];

    v20 = [objc_opt_self() sectionWithGroup_];
    v21 = qword_27F1DDC48;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27F20B4E8);
    sub_24E3444E8();
    v24 = v23;
    if (qword_27F1DDC28 != -1)
    {
      OUTLINED_FUNCTION_1_119(&qword_27F1DDC28);
    }

    __swift_project_value_buffer(v13, qword_27F20B488);
  }

  else
  {
    v26 = [objc_opt_self() fractionalWidthDimension_];
    v27 = [a1 layoutSize];
    v28 = [v27 heightDimension];

    v16 = [objc_opt_self() sizeWithWidthDimension:v26 heightDimension:v28];
    v29 = [objc_opt_self() horizontalGroupWithLayoutSize:v16 subitem:a1 count:2];
    v30 = qword_27F1DDC28;
    v17 = v29;
    if (v30 != -1)
    {
      OUTLINED_FUNCTION_1_119(&qword_27F1DDC28);
    }

    v31 = sub_24E3444F8();
    __swift_project_value_buffer(v31, qword_27F20B488);
    sub_24E3444E8();
    v33 = v32;
    [a4 safeAreaInsets];
    v34 = a9 + OBJC_IVAR___GameLayerPageGrid_centeringInsets;
    v36 = vabdd_f64(v35, *(a9 + OBJC_IVAR___GameLayerPageGrid_centeringInsets + 8));
    sub_24E3444E8();
    v38 = v37;
    [a4 safeAreaInsets];
    [v17 setContentInsets_];

    v40 = [objc_opt_self() fixedSpacing_];
    [v17 setInterItemSpacing_];

    v22 = [objc_opt_self() sectionWithGroup_];
    sub_24E3444E8();
    v24 = v41;
  }

  sub_24E3444E8();
  v43 = v42;
  sub_24E3444E8();
  v45 = v44;
  sub_24E3444E8();
  [v22 setContentInsets_];

  return v22;
}

uint64_t sub_24E229948(void *a1)
{
  v2 = sub_24E3446A8();
  OUTLINED_FUNCTION_2_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  sub_24E229A4C(a1);
  sub_24E344608();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_24E229A4C(void *a1)
{
  v2 = v1;
  v36 = sub_24E344648();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7_1();
  v33 = v5 - v4;
  v32 = sub_24E3445E8();
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  v37 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  v12 = sub_24E344658();
  OUTLINED_FUNCTION_2_7();
  v14 = v13;
  v34 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v18 = v17 - v16;
  v35 = v17 - v16;
  v19 = [a1 traitCollection];
  LOBYTE(a1) = sub_24E3483C8();

  v20 = MEMORY[0x277D227F0];
  if ((a1 & 1) == 0)
  {
    v20 = MEMORY[0x277D227E8];
  }

  (*(v14 + 104))(v18, *v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10, &unk_24E369B80);
  sub_24E344688();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  __swift_project_boxed_opaque_existential_1(v2 + 8, v2[11]);
  sub_24E3440C8();
  v46 = MEMORY[0x277D839F8];
  v47 = MEMORY[0x277D22A30];
  v45[0] = 0;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v31 = *(v7 + 104);
  v31(v11, *MEMORY[0x277D227D0], v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38, &qword_24E373200);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v41 = v21;
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
  sub_24DF8A8FC();
  sub_24E3487E8();
  v22 = v11;
  sub_24E344678();
  v30 = *(v38 + 8);
  v30(v33, v36);
  v29 = *(v37 + 8);
  v29(v11, v32);
  sub_24DF8A960(&v42);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v23 = v2[16];
  v24 = v2[17];
  v25 = __swift_project_boxed_opaque_existential_1(v2 + 13, v23);
  v46 = v23;
  v47 = *(v24 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
  sub_24E22A238(v2, v39);
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v31(v22, *MEMORY[0x277D227C8], v32);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v41 = v27;
  sub_24E3487E8();
  sub_24E344678();
  v30(v33, v36);
  v29(v22, v32);
  sub_24DF8A960(&v42);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_24E344668();
  return (*(v34 + 8))(v35, v12);
}

uint64_t sub_24E22A10C(void *a1, double a2, double a3)
{
  v6 = sub_24E3446A8();
  OUTLINED_FUNCTION_2_7();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  sub_24E229A4C(a1);
  sub_24E3445F8(a2, a3);
  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_24E22A270(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E22A2B0(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_24E22A310(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E22A350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E22A3C4()
{
  v0 = sub_24E22A5AC();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  type metadata accessor for Artwork();
  v6[0] = v2;
  v6[1] = v3;
  v5[0] = 25186;
  v5[1] = 0xE200000000000000;
  return Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(v6, 0, v5, MEMORY[0x277D84F90], 512.0, 512.0);
}

uint64_t sub_24E22A444(unint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24E22A690([v3 internal]);
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  v7 = v6;
  OUTLINED_FUNCTION_0_154();
  v12[0] = v8;
  v12[1] = v9;
  sub_24E348918();
  sub_24E12C94C(v7, &v14);

  sub_24DF8BE60(&v13);
  if (!*(&v15 + 1))
  {
LABEL_9:
    sub_24DF8894C(&v14);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (a2 & 1 | (a1 > 5))
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x10203040100uLL >> (8 * a1);
  }

  LOBYTE(v12[0]) = v10;
  *&v14 = 25186;
  *(&v14 + 1) = 0xE200000000000000;
  type metadata accessor for Artwork();
  swift_allocObject();
  return Artwork.init(template:size:backgroundColor:style:crop:variants:)(&v13, 0, v12, &v14, MEMORY[0x277D84F90], 512.0, 512.0);
}

uint64_t sub_24E22A5AC()
{
  v1 = sub_24E22A690([v0 internal]);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_8;
  }

  v2 = v1;
  OUTLINED_FUNCTION_0_154();
  *&v7 = v3;
  *(&v7 + 1) = v4;
  sub_24E348918();
  sub_24E12C94C(v2, &v7);

  sub_24DF8BE60(&v6);
  if (!*(&v8 + 1))
  {
LABEL_8:
    sub_24DF8894C(&v7);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E22A690(void *a1)
{
  v2 = [a1 icons];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24E347C08();

  return v3;
}

uint64_t sub_24E22A720(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_24E22A774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24E22A7E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_24E22A838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_24E22A89C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7FB8, &qword_24E385438);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E7FC0, &qword_24E385440);
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - v6;
  v7 = v0[1];
  v33 = *v0;
  v34 = v7;
  v35 = v0[2];
  v36 = *(v0 + 6);
  v8 = v33;
  v9 = objc_allocWithZone(type metadata accessor for AuthenticationWithOnboardingViewController());

  v29 = sub_24E0033D4(v8, *(&v8 + 1));
  LOBYTE(v32[0]) = v35;
  v10 = sub_24E12BD60();
  v12 = v11;
  type metadata accessor for AuthenticationMetricsHandler(0);
  swift_allocObject();
  v13 = sub_24E2AE048(v10, v12);
  v14 = swift_allocObject();
  v27 = v14;
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  v32[0] = sub_24E003240();
  sub_24E085260();
  v16 = sub_24E348368();
  v32[7] = v16;
  v17 = sub_24E348348();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7FD0, &unk_24E385448);
  sub_24DFB4C28(&qword_27F1E7FD8, &qword_27F1E7FD0, &unk_24E385448, MEMORY[0x277CBCD90]);
  sub_24E2120F4();
  v18 = v28;
  sub_24E344F18();
  sub_24DF8C95C(v3, &qword_27F1E7FB8, &qword_24E385438);

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = v34;
  *(v19 + 24) = v33;
  *(v19 + 40) = v20;
  *(v19 + 56) = v35;
  v21 = v27;
  *(v19 + 72) = v36;
  *(v19 + 80) = v21;
  swift_retain_n();
  sub_24E22B89C(&v33, v32);
  sub_24DFB4C28(&qword_27F1E7FE8, &unk_27F1E7FC0, &qword_24E385440, MEMORY[0x277CBCD60]);

  v22 = v30;
  v23 = sub_24E344EC8();

  (*(v31 + 8))(v18, v22);
  swift_beginAccess();
  *v15 = v23;

  v24 = v29;
  sub_24E00378C(1, 0);

  return v24;
}

uint64_t sub_24E22AC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if (v6 == 255 || (sub_24E2ADCBC(*a1, v6), sub_24E12BD60(), v7 = , v6))
  {
    sub_24E22AD4C();
  }

  else
  {
    v9 = *(a3 + 40);
    if (v9)
    {
      v9(v7);
    }
  }

  swift_beginAccess();
  *(a4 + 16) = 0;
}

void sub_24E22AD4C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 8))
  {
    v2 = [objc_opt_self() proxyForLocalPlayer];
    v3 = [v2 accountServicePrivate];

    v4 = sub_24E347CB8();
    v5 = [objc_opt_self() mainBundle];
    sub_24E0CFF20(v5);
    if (v6)
    {
      v7 = sub_24E347CB8();
    }

    else
    {
      v7 = 0;
    }

    [v3 notifyClient:v4 playerAuthenticatedFromClient:v7];
    swift_unknownObjectRelease();
  }

  if (v1)
  {
    v1();
  }
}

uint64_t sub_24E22AE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E22B838();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E22AEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E22B838();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E22AF20(uint64_t a1)
{
  sub_24E22B838();
  sub_24E3460C8();
  __break(1u);
}

uint64_t sub_24E22AF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_24E346DC8();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8230, &qword_24E3865F0);
  return sub_24E22AFC4(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_24E22AFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8238, &qword_24E3865F8);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8240, &qword_24E386600);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v51 = sub_24E345CF8();
  LOBYTE(v53[0]) = 0;
  sub_24E22B4C8(v74);
  *&v72[7] = v74[0];
  *&v72[23] = v74[1];
  *&v72[39] = v74[2];
  *&v72[55] = v74[3];
  v49 = LOBYTE(v53[0]);
  v50 = sub_24E3461E8();
  sub_24E3451B8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v54[0]) = 0;
  sub_24E346E28();
  sub_24E3453D8();
  *(v73 + 7) = *&v73[7];
  *(&v73[2] + 7) = *&v73[9];
  *(&v73[4] + 7) = *&v73[11];
  v22 = sub_24E3461F8();
  sub_24E3451B8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v54[0]) = 0;
  if (a1)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    *(v31 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF638, &unk_24E36B5D0);
    sub_24DFA9774();
    sub_24E346BD8();
    sub_24E346E28();
    sub_24E3453D8();
    v32 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8258, &qword_24E386618) + 36)];
    v33 = *&v73[15];
    *v32 = *&v73[13];
    *(v32 + 1) = v33;
    *(v32 + 2) = *&v73[17];
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8260, &qword_24E386620) + 36)] = 256;
    v34 = sub_24E346218();
    sub_24E3451B8();
    v35 = &v7[*(v5 + 36)];
    *v35 = v34;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_24E22B7C8(v7, v13);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v40, 1, v5);
  sub_24DF9DEAC(v13, v10, &qword_27F1E8240, &qword_24E386600);
  v41 = v51;
  v53[0] = v51;
  v53[1] = 0x4038000000000000;
  v42 = v49;
  LOBYTE(v53[2]) = v49;
  memcpy(&v53[2] + 1, v72, 0x47uLL);
  v43 = v50;
  LOBYTE(v53[11]) = v50;
  *(&v53[11] + 1) = v75[0];
  HIDWORD(v53[11]) = *(v75 + 3);
  v53[12] = v15;
  v53[13] = v17;
  v53[14] = v19;
  v53[15] = v21;
  LOBYTE(v53[16]) = 0;
  v48 = v13;
  *(&v53[16] + 1) = *v73;
  *(&v53[18] + 1) = *&v73[2];
  *(&v53[20] + 1) = *&v73[4];
  v53[22] = *(&v73[5] + 7);
  v44 = v22;
  LOBYTE(v53[23]) = v22;
  v53[24] = v24;
  v53[25] = v26;
  v53[26] = v28;
  v53[27] = v30;
  LOBYTE(v53[28]) = 0;
  v45 = v52;
  memcpy(v52, v53, 0xE1uLL);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8248, &qword_24E386608);
  sub_24DF9DEAC(v10, v45 + *(v46 + 48), &qword_27F1E8240, &qword_24E386600);
  sub_24DF9DEAC(v53, v54, &qword_27F1E8250, &qword_24E386610);
  sub_24DF8C95C(v48, &qword_27F1E8240, &qword_24E386600);
  sub_24DF8C95C(v10, &qword_27F1E8240, &qword_24E386600);
  v54[0] = v41;
  v54[1] = 0x4038000000000000;
  v55 = v42;
  memcpy(v56, v72, 0x47uLL);
  v56[71] = v43;
  *v57 = v75[0];
  *&v57[3] = *(v75 + 3);
  v58 = v15;
  v59 = v17;
  v60 = v19;
  v61 = v21;
  v62 = 0;
  v63 = *v73;
  v64 = *&v73[2];
  *v65 = *&v73[4];
  *&v65[15] = *(&v73[5] + 7);
  v66 = v44;
  v67 = v24;
  v68 = v26;
  v69 = v28;
  v70 = v30;
  v71 = 0;
  return sub_24DF8C95C(v54, &qword_27F1E8250, &qword_24E386610);
}

uint64_t sub_24E22B4C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v5 = sub_24E3464E8();
  v7 = v6;
  v9 = v8;
  sub_24E346298();
  v10 = sub_24E3464B8();
  v29 = v11;
  v30 = v10;
  v28 = v12;
  v31 = v13;

  sub_24DFA92EC(v5, v7, v9 & 1);

  v14 = sub_24E347CB8();
  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  v17 = sub_24E3464E8();
  v19 = v18;
  LOBYTE(v15) = v20;
  sub_24E346288();
  v21 = sub_24E3464B8();
  v23 = v22;
  LOBYTE(v3) = v24;
  v26 = v25;

  sub_24DFA92EC(v17, v19, v15 & 1);

  *a1 = v30;
  *(a1 + 8) = v29;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v31;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v3 & 1;
  *(a1 + 56) = v26;
  sub_24DF82DD4(v30, v29, v28 & 1);

  sub_24DF82DD4(v21, v23, v3 & 1);

  sub_24DFA92EC(v21, v23, v3 & 1);

  sub_24DFA92EC(v30, v29, v28 & 1);
}

uint64_t sub_24E22B764@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24E346A58();
  v4 = sub_24E346288();
  result = swift_getKeyPath();
  *a1 = v3;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

uint64_t sub_24E22B7C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8238, &qword_24E3865F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E22B838()
{
  result = qword_280BDFBB8;
  if (!qword_280BDFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BDFBB8);
  }

  return result;
}

uint64_t sub_24E22B924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0, &unk_24E36C060);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_secondarySnapshot;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  sub_24E22BB2C(v10, a2);
  v12(v7, v10, v4);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v11, v7, v4);
  swift_endAccess();
  v12(v7, a1 + v11, v4);

  sub_24E346F78();

  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
}

uint64_t sub_24E22BB2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = v23 - v9;
  v29 = type metadata accessor for Shelf(0);
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0, &unk_24E36C060);
  result = sub_24E344B28();
  v27 = *(a2 + 16);
  if (v27)
  {
    v14 = 0;
    v26 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = *(v10 + 72);
    v24 = xmmword_24E367D20;
    v23[1] = a1;
    v23[0] = v12;
    do
    {
      v32 = v14;
      v15 = v26 + v25 * v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0ED0, &unk_24E36F970);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
      *(swift_allocObject() + 16) = v24;
      sub_24E19A2E0(v15, v28);
      sub_24E19A344();
      sub_24E347178();
      sub_24E344B18();

      v16 = *(v15 + 48);
      v17 = *(v16 + 16);
      if (v17)
      {
        v35 = MEMORY[0x277D84F90];
        sub_24E12F7F8(0, v17, 0);
        v18 = v35;
        v19 = v16 + 32;
        do
        {
          sub_24DF89628(v19, v34);
          sub_24DF89628(v34, v33);
          sub_24E347168();
          __swift_destroy_boxed_opaque_existential_1(v34);
          v35 = v18;
          v21 = *(v18 + 16);
          v20 = *(v18 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_24E12F7F8((v20 > 1), v21 + 1, 1);
            v18 = v35;
          }

          *(v18 + 16) = v21 + 1;
          (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v4);
          v19 += 40;
          --v17;
        }

        while (v17);
      }

      v14 = v32 + 1;
      v22 = v30;
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
      sub_24E344AD8();

      result = sub_24E19A39C(v22);
    }

    while (v14 != v27);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsView(uint64_t a1)
{
  result = qword_27F1E8280;
  if (!qword_27F1E8280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E22BFC4(uint64_t a1)
{
  type metadata accessor for AchievementDetailViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_24DFB4374(319);
    if (v2 <= 0x3F)
    {
      sub_24E04ACC8(319);
      if (v3 <= 0x3F)
      {
        sub_24E0C8DC8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E22C0CC()
{
  v0 = sub_24E345B68();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  type metadata accessor for AchievementDetailsView(0);
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24DFA9344();
  }

  sub_24E348268();
  v6 = sub_24E346198();
  sub_24E343EA8();

  sub_24E345B58();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

double sub_24E22C2A8@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for AchievementDetailsView(0) - 8;
  MEMORY[0x28223BE20](v3);
  v19 = a1;
  if (*(v1 + *(v4 + 28)))
  {
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    v5 = &qword_27F20AC30;
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    v5 = &qword_27F20ABB8;
  }

  memcpy(__dst, v5, 0x78uLL);
  v6 = *&__dst[7];
  v7 = BYTE9(__dst[6]);
  v8 = BYTE8(__dst[6]);
  v17 = *(&__dst[4] + 8);
  v18 = *(&__dst[5] + 8);
  v15 = __dst[1];
  v16 = *(&__dst[3] + 8);
  v14 = __dst[0];
  v9 = __dst[2];
  v10 = __dst[3];
  sub_24E002674(__dst, &v20);
  __dst[0] = v14;
  __dst[1] = v15;
  __dst[2] = v9;
  LOBYTE(__dst[3]) = v10;
  *(&__dst[3] + 8) = v16;
  *(&__dst[4] + 8) = v17;
  *(&__dst[5] + 8) = v18;
  BYTE8(__dst[6]) = v8;
  BYTE9(__dst[6]) = v7;
  *&__dst[7] = v6;
  sub_24E0026D0(__dst);
  sub_24E231C68();
  swift_allocObject();
  OUTLINED_FUNCTION_5_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8290, &qword_24E386740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8298, &qword_24E386748);
  v11 = MEMORY[0x277CDF7D8];
  sub_24DFB4C28(&qword_27F1E82A0, &qword_27F1E8290, &qword_24E386740, MEMORY[0x277CDF7D8]);
  sub_24DFB4C28(&qword_27F1E82A8, &qword_27F1E8298, &qword_24E386748, v11);
  sub_24E345E38();
  result = *&v20;
  v13 = v21;
  *v19 = v20;
  *(v19 + 16) = v13;
  return result;
}

__n128 sub_24E22C5D0@<Q0>(uint64_t a2@<X8>)
{
  sub_24E22C698(a2);
  type metadata accessor for AchievementDetailsView(0);

  MEMORY[0x25303D900](v3);
  sub_24E346EB8();
  sub_24E346EC8();
  sub_24E345598();
  v4 = sub_24E3461E8();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82B0, &qword_24E386750) + 36);
  *v5 = v7;
  result = v8;
  *(v5 + 24) = v9;
  *(v5 + 8) = v8;
  *(v5 + 40) = v4;
  return result;
}

uint64_t sub_24E22C698@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82B8, &qword_24E386758);
  OUTLINED_FUNCTION_1_121(v4, &v125);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v113 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82C0, &qword_24E386760);
  OUTLINED_FUNCTION_1_121(v8, &v122);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = v113 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82C8, &qword_24E386768);
  OUTLINED_FUNCTION_1_121(v12, &v123);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82D0, &qword_24E386770);
  OUTLINED_FUNCTION_1_121(v15, &v121);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82D8, &qword_24E386778);
  OUTLINED_FUNCTION_1_121(v18, &v124);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82E0, &qword_24E386780);
  OUTLINED_FUNCTION_1_121(v21, &v118);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82E8, &qword_24E386788);
  OUTLINED_FUNCTION_1_121(v24, &v119);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82F0, &qword_24E386790);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  v29 = v113 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E82F8, &qword_24E386798);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v31);
  v33 = v113 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8300, &qword_24E3867A0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8308, &qword_24E3867A8);
  v37 = OUTLINED_FUNCTION_1_121(v36, &__src[12]);
  MEMORY[0x28223BE20](v37);
  v113[1] = v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23(v113 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8310, &qword_24E3867B0);
  OUTLINED_FUNCTION_1_121(v41, &v120);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v43);
  sub_24E345488();
  type metadata accessor for AchievementDetailsView(0);
  OUTLINED_FUNCTION_17_35();
  v44 = sub_24E22D3D8();
  if (v44 == 2)
  {
    *v7 = sub_24E345CF8();
    *(v7 + 1) = 0;
    v7[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8318, &qword_24E3867B8);
    v55 = sub_24E3461C8();
    MEMORY[0x28223BE20](v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8320, &qword_24E3867C0);
    sub_24E2317DC();
    sub_24E345218();
    OUTLINED_FUNCTION_12_41();
    swift_storeEnumTagMultiPayload();
    sub_24E231894();
    OUTLINED_FUNCTION_0_155();
    OUTLINED_FUNCTION_25_19();
    sub_24DFB4C28(v56, v57, v58, v59);
    OUTLINED_FUNCTION_15_31();
    OUTLINED_FUNCTION_8_66();
    sub_24E345E38();
  }

  else if (v44 == 3)
  {
    *v11 = sub_24E345BF8();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8388, &qword_24E3867D0);
    sub_24E22FBDC(v2, &v11[*(v45 + 44)]);
    OUTLINED_FUNCTION_12_41();
    swift_storeEnumTagMultiPayload();
    sub_24E23194C();
    OUTLINED_FUNCTION_6_78();
    OUTLINED_FUNCTION_25_19();
    sub_24DFB4C28(v46, v47, v48, v49);
    v50 = v115;
    sub_24E345E38();
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_22_25();
    sub_24E231894();
    OUTLINED_FUNCTION_0_155();
    sub_24DFB4C28(v51, v52, v53, v54);
    OUTLINED_FUNCTION_15_31();
    OUTLINED_FUNCTION_8_66();
    sub_24E345E38();
    sub_24DF8BFF4(v50, &qword_27F1E82D8, &qword_24E386778);
  }

  else
  {
    v60 = v44;
    v61 = sub_24E345CF8();
    if (v60)
    {
      v62 = v114;
      *v114 = v61;
      v62[1] = 0;
      *(v62 + 16) = 0;
      v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8390, &qword_24E3867D8) + 44);
      v64 = sub_24E3461C8();
      MEMORY[0x28223BE20](v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8398, &qword_24E3867E0);
      sub_24E231A60(&qword_27F1E83A0, &qword_27F1E8398, &qword_24E3867E0, sub_24E231BA8);
      sub_24E345218();
      OUTLINED_FUNCTION_17_35();

      sub_24E346EB8();
      sub_24E346EC8();
      sub_24E345598();
      v65 = __src[0];
      v66 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83C8, &qword_24E3867F8) + 36)];
      *v66 = v65;
      v67 = *&__src[1];
      *(v66 + 24) = *&__src[3];
      *(v66 + 8) = v67;
      v68 = sub_24E345CF8();
      v69 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E83D0, &unk_24E386800) + 36)];
      sub_24E22EB48(v3, v69);
      v70 = sub_24E345398();
      v71 = MEMORY[0x25303CDB0]((2 * v70));
      v72 = sub_24E345728();
      v73 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0718, &qword_24E36E5C8) + 36);
      *v73 = v72;
      *(v73 + 8) = 0;
      *(v73 + 16) = 1;
      *(v73 + 17) = v71;
      *(v73 + 24) = v68;
      OUTLINED_FUNCTION_12_41();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_56();
      sub_24E231A60(v74, v75, v76, v77);
      OUTLINED_FUNCTION_0_155();
      OUTLINED_FUNCTION_25_19();
      sub_24DFB4C28(v78, v79, v80, v81);
      sub_24E345E38();
      OUTLINED_FUNCTION_25_19();
      sub_24DF8BFF4(v82, v83, v84);
    }

    else
    {
      *v29 = v61;
      *(v29 + 1) = 0;
      v29[16] = 1;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E83E0, &unk_24E386810);
      sub_24E22E448(v3, &v29[*(v85 + 44)]);
      sub_24E346E28();
      sub_24E3457F8();
      sub_24DFA9344();
      memcpy(&v33[*(v30 + 36)], __src, 0x70uLL);
      sub_24E3461F8();
      OUTLINED_FUNCTION_17_35();
      sub_24E3451B8();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_20_25();
      sub_24DFA9344();
      OUTLINED_FUNCTION_13_47();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0, &qword_24E36E600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24E36A270;
      v87 = sub_24E346238();
      *(inited + 32) = v87;
      v88 = sub_24E346218();
      *(inited + 33) = v88;
      sub_24E346228();
      sub_24E346228();
      if (sub_24E346228() != v87)
      {
        sub_24E346228();
      }

      sub_24E346228();
      if (sub_24E346228() != v88)
      {
        sub_24E346228();
      }

      sub_24E345488();
      sub_24E3451B8();
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_20_25();
      sub_24DFA9344();
      OUTLINED_FUNCTION_13_47();
      sub_24DFA9344();
      OUTLINED_FUNCTION_20_25();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_56();
      OUTLINED_FUNCTION_25_19();
      sub_24E231A60(v89, v90, v91, v92);
      OUTLINED_FUNCTION_0_155();
      sub_24DFB4C28(v93, v94, v95, v96);
      sub_24E345E38();
      OUTLINED_FUNCTION_25_19();
      sub_24DF8BFF4(v97, v98, v99);
    }

    OUTLINED_FUNCTION_20_25();
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24E23194C();
    OUTLINED_FUNCTION_6_78();
    sub_24DFB4C28(v100, v101, v102, v103);
    v104 = v115;
    sub_24E345E38();
    OUTLINED_FUNCTION_16_34();
    OUTLINED_FUNCTION_22_25();
    sub_24E231894();
    OUTLINED_FUNCTION_0_155();
    sub_24DFB4C28(v105, v106, v107, v108);
    OUTLINED_FUNCTION_15_31();
    OUTLINED_FUNCTION_8_66();
    sub_24E345E38();
    sub_24DF8BFF4(v104, &qword_27F1E82D8, &qword_24E386778);
  }

  OUTLINED_FUNCTION_25_19();
  return sub_24DF8BFF4(v109, v110, v111);
}

double sub_24E22D354@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E22C698(a3);
  v5 = *(a2 + *(type metadata accessor for AchievementDetailsView(0) + 24) + 352);
  v6 = sub_24E3461E8();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8520, &qword_24E386978) + 36);
  *v7 = v5;
  *(v7 + 8) = v6;

  return result;
}

uint64_t sub_24E22D3D8()
{
  v1 = sub_24E345658();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24E345F38();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF890, &qword_24E3714C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338, qword_24E36F580);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v29[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v29[-v16];
  sub_24E345488();
  v19 = v18;
  sub_24E345488();
  if (v20 >= v19)
  {
    goto LABEL_10;
  }

  v31 = v2;
  v32 = v0;
  v33 = v1;
  sub_24E22C0CC();
  v21 = v36;
  (*(v36 + 104))(v14, *MEMORY[0x277CE0558], v5);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v5);
  v22 = *(v7 + 48);
  sub_24DFA9240();
  sub_24DFA9240();
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) != 1)
  {
    v23 = v35;
    sub_24DFA9240();
    if (__swift_getEnumTagSinglePayload(&v9[v22], 1, v5) != 1)
    {
      v24 = v34;
      (*(v21 + 32))(v34, &v9[v22], v5);
      sub_24E231D70(&qword_27F1DF3C8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v30 = sub_24E347CA8();
      v25 = *(v21 + 8);
      v25(v24, v5);
      sub_24DF8BFF4(v14, &qword_27F1DF338, qword_24E36F580);
      sub_24DF8BFF4(v17, &qword_27F1DF338, qword_24E36F580);
      v25(v23, v5);
      sub_24DF8BFF4(v9, &qword_27F1DF338, qword_24E36F580);
      v1 = v33;
      v2 = v31;
      if ((v30 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_24DF8BFF4(v14, &qword_27F1DF338, qword_24E36F580);
    sub_24DF8BFF4(v17, &qword_27F1DF338, qword_24E36F580);
    (*(v21 + 8))(v23, v5);
LABEL_7:
    sub_24DF8BFF4(v9, &unk_27F1DF890, &qword_24E3714C0);
    v1 = v33;
    v2 = v31;
    goto LABEL_10;
  }

  sub_24DF8BFF4(v14, &qword_27F1DF338, qword_24E36F580);
  sub_24DF8BFF4(v17, &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(&v9[v22], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_24DF8BFF4(v9, &qword_27F1DF338, qword_24E36F580);
  v1 = v33;
  v2 = v31;
LABEL_9:
  type metadata accessor for AchievementDetailsView(0);
  sub_24E028BC4(v4);
  v26 = sub_24E345638();
  (*(v2 + 8))(v4, v1);
  if ((v26 & 1) == 0)
  {
    return 3;
  }

LABEL_10:
  type metadata accessor for AchievementDetailsView(0);
  sub_24E028BC4(v4);
  v27 = sub_24E345638();
  (*(v2 + 8))(v4, v1);
  if (v27)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_24E22D938(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v130 = v3;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8410, &unk_24E386840);
  MEMORY[0x28223BE20](v126);
  v131 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v127 = (&v113 - v6);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0778, &qword_24E36E628);
  MEMORY[0x28223BE20](v125);
  v8 = (&v113 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8420, &qword_24E386850);
  MEMORY[0x28223BE20](v9 - 8);
  v129 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v113 - v12;
  v14 = type metadata accessor for AchievementDetailHeaderView(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v128 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v113 - v18;
  v20 = type metadata accessor for AchievementDetailViewModel(0);
  v21 = v2 + v20[5];
  sub_24E231C68();
  v22 = type metadata accessor for AchievementDetailsView(0);
  v23 = *(v22 + 24);
  v132 = *(v22 + 20);
  v24 = *(v2 + v132);
  memcpy(v145, (v2 + v23), 0x180uLL);
  v19[*(v15 + 28)] = v24;
  v25 = *(v15 + 32);
  v135 = v19;
  v133 = v23;
  memcpy(&v19[v25], (v2 + v23), 0x180uLL);
  v26 = (v21 + *(type metadata accessor for Achievement(0) + 48));
  v27 = v26[1];
  v134 = v13;
  if (v27)
  {
    v28 = v26[2];
    v29 = v26[3];
    v30 = *v26;
    v31 = v20;
    v32 = v145[47];
    sub_24E002778(v145, v144);
    v33 = v32;
    v34 = sub_24E346948();
    *v8 = sub_24E346E28();
    v8[1] = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E07C0, &qword_24E36E690);
    v37 = v30;
    v38 = v134;
    sub_24E193FB0(v34, v37, v27, v28, v29, v8 + *(v36 + 44));
    v20 = v31;

    sub_24DFA9344();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v125);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v125);
    sub_24E002778(v145, v144);
  }

  v144[3] = &type metadata for GKFeatureFlags;
  v144[4] = sub_24DFA0CB4();
  LOBYTE(v144[0]) = 12;
  v39 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v144);
  if ((v39 & 1) != 0 && (v40 = *(v2 + v20[7]), *(v40 + 16)))
  {
    LODWORD(v125) = *(v2 + v132);
    v124 = sub_24E3461F8();
    sub_24E3451B8();
    v122 = v42;
    v123 = v41;
    v120 = v44;
    v121 = v43;
    v119 = sub_24E3461D8();
    sub_24E3451B8();
    v46 = v45;
    v48 = v47;
    v117 = v50;
    v118 = v49;
    LOBYTE(v144[0]) = 0;
    LOBYTE(v143[0]) = 0;
    memcpy(v141, (v2 + v133), sizeof(v141));
    v51 = *(v40 + 16);
    if (v51 >= 5)
    {
      v51 = 5;
    }

    v115 = v51;
    memcpy(v138, (v2 + v133), 0x180uLL);
    LOBYTE(v143[0]) = 0;

    sub_24E002778(v141, v144);
    sub_24E346B78();
    v116 = v20;
    v52 = v144[0];
    v53 = v144[1];
    v114 = v144[1];
    sub_24E343AA8();
    v144[0] = sub_24E343688();
    v144[1] = v54;
    sub_24DF90C4C();
    v55 = sub_24E348708();
    v57 = v56;

    v58 = sub_24E3461F8();
    sub_24E3451B8();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v138[384] = 0;
    v140[0] = v40;
    memcpy(&v140[1], v138, 0x180uLL);
    LOBYTE(v140[49]) = v52;
    *(&v140[49] + 1) = *v137;
    HIDWORD(v140[49]) = *&v137[3];
    v140[50] = v53;
    v140[51] = v115;
    v140[52] = v55;
    v140[53] = v57;
    LOBYTE(v140[54]) = v58;
    *(&v140[54] + 1) = *v139;
    HIDWORD(v140[54]) = *&v139[3];
    v140[55] = v60;
    v140[56] = v62;
    v140[57] = v64;
    v140[58] = v66;
    LOBYTE(v140[59]) = 0;
    memcpy(&v136[7], v140, 0x1D9uLL);
    v142[0] = v40;
    memcpy(&v142[1], v138, 0x180uLL);
    LOBYTE(v142[49]) = v52;
    v20 = v116;
    *(&v142[49] + 1) = *v137;
    HIDWORD(v142[49]) = *&v137[3];
    v142[50] = v114;
    v142[51] = v115;
    v142[52] = v55;
    v142[53] = v57;
    LOBYTE(v142[54]) = v58;
    *(&v142[54] + 1) = *v139;
    HIDWORD(v142[54]) = *&v139[3];
    v142[55] = v60;
    v142[56] = v62;
    v142[57] = v64;
    v142[58] = v66;
    LOBYTE(v142[59]) = 0;
    sub_24DFA9240();
    sub_24DF8BFF4(v142, &unk_27F1E8440, &qword_24E36E688);
    LOBYTE(v143[0]) = v125;
    LOBYTE(v143[1]) = v124;
    v143[2] = v123;
    v143[3] = v122;
    v143[4] = v121;
    v143[5] = v120;
    LOBYTE(v143[6]) = 0;
    LOBYTE(v143[7]) = v119;
    v143[8] = v46;
    v143[9] = v48;
    v143[10] = v118;
    v143[11] = v117;
    LOBYTE(v143[12]) = 0;
    memcpy(&v143[12] + 1, v136, 0x1E0uLL);
    CGSizeMake();
    memcpy(v144, v143, 0x241uLL);
  }

  else
  {
    sub_24E231C60(v144);
  }

  v67 = v132;
  LODWORD(v125) = *(v2 + v132);
  v124 = sub_24E3461F8();
  sub_24E3451B8();
  v123 = v68;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  LODWORD(v122) = sub_24E3461D8();
  sub_24E3451B8();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  LOBYTE(v143[0]) = 0;
  LOBYTE(v142[0]) = 0;
  v83 = (v2 + v20[8]);
  v84 = *v83;
  v85 = *(v83 + 8);
  v86 = *(v2 + v67);
  memcpy(v141, (v2 + v133), sizeof(v141));
  v87 = *MEMORY[0x277CDA710];
  type metadata accessor for MicaViewInfo();
  swift_allocObject();
  sub_24E31B4E8(0xD000000000000013, 0x800000024E3A11B0, v87, 1, 1.0);
  v88 = v127;
  *v127 = v84;
  *(v88 + 8) = v85;
  *(v88 + 9) = v86;
  memcpy((v88 + 16), v141, 0x180uLL);
  sub_24E002778(v141, v143);
  sub_24E231D70(&qword_27F1E07A0, type metadata accessor for MicaViewInfo, &unk_24E38E9AC);
  v89 = v87;
  *(v88 + 400) = sub_24E3455C8();
  *(v88 + 408) = v90;
  v91 = sub_24E347CB8();
  v92 = GKGameCenterUIFrameworkBundle();
  v93 = GKGetLocalizedStringFromTableInBundle();

  v94 = sub_24E347CF8();
  v96 = v95;

  *(v88 + 416) = v94;
  *(v88 + 424) = v96;
  v97 = *(type metadata accessor for AchievementDetailGlobalPlayerView(0) + 36);
  *(v88 + v97) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v97) = sub_24E3461F8();
  sub_24E3451B8();
  v98 = v88 + *(v126 + 36);
  *v98 = v97;
  *(v98 + 8) = v99;
  *(v98 + 16) = v100;
  *(v98 + 24) = v101;
  *(v98 + 32) = v102;
  *(v98 + 40) = 0;
  v103 = v128;
  sub_24E231C68();
  v104 = v134;
  v105 = v129;
  sub_24DFA9240();
  memcpy(v140, v144, 0x241uLL);
  v106 = v131;
  sub_24DFA9240();
  v107 = v130;
  sub_24E231C68();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8428, &qword_24E386888);
  sub_24DFA9240();
  v109 = *(v108 + 64);
  memcpy(v142, v140, 0x241uLL);
  memcpy((v107 + v109), v140, 0x241uLL);
  v110 = v107 + *(v108 + 80);
  v111 = v124;
  *v110 = v125;
  *(v110 + 8) = v111;
  *(v110 + 16) = v123;
  *(v110 + 24) = v70;
  *(v110 + 32) = v72;
  *(v110 + 40) = v74;
  *(v110 + 48) = 0;
  *(v110 + 56) = v122;
  *(v110 + 64) = v76;
  *(v110 + 72) = v78;
  *(v110 + 80) = v80;
  *(v110 + 88) = v82;
  *(v110 + 96) = 0;
  sub_24DFA9240();
  sub_24DFA9240();
  sub_24DF8BFF4(v88, &unk_27F1E8410, &unk_24E386840);
  sub_24DF8BFF4(v104, &qword_27F1E8420, &qword_24E386850);
  sub_24E231CC0(v135, type metadata accessor for AchievementDetailHeaderView);
  sub_24DF8BFF4(v106, &unk_27F1E8410, &unk_24E386840);
  memcpy(v143, v140, 0x241uLL);
  sub_24DF8BFF4(v143, &unk_27F1E8430, &unk_24E386890);
  sub_24DF8BFF4(v105, &qword_27F1E8420, &qword_24E386850);
  return sub_24E231CC0(v103, type metadata accessor for AchievementDetailHeaderView);
}

uint64_t sub_24E22E448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83F0, &qword_24E386820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83F8, &qword_24E386828);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  *v7 = sub_24E345D08();
  *(v7 + 1) = 0;
  v7[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8400, &qword_24E386830);
  sub_24E22D938(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0, &qword_24E36E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v18 = sub_24E346218();
  *(inited + 32) = v18;
  v19 = sub_24E346238();
  *(inited + 33) = v19;
  v20 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v18)
  {
    v20 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v19)
  {
    v20 = sub_24E346228();
  }

  sub_24E3451B8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24DFA9344();
  v29 = &v13[*(v8 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  sub_24DFA9344();
  sub_24DFA9240();
  *a2 = 0;
  *(a2 + 8) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8408, &qword_24E386838);
  sub_24DFA9240();
  v31 = a2 + *(v30 + 64);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_24DF8BFF4(v16, &qword_27F1E83F8, &qword_24E386828);
  return sub_24DF8BFF4(v10, &qword_27F1E83F8, &qword_24E386828);
}

uint64_t sub_24E22E750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83F0, &qword_24E386820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83F8, &qword_24E386828);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83C0, &qword_24E3867F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83B0, &qword_24E3867E8);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  *v12 = sub_24E345CF8();
  *(v12 + 1) = 0;
  v12[16] = 1;
  *v6 = sub_24E345D08();
  *(v6 + 1) = 0;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8400, &qword_24E386830);
  sub_24E22D938(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0, &qword_24E36E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v17 = sub_24E346218();
  *(inited + 32) = v17;
  v18 = sub_24E346238();
  *(inited + 33) = v18;
  v19 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v17)
  {
    v19 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v18)
  {
    v19 = sub_24E346228();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8460, &qword_24E3868C0);
  sub_24E3451B8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_24DFA9344();
  v28 = &v9[*(v7 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  sub_24DFA9344();
  sub_24E346E28();
  sub_24E3457F8();
  sub_24DFA9344();
  memcpy(&v15[*(v13 + 36)], __src, 0x70uLL);
  v29 = sub_24E346208();
  sub_24E3451B8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v42;
  sub_24DFA9344();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8398, &qword_24E3867E0);
  v40 = v38 + *(result + 36);
  *v40 = v29;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_24E22EB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0720, &unk_24E36E5D0) - 8;
  MEMORY[0x28223BE20](v57);
  v5 = &v56 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0728, &unk_24E3868A0);
  MEMORY[0x28223BE20](v59);
  v60 = &v56 - v6;
  v7 = [*(a1 + *(type metadata accessor for AchievementDetailViewModel(0) + 24)) stringValue];
  v56 = sub_24E347CF8();
  v9 = v8;

  v10 = type metadata accessor for AchievementDetailsView(0);
  v11 = (a1 + *(v10 + 24));
  v12 = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3480, qword_24E375C10);
  sub_24E345368();
  v13 = v63;
  v14 = v11[1];
  v58 = v11;
  v15 = v11[45];
  v16 = type metadata accessor for ASCPrefetchingLockupView(0);
  v17 = &v5[*(v16 + 28)];
  *&v63 = v12;
  sub_24E002620();

  sub_24E345358();
  v18 = type metadata accessor for ASCPrefetchingLockupMetrics(0);
  *&v63 = v13;
  sub_24E345358();
  *&v63 = v14;
  sub_24E345358();
  *&v17[*(v18 + 28)] = v15;
  swift_unknownObjectWeakLoadStrong();
  LOBYTE(v11) = *(a1 + *(v10 + 20));
  *v5 = v56;
  *(v5 + 1) = v9;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34C0, &unk_24E36E5E0);
  sub_24E346B78();
  *(v5 + 1) = v63;
  LOBYTE(v62) = 0;
  sub_24E346B78();
  v19 = *(&v63 + 1);
  v5[32] = v63;
  *(v5 + 5) = v19;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v5[*(v16 + 36)] = v11;
  v20 = sub_24E346E28();
  v22 = v21;
  sub_24E22F084(a1, &v63);
  v23 = v63;
  LOBYTE(v17) = BYTE8(v63);
  v24 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E0740, &unk_24E3868B0) + 36)];
  *v24 = v23;
  v24[8] = v17;
  *(v24 + 2) = v20;
  *(v24 + 3) = v22;
  v25 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8450, &unk_24E36E5F0) + 36)];
  v26 = *(sub_24E3457C8() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24E345C68();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  *v25 = v14;
  *(v25 + 1) = v14;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0, &qword_24E36BC00) + 36)] = 256;
  sub_24E346998();
  v29 = sub_24E3469C8();

  v30 = &v5[*(v57 + 44)];
  *v30 = v29;
  *(v30 + 8) = xmmword_24E36E4E0;
  *(v30 + 3) = 0x4020000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0, &qword_24E36E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  LOBYTE(v18) = sub_24E346218();
  *(inited + 32) = v18;
  v32 = sub_24E346238();
  *(inited + 33) = v32;
  v33 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v18)
  {
    v33 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v32)
  {
    v33 = sub_24E346228();
  }

  sub_24E3451B8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v60;
  sub_24DFA9344();
  v43 = &v42[*(v59 + 36)];
  *v43 = v33;
  *(v43 + 1) = v35;
  *(v43 + 2) = v37;
  *(v43 + 3) = v39;
  *(v43 + 4) = v41;
  v43[40] = 0;
  v44 = sub_24E346208();
  sub_24E3451B8();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v61;
  sub_24DFA9344();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0750, &qword_24E36E608);
  v55 = v53 + *(result + 36);
  *v55 = v44;
  *(v55 + 8) = v46;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = 0;
  return result;
}

uint64_t sub_24E22F084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AchievementDetailsView(0) + 20)))
  {
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F20AC30;
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    v3 = &qword_27F20ABB8;
  }

  memcpy(__dst, v3, 0x78uLL);
  v4 = *&__dst[7];
  v5 = BYTE9(__dst[6]);
  v6 = BYTE8(__dst[6]);
  v14 = *(&__dst[4] + 8);
  v15 = *(&__dst[5] + 8);
  v12 = __dst[1];
  v13 = *(&__dst[3] + 8);
  v11 = __dst[0];
  v7 = __dst[2];
  v8 = __dst[3];
  sub_24E002674(__dst, &v16);
  __dst[0] = v11;
  __dst[1] = v12;
  __dst[2] = v7;
  LOBYTE(__dst[3]) = v8;
  *(&__dst[3] + 8) = v13;
  *(&__dst[4] + 8) = v14;
  *(&__dst[5] + 8) = v15;
  BYTE8(__dst[6]) = v6;
  BYTE9(__dst[6]) = v5;
  *&__dst[7] = v4;
  sub_24E0026D0(__dst);
  sub_24E002724();
  if (!v6)
  {
  }

  result = sub_24E345E38();
  v10 = v17;
  *a2 = v16;
  *(a2 + 8) = v10;
  return result;
}

void *sub_24E22F27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8338, &qword_24E3867C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __src - v6;
  *v7 = sub_24E345CF8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8508, &qword_24E386958);
  sub_24E22F3D8(a1, &v7[*(v8 + 44)]);
  sub_24E346E28();
  sub_24E3457F8();
  sub_24DFA9344();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8320, &qword_24E3867C0);
  return memcpy((a2 + *(v9 + 36)), __src, 0x70uLL);
}

uint64_t sub_24E22F3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v82 = type metadata accessor for ASCPrefetchingLockupView(0);
  MEMORY[0x28223BE20](v82);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84D8, &qword_24E386928);
  MEMORY[0x28223BE20](v84);
  v87 = &v78 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8510, &qword_24E386960);
  MEMORY[0x28223BE20](v86);
  v90 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v78 - v9;
  MEMORY[0x28223BE20](v10);
  v89 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83F0, &qword_24E386820);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E83F8, &qword_24E386828);
  MEMORY[0x28223BE20](v15);
  v88 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - v21;
  *v14 = sub_24E345D08();
  *(v14 + 1) = 0;
  v14[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8400, &qword_24E386830);
  sub_24E22D938(a1);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0, &qword_24E36E600);
  inited = swift_initStackObject();
  v80 = xmmword_24E36A270;
  *(inited + 16) = xmmword_24E36A270;
  v24 = sub_24E346218();
  *(inited + 32) = v24;
  v25 = sub_24E346238();
  *(inited + 33) = v25;
  v26 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v24)
  {
    v26 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v25)
  {
    v26 = sub_24E346228();
  }

  sub_24E3451B8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_24DFA9344();
  v35 = &v19[*(v15 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v83 = v22;
  sub_24DFA9344();
  v36 = [*(a1 + *(type metadata accessor for AchievementDetailViewModel(0) + 24)) stringValue];
  v79 = sub_24E347CF8();
  v78 = v37;

  v38 = type metadata accessor for AchievementDetailsView(0);
  v39 = (a1 + *(v38 + 24));
  v40 = v39[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3480, qword_24E375C10);
  sub_24E345368();
  v41 = *&v93 + *&v93;
  v42 = v39[1];
  v43 = v39[45];
  v44 = v82;
  v45 = &v5[*(v82 + 28)];
  *&v93 = v40;
  sub_24E002620();

  sub_24E345358();
  v46 = type metadata accessor for ASCPrefetchingLockupMetrics(0);
  *&v93 = v41;
  sub_24E345358();
  *&v93 = v42;
  sub_24E345358();
  *&v45[*(v46 + 28)] = v43;
  LOBYTE(v43) = *(a1 + *(v38 + 20));
  v47 = v78;
  *v5 = v79;
  *(v5 + 1) = v47;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34C0, &unk_24E36E5E0);
  sub_24E346B78();
  *(v5 + 1) = v93;
  LOBYTE(v92) = 0;
  sub_24E346B78();
  v48 = *(&v93 + 1);
  v5[32] = v93;
  *(v5 + 5) = v48;
  swift_unknownObjectWeakInit();
  v5[*(v44 + 36)] = v43;
  v49 = swift_initStackObject();
  *(v49 + 16) = v80;
  LOBYTE(v44) = sub_24E346218();
  *(v49 + 32) = v44;
  v50 = sub_24E346238();
  *(v49 + 33) = v50;
  v51 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v44)
  {
    v51 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v50)
  {
    v51 = sub_24E346228();
  }

  sub_24E3451B8();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v87;
  sub_24E231D18();
  v61 = &v60[*(v84 + 36)];
  *v61 = v51;
  *(v61 + 1) = v53;
  *(v61 + 2) = v55;
  *(v61 + 3) = v57;
  *(v61 + 4) = v59;
  v61[40] = 0;
  v62 = sub_24E346208();
  sub_24E3451B8();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v85;
  sub_24DFA9344();
  v72 = &v71[*(v86 + 36)];
  *v72 = v62;
  *(v72 + 1) = v64;
  *(v72 + 2) = v66;
  *(v72 + 3) = v68;
  *(v72 + 4) = v70;
  v72[40] = 0;
  v73 = v89;
  sub_24DFA9344();
  v74 = v83;
  v75 = v88;
  sub_24DFA9240();
  v76 = v90;
  sub_24DFA9240();
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8518, &unk_24E386968);
  sub_24DFA9240();
  sub_24DF8BFF4(v73, &qword_27F1E8510, &qword_24E386960);
  sub_24DF8BFF4(v74, &qword_27F1E83F8, &qword_24E386828);
  sub_24DF8BFF4(v76, &qword_27F1E8510, &qword_24E386960);
  return sub_24DF8BFF4(v75, &qword_27F1E83F8, &qword_24E386828);
}

uint64_t sub_24E22FBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8468, &qword_24E3868C8);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = type metadata accessor for AchievementDetailHeaderView(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8470, &qword_24E3868D0);
  MEMORY[0x28223BE20](v49);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8478, &qword_24E3868D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8480, &qword_24E3868E0);
  MEMORY[0x28223BE20](v51);
  v52 = &v48 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8488, &qword_24E3868E8);
  MEMORY[0x28223BE20](v50);
  v54 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v22);
  v53 = &v48 - v23;
  *v16 = sub_24E345CF8();
  *(v16 + 1) = 0;
  v16[16] = 1;
  type metadata accessor for AchievementDetailViewModel(0);
  sub_24E231C68();
  v24 = type metadata accessor for AchievementDetailsView(0);
  v25 = *(v24 + 24);
  v26 = *(a1 + *(v24 + 20));
  memcpy(v59, (a1 + v25), 0x180uLL);
  v11[*(v9 + 28)] = v26;
  v27 = &v11[*(v9 + 32)];
  v55 = a1;
  memcpy(v27, (a1 + v25), 0x180uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0, &qword_24E36E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  sub_24E002778(v59, v58);
  LOBYTE(a1) = sub_24E346218();
  *(inited + 32) = a1;
  v29 = sub_24E346238();
  *(inited + 33) = v29;
  v30 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != a1)
  {
    v30 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v29)
  {
    v30 = sub_24E346228();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8490, &qword_24E3868F0);
  sub_24E3451B8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_24E231D18();
  v39 = &v13[*(v49 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  sub_24DFA9344();
  sub_24E346E28();
  sub_24E3457F8();
  v40 = v52;
  sub_24DFA9344();
  memcpy(&v40[*(v51 + 36)], v58, 0x70uLL);
  v41 = &v21[*(v50 + 36)];
  sub_24E346DB8();
  v42 = sub_24E3461E8();
  v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8498, &qword_24E3868F8) + 36)] = v42;
  sub_24DFA9344();
  v43 = v53;
  sub_24DFA9344();
  *v7 = sub_24E345D08();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84A0, &qword_24E386900);
  sub_24E23023C(v55, &v7[*(v44 + 44)]);
  v45 = v54;
  sub_24DFA9240();
  v46 = v57;
  sub_24DFA9240();
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84A8, &qword_24E386908);
  sub_24DFA9240();
  sub_24DF8BFF4(v7, &qword_27F1E8468, &qword_24E3868C8);
  sub_24DF8BFF4(v43, &qword_27F1E8488, &qword_24E3868E8);
  sub_24DF8BFF4(v46, &qword_27F1E8468, &qword_24E3868C8);
  return sub_24DF8BFF4(v45, &qword_27F1E8488, &qword_24E3868E8);
}

uint64_t sub_24E23023C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84B0, &qword_24E386910);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84B8, &qword_24E386918);
  MEMORY[0x28223BE20](v20);
  v5 = type metadata accessor for AchievementDetailViewModel(0);
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for AchievementsDetailsSecondaryView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v24[3] = &type metadata for GKFeatureFlags;
  v24[4] = sub_24DFA0CB4();
  LOBYTE(v24[0]) = 12;
  v12 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v24);
  if ((v12 & 1) != 0 && *(*(a1 + *(v5 + 28)) + 16))
  {
    sub_24E231C68();
    v13 = type metadata accessor for AchievementDetailsView(0);
    v14 = *(a1 + *(v13 + 20));
    memcpy(v24, (a1 + *(v13 + 24)), 0x180uLL);
    sub_24E002778(v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3480, qword_24E375C10);
    sub_24E345368();
    v15 = v23[0];
    v16 = a1 + *(v5 + 20);
    if (*(v16 + *(type metadata accessor for Achievement(0) + 48) + 8))
    {
      v17 = 0.0;
    }

    else
    {
      v17 = *&v24[22];
    }

    sub_24E231D18();
    v8[v6[5]] = v14;
    memcpy(&v8[v6[6]], v24, 0x180uLL);
    *&v8[v6[7]] = v15;
    *&v8[v6[8]] = v17;
    swift_unknownObjectWeakInit();
    sub_24E231D18();
    sub_24E231C68();
    swift_storeEnumTagMultiPayload();
    sub_24E231D70(&qword_27F1E84C8, type metadata accessor for AchievementsDetailsSecondaryView, &unk_24E36E548);
    sub_24DFB4C28(&qword_27F1E84D0, &qword_27F1E84B0, &qword_24E386910, MEMORY[0x277CE1198]);
    sub_24E345E38();
    return sub_24E231CC0(v11, type metadata accessor for AchievementsDetailsSecondaryView);
  }

  else
  {
    *v4 = sub_24E345D08();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84C0, &qword_24E386920);
    sub_24E230718(a1, &v4[*(v19 + 44)]);
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24E231D70(&qword_27F1E84C8, type metadata accessor for AchievementsDetailsSecondaryView, &unk_24E36E548);
    sub_24DFB4C28(&qword_27F1E84D0, &qword_27F1E84B0, &qword_24E386910, MEMORY[0x277CE1198]);
    sub_24E345E38();
    return sub_24DF8BFF4(v4, &qword_27F1E84B0, &qword_24E386910);
  }
}

uint64_t sub_24E230718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for ASCPrefetchingLockupView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84D8, &qword_24E386928);
  MEMORY[0x28223BE20](v61);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v56 - v9;
  MEMORY[0x28223BE20](v10);
  v63 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84E0, &qword_24E386930);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84E8, &qword_24E386938);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v62 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  *v14 = sub_24E345D08();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84F0, &qword_24E386940);
  sub_24E230E28(a1, &v14[*(v24 + 44)]);
  sub_24E346E28();
  sub_24E3457F8();
  sub_24DFA9344();
  memcpy(&v20[*(v16 + 44)], __src, 0x70uLL);
  v59 = v23;
  sub_24DFA9344();
  v25 = [*(a1 + *(type metadata accessor for AchievementDetailViewModel(0) + 24)) stringValue];
  v57 = sub_24E347CF8();
  v27 = v26;

  v28 = type metadata accessor for AchievementDetailsView(0);
  v29 = (a1 + *(v28 + 24));
  v30 = v29[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3480, qword_24E375C10);
  sub_24E345368();
  v31 = v67;
  v32 = v29[1];
  v58 = v29;
  v33 = v29[45];
  v34 = &v6[*(v4 + 36)];
  *&v67 = v30;
  sub_24E002620();

  sub_24E345358();
  v35 = type metadata accessor for ASCPrefetchingLockupMetrics(0);
  *&v67 = v31;
  sub_24E345358();
  *&v67 = v32;
  sub_24E345358();
  *&v34[*(v35 + 28)] = v33;
  swift_unknownObjectWeakLoadStrong();
  LOBYTE(a1) = *(a1 + *(v28 + 20));
  *v6 = v57;
  *(v6 + 1) = v27;
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34C0, &unk_24E36E5E0);
  sub_24E346B78();
  *(v6 + 1) = v67;
  LOBYTE(v66) = 0;
  sub_24E346B78();
  v36 = *(&v67 + 1);
  v6[32] = v67;
  *(v6 + 5) = v36;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v6[*(v4 + 44)] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34F0, &qword_24E36E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  LOBYTE(v28) = sub_24E346218();
  *(inited + 32) = v28;
  v38 = sub_24E346238();
  *(inited + 33) = v38;
  v39 = sub_24E346208();
  *(inited + 34) = v39;
  v40 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v28)
  {
    v40 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v38)
  {
    v40 = sub_24E346228();
  }

  sub_24E346228();
  if (sub_24E346228() != v39)
  {
    v40 = sub_24E346228();
  }

  sub_24E3451B8();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v60;
  sub_24E231D18();
  v50 = &v49[*(v61 + 36)];
  *v50 = v40;
  *(v50 + 1) = v42;
  *(v50 + 2) = v44;
  *(v50 + 3) = v46;
  *(v50 + 4) = v48;
  v50[40] = 0;
  v51 = v63;
  sub_24DFA9344();
  v52 = v59;
  v53 = v62;
  sub_24DFA9240();
  v54 = v64;
  sub_24DFA9240();
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E84F8, &qword_24E386948);
  sub_24DFA9240();
  sub_24DF8BFF4(v51, &qword_27F1E84D8, &qword_24E386928);
  sub_24DF8BFF4(v52, &qword_27F1E84E8, &qword_24E386938);
  sub_24DF8BFF4(v54, &qword_27F1E84D8, &qword_24E386928);
  return sub_24DF8BFF4(v53, &qword_27F1E84E8, &qword_24E386938);
}

uint64_t sub_24E230E28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v43 = type metadata accessor for AchievementDetailGlobalPlayerView(0) - 8;
  MEMORY[0x28223BE20](v43);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8410, &unk_24E386840);
  MEMORY[0x28223BE20](v45);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v42 - v7;
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - v9;
  v10 = (a1 + *(type metadata accessor for AchievementDetailViewModel(0) + 32));
  v42 = *v10;
  v11 = *(v10 + 8);
  v12 = type metadata accessor for AchievementDetailsView(0);
  v13 = *(v12 + 24);
  v14 = *(a1 + *(v12 + 20));
  memcpy(v50, (a1 + v13), 0x180uLL);
  v15 = *MEMORY[0x277CDA710];
  type metadata accessor for MicaViewInfo();
  swift_allocObject();
  sub_24E31B4E8(0xD000000000000013, 0x800000024E3A11B0, v15, 1, 1.0);
  *v4 = v42;
  v4[8] = v11;
  v4[9] = v14;
  memcpy(v4 + 16, (a1 + v13), 0x180uLL);
  sub_24E002778(v50, &v49);
  sub_24E231D70(&qword_27F1E07A0, type metadata accessor for MicaViewInfo, &unk_24E38E9AC);
  v16 = v15;
  *(v4 + 50) = sub_24E3455C8();
  *(v4 + 51) = v17;
  v18 = sub_24E347CB8();
  v19 = GKGameCenterUIFrameworkBundle();
  v20 = GKGetLocalizedStringFromTableInBundle();

  v21 = sub_24E347CF8();
  v23 = v22;

  *(v4 + 52) = v21;
  *(v4 + 53) = v23;
  v24 = *(v43 + 44);
  *&v4[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v23) = sub_24E3461F8();
  v25 = sub_24E346228();
  sub_24E346228();
  if (sub_24E346228() != v23)
  {
    v25 = sub_24E346228();
  }

  sub_24E3451B8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v44;
  sub_24E231D18();
  v35 = v46;
  v36 = &v34[*(v45 + 36)];
  *v36 = v25;
  *(v36 + 1) = v27;
  *(v36 + 2) = v29;
  *(v36 + 3) = v31;
  *(v36 + 4) = v33;
  v36[40] = 0;
  sub_24DFA9344();
  v37 = v47;
  sub_24DFA9240();
  v38 = v48;
  *v48 = 0;
  *(v38 + 8) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8500, &qword_24E386950);
  sub_24DFA9240();
  v40 = v38 + *(v39 + 64);
  *v40 = 0;
  v40[8] = 1;
  sub_24DF8BFF4(v35, &unk_27F1E8410, &unk_24E386840);
  return sub_24DF8BFF4(v37, &unk_27F1E8410, &unk_24E386840);
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for AchievementDetailsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v27 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v5 = type metadata accessor for AchievementDetailViewModel(0);
  v6 = (v0 + v3 + v5[5]);
  __swift_destroy_boxed_opaque_existential_1(v6);

  sub_24E154E88(*(v6 + 9), *(v6 + 10), *(v6 + 11));
  v7 = type metadata accessor for Achievement(0);
  v8 = v7[8];
  v9 = sub_24E343368();
  if (!__swift_getEnumTagSinglePayload(&v6[v8], 1, v9))
  {
    OUTLINED_FUNCTION_22_0();
    (*(v10 + 8))(&v6[v8], v9);
  }

  v11 = &v6[v7[9]];
  if (*(v11 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  if (*&v6[v7[10] + 16])
  {
  }

  if (*&v6[v7[12] + 8])
  {
  }

  v12 = v7[14];
  v13 = sub_24E3474B8();
  if (!__swift_getEnumTagSinglePayload(&v6[v12], 1, v13))
  {
    OUTLINED_FUNCTION_22_0();
    (*(v14 + 8))(&v6[v12], v13);
  }

  if (*(v4 + v5[9]))
  {
  }

  if (*(v4 + v5[10]))
  {
  }

  v15 = v4 + v1[6];

  MEMORY[0x253040FB0](v4 + v1[7]);
  v16 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24E345F38();
    if (!__swift_getEnumTagSinglePayload(v4 + v16, 1, v17))
    {
      OUTLINED_FUNCTION_22_0();
      (*(v18 + 8))(v4 + v16, v17);
    }
  }

  else
  {
  }

  v19 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_24E345F38();
    if (!__swift_getEnumTagSinglePayload(v4 + v19, 1, v20))
    {
      OUTLINED_FUNCTION_22_0();
      (*(v21 + 8))(v4 + v19, v20);
    }
  }

  else
  {
  }

  v22 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_5_2();
    (*(v23 + 8))(v4 + v22);
  }

  else
  {
  }

  v24 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3480, qword_24E375C10);
  OUTLINED_FUNCTION_5_2();
  (*(v25 + 8))(v4 + v24);

  return MEMORY[0x2821FE8E8](v0, v3 + v27, v2 | 7);
}

uint64_t sub_24E23173C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AchievementDetailsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_24E2317DC()
{
  result = qword_27F1E8328;
  if (!qword_27F1E8328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8320, &qword_24E3867C0);
    sub_24DFB4C28(&qword_27F1E8330, &qword_27F1E8338, &qword_24E3867C8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8328);
  }

  return result;
}

unint64_t sub_24E231894()
{
  result = qword_27F1E8340;
  if (!qword_27F1E8340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E82D8, &qword_24E386778);
    sub_24E23194C();
    sub_24DFB4C28(&qword_27F1E8378, &qword_27F1E82C0, &qword_24E386760, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8340);
  }

  return result;
}

unint64_t sub_24E23194C()
{
  result = qword_27F1E8348;
  if (!qword_27F1E8348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8310, &qword_24E3867B0);
    sub_24E231A60(&qword_27F1E8350, &qword_27F1E8308, &qword_24E3867A8, sub_24E231A30);
    sub_24DFB4C28(&qword_27F1E8370, &qword_27F1E82E0, &qword_24E386780, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8348);
  }

  return result;
}

uint64_t sub_24E231A60(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E231AE4()
{
  result = qword_27F1E8360;
  if (!qword_27F1E8360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E82F8, &qword_24E386798);
    sub_24DFB4C28(&qword_27F1E8368, &qword_27F1E82F0, &qword_24E386790, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8360);
  }

  return result;
}

unint64_t sub_24E231BA8()
{
  result = qword_27F1E83A8;
  if (!qword_27F1E83A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E83B0, &qword_24E3867E8);
    sub_24DFB4C28(&qword_27F1E83B8, &qword_27F1E83C0, &qword_24E3867F0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E83A8);
  }

  return result;
}

uint64_t sub_24E231C68()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E231CC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E231D18()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E231D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E231DB8()
{
  result = qword_27F1E8528;
  if (!qword_27F1E8528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F1E8530, qword_24E386980);
    v1 = MEMORY[0x277CDF7D8];
    sub_24DFB4C28(&qword_27F1E82A0, &qword_27F1E8290, &qword_24E386740, MEMORY[0x277CDF7D8]);
    sub_24DFB4C28(&qword_27F1E82A8, &qword_27F1E8298, &qword_24E386748, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8528);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_93()
{

  return sub_24E231D18();
}

uint64_t OUTLINED_FUNCTION_12_41()
{

  return sub_24DFA9240();
}

void OUTLINED_FUNCTION_13_47()
{
  v7 = v1 + *(v2 + 36);
  *v7 = v0;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_16_34()
{

  return sub_24DFA9240();
}

uint64_t OUTLINED_FUNCTION_22_25()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for AchievementDetailGlobalPlayerView(uint64_t a1)
{
  result = qword_27F1E8540;
  if (!qword_27F1E8540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E232054(uint64_t a1)
{
  sub_24E232110();
  if (v1 <= 0x3F)
  {
    sub_24E232160(319);
    if (v2 <= 0x3F)
    {
      sub_24E04ACC8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E232110()
{
  if (!qword_27F1E8550)
  {
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E8550);
    }
  }
}

void sub_24E232160(uint64_t a1)
{
  if (!qword_27F1E8558)
  {
    type metadata accessor for MicaViewInfo();
    sub_24E0027D4();
    v1 = sub_24E3455D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E8558);
    }
  }
}

uint64_t sub_24E2321E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E346E88();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8560, &qword_24E386A18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  *v12 = sub_24E345D08();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8568, &qword_24E386A20);
  sub_24E2324F4(v2, &v12[*(v13 + 44)]);
  v14 = *(v2 + 9);
  v33 = a1;
  v32 = v4;
  if (v14)
  {
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    v15 = &qword_27F20AC30;
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    v15 = &qword_27F20ABB8;
  }

  memcpy(__dst, v15, sizeof(__dst));
  v16 = *&__dst[112];
  v17 = __dst[105];
  v18 = __dst[104];
  v31 = *&__dst[88];
  v30 = *&__dst[72];
  v29 = *&__dst[56];
  v28 = *&__dst[16];
  v27 = *__dst;
  v20 = *&__dst[32];
  v19 = *&__dst[40];
  v21 = __dst[48];
  sub_24E002674(__dst, v34);
  *__dst = v27;
  *&__dst[16] = v28;
  *&__dst[32] = v20;
  *&__dst[40] = v19;
  __dst[48] = v21;
  *&__dst[56] = v29;
  *&__dst[72] = v30;
  *&__dst[88] = v31;
  __dst[104] = v18;
  __dst[105] = v17;
  *&__dst[112] = v16;
  sub_24E0026D0(__dst);
  v22 = MEMORY[0x277CE13B8];
  if (!v18)
  {
    v22 = MEMORY[0x277CE13D8];
  }

  v23 = v32;
  (*(v6 + 104))(v9, *v22, v32);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8570, &qword_24E386A28);
  v25 = v33;
  (*(v6 + 32))(v33 + *(v24 + 36), v9, v23);
  return sub_24E232F10(v12, v25);
}

uint64_t sub_24E2324F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for AchievementDetailGlobalPlayerView(0);
  v48 = *(v3 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8578, &qword_24E386A30) - 8;
  MEMORY[0x28223BE20](v46);
  v49 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v42[-v7];
  v9 = a1[53];
  v51 = a1[52];
  v52 = v9;
  sub_24DF90C4C();

  v10 = sub_24E3464E8();
  v12 = v11;
  v14 = v13;
  v15 = sub_24E3464B8();
  v17 = v16;
  v19 = v18;
  sub_24DFA92EC(v10, v12, v14 & 1);

  v20 = sub_24E346468();
  v22 = v21;
  LOBYTE(v10) = v23;
  sub_24DFA92EC(v15, v17, v19 & 1);

  sub_24E3462B8();
  v24 = sub_24E346448();
  v26 = v25;
  v43 = v27;
  v44 = v28;
  sub_24DFA92EC(v20, v22, v10 & 1);

  KeyPath = swift_getKeyPath();
  v30 = sub_24E345D08();
  v31 = a1[41];
  v32 = sub_24E345BF8();
  v33 = v45;
  sub_24E232F80(a1, v45);
  v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v35 = swift_allocObject();
  sub_24E00282C(v33, v35 + v34);
  v36 = *(v46 + 60);
  *&v8[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  *v8 = sub_24E232FE4;
  *(v8 + 1) = v35;
  *(v8 + 2) = v30;
  *(v8 + 3) = v31;
  v8[32] = 0;
  *(v8 + 5) = v32;
  *(v8 + 6) = 0;
  v8[56] = 1;
  v37 = v49;
  sub_24DF8BD90(v8, v49, &qword_27F1E8578, &qword_24E386A30);
  v38 = v50;
  *v50 = v24;
  v38[1] = v26;
  LOBYTE(v30) = v43 & 1;
  *(v38 + 16) = v43 & 1;
  v38[3] = v44;
  v38[4] = KeyPath;
  *(v38 + 40) = 0;
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8580, &qword_24E386AA0);
  sub_24DF8BD90(v37, v39 + *(v40 + 48), &qword_27F1E8578, &qword_24E386A30);
  sub_24DF82DD4(v24, v26, v30);

  sub_24DF8BFF4(v8, &qword_27F1E8578, &qword_24E386A30);
  sub_24DF8BFF4(v37, &qword_27F1E8578, &qword_24E386A30);
  sub_24DFA92EC(v24, v26, v30);
}

uint64_t sub_24E2328DC@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v3 = sub_24E343128();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8588, &qword_24E386AA8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = a1[36];
  v15 = a1[37];

  sub_24E097AC0(v16, v28, v14, v15);
  sub_24E346E28();
  sub_24E3453D8();
  sub_24E232BD4(v6);
  sub_24E0EB6CC(v6, v13);
  (*(v4 + 8))(v6, v3);
  v17 = *(a1 + 18);
  KeyPath = swift_getKeyPath();
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8590, &qword_24E386AE0) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v20 = *(a1 + 31);
  v21 = swift_getKeyPath();
  v22 = &v13[*(v8 + 44)];
  *v22 = v21;
  v22[1] = v20;
  sub_24DF8BD90(v13, v10, &qword_27F1E8588, &qword_24E386AA8);
  memcpy(v29, v28, sizeof(v29));
  v23 = v27;
  memcpy(v27, v28, 0x58uLL);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8598, &qword_24E386B18) + 48);
  sub_24DF8BD90(v10, v24, &qword_27F1E8588, &qword_24E386AA8);

  sub_24DF8BD90(v29, v30, &qword_27F1E85A0, qword_24E386B20);
  sub_24DF8BFF4(v13, &qword_27F1E8588, &qword_24E386AA8);
  sub_24DF8BFF4(v10, &qword_27F1E8588, &qword_24E386AA8);
  memcpy(v30, v28, 0x58uLL);
  return sub_24DF8BFF4(v30, &qword_27F1E85A0, qword_24E386B20);
}

uint64_t sub_24E232BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24E343128();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_24E343AA8();
  sub_24E343698();
  if (*(v1 + 8))
  {
    return (*(v5 + 32))(a1, v11, v3);
  }

  v12 = *v1;
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v13 setNumberStyle_];
  sub_24DF97DD4();
  v14 = sub_24E3485F8();
  [v13 setMultiplier_];

  [v13 setMaximumFractionDigits_];
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v16 = [v13 stringFromNumber_];

  if (!v16)
  {

    return (*(v5 + 32))(a1, v11, v3);
  }

  v23 = a1;
  sub_24E347CF8();

  if (v12 < COERCE_DOUBLE(1) || v12 >= 0.1)
  {
    if (v12 >= 0.1 && v12 < 10.0)
    {
      OUTLINED_FUNCTION_1_122();
      sub_24E343778();
    }

    else
    {
      OUTLINED_FUNCTION_1_122();
      sub_24E3436F8();
    }

    goto LABEL_16;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v18 = [v13 stringFromNumber_];

  if (v18)
  {
    sub_24E347CF8();

    sub_24E3439D8();

LABEL_16:
    (*(v5 + 8))(v11, v3);
    v21 = *(v5 + 32);
    v21(v11, v8, v3);
    return (v21)(v23, v11, v3);
  }

  return (*(v5 + 32))(v23, v11, v3);
}

uint64_t sub_24E232F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8560, &qword_24E386A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E232F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetailGlobalPlayerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E232FE4@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementDetailGlobalPlayerView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24E2328DC(v4, a1);
}

unint64_t sub_24E233054()
{
  result = qword_27F1E85A8;
  if (!qword_27F1E85A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8570, &qword_24E386A28);
    sub_24E2330E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E85A8);
  }

  return result;
}

unint64_t sub_24E2330E0()
{
  result = qword_27F1E85B0;
  if (!qword_27F1E85B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8560, &qword_24E386A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E85B0);
  }

  return result;
}

uint64_t sub_24E233158()
{
  [v0 copyWithZone_];
  sub_24E3487A8();
  swift_unknownObjectRelease();
  sub_24DF88A8C(0, &qword_27F1E8600, 0x277D752C0);
  swift_dynamicCast();
  return v2;
}

id sub_24E2331E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_24E23325C(uint64_t a1)
{
  *(v1 + 16) = 0x407F400000000000;
  swift_weakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = MEMORY[0x277D84F90];
  *(v1 + 48) = 257;
  swift_weakAssign();

  return v1;
}

void sub_24E2332C4()
{
  OUTLINED_FUNCTION_32();
  v54 = v2;
  v55 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA7D0, &unk_24E36C0E0);
  OUTLINED_FUNCTION_0_14();
  v52 = v4;
  v53 = v3;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_3();
  v51 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CD0, &unk_24E36D1A0);
  OUTLINED_FUNCTION_0_14();
  v49 = v8;
  v50 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v48 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_4_5(v11);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v15 = sub_24E347638();
  v16 = OUTLINED_FUNCTION_4_5(v15);
  MEMORY[0x28223BE20](v16);
  v46 = sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_bootstrapPresenter] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_compositionalLayout] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource] = 0;
  v22 = OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_components;
  if (qword_27F1DD908 != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  *&v0[v22] = qword_27F20B010;
  v23 = OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_navigationBarFocusGuide;
  v24 = objc_allocWithZone(MEMORY[0x277D75500]);

  *&v0[v23] = [v24 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E9810, &qword_24E371680);
  swift_allocObject();

  v57[0] = sub_24E347578();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8608, &qword_24E386B88);
  swift_allocObject();
  sub_24DFB4C28(&qword_27F1E9820, &unk_27F1E9810, &qword_24E371680, MEMORY[0x277D22080]);
  *&v0[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_statePresenter] = sub_24E344898();
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  (*(v18 + 16))(v21, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v46);
  sub_24E347628();
  v25 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v25);
  sub_24E3476A8();
  swift_allocObject();
  v26 = sub_24E347658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8610, &unk_24E386B90);
  swift_allocObject();

  *&v0[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_infiniteScrollObserver] = sub_24E23325C(v27);
  v58.receiver = v0;
  v58.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v58, sel_initWithNibName_bundle_, 0, 0);
  memset(v57, 0, sizeof(v57));
  sub_24DF9DEAC(v57, v56, &qword_27F1E1B70, qword_24E3756A0);
  v29 = objc_allocWithZone(type metadata accessor for BootstrapPresenter());
  v30 = v28;
  v31 = v54;
  swift_retain_n();
  v32 = v30;

  ObjectType = v26;
  v33 = sub_24E190B5C(v28, v56, 0, v26, 0, 0, v31);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_286126208;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CF0, &unk_24E36C120);
  v34 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&qword_27F1DFB10, &unk_27F1E1CF0, &unk_24E36C120, MEMORY[0x277D21A98]);
  sub_24E347198();
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v56);
  v35 = OUTLINED_FUNCTION_15_32();
  v36(v35);
  OUTLINED_FUNCTION_16_4();
  *(swift_allocObject() + 24) = &off_286126208;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00, &qword_24E375EB0);
  sub_24DFB4C28(&qword_27F1DFB18, &unk_27F1E1D00, &qword_24E375EB0, v34);
  sub_24E347198();
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v56);
  v37 = OUTLINED_FUNCTION_15_32();
  v38(v37);

  sub_24DF8C95C(v57, &qword_27F1E1B70, qword_24E3756A0);
  v39 = *&v32[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_bootstrapPresenter];
  *&v32[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_bootstrapPresenter] = v33;

  v40 = v32;
  v41 = sub_24E3448A8();
  sub_24E2E7B74(v41, v40);

  v42 = [v40 navigationItem];
  [v42 setLargeTitleDisplayMode_];

  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for PlayerCardTheme(0);
  v44 = __swift_project_value_buffer(v43, qword_27F20BF00);
  sub_24DFFE82C(*v44);

  OUTLINED_FUNCTION_18();
}

void sub_24E233A98()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_bootstrapPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_compositionalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_components;
  if (qword_27F1DD908 != -1)
  {
    OUTLINED_FUNCTION_10_13();
    swift_once();
  }

  *(v0 + v1) = qword_27F20B010;
  v2 = OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_navigationBarFocusGuide;
  v3 = objc_allocWithZone(MEMORY[0x277D75500]);

  *(v0 + v2) = [v3 init];
  sub_24E348AE8();
  __break(1u);
}

void sub_24E233BAC()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_bootstrapPresenter];
  if (v1)
  {
    v2 = v1;
    sub_24E19116C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_24E233C58(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_navigationBarFocusGuide];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_24E369990;
      *(v7 + 32) = v5;
      v8 = v5;
      sub_24DFD7FD0(v7, v6);
      v9 = v8;
      [v9 addLayoutGuide_];
      [objc_opt_self() _gkInstallEdgeConstraintsForLayoutGuide_containedWithinParentView_];
    }
  }

  v10 = [v1 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsFocusUpdate];
  }
}

void sub_24E233E04(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    if (v5)
    {
      [v5 removeLayoutGuide_];
    }
  }
}

void sub_24E233F08()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v34 = v3;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C30, &unk_24E36C0A0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0070, &unk_24E36D170);
  OUTLINED_FUNCTION_0_14();
  v36 = v6;
  v37 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_3();
  v35 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E85F0, &qword_24E386B78);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40, &unk_24E375E80);
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_9();
  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0, &unk_24E36FA60);
  v14 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&unk_27F1E1C50, &unk_27F1E6CC0, &unk_24E36FA60, MEMORY[0x277D21A98]);
  sub_24E347198();
  OUTLINED_FUNCTION_12_42();
  OUTLINED_FUNCTION_15_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v38);
  (*(v12 + 8))(v1, v10);
  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0F00, &unk_24E36FA70);
  sub_24DFB4C28(&qword_27F1E85F8, &qword_27F1E0F00, &unk_24E36FA70, v14);
  sub_24E347198();
  OUTLINED_FUNCTION_12_42();
  OUTLINED_FUNCTION_15_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v38);
  v15 = OUTLINED_FUNCTION_15_32();
  v16(v15);
  sub_24E3448A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0078, &unk_24E36D180);
  sub_24DFB4C28(&unk_27F1EA170, &qword_27F1E0078, &unk_24E36D180, v14);
  sub_24E347198();
  OUTLINED_FUNCTION_12_42();
  OUTLINED_FUNCTION_15_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v38);
  (*(v36 + 8))(v35, v37);
  v17 = OUTLINED_FUNCTION_20_7();
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  sub_24E1E086C();

  if (!OUTLINED_FUNCTION_20_7())
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E97E0, &unk_24E371660));
  v19 = sub_24E344CB8();
  v20 = OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource;
  v21 = *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource) = v19;

  v22 = OUTLINED_FUNCTION_20_7();
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = *(v0 + v20);
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v22;
  v25 = v23;
  sub_24E0B0548(v24, v25, v34);

  v26 = OUTLINED_FUNCTION_20_7();
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  [v26 setDataSource_];

  v28 = OUTLINED_FUNCTION_20_7();
  if (v28)
  {
    v29 = v28;
    sub_24E235438();
    v31 = v30;
    [v29 setCollectionViewLayout_];

    sub_24E3448A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70, &unk_24E36C0B0);
    sub_24DFB4C28(&unk_27F1E97F0, &unk_27F1E1C70, &unk_24E36C0B0, MEMORY[0x277D21A98]);
    sub_24E347198();
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_15_13();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v38);
    v32 = OUTLINED_FUNCTION_15_32();
    v33(v32);
    sub_24E226244(*(v2 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_infiniteScrollObserver), &off_2861219B0);
    sub_24E3448A8();
    sub_24E021D20();

    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_13:
  __break(1u);
}

void (*sub_24E234638(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E237684;
}

void sub_24E23469C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_24E2346DC(&v2);
}

void sub_24E2346DC(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  if (*a1 != 2)
  {
    if (v3 == 1)
    {
      type metadata accessor for LoadingView();
      v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v4 = [v2 view];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 backgroundColor];
LABEL_9:
        v29 = v6;

        [v31 setBackgroundColor_];
        sub_24DFFE6D0(v31);
        goto LABEL_10;
      }

      __break(1u);
    }

    else
    {
      v8 = *(a1 + 8);
      v7 = *(a1 + 16);
      v9 = v3;
      sub_24DF88BEC(v8, v7);
      v10 = sub_24E347CB8();
      v11 = GKGameCenterUIFrameworkBundle();
      v12 = GKGetLocalizedStringFromTableInBundle();

      v30 = sub_24E347CF8();
      v14 = v13;

      v15 = sub_24E347CB8();
      v16 = GKGameCenterUIFrameworkBundle();
      v17 = GKGetLocalizedStringFromTableInBundle();

      v18 = sub_24E347CF8();
      v20 = v19;

      v21 = sub_24E347CB8();
      v22 = GKGameCenterUIFrameworkBundle();
      v23 = GKGetLocalizedStringFromTableInBundle();

      v24 = sub_24E347CF8();
      v26 = v25;

      v32[0] = 0xD000000000000016;
      v32[1] = 0x800000024E39EA90;
      v32[2] = v3;
      v32[3] = v30;
      v32[4] = v14;
      v32[5] = v18;
      v32[6] = v20;
      v32[7] = v24;
      v32[8] = v26;
      v32[9] = v8;
      v32[10] = v7;
      v27 = objc_allocWithZone(type metadata accessor for ErrorView());
      v31 = sub_24E1DE940(v32);
      v28 = [v2 view];
      if (v28)
      {
        v5 = v28;
        v6 = [v28 backgroundColor];
        goto LABEL_9;
      }
    }

    __break(1u);
    return;
  }

  sub_24DFFE6D0(0);
  v31 = [v2 navigationController];
  if (!v31)
  {
    return;
  }

  [v31 setNeedsFocusUpdate];
LABEL_10:
}

void (*sub_24E234A28(void *a1))(char a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E237660;
}

void sub_24E234A8C(char a1)
{
  v2 = v1;
  v4 = [v1 collectionView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 collectionViewLayout];

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 configuration];
    v29 = sub_24E233158();

    if ((a1 & 1) == 0)
    {
      sub_24DF88A8C(0, &qword_27F1DFD40, 0x277CFB830);
      v27 = sub_24E347EE8();
      [v29 setBoundarySupplementaryItems_];
      goto LABEL_8;
    }

    v10 = [v2 view];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for LoadingIndicatorAccessoryView();
      [v11 frame];
      v13 = v12;
      v15 = v14;

      v16 = sub_24E0EF6E4(v13, v15);
      v17 = objc_opt_self();
      v18 = [v17 fractionalWidthDimension_];
      v19 = [v17 absoluteDimension_];
      v20 = [objc_opt_self() sizeWithWidthDimension:v18 heightDimension:v19];

      sub_24DF88A8C(0, &qword_27F1DFD40, 0x277CFB830);
      v21 = v20;
      v22 = sub_24DFEA80C();
      v24 = sub_24E0ADF80(v21, v22, v23, 5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_24E369990;
      *(v25 + 32) = v24;
      v26 = v24;
      v27 = sub_24E347EE8();

      [v29 setBoundarySupplementaryItems_];

LABEL_8:
      [v8 setConfiguration_];

      v28 = v29;
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v28 = v6;
LABEL_9:
}

uint64_t (*sub_24E234D74(void *a1))(unsigned __int8 *a1)
{
  v1 = sub_24E234A28(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E237634;
}

void (*sub_24E234DCC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E237610;
}

void sub_24E234E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0058, qword_24E371E60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for EmptyStateData(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF9DEAC(a1, v4, &qword_27F1E0058, qword_24E371E60);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_24DF8C95C(v4, &qword_27F1E0058, qword_24E371E60);
    sub_24DFFE6D0(0);
  }

  else
  {
    sub_24DFE227C(v4, v7);
    type metadata accessor for EmptyStateView();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_24DFBCE70(v8, v9, v10, v11, v12, v13, v14, v15);
    sub_24E2D93A0(v7, v16);

    v17 = v8;
    sub_24DFFE6D0(v8);

    sub_24DFE22E0(v7);
  }
}

char *sub_24E234FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v51 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  MEMORY[0x28223BE20](v47);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v21 = result;
  v45 = v6;
  v46 = a1;
  v22 = *&result[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource];
  if (v22)
  {
    v23 = v22;
    v24 = v50;
    v25 = sub_24E3434D8();
    sub_24DFB8854(v25, v15);

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      v44 = v17;
      (*(v17 + 32))(v19, v15, v16);

      sub_24E3448C8();

      v27 = v47;
      v28 = *(v47 + 48);
      sub_24E3448A8();
      v29 = sub_24E3434D8();
      sub_24DFBCE34(v9, &v9[v28], v29);

      v30 = *&v21[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_components];
      v31 = v45;
      v32 = sub_24DF9DEAC(v9, v45, &unk_27F1E1CA0, &unk_24E36C0D0);
      v43 = v9;
      v33 = v12;
      v34 = *(v27 + 48);
      sub_24DFBCE70(v32, v35, v36, v37, v38, v39, v40, v41);
      v26 = (*(*v30 + 104))(v51, v24, v19, v31, v31 + v34, v33, v42, v46);

      sub_24DF8C95C(v43, &unk_27F1E1CA0, &unk_24E36C0D0);
      (*(v48 + 8))(v33, v49);
      (*(v44 + 8))(v19, v16);

      sub_24DF8C95C(v31 + v34, &unk_27F1E1CB0, &unk_24E36D160);
      sub_24DF8C95C(v31, &unk_27F1E1CB0, &unk_24E36D160);
      return v26;
    }

    sub_24DF8C95C(v15, &unk_27F1E1CB0, &unk_24E36D160);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

void sub_24E235438()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x277D752B8]);
  v4 = v2;
  v5 = sub_24E237540(sub_24E237538, v3, v4);
  v6 = OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_compositionalLayout;
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_compositionalLayout);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_compositionalLayout) = v5;
  v8 = v5;

  if (v8)
  {
    type metadata accessor for SectionBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_24DFEA80C();
    v10 = sub_24E347CB8();

    [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

    v11 = *(v1 + v6);
    if (v11)
    {
      v11;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void (*sub_24E235578(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E237514;
}

void sub_24E2355DC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    sub_24E344CE8();
  }

  else
  {
    __break(1u);
  }
}

void *sub_24E235654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v57 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v57 - v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_35;
  }

  v19 = Strong;
  v20 = *(Strong + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource);
  if (!v20)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v21 = v20;
  sub_24DFB8854(a1, v13);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v17, v13, v14);
    v13 = *&v19[OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_components];
    sub_24E3448A8();
    sub_24DFBCE34(v10, v7, a1);

    sub_24DFBCE70(v22, v23, v24, v25, v26, v27, v28, v29);
    v31 = sub_24E1E108C(v17, v10, v7, v30, a2, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));

    sub_24DF8C95C(v7, &unk_27F1E1CB0, &unk_24E36D160);
    sub_24DF8C95C(v10, &unk_27F1E1CB0, &unk_24E36D160);
    v32 = v19;
    v33 = [v32 traitCollection];
    v34 = [v33 userInterfaceIdiom];

    if (v34 != 1 && !GKIsXRUIIdiomShouldUsePadUI())
    {

LABEL_26:
      (*(v15 + 8))(v17, v14);
      return v31;
    }

    if (qword_27F1DDC48 != -1)
    {
LABEL_31:
      swift_once();
    }

    v57 = v17;
    v58 = v15;
    v59 = v14;
    v35 = sub_24E3444F8();
    __swift_project_value_buffer(v35, qword_27F20B4E8);
    sub_24E3444E8();
    v36 = [v32 view];

    if (v36)
    {
      v37 = [v36 safeAreaLayoutGuide];

      [v37 layoutFrame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v60.origin.x = v39;
      v60.origin.y = v41;
      v60.size.width = v43;
      v60.size.height = v45;
      CGRectGetWidth(v60);
      v13 = &off_27966F000;
      [v31 contentInsets];
      v17 = &off_27966F000;
      [v31 setContentInsets_];
      [v31 contentInsets];
      [v31 setContentInsets_];
      v46 = [v31 boundarySupplementaryItems];
      sub_24DF88A8C(0, &qword_27F1DFD40, 0x277CFB830);
      v47 = sub_24E347F08();

      v48 = sub_24DFD8654();
      v49 = 0;
      v14 = v47 & 0xC000000000000001;
      v15 = v47 & 0xFFFFFFFFFFFFFF8;
      while (v48 != v49)
      {
        if (v14)
        {
          v50 = MEMORY[0x25303F560](v49, v47);
        }

        else
        {
          if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v50 = *(v47 + 8 * v49 + 32);
        }

        v19 = v50;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        [v50 contentInsets];
        [v19 setContentInsets_];
        [v19 contentInsets];
        [v19 setContentInsets_];

        ++v49;
      }

      v51 = [v31 decorationItems];
      sub_24DF88A8C(0, &qword_27F1E7690, 0x277CFB838);
      v52 = sub_24E347F08();

      v53 = sub_24DFD8654();
      v54 = 0;
      v14 = v52 & 0xC000000000000001;
      v15 = v52 & 0xFFFFFFFFFFFFFF8;
      while (v53 != v54)
      {
        if (v14)
        {
          v55 = MEMORY[0x25303F560](v54, v52);
        }

        else
        {
          if (v54 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v55 = *(v52 + 8 * v54 + 32);
        }

        v19 = v55;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_29;
        }

        [v55 contentInsets];
        [v19 setContentInsets_];
        [v19 contentInsets];
        [v19 setContentInsets_];

        ++v54;
      }

      v15 = v58;
      v14 = v59;
      v17 = v57;
      goto LABEL_26;
    }

    goto LABEL_33;
  }

LABEL_34:

  sub_24DF8C95C(v13, &unk_27F1E1CB0, &unk_24E36D160);
LABEL_35:
  result = sub_24E348AE8();
  __break(1u);
  return result;
}

void sub_24E235D00()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v86 = v5;
  v83 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  v84 = v8;
  v85 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v82 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  v81 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v76 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = (&v76 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  OUTLINED_FUNCTION_0_14();
  v89 = v20;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_3();
  v88 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v23);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_16_9();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v27 = v26;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_14();
  v29 = OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource;
  v30 = *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource);
  if (v30)
  {
    v31 = v0;
    v32 = v30;
    sub_24E344CD8();

    OUTLINED_FUNCTION_25_6(v1);
    if (v33)
    {
      v34 = &unk_27F1E6C70;
      v35 = &unk_24E3715E0;
      v36 = v1;
      goto LABEL_13;
    }

    (*(v27 + 32))(v2, v1, v25);
    v37 = *(v31 + v29);
    if (v37)
    {
      v38 = v37;
      v39 = sub_24E3434D8();
      sub_24DFB8854(v39, v18);

      if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
      {
        v42 = v88;
        v43 = v89;
        (*(v89 + 32))(v88, v18, v19);
        v44 = v86;
        ObjectType = swift_getObjectType();
        v46 = dynamic_cast_existential_1_conditional(v44, ObjectType, &protocol descriptor for AnyComponentCell);
        if (v46)
        {
          v80 = v19;
          v77 = *(v31 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_components);
          v78 = v46;
          v79 = v47;
          v86 = v44;
          sub_24E3448A8();
          v48 = sub_24E3434D8();
          v49 = v81;
          sub_24DFBCE34(v87, v81, v48);

          v50 = v82;
          v51 = v88;
          v52 = sub_24E3448C8();
          v76 = v31;
          sub_24DFBCE70(v52, v53, v54, v55, v56, v57, v58, v59);
          v60 = v4;
          v61 = v87;
          (*(*v77 + 152))(v78, v79, v60, v2, v51, v87, v49, v50, v83, v62);

          (*(v84 + 8))(v50, v85);
          OUTLINED_FUNCTION_18_36(v49);
          OUTLINED_FUNCTION_18_36(v61);
          v63 = v86;
          v92 = v86;
          sub_24DF88A8C(0, &qword_27F1E0080, 0x277D752A8);
          v64 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0088, &unk_24E36D190);
          if ((swift_dynamicCast() & 1) == 0)
          {

            (*(v89 + 8))(v51, v80);
            v74 = OUTLINED_FUNCTION_6_19();
            v75(v74);
            v91 = 0;
            memset(v90, 0, sizeof(v90));
            v34 = &qword_27F1E0090;
            v35 = &qword_24E375D70;
            v36 = v90;
            goto LABEL_13;
          }

          sub_24DE56CE8(v90, v93);
          v65 = v51;
          v66 = v94;
          v67 = v95;
          v68 = v89;
          __swift_project_boxed_opaque_existential_1(v93, v94);
          v69 = (*(v67 + 8))(v66, v67);
          [v69 setDelegate_];

          (*(v68 + 8))(v65, v80);
          v70 = OUTLINED_FUNCTION_6_19();
          v71(v70);
          __swift_destroy_boxed_opaque_existential_1(v93);
        }

        else
        {
          (*(v43 + 8))(v42, v19);
          v72 = OUTLINED_FUNCTION_6_19();
          v73(v72);
        }

LABEL_14:
        OUTLINED_FUNCTION_18();
        return;
      }

      v40 = OUTLINED_FUNCTION_6_19();
      v41(v40);
      v34 = &unk_27F1E1CB0;
      v35 = &unk_24E36D160;
      v36 = v18;
LABEL_13:
      sub_24DF8C95C(v36, v34, v35);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_24E236450(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for AnyComponentCell);
  if (result)
  {
    v13 = result;
    v14 = v6;
    sub_24DFBCE70(result, v6, v7, v8, v9, v10, v11, v12);
    v16 = v15;
    v17 = a2;
    sub_24E1E1904(v13, v14, a1, v16);
  }

  return result;
}

void sub_24E23662C()
{
  OUTLINED_FUNCTION_32();
  v40 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  OUTLINED_FUNCTION_0_14();
  v39 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_14();
  v17 = sub_24E343488();
  v18 = [v3 cellForItemAtIndexPath_];

  if (!v18)
  {
    goto LABEL_8;
  }

  v38 = v4;
  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v18, ObjectType, &protocol descriptor for AnyComponentCell))
  {

LABEL_8:
    OUTLINED_FUNCTION_18();
    return;
  }

  v21 = *(v40 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    sub_24E344CD8();

    OUTLINED_FUNCTION_25_6(v12);
    if (v24)
    {

      sub_24DF8C95C(v12, &unk_27F1E6C70, &unk_24E3715E0);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_18_8();
      v26(v25);
      v27 = swift_getObjectType();
      v28 = sub_24E3448C8();
      sub_24DFBCE70(v28, v29, v30, v31, v32, v33, v34, v35);
      (*(v22 + 120))(v1, v8, v36, v27, v22);

      (*(v39 + 8))(v8, v38);
      (*(v15 + 8))(v1, v13);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_24E236A08()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA1D0, &qword_24E386B80);
  OUTLINED_FUNCTION_0_14();
  v39 = v6;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_9();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v14 = v13;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_14();
  v16 = sub_24E343488();
  v40 = [v4 cellForItemAtIndexPath_];

  if (!v40)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v40, ObjectType, &protocol descriptor for AnyComponentCell))
  {
    v38 = v5;
    v19 = *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      sub_24E344CD8();

      OUTLINED_FUNCTION_25_6(v11);
      if (v22)
      {

        sub_24DF8C95C(v11, &unk_27F1E6C70, &unk_24E3715E0);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_18_8();
        v26(v25);
        v27 = swift_getObjectType();
        v28 = sub_24E3448B8();
        sub_24DFBCE70(v28, v29, v30, v31, v32, v33, v34, v35);
        (*(v20 + 128))(v2, v1, v36, v27, v20);

        (*(v39 + 8))(v1, v38);
        (*(v14 + 8))(v2, v12);
      }

LABEL_10:
      OUTLINED_FUNCTION_18();
      return;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void sub_24E236DEC()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v58 = v7;
  v59 = v8;
  v56 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v60 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  v57 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  v19 = OUTLINED_FUNCTION_4_5(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v55 = &v52 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  OUTLINED_FUNCTION_0_14();
  v61 = v28;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_14();
  if (sub_24E3434E8() < 2)
  {
    goto LABEL_10;
  }

  v53 = v21;
  v54 = v14;
  v52 = v6;
  v30 = OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource;
  v31 = *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_diffableDataSource);
  if (v31)
  {
    v32 = v31;
    v33 = sub_24E3434D8();
    sub_24DFB8854(v33, v26);

    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      v34 = &unk_27F1E1CB0;
      v35 = &unk_24E36D160;
      v36 = v26;
      goto LABEL_8;
    }

    (*(v61 + 32))(v1, v26, v27);
    v37 = *(v0 + v30);
    if (v37)
    {
      v38 = v37;
      sub_24E344CD8();

      v39 = v54;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v54);
      v41 = v53;
      if (EnumTagSinglePayload != 1)
      {
        v44 = v57;
        (*(v60 + 32))(v57, v13, v39);
        v45 = *(v2 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_components);
        sub_24E3448A8();
        v46 = sub_24E3434D8();
        v47 = v55;
        sub_24DFBCE34(v55, v41, v46);

        v48 = objc_allocWithZone(type metadata accessor for CollectionViewLayoutEnvironment());
        v49 = sub_24E12AAC0(v56);
        (*(*v45 + 160))(v58, v59, v52, v4, v44, v1, v47, v41, v49);

        OUTLINED_FUNCTION_18_36(v41);
        OUTLINED_FUNCTION_18_36(v47);
        (*(v60 + 8))(v44, v39);
        v50 = OUTLINED_FUNCTION_22_7();
        v51(v50);
        goto LABEL_10;
      }

      v42 = OUTLINED_FUNCTION_22_7();
      v43(v42);
      v34 = &unk_27F1E6C70;
      v35 = &unk_24E3715E0;
      v36 = v13;
LABEL_8:
      sub_24DF8C95C(v36, v34, v35);
LABEL_10:
      OUTLINED_FUNCTION_18();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E2373B8()
{

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI33AppStoreContentListViewController_navigationBarFocusGuide);
}

id sub_24E237540(uint64_t a1, uint64_t a2, void *a3)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24E2331E0;
  v8[3] = &block_descriptor_80;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithSectionProvider:v5 configuration:a3];

  _Block_release(v5);

  return v6;
}

double block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t OUTLINED_FUNCTION_18_36(uint64_t a1)
{

  return sub_24DF8C95C(a1, v1, v2);
}

uint64_t sub_24E2376BC(char a1)
{
  type metadata accessor for FriendsListProfileSection();
  result = swift_allocObject();
  *(result + 16) = 1799;
  *(result + 18) = a1;
  return result;
}

uint64_t sub_24E2376F8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v4 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v17 = v16 - v15;
  memcpy(v38, __src, sizeof(v38));
  if (sub_24DF8BF80(v38) == 1)
  {
    return 0;
  }

  if (v38[2] >> 62)
  {
    if (sub_24E348878())
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*((v38[2] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_4:
  v34 = v13;
  v35 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v33 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v19 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v19;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  memcpy(v37, __dst, sizeof(v37));
  sub_24DF8BF98(v37, v36);
  v20 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v21 = sub_24E347058();
  v22 = __swift_project_value_buffer(v21, qword_27F20AE00);
  MEMORY[0x25303DB90](0x7250646E65697266, 0xED0000656C69666FLL, 0x6E6F74747562, 0xE600000000000000, v20, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  (*(v6 + 16))(v24 + v23, v10, v4);
  sub_24E347448();
  sub_24E3471D8();
  (*(v6 + 8))(v10, v4);

  v36[0] = sub_24E0833B4(v25);
  sub_24E1D4198(v36);
  v26 = sub_24E2A1598(10, v36[0]);
  MEMORY[0x28223BE20](v26);
  *(&v33 - 2) = v17;
  sub_24E3106BC(sub_24E238768, (&v33 - 2), v26, v27, v28, v29);
  swift_unknownObjectRelease();
  sub_24E0793F0();
  v31 = v30;
  sub_24DF8BFF4(__src, &qword_27F1DEEA0, qword_24E369EA0);

  (*(v34 + 8))(v17, v35);
  return v31;
}

uint64_t sub_24E237B6C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v38 = sub_24E3433A8();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - v8;
  v10 = *a1;
  v11 = [v10 displayNameWithOptions_];
  v12 = sub_24E347CF8();
  v35 = v13;
  v36 = v12;

  v14 = 0;
  v15 = 0;
  if ([v10 isInContacts])
  {
    v16 = [v10 messagesID];
    v14 = sub_24E347CF8();
    v15 = v17;
  }

  v18 = [v10 playerID];
  v19 = sub_24E347CF8();
  v21 = v20;

  v22 = type metadata accessor for PlayerProfileAction(0);
  v39[3] = v22;
  v39[4] = sub_24E19B448(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction, &unk_24E38C764);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v24 = *(v22 + 24);
  v25 = sub_24E347208();
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_1 + v24, v34, v25);
  *boxed_opaque_existential_1 = v19;
  boxed_opaque_existential_1[1] = v21;
  *(boxed_opaque_existential_1 + 16) = 1;
  *(boxed_opaque_existential_1 + *(v22 + 28)) = 0;
  sub_24E343398();
  v26 = v38;
  (*(v5 + 16))(v37, v9, v38);
  sub_24E19B448(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v5 + 8))(v9, v26);
  v27 = type metadata accessor for LargePlayerLockupData(0);
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 96) = 0u;
  v28 = *(v27 + 44);
  v29 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(a3 + v28, 1, 1, v29);
  *(a3 + 40) = v10;
  *(a3 + 48) = 0;
  v30 = v35;
  *(a3 + 56) = v36;
  *(a3 + 64) = v30;
  v31 = v33[0];
  *(a3 + 72) = v33[1];
  *(a3 + 80) = v31;
  *(a3 + 88) = 0;
  return sub_24DFB8804(v39, a3 + 96, &qword_27F1DEE90, &unk_24E369E90);
}

uint64_t sub_24E237EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v6 = v5 - v4;
  v7 = sub_24E347478();
  v8 = OUTLINED_FUNCTION_4_5(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v99 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v90 - v13;
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v97 = v16;
  v98 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v96 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050, &unk_24E36B8D0);
  v20 = OUTLINED_FUNCTION_4_5(v19);
  MEMORY[0x28223BE20](v20);
  v101 = &v90 - v21;
  v22 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058, &unk_24E36F980);
  v28 = OUTLINED_FUNCTION_4_5(v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v90 - v32;
  v34 = type metadata accessor for HeaderData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  if (*(v100 + 18) == 1)
  {
    v92 = v33;
    v93 = v6;
    v94 = v14;
    sub_24E09984C();
    type metadata accessor for TitleHeaderView.TextConfiguration(0);
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for PlayerCardTheme(0);
    v43 = *(__swift_project_value_buffer(v42, qword_27F20BF00) + *(v42 + 40));
    v44 = v22[8];
    *(v26 + v22[6]) = 0;
    *(v26 + v22[7]) = 0;
    *(v26 + v44) = 0;
    *(v26 + v22[9]) = 0;
    *(v26 + v22[11]) = 0;
    *(v26 + v22[13]) = v43;
    *(v26 + v22[10]) = 1;
    *(v26 + v22[12]) = 1;
    v45 = v43;
    v46 = sub_24E347CB8();
    v47 = GKGameCenterUIFrameworkBundle();
    v48 = GKGetLocalizedStringFromTableInBundle();
    v100 = v26;
    v49 = v48;

    v91 = sub_24E347CF8();
    v95 = v50;

    memset(v108, 0, sizeof(v108));
    v109 = -1;
    memset(v106, 0, sizeof(v106));
    v107 = -1;
    sub_24E3444F8();
    memset(v104, 0, sizeof(v104));
    v105 = 0;
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    v55 = v96;
    sub_24E343398();
    v56 = sub_24E343378();
    v90 = v57;
    (*(v97 + 8))(v55, v98);
    v58 = &v30[v34[7]];
    *(v58 + 32) = 0u;
    *(v58 + 48) = 0u;
    *v58 = 0u;
    *(v58 + 16) = 0u;
    *(v58 + 64) = -1;
    v59 = &v30[v34[9]];
    *(v59 + 32) = 0u;
    *(v59 + 48) = 0u;
    *v59 = 0u;
    *(v59 + 16) = 0u;
    *(v59 + 64) = -1;
    v60 = &v30[v34[10]];
    v61 = &v30[v34[11]];
    *(v61 + 32) = 0;
    *v61 = 0u;
    *(v61 + 16) = 0u;
    v62 = v34[13];
    v96 = v34[12];
    v63 = &v30[v62];
    *(v63 + 4) = 0;
    *v63 = 0u;
    *(v63 + 1) = 0u;
    v98 = v34[14];
    v97 = sub_24E3474B8();
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    v102 = v56;
    v103 = v90;
    sub_24E348918();
    sub_24E026ED8(v100, &v30[v34[5]]);
    v68 = &v30[v34[6]];
    v69 = v91;
    v70 = v95;
    *v68 = v91;
    v68[1] = v70;

    sub_24DFAE710(v108, v58, &qword_27F1DEE88, &unk_24E36BF90);
    v71 = &v30[v34[8]];
    *v71 = 0;
    *(v71 + 1) = 0;
    sub_24DFAE710(v106, v59, &qword_27F1DEE88, &unk_24E36BF90);
    *&v30[v96] = 0;
    *v60 = 0;
    *(v60 + 1) = 0;
    sub_24DFAE710(v104, v61, &qword_27F1DEE90, &unk_24E369E90);
    v72 = v101;
    sub_24DFB85C0(v101, &v30[v34[17]]);
    v73 = &v30[v34[16]];
    *v73 = 0;
    v73[8] = 0;
    *&v30[v34[15]] = xmmword_24E3699A0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E369E30;
    strcpy((inited + 32), "impressionType");
    *(inited + 47) = -18;
    *(inited + 48) = 0x666C656873;
    *(inited + 56) = 0xE500000000000000;
    v75 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = 0x6973736572706D69;
    v76 = MEMORY[0x277D83B88];
    *(inited + 88) = 0xEF7865646E496E6FLL;
    *(inited + 96) = 0;
    *(inited + 120) = v76;
    *(inited + 128) = 0x657079546469;
    *(inited + 136) = 0xE600000000000000;
    *(inited + 144) = 0x636974617473;
    *(inited + 152) = 0xE600000000000000;
    *(inited + 168) = v75;
    *(inited + 176) = 1701667182;
    *(inited + 216) = v75;
    *(inited + 184) = 0xE400000000000000;
    *(inited + 192) = v69;
    *(inited + 200) = v95;
    sub_24E347C28();
    sub_24E347468();
    sub_24E347448();
    v77 = MEMORY[0x277D84F90];
    sub_24E0241AC(MEMORY[0x277D84F90]);
    sub_24E0241AC(v77);
    v78 = v94;
    sub_24E347488();
    sub_24DF8BFF4(v72, &qword_27F1DF050, &unk_24E36B8D0);
    sub_24DF8BFF4(v104, &qword_27F1DEE90, &unk_24E369E90);
    sub_24DF8BFF4(v106, &qword_27F1DEE88, &unk_24E36BF90);
    sub_24DF8BFF4(v108, &qword_27F1DEE88, &unk_24E36BF90);
    sub_24E026F3C(v100);
    v33 = v92;
    sub_24DF8BFF4(v92, &qword_27F1DF058, &unk_24E36F980);
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v97);
    sub_24DFB8804(v78, &v30[v98], &qword_27F1E58A0, &unk_24E36BF80);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v34);
    sub_24E026E68(v30, v33);
  }

  v79 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = a1 + v79[11];
  *v84 = 0u;
  *(v84 + 16) = 0u;
  *(v84 + 32) = 1;
  v85 = a1 + v79[12];
  *v85 = 0;
  *(v85 + 8) = 1;
  v86 = (a1 + v79[13]);
  v87 = (a1 + v79[14]);
  v88 = (a1 + v79[15]);
  result = sub_24E026E68(v33, a1);
  *(a1 + v79[6]) = 0;
  *v86 = 0;
  v86[1] = 0;
  *v87 = 0;
  v87[1] = 0;
  *v88 = 0;
  v88[1] = 0;
  *(a1 + v79[7]) = 1;
  *(a1 + v79[8]) = 1;
  *(a1 + v79[9]) = 1;
  *(a1 + v79[10]) = 0;
  return result;
}

_BYTE *sub_24E23871C(char a1, char a2)
{
  v2[18] = 1;
  v2[16] = a1;
  v2[17] = a2;
  return v2;
}

uint64_t type metadata accessor for FriendRequestCellView(uint64_t a1)
{
  result = qword_27F1E8618;
  if (!qword_27F1E8618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E2387FC(uint64_t a1)
{
  sub_24E2388D8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_24E01CAA4();
    if (v4 <= 0x3F)
    {
      v2 = sub_24DFA1058();
      if (v5 <= 0x3F)
      {
        sub_24E02FD6C();
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_24E2388D8(uint64_t a1)
{
  if (!qword_27F1DF478)
  {
    sub_24E345238();
    v1 = sub_24E345278();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1DF478);
    }
  }
}

uint64_t sub_24E23894C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_24DF95B98(v2, &v16 - v11, &qword_27F1DF390, &qword_24E36B1C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345238();
    OUTLINED_FUNCTION_5_2();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    sub_24E348268();
    v15 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_24E238B30()
{
  type metadata accessor for FriendRequestCellView(0);
  OUTLINED_FUNCTION_5_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v2 != 1)
  {
    return sub_24E3469D8();
  }

  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
  }

  v0 = type metadata accessor for PlayerCardTheme(0);
  __swift_project_value_buffer(v0, qword_27F20BF00);
  return sub_24E33684C();
}

uint64_t sub_24E238BD8()
{
  v0 = sub_24E345238();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v18[-v7];
  type metadata accessor for FriendRequestCellView(0);
  OUTLINED_FUNCTION_5_94();
  v18[16] = v9;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v18[15] == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_27F1DE118);
    }

    v11 = type metadata accessor for PlayerCardTheme(0);
    __swift_project_value_buffer(v11, qword_27F20BF00);
    sub_24E337DD4();
  }

  else
  {
    sub_24E23894C(v8);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v0);
    v12 = sub_24E345228();
    v13 = *(v2 + 8);
    v13(v5, v0);
    v13(v8, v0);
    v14 = objc_opt_self();
    v15 = &selRef_systemGray6Color;
    if ((v12 & 1) == 0)
    {
      v15 = &selRef_systemGray4Color;
    }

    v16 = [v14 *v15];
  }

  return sub_24E346948();
}

id sub_24E238DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E86E8, &qword_24E386D20);
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  v117 = &v94 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E86F0, &qword_24E386D28);
  MEMORY[0x28223BE20](v121);
  v116 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v120 = &v94 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E86F8, &qword_24E386D30);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v122 = &v94 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8700, &qword_24E386D38);
  MEMORY[0x28223BE20](v97);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v94 - v13;
  v14 = sub_24E345738();
  v15 = *(v14 - 8);
  v126 = v14;
  v127 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = (&v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for FriendRequestCellView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8708, &qword_24E386D40);
  v124 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v94 - v22;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8710, &qword_24E386D48);
  MEMORY[0x28223BE20](v123);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v94 - v27;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8718, &qword_24E386D50);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v30 = &v94 - v29;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8720, &unk_24E386D58);
  MEMORY[0x28223BE20](v111);
  v95 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v109 = &v94 - v33;
  MEMORY[0x28223BE20](v34);
  v125 = &v94 - v35;
  sub_24E23C16C(a1, &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v108 = *(v19 + 80);
  v106 = v36 + v20;
  v37 = swift_allocObject();
  v110 = v36;
  v114 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E23C1D0(v114, v37 + v36);
  v115 = a1;
  v128 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8728, &unk_24E386D68);
  sub_24E23C23C();
  sub_24E346BD8();
  v38 = sub_24E347CB8();
  v39 = GKGameCenterUIFrameworkBundle();
  v40 = GKGetLocalizedStringFromTableInBundle();

  v41 = sub_24E347CF8();
  v43 = v42;

  v129 = v41;
  v130 = v43;
  v107 = sub_24DF90C4C();
  v44 = sub_24E3464E8();
  v46 = v45;
  LOBYTE(v43) = v47;
  sub_24DFB4C28(&qword_27F1E8748, &qword_27F1E8708, &qword_24E386D40, MEMORY[0x277CDF028]);
  sub_24E346718();
  sub_24DFA92EC(v44, v46, v43 & 1);

  v124[1](v23, v21);
  sub_24E3456A8();
  sub_24DF8BFF4(v25, &qword_27F1E8710, &qword_24E386D48);
  v129 = MEMORY[0x277D84F90];
  v48 = sub_24E23C430(&qword_27F1DFB98, MEMORY[0x277CDDA80], MEMORY[0x277CDDA88]);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBA0, &unk_24E37EA60);
  v50 = sub_24DFB4C28(&qword_27F1DFBA8, &qword_27F1DFBA0, &unk_24E37EA60, MEMORY[0x277D83970]);
  v104 = v49;
  v103 = v50;
  v51 = v126;
  v105 = v48;
  sub_24E3487E8();
  sub_24E23C348();
  sub_24E3468F8();
  v123 = *(v127 + 8);
  v124 = v17;
  v127 += 8;
  v123(v17, v51);
  sub_24DF8BFF4(v28, &qword_27F1E8710, &qword_24E386D48);
  v52 = objc_opt_self();
  result = [v52 shared];
  if (result)
  {
    v54 = result;
    v55 = [result isFriendRequestsRestricted];

    KeyPath = swift_getKeyPath();
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    v58 = v109;
    (*(v112 + 32))(v109, v30, v113);
    v59 = (v58 + *(v111 + 36));
    *v59 = KeyPath;
    v59[1] = sub_24DFEB7E4;
    v59[2] = v57;
    sub_24E04B898(v58, v125, &qword_27F1E8720, &unk_24E386D58);
    v60 = v114;
    v61 = v115;
    sub_24E23C16C(v115, v114);
    v62 = swift_allocObject();
    v63 = sub_24E23C1D0(v60, v62 + v110);
    MEMORY[0x28223BE20](v63);
    *(&v94 - 2) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8758, &qword_24E386DB8);
    sub_24E23C4E4();
    v64 = v117;
    sub_24E346BD8();
    v65 = sub_24E347CB8();
    v66 = GKGameCenterUIFrameworkBundle();
    v67 = GKGetLocalizedStringFromTableInBundle();

    v68 = sub_24E347CF8();
    v70 = v69;

    v129 = v68;
    v130 = v70;
    v71 = sub_24E3464E8();
    v73 = v72;
    v75 = v74;
    sub_24DFB4C28(&qword_27F1E8778, &qword_27F1E86E8, &qword_24E386D20, MEMORY[0x277CDF028]);
    v76 = v116;
    v77 = v119;
    sub_24E346718();
    sub_24DFA92EC(v71, v73, v75 & 1);

    (*(v118 + 8))(v64, v77);
    v78 = v120;
    sub_24E3456A8();
    sub_24DF8BFF4(v76, &qword_27F1E86F0, &qword_24E386D28);
    v129 = MEMORY[0x277D84F90];
    v79 = v124;
    v80 = v126;
    sub_24E3487E8();
    sub_24E23C654();
    v81 = v122;
    sub_24E3468F8();
    v123(v79, v80);
    sub_24DF8BFF4(v78, &qword_27F1E86F0, &qword_24E386D28);
    result = [v52 shared];
    if (result)
    {
      v82 = result;
      v83 = [result isFriendRequestsRestricted];

      v84 = swift_getKeyPath();
      v85 = swift_allocObject();
      *(v85 + 16) = v83;
      v86 = v96;
      (*(v98 + 32))(v96, v81, v99);
      v87 = (v86 + *(v97 + 36));
      *v87 = v84;
      v87[1] = sub_24E04BCC0;
      v87[2] = v85;
      v88 = v100;
      sub_24E04B898(v86, v100, &qword_27F1E8700, &qword_24E386D38);
      v89 = v125;
      v90 = v95;
      sub_24DF95B98(v125, v95, &qword_27F1E8720, &unk_24E386D58);
      v91 = v101;
      sub_24DF95B98(v88, v101, &qword_27F1E8700, &qword_24E386D38);
      v92 = v102;
      sub_24DF95B98(v90, v102, &qword_27F1E8720, &unk_24E386D58);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8788, &unk_24E386DD0);
      sub_24DF95B98(v91, v92 + *(v93 + 48), &qword_27F1E8700, &qword_24E386D38);
      sub_24DF8BFF4(v88, &qword_27F1E8700, &qword_24E386D38);
      sub_24DF8BFF4(v89, &qword_27F1E8720, &unk_24E386D58);
      sub_24DF8BFF4(v91, &qword_27F1E8700, &qword_24E386D38);
      return sub_24DF8BFF4(v90, &qword_27F1E8720, &unk_24E386D58);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E239C28@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DC0, &qword_24E36F6D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_24E346A58();
  v6 = sub_24E3462A8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_24E346308();
  sub_24DF8BFF4(v4, &qword_27F1E0DC0, &qword_24E36F6D0);
  KeyPath = swift_getKeyPath();
  v17[1] = v5;
  v17[2] = KeyPath;
  v17[3] = v7;
  sub_24E3469D8();
  v9 = sub_24E3469C8();

  v17[0] = v9;
  sub_24E3469D8();
  v10 = sub_24E3469C8();

  v16 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF638, &unk_24E36B5D0);
  v12 = sub_24DFA9774();
  MEMORY[0x25303D1E0](v17, &v16, v11, MEMORY[0x277CE0F78], MEMORY[0x277CE0F78], v12, MEMORY[0x277CE0F60], MEMORY[0x277CE0F60]);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8728, &unk_24E386D68);
  v14 = a1 + *(result + 36);
  *v14 = 0x4000000000000000;
  *(v14 + 8) = 0;
  return result;
}

uint64_t sub_24E239E20@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DC0, &qword_24E36F6D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_24E346A58();
  v6 = sub_24E3462A8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_24E346308();
  sub_24DF8BFF4(v4, &qword_27F1E0DC0, &qword_24E36F6D0);
  KeyPath = swift_getKeyPath();
  sub_24E3469D8();
  v9 = sub_24E3469C8();

  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0x4000000000000000;
  *(a1 + 40) = 0;
  return result;
}

id sub_24E239F50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8790, &qword_24E386DE0);
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = &v84 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8798, &qword_24E386DE8);
  MEMORY[0x28223BE20](v97);
  v95 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = &v84 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E87A0, &qword_24E386DF0);
  MEMORY[0x28223BE20](v86);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v84 - v10;
  MEMORY[0x28223BE20](v11);
  v87 = &v84 - v12;
  v13 = type metadata accessor for FriendRequestCellView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E87A8, &qword_24E386DF8);
  v104 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v17 = &v84 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E87B0, &qword_24E386E00);
  MEMORY[0x28223BE20](v103);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v101 = &v84 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E87B8, &qword_24E386E08);
  MEMORY[0x28223BE20](v92);
  v84 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  MEMORY[0x28223BE20](v26);
  v105 = &v84 - v27;
  sub_24E23C16C(a1, &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v93 = v15;
  v29 = swift_allocObject();
  v90 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E23C1D0(v90, v29 + v28);
  v94 = a1;
  v106 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E87C0, &qword_24E386E10);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E87C8, &qword_24E386E18);
  v31 = sub_24E23C74C();
  v107 = v30;
  v108 = MEMORY[0x277CE0F78];
  v109 = MEMORY[0x277CE0F78];
  v110 = v31;
  v111 = MEMORY[0x277CE0F60];
  v112 = MEMORY[0x277CE0F60];
  swift_getOpaqueTypeConformance2();
  sub_24E346BD8();
  v32 = sub_24E347CB8();
  v33 = GKGameCenterUIFrameworkBundle();
  v34 = GKGetLocalizedStringFromTableInBundle();

  v35 = sub_24E347CF8();
  v37 = v36;

  v107 = v35;
  v108 = v37;
  v91 = sub_24DF90C4C();
  v38 = sub_24E3464E8();
  v40 = v39;
  LOBYTE(v35) = v41;
  sub_24DFB4C28(&qword_27F1E87E8, &qword_27F1E87A8, &qword_24E386DF8, MEMORY[0x277CDF028]);
  v42 = v102;
  sub_24E346718();
  v43 = v38;
  v44 = v101;
  sub_24DFA92EC(v43, v40, v35 & 1);

  (*(v104 + 8))(v17, v42);
  sub_24E3456A8();
  sub_24DF8BFF4(v19, &qword_27F1E87B0, &qword_24E386E00);
  v45 = objc_opt_self();
  result = [v45 shared];
  if (result)
  {
    v47 = result;
    v48 = [result isFriendRequestsRestricted];

    KeyPath = swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    sub_24E04B898(v44, v25, &qword_27F1E87B0, &qword_24E386E00);
    v51 = &v25[*(v92 + 36)];
    *v51 = KeyPath;
    v51[1] = sub_24E04BCC0;
    v51[2] = v50;
    sub_24E04B898(v25, v105, &qword_27F1E87B8, &qword_24E386E08);
    v52 = v94;
    v53 = v90;
    sub_24E23C16C(v94, v90);
    v54 = swift_allocObject();
    v55 = sub_24E23C1D0(v53, v54 + v28);
    MEMORY[0x28223BE20](v55);
    *(&v84 - 2) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8770, &unk_24E386DC0);
    sub_24E23C59C();
    v56 = v96;
    sub_24E346BD8();
    v57 = sub_24E347CB8();
    v58 = GKGameCenterUIFrameworkBundle();
    v59 = GKGetLocalizedStringFromTableInBundle();

    v60 = sub_24E347CF8();
    v62 = v61;

    v107 = v60;
    v108 = v62;
    v63 = sub_24E3464E8();
    v65 = v64;
    v67 = v66;
    sub_24DFB4C28(&qword_27F1E87F0, &qword_27F1E8790, &qword_24E386DE0, MEMORY[0x277CDF028]);
    v68 = v95;
    v69 = v99;
    sub_24E346718();
    sub_24DFA92EC(v63, v65, v67 & 1);

    (*(v98 + 8))(v56, v69);
    v70 = v100;
    sub_24E3456A8();
    sub_24DF8BFF4(v68, &qword_27F1E8798, &qword_24E386DE8);
    result = [v45 shared];
    if (result)
    {
      v71 = result;
      v72 = [result isFriendRequestsRestricted];

      v73 = swift_getKeyPath();
      v74 = swift_allocObject();
      *(v74 + 16) = v72;
      v75 = v70;
      v76 = v85;
      sub_24E04B898(v75, v85, &qword_27F1E8798, &qword_24E386DE8);
      v77 = (v76 + *(v86 + 36));
      *v77 = v73;
      v77[1] = sub_24E04BCC0;
      v77[2] = v74;
      v78 = v87;
      sub_24E04B898(v76, v87, &qword_27F1E87A0, &qword_24E386DF0);
      v79 = v105;
      v80 = v84;
      sub_24DF95B98(v105, v84, &qword_27F1E87B8, &qword_24E386E08);
      v81 = v88;
      sub_24DF95B98(v78, v88, &qword_27F1E87A0, &qword_24E386DF0);
      v82 = v89;
      sub_24DF95B98(v80, v89, &qword_27F1E87B8, &qword_24E386E08);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E87F8, &qword_24E386E28);
      sub_24DF95B98(v81, v82 + *(v83 + 48), &qword_27F1E87A0, &qword_24E386DF0);
      sub_24DF8BFF4(v78, &qword_27F1E87A0, &qword_24E386DF0);
      sub_24DF8BFF4(v79, &qword_27F1E87B8, &qword_24E386E08);
      sub_24DF8BFF4(v81, &qword_27F1E87A0, &qword_24E386DF0);
      return sub_24DF8BFF4(v80, &qword_27F1E87B8, &qword_24E386E08);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E23AAA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DC0, &qword_24E36F6D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E87C8, &qword_24E386E18);
  MEMORY[0x28223BE20](v3);
  v5 = (&v15 - v4);
  v6 = sub_24E346A58();
  v7 = sub_24E3462A8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  v8 = sub_24E346308();
  sub_24DF8BFF4(v2, &qword_27F1E0DC0, &qword_24E36F6D0);
  KeyPath = swift_getKeyPath();
  v10 = (v5 + *(v3 + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E87E0, &qword_24E386E20) + 28);
  sub_24E345D18();
  v12 = sub_24E345D28();
  __swift_storeEnumTagSinglePayload(v10 + v11, 0, 1, v12);
  *v10 = swift_getKeyPath();
  *v5 = v6;
  v5[1] = KeyPath;
  v5[2] = v8;
  v16 = sub_24E346978();
  v15 = sub_24E238BD8();
  v13 = sub_24E23C74C();
  MEMORY[0x25303D1E0](&v16, &v15, v3, MEMORY[0x277CE0F78], MEMORY[0x277CE0F78], v13, MEMORY[0x277CE0F60], MEMORY[0x277CE0F60]);

  return sub_24DF8BFF4(v5, &qword_27F1E87C8, &qword_24E386E18);
}

uint64_t sub_24E23AD30@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0DC0, &qword_24E36F6D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24E346A58();
  v6 = sub_24E3462A8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  v7 = sub_24E346308();
  sub_24DF8BFF4(v4, &qword_27F1E0DC0, &qword_24E36F6D0);
  KeyPath = swift_getKeyPath();
  result = sub_24E346988();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  a1[3] = result;
  return result;
}

uint64_t sub_24E23AE3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = sub_24E345C18();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8628, &qword_24E386C68);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8630, &qword_24E386C70);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  *v11 = sub_24E345BF8();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8638, &qword_24E386C78);
  sub_24E23B0FC(v2, &v11[*(v16 + 44)]);
  sub_24E345C08();
  sub_24DFB4C28(&qword_27F1E8640, &qword_27F1E8628, &qword_24E386C68, MEMORY[0x277CE1138]);
  sub_24E23C430(&qword_27F1E8648, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_24E346568();
  (*(v5 + 8))(v8, v3);
  sub_24DF8BFF4(v11, &qword_27F1E8628, &qword_24E386C68);
  type metadata accessor for FriendRequestCellView(0);
  sub_24E3462D8();
  v17 = sub_24E346338();
  KeyPath = swift_getKeyPath();
  v19 = &v15[*(v12 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_24E23BD28();
  sub_24E346628();
  return sub_24DF8BFF4(v15, &qword_27F1E8630, &qword_24E386C70);
}

uint64_t sub_24E23B0FC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8658, &qword_24E386CB8);
  MEMORY[0x28223BE20](v55);
  v49 = &v48 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8660, &qword_24E386CC0);
  MEMORY[0x28223BE20](v50);
  v5 = &v48 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8668, &qword_24E386CC8);
  MEMORY[0x28223BE20](v51);
  v48 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8670, &qword_24E386CD0);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8678, &qword_24E386CD8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8680, &qword_24E386CE0);
  MEMORY[0x28223BE20](v17 - 8);
  v54 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  v22 = type metadata accessor for FriendRequestCellView(0);
  v23 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  sub_24E346E28();
  sub_24E3453D8();
  v24 = sub_24E346238();
  sub_24E3451B8();
  LOBYTE(v59) = 0;
  __src[2] = 0;
  __src[0] = v23;
  __src[1] = 0;
  LOBYTE(__src[9]) = v24;
  __src[10] = v25;
  __src[11] = v26;
  __src[12] = v27;
  __src[13] = v28;
  LOBYTE(__src[14]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8688, &qword_24E386CE8);
  sub_24E23BEA0();
  v52 = v21;
  sub_24E346648();
  memcpy(__dst, __src, 0x71uLL);
  sub_24DF8BFF4(__dst, &qword_27F1E8688, &qword_24E386CE8);
  *v16 = sub_24E345D08();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E86A8, &unk_24E386CF8);
  v30 = v16;
  sub_24E23B7D4(a1, &v16[*(v29 + 44)]);
  v31 = &a1[*(v22 + 28)];
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(__src[0]) = v32;
  __src[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v59 == 1)
  {
    v34 = v48;
    sub_24E238DC4(a1, v48);
    v35 = &qword_27F1E8668;
    v36 = &qword_24E386CC8;
    sub_24DF95B98(v34, v5, &qword_27F1E8668, &qword_24E386CC8);
  }

  else
  {
    v34 = v49;
    sub_24E239F50(a1, v49);
    v35 = &qword_27F1E8658;
    v36 = &qword_24E386CB8;
    sub_24DF95B98(v34, v5, &qword_27F1E8658, &qword_24E386CB8);
  }

  swift_storeEnumTagMultiPayload();
  sub_24E23C00C();
  sub_24E23C0BC();
  sub_24E345E38();
  sub_24DF8BFF4(v34, v35, v36);
  v37 = v52;
  v38 = v54;
  sub_24DF95B98(v52, v54, &qword_27F1E8680, &qword_24E386CE0);
  v39 = v30;
  sub_24DF95B98(v30, v13, &qword_27F1E8678, &qword_24E386CD8);
  v40 = v57;
  v41 = v53;
  sub_24DF95B98(v57, v53, &qword_27F1E8670, &qword_24E386CD0);
  v42 = v13;
  v43 = v41;
  v44 = v56;
  sub_24DF95B98(v38, v56, &qword_27F1E8680, &qword_24E386CE0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E86E0, &qword_24E386D18);
  sub_24DF95B98(v42, v44 + v45[12], &qword_27F1E8678, &qword_24E386CD8);
  v46 = v44 + v45[16];
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_24DF95B98(v43, v44 + v45[20], &qword_27F1E8670, &qword_24E386CD0);
  sub_24DF8BFF4(v40, &qword_27F1E8670, &qword_24E386CD0);
  sub_24DF8BFF4(v39, &qword_27F1E8678, &qword_24E386CD8);
  sub_24DF8BFF4(v37, &qword_27F1E8680, &qword_24E386CE0);
  sub_24DF8BFF4(v43, &qword_27F1E8670, &qword_24E386CD0);
  sub_24DF8BFF4(v42, &qword_27F1E8678, &qword_24E386CD8);
  return sub_24DF8BFF4(v38, &qword_27F1E8680, &qword_24E386CE0);
}

uint64_t sub_24E23B7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E4878, &qword_24E379468);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = v70 - v6;
  MEMORY[0x28223BE20](v7);
  v71 = v70 - v8;
  MEMORY[0x28223BE20](v9);
  v75 = v70 - v10;
  v11 = type metadata accessor for FriendRequestCellView(0);
  v12 = *(a1 + *(v11 + 20));
  v13 = [v12 alias];
  if (v13)
  {
    v14 = v13;
    v15 = sub_24E347CF8();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v76 = v15;
  v77 = v17;
  v70[0] = sub_24DF90C4C();
  v18 = sub_24E3464E8();
  v20 = v19;
  v22 = v21;
  v70[1] = v11;
  v23 = sub_24E3464B8();
  v25 = v24;
  v27 = v26;
  sub_24DFA92EC(v18, v20, v22 & 1);

  v70[2] = a1;
  sub_24E238B30();
  v28 = sub_24E346468();
  v30 = v29;
  LOBYTE(v18) = v31;
  v33 = v32;

  sub_24DFA92EC(v23, v25, v27 & 1);

  v76 = v28;
  v77 = v30;
  v78 = v18 & 1;
  v79 = v33;
  sub_24E346648();
  sub_24DFA92EC(v28, v30, v18 & 1);

  v34 = [v12 inboxEntry];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 senderDisplayName];
LABEL_8:
    v38 = v36;

    v39 = sub_24E347CF8();
    v41 = v40;

    goto LABEL_9;
  }

  v37 = [v12 contact];
  if (v37)
  {
    v35 = v37;
    v36 = [v37 _gkCompositeName];
    goto LABEL_8;
  }

  sub_24E343AA8();
  v39 = sub_24E3438E8();
  v41 = v69;
LABEL_9:
  v76 = v39;
  v77 = v41;
  v42 = sub_24E3464E8();
  v44 = v43;
  v46 = v45;
  v47 = sub_24E3464B8();
  v49 = v48;
  v51 = v50;
  sub_24DFA92EC(v42, v44, v46 & 1);

  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for PlayerCardTheme(0);
  v53 = __swift_project_value_buffer(v52, qword_27F20BF00);
  sub_24E3367D8(v53, v54);
  v55 = sub_24E346468();
  v57 = v56;
  v59 = v58;
  v61 = v60;

  sub_24DFA92EC(v47, v49, v51 & 1);

  v76 = v55;
  v77 = v57;
  v78 = v59 & 1;
  v79 = v61;
  v62 = v71;
  sub_24E346648();
  sub_24DFA92EC(v55, v57, v59 & 1);

  v63 = v75;
  v64 = v72;
  sub_24DF95B98(v75, v72, &qword_27F1E4878, &qword_24E379468);
  v65 = v74;
  sub_24DF95B98(v62, v74, &qword_27F1E4878, &qword_24E379468);
  v66 = v73;
  sub_24DF95B98(v64, v73, &qword_27F1E4878, &qword_24E379468);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8808, &unk_24E386E70);
  sub_24DF95B98(v65, v66 + *(v67 + 48), &qword_27F1E4878, &qword_24E379468);
  sub_24DF8BFF4(v62, &qword_27F1E4878, &qword_24E379468);
  sub_24DF8BFF4(v63, &qword_27F1E4878, &qword_24E379468);
  sub_24DF8BFF4(v65, &qword_27F1E4878, &qword_24E379468);
  return sub_24DF8BFF4(v64, &qword_27F1E4878, &qword_24E379468);
}

unint64_t sub_24E23BD28()
{
  result = qword_27F1E8650;
  if (!qword_27F1E8650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8630, &qword_24E386C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8628, &qword_24E386C68);
    sub_24E345C18();
    sub_24DFB4C28(&qword_27F1E8640, &qword_27F1E8628, &qword_24E386C68, MEMORY[0x277CE1138]);
    sub_24E23C430(&qword_27F1E8648, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1DF648, &qword_27F1DF650, &qword_24E379BD0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8650);
  }

  return result;
}

unint64_t sub_24E23BEA0()
{
  result = qword_27F1E8690;
  if (!qword_27F1E8690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8688, &qword_24E386CE8);
    sub_24E23BF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8690);
  }

  return result;
}

unint64_t sub_24E23BF2C()
{
  result = qword_27F1E8698;
  if (!qword_27F1E8698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E86A0, &qword_24E386CF0);
    sub_24E23BFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8698);
  }

  return result;
}

unint64_t sub_24E23BFB8()
{
  result = qword_27F1E8C50;
  if (!qword_27F1E8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8C50);
  }

  return result;
}

unint64_t sub_24E23C00C()
{
  result = qword_27F1E86B0;
  if (!qword_27F1E86B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8668, &qword_24E386CC8);
    sub_24DFB4C28(&qword_27F1E86B8, &qword_27F1E86C0, &qword_24E386D08, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E86B0);
  }

  return result;
}

unint64_t sub_24E23C0BC()
{
  result = qword_27F1E86C8;
  if (!qword_27F1E86C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8658, &qword_24E386CB8);
    sub_24DFB4C28(&qword_27F1E86D0, &qword_27F1E86D8, &qword_24E386D10, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E86C8);
  }

  return result;
}

uint64_t sub_24E23C16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendRequestCellView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E23C1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendRequestCellView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E23C23C()
{
  result = qword_27F1E8730;
  if (!qword_27F1E8730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8728, &unk_24E386D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF638, &unk_24E36B5D0);
    sub_24DFA9774();
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1E8738, &qword_27F1E8740, &unk_24E386D78, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8730);
  }

  return result;
}

unint64_t sub_24E23C348()
{
  result = qword_27F1E8750;
  if (!qword_27F1E8750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8710, &qword_24E386D48);
    sub_24DFB4C28(&qword_27F1E8748, &qword_27F1E8708, &qword_24E386D40, MEMORY[0x277CDF028]);
    sub_24E23C430(&qword_27F1DF850, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8750);
  }

  return result;
}

uint64_t sub_24E23C430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E23C4E4()
{
  result = qword_27F1E8760;
  if (!qword_27F1E8760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8758, &qword_24E386DB8);
    sub_24E23C59C();
    sub_24DFB4C28(&qword_27F1E8738, &qword_27F1E8740, &unk_24E386D78, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8760);
  }

  return result;
}

unint64_t sub_24E23C59C()
{
  result = qword_27F1E8768;
  if (!qword_27F1E8768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8770, &unk_24E386DC0);
    sub_24DFA9774();
    sub_24DFB4C28(&qword_27F1E0D70, &qword_27F1E0D78, &qword_24E36F6A0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8768);
  }

  return result;
}

unint64_t sub_24E23C654()
{
  result = qword_27F1E8780;
  if (!qword_27F1E8780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E86F0, &qword_24E386D28);
    sub_24DFB4C28(&qword_27F1E8778, &qword_27F1E86E8, &qword_24E386D20, MEMORY[0x277CDF028]);
    sub_24E23C430(&qword_27F1DF850, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8780);
  }

  return result;
}

unint64_t sub_24E23C74C()
{
  result = qword_27F1E87D0;
  if (!qword_27F1E87D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E87C8, &qword_24E386E18);
    sub_24DFA9774();
    sub_24DFB4C28(&qword_27F1E87D8, &qword_27F1E87E0, &qword_24E386E20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E87D0);
  }

  return result;
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for FriendRequestCellView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345238();
    OUTLINED_FUNCTION_5_2();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24E23C974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8800, &unk_24E386E60);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24DF95B98(a1, &v5 - v3, &qword_27F1E8800, &unk_24E386E60);
  return sub_24E345A18();
}

uint64_t sub_24E23CA38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8828, &unk_24E386E80);
  __swift_allocate_value_buffer(v0, qword_27F1E8810);
  __swift_project_value_buffer(v0, qword_27F1E8810);
  return sub_24E347608();
}

uint64_t static GKHostAppMetricsFieldsProvider.hostAppKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F1DDAB8 != -1)
  {
    OUTLINED_FUNCTION_0_156();
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8828, &unk_24E386E80);
  v3 = __swift_project_value_buffer(v2, qword_27F1E8810);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t GKHostAppMetricsFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22340];
  v3 = sub_24E3479F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t GKHostAppMetricsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  if (qword_27F1DDAB8 != -1)
  {
    OUTLINED_FUNCTION_0_156();
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8828, &unk_24E386E80);
  __swift_project_value_buffer(v12, qword_27F1E8810);
  v13 = MEMORY[0x277D837D0];
  sub_24E347648();
  v14 = v57;
  if (v57)
  {
    v15 = v56;
    sub_24E343C98();

    v16 = sub_24E343F78();
    v17 = sub_24E348248();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v55 = a1;
      v56 = v19;
      v20 = v2;
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_24E1C2BE0(v15, v14, &v56);
      _os_log_impl(&dword_24DE53000, v16, v17, "host app: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_22_4();
      v13 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_22_4();

      v22 = v20;
      a1 = v55;
      (*(v3 + 8))(v11, v22);
    }

    else
    {

      (*(v3 + 8))(v11, v2);
    }

    v58 = v13;
    v56 = v15;
    v57 = v14;
LABEL_15:
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24E3475A8();
    return __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  v55 = v2;
  v23 = objc_opt_self();
  v24 = [v23 currentGame];
  v25 = [v24 bundleIdentifier];

  v26 = sub_24E347CF8();
  v28 = v27;

  if (v26 == 0xD000000000000014 && 0x800000024E3AE8B0 == v28)
  {
  }

  else
  {
    v30 = sub_24E348C08();

    if ((v30 & 1) == 0)
    {
      sub_24E343C98();
      v31 = sub_24E343F78();
      v32 = sub_24E348248();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = v33;
        v54 = swift_slowAlloc();
        v56 = v54;
        *v33 = 136315138;
        v34 = [v23 currentGame];
        v35 = [v34 bundleIdentifier];

        v36 = sub_24E347CF8();
        v38 = v37;

        v39 = &selRef_applyTextStyle_;
        v40 = sub_24E1C2BE0(v36, v38, &v56);

        v41 = v53;
        *(v53 + 1) = v40;
        v42 = &selRef_applyTextStyle_;
        _os_log_impl(&dword_24DE53000, v31, v32, "host app: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        OUTLINED_FUNCTION_22_4();
        OUTLINED_FUNCTION_22_4();

        (*(v3 + 8))(v8, v55);
      }

      else
      {

        (*(v3 + 8))(v8, v55);
        v42 = &selRef_applyTextStyle_;
        v39 = &selRef_applyTextStyle_;
      }

      v47 = [v23 v42[468]];
      v48 = [v47 v39[133]];

      v49 = sub_24E347CF8();
      v51 = v50;

      v58 = MEMORY[0x277D837D0];
      v56 = v49;
      v57 = v51;
      goto LABEL_15;
    }
  }

  sub_24E343C98();
  v44 = sub_24E343F78();
  v45 = sub_24E348248();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_24DE53000, v44, v45, "BundleID was set to catch all com.apple.gamecenter", v46, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  return (*(v3 + 8))(v5, v55);
}

uint64_t sub_24E23D1B8()
{
  v0 = sub_24E347988();
  __swift_allocate_value_buffer(v0, qword_27F20B1C0);
  __swift_project_value_buffer(v0, qword_27F20B1C0);
  return sub_24E347978();
}

_BYTE *storeEnumTagSinglePayload for GKHostAppMetricsFieldsProvider(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static FriendRequestFacilitator.makeViewControllerForRemoteInvite(recipients:chatGUID:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_24E348098();
  OUTLINED_FUNCTION_4_12(v13, v15, v16, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v5;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;

  sub_24DFC8700(0, 0, v13, &unk_24E386F20, v17);
}

uint64_t static FriendRequestFacilitator.makeViewController(recipients:chatGUID:)()
{
  OUTLINED_FUNCTION_29_5();
  v0[18] = sub_24E348068();
  v0[19] = sub_24E348058();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_24E23D4CC;

  return static FriendRequestFacilitator.prepareInvite(recipients:chatGUID:)();
}

uint64_t sub_24E23D4CC()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  sub_24E347FF8();
  OUTLINED_FUNCTION_14_18();

  return MEMORY[0x2822009F8](sub_24E23D5F4, v3, v4);
}

uint64_t sub_24E23D5F4()
{

  *(v0 + 57) = *(v0 + 121);
  OUTLINED_FUNCTION_19_27();
  v1 = *(v0 + 16);
  if (*(v0 + 72))
  {
    type metadata accessor for FriendRequestFacilitator();
    v2 = sub_24E23D838();
    v4 = sub_24E23EBF8(v2, v3);
  }

  else
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    objc_allocWithZone(type metadata accessor for FriendRequestComposeViewController());

    sub_24E23FEF0(v1, v10, v9, v8, v7, v6, v5);
    v4 = v11;
    sub_24DFA9298(v0 + 16, &unk_27F1E8838, &qword_24E386F38);
  }

  v12 = *(v0 + 8);

  return v12(v4);
}

uint64_t sub_24E23D738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_24E348098();
  OUTLINED_FUNCTION_4_12(v6, v8, v9, v7);
  OUTLINED_FUNCTION_21_14();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  OUTLINED_FUNCTION_21_14();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24E3870F8;
  v11[5] = v10;
  sub_24E2410FC(0, 0, v6, &unk_24E387108, v11);
}

uint64_t sub_24E23D838()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  return v3;
}

uint64_t FriendRequestFacilitator.FailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_24E348D18();
  MEMORY[0x25303F880](v1);
  return sub_24E348D68();
}

id FriendRequestFacilitator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FriendRequestFacilitator.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FriendRequestFacilitator();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t static FriendRequestFacilitator.prepareInvite(recipients:chatGUID:)()
{
  OUTLINED_FUNCTION_9_7();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v1[12] = sub_24E348068();
  v1[13] = sub_24E348058();
  v7 = sub_24E347FF8();
  v1[14] = v7;
  v1[15] = v6;

  return MEMORY[0x2822009F8](sub_24E23DADC, v7, v6);
}

uint64_t sub_24E23DADC()
{
  if (![objc_opt_self() canSendText])
  {
    v8 = v0[7];

    v9 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v10 = sub_24E347CF8();
    v12 = v11;
    sub_24E347CF8();
    OUTLINED_FUNCTION_14_18();
    sub_24E08FD58(v10, v12, v13, v14, v9);

    *v8 = 0;
    v8[56] = 1;
LABEL_10:
    OUTLINED_FUNCTION_12_5();

    return v15();
  }

  v1 = [objc_opt_self() shared];
  v0[16] = v1;
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x2822007B8](v1);
  }

  v2 = v1;
  if ([v1 isFriendRequestsRestricted] && !objc_msgSend(v2, sel_isScreenTimeRestrictionsPasscodeSet))
  {
    v21 = v0[7];

    v22 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v23 = sub_24E347CF8();
    v25 = v24;
    sub_24E347CF8();
    OUTLINED_FUNCTION_14_18();
    sub_24E08FD58(v23, v25, v26, v27, v22);

    *v21 = 1;
    v21[56] = 1;
    goto LABEL_10;
  }

  v0[5] = &type metadata for GKFeatureFlags;
  v0[6] = sub_24DFA0CB4();
  *(v0 + 16) = 6;
  v3 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ([v2 shouldShowScreenTimePINController])
  {
    v4 = v0[11];
    v5 = v0[10];
    v33 = *(v0 + 4);
    v0[17] = sub_24E348058();
    v6 = swift_task_alloc();
    v0[18] = v6;
    *(v6 + 16) = v2;
    *(v6 + 24) = v3 & 1;
    *(v6 + 32) = v33;
    *(v6 + 48) = v5;
    *(v6 + 56) = v4;
    v7 = swift_task_alloc();
    v0[19] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8838, &qword_24E386F38);
    *v7 = v0;
    v7[1] = sub_24E23DED0;
    v1 = v0[7];

    return MEMORY[0x2822007B8](v1);
  }

  if (v3)
  {
    v18 = v0[9];
    v17 = v0[10];
    v20 = v0[7];
    v19 = v0[8];

    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = v19;
    *(v20 + 40) = v18;
    *(v20 + 48) = v17;
    *(v20 + 56) = 0;

    goto LABEL_10;
  }

  v28 = swift_task_alloc();
  v0[20] = v28;
  *v28 = v0;
  v28[1] = sub_24E23E084;
  v29 = v0[10];
  v30 = v0[8];
  v31 = v0[9];
  v32 = v0[7];

  return sub_24E23E9C4(v32, v30, v31, v29);
}

uint64_t sub_24E23DED0()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24E23E024, v5, v4);
}

uint64_t sub_24E23E024()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_12_5();

  return v2();
}

uint64_t sub_24E23E084()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24E2420F8, v5, v4);
}

void sub_24E23E198(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v25 = a7;
  v23 = a4;
  v26 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  (*(v11 + 16))(&v23 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 17) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  (*(v11 + 32))(v19 + v16, v15, v10);
  v20 = v24;
  *(v19 + v17) = v23;
  v21 = (v19 + v18);
  *v21 = v20;
  v21[1] = a6;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_24E241CE4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24DFD47C8;
  aBlock[3] = &block_descriptor_55_0;
  v22 = _Block_copy(aBlock);

  [v26 activeScreenTimeRemotePinUIWithHandler_];
  _Block_release(v22);
}

uint64_t sub_24E23E3AC(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v34 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - v18;
  if (a1)
  {
    v20 = sub_24E348098();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    (*(v13 + 16))(v16, a3, v12);
    sub_24E348068();

    v21 = a4;

    v31 = sub_24E348058();
    v32 = a6;
    v22 = *(v13 + 80);
    v33 = a5;
    v23 = (v22 + 33) & ~v22;
    v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    *(v26 + 16) = v31;
    *(v26 + 24) = v27;
    *(v26 + 32) = v34 & 1;
    (*(v13 + 32))(v26 + v23, v16, v12);
    *(v26 + v24) = v21;
    v28 = (v26 + v25);
    v29 = v32;
    *v28 = v33;
    v28[1] = v29;
    *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
    sub_24DFC8700(0, 0, v19, &unk_24E387138, v26);
  }

  else
  {
    v38 = 1;
    v36 = 2;
    v37 = 1;
    return sub_24E348018();
  }
}

uint64_t sub_24E23E628(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = a8;
  *(v8 + 240) = v13;
  *(v8 + 216) = a6;
  *(v8 + 224) = a7;
  *(v8 + 208) = a5;
  *(v8 + 73) = a4;
  sub_24E348068();
  *(v8 + 248) = sub_24E348058();
  v10 = sub_24E347FF8();
  *(v8 + 256) = v10;
  *(v8 + 264) = v9;

  return MEMORY[0x2822009F8](sub_24E23E6D4, v10, v9);
}

uint64_t sub_24E23E6D4()
{
  OUTLINED_FUNCTION_29_5();
  if (*(v0 + 73) == 1)
  {
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v3 = *(v0 + 216);

    *(v0 + 160) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 176) = v3;
    *(v0 + 184) = v2;
    *(v0 + 192) = v1;
    *(v0 + 200) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
    sub_24E348018();
    OUTLINED_FUNCTION_12_5();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 272) = v6;
    *v6 = v0;
    v6[1] = sub_24E23E81C;
    v7 = *(v0 + 232);
    v8 = *(v0 + 216);
    v9 = *(v0 + 224);

    return sub_24E23E9C4(v0 + 16, v8, v9, v7);
  }
}

uint64_t sub_24E23E81C()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  v4 = *(v1 + 264);
  v5 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_24E23E930, v5, v4);
}

uint64_t sub_24E23E930()
{
  OUTLINED_FUNCTION_9_7();

  v1 = v0[2];
  v0[5] = v0[1];
  v0[6] = v1;
  v0[7] = v0[3];
  *(v0 + 121) = *(v0 + 57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  sub_24E348018();
  OUTLINED_FUNCTION_12_5();

  return v2();
}

uint64_t sub_24E23E9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24E23E9E8, 0, 0);
}

uint64_t sub_24E23E9E8()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8838, &qword_24E386F38);
  *v3 = v0;
  v3[1] = sub_24E23EAFC;
  v4 = *(v0 + 16);

  return MEMORY[0x2822007B8](v4);
}

uint64_t sub_24E23EAFC()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  OUTLINED_FUNCTION_12_5();

  return v3();
}

id sub_24E23EBF8(uint64_t a1, uint64_t a2)
{
  sub_24DF88A8C(0, &qword_27F1DFB28, 0x277D75110);
  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  v7 = sub_24E347CF8();
  v9 = v8;

  v10 = sub_24E3191B4(v7, v9, a1, a2, 1);
  sub_24DF88A8C(0, &qword_27F1E2900, 0x277D750F8);
  v11 = sub_24E347CB8();
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();

  v14 = sub_24E347CF8();
  v16 = v15;

  v17 = sub_24E3190AC(v14, v16, 0, 0, 0);
  [v10 addAction_];

  return v10;
}

uint64_t sub_24E23EE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_24E348068();
  v4[6] = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E23EEC4, v6, v5);
}

uint64_t sub_24E23EEC4()
{
  OUTLINED_FUNCTION_8_9();
  v2 = v0[3];
  v1 = v0[4];

  v0[7] = _Block_copy(v1);
  sub_24DF88A8C(0, &qword_27F1E2F40, 0x277CBDA58);
  v0[8] = sub_24E347F08();
  if (v2)
  {
    sub_24E347CF8();
    v2 = v3;
  }

  v0[9] = v2;
  swift_getObjCClassMetadata();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24E23EFD8;

  return static FriendRequestFacilitator.makeViewController(recipients:chatGUID:)();
}

uint64_t sub_24E23EFD8()
{
  OUTLINED_FUNCTION_8_9();
  v2 = v1;
  OUTLINED_FUNCTION_13_5();
  v4 = *(v3 + 56);
  v5 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v6 = v5;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_12_5();

  return v7();
}

uint64_t sub_24E23F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  v8[20] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[21] = v9;
  *v9 = v8;
  v9[1] = sub_24E23F230;

  return static FriendRequestFacilitator.prepareInvite(recipients:chatGUID:)();
}

uint64_t sub_24E23F230()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_24E23F31C, 0, 0);
}

uint64_t sub_24E23F31C()
{
  OUTLINED_FUNCTION_8_9();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  OUTLINED_FUNCTION_19_27();
  *(v0 + 57) = *(v0 + 121);
  v4 = sub_24E348098();
  OUTLINED_FUNCTION_4_12(v1, v5, v6, v4);
  sub_24E348068();

  v7 = sub_24E348058();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v10;
  *(v8 + 64) = *(v0 + 48);
  *(v8 + 73) = *(v0 + 57);
  *(v8 + 96) = v3;
  *(v8 + 104) = v2;
  sub_24DFC8700(0, 0, v1, &unk_24E387150, v8);

  OUTLINED_FUNCTION_12_5();

  return v11();
}

uint64_t sub_24E23F428()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_4(v7);
  *v8 = v9;
  v8[1] = sub_24DFB4D64;
  v10 = OUTLINED_FUNCTION_3_20();

  return sub_24E23F130(v10, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_24E23F528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_24E348068();
  v6[5] = sub_24E348058();
  v8 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E23F5C4, v8, v7);
}

uint64_t sub_24E23F5C4()
{
  v1 = *(v0 + 16);

  if (*(v1 + 56))
  {
    v2 = *(v0 + 24);
    type metadata accessor for FriendRequestFacilitator();
    v3 = sub_24E23D838();
    v5 = sub_24E23EBF8(v3, v4);

    v2(v5, 0);
  }

  else
  {
    v6 = *(v1 + 8);
    v8 = *(v1 + 24);
    v7 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    v17 = v9;
    v18 = v7;
    v11 = [objc_allocWithZone(GKFriendRequestViewController) init];
    if (v6)
    {
      v6 = sub_24E347CB8();
    }

    [v11 setFriendCode_];

    if (v8)
    {
      v12 = sub_24E347CB8();
    }

    else
    {
      v12 = 0;
    }

    [v11 setFriendSupportPageURL_];

    sub_24E241764(v18, v11);
    if (v10)
    {
      v13 = sub_24E347CB8();
      [v11 setChatGUID_];
    }

    v14 = *(v0 + 24);
    v5 = v11;
    v14(0, v11);
  }

  OUTLINED_FUNCTION_12_5();

  return v15();
}

void sub_24E23F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_24E3433A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() local];
  sub_24E343398();
  sub_24E343378();
  (*(v10 + 8))(v12, v9);
  v14 = sub_24E347CB8();

  (*(v5 + 16))(v8, v22, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v15, v8, v4);
  v18 = v24;
  *(v17 + v16) = v23;
  v19 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v20 = v25;
  *v19 = v18;
  v19[1] = v20;
  aBlock[4] = sub_24E241F0C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E23FCDC;
  aBlock[3] = &block_descriptor_67_0;
  v21 = _Block_copy(aBlock);

  [v13 createFriendRequestWithIdentifier:v14 handler:v21];
  _Block_release(v21);
}

uint64_t sub_24E23FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a5 && a2 && a4)
  {
    v9 = objc_allocWithZone(MEMORY[0x277D0C1F8]);

    v10 = [v9 init];
    v11 = sub_24E347CF8();
    v13 = v12;
    v14 = sub_24E347CF8();
    sub_24E08FD58(v11, v13, v14, v15, v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E88E0, &qword_24E387128);
  }

  return sub_24E348018();
}

uint64_t sub_24E23FCDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_24E347CF8();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_24E347CF8();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

id sub_24E23FDC4()
{
  if (!*(v0 + OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_friendCode + 8) || !*(v0 + OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_friendSupportPageURL + 8))
  {
    return 0;
  }

  v1 = [objc_allocWithZone(MEMORY[0x277D0C040]) init];
  v2 = sub_24E347CB8();
  [v1 setFriendSupportPageURL_];

  v3 = sub_24E347CB8();
  v4 = OUTLINED_FUNCTION_5_38();
  [v4 v5];

  v6 = sub_24E347CB8();
  v7 = OUTLINED_FUNCTION_5_38();
  [v7 v8];

  v9 = [objc_opt_self() local];
  v10 = OUTLINED_FUNCTION_5_38();
  [v10 v11];

  return v1;
}

void sub_24E23FEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v7[OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_isMessageSent] = 0;
  v7[OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_isFriendCodeCancelled] = 0;
  v20 = &v7[OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_friendCode];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v7[OBJC_IVAR____TtC12GameCenterUI34FriendRequestComposeViewController_friendSupportPageURL];
  *v21 = a3;
  v21[1] = a4;
  v22 = type metadata accessor for FriendRequestComposeViewController();
  v62.receiver = v7;
  v62.super_class = v22;
  v23 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0, 0);
  v24 = sub_24E23FDC4();
  if (v24)
  {
    v25 = v24;
    v26 = sub_24E347CB8();
    [v25 setFriendRequestVersion_];

    v27 = [objc_opt_self() _gkGenerateFriendRequestURL_];
    if (v27)
    {
      v28 = v27;
      sub_24E343238();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v35 = sub_24E343288();
    __swift_storeEnumTagSinglePayload(v16, v29, 1, v35);
    sub_24DF88A8C(0, &unk_27F1E88F0, 0x277CD68F8);
    v33 = [objc_allocWithZone(MEMORY[0x277CD6920]) init];
    v34 = static MSMessage.friendInviteMessage(withUrl:session:)(v16, v33);
  }

  else
  {
    sub_24DF88A8C(0, &unk_27F1E88F0, 0x277CD68F8);
    v30 = sub_24E343288();
    OUTLINED_FUNCTION_4_12(v19, v31, v32, v30);
    v33 = [objc_allocWithZone(MEMORY[0x277CD6920]) init];
    v34 = static MSMessage.friendInviteMessage(withUrl:session:)(v19, v33);
    v16 = v19;
  }

  sub_24DFA9298(v16, &qword_27F1DEFB8, &unk_24E36FFA0);
  v36 = v23;
  sub_24E241618(v34, 0xD000000000000043, 0x800000024E3AEAE0, v36);
  if (a7)
  {

    sub_24E241700(a6, a7, v36);
LABEL_27:
    v57 = v36;
    [v57 setMessageComposeDelegate_];

    return;
  }

  v58 = v36;
  v59 = v34;

  v37 = v61;
  v38 = sub_24DFD8654();
  v39 = 0;
  v40 = v37 & 0xC000000000000001;
  v41 = v37 & 0xFFFFFFFFFFFFFF8;
  v60 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v38 == v39)
    {

      v36 = v58;
      sub_24E241694(v60, v58);
      v34 = v59;
      goto LABEL_27;
    }

    if (v40)
    {
      v42 = MEMORY[0x25303F560](v39, v61);
    }

    else
    {
      if (v39 >= *(v41 + 16))
      {
        goto LABEL_29;
      }

      v42 = *(v61 + 8 * v39 + 32);
    }

    v43 = v42;
    v44 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v45 = sub_24E2417E0(v42);
    if (v46)
    {
      v48 = v45;
      v50 = v46;

      goto LABEL_20;
    }

    v47 = [objc_opt_self() recipientForContact_];
    if (!v47)
    {
      goto LABEL_30;
    }

    v48 = sub_24E241844(v47);
    v50 = v49;

    ++v39;
    if (v50)
    {
LABEL_20:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076A08(0, *(v60 + 16) + 1, 1, v60);
        v60 = v55;
      }

      v52 = *(v60 + 16);
      v51 = *(v60 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_24E076A08(v51 > 1, v52 + 1, 1, v60);
        v60 = v56;
      }

      v53 = v60;
      *(v60 + 16) = v52 + 1;
      v54 = v53 + 16 * v52;
      *(v54 + 32) = v48;
      *(v54 + 40) = v50;
      v39 = v44;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}