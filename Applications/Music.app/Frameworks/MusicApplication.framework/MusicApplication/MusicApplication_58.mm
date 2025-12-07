uint64_t sub_4EE4B4(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents;
      swift_beginAccess();
      v5 = *&v2[v4];

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_4EE5D4(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

uint64_t sub_4EE668(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = &v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
      swift_beginAccess();
      v5 = *(v4 + 1);

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_4EE854(uint64_t result, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText + 8];
  if (!a2)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  if (*&v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText] != result || v3 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
LABEL_10:

      if ([v2 accessoryType] != &dword_0 + 1)
      {
        v7 = sub_4EF944();
        v8 = sub_AB9260();
        [v7 setText:v8];

        v9 = OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___accessoryLabelView;
        [*&v2[OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___accessoryLabelView] sizeToFit];
        [v2 setAccessoryView:*&v2[v9]];

        goto LABEL_14;
      }

LABEL_12:
      v5 = sub_4EF944();
      v6 = sub_AB9260();
      [v5 setText:v6];

LABEL_14:

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_4EE9A8(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable];
  v1[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable] = result;
  if (v3 != (result & 1))
  {
    if ([v1 accessoryType] != &dword_0 + 1)
    {
      if (v1[v2])
      {
        v4 = sub_4EFAD4();
      }

      else
      {
        v4 = 0;
      }

      [v1 setAccessoryView:v4];

      v5 = [v1 accessoryView];
      [v5 sizeToFit];
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_4EEA7C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled;
  *(v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled) = a1;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable) == 1)
  {
    v3 = v1;
    v4 = sub_4EFAD4();
    v5 = sub_4EDD18();

    [v5 setOn:*(v3 + v2)];
  }
}

void sub_4EEBA4()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for MenuCell(0);
  objc_msgSendSuper2(&v39, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] frame];
  Width = CGRectGetWidth(v40);
  sub_4EFDB4(Width);
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v0 traitCollection];
  [v11 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  if ((v0[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue + 8] & 1) != 0 || *&v0[OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue] < 1)
  {
    v17 = sub_4EFB88();
    [v17 removeFromSuperview];
  }

  else
  {
    v12 = sub_4EFB88();
    v13 = [v12 isDescendantOfView:v0];

    if ((v13 & 1) == 0)
    {
      [v0 addSubview:*&v0[OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView]];
    }

    v14 = OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView;
    [*&v0[OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView] sizeThatFits:{v8, v10}];
    v16 = v15;
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    CGRectGetMaxX(v41);
    [v0 bounds];
    sub_ABA470();
    v17 = *&v0[v14];
    [v0 bounds];
    sub_ABA490();
    [v17 setFrame:?];
  }

  v18 = sub_4EFAD4();
  v19 = [v0 contentView];
  [v19 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v42.origin.x = v21;
  v42.origin.y = v23;
  v42.size.width = v25;
  v42.size.height = v27;
  MaxX = CGRectGetMaxX(v42);
  [v0 bounds];
  v29 = CGRectGetMinY(v43) + 6.0;
  v30 = OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___switchContainerView;
  v31 = *&v0[OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___switchContainerView];
  [v0 bounds];
  v32 = CGRectGetWidth(v44);
  [v0 frame];
  [v31 sizeThatFits:{v32, CGRectGetHeight(v45) + -12.0}];
  v34 = v33;
  v36 = v35;

  [v18 setFrame:{MaxX, v29, v34, v36}];
  v37 = *&v0[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText + 8];
  if ((v37 & 0x2000000000000000) != 0)
  {
    v38 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v38 = *&v0[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText] & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    LOBYTE(v38) = v0[OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable];
  }

  *(*&v0[v30] + OBJC_IVAR____TtCC16MusicApplication8MenuCellP33_C2E388CD2164915D6B208DFC15E7FAC819SwitchContainerView_isTopAligned) = v38;
}

double sub_4EEFCC(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for MenuCell(0);
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_AB92A0();
  v9 = v8;
  if (v7 == sub_AB92A0() && v9 == v10)
  {

    return result;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_9:
    v14 = &v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
    swift_beginAccess();
    v15 = *(v14 + 1);
    v18 = *v14;
    v19 = v15;
    v20 = *(v14 + 4);
    v21 = v15;

    sub_4F1678(&v21, &v16);
    sub_9A60C(&v21 + 8, &v16);
    sub_4EF1AC();

    sub_12E1C(&v21, &unk_DEA560, &unk_AF8B40);
    sub_5C004(&v21 + 8);
    [v2 setNeedsLayout];
  }

  return result;
}

void sub_4EF1AC()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = [objc_opt_self() preferredFontForTextStyle:v2];
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2];
  }

  v4 = v3;
  v35 = v1[3];
  v5 = objc_opt_self();
  sub_9A60C(&v35, v34);
  v6 = [v5 clearColor];
  v7 = v35;
  v8 = *v1;
  *&v23 = v35;
  *(&v23 + 1) = v6;
  v24 = xmmword_AF7C20;
  v25 = 0uLL;
  *&v26 = v4;
  *(&v26 + 1) = 1;
  v27 = xmmword_AF9C80;
  swift_beginAccess();
  v10 = *(v8 + 48);
  v9 = *(v8 + 64);
  v11 = *(v8 + 96);
  v28[3] = *(v8 + 80);
  v28[4] = v11;
  v28[1] = v10;
  v28[2] = v9;
  v28[0] = *(v8 + 32);
  *(v8 + 80) = v26;
  *(v8 + 96) = xmmword_AF9C80;
  v12 = v24;
  *(v8 + 32) = v23;
  *(v8 + 48) = v12;
  *(v8 + 64) = v25;
  v13 = v7;
  v14 = v6;
  v15 = v4;
  sub_2F118(&v23, v34);
  sub_2F174(v28);
  sub_2EB2A8();
  sub_2F174(&v23);
  v16 = v1[1];
  if (qword_DE6DA0 != -1)
  {
    swift_once();
  }

  v31 = xmmword_E0C6C8;
  v32 = unk_E0C6D8;
  v33 = xmmword_E0C6E8;
  v29 = xmmword_E0C6A8;
  v30 = unk_E0C6B8;
  swift_beginAccess();
  v18 = v16[3];
  v17 = v16[4];
  v19 = v16[6];
  v34[3] = v16[5];
  v34[4] = v19;
  v34[1] = v18;
  v34[2] = v17;
  v34[0] = v16[2];
  v20 = v33;
  v16[5] = v32;
  v16[6] = v20;
  v21 = v30;
  v16[2] = v29;
  v16[3] = v21;
  v16[4] = v31;
  sub_2F118(&v29, &v22);
  sub_2F174(v34);
  sub_2EB2A8();
  *(v8 + 88) = v1[4];
  sub_2EB2A8();
}

void sub_4EF51C(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v9 = type metadata accessor for MenuCell(0);
  v13.receiver = a1;
  v13.super_class = v9;
  v10 = *a4;
  v11 = a1;
  LODWORD(v10) = objc_msgSendSuper2(&v13, v10);
  v12.receiver = v11;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, *a5, a3);
  if (v10 != [v11 *a4])
  {
    sub_4EFF38();
  }
}

id sub_4EF5C8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MenuCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_4EF7A0(id a1)
{
  if ([v1 accessoryType] != a1)
  {
    if ([v1 accessoryType] == &dword_0 + 1)
    {
      v2 = objc_opt_self();
      v3 = sub_AB9260();
      v4 = [v2 kitImageNamed:v3];

      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = [v4 imageFlippedForRightToLeftLayoutDirection];

      v6 = [objc_opt_self() tertiaryLabelColor];
      v7 = [v5 flattenedImageWithColor:v6];

      v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];
      [v1 setAccessoryView:v8];
      sub_4EFF38();
    }

    else
    {
      [v1 setAccessoryView:0];
    }

    [v1 setNeedsLayout];
  }
}

id sub_4EF944()
{
  v1 = OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___accessoryLabelView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___accessoryLabelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___accessoryLabelView);
  }

  else
  {
    v4 = sub_4EF9A4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_4EF9A4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v0 setTextColor:qword_E718C8];
  [v0 setTextAlignment:2];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 setFont:v4];

  return v2;
}

id sub_4EFAD4()
{
  v1 = OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___switchContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___switchContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___switchContainerView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(type metadata accessor for MenuCell.SwitchContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v6 = sub_4EDD18();
    [v6 addTarget:v4 action:"switchValueChanged:" forControlEvents:4096];

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_4EFB88()
{
  v1 = OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for NotificationBadgeView());
    v6 = sub_308B4(0);
    v7 = v6[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled];
    v6[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_isShadowEnabled] = 1;
    if ((v7 & 1) == 0)
    {
      sub_3137C();
    }

    v6[OBJC_IVAR____TtC16MusicApplication21NotificationBadgeView_shouldHideAutomatically] = 1;
    v8 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

double sub_4EFC34(void *a1)
{
  v2 = v1;
  v4 = [a1 isOn];
  v5 = OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled;
  *(v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled) = v4;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable) == 1)
  {
    v6 = sub_4EFAD4();
    v7 = sub_4EDD18();

    [v7 setOn:*(v2 + v5)];
  }

  v8 = v2 + OBJC_IVAR____TtC16MusicApplication8MenuCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v2, &off_D19550, [a1 isOn], ObjectType, v10);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_4EFDB4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText);
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText + 8);
  v5 = objc_opt_self();

  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleTitle2];
  sub_4F13E0(v3, v4, v6, a1);
  v8 = v7;

  v10 = *(v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText);
  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText + 8);
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 && (, v12 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline], sub_4F13E0(v10, v9, v12, a1), v14 = v13, , v12, v15 = __OFADD__(v8, v14), v8 += v14, v15))
  {
    __break(1u);
  }

  else
  {
    v16 = v1 + OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents;
    swift_beginAccess();
    *(v16 + 32) = v8;
    sub_4EF1AC();
    swift_endAccess();
  }
}

void sub_4EFF38()
{
  v1 = v0;
  if ([v0 isSelected] & 1) == 0 && !objc_msgSend(v0, "isHighlighted") || (objc_msgSend(v0, "isEditing") & 1) != 0 || (v2 = objc_msgSend(v0, "_collectionView")) != 0 && (v3 = v2, v4 = objc_msgSend(v2, "isEditing"), v3, (v4))
  {
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor];
    if (v5 == &dword_0 + 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v5 = [objc_opt_self() secondaryLabelColor];
  }

  v7 = &v1[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
  swift_beginAccess();
  v8 = *(v7 + 3);
  *(v7 + 3) = v5;

  sub_4EF1AC();
  swift_endAccess();
  v9 = [v1 contentView];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [v1 accessoryView];
  if (v11)
  {
    if (qword_DE6C68 != -1)
    {
      v13 = v11;
      swift_once();
      v11 = v13;
    }

    v12 = v11;
    [v11 setTintColor:qword_E718A8];
  }
}

double sub_4F0140()
{
  sub_4F0184(&v1);
  xmmword_E0C6C8 = v3;
  unk_E0C6D8 = v4;
  xmmword_E0C6E8 = v5;
  result = *&v2;
  xmmword_E0C6A8 = v1;
  unk_E0C6B8 = v2;
  return result;
}

double sub_4F0184@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v3 = qword_E718C8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0x7FFFFFFFFFFFFFFFLL;
  result = 26.0;
  *(a1 + 64) = xmmword_B008B0;
  return result;
}

void sub_4F0268()
{
  sub_176DC(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_delegate);

  sub_D3144(*(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor));
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents + 16);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents + 24);

  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView);
}

id sub_4F0374(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for MenuCell(uint64_t a1)
{
  result = qword_E0C740;
  if (!qword_E0C740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4F05D0(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v7 = [v2 clearColor];
  *&v15[0] = v3;
  *(&v15[0] + 1) = v7;
  v15[1] = xmmword_AF7C20;
  v16 = 0;
  v17 = 0;
  v18 = v6;
  v19 = 1;
  v20 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v8 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v15);
  v9 = v5;
  v10 = v7;
  v11 = v6;
  sub_2F118(v15, v14);
  if (qword_DE6DA0 != -1)
  {
    swift_once();
  }

  v14[2] = xmmword_E0C6C8;
  v14[3] = unk_E0C6D8;
  v14[4] = xmmword_E0C6E8;
  v14[0] = xmmword_E0C6A8;
  v14[1] = unk_E0C6B8;
  swift_allocObject();
  v12 = TextStackView.Component.init(identifier:labelProperties:)(0x6C6961746564, 0xE600000000000000, v14);
  sub_2F118(v14, &v13);
  sub_2F174(v15);

  *a1 = v8;
  a1[1] = v12;
  a1[2] = 0;
  a1[3] = v3;
  a1[4] = 1;
}

double sub_4F07D4(void *a1)
{
  sub_4F05D0(v9);
  v2 = v9[0];
  v10 = v9[3];
  v11 = v9[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  *(inited + 32) = v2;
  type metadata accessor for CGSize(0);
  top = 0.0;
  v8 = 0.0;
  if ((sub_AB38D0() & 1) == 0)
  {
    left = UIEdgeInsetsZero.left;
    type metadata accessor for UIEdgeInsets(0);
    top = UIEdgeInsetsZero.top;
    v8 = left;
    sub_AB38D0();
  }

  sub_2F48A4(inited, a1, 0, 0);

  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:{UIFontTextStyleTitle2, *&top, *&v8}];
  [v5 scaledValueForValue:52.0];

  [a1 displayScale];
  sub_AB3A00();

  sub_12E1C(&v11, &unk_DEA560, &unk_AF8B40);
  sub_5C004(&v10);
  return -1.0;
}

void sub_4F09D0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_titleText);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessoryText);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomDeselectedTextColor) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggleable) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_isToggled) = 0;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_notificationBadgeValue;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_accessibilityIsDimmed) = 0;
  v5 = v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents;
  sub_4F05D0(v7);
  v6 = v7[1];
  *v5 = v7[0];
  *(v5 + 16) = v6;
  *(v5 + 32) = v8;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___accessoryLabelView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___switchContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication8MenuCell____lazy_storage___notificationBadgeView) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_4F0B1C(void *a1, void *a2, uint64_t a3, unint64_t a4, double a5)
{
  sub_4F05D0(v31);
  v11 = v31[0];
  v10 = v31[1];
  v13 = v31[2];
  v12 = v31[3];
  if (a2)
  {
    v14 = v31[4];
    v15 = a2;

    v31[5] = v11;
    v31[6] = v10;
    v31[7] = a2;
    v31[8] = v12;
    v31[9] = v14;
    sub_4EF1AC();
    v13 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  *(inited + 32) = v11;
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_2F48A4(inited, a1, 0, 0);

  v17 = &MPModelPropertyTVShowCreatorName_ptr;
  if (a4)
  {
    v18 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v18 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v20 = sub_AB9260();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_AF4EC0;
      *(v21 + 32) = NSFontAttributeName;
      *(v21 + 64) = sub_89F60();
      *(v21 + 40) = v19;
      v22 = NSFontAttributeName;
      v23 = v19;
      sub_96EB8(v21);
      swift_setDeallocating();
      sub_12E1C(v21 + 32, &qword_DE6EE8, qword_AF8B50);
      type metadata accessor for Key(0);
      sub_3FB3C();
      isa = sub_AB8FD0().super.isa;
      v17 = &MPModelPropertyTVShowCreatorName_ptr;

      [v20 boundingRectWithSize:1 options:isa attributes:0 context:{a5 + -20.0, 1.79769313e308}];

      v25 = [objc_opt_self() defaultMetrics];
      sub_AB9EF0();
    }
  }

  if (a2)
  {
    v26 = a2;
  }

  else
  {
    v26 = UIFontTextStyleTitle2;
  }

  v27 = objc_allocWithZone(v17[310]);
  v28 = a2;
  v29 = [v27 initForTextStyle:v26];

  [v29 scaledValueForValue:52.0];
  [a1 displayScale];
  sub_AB3A00();

  return -1.0;
}

