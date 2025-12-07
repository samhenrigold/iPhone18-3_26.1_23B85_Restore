void sub_2F7F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2F890();
  }
}

uint64_t sub_2F890()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  [result music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  UIEdgeInsetsInsetRect(v10, v12, v14, v16, v5, v7);
  [*&v1[OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingView] sizeThatFits:{v17, v18}];
  v20 = v19;
  v22 = v21;
  type metadata accessor for CGSize(0);
  [v1 preferredContentSize];
  v25 = v23;
  v26 = v24;
  result = sub_AB38D0();
  if (result)
  {
    return [v1 setPreferredContentSize:{v20, v22, *&v20, *&v22, v25, v26}];
  }

  return result;
}

id sub_2FA38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBadgingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2FAF8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_2FB38(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_buttonAlignment] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for FooterButtonReusableView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 setAllowsGroupOpacity:0];

  v13 = [v11 layer];
  [v13 setAllowsGroupBlending:0];

  v14 = sub_30214();
  [v11 addSubview:v14];

  return v11;
}

Swift::Int sub_2FD54()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(v1);
  return sub_ABB610();
}

Swift::Int sub_2FDC8(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_ABB5D0(v2);
  return sub_ABB610();
}

void sub_2FE0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC320, &qword_AF7E08);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = (v1 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title);
  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title);
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_title + 8);
  *v7 = v10;
  v7[1] = v4;
  v11 = v8 == v10 && v9 == v4;
  if (v11 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v12 = sub_30214();
    sub_ABA8E0();
    v13 = sub_ABA8C0();
    if ((*(*(v13 - 8) + 48))(v6, 1, v13))
    {
      sub_307DC(v6, v3);
      sub_ABA8F0();
      sub_3084C(v6);
    }

    else
    {

      sub_ABA8B0();
      sub_ABA8F0();
    }
  }
}

void sub_2FFC8()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for FooterButtonReusableView();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v1 = [v0 traitCollection];
  [v1 displayScale];

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  [v0 effectiveUserInterfaceLayoutDirection];
  UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v13);
  v15 = v14;
  v17 = v16;
  v18 = sub_30214();
  [v18 sizeThatFits:{v15, v17}];

  v19 = OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button;
  v20 = *&v0[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button];
  sub_ABA490();
  [v20 setFrame:?];

  v21 = *&v0[v19];
  [v21 frame];
  v23 = v22;
  sub_ABA470();
  [v21 setFrame:v23];
}

id sub_30214()
{
  v1 = v0;
  v2 = sub_ABA830();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA8C0();
  __chkstk_darwin();
  v6 = OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button;
  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView____lazy_storage___button);
  }

  else
  {
    sub_13C80(0, &qword_DF13D0, UIButton_ptr);
    sub_ABA8A0();
    sub_ABA820();

    sub_ABA8B0();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v2);
    sub_ABA850();
    sub_13C80(0, &unk_E05310, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_ABA7D0();
    v9 = sub_ABA8D0();
    v10 = *(v0 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v11 = v7;
  return v8;
}

void sub_30470(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler];
    if (v4)
    {
      v5 = *&Strong[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler + 8];
      sub_307CC(*&Strong[OBJC_IVAR____TtC16MusicApplication24FooterButtonReusableView_selectionHandler], v5);

      v4();
      sub_17654(v4, v5);
    }

    else
    {
    }
  }
}

id sub_30508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FooterButtonReusableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for ImpressionsElement.DisplayStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImpressionsElement.DisplayStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_30738()
{
  result = qword_DE8268;
  if (!qword_DE8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8268);
  }

  return result;
}

uint64_t sub_3078C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_307CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_307DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC320, &qword_AF7E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3084C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC320, &qword_AF7E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_308B4(char *a1)
{
  v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_shouldHideAutomatically] = 1;
  v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value] = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel;
  *&v1[v4] = sub_311A8();
  *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_style] = a1;
  if (a1)
  {
    if (a1 == &dword_0 + 1)
    {
      v5 = 16.0;
      v6 = 16.0;
    }

    else
    {
      v7 = a1;
      [v7 lineHeight];
      v5 = v8;
      [v7 lineHeight];
      v6 = v9;
    }
  }

  else
  {
    v5 = 24.0;
    v6 = 24.0;
  }

  v31.receiver = v1;
  v31.super_class = type metadata accessor for NotificationBadgeView();
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, v5, v6);
  [v10 setHidden:1];
  [v10 setUserInteractionEnabled:0];
  v11 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView;
  [*&v10[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView] setContentMode:2];
  [v10 addSubview:*&v10[v11]];
  v12 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel]];
  result = [v10 tintColor];
  if (result)
  {
    v14 = result;
    [v10 bounds];
    Width = CGRectGetWidth(v32);
    [v10 bounds];
    Height = CGRectGetHeight(v33);
    if (Height >= Width)
    {
      Height = Width;
    }

    _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v14, Height * 0.5);
    v18 = v17;

    [*&v10[v11] setImage:v18];
    sub_3137C();
    v19 = *&v10[v12];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 whiteColor];
    [v21 setTextColor:v22];

    v23 = *&v10[v12];
    if (a1)
    {
      if (a1 != &dword_0 + 1)
      {
        v30 = v23;
        v29 = a1;
        goto LABEL_15;
      }

      v24 = objc_opt_self();
      v25 = v23;
      v26 = [v24 systemFontOfSize:11.0 weight:UIFontWeightRegular];
    }

    else
    {
      v27 = objc_opt_self();
      v28 = v23;
      v26 = [v27 systemFontOfSize:14.0 weight:UIFontWeightMedium];
    }

    v29 = v26;
LABEL_15:
    sub_31828(a1);
    [v23 setFont:v29];

    sub_31838(a1);
    return v10;
  }

  __break(1u);
  return result;
}

id sub_30D14(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value];
  *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_value] = result;
  if (v3 != result)
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_valueLabel];
    sub_31848();
    sub_ABAB30();
    v5 = sub_AB9260();

    [v4 setText:v5];

    if (*&v1[v2])
    {
      v6 = 0;
    }

    else
    {
      v6 = v1[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_shouldHideAutomatically];
    }

    return [v1 setHidden:v6];
  }

  return result;
}

id sub_311A8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor:v3];

  [v2 setNumberOfLines:1];
  v4 = [v1 whiteColor];
  [v2 setTextColor:v4];

  [v2 setTextAlignment:1];
  [v2 setAdjustsFontSizeToFitWidth:1];
  return v2;
}

void sub_312AC()
{
  v1 = [v0 tintColor];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    Width = CGRectGetWidth(v8);
    [v0 bounds];
    Height = CGRectGetHeight(v9);
    if (Height >= Width)
    {
      Height = Width;
    }

    _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v2, Height * 0.5);
    v6 = v5;

    [*&v0[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_backgroundImageView] setImage:v6];
  }

  else
  {
    __break(1u);
  }
}

void sub_3137C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled) != 1 || (type metadata accessor for CGSize(0), [v0 bounds], v28 = v2, v29 = v3, v26 = 0, v27 = 0, (sub_AB38D0() & 1) == 0))
  {
    v24 = [v0 layer];
    [v24 setShadowOpacity:0.0];
    goto LABEL_8;
  }

  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v0 bounds];
  Width = CGRectGetWidth(v30);
  [v0 bounds];
  Height = CGRectGetHeight(v31);
  if (Height >= Width)
  {
    Height = Width;
  }

  v14 = [objc_opt_self() bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, Height * 0.5}];
  v15 = [v1 layer];
  v16 = [v14 CGPath];
  [v15 setShadowPath:v16];

  v17 = [v1 layer];
  [v17 setShadowOffset:{0.0, 1.0}];

  v18 = [v1 layer];
  v19 = [objc_opt_self() blackColor];
  v20 = [v19 cgColor];
  v21 = v19;
  if (v20)
  {
    v22 = v20;
    [v18 setShadowColor:v22];

    v23 = [v1 layer];
    [v23 setShadowRadius:2.0];

    v24 = [v1 layer];
    LODWORD(v25) = 1045220557;
    [v24 setShadowOpacity:v25];

LABEL_8:
    return;
  }

  __break(1u);
}

id sub_31670(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NotificationBadgeView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication21NotificationBadgeViewC5StyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_31748(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3179C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_317F8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_31828(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_31838(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_31848()
{
  result = qword_DE82C8;
  if (!qword_DE82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE82C8);
  }

  return result;
}

char *sub_3189C()
{
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView;
  *&v0[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView;
  *&v0[v5] = sub_32914();
  v6 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton;
  sub_32A34(&selRef_systemGreenColor, 0x747065636341, 0xE600000000000000);
  *&v0[v6] = v7;
  v8 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton;
  sub_32A34(&selRef_systemRedColor, 0x656E696C636544, 0xE700000000000000);
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptActionEventHandler] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineActionEventHandler] = 0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for SocialProfileFollowRequestConfirmationView();
  v10 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [v12 layer];
  [v14 setAllowsGroupBlending:0];

  v15 = [v12 layer];
  [v15 setAllowsGroupOpacity:0];

  v16 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView;
  v17 = *&v12[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView];
  v18 = [v12 traitCollection];
  if ([v18 horizontalSizeClass] == &dword_0 + 2)
  {
    v19 = [v11 clearColor];
  }

  else
  {
    if (qword_DE6A18 != -1)
    {
      swift_once();
    }

    v19 = qword_E713C8;
  }

  v20 = v19;

  [v17 setBackgroundColor:v20];
  v21 = [*&v12[v16] layer];
  v22 = [v12 traitCollection];

  [v22 userInterfaceStyle];
  sub_AB92A0();

  v23 = sub_AB9260();

  [v21 setCompositingFilter:v23];

  v24 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton;
  v25 = *&v12[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ControlEventHandler();
  swift_allocObject();
  v27 = sub_33094();
  v28 = v12;
  *&v28[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptActionEventHandler] = ControlEventHandler.init<A>(control:events:handler:)(v25, 64, sub_33070, v26, v27);

  v29 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton;
  v30 = *&v28[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v30;

  swift_allocObject();
  *&v28[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineActionEventHandler] = ControlEventHandler.init<A>(control:events:handler:)(v32, 64, sub_330E0, v31, v27);

  [v28 addSubview:*&v12[v16]];
  [v28 addSubview:*&v28[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView]];
  [v28 addSubview:*&v12[v24]];
  [v28 addSubview:*&v28[v29]];

  return v28;
}

void sub_31D6C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + *a3;
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);

      v7(v5);
      sub_17654(v7, v8);
    }
  }
}

void sub_31E48(uint64_t a1, uint64_t a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  v5 = &v2[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName];
  if ((*&v2[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName] != a1 || *&v2[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName + 8] != a2) && (sub_ABB3C0() & 1) == 0)
  {
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView];
    sub_AB9220();
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v8 = v2;
    sub_AB9210(v19);
    v9 = *v5;
    v10 = v5[1];

    v20._countAndFlagsBits = v9;
    v20._object = v10;
    sub_AB9200(v20);

    v21._object = 0x8000000000B49D80;
    v21._countAndFlagsBits = 0xD00000000000001ALL;
    sub_AB9210(v21);
    sub_AB9240();
    sub_AB3550();
    v11 = sub_AB9320();
    v12 = (v7 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
    v13 = *(v7 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
    v14 = *(v7 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8);
    *v12 = v11;
    v12[1] = v15;
    sub_38FB24(v13, v14, v16);

    [v8 setNeedsLayout];
    v17 = [v8 superview];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for PromotionalParallaxContentStackView();
      if (swift_dynamicCastClass())
      {
        sub_34AEA0(0);
      }
    }
  }
}

id sub_320B8()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for SocialProfileFollowRequestConfirmationView();
  objc_msgSendSuper2(&v40, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 music_inheritedLayoutInsets];
  v12 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [*&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView] setFrame:{v2, v4, v6, v8}];
  v41.origin.x = v12;
  v41.origin.y = v14;
  v41.size.width = v16;
  v41.size.height = v18;
  Width = CGRectGetWidth(v41);
  v19 = *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView];
  [v19 sizeThatFits:{v16, v18}];
  v21 = v20;
  v22 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  [*&v19[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _firstBaselineOffsetFromTop];
  v42.origin.y = v14 + 30.0 - v23;
  v42.origin.x = v12;
  v42.size.width = Width;
  v42.size.height = v21;
  v24 = CGRectGetMaxY(v42) + 18.0;
  [*&v19[v22] _baselineOffsetFromBottom];
  v26 = v24 - v25;
  v43.origin.x = v12;
  v43.origin.y = v26;
  v43.size.width = v16;
  v43.size.height = v18;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  v28 = v18 - (MinY - CGRectGetMinY(v44));
  v45.origin.x = v12;
  v45.origin.y = v26;
  v45.size.width = v16;
  v45.size.height = v28;
  CGRectGetWidth(v45);
  sub_AB39F0();
  v30 = v29;
  v31 = *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton];
  [v31 sizeThatFits:{v16, v28}];
  v33 = v32;
  v34 = *&v0[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton];
  [v34 sizeThatFits:{v16, v28}];
  if (v33 > v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = v35;
  }

  if (v36 > 44.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 44.0;
  }

  v46.origin.x = v12;
  v46.origin.y = v26;
  v46.size.width = v30;
  v46.size.height = v37;
  CGRectGetMaxX(v46);
  v47.origin.x = v12;
  v47.origin.y = v26;
  v47.size.width = v30;
  v47.size.height = v37;
  CGRectGetMinY(v47);
  sub_ABA490();
  [v19 setFrame:?];
  sub_ABA490();
  [v31 setFrame:?];
  sub_ABA490();
  return [v34 setFrame:?];
}

id sub_32474(double a1)
{
  [v1 music_inheritedLayoutInsets];
  if (a1 > 0.0)
  {
    a1 = a1 - v3 - v4;
  }

  v5 = [v1 traitCollection];
  [v5 displayScale];

  v6 = *&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView];
  v7 = 0.0;
  [v6 sizeThatFits:{a1, 0.0}];
  v8 = OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel;
  [*&v6[OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_mainLabel] _firstBaselineOffsetFromTop];
  [*&v6[v8] _firstBaselineOffsetFromTop];
  if (a1 > 0.0)
  {
    sub_AB39F0();
    v7 = v9;
  }

  [*&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton] sizeThatFits:{v7, 0.0}];
  return [*&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton] sizeThatFits:{v7, 0.0}];
}

void sub_32698(uint64_t a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SocialProfileFollowRequestConfirmationView();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView];
  v5 = [v1 traitCollection];
  if ([v5 horizontalSizeClass] == &dword_0 + 2)
  {
    v6 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_DE6A18 != -1)
    {
      swift_once();
    }

    v6 = qword_E713C8;
  }

  v7 = v6;

  [v4 setBackgroundColor:v7];
  v8 = [v4 layer];
  v9 = [v1 traitCollection];
  [v9 userInterfaceStyle];
  sub_AB92A0();

  v10 = sub_AB9260();

  [v8 setCompositingFilter:v10];

  v11 = *&v1[OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView];
  v12 = [v2 traitCollection];
  v13 = [v12 horizontalSizeClass];

  *(v11 + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_properties + 8) = v13 == &dword_0 + 1;
  sub_38FDFC();
}

char *sub_32914()
{
  if (qword_DE6A20 != -1)
  {
    swift_once();
  }

  v0 = qword_E713D0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  if (qword_DE6A28 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v4 = qword_E713D8;
  LOBYTE(v9) = 0;
  *(&v9 + 1) = 1;
  v10 = v2;
  v11 = v3;
  v12 = 0;
  v13 = 0;
  v14 = 2;
  v15 = qword_E713D8;
  v5 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  v6 = v4;
  return sub_38F7B8(&v9);
}

void sub_32A34(SEL *a1, uint64_t a2, uint64_t a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v4 = [objc_opt_self() buttonWithType:0];
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v6, 8.0);
  v8 = v7;

  [v4 setBackgroundImage:v8 forState:0];
  v9 = [v5 whiteColor];
  v10 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.1];
  v11 = [v9 _colorBlendedWithColor:v10 compositingFilter:kCAFilterPlusD];

  if (v11)
  {
    _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v11, 8.0);
    v13 = v12;

    [v4 setBackgroundImage:v13 forState:1];
    v14 = [v5 *a1];
    [v4 setTitleColor:v14 forStates:0];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v15 = sub_AB9260();

    [v4 setTitle:v15 forState:0];

    v16 = [v4 titleLabel];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightBold];
      [v17 setFont:v18];
    }

    [v4 setTitleEdgeInsets:{0.0, 8.0, 0.0, 8.0}];
  }

  else
  {
    __break(1u);
  }
}

id sub_32D88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialProfileFollowRequestConfirmationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_32ED4(int a1, id a2)
{
  if ([a2 horizontalSizeClass] == &dword_0 + 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_32F04()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_followerName);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButtonHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButtonHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_backgroundView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_titleCompositingView;
  *(v0 + v5) = sub_32914();
  v6 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptButton;
  sub_32A34(&selRef_systemGreenColor, 0x747065636341, 0xE600000000000000);
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineButton;
  sub_32A34(&selRef_systemRedColor, 0x656E696C636544, 0xE700000000000000);
  *(v0 + v8) = v9;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_acceptActionEventHandler) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication42SocialProfileFollowRequestConfirmationView_declineActionEventHandler) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_33038()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_33094()
{
  result = qword_DF13D0;
  if (!qword_DF13D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DF13D0);
  }

  return result;
}

uint64_t sub_33104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84E0, &qword_AF8160);
  __chkstk_darwin();
  v9 = (v33 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84E8, &qword_AF8168);
  __chkstk_darwin();
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84F0, &qword_AF8170);
  __chkstk_darwin();
  v15 = v33 - v14;
  *v9 = sub_AB7A00();
  v9[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84F8, &qword_AF8178);
  sub_3355C(a1, a2, a3, a4, v9 + *(v17 + 44));
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_AB5510(v33);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v33);

    if (v34)
    {

      sub_AB7A30();
      sub_AB5E90();
      sub_36B0C(v9, v12, &qword_DE84E0, &qword_AF8160);
      v18 = &v12[*(v10 + 36)];
      v19 = v36;
      *(v18 + 4) = v35;
      *(v18 + 5) = v19;
      *(v18 + 6) = v37;
      v20 = v33[1];
      *v18 = v33[0];
      *(v18 + 1) = v20;
      v21 = v34;
      *(v18 + 2) = v33[2];
      *(v18 + 3) = v21;
      v22 = [objc_opt_self() tertiarySystemFillColor];
      v23 = sub_AB7510();
      v24 = sub_AB6AA0();
      sub_36B0C(v12, v15, &qword_DE84E8, &qword_AF8168);
      v25 = &v15[*(v13 + 36)];
      *v25 = v23;
      v25[8] = v24;
      v26 = Corner.extraLarge.unsafeMutableAddressor();
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v26 + 16);
      v30 = sub_36890();
      View.corner(_:)(v27, v28, v29, v13, v30);
      return sub_12E1C(v15, &qword_DE84F0, &qword_AF8170);
    }

    __break(1u);
  }

  type metadata accessor for Environment(0);
  sub_365F8(&qword_DE8498, type metadata accessor for Environment, &unk_AF7FB8);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

uint64_t sub_3355C@<X0>(uint64_t a1@<X0>, uint64_t KeyPath@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8528, &qword_AF8188);
  __chkstk_darwin();
  v11 = &v22[-1] - v10;
  *v11 = sub_AB6440();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8530, &qword_AF8190);
  sub_33770(a1, KeyPath, a3, a4, &v11[*(v12 + 44)]);
  if (!a1)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(v22);

  v13 = v23;
  if (!v23)
  {
    __break(1u);
LABEL_11:
    type metadata accessor for Environment(0);
    sub_365F8(&qword_DE8498, type metadata accessor for Environment, &unk_AF7FB8);
    result = sub_AB5F00();
    __break(1u);
    return result;
  }

  v14 = [v23 horizontalSizeClass];

  v15 = v14 == &dword_0 + 1;
  if (v14 == &dword_0 + 1)
  {
    v16 = 0x4040000000000000;
  }

  else
  {
    v16 = 0x4055000000000000;
  }

  if (v15)
  {
    v17 = 0x4036000000000000;
  }

  else
  {
    v17 = 0x4034000000000000;
  }

  v18 = sub_AB6AA0();
  sub_36B0C(v11, a5, &qword_DE8528, &qword_AF8188);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8538, &qword_AF8198);
  v20 = a5 + *(result + 36);
  *v20 = v18;
  *(v20 + 8) = 0x402A000000000000;
  *(v20 + 16) = v16;
  *(v20 + 24) = v17;
  *(v20 + 32) = v16;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_33770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v120 = a3;
  v121 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8540, &qword_AF81A0);
  v118 = *(v8 - 8);
  v119 = v8;
  __chkstk_darwin();
  v122 = &v98 - v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8548, &qword_AF81A8);
  __chkstk_darwin();
  v11 = &v98 - v10;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8550, &qword_AF81B0);
  __chkstk_darwin();
  v115 = &v98 - v12;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8558, &qword_AF81B8);
  __chkstk_darwin();
  v116 = &v98 - v13;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8560, &qword_AF81C0);
  __chkstk_darwin();
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v98 - v16;
  __chkstk_darwin();
  v128 = &v98 - v17;
  v158 = JSListenNowMusicSiriUpsell.title.getter();
  v159 = v18;
  sub_36A48();
  v19 = sub_AB6F20();
  v132 = v20;
  v133 = v19;
  v22 = v21;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v130 = v22 & 1;
  LOBYTE(v158) = v22 & 1;
  sub_AB6B90();
  sub_AB6C10();
  v129 = sub_AB6C60();

  v127 = swift_getKeyPath();
  v25 = objc_opt_self();
  v26 = [v25 labelColor];
  *(&v126 + 1) = sub_AB7510();
  *&v126 = swift_getKeyPath();
  if (!a1)
  {
    goto LABEL_13;
  }

  v134 = v24;
  v135 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_AB5510(&v158);

  v27 = v168;
  if (!v168)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v168 horizontalSizeClass];

  sub_AB7A30();
  sub_AB5970();
  v105 = v182;
  v106 = v180;
  v103 = v185;
  v104 = v184;
  v176 = 1;
  v175 = v181;
  v174 = v183;
  v158 = JSListenNowMusicSiriUpsell.subtitle.getter();
  v159 = v28;
  v29 = sub_AB6F20();
  v109 = v30;
  v110 = v29;
  v32 = v31;
  v125 = v33;
  v108 = swift_getKeyPath();
  v107 = v32 & 1;
  LOBYTE(v158) = v32 & 1;
  *(&v124 + 1) = sub_AB6B70();
  *&v124 = swift_getKeyPath();
  v34 = [v25 secondaryLabelColor];
  v35 = sub_AB7510();
  v123 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v158);

  v36 = v168;
  if (!v168)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v168 horizontalSizeClass];

  sub_AB7A30();
  sub_AB5970();
  v100 = v188;
  v101 = v186;
  v99 = v190;
  v102 = v191;
  v173 = 1;
  v172 = v187;
  v171 = v189;
  v37 = swift_allocObject();
  v39 = v120;
  v38 = v121;
  v37[2] = a1;
  v37[3] = v38;
  v37[4] = v39;
  v37[5] = a4;
  __chkstk_darwin();
  *(&v98 - 4) = a1;
  *(&v98 - 3) = v40;
  *(&v98 - 2) = v41;
  *(&v98 - 1) = a4;

  v42 = a4;
  v43 = v122;
  sub_AB7690();
  v44 = sub_AB6B00();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v158);

  if (!v168)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_AB5690();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  (*(v118 + 32))(v11, v43, v119);
  v53 = &v11[*(v117 + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = sub_AB6A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v158);

  if (v168)
  {
    v122 = v35;

    sub_AB5690();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v115;
    sub_36B0C(v11, v115, &qword_DE8548, &qword_AF81A8);
    v64 = v63 + *(v113 + 36);
    *v64 = v54;
    *(v64 + 8) = v56;
    *(v64 + 16) = v58;
    *(v64 + 24) = v60;
    *(v64 + 32) = v62;
    *(v64 + 40) = 0;
    v65 = sub_AB7430();
    v66 = sub_AB6AA0();
    v67 = v116;
    sub_36B0C(v63, v116, &qword_DE8550, &qword_AF81B0);
    v68 = v67 + *(v114 + 36);
    *v68 = v65;
    *(v68 + 8) = v66;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v158);

    if (v168)
    {
      v69 = v162;

      v70 = v112;
      v71 = &v112[*(v111 + 36)];
      v72 = *(sub_AB5E60() + 20);
      v73 = enum case for RoundedCornerStyle.continuous(_:);
      v74 = sub_AB63A0();
      (*(*(v74 - 8) + 104))(&v71[v72], v73, v74);
      *v71 = v69;
      *(v71 + 1) = v69;
      *&v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEB20, &qword_AFE410) + 36)] = 256;
      sub_36B0C(v67, v70, &qword_DE8558, &qword_AF81B8);
      v75 = v128;
      sub_36B0C(v70, v128, &qword_DE8560, &qword_AF81C0);
      v76 = v176;
      LOBYTE(v70) = v175;
      v77 = v174;
      v78 = v173;
      v79 = v172;
      LODWORD(v121) = v171;
      sub_15F84(v75, v135, &qword_DE8560, &qword_AF81C0);
      *(&v137 + 1) = v194[0];
      DWORD1(v137) = *(v194 + 3);
      *(&v138 + 11) = v192;
      HIBYTE(v138) = v193;
      *(a5 + 88) = v76;
      v80 = v105;
      *(a5 + 96) = v106;
      *(a5 + 104) = v70;
      *(a5 + 112) = v80;
      *(a5 + 120) = v77;
      v81 = v103;
      *(a5 + 128) = v104;
      *(a5 + 136) = v81;
      DWORD1(v142) = *&v179[3];
      *(&v142 + 1) = *v179;
      HIBYTE(v143) = v178;
      *(&v143 + 11) = v177;
      *(a5 + 232) = v78;
      v82 = v100;
      *(a5 + 240) = v101;
      *(a5 + 248) = v79;
      *(a5 + 256) = v82;
      *(a5 + 264) = v121;
      *&v136 = v133;
      *(&v136 + 1) = v132;
      LOBYTE(v137) = v130;
      *(&v137 + 1) = v134;
      *&v138 = KeyPath;
      v83 = v102;
      *(a5 + 272) = v99;
      *(a5 + 280) = v83;
      WORD4(v138) = 1;
      BYTE10(v138) = 1;
      *&v139 = v127;
      *(&v139 + 1) = v129;
      v140 = v126;
      v84 = v136;
      v85 = v137;
      v86 = v126;
      *(a5 + 48) = v139;
      *(a5 + 64) = v86;
      v87 = v138;
      *(a5 + 16) = v85;
      *(a5 + 32) = v87;
      *a5 = v84;
      *(a5 + 80) = 0;
      v89 = v109;
      v88 = v110;
      *&v141 = v110;
      *(&v141 + 1) = v109;
      LOBYTE(v75) = v107;
      LOBYTE(v142) = v107;
      v90 = v108;
      *(&v142 + 1) = v125;
      *&v143 = v108;
      WORD4(v143) = 1;
      BYTE10(v143) = 1;
      v144 = v124;
      *&v145 = v123;
      *(&v145 + 1) = v122;
      v91 = v141;
      v92 = v142;
      v93 = v145;
      *(a5 + 192) = v124;
      *(a5 + 208) = v93;
      v94 = v143;
      *(a5 + 160) = v92;
      *(a5 + 176) = v94;
      *(a5 + 144) = v91;
      *(a5 + 224) = 0;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8568, &qword_AF8260);
      v96 = v135;
      sub_15F84(v135, a5 + *(v95 + 96), &qword_DE8560, &qword_AF81C0);
      sub_15F84(&v136, &v158, &qword_DE8570, &qword_AF8268);
      sub_15F84(&v141, &v158, &qword_DE8570, &qword_AF8268);
      sub_12E1C(v128, &qword_DE8560, &qword_AF81C0);
      sub_12E1C(v96, &qword_DE8560, &qword_AF81C0);
      v146[0] = v88;
      v146[1] = v89;
      v147 = v75;
      *v148 = *v179;
      *&v148[3] = *&v179[3];
      v149 = v125;
      v150 = v90;
      v151 = 1;
      v152 = 1;
      v153 = v177;
      v154 = v178;
      v155 = v124;
      v156 = v123;
      v157 = v122;
      sub_12E1C(v146, &qword_DE8570, &qword_AF8268);
      v158 = v133;
      v159 = v132;
      v160 = v130;
      *v161 = v194[0];
      *&v161[3] = *(v194 + 3);
      v162 = v134;
      v163 = KeyPath;
      v164 = 1;
      v165 = 1;
      v166 = v192;
      v167 = v193;
      v168 = v127;
      v169 = v129;
      v170 = v126;
      return sub_12E1C(&v158, &qword_DE8570, &qword_AF8268);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  type metadata accessor for Environment(0);
  sub_365F8(&qword_DE8498, type metadata accessor for Environment, &unk_AF7FB8);
  result = sub_AB5F00();
  __break(1u);
  return result;
}

double sub_343E8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v6);

  v2 = v7;
  result = *v6;
  v4 = v6[1];
  v5 = v6[2];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_34474(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_AB5510(v6);
    v2 = v6[0];
    if (v6[0])
    {
      v3 = v6[1];

      v2(v4);
      return sub_17654(v2, v3);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for Environment(0);
    sub_365F8(&qword_DE8498, type metadata accessor for Environment, &unk_AF7FB8);
    result = sub_AB5F00();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_34598())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4);
  v0 = v4[0];
  if (v4[0])
  {
    v1 = v4[1];
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v2 + 24) = v1;

    return sub_36C04;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_34670@<X0>(uint64_t a1@<X8>)
{
  JSListenNowMusicSiriUpsell.buttonTitle.getter();
  sub_36A48();
  v2 = sub_AB6F20();
  v4 = v3;
  v6 = v5;
  sub_AB6C80();
  sub_AB6C10();
  sub_AB6C60();

  v7 = sub_AB6E80();
  v9 = v8;
  v11 = v10;

  sub_36B74(v2, v4, v6 & 1);

  sub_AB74B0();
  v12 = sub_AB6E10();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_36B74(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

double sub_347B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

double sub_34854@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_348D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_34950@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v6);
  v3 = v6[0];
  v4 = v6[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_349D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_367CC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
  }

  sub_307CC(v2, v3);

  return sub_AB5520();
}

double sub_34AE4@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v7);

  v3 = v8;
  result = *v7;
  v5 = v7[1];
  v6 = v7[2];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_34B74(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 6);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_AB5520();
}

uint64_t sub_34C14()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__width;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__onButtonSelect;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84D8, &unk_AF8070);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__specs;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84D0, &qword_AF8068);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_34D54()
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84D0, &qword_AF8068);
  v1 = *(v17 - 8);
  __chkstk_darwin();
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84D8, &unk_AF8070);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C0, &qword_AFDB00);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__width;
  *&v18 = 0;
  sub_AB54D0();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__onButtonSelect;
  v18 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE83A0, &qword_AF7F50);
  sub_AB54D0();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC16MusicApplicationP33_65CD036AE6E15FDE6477DBFCBBC6957011Environment__specs;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE83B0, &qword_AF7F58);
  sub_AB54D0();
  (*(v1 + 32))(v0 + v14, v3, v17);
  return v0;
}

uint64_t sub_34FFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

char *sub_3504C(void *a1)
{
  *(v1 + qword_DE8440) = a1;
  type metadata accessor for Environment(0);
  swift_allocObject();
  v3 = a1;
  v4 = sub_34D54();
  v5 = qword_DE8340;
  *(v1 + qword_DE8340) = v4;
  sub_365F8(&qword_DE8498, type metadata accessor for Environment, &unk_AF7FB8);
  v6 = v3;
  sub_AB5F20();
  v8 = v7;
  type metadata accessor for JSListenNowMusicSiriUpsell(0);
  sub_365F8(&qword_DE84A0, type metadata accessor for JSListenNowMusicSiriUpsell, &protocol conformance descriptor for JSListenNowMusicSiriUpsell);
  v9 = sub_AB5B50();
  v11 = v10;
  v12 = *(v1 + v5);

  v19 = sub_AB5490();

  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE84A8, &qword_AF7FF0);
  sub_36640();
  v18 = sub_AB77E0();
  v14 = sub_AB64F0();

  [v14 traitCollection];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5520();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_36784;
  *(v16 + 24) = v15;

  swift_retain_n();
  sub_AB5520();

  return v14;
}

void sub_3536C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_353C0();
  }
}

void sub_353C0()
{
  v1 = sub_AB3430();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin();
  v54 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB3820();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v9 = &v51 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v51 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v14 = &v51 - v13;
  v15 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v16 = *&v0[qword_DE8440];
  v57 = v15;
  v58 = v16;
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  v69 = xmmword_AF7710;
  PresentationSource.init(viewController:position:)(v0, v67, v66);
  v17 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v64, 0, sizeof(v64));
  v65 = 0;
  v18 = *(*(v17 - 8) + 56);
  v59 = v14;
  v18(v14, 1, 1, v17);
  sub_12AFE8();
  v20 = v19;
  sub_15F84(v64, &v61, &unk_DE8E30, "\b]\r");
  if (!*(&v62 + 1))
  {
    sub_12E1C(&v61, &unk_DE8E30, "\b]\r");
    v25 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
  v21 = _s30CollectionViewSelectionHandlerVMa(0);
  v22 = swift_dynamicCast();
  v23 = *(v21 - 8);
  (*(v23 + 56))(v9, v22 ^ 1u, 1, v21);
  if ((*(v23 + 48))(v9, 1, v21) == 1)
  {
LABEL_5:
    sub_12E1C(v9, &qword_E037A0, &unk_AF8B30);
    v24 = 1;
    goto LABEL_6;
  }

  (*(v4 + 16))(v12, &v9[*(v21 + 20)], v3);
  sub_2D6C0(v9, _s30CollectionViewSelectionHandlerVMa);
  v24 = 0;
LABEL_6:
  v26 = v4;
  (*(v4 + 56))(v12, v24, 1, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v28 = Strong, sub_12B2FC(), v30 = v29, v32 = v31, v28, !v30))
  {
    sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
    v37 = 0;
    v38 = v20;
    v39 = v20;
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  (*(v32 + 8))(ObjectType, v32);
  v35 = v34;
  swift_unknownObjectRelease();
  v36 = v53;
  sub_15F84(v12, v53, &unk_DE8E20, &qword_AF7990);
  if ((*(v26 + 48))(v36, 1, v3) == 1)
  {
    sub_12E1C(v36, &unk_DE8E20, &qword_AF7990);
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  else
  {
    (*(v26 + 32))(v52, v36, v3);
    sub_365F8(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
  }

  v38 = v20;
  v40 = swift_getObjectType();
  v41 = v54;
  sub_3B8F68(v40);
  v37 = sub_21CCAC(1, v41, &v61, v40, v35);
  (*(v55 + 8))(v41, v56);
  sub_12E1C(&v61, &qword_DF2BD0, &unk_AFDC00);
  sub_12E1C(v12, &unk_DE8E20, &qword_AF7990);
  swift_unknownObjectRelease();
  v39 = v20;
  if (!v20)
  {
LABEL_14:
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      v43 = v42;
      sub_12AFE8();
      v39 = v44;
    }

    else
    {
      v39 = 0;
    }
  }

LABEL_17:
  sub_15F28(v66, &v61);
  sub_15F84(v64, (v7 + 104), &unk_DE8E30, "\b]\r");
  v46 = v59;
  v45 = v60;
  sub_15F84(v59, &v7[*(v60 + 28)], &unk_DEA510, "\b]\r");
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 8) = 1;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  *(v7 + 11) = 0;
  v47 = v38;
  sub_2D594(&v61, v7);
  *(v7 + 12) = 0;
  v48 = *v57;
  *(&v62 + 1) = v45;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v61);
  sub_2D604(v7, boxed_opaque_existential_0);
  v50 = v48;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v58, 0, v37, v39, &v61);
  sub_12E1C(v46, &unk_DEA510, "\b]\r");
  sub_12E1C(v64, &unk_DE8E30, "\b]\r");
  sub_1611C(v66);
  sub_2D6C0(v7, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v61, &unk_DE8E40, &unk_AF8050);
}

Swift::Void __swiftcall JSListenNowMusicSiriUpsellViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
    v5 = [v1 traitCollection];
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = sub_AB5500();
    v8 = *(v7 + 48);
    if (v8)
    {
      v9 = v6;
      *(v7 + 48) = v5;

      v9(&v12, 0);

      v10 = [v1 view];
      if (v10)
      {
        v11 = v10;
        [v10 setNeedsLayout];

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

void sub_35DBC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSListenNowMusicSiriUpsellViewController.traitCollectionDidChange(_:)(v9);
}

Swift::Void __swiftcall JSListenNowMusicSiriUpsellViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  sub_35E70(0, 0, 1);
}

id sub_35E70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    result = [v3 view];
    if (!result)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 = result;
    [result bounds];
  }

  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [objc_opt_self() music_defaultLayoutInsetsInView:result];

  sub_ABA530();
  v8 = v7;
  sub_AB64B0();
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v13);

  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v13[0];

  [v3 preferredContentSize];
  if (v10 + v11 != v12)
  {
    [v3 preferredContentSize];
    [v3 setPreferredContentSize:?];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v13);

  if (v13[0] != v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13[0] = v8;

    return sub_AB5520();
  }

  return result;
}

void sub_360B0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLayoutSubviews");
  sub_35E70(0, 0, 1);
}

uint64_t sub_36174()
{
}

uint64_t sub_361B4(uint64_t a1)
{
}

void sub_36200(void *a1)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_36238(uint64_t a1, void *a2)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_36298(uint64_t a1)
{
  sub_363CC();
  if (v1 <= 0x3F)
  {
    sub_3641C(319, &qword_DE8398, &qword_DE83A0, &qword_AF7F50);
    if (v2 <= 0x3F)
    {
      sub_3641C(319, &qword_DE83A8, &unk_DE83B0, &qword_AF7F58);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_363CC()
{
  if (!qword_DFE850)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_DFE850);
    }
  }
}

void sub_3641C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_AB5540();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_36490(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_36548(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36590(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_365F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_36640()
{
  result = qword_DE84B0;
  if (!qword_DE84B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE84A8, &qword_AF7FF0);
    sub_366F8();
    sub_36A00(&qword_DE84C0, &qword_DE84C8, &qword_AF7FF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE84B0);
  }

  return result;
}

unint64_t sub_366F8()
{
  result = qword_DE84B8;
  if (!qword_DE84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE84B8);
  }

  return result;
}

uint64_t sub_3674C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_36794()
{

  return swift_deallocObject();
}

uint64_t sub_367DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_36824(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_36890()
{
  result = qword_DE8500;
  if (!qword_DE8500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE84F0, &qword_AF8170);
    sub_36948();
    sub_36A00(&qword_DE8518, &qword_DE8520, &qword_AF8180, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8500);
  }

  return result;
}

unint64_t sub_36948()
{
  result = qword_DE8508;
  if (!qword_DE8508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE84E8, &qword_AF8168);
    sub_36A00(&qword_DE8510, &qword_DE84E0, &qword_AF8160, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8508);
  }

  return result;
}