void *sub_4F0F3C(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication8MenuCell_titleCustomTextStyle];
  v6 = &v1[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication8MenuCell_detailText];
  v8 = *(v6 + 1);
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  v32 = v5;

  [v9 frame];
  Width = CGRectGetWidth(v33);
  v11 = &v2[OBJC_IVAR____TtC16MusicApplication8MenuCell_textComponents];
  swift_beginAccess();
  v12 = *(v11 + 4);
  v13 = [v4 preferredContentSizeCategory];
  LOBYTE(v2) = sub_ABA320();

  if ((v2 & 1) != 0 || v12 >= 2)
  {
    v31 = a1;
    v30 = objc_opt_self();
    v14 = [v30 preferredFontForTextStyle:UIFontTextStyleTitle2];
    v15 = sub_AB9260();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = NSFontAttributeName;
    v17 = sub_89F60();
    *(inited + 64) = v17;
    *(inited + 40) = v14;
    v29 = NSFontAttributeName;
    v18 = v14;
    sub_96EB8(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DE6EE8, qword_AF8B50);
    type metadata accessor for Key(0);
    sub_3FB3C();
    isa = sub_AB8FD0().super.isa;

    [v15 boundingRectWithSize:1 options:isa attributes:0 context:{Width, 1.79769313e308}];

    v20 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v20 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = [v30 preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v22 = sub_AB9260();
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_AF4EC0;
      *(v23 + 32) = v29;
      *(v23 + 64) = v17;
      *(v23 + 40) = v21;
      v24 = v29;
      v25 = v21;
      sub_96EB8(v23);
      swift_setDeallocating();
      sub_12E1C(v23 + 32, &qword_DE6EE8, qword_AF8B50);
      v26 = sub_AB8FD0().super.isa;

      [v22 boundingRectWithSize:1 options:v26 attributes:0 context:{Width, 1.79769313e308}];
    }

    v27 = [objc_opt_self() defaultMetrics];
    sub_AB9EF0();

    a1 = v31;
  }

  else
  {
    sub_4F0B1C(v4, v5, v7, v8, Width);
  }

  [a1 frame];
  [a1 setFrame:?];
  return a1;
}

void sub_4F13E0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v6 = sub_AB9260();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED8, qword_AF4EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = NSFontAttributeName;
  v8 = sub_89F60();
  *(inited + 64) = v8;
  *(inited + 40) = a3;
  v9 = NSFontAttributeName;
  v10 = a3;
  sub_96EB8(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DE6EE8, qword_AF8B50);
  type metadata accessor for Key(0);
  sub_3FB3C();
  isa = sub_AB8FD0().super.isa;

  [v6 boundingRectWithSize:1 options:isa attributes:0 context:{a4, 1.79769313e308}];
  v13 = v12;

  v14 = sub_AB9260();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_AF4EC0;
  *(v15 + 32) = v9;
  *(v15 + 64) = v8;
  *(v15 + 40) = v10;
  v16 = v9;
  v17 = v10;
  sub_96EB8(v15);
  swift_setDeallocating();
  sub_12E1C(v15 + 32, &qword_DE6EE8, qword_AF8B50);
  v18 = sub_AB8FD0().super.isa;

  [v14 boundingRectWithSize:1 options:v18 attributes:0 context:{a4, 1.79769313e308}];
  v20 = v19;

  v21 = ceil(ceil(v13) / ceil(v20));
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_4F1678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA560, &unk_AF8B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_4F16E8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      v9 = objc_allocWithZone(type metadata accessor for PlaylistsViewController(0));
      return sub_48DDCC(0, 0, 0, 0, 0);
    case 2:
      v2 = type metadata accessor for ArtistListViewController(0);
      goto LABEL_15;
    case 3:
      v5 = objc_allocWithZone(type metadata accessor for AlbumsViewController(0));
      v6 = 3;
      v7 = 0;
      v8 = 0;
      return sub_13B3E0(v6, 0, 3, v7, v8);
    case 4:
      v2 = type metadata accessor for SongsViewController();
      goto LABEL_15;
    case 5:
      v10 = Library.Menu.Identifier.name(for:)(2, 5);
      v12 = v11;
      v13 = objc_allocWithZone(type metadata accessor for PlaylistsViewController(0));
      return sub_48DDCC(&dword_0 + 1, 1, v10, v12, 0);
    case 6:
      if (UITraitCollection.isMediaPicker.getter(a1))
      {
        v14 = objc_allocWithZone(type metadata accessor for MediaPickerMusicVideosViewController(0));
        return sub_15AB74(0);
      }

      else
      {
        v20 = objc_allocWithZone(type metadata accessor for MusicVideosViewController(0));
        return sub_368EE4(0);
      }

    case 7:
      v2 = type metadata accessor for GenresViewController(0);
      goto LABEL_15;
    case 8:
      v16 = Library.Menu.Identifier.name(for:)(2, 8);
      v18 = v17;
      v19 = objc_allocWithZone(type metadata accessor for AlbumsViewController(0));
      v6 = 2;
      v7 = v16;
      v8 = v18;
      return sub_13B3E0(v6, 0, 3, v7, v8);
    case 9:
      v2 = type metadata accessor for ComposersViewController(0);
      goto LABEL_15;
    case 10:
      v2 = type metadata accessor for TVShowsAndMoviesViewController();
      goto LABEL_15;
    case 11:
      v3 = objc_allocWithZone(type metadata accessor for LibraryViewController());
      return sub_F480C();
    case 12:
      v2 = type metadata accessor for DownloadQueueViewController(0);
      goto LABEL_15;
    default:
      v2 = type metadata accessor for RecentlyAddedViewController(0);
LABEL_15:
      v15 = objc_allocWithZone(v2);

      return [v15 init];
  }
}

void sub_4F1928(double a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() blackColor];
  v6 = [v5 colorWithAlphaComponent:a1];

  *a3 = v6;
}

id sub_4F19A4(id result)
{
  v2 = *&v1[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView];
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }

    v3 = v2;
    v4 = sub_4F2C2C();
    [v1 insertSubview:v3 below:v4];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    [result removeFromSuperview];
  }

  return [v1 setNeedsLayout];
}

void sub_4F1A58(uint64_t result)
{
  v2 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_hideVideoArtworkViews;
  v3 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_hideVideoArtworkViews);
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_hideVideoArtworkViews) = result;
  if (v3 != (result & 1))
  {
    [*(*(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent) + 112) setHidden:?];
    v4 = sub_4F2EAC();
    [v4 setHidden:*(v1 + v2)];

    v5 = sub_4F3504();
    [v5 setHidden:*(v1 + v2)];

    v6 = sub_4F2C2C();
    [v6 setHidden:*(v1 + v2)];

    [*(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topBlurView) setHidden:*(v1 + v2)];

    sub_4F21F8();
  }
}

char *sub_4F1B34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v12 = sub_80104(v11);

  *&v5[v10] = v12;
  v13 = &v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_normalizedContentOffset];
  *v13 = 0;
  v13[1] = 0;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topPadding] = 0;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topSafeAreaInset] = 0;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView] = 0;
  v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_hideVideoArtworkViews] = 0;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha] = 0;
  v14 = &v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_videoLooperDidChangeHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_videoLooperDidFailHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_isPlayingDidChangeHandler];
  *v19 = 0;
  v19[1] = 0;
  v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_isVideoArtworkAllowed] = 0;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___overlayView] = 0;
  v20 = [objc_opt_self() effectWithBlurRadius:9.0];
  v21 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topBlurView;
  v22 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v20];

  *&v5[v21] = v22;
  v23 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topBlurMaskLayer;
  *&v5[v23] = sub_4F2D2C();
  *&v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient] = 0;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor] = 0;
  *&v5[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___legibilityGradient] = 0;
  v46.receiver = v5;
  v46.super_class = type metadata accessor for ParallaxView.ContentView();
  v24 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  [v24 setClipsToBounds:1];
  v25 = *&v24[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent];
  v26 = *(v25 + 144);
  *(v25 + 144) = 2;
  if (v26 == 2)
  {
  }

  else
  {
    v27 = *(v25 + 112);

    v28 = [v27 image];
    sub_788B8(v28);
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = (v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v31 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v32 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v30 = sub_13B168;
  v30[1] = v29;
  v33 = v24;

  sub_17654(v31, v32);

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = (v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  v36 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
  v37 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler + 8);
  *v35 = sub_4F4340;
  v35[1] = v34;

  sub_17654(v36, v37);

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v39 = (v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v40 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler);
  v41 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_videoLooperDidChangeHandler + 8);
  *v39 = sub_4F4348;
  v39[1] = v38;

  sub_17654(v40, v41);

  [v33 addSubview:*(v25 + 112)];
  [v33 addSubview:*&v33[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topBlurView]];
  v42 = sub_4F2EAC();
  [v33 addSubview:v42];

  v43 = sub_4F3504();
  [v33 addSubview:v43];

  v44 = sub_4F2C2C();
  [v33 addSubview:v44];

  sub_4F21F8();
  sub_4F23E4();

  return v33;
}

void sub_4F1FAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&Strong[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange];
    if (v3)
    {
      v4 = *&Strong[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange + 8];
      sub_307CC(*&Strong[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange], v4);

      v3();
      sub_17654(v3, v4);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_4F21F8();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_4F23E4();
  }
}

void sub_4F20A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_4F21F8();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_4F23E4();
  }
}

void sub_4F21F8()
{
  if (v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_hideVideoArtworkViews])
  {

    [v0 setBackgroundColor:0];
    return;
  }

  v1 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent;
  v2 = [*(*&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent] + 112) artworkCatalog];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  if ([v2 dataSource])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  v8 = [v3 existingColorAnalysisWithAlgorithm:1];

  if (v8)
  {
    v4 = [v8 backgroundColor];
    [v0 setBackgroundColor:v4];

    v5 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange];
    if (v5)
    {
      v6 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange + 8];

      v5([v8 isBackgroundColorLight] ^ 1);
      sub_17654(v5, v6);
    }

    goto LABEL_14;
  }

LABEL_13:
  v8 = *(*&v0[v1] + 112);
  v7 = [v8 backgroundColor];
  [v0 setBackgroundColor:v7];

LABEL_14:
}