uint64_t sub_36A00(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_36A48()
{
  result = qword_DF2B30;
  if (!qword_DF2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF2B30);
  }

  return result;
}

uint64_t sub_36AB4()
{

  return swift_deallocObject();
}

uint64_t sub_36B0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_36B74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_36B84()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE84F0, &qword_AF8170);
  sub_36890();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_36C1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unsigned __int8 *sub_36C60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_title];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_altText];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled] = 2;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText];
  *v16 = 0;
  v16[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeColor] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment] = 0;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidFailHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayingDidChangeHandler];
  *v19 = 0;
  v19[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView] = 0;
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
  sub_3ECDC(v65);
  v21 = v65[1];
  *v20 = v65[0];
  *(v20 + 1) = v21;
  *(v20 + 4) = v66;
  v22 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_textStackViewInsets];
  *v22 = xmmword_AF8270;
  v22[1] = xmmword_AF8270;
  v23 = &v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents];
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_measurementTextStackViewComponent] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView] = 0;
  v24 = OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView;
  type metadata accessor for ShadowBackdropView();
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v25 setUserInteractionEnabled:0];
  v26 = [v25 layer];

  [v26 setZPosition:-1.0];
  *&v4[v24] = v25;
  *&v4[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference] = 2;
  v64.receiver = v4;
  v64.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v64, "initWithFrame:", a1, a2, a3, a4);
  v28 = [v27 traitCollection];
  v29 = v27[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  if (v29 == 2)
  {

    v30 = 1.0;
  }

  else
  {
    v31 = v28;
    v32 = [v28 horizontalSizeClass] == &dword_0 + 2;

    v30 = *&qword_AF8280[v32];
    if ((v29 & 1) == 0)
    {
      v30 = 0.75;
    }
  }

  sub_45C3A4(v30);
  v33 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  v34 = *&v27[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v35 = &v27[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
  result = swift_beginAccess();
  v37 = *(v35 + 4);
  if (v37 >> 62)
  {
    result = sub_ABB060();
    v38 = result;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_15:
    v44 = v27;
    goto LABEL_16;
  }

  v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
  if (!v38)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v38 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v39 = v27;
  v40 = v34;

  for (i = 0; i != v38; ++i)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v43 = sub_36003C(i, v37, v41);
    }

    else
    {
      v43 = *(v37 + 8 * i + 32);
    }

    TextStackView.add(_:)(v43);
  }

LABEL_16:
  v45 = *&v27[v33];

  v46 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v45[v46] = 1;

  v47 = sub_3733C();
  v48 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
  swift_beginAccess();
  v47[v48] = 0;

  v49 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView;
  v50 = *&v27[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView];
  result = sub_373B4();
  v52 = v51;
  if (v51 >> 62)
  {
    result = sub_ABB060();
    v53 = result;
    if (result)
    {
LABEL_18:
      if (v53 >= 1)
      {

        for (j = 0; j != v53; ++j)
        {
          if ((v52 & 0xC000000000000001) != 0)
          {
            v56 = sub_36003C(j, v52, v54);
          }

          else
          {
            v56 = *(v52 + 8 * j + 32);
          }

          TextStackView.add(_:)(v56);
        }

        goto LABEL_25;
      }

LABEL_34:
      __break(1u);
      return result;
    }
  }

  else
  {
    v53 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
    if (v53)
    {
      goto LABEL_18;
    }
  }

LABEL_25:

  v57 = [v27 contentView];
  [v57 addSubview:*&v27[v49]];

  [v27 insertSubview:*&v27[OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView] atIndex:0];
  v58 = sub_45C560();

  sub_13C80(0, &qword_DE8700, UIImage_ptr);
  v59 = UIImage.init(systemName:pointSize:weight:)(0xD000000000000010, 0x8000000000B4A550, 4, 20.0);
  if (v59)
  {
    v60 = v59;
    v61 = [v59 imageWithRenderingMode:2];
  }

  else
  {
    v61 = 0;
  }

  [v58 setImage:v61 forState:0];

  v62 = *&v27[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton];
  if (qword_DE6720 != -1)
  {
    swift_once();
  }

  v67[0] = xmmword_DE85C8;
  v67[1] = unk_DE85D8;
  v68 = qword_DE85E8;
  v63 = xmmword_DE85C8;
  UIView.shadow.setter(v67);

  return v27;
}

id sub_3733C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView);
  }

  else
  {
    type metadata accessor for TextStackView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_373B4()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents);
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents + 8);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents + 16);
  if (v2)
  {
    v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents);
  }

  else
  {
    sub_3EF34(2, v12);
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v5 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000016, 0x8000000000B4A440, v12);

    sub_3F050(v13);
    swift_allocObject();
    v6 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000019, 0x8000000000B4A460, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_AF7C50;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    v8 = *v1;
    v9 = v1[1];
    v10 = v1[2];
    *v1 = v5;
    v1[1] = v6;
    v1[2] = v7;
    swift_retain_n();

    sub_3F11C(v8, v9, v10);
  }

  sub_3F168(v2, v3, v4);
  return v5;
}

void sub_3758C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  if (v4 == 2)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v3;
    v7 = [v3 horizontalSizeClass] == &dword_0 + 2;

    v5 = *&qword_AF8280[v7];
    if ((v4 & 1) == 0)
    {
      v5 = 0.75;
    }
  }

  sub_45C3A4(v5);
  sub_37650();
}

void sub_37650()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
  swift_beginAccess();
  sub_3CA88(v2);
  swift_endAccess();

  v4 = v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference];
  v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference] = 2;
  sub_3CD68(v4);
  v5 = *(v3 + 4);
  v6 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (v5 >> 62)
  {
    v8 = sub_ABB060();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = sub_36003C(i, v5, v7);
    }

    else
    {
      v10 = *(v5 + 8 * i + 32);
    }

    TextStackView.add(_:)(v10);
  }

LABEL_10:

  v11 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  v12 = [v1 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = sub_ABA320();
  v15 = sub_373B4();
  v17 = v16;
  v19 = v18;
  if (v14)
  {
    v20 = 1;
  }

  else if (v11 == 2 || (v11 & 1) == 0)
  {
    swift_beginAccess();
    v21 = *(v17 + 120);
    v22 = *(v17 + 112) & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v21) & 0xF;
    }

    if (v22)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    v20 = 3;
  }

  swift_beginAccess();
  *(v15 + 88) = v20;
  sub_2EB2A8();
  v23 = &v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents];
  v24 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents];
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents + 8];
  v26 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents + 16];
  *v23 = v15;
  v23[1] = v17;
  v23[2] = v19;
  sub_3F11C(v24, v25, v26);
}

uint64_t sub_3791C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_title];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_title + 8];
  if (v5 != result || v4 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      v7 = String.trim()();

      v8 = OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
      swift_beginAccess();
      v9 = *&v3[v8];
      swift_beginAccess();
      v9[7] = v7;

      sub_2EB704();

      v10 = *&v3[OBJC_IVAR____TtC16MusicApplication10PosterCell_measurementTextStackViewComponent];
      if (v10)
      {
        swift_beginAccess();
        v10[7] = v7;

        sub_2EB704();
      }

      else
      {
      }

      sub_37650();
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v11 = swift_allocObject();
      *(v11 + 16) = v3;
      v12 = v3;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v11);
    }
  }

  return result;
}

uint64_t sub_37AC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_3791C(v4, v5);
}

uint64_t sub_37B14(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 1);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    sub_37650();
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    v13 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
  }
}

uint64_t sub_37CA8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 2);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    sub_37650();
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    v13 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
  }
}

uint64_t sub_37EC8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = v2;
    v10 = sub_373B4();

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    sub_38184();
    sub_37650();
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v13 = v9;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
  }
}

uint64_t sub_38048(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = v2;
      v5 = sub_373B4();

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      sub_38184();
      sub_37650();
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      v8 = v4;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v7);
    }
  }

  return result;
}

void sub_38184()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v6 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView, 0.4, 0.0);
    [v6 removeFromSuperview];

    v7 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView, 0.0, 0.4);
LABEL_9:
    v15 = v7;
    [v7 removeFromSuperview];
    goto LABEL_24;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    v5 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView, 0.4, 0.0);
    [*(v4 + 112) addSubview:v5];
  }

  else
  {
    v5 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView, 0.4, 0.0);
    [v5 removeFromSuperview];
  }

  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title + 8);
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title) & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle + 8);
    if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle) & 0xFFFFFFFFFFFFLL))
    {
      v12 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText + 8);
      if (!((v12 & 0x2000000000000000) != 0 ? HIBYTE(v12) & 0xF : *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText) & 0xFFFFFFFFFFFFLL))
      {
        v7 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView, 0.0, 0.4);
        goto LABEL_9;
      }
    }
  }

  v14 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v15 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView, 0.0, 0.4);
  [*(v14 + 112) addSubview:?];
LABEL_24:
}

uint64_t sub_3838C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = v2;
    sub_373B4();
    v11 = v10;

    v12 = String.trim()();

    swift_beginAccess();
    v11[7] = v12;

    sub_2EB704();

    sub_38184();
    sub_37650();
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v14 = v9;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v13);
  }
}

uint64_t sub_38508(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_altText);
  result = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_altText);
  v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_altText + 8);
  *v4 = a1;
  v4[1] = a2;
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    v7 = result == a1 && v6 == a2;
    if (!v7 && (sub_ABB3C0() & 1) == 0)
    {
LABEL_12:
      v8 = v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
      swift_beginAccess();
      v9 = *(v8 + 24);

      v10 = String.trim()();
      swift_beginAccess();
      v9[7] = v10;

      sub_2EB704();
    }
  }
}

uint64_t sub_3863C(uint64_t result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled];
  v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled] = result;
  if (v2 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  sub_38184();
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v3);
}

void sub_38720(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled) = a1;
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2 || ((v3 ^ a1) & 1) == 0)
  {
    return;
  }

  v4 = sub_45C560();
  [v4 setHidden:(v2 & 1) == 0];
}

uint64_t sub_387C4(uint64_t result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled];
  if (result == 2)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else if (v2 == 2 || ((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  v3 = OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
  swift_beginAccess();
  v4 = *&v1[v3];
  result = swift_beginAccess();
  v5 = *(v4 + 120);
  v6 = *(v4 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6)
  {
    v7 = [v1 effectiveUserInterfaceLayoutDirection];
    v8 = *&v1[v3];
    if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment])
    {
      v9 = 4;
    }

    else
    {
      v9 = 3;
    }

    v10 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
    v11 = UIFontTextStyleBody;
    if ((v10 & 1) == 0)
    {
      v11 = UIFontTextStyleSubheadline;
    }

    if (v10 == 2)
    {
      v12 = UIFontTextStyleSubheadline;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
    sub_13C80(0, &qword_DE6EE0, UIFont_ptr);

    v14 = sub_ABA550();
    v15 = objc_opt_self();
    v16 = [v15 whiteColor];
    v17 = [v15 clearColor];

    if (v2)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      *(v18 + 32) = v9;
      *(v18 + 40) = 4;
      *(v18 + 48) = 0;
      v19 = 0x8000000000000000;
      *(v18 + 56) = 0;
      *(v18 + 64) = v14;
      *(v18 + 72) = v7 == &dword_0 + 1;
      v20 = sub_3FB30;
      v17 = 0xEF656C7469546C6CLL;
      v16 = 0x6543726574736F50;
      v14 = 0;
    }

    else
    {
      v19 = 0;
      v20 = v9;
      v18 = 4;
    }

    *&v26 = v16;
    *(&v26 + 1) = v17;
    *&v27 = v20;
    *(&v27 + 1) = v18;
    *&v28 = 0;
    *(&v28 + 1) = v19;
    *&v29 = v14;
    *(&v29 + 1) = 1;
    v30 = xmmword_AF8290;
    swift_beginAccess();
    v22 = v8[3];
    v21 = v8[4];
    v23 = v8[6];
    v31[3] = v8[5];
    v31[4] = v23;
    v31[1] = v22;
    v31[2] = v21;
    v31[0] = v8[2];
    v8[5] = v29;
    v8[6] = xmmword_AF8290;
    v24 = v27;
    v8[2] = v26;
    v8[3] = v24;
    v8[4] = v28;
    sub_2F118(&v26, v25);
    sub_2F174(v31);
    sub_2EB2A8();
    sub_2F174(&v26);
  }

  return result;
}

uint64_t sub_38A9C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled) = a1;
  return sub_387C4(v2);
}

void sub_38AB4(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText + 8];
  if (!a2)
  {
    if (!v4)
    {
      return;
    }

LABEL_10:
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {

      v7 = sub_38C64();
      v8 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v7)))(v13);
      *(v9 + 120) = v3;
      *(v9 + 128) = v4;

      v8(v13, 0);

      v10 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton;
      [*&v2[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton] setContentVerticalAlignment:3];
      v11 = [*&v2[v10] superview];
      if (v11)
      {
      }

      else
      {
        [v2 addSubview:*&v2[v10]];
      }

      return;
    }

    goto LABEL_15;
  }

  if (v4)
  {
    v5 = v3 == a1 && v4 == a2;
    if (v5 || (sub_ABB3C0() & 1) != 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  v12 = sub_38C64();
  [v12 removeFromSuperview];
}

id sub_38C64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v2 = &v39 - v1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton);
  }

  else
  {
    v42 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton;
    SymbolButton.Configuration.init()(v5);
    static SymbolButton.Title.with(_:)(sub_3C818, v43);
    sub_3F974(v43, (v5 + 120));
    v8 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[3];
    v40 = v8[2];
    v41 = v0;
    v12 = *(v5 + 25);
    v13 = *(v5 + 26);
    v14 = *(v5 + 27);
    v15 = *(v5 + 28);

    v16 = v10;
    sub_3F9D0(v12, v13, v14, v15);
    *(v5 + 25) = v9;
    *(v5 + 26) = v10;
    *(v5 + 27) = v40;
    *(v5 + 28) = v11;
    sub_ABA670();
    v17 = sub_ABA680();
    (*(*(v17 - 8) + 56))(v2, 0, 1, v17);
    sub_3FA14(v2, &v5[v3[9]]);
    __asm { FMOV            V0.2D, #20.0 }

    *&v5[v3[13]] = _Q0;
    v23 = &v5[v3[15]];
    *v23 = xmmword_AF82A0;
    *(v23 + 1) = xmmword_AF82A0;
    v24 = SymbolButton.Configuration.Accessibility.init(automaticallyAdjustsForAccessibility:minimumContentSizeCategory:maximumContentSizeCategory:showsLargeContentViewer:)(0);
    v26 = v25;
    v28 = v27;
    LOBYTE(v13) = v29;
    v30 = &v5[v3[16]];

    *v30 = v24 & 1;
    *(v30 + 1) = v26;
    *(v30 + 2) = v28;
    v30[24] = v13 & 1;
    v31 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v32 = SymbolButton.init(configuration:handler:)(v5, 0, 0);
    v33 = swift_allocObject();
    v34 = v41;
    swift_unknownObjectWeakInit();

    v35 = SymbolButton.withProvider(_:)(sub_3FA84, v33);

    v36 = *(v34 + v42);
    *(v34 + v42) = v35;
    v7 = v35;

    v6 = 0;
  }

  v37 = v6;
  return v7;
}

uint64_t sub_38F48(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_38AB4(v4, v5);
}

void sub_38F98(unsigned __int8 a1)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v5 = &v8 - v4;
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeColor) = a1;
  if (v3 != 2)
  {
    v6 = sub_38C64();
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v5, 0, 0, 0, 1);
    sub_12E1C(v5, &unk_DFAAB0, qword_B05AE0);
  }
}

uint64_t sub_390A4(uint64_t result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  if (result == 2)
  {
    if (v3 == 2)
    {
      return result;
    }
  }

  else if (v3 != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  v4 = [v1 traitCollection];
  v5 = v1[v2];
  if (v5 == 2)
  {

    v6 = 1.0;
  }

  else
  {
    v7 = v4;
    v8 = [v4 horizontalSizeClass] == &dword_0 + 2;

    v6 = *&qword_AF8280[v8];
    if ((v5 & 1) == 0)
    {
      v6 = 0.75;
    }
  }

  sub_45C3A4(v6);
  if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed] != 1 || v1[v2] != 2 || (v9 = *(*&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 128)) == 0 || (v10 = [v9 player], v10, !v10))
  {
    sub_3926C();
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment])
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  sub_3F5C0(v11, v1[v2]);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
}

void sub_3926C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v17 = v2;
  if (![v17 enableSetNeedsDisplay])
  {
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) == 2)
  {
    v4 = [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      *(v10 + 24) = 1;
      *(v10 + 32) = v17;
      *(v10 + 40) = v6;
      *(v10 + 48) = v9;
      v11 = v5;
      v12 = v17;
      v13 = v11;

      sub_379490(v5, 1, sub_3EB7C, v8, sub_3EB9C, v10);

      return;
    }
  }

  v14 = &v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
  v15 = v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8];
  if (v15 == 255)
  {
LABEL_12:
  }

  else
  {
    v16 = *v14;
    *v14 = 0;
    v14[8] = -1;
    v17 = v17;
    sub_3EB30(v16, v15);
    [v17 setNeedsDisplay];
  }
}

void sub_3953C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v17 = v2;
  if (![v17 enableSetNeedsDisplay])
  {
    goto LABEL_11;
  }

  v4 = [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = 1;
    *(v10 + 32) = v17;
    *(v10 + 40) = v6;
    *(v10 + 48) = v9;
    v11 = v5;
    v12 = v17;
    v13 = v11;

    sub_379490(v5, 1, sub_3FC40, v8, sub_3F1F0, v10);

    return;
  }

  v14 = &v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
  v15 = v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8];
  if (v15 == 255)
  {
LABEL_11:
  }

  else
  {
    v16 = *v14;
    *v14 = 0;
    v14[8] = -1;
    v17 = v17;
    sub_3EB30(v16, v15);
    [v17 setNeedsDisplay];
  }
}

void sub_397F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v17 = v2;
  if (![v17 enableSetNeedsDisplay])
  {
    goto LABEL_11;
  }

  v4 = (*(&stru_388.reserved2 + (swift_isaMask & *v0)))();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = 1;
    *(v10 + 32) = v17;
    *(v10 + 40) = v6;
    *(v10 + 48) = v9;
    v11 = v5;
    v12 = v17;
    v13 = v11;

    sub_379490(v5, 1, sub_3F2A4, v8, sub_3F2F8, v10);

    return;
  }

  v14 = &v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource];
  v15 = v3[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_textureSource + 8];
  if (v15 == 255)
  {
LABEL_11:
  }

  else
  {
    v16 = *v14;
    *v14 = 0;
    v14[8] = -1;
    v17 = v17;
    sub_3EB30(v16, v15);
    [v17 setNeedsDisplay];
  }
}

uint64_t sub_39AC8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) = a1;
  return sub_390A4(v2);
}

uint64_t sub_39AE0(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment;
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 1952867692;
  }

  else
  {
    v4 = 0x7265746E6563;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment])
  {
    v6 = 1952867692;
  }

  else
  {
    v6 = 0x7265746E6563;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment])
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {
      if (v1[v2])
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }

      sub_3F5C0(v11, v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle]);
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      v13 = v1;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v12);
    }
  }

  return result;
}

uint64_t sub_39C54(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment);
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment) = a1 & 1;
  return sub_39AE0(v2);
}