void sub_4F23E4()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent) + 112) artworkCatalog];
  if (v1)
  {
    v2 = v1;
    v12 = [v1 imageAttachments];

    if (v12)
    {
      v3 = [v12 gradient];
      if (v3)
      {
        v4 = v3;
        sub_4F3078([v3 color]);
        [v4 y2];
        v6 = v5;
        v7 = [v4 y1];
        sub_4F2570(v7, v6, v8);
      }

      v9 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange);
      if (v9)
      {
        v10 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange + 8);
        sub_307CC(v9, v10);
        v11 = v12;
        v9(v12);

        sub_17654(v9, v10);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_4F2570(uint64_t a1, double a2, double a3)
{
  v6 = sub_4F2EAC();
  [v6 frame];
  v8 = v7;

  [*(*&v3[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent] + 112) frame];
  v10 = v9 * a3;
  v11 = v9 * a2;
  v12 = (v8 + v10 - v9) / v8;
  [v3 bounds];
  v14 = 1.0 - v11 / v13 - v12;
  v15 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient;
  v16 = *&v3[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient] + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration;
  swift_beginAccess();
  v17 = *(v16 + 48);
  v18 = *v16;
  v19 = *(v16 + 16);
  v33[2] = *(v16 + 32);
  v33[3] = v17;
  v33[0] = v18;
  v33[1] = v19;
  v27 = *v16;
  v24 = *(v16 + 24);
  v25 = *(v16 + 40);
  v26 = *(v16 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0, &qword_AF9000);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF85F0;
  *(v20 + 32) = v14;
  *(v20 + 40) = 1.0 - v12;
  sub_8A334(v33, &v34);

  v21 = *&v3[v15];
  v28 = v27;
  v29 = v20;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v22 = v21;
  sub_8A334(&v28, &v34);
  Gradient.View.typedConfiguration.setter(&v28);

  v34 = v27;
  v36 = v24;
  v37 = v25;
  v35 = v20;
  v38 = v26;
  return sub_25F66C(&v34);
}

void sub_4F2768(uint64_t a1, uint64_t a2)
{
  v37.receiver = v2;
  v37.super_class = type metadata accessor for ParallaxView.ContentView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  [v2 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v7 = 0.0;
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = 0.0;
  v45.size.height = 0.0;
  if (!CGRectEqualToRect(v38, v45))
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v8 = CGRectGetWidth(v39) * 1.33333333;
    v9 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent;
    v10 = *&v2[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent];

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v11 = CGRectGetWidth(v40);
    v13 = *(v10 + 80);
    v12 = *(v10 + 88);
    *(v10 + 80) = v11;
    *(v10 + 88) = v8;
    v14 = v2;
    sub_75614(v13, v12);

    v15 = *&v2[v9];

    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v16 = CGRectGetWidth(v41);
    v18 = *(v15 + 96);
    v17 = *(v15 + 104);
    *(v15 + 96) = v16;
    *(v15 + 104) = v8;
    sub_756F8(v18, v17);

    v19 = &v14[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_normalizedContentOffset];
    v20 = *&v14[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_normalizedContentOffset + 8];
    v21 = v20 > 0.0;
    if (v20 < 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = *&v14[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_normalizedContentOffset + 8];
    }

    v23 = v22 * 0.25;
    v24 = -v20;
    if (v21)
    {
      v24 = 0.0;
    }

    v25 = v8 + v24;
    v26 = sub_4F2C2C();
    [v26 setFrame:{x, y, width, height}];

    v27 = sub_4F3504();
    if (*(v19 + 1) >= 0.0)
    {
      v7 = *(v19 + 1);
    }

    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    [v27 setFrame:{0.0, v7, CGRectGetWidth(v42), 120.0}];

    v28 = sub_4F2EAC();
    [v28 setFrame:{0.0, 0.0, width, height}];

    sub_4F3274();
    v43.origin.x = x;
    v43.origin.y = v23;
    v43.size.width = width;
    v43.size.height = v25;
    v29 = CGRectGetHeight(v43);
    sub_4F2570(v30, 140.0 / v29, 0.0);

    sub_76B28(x, v23, width, v25);

    sub_4F21F8();
    sub_4F23E4();
    v31 = *&v14[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView];
    if (v31)
    {
      v32 = v31;
      [v32 sizeThatFits:{width, height}];
      v34 = v33;
      v36 = v35;
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      [v32 setFrame:{0.0, CGRectGetHeight(v44) - v36, v34, v36}];
    }
  }
}

double sub_4F2AA0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_isVideoArtworkAllowed);
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_isVideoArtworkAllowed) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent);
    v4 = *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed);
    *(v3 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) = a1 & 1;

    sub_76070(v4);
  }

  return result;
}

double sub_4F2B28()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent);
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

  return result;
}

id sub_4F2C2C()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___overlayView;
  v2 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___overlayView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___overlayView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (qword_DE6C58 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_E71898];
    [v4 setAlpha:*(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha)];
    [v4 setUserInteractionEnabled:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_4F2D2C()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_AF8820;
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 CGColor];
  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v1 + 56) = v5;
  *(v1 + 32) = v4;

  v7 = [v2 whiteColor];
  v8 = [v7 CGColor];
  *(v1 + 88) = v6;
  *(v1 + 64) = v8;

  v9 = [v2 clearColor];
  v10 = [v9 CGColor];
  *(v1 + 120) = v6;
  *(v1 + 96) = v10;

  isa = sub_AB9740().super.isa;

  [v0 setColors:isa];

  return v0;
}

_OWORD *sub_4F2EAC()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient;
  v2 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient];
  }

  else
  {
    v4 = v0;
    v5 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor];
    if (v5)
    {
      v6 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor];
    }

    else
    {
      v6 = [v0 backgroundColor];
      if (!v6)
      {
        v6 = [objc_opt_self() clearColor];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_AF7C50;
    v8 = v5;
    *(v7 + 32) = [v6 colorWithAlphaComponent:0.0];
    *(v7 + 40) = [v6 colorWithAlphaComponent:1.0];

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_AF82B0;
    v10 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v11) = 0.25;
    LODWORD(v12) = 1.0;
    LODWORD(v13) = 1.0;
    *(v9 + 32) = [v10 initWithControlPoints:v11 :0.0 :v12 :v13];
    static Gradient.vertical(colors:locations:interpolations:)(v7, 0, v9, v19);

    v14 = objc_allocWithZone(type metadata accessor for Gradient.View());
    v15 = Gradient.View.init(configuration:)(v19);
    v16 = *&v4[v1];
    *&v4[v1] = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

uint64_t sub_4F3078(void *a1)
{
  v2 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor;
  v3 = *&v1[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor];
  *&v1[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor] = a1;
  v4 = a1;

  v5 = sub_4F2EAC();
  v6 = (v5 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v27[2] = v6[2];
  v27[3] = v7;
  v27[0] = v9;
  v27[1] = v8;
  v10 = v9;
  v11 = v6[2];
  v23 = v6[1];
  v24 = v11;
  v25 = v6[3];
  sub_8A334(v27, v26);

  v12 = *&v1[v2];
  if (v12)
  {
    v13 = *&v1[v2];
  }

  else
  {
    v13 = [v1 backgroundColor];
    if (!v13)
    {
      v13 = [objc_opt_self() clearColor];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF7C50;
  v15 = v12;
  *(v14 + 32) = [v13 colorWithAlphaComponent:0.0];
  *(v14 + 40) = [v13 colorWithAlphaComponent:1.0];

  v16 = *&v1[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient];
  *&v26[0] = v10;
  *(&v26[0] + 1) = v14;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;
  v17 = v16;
  sub_8A334(v26, v19);
  Gradient.View.typedConfiguration.setter(v26);

  v19[0] = v10;
  v19[1] = v14;
  v20 = v23;
  v21 = v24;
  v22 = v25;
  return sub_25F66C(v19);
}

void sub_4F3274()
{
  if ((v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_hideVideoArtworkViews] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topPadding];
    v2 = [objc_opt_self() defaultMetrics];
    [v2 scaledValueForValue:56.0];
    v4 = v3;

    v5 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topBlurView];
    v6 = v1 / v4;
    [v5 alpha];
    if (v7 != v6)
    {
      [v5 setAlpha:v6];
      [v0 bounds];
      [v5 setFrame:{0.0, 0.0, CGRectGetWidth(v22), *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topSafeAreaInset] + 60.0}];
      type metadata accessor for CGRect(0);
      v8 = *&v0[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topBlurMaskLayer];
      [v8 frame];
      [v5 bounds];
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = v12;
      if (sub_AB38D0())
      {
        [v5 frame];
        CGRectGetHeight(v23);
        isa = sub_AB3A30().super.super.isa;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_AF82E0;
        sub_F7868();
        *(v14 + 32) = sub_ABA760(0.0);
        *(v14 + 40) = isa;
        v15 = isa;
        *(v14 + 48) = sub_ABA760(1.0);
        v16 = sub_AB9740().super.isa;

        [v8 setLocations:v16];

        [v5 bounds];
        [v8 setFrame:?];
        v17 = [v5 layer];
        [v17 setMask:v8];
      }
    }
  }
}

_OWORD *sub_4F3504()
{
  v1 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___legibilityGradient;
  v2 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___legibilityGradient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___legibilityGradient);
  }

  else
  {
    v4 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_AF7C50;
    if (qword_DE6DA8 != -1)
    {
      swift_once();
    }

    v6 = qword_E0C788;
    *(v5 + 32) = qword_E0C788;
    v7 = qword_DE6DB0;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_E0C790;
    *(v5 + 40) = qword_E0C790;
    v10 = v9;
    static Gradient.vertical(colors:locations:interpolations:)(v5, 0, 0, v16);

    v11 = objc_allocWithZone(type metadata accessor for Gradient.View());
    v12 = Gradient.View.init(configuration:)(v16);
    v13 = *(v4 + v1);
    *(v4 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void *sub_4F378C()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent) + 128);
  v2 = v1;
  return v1;
}

void *sub_4F37C4()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent) + 120);
  v2 = v1;
  return v1;
}

double sub_4F38B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void *a7, void (*a8)(uint64_t, uint64_t))
{
  v14 = *v8;
  v15 = (v14 + *a5);
  v16 = *v15;
  v17 = v15[1];
  *v15 = a1;
  v15[1] = a2;
  a6(v16, v17, a3, a4);
  v18 = (*(v14 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent) + *a7);
  v19 = *v18;
  v20 = v18[1];
  *v18 = a1;
  v18[1] = a2;
  a8(a1, a2);

  (a6)(v19, v20);

  return result;
}

char *sub_4F39B4(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView;
  type metadata accessor for ParallaxView.ContentView();
  *&v6[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = &v6[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset];
  *v12 = 0;
  v12[1] = 0;
  *&v6[OBJC_IVAR____TtC16MusicApplication12ParallaxView_topPadding] = 0;
  *&v6[OBJC_IVAR____TtC16MusicApplication12ParallaxView_topSafeAreaInset] = 0;
  v6[OBJC_IVAR____TtC16MusicApplication12ParallaxView_hideVideoBackground] = 0;
  *&v6[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight] = 0;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for ParallaxView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a3, a4, a5, a6);
  [v13 addSubview:*&v13[OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView]];
  return v13;
}

id sub_4F3B4C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView;
  [*&v3[OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView] frame];
  v11.x = a2;
  v11.y = a3;
  if (!CGRectContainsPoint(v12, v11))
  {
    return 0;
  }

  v8 = *&v3[v7];
  [v3 convertPoint:v8 toCoordinateSpace:{a2, a3}];
  v9 = [v8 hitTest:a1 withEvent:?];

  return v9;
}

void sub_4F3C80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView];
  v4 = &v0[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset];
  v5 = *&v0[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset];
  v6 = *&v0[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset + 8];
  v7 = &v3[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_normalizedContentOffset];
  v8 = *&v3[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_normalizedContentOffset];
  v9 = *&v3[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_normalizedContentOffset + 8];
  *v7 = v5;
  *(v7 + 1) = v6;
  type metadata accessor for CGPoint(0);
  v20 = v8;
  v21 = v9;
  v18 = v5;
  v19 = v6;
  v10 = v3;
  if (sub_AB38D0())
  {
    [v10 setNeedsLayout];
  }

  v11 = *&v0[v2];
  *&v11[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topPadding] = *&v0[OBJC_IVAR____TtC16MusicApplication12ParallaxView_topPadding];
  *&v11[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topSafeAreaInset] = *&v0[OBJC_IVAR____TtC16MusicApplication12ParallaxView_topSafeAreaInset];
  v12 = v4[1];
  if (v12 >= -0.0)
  {
    v13 = -v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v11;
  [v1 bounds];
  Width = CGRectGetWidth(v22);
  v16 = v4[1];
  if (v16 > 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = -v16;
  }

  [v14 setFrame:{0.0, v13, Width, *&v1[OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight] + v17, v18, v19, v20, v21}];
}

id sub_4F3E08(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_4F3EAC()
{
  result = qword_E0C8B8;
  if (!qword_E0C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C8B8);
  }

  return result;
}

uint64_t sub_4F3F00(uint64_t a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for ParallaxView.ContentView();
  objc_msgSendSuper2(&v24, "setBackgroundColor:", a1);
  v3 = sub_4F2EAC();
  v4 = (v3 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[3];
  v7 = *v4;
  v6 = v4[1];
  v26[2] = v4[2];
  v26[3] = v5;
  v26[0] = v7;
  v26[1] = v6;
  v8 = v7;
  v9 = v4[2];
  v21 = v4[1];
  v22 = v9;
  v23 = v4[3];
  sub_8A334(v26, v25);

  v10 = *&v1[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor];
  if (v10)
  {
    v11 = *&v1[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor];
  }

  else
  {
    v11 = [v1 backgroundColor];
    if (!v11)
    {
      v11 = [objc_opt_self() clearColor];
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  v13 = v10;
  *(v12 + 32) = [v11 colorWithAlphaComponent:0.0];
  *(v12 + 40) = [v11 colorWithAlphaComponent:1.0];

  v14 = *&v1[OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient];
  *&v25[0] = v8;
  *(&v25[0] + 1) = v12;
  v25[1] = v21;
  v25[2] = v22;
  v25[3] = v23;
  v15 = v14;
  sub_8A334(v25, v17);
  Gradient.View.typedConfiguration.setter(v25);

  v17[0] = v8;
  v17[1] = v12;
  v18 = v21;
  v19 = v22;
  v20 = v23;
  return sub_25F66C(v17);
}

void sub_4F40FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_backgroundArtworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v4 = sub_80104(v3);

  *(v1 + v2) = v4;
  v5 = (v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_normalizedContentOffset);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topPadding) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topSafeAreaInset) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_controlsView) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_hideVideoArtworkViews) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_overlayAlpha) = 0;
  v6 = (v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageDidChange);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkProminentColorDidChange);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_artworkImageAttachmentsDidChange);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_videoLooperDidChangeHandler);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_videoLooperDidFailHandler);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_isPlayingDidChangeHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_isVideoArtworkAllowed) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___overlayView) = 0;
  v12 = [objc_opt_self() effectWithBlurRadius:9.0];
  v13 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topBlurView;
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v12];

  *(v1 + v13) = v14;
  v15 = OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_topBlurMaskLayer;
  *(v1 + v15) = sub_4F2D2C();
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___bottomGradient) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView_gradientColor) = 0;
  *(v1 + OBJC_IVAR____TtCC16MusicApplication12ParallaxView11ContentView____lazy_storage___legibilityGradient) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_4F4308()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_4F4350()
{
  v1 = OBJC_IVAR____TtC16MusicApplication12ParallaxView_contentView;
  type metadata accessor for ParallaxView.ContentView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_topPadding) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_topSafeAreaInset) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_hideVideoBackground) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12ParallaxView_preferredContentViewHeight) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_4F4414(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption) == 1)
  {
    if (a1)
    {
      sub_AB91E0();
      sub_AB3550();
      v21 = sub_AB9320();
      v6 = v5;
      v7 = sub_4F5564(*(v2 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType));
      v9 = v8;
    }

    else
    {
      v7 = sub_4F572C(*(v2 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType));
      v9 = v16;
      v21 = 0;
      v6 = 0;
    }

    sub_AB91E0();
    sub_AB3550();
    v17 = sub_AB9320();
    v19 = v18;
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v23 = v21;
    *(&v23 + 1) = v6;
    *&v24 = v7;
    *(&v24 + 1) = v9;
    *&v25 = 0;
    *(&v25 + 1) = v17;
    *&v26 = v19;
    *(&v26 + 1) = 2;
    *&v27 = sub_4F6EEC;
    *(&v27 + 1) = v20;
    v28 = 0;
    v29[0] = v21;
    v29[1] = v6;
    v29[2] = v7;
    v29[3] = v9;
    v29[4] = 0;
    v29[5] = v17;
    v29[6] = v19;
    v29[7] = 2;
    v29[8] = sub_4F6EEC;
    v29[9] = v20;
    v29[10] = 0;
    sub_576EC(&v23, &v22);
    sub_57748(v29);
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v10 = v28;
  }

  else
  {
    v10 = 0;
    v11 = xmmword_AF82C0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  *(a2 + 80) = v10;
}

objc_class *sub_4F46B0()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem);
  }

  else
  {
    v21 = sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
    sub_AB91E0();
    sub_AB3550();
    v4 = sub_AB9320();
    v6 = v5;
    v7 = sub_AB9260();
    v8 = [objc_opt_self() systemImageNamed:{v7, v21}];

    sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v10 = v0;
    v11 = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, 0, 0, sub_4F6EE4, v9);

    v12 = AccessibilityIdentifier.libraryFilterOptionsButton.unsafeMutableAddressor();
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];

    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v4, v6, v8, 0, v11, 1, v13, v14, v15, v16);
    v18 = *(v10 + v1);
    *(v10 + v1) = v17;
    v3 = v17;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

_BYTE *sub_4F4944(uint64_t a1)
{
  v2 = a1;
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController____lazy_storage___filterBarButtonItem] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterBinding] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType] = v2;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v18, "init");
  v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption] = sub_4F4B08();
  type metadata accessor for Whitetail.Binding();
  v17[1] = 0x8000000000B68FB0;
  v19._countAndFlagsBits = sub_4F5F90(v2);
  sub_AB94A0(v19);

  UIScreen.Dimensions.size.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v17[3] = &type metadata for UserDefaultsKeyValueTrigger;
  v17[4] = &protocol witness table for UserDefaultsKeyValueTrigger;
  v14 = swift_allocObject();
  v17[0] = v14;
  v14[2] = v7;
  v14[3] = v9;
  v14[4] = v11;
  v14[5] = v13;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  *&v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterBinding] = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v17, 1, sub_4F6F34, v15);

  return v5;
}

BOOL sub_4F4B08()
{
  v1 = [objc_opt_self() standardUserDefaults];
  *&v8 = 0xD00000000000001FLL;
  *(&v8 + 1) = 0x8000000000B68FB0;
  v11._countAndFlagsBits = sub_4F5F90(*(v0 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType));
  sub_AB94A0(v11);

  v2 = sub_AB9260();

  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v4._rawValue = &off_CEFAC0;
      v5 = sub_ABB140(v4, v7);

      return v5 == 1;
    }
  }

  else
  {
    sub_9BC10(v10);
  }

  return 0;
}

void sub_4F4C6C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_4F4B08();
    v4 = v2[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption];
    v2[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption] = v3;
    sub_4F5948(v4);
  }
}

void sub_4F4CDC(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType);
  sub_4F4F74(*a1, v5);
  sub_4F51B8(v4, v5);
  if (v4)
  {
    v6 = 0x657469726F766166;
  }

  else
  {
    v6 = 7105633;
  }

  if (v4)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (*(a2 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption))
  {
    v8 = 0x657469726F766166;
  }

  else
  {
    v8 = 7105633;
  }

  if (*(a2 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption))
  {
    v9 = 0xE900000000000064;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {

    v12 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();

    v12 = v11 & 1;
  }

  sub_13C80(0, &unk_E05310, UIAction_ptr);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v4;
  v21 = v14;
  v15 = sub_ABA7D0();
  sub_ABAD90(23);

  sub_36A48();
  v16 = sub_ABAA60();
  v18 = v17;

  v23._countAndFlagsBits = v16;
  v23._object = v18;
  sub_AB94A0(v23);

  v19._countAndFlagsBits = 0xD000000000000015;
  v19._object = 0x8000000000B68F90;
  AccessibilityIdentifier.init(name:)(v19);

  v20 = sub_AB9260();

  [v15 setAccessibilityIdentifier:{v20, 0, 0, v12, sub_4F6ED8, v21}];

  *a3 = v15;
}

uint64_t sub_4F4F74(char a1, unsigned __int8 a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

id sub_4F51B8(char a1, unsigned __int8 a2)
{
  v2 = sub_AB9260();
  v3 = [objc_opt_self() systemImageNamed:v2];

  return v3;
}

void sub_4F5324(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption);
    v5[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption] = a3 & 1;
    sub_4F5948(v6);
  }
}

void *sub_4F5390(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v3 = Strong;
    v11 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v9 = 0;
    sub_4F4CDC(&v9, v3, &v10);
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    v9 = 1;
    sub_4F4CDC(&v9, v3, &v10);
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14.value._countAndFlagsBits = 0;
    v14.value._object = 0;
    v12.value.super.isa = 0;
    v12.is_nil = 0;
    v4.value = 0;
    isa = sub_ABA5B0(v13, v14, v12, v4, 0xFFFFFFFFFFFFFFFFLL, v11, v8).super.super.isa;

    v6 = [(objc_class *)isa children];
    sub_13C80(0, &qword_DEAB30, UIMenuElement_ptr);
    v2 = sub_AB9760();
  }

  return v2;
}

uint64_t sub_4F5564(unsigned __int8 a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

uint64_t sub_4F572C(unsigned __int8 a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

void sub_4F58E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption);
    v2[OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption] = 0;
    sub_4F5948(v3);
  }
}

void sub_4F5948(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption;
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 0x657469726F766166;
  }

  else
  {
    v5 = 7105633;
  }

  if (v4)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption))
  {
    v7 = 0x657469726F766166;
  }

  else
  {
    v7 = 7105633;
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOption))
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_ABB3C0();

    if ((v10 & 1) == 0)
    {
      sub_4F5B10(*(v2 + v3));
      v11 = *(v2 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange);
      if (v11)
      {
        v12 = *(v2 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_filterOptionDidChange + 8);
        v13 = *(v2 + v3);

        v11(v13);
        sub_3FC30(v11, v12);
      }

      v16 = sub_4F46B0();
      if (*(v2 + v3))
      {
        v14 = sub_ABB3C0();

        v15 = v14 ^ 1;
      }

      else
      {

        v15 = 0;
      }

      [(objc_class *)v16 setSelected:v15 & 1];
    }
  }
}

void sub_4F5B10(char a1)
{
  v3 = sub_4F4B08();
  if (a1)
  {
    v4 = 0x657469726F766166;
  }

  else
  {
    v4 = 7105633;
  }

  if (a1)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (v3)
  {
    v6 = 0x657469726F766166;
  }

  else
  {
    v6 = 7105633;
  }

  if (v3)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v8 = sub_ABB3C0();

    if ((v8 & 1) == 0)
    {
      v9 = [objc_opt_self() standardUserDefaults];
      v10 = sub_AB9260();

      v13._countAndFlagsBits = sub_4F5F90(*(v1 + OBJC_IVAR____TtC16MusicApplication30LibraryFilterOptionsController_contentType));
      sub_AB94A0(v13);

      v11 = sub_AB9260();

      [v9 setValue:v10 forKey:v11];
    }
  }
}