uint64_t sub_39C70()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle;
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  [v1 bounds];
  [v4 sizeThatFits:{v5, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  v10 = v1[v2];
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v11 = *&v1[v3];
    v12 = [v11 traitCollection];
    [v12 displayScale];
    v14 = v13;

    if (v9 <= 5.99231045e307)
    {
      v15 = v9;
    }

    else
    {
      v15 = 5.99231045e307;
    }

    sub_2E94A4(v18, 0.0, 0.0, v7, v15, v14);
    sub_3F250(v18);
  }

  v16 = [v1 traitCollection];
  [v16 displayScale];

  return sub_AB3A00();
}

void sub_39E1C(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkImageSize);
  *v3 = a1;
  v3[1] = a2;
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v5 = v4[10];
  v6 = v4[11];
  v4[10] = a1;
  v4[11] = a2;
  sub_75614(v5, v6);
  type metadata accessor for CGSize(0);
  if (sub_AB38D0())
  {
    v7 = v4[12];
    v8 = v4[13];
    *(v4 + 6) = *v3;
    sub_756F8(v7, v8);
  }
}

void sub_39ED8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler];
    if (v5)
    {
      v6 = *&Strong[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler + 8];
      sub_307CC(*&Strong[OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler], v6);

      v5(a1);
      sub_17654(v5, v6);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    if (v7[OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed] == 1 && v7[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle] == 2 && *(*&v7[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 128))
    {
      v8 = v7;
      v9 = [*(*&v7[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 128) player];

      if (v9)
      {
        return;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      sub_3926C();
    }
  }
}

void sub_3A044(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed);
  v4 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed) = a1;
  if (v3 != (a1 & 1))
  {
    v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    v6 = *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
    *(v5 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = v4;
    sub_76070(v6);
    if (*(v1 + v2) != 1 || *(v1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) != 2 || (v7 = *(v5 + 128)) == 0 || (v8 = [v7 player], v8, !v8))
    {

      sub_3926C();
    }
  }
}

void sub_3A120()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && *(v1 + 72))
  {
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_needsArtworkReload) = 1;
    v2 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer);
    *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLoadingTimer) = 0;
    if (v2)
    {
      [v2 invalidate];
    }

    v3 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);

      v3(v5);

      sub_17654(v3, v4);
    }
  }
}

id sub_3A204()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = sub_3733C();
    v4 = [v3 superview];

    if (v4)
    {
      return v4;
    }

    v6 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView;
  }

  else
  {
    result = [*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView) superview];
    if (result)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView;
  }

  v7 = *(v0 + v6);

  return v7;
}

uint64_t sub_3A2E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = sub_373B4();
  }

  else
  {
    v4 = OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
    swift_beginAccess();
    v3 = *(v0 + v4);
  }

  return v3;
}

id sub_3A374()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_3733C();
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  }
}

double sub_3A3B0()
{
  v1 = v0[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  v2 = [v0 traitCollection];
  if (v1 == 2)
  {
    v3 = v2;
    v4 = [v2 preferredContentSizeCategory];
    v5 = sub_ABA330();

    result = 86.0;
    if (v5)
    {
      return 172.0;
    }
  }

  else
  {

    return 0.0;
  }

  return result;
}

id sub_3A4D8()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) == 2)
  {
    return [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];
  }

  else
  {
    return 0;
  }
}

id sub_3A534()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed) != 1 || *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) != 2)
  {
    return 0;
  }

  result = *(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 128);
  if (result)
  {
    return [result player];
  }

  return result;
}

void sub_3A5A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v197 = sub_ABA620();
  v196 = *(v197 - 8);
  __chkstk_darwin();
  v195 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_ABA680();
  v203 = *(v205 - 8);
  __chkstk_darwin();
  v191 = &v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v201 = &v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v192 = &v188 - v6;
  __chkstk_darwin();
  v193 = &v188 - v7;
  __chkstk_darwin();
  v200 = &v188 - v8;
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v188 - v10;
  v211.receiver = v1;
  v211.super_class = ObjectType;
  objc_msgSendSuper2(&v211, "layoutSubviews", v9);
  v206 = [v1 traitCollection];
  [v206 displayScale];
  v202 = v12;
  v207 = [v1 effectiveUserInterfaceLayoutDirection];
  v13 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView];
  [v13 bounds];
  v208 = v14;
  v210 = v15;
  v17 = v16;
  *&v209 = v18;
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame];
  v20 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame + 8];
  v21 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame + 16];
  *&v198 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame + 24];
  v22 = [v1 contentView];
  [v22 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v212.origin.x = v24;
  v212.origin.y = v26;
  v212.size.width = v28;
  v212.size.height = v30;
  Width = CGRectGetWidth(v212);
  v32 = [v1 traitCollection];
  v33 = OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle;
  v34 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle];
  v194 = v11;
  if (v34 == 2)
  {

    v35 = 1.0;
  }

  else
  {
    v36 = v32;
    v37 = [v32 horizontalSizeClass] == &dword_0 + 2;

    v35 = *&qword_AF8280[v37];
    if ((v34 & 1) == 0)
    {
      v35 = 0.75;
    }
  }

  sub_45C3A4(v35);
  v38 = v1[v33];
  v39 = v208;
  v40 = v210;
  if (v38 == 2 || (v38 & 1) != 0)
  {
    swift_beginAccess();
    sub_AB3A00();
    v42 = v41;
  }

  else
  {
    v43 = v206;
    [v206 displayScale];
    sub_AB3A00();
    v45 = v44;
    v46 = [v43 preferredContentSizeCategory];
    v47 = sub_ABA330();

    v48 = 86.0;
    if (v47)
    {
      v48 = 172.0;
    }

    v42 = v45 + v48;
    v40 = v210;
  }

  sub_39E1C(Width, v42);
  sub_76B28(v39, v40, Width, v42);
  v49 = &v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText];
  v50 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText + 8];
  v51 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText] & 0xFFFFFFFFFFFFLL;
  if ((v50 & 0x2000000000000000) != 0)
  {
    v51 = HIBYTE(v50) & 0xF;
  }

  v199 = v51;
  v52 = v1[v33] == 2;
  v204 = v13;
  if (v52)
  {
    v53 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
    v54 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    v55 = &v54[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
    swift_beginAccess();
    v56 = *v55;
    *(v55 + 4) = 0;
    *v55 = 0u;
    *(v55 + 1) = 0u;
    v57 = v54;
    v58 = &selRef__authenticateReturningError_;
    v59 = v57;

    [v59 setNeedsLayout];
    v60 = *&v1[v53];
    v61 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v60 + v61) = 1;
    v62 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView];
    [v1 bounds];
    [v62 setFrame:{UIEdgeInsetsInsetRect(v63, v64, v65, v66, 7.0, 7.0)}];
    v67 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView];
    if (v67)
    {
      [v67 setHidden:0];
    }

    v68 = sub_3733C();
    [v68 frame];
    [v68 setFrame:18.0];

    v42 = *&v198;
  }

  else
  {
    v190 = v33;
    [v13 setFrame:{v39, v40, v17, v42}];
    v69 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView;
    v70 = qword_DE6710;
    v71 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    v72 = v71;
    if (v70 != -1)
    {
      swift_once();
    }

    v73 = xmmword_DE8578;
    v74 = &v72[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
    v209 = *(&xmmword_DE8578 + 8);
    v198 = unk_DE8590;
    swift_beginAccess();
    v75 = *v74;
    *v74 = v73;
    *(v74 + 24) = v198;
    *(v74 + 8) = v209;
    v76 = v73;

    [v72 setNeedsLayout];
    v77 = *&v1[v69];
    v78 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v77 + v78) = 2;
    v79 = sub_3733C();
    v189 = v69;
    if (qword_DE6718 != -1)
    {
      swift_once();
    }

    v80 = xmmword_DE85A0;
    v81 = &v79[OBJC_IVAR____TtC16MusicApplication13TextStackView_textShadow];
    v209 = *(&xmmword_DE85A0 + 8);
    v198 = *&algn_DE85B0[8];
    swift_beginAccess();
    v82 = *v81;
    *v81 = v80;
    *(v81 + 24) = v198;
    *(v81 + 8) = v209;
    v83 = v80;

    [v79 setNeedsLayout];
    v84 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView];
    v85 = 0.0;
    *&v198 = v17;
    [v84 setFrame:{UIEdgeInsetsInsetRect(v39, v40, v17, v42, 7.0, 7.0)}];
    v86 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView];
    v33 = v190;
    if (v86)
    {
      [v86 setHidden:1];
    }

    v87 = v199;
    v88 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView;
    [*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView] setHidden:v199 == 0];
    v89 = 0.0;
    v90 = 0.0;
    v91 = 0.0;
    if (v87)
    {
      sub_373B4();
      v93 = v92;

      v94 = sub_2F48A4(v93, v206, 0, 0);

      swift_bridgeObjectRelease_n();
      v85 = UIEdgeInsetsInsetRect(v208, v40, *&v198, v94, 0.0, 18.0);
      v90 = v95;
    }

    v96 = *(v49 + 1);
    v97 = *v49 & 0xFFFFFFFFFFFFLL;
    if ((v96 & 0x2000000000000000) != 0)
    {
      v97 = HIBYTE(v96) & 0xF;
    }

    if (v97 || (v105 = *&v1[v88], *&v1[v189] == v105))
    {
      *&v209 = v91;
      v98 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView];
      v58 = &selRef__authenticateReturningError_;
      if (v98 && *(*&v98[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
      {
        v99 = v89;
        v100 = v98;
        [v100 frame];
        CGRectGetWidth(v213);

        v89 = v99;
      }

      v101 = *(v49 + 1);
      v102 = *v49 & 0xFFFFFFFFFFFFLL;
      v103 = v89;
      if ((v101 & 0x2000000000000000) != 0)
      {
        v102 = HIBYTE(v101) & 0xF;
      }

      if (v102)
      {
        v104 = *&v1[v88];
      }

      else
      {
        v104 = *&v1[v189];
      }

      v106 = v104;
      v39 = v208;
      v40 = v210;
      v17 = *&v198;
      v107 = *&v209;
      sub_ABA490();
      [v106 setFrame:?];

      sub_42AB1C(v85, v103, v90, v107);
      v19 = v39;
      v20 = v40;
      v21 = v17;
      *&v209 = v42;
    }

    else
    {
      [v105 setFrame:{v85, v89, v90, v91}];
      v39 = v208;
      v19 = v208;
      v20 = v40;
      v17 = *&v198;
      v21 = *&v198;
      *&v209 = v42;
      v58 = &selRef__authenticateReturningError_;
    }
  }

  v110 = UIEdgeInsetsInsetRect(v19, v20, v21, v42, 0.0, 12.0);
  v112 = v111;
  v113 = v108;
  if (v1[v33] == 2)
  {
    sub_ABA470();
    v110 = v114;
    v116 = v115;
    v113 = v117;
    v119 = v118;
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView] sizeThatFits:{v108, v109}];
    v119 = v120;
    v214.origin.x = v39;
    v214.origin.y = v40;
    v214.size.width = v17;
    *&v214.size.height = v209;
    MaxY = CGRectGetMaxY(v214);
    v215.origin.x = v110;
    v215.origin.y = v112;
    v215.size.width = v113;
    v215.size.height = v119;
    v122 = MaxY - CGRectGetHeight(v215);
    v40 = v210;
    v116 = v122 + -12.0;
  }

  v123 = *(v49 + 1);
  v124 = *v49 & 0xFFFFFFFFFFFFLL;
  if ((v123 & 0x2000000000000000) != 0)
  {
    v124 = HIBYTE(v123) & 0xF;
  }

  if (v124)
  {
    v125 = sub_3733C();
    v126 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    v127 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

    if (v125 != v127)
    {
      [*v126 setFrame:{v110, v116, v113, v119}];
      v128 = v200;
      goto LABEL_58;
    }
  }

  else
  {
    v126 = &v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  }

  v129 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView];
  if (v129 && *(*&v129[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    v130 = v129;
    [v130 frame];
    CGRectGetWidth(v216);

    v40 = v210;
  }

  v131 = *(v49 + 1);
  v132 = *v49 & 0xFFFFFFFFFFFFLL;
  if ((v131 & 0x2000000000000000) != 0)
  {
    v132 = HIBYTE(v131) & 0xF;
  }

  if (v132)
  {
    v133 = sub_3733C();
  }

  else
  {
    v133 = *v126;
  }

  v134 = v133;
  v128 = v200;
  sub_ABA490();
  [v134 setFrame:?];

  sub_42AB1C(v110, v116, v113, v119);
LABEL_58:
  sub_3BAAC(v110, v116, v113, v119);
  v135 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled];
  if (v135 != 2 && (v135 & 1) != 0)
  {
    v136 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView, 0.0, 0.4);
    v137 = [v136 superview];

    if (v137)
    {
      [v137 bringSubviewToFront:*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView]];
    }

    v217.origin.x = v39;
    v217.origin.y = v40;
    v217.size.width = v17;
    v138 = *&v209;
    *&v217.size.height = v209;
    v139 = CGRectGetHeight(v217) * 0.3;
    v218.origin.x = v39;
    v218.origin.y = v40;
    v218.size.width = v17;
    v218.size.height = v138;
    CGRectGetMaxY(v218);
    v219.origin.y = v40;
    v219.origin.x = v39;
    v219.size.width = v17;
    v219.size.height = v138;
    v140 = CGRectGetWidth(v219);
    v141 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView;
    v142 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView];
    [v1 v58[56]];
    sub_ABA490();
    [v142 setFrame:?];

    v143 = *&v1[v141];
    sub_ABA690();
    v144 = v203;
    v145 = *(v203 + 48);
    v146 = v205;
    if (v145(v128, 1, v205))
    {
      sub_12E1C(v128, &unk_DFFBC0, &unk_AF85C0);
      v147 = 1;
      v148 = v194;
    }

    else
    {
      v149 = v191;
      (*(v144 + 16))(v191, v128, v146);
      sub_12E1C(v128, &unk_DFFBC0, &unk_AF85C0);
      v148 = v194;
      sub_ABA630();
      v146 = v205;
      (*(v144 + 8))(v149, v205);
      v147 = 0;
    }

    v150 = *(v144 + 56);
    v150(v148, v147, 1, v146);
    sub_ABA6A0();

    v58 = &selRef__authenticateReturningError_;
    if (v199)
    {
      v151 = sub_3BBDC(&OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView, 0.4, 0.0);
      v152 = [v151 superview];

      if (v152)
      {
        [v152 bringSubviewToFront:*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView]];
      }

      v153 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView;
      [*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView] setFrame:{0.0, 0.0, v140, v139}];
      v154 = *&v1[v153];
      v155 = v192;
      sub_ABA690();
      v156 = v205;
      if (v145(v155, 1, v205))
      {
        sub_12E1C(v155, &unk_DFFBC0, &unk_AF85C0);
        v157 = 1;
        v158 = v193;
      }

      else
      {
        v159 = v155;
        v160 = v203;
        v161 = v191;
        (*(v203 + 16))(v191, v159, v156);
        sub_12E1C(v159, &unk_DFFBC0, &unk_AF85C0);
        v158 = v193;
        sub_ABA630();
        v156 = v205;
        (*(v160 + 8))(v161, v205);
        v157 = 0;
      }

      v150(v158, v157, 1, v156);
      sub_ABA6A0();
    }
  }

  v162 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled];
  v163 = v203;
  v164 = v204;
  if (v162 != 2 && (v162 & 1) != 0)
  {
    v165 = sub_45C560();
    v166 = [v165 imageForState:0];

    if (v166)
    {
      v167 = sub_38C64();
      v168 = [v167 superview];

      if (!v168)
      {
        [v166 size];
        [v164 v58[56]];
        CGRectGetMinY(v222);
        [v164 v58[56]];
        CGRectGetMinX(v223);
        v187 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton];
        sub_ABA490();
        [v187 setFrame:?];

        goto LABEL_83;
      }
    }
  }

  v169 = *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText + 8];
  if (v169)
  {
    if ((v169 & 0x2000000000000000) != 0 ? HIBYTE(v169) & 0xF : *&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText] & 0xFFFFFFFFFFFFLL)
    {
      v171 = sub_38C64();
      [v171 frame];

      v172 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton;
      [*&v1[OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton] sizeThatFits:{v17, *&v209}];
      [v164 v58[56]];
      CGRectGetMinY(v220);
      [v164 v58[56]];
      CGRectGetMinX(v221);
      v173 = *&v1[v172];
      [v1 v58[56]];
      sub_ABA490();
      [v173 setFrame:?];

      [*&v1[v172] setUserInteractionEnabled:0];
    }
  }

LABEL_83:
  [v1 v58[56]];
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v181 = v180;
  v182 = v201;
  sub_ABA690();
  if ((*(v163 + 48))(v182, 1, v205))
  {
    sub_12E1C(v182, &unk_DFFBC0, &unk_AF85C0);
    v183 = 0.0;
  }

  else
  {
    v184 = v195;
    sub_ABA650();
    sub_12E1C(v182, &unk_DFFBC0, &unk_AF85C0);
    sub_ABA610();
    v183 = v185;
    (*(v196 + 8))(v184, v197);
  }

  v186 = [objc_opt_self() effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v175 curve:{v177, v179, v181, v183}];
  [v1 setFocusEffect:v186];
}

void sub_3BAAC(double a1, double a2, CGFloat a3, double a4)
{
  v5 = v4;
  v10 = sub_3C330();
  [v10 sizeThatFits:{a3, a4}];
  v12 = v11;

  v13 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView;
  [*(v5 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView) setFrame:{a1, a2, a3, v12}];
  v14 = *(v5 + v13);
  v15 = [v14 traitCollection];
  [v15 displayScale];
  v17 = v16;

  if (v12 <= 5.99231045e307)
  {
    v18 = v12;
  }

  else
  {
    v18 = 5.99231045e307;
  }

  sub_2E94A4(v20, 0.0, 0.0, a3, v18, v17);
  sub_3F250(v20);

  v19 = *(v5 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference);
  *(v5 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference) = v20[7] < 2;
  sub_3CD68(v19);
}

_OWORD *sub_3BBDC(uint64_t *a1, double a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_AF7C50;
    v11 = objc_opt_self();
    v12 = [v11 blackColor];
    v13 = [v12 colorWithAlphaComponent:a2];

    *(v10 + 32) = v13;
    v14 = [v11 blackColor];
    v15 = [v14 colorWithAlphaComponent:a3];

    *(v10 + 40) = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_AF82B0;
    v17 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v18) = 1050589266;
    LODWORD(v19) = 1008981770;
    LODWORD(v20) = 1058306785;
    LODWORD(v21) = 1064011039;
    *(v16 + 32) = [v17 initWithControlPoints:v18 :v19 :v20 :v21];
    static Gradient.vertical(colors:locations:interpolations:)(v10, 0, v16, v27);

    v22 = objc_allocWithZone(type metadata accessor for Gradient.View());
    v23 = Gradient.View.init(configuration:)(v27);
    v24 = *(v8 + v4);
    *(v8 + v4) = v23;
    v6 = v23;

    v5 = 0;
  }

  v25 = v5;
  return v6;
}

uint64_t sub_3BF18()
{
  v10._countAndFlagsBits = 60;
  v10._object = 0xE100000000000000;
  sub_AB94A0(v10);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  v11._countAndFlagsBits = sub_AB92A0();
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_AB94A0(v12);
  sub_ABAF70();
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title);
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title + 8);

  v13._countAndFlagsBits = v3;
  v13._object = v4;
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 34;
  v14._object = 0xE100000000000000;
  sub_AB94A0(v14);
  v15._countAndFlagsBits = 0x223D656C74697420;
  v15._object = 0xE800000000000000;
  sub_AB94A0(v15);

  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle);
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle + 8);

  v16._countAndFlagsBits = v5;
  v16._object = v6;
  sub_AB94A0(v16);

  v17._countAndFlagsBits = 34;
  v17._object = 0xE100000000000000;
  sub_AB94A0(v17);
  v18._countAndFlagsBits = 0x6C74697462757320;
  v18._object = 0xEB00000000223D65;
  sub_AB94A0(v18);

  sub_ABAD90(21);

  v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText);
  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText + 8);

  v19._countAndFlagsBits = v7;
  v19._object = v8;
  sub_AB94A0(v19);

  v20._countAndFlagsBits = 34;
  v20._object = 0xE100000000000000;
  sub_AB94A0(v20);
  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x8000000000B4A4A0;
  sub_AB94A0(v21);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  sub_AB94A0(v22);
  return 0;
}

uint64_t sub_3C168()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = v4;
  swift_retain_n();
  v7 = v2;
  sub_2E6210(v6);

  v8 = sub_3C330();
  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
  swift_retain_n();
  sub_2E6210(v11);

  v12 = sub_3733C();
  v13 = *(v1 + v3);
  v14 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v15 = *&v12[v14];
  *&v12[v14] = v13;
  swift_retain_n();
  sub_2E6210(v15);
}

id sub_3C330()
{
  v1 = OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView);
  }

  else
  {
    v4 = sub_3C6A8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_3C394(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  sub_3C168();
}

uint64_t (*sub_3C480(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = VerticalLockupCollectionViewCell.textDrawingCache.modify(v3);
  return sub_3C4F4;
}

void sub_3C4F4(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_3C168();
  }

  free(v3);
}

double sub_3C550()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.45, 1.0, 0.0, 1.0);
  result = *v2;
  xmmword_DE8578 = v2[0];
  unk_DE8588 = v2[1];
  qword_DE8598 = v3;
  return result;
}

double sub_3C5C4()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.25, 30.0, 0.0, 4.0);
  result = *v2;
  xmmword_DE85A0 = v2[0];
  *algn_DE85B0 = v2[1];
  qword_DE85C0 = v3;
  return result;
}

double sub_3C634()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.2, 10.0, 0.0, 3.0);
  result = *v2;
  xmmword_DE85C8 = v2[0];
  unk_DE85D8 = v2[1];
  qword_DE85E8 = v3;
  return result;
}

id sub_3C6A8(uint64_t a1)
{
  type metadata accessor for TextStackView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_DE6728 != -1)
  {
    swift_once();
  }

  v7[2] = xmmword_DE8610;
  v7[3] = unk_DE8620;
  v7[4] = xmmword_DE8630;
  v7[0] = xmmword_DE85F0;
  v7[1] = unk_DE8600;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v3 = TextStackView.Component.init(identifier:labelProperties:)(0xD00000000000001CLL, 0x8000000000B4A480, v7);
  sub_2F118(v7, &v6);

  v4 = String.trim()();

  swift_beginAccess();
  v3[7] = v4;

  sub_2EB704();
  TextStackView.add(_:)(v3);
  *(a1 + OBJC_IVAR____TtC16MusicApplication10PosterCell_measurementTextStackViewComponent) = v3;

  return v2;
}

void sub_3C818(uint64_t a1)
{
  objc_storeStrong((a1 + 16), UIFontTextStyleCaption2);
  *(a1 + 24) = UIFontWeightBold;
  v2 = [objc_opt_self() whiteColor];

  *(a1 + 56) = v2;
}

void sub_3C88C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong[OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeColor];

    if (v5 != 2)
    {
      if (v5)
      {
        sub_3F9D0(a2[25], a2[26], a2[27], a2[28]);
        *(a2 + 25) = xmmword_AF82C0;
        a2[27] = 0;
        a2[28] = 0;
        static SymbolButton.Material.with(_:)(sub_3C9D0, &v19);
        v18 = v19;
        v6 = v20;
        v7 = v21;
        v8 = v22;
        v9 = v23;
        sub_3FA8C(a2[29], a2[30], a2[31], a2[32], a2[33], a2[34]);
        *(a2 + 29) = v18;
        a2[31] = v6;
        a2[32] = v7;
        a2[33] = v8;
        a2[34] = v9;
      }

      else
      {
        v10 = SymbolButton.Background.init()();
        v12 = v11;
        v13 = v10;
        v15 = v14;
        v17 = v16;
        sub_3F9D0(a2[25], a2[26], a2[27], a2[28]);
        a2[25] = v12;
        a2[26] = v13;
        a2[27] = v15;
        a2[28] = v17;
        sub_3FA8C(a2[29], a2[30], a2[31], a2[32], a2[33], a2[34]);
        a2[29] = 1;
        *(a2 + 15) = 0u;
        *(a2 + 16) = 0u;
        a2[34] = 0;
      }
    }
  }
}

void sub_3C9D0(id *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 effectWithStyle:12];

  *a1 = v3;
  v4 = [v2 effectWithStyle:12];
  v5 = [objc_opt_self() effectForBlurEffect:v4 style:1];

  a1[2] = v5;
}

uint64_t sub_3CA88(void *a1)
{
  v2 = v1;
  v4 = _swiftEmptyArrayStorage;
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 120);
  v7 = *(v5 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  if (v7)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = v2[1];
  swift_beginAccess();
  v9 = *(v8 + 120);
  v10 = *(v8 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  if (v10)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v4 = _swiftEmptyArrayStorage;
  }

  v11 = v2[2];
  swift_beginAccess();
  v12 = *(v11 + 120);
  v13 = *(v11 + 112) & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v12) & 0xF;
  }

  if (v13)
  {

    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    v4 = _swiftEmptyArrayStorage;
  }

  v14 = [a1 preferredContentSizeCategory];
  v15 = sub_ABA320();

  if ((v15 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    result = sub_ABB060();
    if (!result)
    {
      goto LABEL_26;
    }
  }

  else
  {
    result = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
LABEL_26:

      v2[4] = v4;
      return result;
    }
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {

    v17 = sub_36003C(0, _swiftEmptyArrayStorage, v18);

    goto LABEL_25;
  }

  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
  {
    v17 = _swiftEmptyArrayStorage[4];

LABEL_25:

    swift_beginAccess();
    *(v17 + 88) = 1;
    sub_2EB2A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_AF82B0;
    v4[4] = v17;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void sub_3CD68(unsigned __int8 a1)
{
  v2 = v1;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference];
  if (a1 == 2)
  {
    if (v3 == 2)
    {
      return;
    }

LABEL_8:
    v5 = &v1[OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents];
    swift_beginAccess();
    sub_3CF2C(v3 & 1, v6);
    swift_endAccess();
    v7 = *(v5 + 4);
    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

    TextStackView.removeAll()();
    if (v7 >> 62)
    {
      v10 = sub_ABB060();
      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (v10)
      {
LABEL_10:
        if (v10 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v10; ++i)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v12 = sub_36003C(i, v7, v9);
          }

          else
          {
            v12 = *(v7 + 8 * i + 32);
          }

          TextStackView.add(_:)(v12);
        }
      }
    }

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    v14 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3FC20, v13);

    return;
  }

  if (v3 != 2 && ((v3 ^ a1) & 1) != 0)
  {
    goto LABEL_8;
  }
}

uint64_t sub_3CF2C(uint64_t result, __n128 a2)
{
  v3 = v2 + 4;
  v4 = v2[4];
  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5 == 1)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = sub_36003C(0, v4, a2);
        goto LABEL_6;
      }

      if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
      {
        v6 = *(v4 + 32);

LABEL_6:
        swift_beginAccess();
        *(v6 + 88) = 3;
        sub_2EB2A8();
      }

      __break(1u);
      goto LABEL_32;
    }

    if (v5 > 2)
    {
      if (v5 == 3 && (result & 1) == 0)
      {
LABEL_10:
        v4 = v2;
        if (sub_2F32AC())
        {
LABEL_14:

          v9 = *v4;
          swift_beginAccess();
          *(v9 + 88) = 2;
          sub_2EB2A8();
          v10 = *(v4 + 8);
          swift_beginAccess();
          *(v10 + 88) = 1;
          sub_2EB2A8();
          v11 = *(v4 + 16);
          swift_beginAccess();
          *(v11 + 88) = 1;
          return sub_2EB2A8();
        }

        if (!(*v3 >> 62))
        {
          v7 = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
          v8 = __OFSUB__(v7, 1);
          result = v7 - 1;
          if (!v8)
          {
LABEL_13:
            sub_2E5F34(result);
            goto LABEL_14;
          }

          goto LABEL_34;
        }

LABEL_32:
        v21 = sub_ABB060();
        v8 = __OFSUB__(v21, 1);
        result = v21 - 1;
        if (!v8)
        {
          goto LABEL_13;
        }

LABEL_34:
        __break(1u);
        return result;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v12 = result;
  v13 = sub_ABB060();
  result = sub_ABB060();
  if (v13 != 1)
  {
    v14 = result <= 2;
    LOBYTE(result) = v12;
    if (!v14)
    {
      if (sub_ABB060() != 3 || (v12 & 1) != 0)
      {
LABEL_25:
        v18 = *v2;
        swift_beginAccess();
        *(v18 + 88) = 1;
        goto LABEL_27;
      }

      result = sub_ABB060();
      if (result)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

LABEL_23:
    if (result)
    {
      v15 = v2[1];
      swift_beginAccess();
      *(v15 + 88) = 2;
      v16 = v2;
      sub_2EB2A8();
      v17 = *v2;
LABEL_28:
      swift_beginAccess();
      *(v17 + 88) = 1;
      sub_2EB2A8();
      v20 = v16[2];
      swift_beginAccess();
      *(v20 + 88) = 1;
      return sub_2EB2A8();
    }

    v19 = *v2;
    swift_beginAccess();
    *(v19 + 88) = 2;
LABEL_27:
    v16 = v2;
    sub_2EB2A8();
    v17 = v2[1];
    goto LABEL_28;
  }

  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

double sub_3D1E8()
{
  sub_3D22C(&v1);
  xmmword_DE8610 = v3;
  unk_DE8620 = v4;
  xmmword_DE8630 = v5;
  result = *&v2;
  xmmword_DE85F0 = v1;
  unk_DE8600 = v2;
  return result;
}

double sub_3D22C@<D0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v2 = sub_ABA550();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
  result = 24.0;
  *(a1 + 64) = xmmword_AF8290;
  return result;
}

id sub_3D31C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = TextAttributes.toDictionary(tintColor:)(v5);

  sub_3E856C(v6);
  v7 = objc_allocWithZone(NSMutableAttributedString);
  v8 = sub_AB9260();
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  v10 = [v7 initWithString:v8 attributes:isa];

  v11 = [objc_allocWithZone(NSTextAttachment) init];
  v12 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline];
  v13 = sub_AB9260();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  if (v14)
  {
    v15 = v14;
    v16 = [v4 whiteColor];
    v17 = [v15 imageWithTintColor:v16];
  }

  else
  {
    v17 = 0;
  }

  [v11 setImage:v17];

  String.nonBreakingSpace.unsafeMutableAddressor();
  v18 = objc_allocWithZone(NSAttributedString);

  v19 = sub_AB9260();
  v20 = [v18 initWithString:v19];

  [v10 appendAttributedString:v20];
  v21 = [objc_opt_self() attributedStringWithAttachment:v11];
  [v10 appendAttributedString:v21];

  return v10;
}

id sub_3D63C(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_AB9260();

  return v3;
}

void sub_3D70C()
{

  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler), *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler + 8));
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidFailHandler), *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidFailHandler + 8));
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayingDidChangeHandler), *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayingDidChangeHandler + 8));

  sub_3F11C(*(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents), *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents + 8), *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents + 16));

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton);
}

uint64_t type metadata accessor for PosterCell(uint64_t a1)
{
  result = qword_DE86C0;
  if (!qword_DE86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_3DBD8()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 128);
  v2 = v1;
  return v1;
}

void *sub_3DC14()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_3DC50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler);
  v5 = *v4;
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  sub_17654(v5, v6);
  v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = (v7 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v10 = *(v7 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v11 = *(v7 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler + 8);
  *v9 = sub_3EBD4;
  v9[1] = v8;

  sub_17654(v10, v11);
}

uint64_t sub_3DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t), void *a7, void (*a8)(uint64_t, uint64_t))
{
  v13 = *v8;
  v14 = (v13 + *a5);
  v15 = *v14;
  v16 = v14[1];
  *v14 = a1;
  v14[1] = a2;
  a6(v15, v16);
  v17 = (*(v13 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + *a7);
  v18 = *v17;
  v19 = v17[1];
  *v17 = a1;
  v17[1] = a2;
  a8(a1, a2);

  return a6(v18, v19);
}

void *sub_3DEA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView);
  v2 = v1;
  return v1;
}

void sub_3DED4()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 layer];
  v10 = [objc_opt_self() bezierPathWithRoundedRect:v2 cornerRadius:{v4, v6, v8, 4.0}];
  v11 = [v10 CGPath];

  [v9 setShadowPath:v11];
  v12 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v12, v14, 0.225, 6.0, 0.0, 4.0);
  UIView.shadow.setter(v14);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3E18C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_3E1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterCell.DisplayStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PosterCell.DisplayStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_3E390(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_3E3AC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_3E3D8()
{
  result = qword_DE86F8;
  if (!qword_DE86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE86F8);
  }

  return result;
}

void sub_3E42C(char a1, char a2, uint64_t a3)
{
  if ((a1 & 1) != 0 && (a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_45CBB4();
      v5 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
      [*&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView] setAlpha:1.0];
      [*&v4[v5] setHidden:0];
    }
  }
}

void sub_3E4C0(char a1, uint64_t a2, void *a3, uint64_t a4, id a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v10 = sub_AB4BC0();
    __swift_project_value_buffer(v10, qword_E71608);
    v11 = a3;
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v12 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_37B8E0(a3);
      v16 = sub_425E68(v14, v15, aBlock);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_ABB520();
      v19 = sub_425E68(v17, v18, aBlock);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_0, oslog, v12, "Error loading %s: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else if (a1)
  {
    [a5 setNeedsDisplay];
    if ((a6 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture] = 1;
      }

      v24 = [objc_opt_self() sharedApplication];
      aBlock[4] = a8;
      aBlock[5] = a7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = a9;
      v25 = _Block_copy(aBlock);

      [v24 _performBlockAfterCATransactionCommits:v25];
      _Block_release(v25);
    }
  }
}

void sub_3E7C8(char a1, uint64_t a2, void *a3, uint64_t a4, id a5, char a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_DE6AE8 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E71608);
    v9 = a3;
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v10 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v11 = 136315394;
      v12 = sub_37B8E0(a3);
      v14 = sub_425E68(v12, v13, aBlock);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_ABB520();
      v17 = sub_425E68(v15, v16, aBlock);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_0, oslog, v10, "Error loading %s: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else if (a1)
  {
    [a5 setNeedsDisplay];
    if ((a6 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture] = 1;
      }

      v21 = [objc_opt_self() sharedApplication];
      aBlock[4] = sub_3F310;
      aBlock[5] = a7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_121;
      v22 = _Block_copy(aBlock);

      [v21 _performBlockAfterCATransactionCommits:v22];
      _Block_release(v22);
    }
  }
}

void sub_3EADC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_45C850();
  }
}

void sub_3EB30(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_3EB44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_3EBDC@<D0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = UIFontTextStyleBody;
  if ((a2 & 1) == 0)
  {
    v5 = UIFontTextStyleSubheadline;
  }

  if (a2 == 2)
  {
    v6 = UIFontTextStyleSubheadline;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v8 = sub_ABA560();
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = [v9 clearColor];

  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = a1;
  *(a3 + 24) = 4;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v8;
  *(a3 + 56) = 1;
  result = 20.0;
  *(a3 + 64) = xmmword_AF7C40;
  return result;
}

double sub_3ECDC@<D0>(uint64_t *a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v2 = sub_ABA550();
  v3 = objc_opt_self();
  *&v13[0] = [v3 whiteColor];
  *(&v13[0] + 1) = [v3 clearColor];
  v13[1] = xmmword_AF82D0;
  v14 = 0;
  v15 = 0;
  v16 = v2;
  v17 = 1;
  v18 = xmmword_AF8290;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x6543726574736F50, 0xEF656C7469546C6CLL, v13);

  sub_3EBDC(3u, 2, v10);
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000012, 0x8000000000B4A4F0, v10);

  sub_3EBDC(3u, 2, v11);
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000015, 0x8000000000B4A510, v11);

  sub_3EBDC(3u, 2, v12);
  swift_allocObject();
  v7 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000011, 0x8000000000B4A530, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v8 = swift_allocObject();
  *&result = 3;
  *(v8 + 16) = xmmword_AF82E0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v8 + 48) = v6;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return result;
}

void sub_3EF34(char a1@<W0>, void *a2@<X8>)
{
  v3 = UIFontTextStyleHeadline;
  if (a1 == 2 || (a1 & 1) == 0)
  {
    v4 = 0;
    v5 = 0x4041000000000000;
  }

  else
  {
    v3 = UIFontTextStyleTitle1;
    v4 = 3;
    v5 = 0x404E000000000000;
  }

  v6 = v5;
  v7 = v3;
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v8 = sub_ABA550();
  v9 = objc_opt_self();
  v10 = [v9 whiteColor];
  v11 = [v9 clearColor];

  *a2 = v10;
  a2[1] = v11;
  a2[2] = v4;
  a2[3] = 4;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = v8;
  a2[7] = 1;
  a2[8] = v6;
  a2[9] = 0;
}

double sub_3F050@<D0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v2 = sub_ABA550();
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v3 clearColor];
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  result = 22.0;
  *(a1 + 64) = xmmword_AF82F0;
  return result;
}