uint64_t sub_4F5CD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657469726F766166;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657469726F766166;
  }

  else
  {
    v5 = 7105633;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_4F5D7C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_4F5DFC(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_4F5E68(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_4F5EE4(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CEFAC0;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_4F5F44(uint64_t *a1@<X8>)
{
  v2 = 7105633;
  if (*v1)
  {
    v2 = 0x657469726F766166;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_4F5F90(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x646956636973756DLL;
    v6 = 0x7473696C79616C70;
    if (a1 != 8)
    {
      v6 = 0x73676E6F73;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7365726E6567;
    if (a1 != 5)
    {
      v7 = 0x59726F466564616DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736D75626C61;
    v2 = 0x73747369747261;
    v3 = 0x74616C69706D6F63;
    if (a1 != 3)
    {
      v3 = 0x7265736F706D6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6544747369747261;
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
}

uint64_t sub_4F60E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_4F5F90(*a1);
  v5 = v4;
  if (v3 == sub_4F5F90(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_4F616C()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_4F5F90(v1);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_4F61D0(uint64_t a1)
{
  sub_4F5F90(*v1);
  sub_AB93F0();

  return result;
}

Swift::Int sub_4F6224(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_4F5F90(v2);
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_4F6284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4F6710(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_4F62B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4F5F90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryFilterOptionsController.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryFilterOptionsController.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_4F65FC()
{
  result = qword_E0C910;
  if (!qword_E0C910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0C918, qword_B13A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C910);
  }

  return result;
}

unint64_t sub_4F6664()
{
  result = qword_E0C920;
  if (!qword_E0C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C920);
  }

  return result;
}

unint64_t sub_4F66BC()
{
  result = qword_E0C928;
  if (!qword_E0C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C928);
  }

  return result;
}

unint64_t sub_4F6710(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF1DA8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_4F675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0C930, &qword_B13BB8);
  sub_4F6D9C(&qword_E0C938, sub_4F6D48, &protocol conformance descriptor for <> Set<A>);
  sub_4F6D9C(&qword_E0C948, sub_4F6E14, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v6, v21);

  v7 = v21[0];
  if (v21[0])
  {
    if (*(v21[0] + 16) && (sub_ABB5C0(), sub_AB93F0(), v8 = sub_ABB610(), v9 = -1 << *(v7 + 32), v10 = v8 & ~v9, ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
    {
      v11 = ~v9;
      while (!*(*(v7 + 48) + v10) || *(*(v7 + 48) + v10) == 2)
      {
        LOBYTE(v12) = sub_ABB3C0();

        if ((v12 & 1) == 0)
        {
          v10 = (v10 + 1) & v11;
          if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
          {
            continue;
          }
        }

        goto LABEL_11;
      }

      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    goto LABEL_11;
  }

  v13 = [v4 standardUserDefaults];
  v14 = sub_AB9260();
  v15 = [v13 stringForKey:v14];

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = sub_AB92A0();
  v18 = v17;

  v19._rawValue = &off_CEFAC0;
  v22._countAndFlagsBits = v16;
  v22._object = v18;
  v12 = sub_ABB140(v19, v22);

  if (v12 != 1)
  {
    if (!v12)
    {
      v12 = sub_ABB3C0();
      goto LABEL_11;
    }

LABEL_16:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

LABEL_11:

  return v12 & 1;
}

void sub_4F6A84(char a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = &selRef_performWithResponseHandler_;
  v8 = [v6 standardUserDefaults];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0C930, &qword_B13BB8);
  v10 = sub_4F6D9C(&qword_E0C938, sub_4F6D48, &protocol conformance descriptor for <> Set<A>);
  v11 = sub_4F6D9C(&qword_E0C948, sub_4F6E14, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v9, v24);

  if (v24[0])
  {
    v12 = v24[0];
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  v25 = v12;
  if (a1)
  {
    v20 = v10;
    v21 = v6;
    v22 = a2;
    v23 = a3;
    sub_ABB5C0();
    sub_AB93F0();
    v13 = sub_ABB610();
    v14 = -1 << v12[32];
    v15 = v13 & ~v14;
    if ((*&v12[((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v15))
    {
      v16 = ~v14;
      while (!*(*(v12 + 6) + v15) || *(*(v12 + 6) + v15) == 2)
      {
        v17 = sub_ABB3C0();

        if (v17)
        {
          goto LABEL_12;
        }

        v15 = (v15 + 1) & v16;
        if (((*&v12[((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v15) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = v12;
      sub_24D7C(1, v15, isUniquelyReferenced_nonNull_native);
      v12 = v24[0];
    }

LABEL_12:
    a3 = v23;
    v10 = v20;
    v6 = v21;
    v7 = &selRef_performWithResponseHandler_;
  }

  else
  {
    sub_2F10F8(1u);
    v12 = v25;
  }

  v19 = [v6 v7[213]];
  v24[4] = v10;
  v24[5] = v11;
  v24[3] = v9;
  v24[0] = v12;
  NSUserDefaults.encodeValue(_:forKey:)(v24, a2, a3);
  __swift_destroy_boxed_opaque_existential_0(v24);
}

unint64_t sub_4F6D48()
{
  result = qword_E0C940;
  if (!qword_E0C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C940);
  }

  return result;
}

uint64_t sub_4F6D9C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0C930, &qword_B13BB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4F6E14()
{
  result = qword_E0C950;
  if (!qword_E0C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0C950);
  }

  return result;
}

uint64_t sub_4F6E68()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4F6EA0()
{

  return swift_deallocObject();
}

uint64_t sub_4F6EF4()
{

  return swift_deallocObject();
}

char *sub_4F6F3C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = [objc_allocWithZone(AMSUIBubbleTipViewController) initWithRequest:a1];
  *&v1[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_inlineBubbleTipViewController] = v5;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  v7 = OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_inlineBubbleTipViewController;
  v8 = *&v6[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_inlineBubbleTipViewController];
  v9 = v6;
  [v8 setDelegate:v9];
  v10 = [*&v6[v7] loadPromise];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v15[4] = sub_4F88E0;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1B5EB4;
  v15[3] = &block_descriptor_162;
  v12 = _Block_copy(v15);
  v13 = a1;

  [v10 addSuccessBlock:v12];
  _Block_release(v12);

  return v9;
}

void sub_4F70D4(void *a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6DB8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_E0C960);
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_AB4BA0();
  v9 = sub_AB9F10();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, "🫧 Successfully got a request, displaying the inline bubble tip for request: %@", v10, 0xCu);
    sub_12E1C(v11, &qword_DF9B20, &unk_AF8C60);
  }

  (*(v3 + 8))(v5, v2);
}

double sub_4F7330()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v2 = sub_4D3C64();
  v3 = &v2[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v4 = *&v2[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v5 = *&v2[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
  v6 = v2[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
  *v3 = 0;
  *(v3 + 4) = 256;
  v3[10] = 0;
  sub_4DBD3C(v4, v5 | (v6 << 16));

  UIViewController.add(_:)(*&v1[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_inlineBubbleTipViewController]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF37F0, qword_B01640);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF4EC0;
  *(v7 + 32) = sub_AB5330();
  *(v7 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_ABA080();
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_4F7444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_4F74DC, v6, v5);
}

uint64_t sub_4F74DC()
{
  sub_4F7544();

  v1 = *(v0 + 8);

  return v1();
}

id sub_4F7544()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  Width = CGRectGetWidth(v34);
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = result;
  [result layoutMargins];

  sub_AB9E60();
  v14 = v13;
  v15 = *&v0[OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_inlineBubbleTipViewController];
  result = [v15 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
  [result setNeedsLayout];

  result = [v15 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = result;
  [result sizeThatFits:{Width - v14, 1.79769313e308}];
  v19 = v18;
  v21 = v20;

  result = [v15 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = result;
  [result layoutMargins];
  v25 = v24;

  if (qword_DE6DC0 != -1)
  {
    swift_once();
  }

  [v22 setFrame:{v25, *&qword_E0C978, v19, v21}];

  result = [v0 view];
  if (!result)
  {
    goto LABEL_22;
  }

  v26 = result;
  [result layoutMargins];
  v28 = v27;

  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v29 = result;
  [result layoutMargins];
  v31 = v30;

  if (qword_DE6DC8 != -1)
  {
    swift_once();
  }

  v32 = v21 + *&qword_E0C980;

  return [v0 setPreferredContentSize:{v19 + v28 + v31, v32}];
}

uint64_t sub_4F7A54()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E0C960);
  __swift_project_value_buffer(v0, qword_E0C960);
  return static Logger.music(_:)(0x7542656E696C6E49, 0xEF706954656C6262);
}

double sub_4F7B0C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v3 = &v9 - v2;
  v4 = sub_AB9990();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_AB9940();
  v5 = a1;
  v6 = sub_AB9930();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_DBDC8(0, 0, v3, &unk_B13BE0, v7);

  return result;
}

void sub_4F7C34(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v62 - v3;
  v4 = sub_AB31C0();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin();
  v64 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v62 - v6;
  v7 = sub_AB4BC0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v62 - v10;
  __chkstk_darwin();
  v12 = &v62 - v11;
  __chkstk_darwin();
  v14 = &v62 - v13;
  if (qword_DE6DB8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_E0C960);
  v72 = *(v8 + 16);
  (v72)(v14, v15, v7);
  v16 = sub_AB4BA0();
  v17 = sub_AB9F10();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "🫧 Selected a CTA", v18, 2u);
  }

  v19 = *(v8 + 8);
  v19(v14, v7);

  v20 = [a1 originalRequest];
  v21 = [a1 selectedActionIdentifier];
  if (!v21)
  {
    sub_AB92A0();
    v21 = sub_AB9260();
  }

  isa = [v20 locateActionWithIdentifier:v21];

  if (!isa)
  {
    v66 = v19;
    v29 = v69;
    (*(v70 + 56))(v69, 1, 1, v71);
LABEL_18:
    sub_12E1C(v29, &unk_DF2AE0, &qword_AFC930);
    v39 = v68;
    (v72)(v68, v15, v7);
    v40 = sub_AB4BA0();
    v41 = sub_AB9F10();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "🫧 Action not supported", v42, 2u);

      v66(v39, v7);
      return;
    }

    v66(v39, v7);
    goto LABEL_25;
  }

  if ([(objc_class *)isa style]== &dword_0 + 2)
  {
    (v72)(v12, v15, v7);
    v23 = sub_AB4BA0();
    v24 = sub_AB9F10();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "🫧 Removing bubble tip", v25, 2u);
    }

    v19(v12, v7);

    v26 = *(v66 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed);
    if (v26)
    {
      v27 = *(v66 + OBJC_IVAR____TtCE16MusicApplicationO9MusicCore15UnifiedMessages15InlineBubbleTip_handleUserDismissed + 8);

      v26(v28);

      sub_17654(v26, v27);
      return;
    }

    goto LABEL_26;
  }

  v66 = v19;
  v62 = isa;
  v30 = [(objc_class *)v62 deepLink];
  if (v30)
  {
    v31 = v63;
    v32 = v30;
    sub_AB3150();

    v33 = 0;
    v34 = v71;
    v35 = v67;
  }

  else
  {
    v33 = 1;
    v34 = v71;
    v35 = v67;
    v31 = v63;
  }

  v36 = v64;
  v37 = v70;
  (*(v70 + 56))(v31, v33, 1, v34);
  v38 = v31;
  v29 = v69;
  sub_F78B4(v38, v69);

  if ((*(v37 + 48))(v29, 1, v34) == 1)
  {
    goto LABEL_18;
  }

  v43 = *(v37 + 32);
  v44 = v37;
  v45 = v65;
  v43(v65, v29, v34);
  (v72)(v35, v15, v7);
  v46 = v36;
  (*(v44 + 16))(v36, v45, v34);
  v47 = sub_AB4BA0();
  v48 = sub_AB9F10();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 136315138;
    v72 = v47;
    v73 = v50;
    v51 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    v52 = v46;
    v54 = v53;
    v55 = *(v44 + 8);
    v55(v52, v71);
    v56 = sub_425E68(v51, v54, &v73);

    *(v49 + 4) = v56;
    v47 = v72;
    _os_log_impl(&dword_0, v72, v48, "🫧 Opening URL: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);

    v34 = v71;

    v57 = v67;
  }

  else
  {
    v55 = *(v44 + 8);
    v55(v46, v34);
    v57 = v35;
  }

  v66(v57, v7);

  v58 = [objc_opt_self() sharedApplication];
  v59 = v65;
  sub_AB30F0(v60);
  v40 = v61;
  sub_9A440(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_4F875C();
  isa = sub_AB8FD0().super.isa;

  [v58 openURL:v40 options:isa completionHandler:0];

  v55(v59, v34);
LABEL_25:

LABEL_26:
}

void sub_4F8504(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6DB8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_E0C960);
  (*(v3 + 16))(v5, v6, v2);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v11 = sub_ABB520();
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v16[5] = v11;
    v16[6] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
    v13 = sub_AB9350();
    v15 = sub_425E68(v13, v14, &v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_0, v7, v8, "🫧 Failed to show inline bubble tip: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  (*(v3 + 8))(v5, v2);
}

unint64_t sub_4F875C()
{
  result = qword_E0CA20;
  if (!qword_E0CA20)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0CA20);
  }

  return result;
}

uint64_t sub_4F87B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_4F87F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_4F7444(a1, v4, v5, v6);
}

uint64_t sub_4F88A8()
{

  return swift_deallocObject();
}

double block_copy_helper_162(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_4F8900()
{
  v0 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);

  return sub_2BAFF8(v0);
}

id sub_4F893C()
{
  v0 = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);

  return sub_2BAFF8(v0);
}

id sub_4FA74C()
{
  result = sub_4FA76C();
  qword_E71B20 = result;
  return result;
}

id sub_4FA76C()
{
  v0 = sub_AB31C0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160) - 8);
  __chkstk_darwin();
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v50 - v5;
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  v56 = sub_68E1F8(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC38, &unk_B16C50);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v58 = *(v3 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF8820;
  v60 = v13;
  v53 = v14;
  v15 = v14 + v13;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = [v17 resourceURL];

  if (v18)
  {
    sub_AB3150();

    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 0;
  }

  else
  {
    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 1;
  }

  v59 = v19;
  v19(v20, v21, 1, v0);
  v22 = v1;
  sub_4FE54C(v12, v15);
  type metadata accessor for BundleFinder();
  v23 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
  v24 = [v23 resourceURL];

  if (v24)
  {
    sub_AB3150();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v55;
  v51 = v22;
  v27 = v10;
  v28 = v10;
  v29 = v59;
  v59(v27, v25, 1, v0);
  v30 = v58;
  sub_4FE54C(v28, v15 + v58);
  v31 = [v16 mainBundle];
  v32 = [v31 bundleURL];

  sub_AB3150();
  v57 = (v22 + 7);
  v29(v15 + 2 * v30, 0, 1, v0);
  v61 = v56;
  sub_510C04(v53);
  v33 = v61;
  v34 = v61[2];
  if (v34)
  {
    v35 = 0;
    v36 = v60 + v61;
    v60 = (v51 + 6);
    v56 = (v51 + 1);
    v51 += 4;
    v52 = "AC12BundleFinder";
    v53 = v34;
    while (v35 < v33[2])
    {
      sub_15F84(v36, v6, &qword_E0DC30, &unk_B15160);
      v37 = *v60;
      if ((*v60)(v6, 1, v0) == 1)
      {
        sub_4FE5BC(v6);
        v38 = 1;
      }

      else
      {
        sub_AB3120();
        (*v56)(v6, v0);
        v38 = 0;
      }

      v59(v8, v38, 1, v0);
      sub_15F84(v8, v26, &qword_E0DC30, &unk_B15160);
      if (v37(v26, 1, v0) == 1)
      {
        sub_4FE5BC(v8);
      }

      else
      {
        v39 = v33;
        v40 = v8;
        v41 = v6;
        v42 = v54;
        (*v51)(v54, v26, v0);
        v43 = objc_allocWithZone(NSBundle);
        sub_AB30F0(v44);
        v46 = v45;
        v47 = [v43 initWithURL:v45];

        v26 = v55;
        v48 = v42;
        v6 = v41;
        v8 = v40;
        v33 = v39;
        v34 = v53;
        (*v56)(v48, v0);
        sub_4FE5BC(v8);
        if (v47)
        {

          return v47;
        }
      }

      ++v35;
      v36 += v58;
      if (v34 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

double variable initialization expression of AnyAction.displayConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_AF82C0;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

unint64_t variable initialization expression of ArtworkVideoReportingController.signpostsForIndex(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = sub_AB97C0();
  v5 = sub_5B8BEC(v4, a1, &type metadata for ComponentRenderEventSignposts, a2);

  return v5;
}

uint64_t sub_4FAEFC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() standardUserDefaults];
  return v2;
}

id variable initialization expression of MetricsReportingController.carFocusedMetricsController()
{
  v0 = objc_allocWithZone(SSMetricsController);

  return [v0 init];
}

uint64_t variable initialization expression of MetricsReportingController.carMetricsReporter()
{
  type metadata accessor for CarNowPlayingMetrics.Reporter();

  return swift_allocObject();
}

double variable initialization expression of ApplicationCapabilities.ratingWarning@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

id variable initialization expression of ApplicationCapabilities.subscriptionStatus()
{
  v0 = [objc_opt_self() sharedController];
  v1 = [v0 musicSubscriptionStatus];

  return v1;
}

uint64_t variable initialization expression of ApplicationCapabilities.Controller.storeBag()
{
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0, &qword_B13CD0);
  UnfairLock.locked<A>(_:)(sub_4FD6B0);
  return v1;
}

id variable initialization expression of BackgroundRefreshController.cloudClient()
{
  v0 = objc_allocWithZone(ICCloudClient);

  return [v0 init];
}

uint64_t variable initialization expression of BagProvider.durableObservers()
{
  v0 = type metadata accessor for BagProvider.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

uint64_t variable initialization expression of BagProvider.logger()
{
  if (qword_E0CD70 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.musicBag;

  return sub_AB4BD0();
}

id variable initialization expression of BagProvider.retry()
{
  v0 = objc_allocWithZone(type metadata accessor for BagProvider.Retry());

  return [v0 init];
}

uint64_t variable initialization expression of Gliss.Coordinator.queuedItem@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 56);

  return v6(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of Gliss.Transition.animations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata1();

  return sub_AB97C0();
}

uint64_t variable initialization expression of Gliss.Transition.completions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata2();

  return sub_AB97C0();
}

double variable initialization expression of Gliss.Transition.gestureState@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver._hasDisregardedBanner()
{
  v4 = 2;
  v3[0] = 0xD000000000000014;
  v3[1] = 0x8000000000B6A140;
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_4FD6CC();
  UserDefault.init(wrappedValue:defaults:key:)(&v4, v0, v3, &type metadata for String, &type metadata for Bool, v1, &v5);
  return v5;
}

double variable initialization expression of CloudLibrary.StatusObserver.capabilitiesController()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  return result;
}

void variable initialization expression of MusicLibrary.ActionableStateController.itemStateSubscriptions()
{
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {

    sub_5080B8(_swiftEmptyArrayStorage);
  }
}

id variable initialization expression of Library.Menu.Request.librarySource()
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_4FB694()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v1 = result;
    v2 = [result hasProperNetworkConditionsToShowCloudMedia];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of PlaybackTimeObserver.durationSnapshot@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  return result;
}

id variable initialization expression of Player._path()
{
  v0 = [objc_opt_self() systemRoute];
  v1 = [v0 isDeviceRoute];
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = v2;
    if (qword_E0CE90 != -1)
    {
      swift_once();
    }

    v4 = sub_AB9260();
    v5 = [v3 systemMusicPathWithRoute:v0 playerID:v4];
  }

  else
  {
    v5 = [v2 pathWithRoute:v0 bundleID:0 playerID:0];
  }

  return v5;
}

uint64_t variable initialization expression of Player.nowPlayingConfiguration()
{
  if (qword_E0CEC8 != -1)
  {
    swift_once();
  }

  v0 = qword_E13410;
  v1 = qword_E13410;
  return v0;
}

uint64_t _s9MusicCore11BagProviderC4lock33_D1F028703756EAFCB4E62A24E619467FLL0A9Utilities10UnfairLockCvpfi_0()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  return UnfairLock.init()();
}

id sub_4FB93C()
{
  if (qword_E0CEC8 != -1)
  {
    swift_once();
  }

  v1 = qword_E13410;

  return v1;
}

uint64_t variable initialization expression of MusicItemState._playabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v3 = sub_AB8080();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of MusicItemState._previewCapabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v3 = sub_AB8090();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:);
  v5 = sub_AB80A0();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id variable initialization expression of PlaylistCovers.ArtworkDataSource.cache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

double variable initialization expression of PresentationSource.position@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 40) = xmmword_AF7710;
  return result;
}

uint64_t variable initialization expression of RequestResponse.Controller.enqueuedRevisionCompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();

  return sub_AB97C0();
}

unint64_t variable initialization expression of RequestResponse.Controller.revisionIDCompletionsMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();
  v7 = sub_AB9870();
  swift_getTupleTypeMetadata2();
  v8 = sub_AB97C0();
  v9 = sub_5B8BEC(v8, &type metadata for Int, v7, &protocol witness table for Int);

  return v9;
}

uint64_t sub_4FBD7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ExplicitRestrictionsController.symbol()
{
  if (qword_E0D570 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t variable initialization expression of OptimisticValue.transaction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for OptimisticValue.Transaction(0, a1, a3, a4);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

uint64_t sub_4FBF38(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DA90, type metadata accessor for MPCPlayerRequestError, &unk_B148B0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_4FBFA4(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DA90, type metadata accessor for MPCPlayerRequestError, &unk_B148B0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_4FC010(uint64_t a1)
{
  v2 = sub_4FDB9C(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_4FC120(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  swift_getWitnessTable();
  sub_AB3B30();
  return sub_ABB610();
}

uint64_t sub_4FC188(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_AB3B20();
}

uint64_t sub_4FC204(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDA0, type metadata accessor for MPCPlayerEnqueueError, &unk_B1616C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_4FC270(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDA0, type metadata accessor for MPCPlayerEnqueueError, &unk_B1616C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_4FC2DC(void *a1, uint64_t a2)
{
  v4 = sub_4FDB9C(&qword_E0DDA0, type metadata accessor for MPCPlayerEnqueueError, &unk_B1616C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_4FC36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FDB9C(&qword_E0DDA0, type metadata accessor for MPCPlayerEnqueueError, &unk_B1616C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_4FC3FC(uint64_t a1)
{
  v2 = sub_4FDB9C(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_4FC468(uint64_t a1)
{
  v2 = sub_4FDB9C(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_4FC4D4(void *a1, uint64_t a2)
{
  v4 = sub_4FDB9C(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_4FC564(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FDB9C(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_4FC5F0(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_4FC65C(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_4FC6C8(void *a1, uint64_t a2)
{
  v4 = sub_4FDB9C(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_4FC758(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FDB9C(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_4FC7E4(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DD90, type metadata accessor for MPCMusicBehaviorError, &unk_B15E5C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_4FC850(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DD90, type metadata accessor for MPCMusicBehaviorError, &unk_B15E5C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_4FC8BC(void *a1, uint64_t a2)
{
  v4 = sub_4FDB9C(&qword_E0DD90, type metadata accessor for MPCMusicBehaviorError, &unk_B15E5C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_4FC94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FDB9C(&qword_E0DD90, type metadata accessor for MPCMusicBehaviorError, &unk_B15E5C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_4FC9C8(uint64_t a1)
{
  sub_4FDB9C(&qword_E0DE20, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_B160E4);
  sub_4FDB9C(&qword_E0DE28, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_B15A34);

  return sub_ABB110();
}

uint64_t sub_4FCA84(uint64_t a1)
{
  sub_4FDB9C(&qword_E0DE50, _s3__C4NameVMa_0, &unk_B155A4);
  sub_4FDB9C(&qword_E0DE58, _s3__C4NameVMa_0, &unk_B15544);

  return sub_ABB110();
}

uint64_t sub_4FCB40(uint64_t a1)
{
  sub_4FDB9C(&qword_E0DAF0, type metadata accessor for ICURLBagKey, &unk_B149AC);
  sub_4FDB9C(&qword_E0DAF8, type metadata accessor for ICURLBagKey, &unk_B14954);

  return sub_ABB110();
}

uint64_t sub_4FCBFC(uint64_t a1)
{
  sub_4FDB9C(&qword_E0DAE0, type metadata accessor for ICPrivacyIdentifier, &unk_B14DF0);
  sub_4FDB9C(&qword_E0DAE8, type metadata accessor for ICPrivacyIdentifier, &unk_B14D98);

  return sub_ABB110();
}

uint64_t sub_4FCCB8(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDF8, type metadata accessor for MPCPlayerEnqueueError, &unk_B1571C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_4FCD24(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDF8, type metadata accessor for MPCPlayerEnqueueError, &unk_B1571C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_4FCD90(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDA0, type metadata accessor for MPCPlayerEnqueueError, &unk_B1616C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_4FCDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4FDB9C(&qword_E0DDA0, type metadata accessor for MPCPlayerEnqueueError, &unk_B1616C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_4FCE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4FDB9C(&unk_E130D0, type metadata accessor for MPCPlayerRequestError, &unk_B15040);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_4FCF04(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDB0, type metadata accessor for MPCError, &unk_B15BC8);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_4FCF70(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDB0, type metadata accessor for MPCError, &unk_B15BC8);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_4FCFDC(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_4FD048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4FDB9C(&qword_E0DDE0, type metadata accessor for MPCError, &unk_B15FD4);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_4FD0CC(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DD60, type metadata accessor for MPCMusicBehaviorError, &unk_B15DDC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_4FD138(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DD60, type metadata accessor for MPCMusicBehaviorError, &unk_B15DDC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_4FD1A4(uint64_t a1)
{
  v2 = sub_4FDB9C(&qword_E0DD90, type metadata accessor for MPCMusicBehaviorError, &unk_B15E5C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_4FD210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4FDB9C(&qword_E0DD90, type metadata accessor for MPCMusicBehaviorError, &unk_B15E5C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_4FD294(uint64_t a1)
{
  sub_4FDB9C(&qword_E0DE40, _s3__C13AttributeNameVMa_0, &unk_B16128);
  sub_4FDB9C(&qword_E0DE48, _s3__C13AttributeNameVMa_0, &unk_B157C8);

  return sub_ABB110();
}

uint64_t sub_4FD350(uint64_t a1)
{
  sub_4FDB9C(&qword_E0DE30, _s3__C3KeyVMa_0, &unk_B1593C);
  sub_4FDB9C(&qword_E0DE38, _s3__C3KeyVMa_0, &unk_B158DC);

  return sub_ABB110();
}

uint64_t sub_4FD40C(uint64_t a1)
{
  sub_4FDB9C(&qword_E0DAD0, type metadata accessor for MSVAutoBugCaptureDomain, &unk_B14F88);
  sub_4FDB9C(&qword_E0DAD8, type metadata accessor for MSVAutoBugCaptureDomain, &unk_B14F28);

  return sub_ABB110();
}

unint64_t sub_4FD4C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DB60, &qword_B15150);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DB68, &qword_B15158);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_E0DB60, &qword_B15150);
      result = sub_522264(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_AB3470();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_4FD6CC()
{
  result = qword_E0D640;
  if (!qword_E0D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0D640);
  }

  return result;
}

uint64_t type metadata accessor for BundleFinder()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 __swift_memcpy16_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_4FD7B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_4FD7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8_0(uint64_t a1, uint64_t a2)
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

uint64_t sub_4FD868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_4FD8BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8_0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_4FDB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_4FE468()
{
  result = qword_E0DAB8;
  if (!qword_E0DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DAB8);
  }

  return result;
}

uint64_t sub_4FE54C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4FE5BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4FE630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4FE650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy48_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t ActionDeclaring.init(context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v24 - v16;
  v25 = a1;
  sub_808B0(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DF90, &qword_B16230);
  v18 = swift_dynamicCast();
  v19 = *(v13 + 56);
  if (v18)
  {
    v19(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
    (*(v13 + 16))(v15, v17, AssociatedTypeWitness);
    v20 = v26;
    (*(a3 + 24))(v15, a2, a3);
    __swift_destroy_boxed_opaque_existential_0(v25);
    (*(v13 + 8))(v17, AssociatedTypeWitness);
    v21 = 0;
    v22 = v20;
  }

  else
  {
    v21 = 1;
    v19(v12, 1, 1, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0(v25);
    (*(v10 + 8))(v12, v9);
    v22 = v26;
  }

  return (*(*(a2 - 8) + 56))(v22, v21, 1, a2);
}

__n128 AnyAction.init(identifier:contexts:resolver:logs:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X3>)
{
  sub_50154C(a2, a3, a4, a5, v10);
  v6 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v6;
  *(a1 + 128) = v10[8];
  v7 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v7;
  v8 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v8;
  result = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t AnyAction.canPerform.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  __break(1u);
  return result;
}

uint64_t sub_4FF7A0(uint64_t a1)
{
  v1[2] = a1;
  sub_AB9940();
  v1[3] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_4FF838, v3, v2);
}

uint64_t sub_4FF838()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_4FF95C;

  return v6(v2, v3);
}

uint64_t sub_4FF95C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_5022CC;
  }

  else
  {
    v5 = sub_5022D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_4FFA98(uint64_t a1)
{
  v1[2] = a1;
  sub_AB9940();
  v1[3] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_4FFB30, v3, v2);
}

uint64_t sub_4FFB30()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_4FFC54;

  return v6(v2, v3);
}

uint64_t sub_4FFC54()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_4FFDF4;
  }

  else
  {
    v5 = sub_4FFD90;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_4FFD90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4FFDF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *AnyAction.submenu.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t AnyAction.execute()()
{
  v1[21] = v0;
  sub_AB9940();
  v1[22] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_4FFF24, v3, v2);
}

void sub_4FFF24()
{
  v31 = v0;
  v1 = *(v0[21] + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1();
  if (v3 == 1)
  {
    v4 = *(v0[21] + 96);
    if (v4)
    {
      v29 = (v4 + *v4);
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = sub_5002CC;

      v29();
      return;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v6 = v2;
  v7 = v3;

  v8 = sub_501D64(v6, v7);
  v9 = (v1)(v8);
  if (v10 == 1)
  {
    sub_501D78();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    sub_501D78();
    v11 = swift_allocError();
    *v15 = v13;
    v15[1] = v14;
  }

  swift_willThrow();
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v16 = v0[21];
  v17 = sub_AB4BC0();
  __swift_project_value_buffer(v17, static Logger.actions);
  sub_501CFC(v16, (v0 + 2));
  swift_errorRetain();
  v18 = sub_AB4BA0();
  v19 = sub_AB9F30();
  sub_501D34(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[21];
    v21 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v21 = 136446466;
    v22 = ActionType.rawValue.getter(*v20);
    v24 = sub_500C84(v22, v23, v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v0[20] = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v25 = sub_AB9350();
    v27 = sub_500C84(v25, v26, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_0, v18, v19, "Failed to perform action %{public}s with error %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v28 = v0[1];

  v28();
}

uint64_t sub_5002CC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_5006C0;
  }

  else
  {
    v5 = sub_500408;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_500408()
{
  v1 = *(*(v0 + 168) + 112);
  if (v1)
  {
    v3 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = sub_500500;

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_500500()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_5008E0;
  }

  else
  {
    v5 = sub_50063C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_50063C()
{
  v1 = *(*(v0 + 168) + 128);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5006C0()
{
  v17 = v0;

  v1 = v0[26];
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_AB4BC0();
  __swift_project_value_buffer(v3, static Logger.actions);
  sub_501CFC(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();
  sub_501D34(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_500C84(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v11 = sub_AB9350();
    v13 = sub_500C84(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_0, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_5008E0()
{
  v17 = v0;

  v1 = v0[28];
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_AB4BC0();
  __swift_project_value_buffer(v3, static Logger.actions);
  sub_501CFC(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();
  sub_501D34(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_500C84(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v11 = sub_AB9350();
    v13 = sub_500C84(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_0, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t Logger.actions.unsafeMutableAddressor()
{
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.actions);
}

uint64_t sub_500B64()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.actions);
  __swift_project_value_buffer(v0, static Logger.actions);
  return sub_AB4BB0();
}

uint64_t static Logger.actions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.actions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_500C84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_500D50(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_808B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_500D50(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_500E5C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_ABAE60();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_500E5C(uint64_t a1, unint64_t a2)
{
  v3 = sub_500EA8(a1, a2);
  sub_500FD8(&off_D199B0);
  return v3;
}

void *sub_500EA8(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_7779D0(v5, 0);
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

  result = sub_ABAE60();
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
        v10 = sub_AB94C0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_7779D0(v10, 0);
        result = sub_ABAD70();
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

void sub_500FD8(uint64_t a1)
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

  v3 = sub_5010C4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

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

char *sub_5010C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161D0, &qword_B273B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

__n128 sub_5011B8@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v5 = a1[4];
  *&v40 = DynamicType;
  *(&v40 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DFB8, &qword_B16428);
  v6 = sub_AB9350();
  v28 = v7;
  v29 = v6;
  sub_E8BA0(a1, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DFC0, &qword_B16430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DFC8, &qword_B16438);
  if (swift_dynamicCast())
  {
    v8 = *(&v58 + 1);
    v9 = v59;
    __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
    (*(v9 + 8))(v60, v8, v9);
    v10 = v60[1];
    v11 = v60[2];
    v26 = v60[3];
    v24 = v60[0];
    v25 = v60[4];
    v23 = v60[5];
    __swift_destroy_boxed_opaque_existential_0(&v57);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_12E1C(&v57, &qword_E0DFD0, &qword_B16440);
    v24 = 0;
    v25 = 0;
    v11 = 0;
    v26 = 0;
    v23 = 0;
    v10 = 1;
  }

  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v22 = (*(v13 + 24))(v12, v13);
  sub_E8BA0(a1, &v40);
  v21 = swift_allocObject();
  sub_70DF8(&v40, v21 + 16);
  sub_E8BA0(a1, &v40);
  v20 = swift_allocObject();
  sub_70DF8(&v40, v20 + 16);
  sub_E8BA0(a1, &v40);
  v19 = swift_allocObject();
  sub_70DF8(&v40, v19 + 16);
  sub_E8BA0(a1, &v40);
  v14 = swift_allocObject();
  sub_70DF8(&v40, v14 + 16);
  LOBYTE(v31) = a2;
  *(&v31 + 1) = v29;
  v32.n128_u64[0] = v28;
  v32.n128_u64[1] = v24;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  *&v35 = v23;
  *(&v35 + 1) = v22;
  *&v36 = sub_5020E4;
  *(&v36 + 1) = v21;
  *&v37 = &unk_B16450;
  *(&v37 + 1) = v20;
  *&v38 = &unk_B16460;
  *(&v38 + 1) = v19;
  *&v39 = sub_502260;
  *(&v39 + 1) = v14;
  sub_501CFC(&v31, &v40);
  __swift_destroy_boxed_opaque_existential_0(a1);
  LOBYTE(v40) = a2;
  *(&v40 + 1) = v29;
  v41 = v28;
  v42 = v24;
  v43 = v10;
  v44 = v11;
  v45 = v26;
  v46 = v25;
  v47 = v23;
  v48 = v22;
  v49 = sub_5020E4;
  v50 = v21;
  v51 = &unk_B16450;
  v52 = v20;
  v53 = &unk_B16460;
  v54 = v19;
  v55 = sub_502260;
  v56 = v14;
  sub_501D34(&v40);
  v15 = v38;
  *(a3 + 96) = v37;
  *(a3 + 112) = v15;
  *(a3 + 128) = v39;
  v16 = v34;
  *(a3 + 32) = v33;
  *(a3 + 48) = v16;
  v17 = v36;
  *(a3 + 64) = v35;
  *(a3 + 80) = v17;
  result = v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

void sub_50154C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v63 = a2;
  v5 = a1;
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v42 = a4;
    if (((1 << a1) & 0x700000000180) != 0)
    {
      v43 = sub_502058();
      v44 = &type metadata for Feature.MusicKit;
    }

    else
    {
      LOBYTE(v96) = 2;
      v43 = sub_502004();
      v44 = &type metadata for Feature.MediaPlayer;
    }

    v52 = FeatureFlagsKey.isEnabled.getter(v44, v43);
    a4 = v42;
    if ((v52 & 1) == 0)
    {

      if (qword_E0D528 != -1)
      {
LABEL_34:
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_11;
      }

      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_ABAD90(32);
      v53 = ActionType.rawValue.getter(v5);
      v55 = v54;

      *&v96 = v53;
      *(&v96 + 1) = v55;
      v113._countAndFlagsBits = 0xD00000000000001ELL;
      v113._object = 0x8000000000B6A2F0;
      sub_AB94A0(v113);
      v29 = *(&v96 + 1);
      v28 = v96;
      goto LABEL_10;
    }
  }

  v59 = a4;
  v8 = a3[3];
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v8);
  LOBYTE(v96) = v5;
  v10 = *(v9 + 8);
  v11 = sub_501F94();
  v12 = v10(&v96, &type metadata for ActionType, v11, v8, v9);
  if (!v12)
  {

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_ABAD90(22);
    v25 = ActionType.rawValue.getter(v5);
    v27 = v26;

    *&v96 = v25;
    *(&v96 + 1) = v27;
    v106._countAndFlagsBits = 0xD000000000000014;
    v106._object = 0x8000000000B6A290;
    sub_AB94A0(v106);
    v29 = *(&v96 + 1);
    v28 = v96;
LABEL_10:
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v28, v29, 80, 120, 0xE100000000000000);

    goto LABEL_11;
  }

  v57 = a5;
  v58 = v5;
  v56 = a3;
  v62 = *(v63 + 16);
  if (v62)
  {
    v14 = v12;
    v15 = v13;
    a5 = 0;
    a3 = (v63 + 32);
    v60 = v12 - 8;
    v61 = v13 + 8;
    while (1)
    {
      if (a5 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_808B0(a3, v82);
      v16 = *(v15 + 8);
      v17 = sub_ABA9C0();
      v18 = *(v17 - 8);
      v19 = __chkstk_darwin();
      v21 = &v56 - v20;
      v16(v82, v14, v15, v19);
      v5 = *(v14 - 8);
      if ((*(v5 + 48))(v21, 1, v14) != 1)
      {
        break;
      }

      a5 = (a5 + 1);
      (*(v18 + 8))(v21, v17);
      v83 = 0u;
      v84 = 0u;
      v85 = 0;
      sub_12E1C(&v83, &qword_E0DFA8, &qword_B16420);
      a3 += 4;
      if (v62 == a5)
      {
        goto LABEL_8;
      }
    }

    *(&v84 + 1) = v14;
    v85 = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v83);
    (*(v5 + 32))(boxed_opaque_existential_0, v21, v14);
    sub_70DF8(&v83, v86);
    sub_E8BA0(v86, &v96);
    v35 = v58;
    sub_5011B8(&v96, v58, &v87);
    v79 = v93;
    v80 = v94;
    v81 = v95;
    v75 = v89;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v73 = v87;
    v74 = v88;
    if (!v92)
    {
      __break(1u);
      return;
    }

    v36 = (v92)();
    a3 = v56;
    if (v37 == 1)
    {
      *&v96 = ActionType.rawValue.getter(v35);
      *(&v96 + 1) = v39;
      v107._countAndFlagsBits = 10272;
      v107._object = 0xE200000000000000;
      sub_AB94A0(v107);
      v40 = *(&v87 + 1);
      v41 = v88;

      v108._countAndFlagsBits = v40;
      v108._object = v41;
      sub_AB94A0(v108);

      v109._countAndFlagsBits = 41;
      v109._object = 0xE100000000000000;
      sub_AB94A0(v109);
      Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 9673954, 0xA300000000000000);

      __swift_destroy_boxed_opaque_existential_0(v86);
      v70 = v79;
      v71 = v80;
      v72 = v81;
      v66 = v75;
      v67 = v76;
      v68 = v77;
      v69 = v78;
      v64 = v73;
      v65 = v74;
      UIScreen.Dimensions.size.getter();
      v102 = v70;
      v103 = v71;
      v104 = v72;
      v98 = v66;
      v99 = v67;
      v100 = v68;
      v101 = v69;
      v96 = v64;
      v97 = v65;
      a5 = v57;
      goto LABEL_12;
    }

    v45 = v36;
    v46 = v37;
    if (v38)
    {
      __swift_destroy_boxed_opaque_existential_0(v86);
      sub_501D64(v45, v46);
      sub_501D34(&v87);
    }

    else
    {
      *&v96 = ActionType.rawValue.getter(v35);
      *(&v96 + 1) = v47;
      v110._countAndFlagsBits = 10272;
      v110._object = 0xE200000000000000;
      sub_AB94A0(v110);
      v48 = *(&v87 + 1);
      v49 = v88;

      v111._countAndFlagsBits = v48;
      v111._object = v49;
      sub_AB94A0(v111);

      v112._countAndFlagsBits = 539828265;
      v112._object = 0xE400000000000000;
      sub_AB94A0(v112);
      if (v46)
      {
        v50._countAndFlagsBits = v45;
      }

      else
      {
        v50._countAndFlagsBits = 0xD000000000000013;
      }

      if (v46)
      {
        v51 = v46;
      }

      else
      {
        v51 = 0x8000000000B6A2B0;
      }

      v50._object = v51;
      sub_AB94A0(v50);

      Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 120, 0xE100000000000000);

      sub_501D34(&v87);
      __swift_destroy_boxed_opaque_existential_0(v86);
    }

    a5 = v57;
  }

  else
  {
LABEL_8:

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_ABAD90(24);
    v22 = ActionType.rawValue.getter(v58);
    v24 = v23;

    *&v96 = v22;
    *(&v96 + 1) = v24;
    v105._countAndFlagsBits = 0xD000000000000016;
    v105._object = 0x8000000000B6A2D0;
    sub_AB94A0(v105);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 120, 0xE100000000000000);

    a3 = v56;
    a5 = v57;
  }

LABEL_11:
  sub_501FE8(&v96);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(a3);
  v30 = v103;
  a5[6] = v102;
  a5[7] = v30;
  a5[8] = v104;
  v31 = v99;
  a5[2] = v98;
  a5[3] = v31;
  v32 = v101;
  a5[4] = v100;
  a5[5] = v32;
  v33 = v97;
  *a5 = v96;
  a5[1] = v33;
}

uint64_t sub_501C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DF98, &qword_B16238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_501D64(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_501D78()
{
  result = qword_E0DFA0;
  if (!qword_E0DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DFA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore26ActionDisplayConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_501E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_501E64(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_501ED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_501F34(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_501F94()
{
  result = qword_E0E820;
  if (!qword_E0E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E820);
  }

  return result;
}

double sub_501FE8(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_502004()
{
  result = qword_E0DFB0;
  if (!qword_E0DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DFB0);
  }

  return result;
}

unint64_t sub_502058()
{
  result = qword_E0EA80;
  if (!qword_E0EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0EA80);
  }

  return result;
}

uint64_t sub_5020AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_5020E4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_502138()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_4FF7A0(v0 + 16);
}

uint64_t sub_5021CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17BD0;

  return sub_4FFA98(v0 + 16);
}

uint64_t sub_502260()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t ActionCondition.Result.failure.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  sub_502308(a1, a2);
  return v2;
}

double sub_502308(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ActionCondition.init(_:file:line:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ActionCondition.init(_:_:redactLog:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)()@<X5>, uint64_t (*a7)()@<X6>, uint64_t (*a8)()@<X7>, uint64_t (**a9)()@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *a9 = sub_502718;
  a9[1] = result;
  a9[2] = a6;
  a9[3] = a7;
  a9[4] = a8;
  return result;
}

BOOL ActionCondition.isTrue.getter()
{
  v1 = (*v0)();
  v3 = v2 == 1;
  sub_501D64(v1, v2);
  return v3;
}

void static ActionConditionEvaluator.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v12 = a1 + 32;
    v13 = *(a1 + 16);
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_3:
      if (++v2 == v1)
      {
        return;
      }
    }

    v6 = 0;
    v7 = v4 + 56;
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 24);

      v8(v9);
      v11 = v10;

      if (v11 != 1)
      {

        return;
      }

      ++v6;
      v7 += 40;
      if (v5 == v6)
      {

        v3 = v12;
        v1 = v13;
        goto LABEL_3;
      }
    }

    __break(1u);
  }
}

uint64_t static ActionConditionEvaluator.buildExpression(_:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DFD8, &qword_B16470);
  v2 = swift_allocObject();
  v4 = *a1;
  v7 = a1[1];
  v3 = v7;
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 4);

  sub_C8C3C(&v7, &v6);
  return v2;
}

BOOL _s9MusicCore15ActionConditionV6ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_ABB3C0();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t sub_5026D8()
{

  return swift_deallocObject();
}

uint64_t sub_502718()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16))())
  {
    return 0;
  }

  return v1;
}

__n128 __swift_memcpy40_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15ActionConditionV6ResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy17_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_5027D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_502834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_502894(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

void *ActionDisplayConfiguration.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ActionDisplayConfiguration.init(title:subtitle:image:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_502944()
{
  result = qword_E0DFE0;
  if (!qword_E0DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DFE0);
  }

  return result;
}

unint64_t sub_50299C()
{
  result = qword_E0DFE8;
  if (!qword_E0DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DFE8);
  }

  return result;
}

unint64_t sub_5029F4()
{
  result = qword_E0DFF0;
  if (!qword_E0DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DFF0);
  }

  return result;
}

unint64_t sub_502A4C()
{
  result = qword_E0DFF8;
  if (!qword_E0DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0DFF8);
  }

  return result;
}

void sub_502AA0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_4FF3EC(a1);

  *a2 = v3;
}

void ActionList.init(_:lookup:resolver:excluding:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v4 = a4;
  v37 = a3;
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v36 = a4;
    *&v38 = a2;
    v41 = _swiftEmptyArrayStorage;
    sub_503878(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = a1 + 32;
    do
    {
      sub_808B0(v9, v40);
      sub_808B0(v40, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DF90, &qword_B16230);
      v10 = sub_AB9350();
      v12 = String.components(wrappedToLineLength:bullet:)(80, 62, 0xE100000000000000, v10, v11);

      __swift_destroy_boxed_opaque_existential_0(v40);
      v41 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_503878((v13 > 1), v14 + 1, 1);
        v8 = v41;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      v9 += 32;
      --v7;
    }

    while (v7);
    v5 = v38;
    v4 = v36;
  }

  v40[0] = v8;
  __chkstk_darwin();
  v35[2] = a1;
  v35[3] = v37;
  v35[4] = v4;
  v35[5] = v40;
  v36 = sub_502FC8(sub_503898, v35, v5);

  v35[7] = v40[0];
  v15 = Array<A>.asciiBoxed()(v40[0]);
  v17 = v15;
  v18 = *(v15 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 40);
    v21 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
    *&v16 = 136446210;
    v38 = v16;
    while (v19 < *(v17 + 2))
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      info = v21[73].info;

      if (info != -1)
      {
        swift_once();
      }

      v25 = sub_AB4BC0();
      __swift_project_value_buffer(v25, static Logger.actions);

      v26 = sub_AB4BA0();
      v27 = sub_AB9F50();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v21;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v22;
        v32 = v17;
        v33 = v18;
        v34 = v30;
        v39[0] = v30;
        *v29 = v38;
        *(v29 + 4) = sub_500C84(v31, v23, v39);
        _os_log_impl(&dword_0, v26, v27, "%{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        v18 = v33;
        v17 = v32;

        v21 = v28;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    __swift_destroy_boxed_opaque_existential_0(v37);
  }
}

uint64_t sub_502E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char **a6@<X8>)
{
  v10 = *a1;
  v19 = _swiftEmptyArrayStorage;
  sub_E8BA0(a3, v18);
  v17[2] = &v19;
  v17[3] = a4;
  v17[4] = a2;
  v17[5] = v18;
  v11 = sub_503104(sub_5045D8, v17, v10);
  if (!*(v11 + 2))
  {

    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v18);
  v12 = v19;
  v13 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v13;
  if ((result & 1) == 0)
  {
    result = sub_5060D8(0, v13[2] + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    result = sub_5060D8((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v12;
  *a6 = v11;
  return result;
}

char *sub_502FC8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = *v6;

    a1(&v12, &v13);
    if (v3)
    {
      break;
    }

    v8 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_505F94(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_505F94((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_503104(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v41[0] = v8;
    (a1)(&v32, v41, a2);
    if (v3)
    {
      break;
    }

    v31[6] = v38;
    v31[7] = v39;
    v31[8] = v40;
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v31[0] = v32;
    v31[1] = v33;
    if (sub_90064(v31) == 1)
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      sub_12E1C(&v22, &qword_E0E048, &qword_B16820);
    }

    else
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_505FB0(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_505FB0((v9 > 1), v10 + 1, 1, v6);
      }

      v15 = v24;
      v16 = v25;
      v20 = v29;
      v21 = v30;
      v18 = v27;
      v19 = v28;
      v17 = v26;
      v13 = v22;
      v14 = v23;
      *(v6 + 2) = v10 + 1;
      v11 = &v6[144 * v10];
      *(v11 + 2) = v13;
      *(v11 + 5) = v16;
      *(v11 + 6) = v17;
      *(v11 + 3) = v14;
      *(v11 + 4) = v15;
      *(v11 + 9) = v20;
      *(v11 + 10) = v21;
      *(v11 + 7) = v18;
      *(v11 + 8) = v19;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_503314(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E038, &qword_B1DB70);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = sub_AB2F20();
  __chkstk_darwin();
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v29 = &v25 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = (a3 + 32);
  v15 = (v10 + 48);
  v28 = v10;
  v30 = (v10 + 32);
  v16 = _swiftEmptyArrayStorage;
  v26 = v8;
  v27 = a1;
  v25 = (v10 + 48);
  while (1)
  {
    v33 = *v14;
    (a1)(&v33, v11);
    if (v3)
    {
      break;
    }

    if ((*v15)(v7, 1, v8) == 1)
    {
      sub_12E1C(v7, &qword_E0E038, &qword_B1DB70);
    }

    else
    {
      v17 = v29;
      v18 = *v30;
      (*v30)(v29, v7, v8);
      v18(v31, v17, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_506D10(0, v16[2] + 1, 1, v16);
      }

      v20 = v16[2];
      v19 = v16[3];
      v21 = v28;
      if (v20 >= v19 >> 1)
      {
        v23 = sub_506D10((v19 > 1), v20 + 1, 1, v16);
        v21 = v28;
        v16 = v23;
      }

      v16[2] = v20 + 1;
      v22 = v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v20;
      v8 = v26;
      v18(v22, v31, v26);
      a1 = v27;
      v15 = v25;
    }

    ++v14;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

__n128 sub_5035EC@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  if ((1 << v6) & 0xF8FFFFD7FFE7FLL) != 0 || ((v19 = a3, ((1 << v6) & 0x700000000180) == 0) ? (LOBYTE(v27[0]) = 2, v20 = sub_502004(), v21 = &type metadata for Feature.MediaPlayer) : (v20 = sub_502058(), v21 = &type metadata for Feature.MusicKit), v22 = FeatureFlagsKey.isEnabled.getter(v21, v20), a3 = v19, (v22))
  {
    if (!sub_67B7C4(v6, a3))
    {
      sub_E8BA0(a5, v26);

      sub_50154C(v6, a4, v26, a2, v27);
      goto LABEL_7;
    }

    sub_ABAD90(24);
    v11 = ActionType.rawValue.getter(v6);
    v13 = v12;

    *&v27[0] = v11;
    *(&v27[0] + 1) = v13;
    v14._object = 0x8000000000B6A310;
    v14._countAndFlagsBits = 0xD000000000000016;
  }

  else
  {
    if (qword_E0D528 != -1)
    {
      swift_once();
    }

    if (static DeviceCapabilities.isInternalInstall != 1)
    {
      goto LABEL_5;
    }

    sub_ABAD90(32);
    v23 = ActionType.rawValue.getter(v6);
    v25 = v24;

    *&v27[0] = v23;
    *(&v27[0] + 1) = v25;
    v14._countAndFlagsBits = 0xD00000000000001ELL;
    v14._object = 0x8000000000B6A2F0;
  }

  sub_AB94A0(v14);
  Array<A>.appendStringComponents(_:lineLength:bullet:)(*&v27[0], *(&v27[0] + 1), 80, 120, 0xE100000000000000);

LABEL_5:
  sub_501FE8(v27);
LABEL_7:
  v15 = v27[7];
  *(a6 + 96) = v27[6];
  *(a6 + 112) = v15;
  *(a6 + 128) = v27[8];
  v16 = v27[3];
  *(a6 + 32) = v27[2];
  *(a6 + 48) = v16;
  v17 = v27[5];
  *(a6 + 64) = v27[4];
  *(a6 + 80) = v17;
  result = v27[1];
  *a6 = v27[0];
  *(a6 + 16) = result;
  return result;
}

void *sub_503858(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_503A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_503878(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_503C58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_5038D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_503D8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_5038F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_503EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_503918(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_503FB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_503938(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_5040BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_503958(void *a1, int64_t a2, char a3)
{
  result = sub_6E34C(a1, a2, a3, *v3, &unk_E12E70, &unk_B16C10, &qword_E12EA0, &qword_B21610);
  *v3 = result;
  return result;
}

char *sub_503998(char *a1, int64_t a2, char a3)
{
  result = sub_6E6D4(a1, a2, a3, *v3, &qword_E0E028, &qword_B16810);
  *v3 = result;
  return result;
}

void *sub_5039C8(void *a1, int64_t a2, char a3)
{
  result = sub_6E34C(a1, a2, a3, *v3, &qword_E0E020, &qword_B16808, &qword_E13E20, &unk_B229F0);
  *v3 = result;
  return result;
}

char *sub_503A08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_5041F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_503A28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_5042FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_503A48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_504400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_503A68(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC38, &unk_B16C50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160) - 8);
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

void *sub_503C58(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E050, &qword_B16828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_503D8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0E2C0, &unk_B16C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_503EB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E010, &unk_B16AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_503FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_5040BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_5041F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E008, &qword_B167F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_5042FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E018, &qword_B16800);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_504400(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E000, &qword_B167F0);
  v10 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
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

uint64_t ActionType.isHidden.getter(char a1)
{
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x700000000180) != 0)
  {
    v2 = sub_502058();
    v3 = &type metadata for Feature.MusicKit;
  }

  else
  {
    v2 = sub_502004();
    v3 = &type metadata for Feature.MediaPlayer;
  }

  return (FeatureFlagsKey.isEnabled.getter(v3, v2) ^ 1) & 1;
}

uint64_t sub_5046A8(char a1)
{
  result = 0x6C6576654C706F74;
  switch(a1)
  {
    case 1:
      result = 0x7463416B63697571;
      break;
    case 2:
      result = 7368564;
      break;
    case 3:
      result = 0x7972617262696CLL;
      break;
    case 4:
    case 11:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x6B63616279616C70;
      break;
    case 6:
      result = 0x697461676976616ELL;
      break;
    case 7:
      result = 0x6574736174;
      break;
    case 8:
      result = 0x6E6974726F706572;
      break;
    case 9:
      result = 0x6F697463416E6970;
      break;
    case 10:
      result = 0x7463757274736564;
      break;
    case 12:
      result = 1867804519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MenuType.title.getter(char a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v2 = sub_AB9250();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 == 9)
  {
    sub_AB91E0();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_E0CB80 == -1)
    {
      goto LABEL_7;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  if (a1 != 12 && a1 != 11)
  {
    return 0;
  }

  sub_AB91E0();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_E0CB80 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v3 + 8))(v7, v2);
  return v9;
}

id MenuType.image.getter(char a1)
{
  if (a1 != 9 && a1 != 12 && a1 != 11)
  {
    return 0;
  }

  v1 = sub_AB9260();
  v2 = [objc_opt_self() systemImageNamed:v1];

  return v2;
}

uint64_t MenuType.style.getter(char a1)
{
  switch(a1)
  {
    case 11:
      goto LABEL_6;
    default:
      v1 = sub_ABB3C0();

      if (v1)
      {
        goto LABEL_3;
      }

      v3 = MenuType.description.getter();
      v5 = v4;
      if (v3 == 1867804519 && v4 == 0xE400000000000000)
      {
        goto LABEL_6;
      }

      v7 = v3;
      v8 = sub_ABB3C0();

      if (v8)
      {
LABEL_3:
        v2 = 1;
      }

      else if (v7 == 0x6F697463416E6970 && v5 == 0xE90000000000006ELL)
      {
LABEL_6:

        v2 = 1;
      }

      else
      {
        v2 = sub_ABB3C0();
      }

      return v2 & 1;
  }
}

UIMenuElementSize __swiftcall MenuType.size(for:)(Swift::Int a1)
{
  switch(v1)
  {
    case 1:

      if (a1 <= 1)
      {
        return 2;
      }

      return 1;
    default:
      v3 = sub_ABB3C0();

      if ((v3 & 1) != 0 && a1 > 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
  }
}

unint64_t sub_5050B0@<X0>(Swift::String *a1@<X0>, MusicCore::MenuType_optional *a2@<X8>)
{
  result = _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_5050E0@<X0>(uint64_t *a1@<X8>)
{
  result = MenuType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void ActionType.mutuallyExclusiveActions.getter(unsigned __int8 a1)
{
  if (a1 <= 0x18u)
  {
    if (a1 > 7u)
    {
      switch(a1)
      {
        case 8u:
          v1 = &off_D19B88;
          break;
        case 0x17u:
          v1 = &off_D19C00;
          break;
        case 0x18u:
          v1 = &off_D19C28;
          break;
        default:
          return;
      }
    }

    else
    {
      switch(a1)
      {
        case 2u:
          v1 = &off_D19C78;
          break;
        case 3u:
          v1 = &off_D19CA0;
          break;
        case 7u:
          v1 = &off_D19B60;
          break;
        default:
          return;
      }
    }

    goto LABEL_27;
  }

  if (a1 <= 0x2Fu)
  {
    switch(a1)
    {
      case 0x19u:
        v1 = &off_D19C50;
        break;
      case 0x24u:
        v1 = &off_D19CC8;
        break;
      case 0x25u:
        v1 = &off_D19CF0;
        break;
      default:
        return;
    }

    goto LABEL_27;
  }

  if (a1 == 48)
  {
    v1 = &off_D19BD8;
LABEL_27:
    sub_50781C(v1);
    return;
  }

  if (a1 == 49)
  {
    v1 = &off_D19BB0;
    goto LABEL_27;
  }
}

uint64_t ActionType.rawValue.getter(char a1)
{
  result = 0x62694C6F54646461;
  switch(a1)
  {
    case 1:
      return 0x64616F6C6E776F64;
    case 2:
      return 0x657469726F766166;
    case 3:
      return 0x6F7661466F646E75;
    case 4:
      return 0x6572616873;
    case 5:
      return 2036427888;
    case 6:
      return 0x656C6666756873;
    case 7:
      return 7235952;
    case 8:
      return 0x6E69706E75;
    case 9:
      return 0x6C50657461657263;
    case 10:
      v3 = 1634038371;
      goto LABEL_34;
    case 11:
      return 0x616C506F54646461;
    case 12:
      return 0x7473696C79616C70;
    case 13:
      return 0x726F62616C6C6F63;
    case 14:
    case 41:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000011;
    case 16:
    case 29:
    case 47:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000011;
    case 18:
    case 46:
      return 0xD000000000000017;
    case 19:
      v4 = 0x656D616E6572;
      goto LABEL_42;
    case 20:
      v4 = 0x6F5465766F6DLL;
      goto LABEL_42;
    case 21:
      return 0x766F4D6575657571;
    case 22:
      return 0x7478654E79616C70;
    case 23:
      return 0x6575516F54646461;
    case 24:
      return 0x7473614C79616C70;
    case 25:
      return 0x6574664179616C70;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x7453657461657263;
    case 28:
      return 0x79616C506F546F67;
    case 30:
      return 0x75626C416F546F67;
    case 31:
      return 0x697472416F546F67;
    case 32:
      v5 = 2003789939;
      goto LABEL_48;
    case 33:
      return 0x6C6C754677656976;
    case 34:
      return 0x72794C6572616873;
    case 35:
      return 0x6C436E496E65706FLL;
    case 36:
      return 0x4C74736567677573;
    case 37:
      return 0x676775536F646E75;
    case 38:
      v5 = 1702125938;
LABEL_48:
      result = v5 | 0x676E6F5300000000;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 40:
    case 42:
    case 44:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD00000000000001BLL;
      break;
    case 45:
      result = 0xD000000000000016;
      break;
    case 48:
      result = 0x6F4465766F6D6572;
      break;
    case 49:
      result = 0xD000000000000011;
      break;
    case 50:
      v3 = 1701602660;
LABEL_34:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_42:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 51:
      result = 0x65766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_505938(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  return v12 & 1;
}

unint64_t sub_5059CC@<X0>(Swift::String *a1@<X0>, MusicCore::ActionType_optional *a2@<X8>)
{
  result = _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_5059FC@<X0>(uint64_t *a1@<X8>)
{
  result = ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_505A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_ABB5C0();
  a3(v5);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_505AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_AB93F0();

  return result;
}

Swift::Int sub_505B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_ABB5C0();
  a4(v6);
  sub_AB93F0();

  return sub_ABB610();
}

void sub_505BB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_5060FC(isUniquelyReferenced_nonNull_native, v9, 1, v3, &qword_E0E058, &qword_B16830, &type metadata for ActionLookup.Group);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t static ActionLookupBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E058, &qword_B16830);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF4EC0;
  *(v2 + 32) = a1;

  return v2;
}

void *static ActionLookupBuilder.buildOptional(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  return v1;
}

void *sub_505DA4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC38, &unk_B16C50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160) - 8);
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

char *sub_505FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1C8, &qword_B16C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_5060FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_506208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1B0, &unk_B16C40);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_506314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0, &unk_B1DCB0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_506420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0E2C0, &unk_B16C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_506548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1A8, &qword_B182B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_506670(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E090, &unk_B16AD0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_506788(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E010, &unk_B16AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_5068D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E168, &qword_B27190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ICURLBagKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_506A20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}