uint64_t sub_3F11C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3F168(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3F1B4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_91Tm()
{

  return swift_deallocObject();
}

void sub_3F32C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_descriptionText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlayTitleText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_overlaySubtitleText);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_altText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isGradientEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayButtonEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isTitleChevronEnabled) = 2;
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeText);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeColor) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_displayStyle) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textAlignment) = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidChangeHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_videoLooperDidFailHandler);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isPlayingDidChangeHandler);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_isVideoArtworkAllowed) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_badgeView) = 0;
  v11 = v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents;
  sub_3ECDC(v18);
  v12 = v18[1];
  *v11 = v18[0];
  *(v11 + 16) = v12;
  *(v11 + 32) = v19;
  v13 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textStackViewInsets);
  *v13 = xmmword_AF8270;
  v13[1] = xmmword_AF8270;
  v14 = (v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextComponents);
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___overlayTextStackView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_measurementTextStackViewComponent) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___measurementTextStackView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientBottomView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___gradientTopView) = 0;
  v15 = OBJC_IVAR____TtC16MusicApplication10PosterCell_shadowBackdropView;
  type metadata accessor for ShadowBackdropView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v16 setUserInteractionEnabled:0];
  v17 = [v16 layer];

  [v17 setZPosition:-1.0];
  *(v0 + v15) = v16;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell____lazy_storage___symbolButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textSpacingPreference) = 2;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_3F5C0(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v6 = a2;
  v7 = (v3 + OBJC_IVAR____TtC16MusicApplication10PosterCell_textComponents);
  swift_beginAccess();
  v8 = *v7;
  v9 = UIFontTextStyleSubheadline;
  v10 = UIFontTextStyleBody;
  if ((a2 & 1) == 0)
  {
    v10 = UIFontTextStyleSubheadline;
  }

  if (v6 != 2)
  {
    v9 = v10;
  }

  v11 = v9;
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);

  v12 = sub_ABA550();
  v13 = objc_opt_self();
  v14 = [v13 whiteColor];
  v15 = [v13 clearColor];

  *&v40 = v14;
  *(&v40 + 1) = v15;
  *&v41 = a1;
  *(&v41 + 1) = 4;
  v42 = 0uLL;
  *&v43 = v12;
  *(&v43 + 1) = 1;
  v44 = xmmword_AF8290;
  swift_beginAccess();
  v17 = v8[3];
  v16 = v8[4];
  v18 = v8[6];
  v45[3] = v8[5];
  v45[4] = v18;
  v45[1] = v17;
  v45[2] = v16;
  v45[0] = v8[2];
  v8[5] = v43;
  v8[6] = xmmword_AF8290;
  v19 = v41;
  v8[2] = v40;
  v8[3] = v19;
  v8[4] = v42;
  sub_2F118(&v40, v51);
  sub_2F174(v45);
  sub_2EB2A8();
  sub_2F174(&v40);

  v20 = v7[1];

  sub_3EBDC(a1, a2, v49);
  swift_beginAccess();
  v22 = v20[3];
  v21 = v20[4];
  v23 = v20[6];
  v46[3] = v20[5];
  v46[4] = v23;
  v46[1] = v22;
  v46[2] = v21;
  v46[0] = v20[2];
  v24 = v49[4];
  v20[5] = v49[3];
  v20[6] = v24;
  v25 = v49[1];
  v20[2] = v49[0];
  v20[3] = v25;
  v20[4] = v49[2];
  sub_2F118(v49, v51);
  sub_2F174(v46);
  sub_2EB2A8();
  sub_2F174(v49);

  v26 = v7[2];

  sub_3EBDC(a1, a2, v50);
  swift_beginAccess();
  v28 = v26[3];
  v27 = v26[4];
  v29 = v26[6];
  v47[3] = v26[5];
  v47[4] = v29;
  v47[1] = v28;
  v47[2] = v27;
  v47[0] = v26[2];
  v30 = v50[4];
  v26[5] = v50[3];
  v26[6] = v30;
  v31 = v50[1];
  v26[2] = v50[0];
  v26[3] = v31;
  v26[4] = v50[2];
  sub_2F118(v50, v51);
  sub_2F174(v47);
  sub_2EB2A8();
  sub_2F174(v50);

  v32 = sub_373B4();

  sub_3EF34(a2, v51);
  swift_beginAccess();
  v34 = v32[3];
  v33 = v32[4];
  v35 = v32[6];
  v48[3] = v32[5];
  v48[4] = v35;
  v48[1] = v34;
  v48[2] = v33;
  v48[0] = v32[2];
  v36 = v51[4];
  v32[5] = v51[3];
  v32[6] = v36;
  v37 = v51[1];
  v32[2] = v51[0];
  v32[3] = v37;
  v32[4] = v51[2];
  sub_2F118(v51, &v39);
  sub_2F174(v48);
  sub_2EB2A8();
  sub_2F174(v51);
}

uint64_t sub_3F938()
{

  return swift_deallocObject();
}

void sub_3F9D0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != &dword_0 + 1)
  {
  }
}

uint64_t sub_3FA14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_3FA8C(char *result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != &dword_0 + 1)
  {
  }

  return result;
}

uint64_t sub_3FAE8()
{

  return swift_deallocObject();
}

unint64_t sub_3FB3C()
{
  result = qword_DE6EF0;
  if (!qword_DE6EF0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE6EF0);
  }

  return result;
}

id sub_3FB94()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "setNeedsLayout");
}

void sub_3FC44(uint64_t a1)
{
  *(a1 + qword_DE8710) = 0;
  *(a1 + qword_DE8718) = 1;
  v1 = a1 + qword_DE8720;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (a1 + qword_DE8730);
  *v2 = 0;
  v2[1] = 0;
  *(a1 + qword_DE8738) = 0;
  sub_ABAFD0();
  __break(1u);
}

id sub_3FCEC(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_AB9260();

  return v1;
}

Class sub_3FD7C()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void sub_3FDF4()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for JSBrickViewController(0);
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_DE8730];
  v12 = *&v1[qword_DE8730];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  v11 = &v1[qword_DE8720];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
}

void sub_3FF1C(void *a1)
{
  v1 = a1;
  sub_3FDF4();
}

void sub_3FF64(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for JSBrickViewController(0);
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (a1)
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = sub_AB92A0();
    v8 = v7;
    if (v6 == sub_AB92A0() && v8 == v9)
    {

      return;
    }

    v11 = sub_ABB3C0();

    if (v11)
    {
      return;
    }
  }

  else
  {
  }

  [v1 loadViewIfNeeded];
  v12 = *&v1[qword_DFE2F8];
  if (v12)
  {
    v13 = [v12 collectionViewLayout];
    v14 = &v1[qword_DE8720];
    *v14 = 0;
    *(v14 + 1) = 0;
    v14[16] = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_400E8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_3FF64(a3);
}

void *sub_40154()
{
  v1 = qword_DE8710;
  if (*&v0[qword_DE8710])
  {
    v2 = *&v0[qword_DE8710];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8D88, &qword_AF86F8);
    swift_allocObject();
    v2 = sub_2BF1F0(v0, v4, 0, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_40220@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_7;
  }

  type metadata accessor for JSBrickModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_7;
  }

  type metadata accessor for JSBrickItem(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_465CC(&v54);
    goto LABEL_8;
  }

  v8 = (v7 + OBJC_IVAR____TtC11MusicJSCore11JSBrickItem_titleText);
  v9 = v7;
  swift_beginAccess();
  v11 = *v8;
  v10 = v8[1];
  swift_unknownObjectRetain();

  v12 = IndexPath.safeItem.getter();
  v13 = sub_27EEA4(v9);
  v15 = v14;
  v16 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
  swift_beginAccess();
  v17 = *(v9 + v16) != 0;
  *&v23 = v13;
  *(&v23 + 1) = v15;
  *&v24 = v11;
  *(&v24 + 1) = v10;
  *&v25 = v9;
  *(&v25 + 1) = v12;
  LOBYTE(v26) = v17;
  *(&v26 + 1) = 5122;
  *(&v26 + 1) = 0;
  *&v27 = 0;
  *(&v27 + 1) = v9;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31[0] = 1;
  *&v31[8] = 0;
  *&v31[16] = 0;
  v31[24] = 2;
  v32[0] = v13;
  v32[1] = v15;
  v32[2] = v11;
  v32[3] = v10;
  v32[4] = v9;
  v32[5] = v12;
  v33 = v17;
  v34 = 5122;
  v35 = 0;
  v36 = 0;
  v37 = v9;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  v42 = 0;
  v43 = 0;
  v44 = 2;
  sub_465F4(&v23, &v54);
  sub_46650(v32);
  v51 = v29;
  v52 = v30;
  v53[0] = *v31;
  *(v53 + 9) = *&v31[9];
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  v45 = v23;
  v46 = v24;
  UIScreen.Dimensions.size.getter();
  v60 = v51;
  v61 = v52;
  v62[0] = v53[0];
  *(v62 + 9) = *(v53 + 9);
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v54 = v45;
  v55 = v46;
LABEL_8:
  v18 = v61;
  a1[6] = v60;
  a1[7] = v18;
  a1[8] = v62[0];
  *(a1 + 137) = *(v62 + 9);
  v19 = v57;
  a1[2] = v56;
  a1[3] = v19;
  v20 = v59;
  a1[4] = v58;
  a1[5] = v20;
  result = *&v54;
  v22 = v55;
  *a1 = v54;
  a1[1] = v22;
  return result;
}

uint64_t sub_404BC(void *a1)
{
  sub_3B316C(a1);
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];

  [a1 setAlwaysBounceVertical:0];
  [a1 setAlwaysBounceHorizontal:1];
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  [a1 setClipsToBounds:0];
  v4 = type metadata accessor for BrickCell();
  v5 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v4, v5, v6);

  v7 = type metadata accessor for TitleSectionHeaderView(0);
  v8 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v7, 0xD000000000000026, 0x8000000000B48490, v8, v9);
}

char *sub_40610(uint64_t a1, uint64_t a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  __chkstk_darwin();
  v4 = sub_3B333C(a2);
  v5 = *&v2[qword_DFE2F0];
  v122 = v2;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v6 results];

  if (!v7)
  {
    goto LABEL_15;
  }

  isa = sub_AB3770().super.isa;
  v9 = [v7 itemAtIndexPath:isa];

  if (!v9)
  {
    LOBYTE(v12) = 0;
    v121 = 0;
    v28 = 0;
LABEL_16:
    v29 = 0;
    v30 = 0;
LABEL_17:
    v31 = 0xE000000000000000;
    goto LABEL_18;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_15:
    LOBYTE(v12) = 0;
    v121 = 0;
    v28 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v10 contentItem];
  if (!v12)
  {
LABEL_82:
    v22 = 0;
    v25 = 0;
    goto LABEL_83;
  }

  v13 = MPModelStoreBrowseContentItem.kind.getter();
  v15 = v13;
  if (v14 <= 6u)
  {
    if (v14 <= 2u)
    {
      if (!v14)
      {
        v64 = [v13 artist];
        if (v64)
        {
          v65 = v64;
          v66 = [v64 name];
          if (v66)
          {
            v67 = v66;
            v22 = sub_AB92A0();
            v68 = v15;
            v25 = v69;

            v55 = v68;
            v56 = 0;
            goto LABEL_73;
          }
        }

        v13 = v15;
        v14 = 0;
        goto LABEL_80;
      }

      if (v14 != 1)
      {
        goto LABEL_80;
      }

      v51 = [v13 name];
      if (!v51)
      {
        v13 = v15;
        v14 = 1;
        goto LABEL_80;
      }

      v52 = v51;
      v22 = sub_AB92A0();
      v53 = v15;
      v25 = v54;

      v55 = v53;
      v56 = 1;
    }

    else
    {
      if (v14 != 3)
      {
        if (v14 != 4)
        {
          if (v14 == 5)
          {
            v16 = v12;
            v17 = sub_4A3F1C();
            sub_10AC20(v15);
            v19 = v18;

            LOBYTE(v12) = [v15 shouldVisuallyDisableFor:v19];
            v20 = [v15 name];
            if (v20)
            {
              v21 = v20;
              v22 = sub_AB92A0();
              v23 = v15;
              v25 = v24;

              v26 = v23;
              v27 = 5;
LABEL_59:
              sub_3EB30(v26, v27);

LABEL_83:
              v29 = 0;
              v30 = 0;
              goto LABEL_84;
            }

            v97 = v15;
            v98 = 5;
            goto LABEL_77;
          }

          goto LABEL_80;
        }

        v85 = [v13 name];
        if (v85)
        {
          v86 = v85;
          v22 = sub_AB92A0();
          v87 = v15;
          v25 = v88;

          v55 = v87;
          v56 = 4;
          goto LABEL_73;
        }

        v13 = v15;
        v14 = 4;
LABEL_80:
        sub_3EB30(v13, v14);
        goto LABEL_81;
      }

      v77 = [v13 shortName];
      if (!v77)
      {
        v13 = v15;
        v14 = 3;
        goto LABEL_80;
      }

      v78 = v77;
      v22 = sub_AB92A0();
      v79 = v15;
      v25 = v80;

      v55 = v79;
      v56 = 3;
    }

LABEL_73:
    sub_3EB30(v55, v56);

    LOBYTE(v12) = 0;
    goto LABEL_83;
  }

  if (v14 > 8u)
  {
    switch(v14)
    {
      case 9u:
        v81 = v13;
        v82 = [v13 title];
        if (v82)
        {
          v83 = v82;
          v22 = sub_AB92A0();
          v25 = v84;
        }

        else
        {
          v22 = 0;
          v25 = 0;
        }

        v99 = [v81 tagline];
        if (v99)
        {
          v100 = v99;
          v29 = sub_AB92A0();
          v30 = v101;

          sub_3EB30(v81, 9);
          LOBYTE(v12) = 0;
          goto LABEL_84;
        }

        v55 = v81;
        v56 = 9;
        goto LABEL_73;
      case 0xCu:
        v16 = v12;
        v89 = sub_4A3F1C();
        sub_10AC20(v15);
        v91 = v90;

        LOBYTE(v12) = [v15 shouldVisuallyDisableFor:v91];
        v92 = [v15 title];
        if (v92)
        {
          v93 = v92;
          v22 = sub_AB92A0();
          v94 = v15;
          v25 = v95;

          v26 = v94;
          v27 = 12;
          goto LABEL_59;
        }

        v97 = v15;
        v98 = 12;
LABEL_77:
        sub_3EB30(v97, v98);

        goto LABEL_82;
      case 0xFFu:
LABEL_81:

        LOBYTE(v12) = 0;
        goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (v14 == 7)
  {
    v16 = v12;
    v70 = sub_4A3F1C();
    sub_10AC20(v15);
    v72 = v71;

    LOBYTE(v12) = [v15 shouldVisuallyDisableFor:v72];
    v73 = [v15 title];
    if (v73)
    {
      v74 = v73;
      v22 = sub_AB92A0();
      v75 = v15;
      v25 = v76;

      v26 = v75;
      v27 = 7;
      goto LABEL_59;
    }

    v97 = v15;
    v98 = 7;
    goto LABEL_77;
  }

  if (v14 != 8)
  {
    goto LABEL_80;
  }

  v119 = v12;
  v120 = v11;
  v57 = sub_4A3F1C();
  sub_10AC20(v15);
  v59 = v58;

  LOBYTE(v12) = [v15 shouldVisuallyDisableFor:v59];
  v60 = v15;
  v61 = [v15 title];
  if (v61)
  {
    v62 = v61;
    v118 = sub_AB92A0();
    v25 = v63;
  }

  else
  {
    v118 = 0;
    v25 = 0;
  }

  v11 = v120;
  if ([v60 episodeNumber] < 1)
  {
    sub_3EB30(v60, 8);

    v29 = 0;
    v30 = 0;
  }

  else
  {
    sub_AB9220();
    v123._countAndFlagsBits = 0x2065646F73697045;
    v123._object = 0xE800000000000000;
    sub_AB9210(v123);
    [v60 episodeNumber];
    sub_AB91F0();
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    sub_AB9210(v124);
    sub_AB9240();
    sub_AB3550();
    v29 = sub_AB9320();
    v30 = v96;
    sub_3EB30(v60, 8);
  }

  v22 = v118;
LABEL_84:
  v102 = [v11 headlineText];
  if (v102)
  {
    v103 = v102;
    v104 = sub_AB92A0();
    v106 = v105;

    v107 = HIBYTE(v106) & 0xF;
    if ((v106 & 0x2000000000000000) == 0)
    {
      v107 = v104 & 0xFFFFFFFFFFFFLL;
    }

    if (v107)
    {
      v29 = v104;
      v30 = v106;
    }
  }

  v108 = [v11 titleText];
  if (v108)
  {
    v109 = v108;
    v110 = sub_AB92A0();
    v9 = v111;

    v112 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v112 = v110 & 0xFFFFFFFFFFFFLL;
    }

    if (v112)
    {
      v22 = v110;
    }

    else
    {
      v9 = v25;
    }
  }

  else
  {
    v9 = v25;
  }

  v28 = v22;
  v113 = [v11 subtitleText];
  if (!v113)
  {
    swift_unknownObjectRelease();
LABEL_106:
    v121 = 0;
    goto LABEL_17;
  }

  v114 = v113;
  v115 = sub_AB92A0();
  v31 = v116;

  if ((v31 & 0x2000000000000000) != 0)
  {
    v117 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v117 = v115 & 0xFFFFFFFFFFFFLL;
  }

  swift_unknownObjectRelease();
  if (!v117)
  {

    goto LABEL_106;
  }

  v121 = v115;
LABEL_18:
  v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_isDisabled] = v12;
  sub_412254();
  if (v30)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (!v30)
  {
    v30 = 0xE000000000000000;
  }

  v34 = &v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_headline];
  *v34 = v32;
  v34[1] = v30;

  v35 = String.trim()();

  v36 = &v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
  v37 = *&v4[OBJC_IVAR____TtC16MusicApplication9BrickCell_textComponents];
  swift_beginAccess();
  v37[7] = v35;

  sub_2EB704();

  v38 = v4;
  [v38 setNeedsLayout];
  if (v9)
  {
    v39 = v28;
  }

  else
  {
    v39 = 0;
  }

  if (v9)
  {
    v33 = v9;
  }

  v40 = &v38[OBJC_IVAR____TtC16MusicApplication9BrickCell_title];
  *v40 = v39;
  *(v40 + 1) = v33;

  v41 = String.trim()();

  v42 = *(v36 + 1);
  swift_beginAccess();
  v42[7] = v41;

  sub_2EB704();

  [v38 setNeedsLayout];
  v43 = &v38[OBJC_IVAR____TtC16MusicApplication9BrickCell_subtitle];
  *v43 = v121;
  v43[1] = v31;

  v44 = *(v36 + 2);

  v45 = String.trim()();
  swift_beginAccess();
  v44[7] = v45;

  sub_2EB704();

  [v38 setNeedsLayout];

  v46 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v46 = v121 & 0xFFFFFFFFFFFFLL;
  }

  v47 = v46 != 0;
  v48 = v38[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutStyle];
  v38[OBJC_IVAR____TtC16MusicApplication9BrickCell_layoutStyle] = v47;
  if (v47 != v48)
  {
    [v38 setNeedsLayout];
  }

  sub_74DD4([v122 viewBackgroundColor]);
  v49 = [v122 viewBackgroundColor];
  [v38 setBackgroundColor:v49];

  return v38;
}

char *sub_41178(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = sub_40610(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v14;
}

void sub_412A0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_3B38B0(a1, a2, a3);
  type metadata accessor for BrickCell();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(v3 + qword_DFE2F0);
  if (!v7)
  {
    v15 = a2;
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v8 = a2;
  v9 = v7;
  v10 = [v9 results];

  if (!v10)
  {
    goto LABEL_9;
  }

  isa = sub_AB3770().super.isa;
  v12 = [v10 itemAtIndexPath:isa];

  if (!v12)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v14 = [v13 backgroundArtworkCatalog];
  swift_unknownObjectRelease();
LABEL_10:
  v16 = *&v6[OBJC_IVAR____TtC16MusicApplication9BrickCell_lockupImageArtworkCatalog];
  *&v6[OBJC_IVAR____TtC16MusicApplication9BrickCell_lockupImageArtworkCatalog] = v14;
  v17 = v14;

  v18 = v17;
  sub_74EA4(v14);
  [v6 setNeedsLayout];
}

void sub_41440(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_412A0(v13, v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_41564(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB3430();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin();
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  v93 = v9;
  v94 = v10;
  __chkstk_darwin();
  v87 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v91 = &v77 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v88 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v77 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v19 = &v77 - v18;
  sub_3B41F4(a1, a2);
  v20 = *&v2[qword_DFE2F0];
  if (!v20)
  {
    return;
  }

  type metadata accessor for JSBrickModelResponse();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    return;
  }

  v22 = v21;
  v78 = v8;
  v86 = v19;
  v83 = v12;
  v23 = *(v21 + OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_jsResults);
  v24 = v20;
  isa = sub_AB3770().super.isa;
  v26 = [v23 itemAtIndexPath:isa];

  type metadata accessor for JSBrickItem(0);
  v85 = swift_dynamicCastClass();
  if (v85)
  {
    v81 = v24;
    v82 = v26;
    v27 = [v22 results];
    if (!v27)
    {
      __break(1u);
      return;
    }

    v28 = v27;
    v29 = sub_AB3770().super.isa;
    v30 = [v28 itemAtIndexPath:v29];

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    v32 = v94;
    v84 = v31;
    if (!v31)
    {
      swift_unknownObjectRelease();
      v84 = 0;
    }

    v80 = JSSegueCoordinator.shared.unsafeMutableAddressor();
    v33 = sub_AB3770().super.isa;
    v34 = [a1 cellForItemAtIndexPath:v33];

    if (v34)
    {
      sub_D5958(v100);
      v79 = v100[0];
      v77 = v100[1];
      v35 = v101;
      v36 = v102;
      v37 = v103;

      v38 = v77;
      v39 = v79;
    }

    else
    {
      v35 = 0;
      v37 = 0;
      v39 = 0uLL;
      v36 = 255;
      v38 = 0uLL;
    }

    v104[0] = v39;
    v104[1] = v38;
    v105 = v35;
    v106 = v36;
    v107 = v37;
    v40 = v3;
    PresentationSource.init(viewController:position:)(v40, v104, v99);
    v41 = _s30CollectionViewSelectionHandlerVMa(0);
    v98[3] = v41;
    v98[4] = &off_CF7E60;
    v42 = __swift_allocate_boxed_opaque_existential_0(v98) + *(v41 + 20);
    v43 = a2;
    v44 = v93;
    *&v77 = *(v32 + 16);
    (v77)(v42, v43, v93);
    swift_unknownObjectWeakInit();
    *&v79 = v84;
    v45 = [v79 contentItem];
    v46 = [v45 innerObject];

    sub_2641C4(v46, v40, static MPMediaLibraryFilteringOptions.none.getter, 0, v86);
    sub_15F84(v98, &v95, &unk_DE8E30, "\b]\r");
    if (*(&v96 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
      v47 = v91;
      v48 = swift_dynamicCast();
      v49 = *(v41 - 8);
      (*(v49 + 56))(v47, v48 ^ 1u, 1, v41);
      v50 = (*(v49 + 48))(v47, 1, v41);
      v51 = v92;
      if (v50 != 1)
      {
        (v77)(v92, v47 + *(v41 + 20), v44);
        sub_2D6C0(v47, _s30CollectionViewSelectionHandlerVMa);
        v52 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      sub_12E1C(&v95, &unk_DE8E30, "\b]\r");
      v47 = v91;
      (*(*(v41 - 8) + 56))(v91, 1, 1, v41);
      v51 = v92;
    }

    sub_12E1C(v47, &qword_E037A0, &unk_AF8B30);
    v52 = 1;
LABEL_18:
    (*(v32 + 56))(v51, v52, 1, v44);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v54 = Strong, sub_12B2FC(), v56 = v55, v58 = v57, v54, v56))
    {
      ObjectType = swift_getObjectType();
      (*(v58 + 8))(ObjectType, v58);
      v61 = v60;
      swift_unknownObjectRelease();
      v62 = v88;
      sub_15F84(v51, v88, &unk_DE8E20, &qword_AF7990);
      v63 = v94;
      if ((*(v94 + 48))(v62, 1, v44) == 1)
      {
        sub_12E1C(v62, &unk_DE8E20, &qword_AF7990);
        v95 = 0u;
        v96 = 0u;
        v97 = 0;
      }

      else
      {
        (*(v63 + 32))(v87, v62, v44);
        sub_46258(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        sub_ABAD10();
      }

      v65 = swift_getObjectType();
      v66 = v78;
      sub_3B8F68(v65);
      v64 = sub_21CCAC(1, v66, &v95, v65, v61);
      (*(v89 + 8))(v66, v90);
      sub_12E1C(&v95, &qword_DF2BD0, &unk_AFDC00);
      sub_12E1C(v51, &unk_DE8E20, &qword_AF7990);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_12E1C(v51, &unk_DE8E20, &qword_AF7990);
      v64 = 0;
    }

    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      v68 = v67;
      sub_12AFE8();
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    sub_15F28(v99, &v95);
    sub_15F84(v98, (v14 + 104), &unk_DE8E30, "\b]\r");
    v71 = v83;
    v72 = v86;
    sub_15F84(v86, &v14[*(v83 + 28)], &unk_DEA510, "\b]\r");
    *v14 = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *(v14 + 3) = 0u;
    *(v14 + 8) = 1;
    *(v14 + 9) = 0;
    *(v14 + 10) = 0;
    *(v14 + 11) = 0;
    sub_2D594(&v95, v14);
    *(v14 + 12) = v84;
    v73 = *v80;
    *(&v96 + 1) = v71;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v95);
    sub_2D604(v14, boxed_opaque_existential_0);
    v75 = v79;
    v76 = v73;
    JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v85, 0, v64, v70, &v95);

    sub_12E1C(v72, &unk_DEA510, "\b]\r");
    sub_1611C(v99);
    sub_2D6C0(v14, _s23MusicPerformanceContextVMa);

    sub_12E1C(&v95, &unk_DE8E40, &unk_AF8050);

    sub_12E1C(v98, &unk_DE8E30, "\b]\r");
    swift_unknownObjectRelease();

    return;
  }

  swift_unknownObjectRelease();
}

void sub_41FD0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_41564(v11, v10);

  (*(v8 + 8))(v10, v7);
}

char *sub_420E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  v8._rawValue = &off_CEFD98;
  v13._countAndFlagsBits = a2;
  v13._object = a3;
  v9 = sub_ABB140(v8, v13);

  if (v9)
  {

    return sub_3DE1D8(a1, a4);
  }

  else
  {
    v11 = sub_3B4574(a2, a3, a4);
    sub_44374(v11);
    return v11;
  }
}

char *sub_4219C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a1;
  v20._rawValue = &off_CEFD98;
  v25._countAndFlagsBits = v13;
  v25._object = v15;
  if (sub_ABB140(v20, v25))
  {
    v21 = sub_3DE1D8(v16, v12);
  }

  else
  {
    v21 = sub_3B4574(v13, v15, v12);

    sub_44374(v21);
  }

  (*(v10 + 8))(v12, v9);

  return v21;
}

void sub_42340()
{
  v1 = *(v0 + qword_DE8728);
  v2 = type metadata accessor for JSBrickModelRequest();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel;
  *&v3[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse] = 0;
  *&v3[v4] = v1;
  v204.receiver = v3;
  v204.super_class = v2;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v204, "init");
  sub_13C80(0, &unk_DE8E60, off_CE5568);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v200 = v6;
  v9 = [v8 kindWithModelClass:ObjCClassFromMetadata];
  [v200 setItemKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_AF85D0;
  *(v199 + 32) = sub_AB92A0();
  *(v199 + 40) = v10;
  *(v199 + 48) = sub_AB92A0();
  *(v199 + 56) = v11;
  *(v199 + 64) = sub_AB92A0();
  *(v199 + 72) = v12;
  *(v199 + 80) = sub_AB92A0();
  *(v199 + 88) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v197 = inited;
  v198 = inited + 32;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_AF4EC0;
  *(v16 + 32) = sub_AB92A0();
  *(v16 + 40) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_AF85E0;
  *(v18 + 32) = sub_AB92A0();
  *(v18 + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF4EC0;
  *(v20 + 32) = sub_AB92A0();
  *(v20 + 40) = v21;
  isa = sub_AB9740().super.isa;
  v202 = objc_opt_self();
  v23 = [v202 propertySetWithProperties:isa];

  v24 = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
  v25 = sub_10F414(v24);
  v26 = [v23 propertySetByCombiningWithPropertySet:v25];

  v27 = swift_getObjCClassFromMetadata();
  v28 = [v27 requiredLibraryNavigationHandlerProperties];
  v29 = [v27 requiredStoreNavigationHandlerProperties];
  v30 = [v28 propertySetByCombiningWithPropertySet:v29];

  v31 = [v26 propertySetByCombiningWithPropertySet:v30];
  *(v18 + 48) = v31;
  *(v18 + 56) = sub_AB92A0();
  *(v18 + 64) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_AF4EC0;
  *(v33 + 32) = sub_AB92A0();
  *(v33 + 40) = v34;
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_AF4EC0;
  *(v35 + 32) = sub_AB92A0();
  *(v35 + 40) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_AF4EC0;
  *(v37 + 32) = sub_AB92A0();
  *(v37 + 40) = v38;
  v39 = sub_AB9740().super.isa;
  v40 = [v202 propertySetWithProperties:v39];

  *(v35 + 48) = v40;
  sub_96EA4(v35);
  swift_setDeallocating();
  sub_12E1C(v35 + 32, &unk_DE8E80, &unk_AF87C0);
  v41 = objc_allocWithZone(MPPropertySet);
  v42 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v43 = sub_AB8FD0().super.isa;

  v44 = [v41 initWithProperties:v42 relationships:v43];

  v45 = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v46 = sub_10F414(v45);
  v47 = [v44 propertySetByCombiningWithPropertySet:v46];

  v48 = swift_getObjCClassFromMetadata();
  v49 = [v48 requiredLibraryNavigationHandlerProperties];
  v50 = [v48 requiredStoreNavigationHandlerProperties];
  v51 = [v49 propertySetByCombiningWithPropertySet:v50];

  v52 = [v47 propertySetByCombiningWithPropertySet:v51];
  *(v18 + 72) = v52;
  *(v18 + 80) = sub_AB92A0();
  *(v18 + 88) = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_AF85F0;
  *(v54 + 32) = sub_AB92A0();
  *(v54 + 40) = v55;
  *(v54 + 48) = sub_AB92A0();
  *(v54 + 56) = v56;
  v57 = sub_AB9740().super.isa;
  v58 = [v202 propertySetWithProperties:v57];

  v59 = sub_13C80(0, &unk_E04570, MPModelCurator_ptr);
  v60 = sub_10F414(v59);
  v61 = [v58 propertySetByCombiningWithPropertySet:v60];

  v62 = swift_getObjCClassFromMetadata();
  v63 = [v62 requiredLibraryNavigationHandlerProperties];
  v64 = [v62 requiredStoreNavigationHandlerProperties];
  v65 = [v63 propertySetByCombiningWithPropertySet:v64];

  v66 = [v61 propertySetByCombiningWithPropertySet:v65];
  *(v18 + 96) = v66;
  *(v18 + 104) = sub_AB92A0();
  *(v18 + 112) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_AF4EC0;
  *(v68 + 32) = sub_AB92A0();
  *(v68 + 40) = v69;
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_AF4EC0;
  *(v70 + 32) = sub_AB92A0();
  *(v70 + 40) = v71;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_AF4EC0;
  *(v72 + 32) = sub_AB92A0();
  *(v72 + 40) = v73;
  v74 = sub_AB9740().super.isa;
  v75 = [v202 propertySetWithProperties:v74];

  *(v70 + 48) = v75;
  sub_96EA4(v70);
  swift_setDeallocating();
  sub_12E1C(v70 + 32, &unk_DE8E80, &unk_AF87C0);
  v76 = objc_allocWithZone(MPPropertySet);
  v77 = sub_AB9740().super.isa;

  v78 = sub_AB8FD0().super.isa;

  v79 = [v76 initWithProperties:v77 relationships:v78];

  v80 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
  v81 = sub_10F414(v80);
  v82 = [v79 propertySetByCombiningWithPropertySet:v81];

  v83 = swift_getObjCClassFromMetadata();
  v84 = [v83 requiredLibraryNavigationHandlerProperties];
  v85 = [v83 requiredStoreNavigationHandlerProperties];
  v86 = [v84 propertySetByCombiningWithPropertySet:v85];

  v87 = [v82 propertySetByCombiningWithPropertySet:v86];
  *(v18 + 120) = v87;
  *(v18 + 128) = sub_AB92A0();
  *(v18 + 136) = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_AF4EC0;
  *(v89 + 32) = sub_AB92A0();
  *(v89 + 40) = v90;
  v91 = sub_AB9740().super.isa;
  v92 = [v202 propertySetWithProperties:v91];

  v93 = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
  v94 = sub_10F414(v93);
  v95 = [v92 propertySetByCombiningWithPropertySet:v94];

  v96 = swift_getObjCClassFromMetadata();
  v97 = [v96 requiredLibraryNavigationHandlerProperties];
  v98 = [v96 requiredStoreNavigationHandlerProperties];
  v99 = [v97 propertySetByCombiningWithPropertySet:v98];

  v100 = [v95 propertySetByCombiningWithPropertySet:v99];
  *(v18 + 144) = v100;
  *(v18 + 152) = sub_AB92A0();
  *(v18 + 160) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_AF8600;
  *(v102 + 32) = sub_AB92A0();
  *(v102 + 40) = v103;
  *(v102 + 48) = sub_AB92A0();
  *(v102 + 56) = v104;
  *(v102 + 64) = sub_AB92A0();
  *(v102 + 72) = v105;
  *(v102 + 80) = sub_AB92A0();
  *(v102 + 88) = v106;
  *(v102 + 96) = sub_AB92A0();
  *(v102 + 104) = v107;
  v108 = swift_initStackObject();
  *(v108 + 16) = xmmword_AF4EC0;
  *(v108 + 32) = sub_AB92A0();
  *(v108 + 40) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_AF4EC0;
  *(v110 + 32) = sub_AB92A0();
  *(v110 + 40) = v111;
  v112 = sub_AB9740().super.isa;
  v113 = [v202 propertySetWithProperties:v112];

  *(v108 + 48) = v113;
  sub_96EA4(v108);
  swift_setDeallocating();
  sub_12E1C(v108 + 32, &unk_DE8E80, &unk_AF87C0);
  v114 = objc_allocWithZone(MPPropertySet);
  v115 = sub_AB9740().super.isa;

  v116 = sub_AB8FD0().super.isa;

  v117 = [v114 initWithProperties:v115 relationships:v116];

  v118 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v119 = sub_10F414(v118);
  v120 = [v117 propertySetByCombiningWithPropertySet:v119];

  v121 = swift_getObjCClassFromMetadata();
  v122 = [v121 requiredLibraryNavigationHandlerProperties];
  v123 = [v121 requiredStoreNavigationHandlerProperties];
  v124 = [v122 propertySetByCombiningWithPropertySet:v123];

  v125 = [v120 propertySetByCombiningWithPropertySet:v124];
  *(v18 + 168) = v125;
  *(v18 + 176) = sub_AB92A0();
  *(v18 + 184) = v126;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_AF85F0;
  *(v127 + 32) = sub_AB92A0();
  *(v127 + 40) = v128;
  *(v127 + 48) = sub_AB92A0();
  *(v127 + 56) = v129;
  v130 = swift_initStackObject();
  *(v130 + 16) = xmmword_AF4EC0;
  *(v130 + 32) = sub_AB92A0();
  *(v130 + 40) = v131;
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_AF4EC0;
  *(v132 + 32) = sub_AB92A0();
  *(v132 + 40) = v133;
  v134 = sub_AB9740().super.isa;
  v135 = [v202 propertySetWithProperties:v134];

  *(v130 + 48) = v135;
  sub_96EA4(v130);
  swift_setDeallocating();
  sub_12E1C(v130 + 32, &unk_DE8E80, &unk_AF87C0);
  v136 = objc_allocWithZone(MPPropertySet);
  v137 = sub_AB9740().super.isa;

  v138 = sub_AB8FD0().super.isa;

  v139 = [v136 initWithProperties:v137 relationships:v138];

  v140 = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
  v141 = sub_10F414(v140);
  v142 = [v139 propertySetByCombiningWithPropertySet:v141];

  v143 = swift_getObjCClassFromMetadata();
  v144 = [v143 requiredLibraryNavigationHandlerProperties];
  v145 = [v143 requiredStoreNavigationHandlerProperties];
  v146 = [v144 propertySetByCombiningWithPropertySet:v145];

  v147 = [v142 propertySetByCombiningWithPropertySet:v146];
  *(v18 + 192) = v147;
  *(v18 + 200) = sub_AB92A0();
  *(v18 + 208) = v148;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_AF85F0;
  *(v149 + 32) = sub_AB92A0();
  *(v149 + 40) = v150;
  *(v149 + 48) = sub_AB92A0();
  *(v149 + 56) = v151;
  v152 = swift_initStackObject();
  *(v152 + 16) = xmmword_AF4EC0;
  *(v152 + 32) = sub_AB92A0();
  *(v152 + 40) = v153;
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_AF4EC0;
  *(v154 + 32) = sub_AB92A0();
  *(v154 + 40) = v155;
  v156 = sub_AB9740().super.isa;
  v157 = [v202 propertySetWithProperties:v156];

  *(v152 + 48) = v157;
  sub_96EA4(v152);
  swift_setDeallocating();
  sub_12E1C(v152 + 32, &unk_DE8E80, &unk_AF87C0);
  v158 = objc_allocWithZone(MPPropertySet);
  v159 = sub_AB9740().super.isa;

  v160 = sub_AB8FD0().super.isa;

  v161 = [v158 initWithProperties:v159 relationships:v160];

  v162 = sub_13C80(0, &unk_DE8EC0, MPModelTVShow_ptr);
  v163 = sub_10F414(v162);
  v164 = [v161 propertySetByCombiningWithPropertySet:v163];

  v165 = swift_getObjCClassFromMetadata();
  v166 = [v165 requiredLibraryNavigationHandlerProperties];
  v167 = [v165 requiredStoreNavigationHandlerProperties];
  v168 = [v166 propertySetByCombiningWithPropertySet:v167];

  v169 = [v164 propertySetByCombiningWithPropertySet:v168];
  *(v18 + 216) = v169;
  *(v18 + 224) = sub_AB92A0();
  *(v18 + 232) = v170;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_AF4EC0;
  *(v171 + 32) = sub_AB92A0();
  *(v171 + 40) = v172;
  v173 = sub_AB9740().super.isa;
  v174 = [v202 propertySetWithProperties:v173];

  v175 = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
  v176 = sub_10F414(v175);
  v177 = [v174 propertySetByCombiningWithPropertySet:v176];

  v178 = swift_getObjCClassFromMetadata();
  v179 = [v178 requiredLibraryNavigationHandlerProperties];
  v180 = [v178 requiredStoreNavigationHandlerProperties];
  v181 = [v179 propertySetByCombiningWithPropertySet:v180];

  v182 = [v177 propertySetByCombiningWithPropertySet:v181];
  *(v18 + 240) = v182;
  sub_96EA4(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v183 = objc_allocWithZone(MPPropertySet);
  v184 = sub_AB9740().super.isa;

  v185 = sub_AB8FD0().super.isa;

  v186 = [v183 initWithProperties:v184 relationships:v185];

  *(v197 + 48) = v186;
  sub_96EA4(v197);
  swift_setDeallocating();
  sub_12E1C(v198, &unk_DE8E80, &unk_AF87C0);
  v187 = objc_allocWithZone(MPPropertySet);
  v188 = sub_AB9740().super.isa;

  v189 = sub_AB8FD0().super.isa;

  v190 = [v187 initWithProperties:v188 relationships:v189];

  [v200 setItemProperties:v190];
  v191 = *&v201[qword_DFE2F0];
  v192 = *&v200[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse];
  *&v200[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse] = v191;
  v193 = v191;

  v194 = swift_allocObject();
  *(v194 + 16) = v201;
  aBlock[4] = sub_46564;
  aBlock[5] = v194;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_3;
  v195 = _Block_copy(aBlock);
  v196 = v201;

  [v200 performWithResponseHandler:v195];
  _Block_release(v195);
}

uint64_t sub_43A18(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v5);
}

void sub_43AE8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    v6 = v4;
    sub_3B4724(a2);
  }
}

void sub_43B54(char a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 isViewLoaded])
  {
    return;
  }

  v29 = qword_DE8718;
  if (v2[qword_DE8718] == (a1 & 1))
  {
    return;
  }

  [v2 loadViewIfNeeded];
  v34 = qword_DFE2F8;
  v9 = *&v2[qword_DFE2F8];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v33 = "";
  v11 = sub_AB9260();
  v12 = [v10 indexPathsForVisibleSupplementaryElementsOfKind:v11];

  v13 = sub_AB9760();
  v32 = *(v13 + 16);
  if (!v32)
  {
LABEL_16:

    return;
  }

  v14 = 0;
  v30 = (v5 + 8);
  v31 = v5 + 16;
  while (v14 < *(v13 + 16))
  {
    v15 = v13;
    v16 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14;
    v17 = v4;
    (*(v5 + 16))(v8, v16, v4);
    [v2 loadViewIfNeeded];
    v18 = *&v2[v34];
    if (!v18)
    {
      goto LABEL_19;
    }

    v19 = v2;
    v20 = v18;
    v21 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v23 = [v20 supplementaryViewForElementKind:v21 atIndexPath:isa];

    if (v23)
    {
      type metadata accessor for TitleSectionHeaderView(0);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v24;
        v26 = v19[v29];
        v27 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
        swift_beginAccess();
        v25[v27] = v26;
        if (v26 != v25[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible])
        {
          v25[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = v26;
          [v25 setNeedsLayout];
        }

        v4 = v17;
        (*v30)(v8, v17);

        goto LABEL_8;
      }
    }

    v4 = v17;
    (*v30)(v8, v17);
LABEL_8:
    v2 = v19;
    ++v14;
    v13 = v15;
    if (v32 == v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_43EA0()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[qword_DFE2F8];
  if (v1)
  {
    v2 = v1;
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v0 traitCollection];
    v12 = [v11 preferredContentSizeCategory];

    LOBYTE(v11) = sub_ABA330();
    if ((v11 & 1) == 0)
    {
      v13 = [v0 traitCollection];
      sub_45B2C4(v13, v4, v6, v8, v10);
    }

    [v2 music_inheritedLayoutInsets];

    v14 = [v0 traitCollection];
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, v15, v8);
    [v14 displayScale];
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    CGRectGetWidth(v16);
    sub_AB3A00();
  }

  else
  {
    __break(1u);
  }
}

void sub_44084()
{
  v1 = &v0[qword_DE8720];
  if (v0[qword_DE8720 + 16])
  {
    [v0 loadViewIfNeeded];
    v2 = *&v0[qword_DFE2F8];
    if (v2)
    {
      v3 = v2;
      sub_43EA0();
      v5 = v4;
      [v3 bounds];
      v6 = [v0 traitCollection];
      v7 = sub_412B34(v6, v5);
      v9 = v8;

      *v1 = v7;
      *(v1 + 1) = v9;
      v1[16] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_44158(double a1, double a2)
{
  v5 = qword_DE8738;
  v6 = *&v2[qword_DE8738];
  if (v6)
  {
    v7 = *&v2[qword_DE8738];
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v9 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_forSizing;
    swift_beginAccess();
    v8[v9] = 1;
    v7 = v8;
    [v7 setHidden:1];
    [v7 setUserInteractionEnabled:0];
    v10 = *&v2[direct field offset for BrowseCollectionViewController.textDrawingCache];
    v11 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textDrawingCache;
    swift_beginAccess();
    *&v7[v11] = v10;

    v12 = [v2 view];
    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = v12;
    [v12 addSubview:v7];

    v14 = *&v2[v5];
    *&v2[v5] = v7;

    v6 = 0;
  }

  v15 = v6;
  sub_44374(v7);
  v16 = [v2 view];
  if (v16)
  {
    v17 = v16;
    [v16 music_inheritedLayoutInsets];
    v19 = v18;
    v21 = v20;

    [v7 setFrame:{0.0, 0.0, a1 - v19 - v21, a2}];
    [v7 layoutIfNeeded];

    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_44374(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v98 = &v97 - v3;
  v4 = sub_ABA680();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v1;
  v100 = *&v1[qword_DE8728];
  v8 = (v100 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_supertitle);
  swift_beginAccess();
  v9 = v8[1];
  v97 = v7;
  if (v9)
  {
    v10 = *v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_supertitle];
  swift_beginAccess();
  *v12 = v10;
  *(v12 + 1) = v11;

  sub_182B30();
  v13 = (v100 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_title);
  swift_beginAccess();
  if (v13[1])
  {
    v14 = *v13;
    v15 = v13[1];
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v16 = v14;
  *(v16 + 1) = v15;

  v17 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v18 = String.trim()();

  swift_beginAccess();
  v17[7] = v18;

  sub_2EB704();
  [a1 setNeedsLayout];
  v19 = (v100 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_subtitle);
  swift_beginAccess();
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_subtitle];
  swift_beginAccess();
  *v23 = v21;
  *(v23 + 1) = v22;

  sub_183500();
  v24 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_contentArtwork;
  v25 = v100;
  swift_beginAccess();
  v26 = *(v25 + v24);
  if (v26)
  {
    v27 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
    swift_beginAccess();
    v28 = *&v26[v27];
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = ICStoreArtworkInfoCropStyleBoundedBox;
    }

    v32 = v26;
    v33 = v28;
    v34 = JSArtwork.artworkCatalog(defaultCropStyle:)(v29);

    v35 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog;
    swift_beginAccess();
    v36 = *&a1[v35];
    *&a1[v35] = v34;
    v37 = v34;

    sub_184BB4();
    v38 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
    swift_beginAccess();
    v39 = v32[v38];
    v40 = (v5 + 16);
    if (v39)
    {
      v41 = v97;
      sub_ABA670();
      v42 = *v40;
    }

    else
    {
      v43 = UIView.Corner.small.unsafeMutableAddressor();
      v42 = *v40;
      v41 = v97;
      (*v40)(v97, v43, v4);
    }

    v44 = v98;
    v42(v98, v41, v4);
    (*(v5 + 56))(v44, 0, 1, v4);
    v45 = TitleSectionHeaderView.imageArtworkCornerTreatment.setter(v44);
    (*(v5 + 8))(v41, v4, v45);
  }

  else
  {
    v30 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_imageArtworkCatalog;
    swift_beginAccess();
    v31 = *&a1[v30];
    *&a1[v30] = 0;

    sub_184BB4();
  }

  TitleSectionHeaderView.titleMaximumNumberOfLines.setter(2);
  v46 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v46 = xmmword_AF8610;
  v46[16] = 1;
  sub_1848CC();
  v47 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v47 = xmmword_AF8620;
  v47[16] = 1;
  sub_1846A0();
  [a1 setBackgroundColor:0];
  v48 = v99;
  v49 = v99[qword_DE8718];
  v50 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
  swift_beginAccess();
  a1[v50] = v49;
  if (v49 != a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible])
  {
    a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = v49;
    [a1 setNeedsLayout];
  }

  [a1 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0, v97}];
  v51 = a1;
  v52 = [v51 _collectionView];
  v53 = v51;
  if (v52)
  {
    v54 = v52;
    v55 = sub_AB9260();
    v56 = NSSelectorFromString(v55);

    if ([v54 respondsToSelector:v56])
    {
      v57 = [v54 _currentTouch];
      if (v57)
      {
        v58 = v57;
        [v57 locationInView:v51];
        v60 = v59;
        v62 = v61;

        v113.size.width = 0.0;
        v113.size.height = 0.0;
        v113.origin.x = v60;
        v113.origin.y = v62;
        v114 = CGRectInset(v113, -20.0, -20.0);
        x = v114.origin.x;
        y = v114.origin.y;
        width = v114.size.width;
        height = v114.size.height;

        v67 = height;
        v68 = width;
        v69 = y;
        v70 = x;
        goto LABEL_27;
      }
    }

    v53 = v54;
  }

  [v51 bounds];
LABEL_27:
  v111[0] = v51;
  *&v111[1] = v70;
  *&v111[2] = v69;
  *&v111[3] = v68;
  *&v111[4] = v67;
  v112 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v111, 15, v103);
  v107[0] = v103[0];
  v107[1] = v103[1];
  v108 = v104;
  v109 = v105;
  v110 = v106;
  v71 = v51;
  PresentationSource.init(viewController:position:)(v48, v107, v102);
  v72 = (v100 + OBJC_IVAR____TtC11MusicJSCore7JSBrick_accessoryButtonTitle);
  swift_beginAccess();
  v73 = v72[1];
  if (v73)
  {
    v74 = *v72;
    v75 = v73;
  }

  else
  {
    v74 = 0;
    v75 = 0xE000000000000000;
  }

  TitleSectionHeaderView.systemStyleButtonTitle.setter(v74, v75);

  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_15F28(v102, v101);
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    sub_17704(v101, v78 + 24);
    v79 = &v71[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler];
    swift_beginAccess();
    v80 = *v79;
    v81 = v79[1];
    *v79 = sub_46498;
    v79[1] = v78;

    sub_17654(v80, v81);
  }

  else
  {
    v82 = &v71[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_accessoryButtonHandler];
    swift_beginAccess();
    v83 = *v82;
    v84 = v82[1];
    *v82 = 0;
    v82[1] = 0;
    sub_17654(v83, v84);
  }

  v85 = OBJC_IVAR____TtC11MusicJSCore7JSBrick_containerDetailLink;
  v86 = v100;
  swift_beginAccess();
  v87 = *(v86 + v85);
  if (v87)
  {
    sub_15F28(v102, v101);
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    sub_17704(v101, v88 + 24);
    v89 = &v71[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler];
    swift_beginAccess();
    v90 = *v89;
    v91 = v89[1];
    *v89 = sub_46520;
    v89[1] = v88;
    v92 = v87;

    sub_17654(v90, v91);
    sub_184414();
  }

  else
  {
    v93 = &v71[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textTappedHandler];
    swift_beginAccess();
    v94 = *v93;
    v95 = v93[1];
    *v93 = 0;
    v93[1] = 0;
    sub_17654(v94, v95);
    sub_184414();
  }

  return sub_1611C(v102);
}

void sub_44D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = sub_AB3430();
  v52 = *(v53 - 8);
  __chkstk_darwin();
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v13 = &v49 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v49 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v19 = &v49 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v57 = v9;
  v58 = a4;
  v54 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v55 = *&v21[qword_DE8728];
  v22 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_15F84(v62, &v59, &unk_DE8E30, "\b]\r");
  if (*(&v60 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v23 = _s30CollectionViewSelectionHandlerVMa(0);
    v24 = swift_dynamicCast();
    v25 = *(v23 - 8);
    (*(v25 + 56))(v13, v24 ^ 1u, 1, v23);
    if ((*(v25 + 48))(v13, 1, v23) != 1)
    {
      (*(v7 + 16))(v17, &v13[*(v23 + 20)], v6);
      sub_2D6C0(v13, _s30CollectionViewSelectionHandlerVMa);
      v26 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_12E1C(&v59, &unk_DE8E30, "\b]\r");
    v27 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  }

  sub_12E1C(v13, &qword_E037A0, &unk_AF8B30);
  v26 = 1;
LABEL_7:
  (*(v7 + 56))(v17, v26, 1, v6);
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28 && (v29 = v28, sub_12B2FC(), v31 = v30, v33 = v32, v29, v31))
  {
    ObjectType = swift_getObjectType();
    (*(v33 + 8))(ObjectType, v33);
    v36 = v35;
    swift_unknownObjectRelease();
    sub_15F84(v17, v15, &unk_DE8E20, &qword_AF7990);
    if ((*(v7 + 48))(v15, 1, v6) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
    }

    else
    {
      (*(v7 + 32))(v50, v15, v6);
      sub_46258(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_ABAD10();
    }

    v38 = swift_getObjectType();
    v39 = v51;
    sub_3B8F68(v38);
    v37 = sub_21CCAC(1, v39, &v59, v38, v36);
    (*(v52 + 8))(v39, v53);
    sub_12E1C(&v59, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v17, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E20, &qword_AF7990);
    v37 = 0;
  }

  v40 = v58;
  v41 = swift_unknownObjectWeakLoadStrong();
  v56 = v21;
  if (v41)
  {
    v42 = v41;
    sub_12AFE8();
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  sub_15F28(v40, &v59);
  sub_15F84(v62, (v11 + 104), &unk_DE8E30, "\b]\r");
  v45 = v57;
  sub_15F84(v19, &v11[*(v57 + 28)], &unk_DEA510, "\b]\r");
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_2D594(&v59, v11);
  *(v11 + 12) = 0;
  v46 = *v54;
  *(&v60 + 1) = v45;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
  sub_2D604(v11, boxed_opaque_existential_0);
  v48 = v46;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v55, 1, v37, v44, &v59);
  sub_12E1C(v19, &unk_DEA510, "\b]\r");
  sub_12E1C(v62, &unk_DE8E30, "\b]\r");
  sub_2D6C0(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v59, &unk_DE8E40, &unk_AF8050);
}

void sub_455C4(uint64_t a1, void *a2, uint64_t a3)
{
  v54 = a2;
  v51 = sub_AB3430();
  v50 = *(v51 - 8);
  __chkstk_darwin();
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v11 = &v47 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v47 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v17 = &v47 - v16;
  v52 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v18 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_15F84(v58, &v55, &unk_DE8E30, "\b]\r");
  if (!*(&v56 + 1))
  {
    sub_12E1C(&v55, &unk_DE8E30, "\b]\r");
    v25 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
  v19 = a3;
  v20 = _s30CollectionViewSelectionHandlerVMa(0);
  v21 = swift_dynamicCast();
  v22 = *(v20 - 8);
  (*(v22 + 56))(v11, v21 ^ 1u, 1, v20);
  v23 = (*(v22 + 48))(v11, 1, v20);
  a3 = v19;
  if (v23 == 1)
  {
LABEL_5:
    sub_12E1C(v11, &qword_E037A0, &unk_AF8B30);
    v24 = 1;
    goto LABEL_6;
  }

  (*(v6 + 16))(v15, &v11[*(v20 + 20)], v5);
  sub_2D6C0(v11, _s30CollectionViewSelectionHandlerVMa);
  v24 = 0;
LABEL_6:
  (*(v6 + 56))(v15, v24, 1, v5);
  v26 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v28 = Strong, sub_12B2FC(), v30 = v29, v32 = v31, v28, v30))
  {
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(ObjectType, v32);
    v35 = v34;
    swift_unknownObjectRelease();
    sub_15F84(v15, v13, &unk_DE8E20, &qword_AF7990);
    if ((*(v6 + 48))(v13, 1, v5) == 1)
    {
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
      v55 = 0u;
      v56 = 0u;
      v57 = 0;
    }

    else
    {
      (*(v6 + 32))(v48, v13, v5);
      sub_46258(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_ABAD10();
    }

    v37 = swift_getObjectType();
    v38 = v49;
    sub_3B8F68(v37);
    v36 = sub_21CCAC(1, v38, &v55, v37, v35);
    (*(v50 + 8))(v38, v51);
    sub_12E1C(&v55, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
    v36 = 0;
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    sub_12AFE8();
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  sub_15F28(v26, &v55);
  sub_15F84(v58, (v9 + 104), &unk_DE8E30, "\b]\r");
  v43 = v53;
  sub_15F84(v17, &v9[*(v53 + 28)], &unk_DEA510, "\b]\r");
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v55, v9);
  *(v9 + 12) = 0;
  v44 = *v52;
  *(&v56 + 1) = v43;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v55);
  sub_2D604(v9, boxed_opaque_existential_0);
  v46 = v44;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v54, 0, v36, v42, &v55);
  sub_12E1C(v17, &unk_DEA510, "\b]\r");
  sub_12E1C(v58, &unk_DE8E30, "\b]\r");
  sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v55, &unk_DE8E40, &unk_AF8050);
}

void sub_45DD8()
{

  v1 = *(v0 + qword_DE8738);
}

id sub_45E28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBrickViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_45E60(uint64_t a1)
{

  v2 = *(a1 + qword_DE8738);
}

uint64_t type metadata accessor for JSBrickViewController(uint64_t a1)
{
  result = qword_DE8768;
  if (!qword_DE8768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_45F9C(void *a1)
{
  [a1 bounds];
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(3, 1u, 0, &v3, v1);
  return 1;
}

void sub_45FF0(void *a1)
{
  [a1 bounds];

  sub_44158(v1, v2);
}

void sub_46028(char a1)
{
  v2 = *(v1 + qword_DE8718);
  *(v1 + qword_DE8718) = a1;
  sub_43B54(v2);
}

double sub_46040()
{
  v1 = [*v0 traitCollection];
  sub_44084();
  v3 = v2;
  [v1 displayScale];
  sub_AB3A00();

  return v3;
}

double sub_460C4@<D0>(_OWORD *a1@<X8>)
{
  sub_40220(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

unint64_t sub_46170()
{
  result = qword_DE8D80;
  if (!qword_DE8D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DE8D88, &qword_AF86F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8D80);
  }

  return result;
}

uint64_t sub_461D4(uint64_t a1)
{
  *(a1 + 8) = sub_46258(&qword_DE8DB8, type metadata accessor for JSBrickViewController, &unk_AF86D8);
  result = sub_46258(&qword_DE8DC0, type metadata accessor for JSBrickViewController, &unk_AF8700);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_46258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_462A0()
{
  v0 = [objc_allocWithZone(type metadata accessor for ShelfCollectionViewLayout(0)) init];
  v1 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  swift_beginAccess();
  *&v0[v1] = 0x4024000000000000;
  v2 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
  if (sub_AB38D0())
  {
    *&v0[v2] = *&v0[v1];
    [v0 invalidateLayout];
  }

  return v0;
}

BOOL sub_46364()
{
  v1 = (*(v0 + qword_DE8728) + OBJC_IVAR____TtC11MusicJSCore7JSBrick_title);
  swift_beginAccess();
  v2 = v1[1];
  result = 0;
  if (v2)
  {
    if ((v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : *v1 & 0xFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_463E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4641C()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_464A4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4652C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_46584()
{

  return swift_deallocObject();
}

double sub_465CC(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_AF82C0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  *(a1 + 137) = 0u;
  return result;
}

uint64_t sub_466A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_466B8(a1, a2);
  }

  return a1;
}

uint64_t sub_466B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

char *sub_4670C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___MusicPageHeaderPlayButton_playImageTintColor;
  v11 = objc_opt_self();
  *&v5[v10] = [v11 whiteColor];
  v12 = OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor;
  v13 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  v14 = *v13;
  *&v5[v12] = *v13;
  v15 = OBJC_IVAR___MusicPageHeaderPlayButton_overlayColor;
  v16 = v14;
  v17 = [v11 blackColor];
  v18 = [v17 colorWithAlphaComponent:0.5];

  *&v5[v15] = v18;
  sub_472EC();
  v19 = UIImage.init(systemName:pointSize:weight:)(0x6C69662E79616C70, 0xE90000000000006CLL, 4, 15.0);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 imageWithRenderingMode:2];
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  v23 = OBJC_IVAR___MusicPageHeaderPlayButton_playImageView;
  *&v5[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView] = v22;
  [v22 setTintColor:*&v5[v10]];
  [*&v5[v23] setUserInteractionEnabled:0];
  v28.receiver = v5;
  v28.super_class = type metadata accessor for PageHeaderPlayButton();
  v24 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  [v24 setAdjustsImageWhenHighlighted:0];
  v25 = objc_opt_self();
  v26 = v24;
  [v25 easyTouchDefaultHitRectInsets];
  [v26 setHitRectInsets:?];

  [v26 setBackgroundColor:*&v26[OBJC_IVAR___MusicPageHeaderPlayButton_backgroundImageTintColor]];
  [v26 addSubview:*&v26[OBJC_IVAR___MusicPageHeaderPlayButton_playImageView]];

  return v26;
}

uint64_t sub_469B8(double a1, double a2)
{
  v3 = [v2 traitCollection];
  [v3 horizontalSizeClass];

  sub_471A4();
  return sub_AB38F0();
}