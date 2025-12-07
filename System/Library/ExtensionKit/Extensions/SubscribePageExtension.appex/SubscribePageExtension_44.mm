id sub_1004F81B4()
{
  v1 = v0;
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_1007504C4();
    (*(v3 + 8))(v5, v2);
  }

  v7 = *(v1 + OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView);
  [v7 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  return [v7 isHidden];
}

void sub_1004F83C0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_navigationBarMode] = a1;
  v12 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView];
  if ([v12 isHidden] && (v13 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton], objc_msgSend(*&v6[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton], "isHidden")) && (v14 = sub_10074AFA4(), v14 == sub_10074AFA4()))
  {
    v55.receiver = v13;
    v55.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v55, "frame");
    if (CGRectIsEmpty(v66) || ([v12 frame], CGRectIsEmpty(v67)))
    {
      [v6 setNeedsLayout];
    }
  }

  else
  {
    v53 = a5;
    v54 = a4;
    [v12 frame];
    Height = CGRectGetHeight(v68);
    v16 = sub_1004F76F8(Height);
    v17 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton];
    v18 = type metadata accessor for OfferButton();
    v65.receiver = v17;
    v65.super_class = v18;
    objc_msgSendSuper2(&v65, "frame");
    v19 = CGRectGetHeight(v69);
    v20 = sub_1004F75B0(v19);
    if (a1 == 1)
    {
      v21 = v20 + 4.0;
    }

    else
    {
      v21 = v20;
    }

    if (a1 == 1)
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 + 4.0;
    }

    if (a1 == 1)
    {
      v23 = v16 + 4.0;
    }

    else
    {
      v23 = v16;
    }

    if (a1 == 1)
    {
      v24 = 0.0;
    }

    else
    {
      v16 = v16 + 4.0;
      v24 = 1.0;
    }

    if (a1 == 1)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.0;
    }

    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v23;
    v26[5] = v16;
    v26[6] = v21;
    v26[7] = v22;
    v27 = swift_allocObject();
    *(v27 + 16) = a1 != 1;
    if (a3)
    {
      v28 = a1 != 1;
      v29 = v6;
      [v12 setAlpha:v25];
      [v17 setAlpha:v25];
      v30 = v12;
      [v30 frame];
      [v30 setFrame:?];

      v64.receiver = v17;
      v64.super_class = v18;
      v31 = v17;
      objc_msgSendSuper2(&v64, "frame");
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v63.receiver = v31;
      v63.super_class = v18;
      objc_msgSendSuper2(&v63, "frame");
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v62.receiver = v31;
      v62.super_class = v18;
      objc_msgSendSuper2(&v62, "setFrame:", v33, v22, v35, v37);
      sub_100153BE0(v39, v41, v43, v45);

      sub_1004F8A38(v6, v28);
      if (v54)
      {
        v54();
      }
    }

    else
    {
      sub_1004F989C(v6, v24, v23, v21);
      v46 = objc_opt_self();
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      v48[2] = sub_1004F9C64;
      v48[3] = v26;
      v48[4] = v47;
      v60 = sub_1004F9D04;
      v61 = v48;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000CF7B0;
      v59 = &unk_1008793F8;
      v49 = _Block_copy(&aBlock);

      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      v51[2] = sub_1004F9C84;
      v51[3] = v27;
      v51[4] = v50;
      v51[5] = v54;
      v51[6] = v53;
      v60 = sub_1004F9D78;
      v61 = v51;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_100144DD8;
      v59 = &unk_100879448;
      v52 = _Block_copy(&aBlock);

      sub_10001B5AC(v54, v53);

      [v46 animateWithDuration:v49 animations:v52 completion:*&a2];

      _Block_release(v52);
      _Block_release(v49);
    }
  }
}

void sub_1004F88CC(char *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView];
    v10 = a1;
    [v9 setAlpha:a3];
    v11 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton];
    [v11 setAlpha:a3];
    v12 = v9;
    [v12 frame];
    [v12 setFrame:?];

    v13 = type metadata accessor for OfferButton();
    v31.receiver = v11;
    v31.super_class = v13;
    v14 = v11;
    objc_msgSendSuper2(&v31, "frame");
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v30.receiver = v14;
    v30.super_class = v13;
    objc_msgSendSuper2(&v30, "frame");
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29.receiver = v14;
    v29.super_class = v13;
    objc_msgSendSuper2(&v29, "setFrame:", v16, a7, v18, v20);
    sub_100153BE0(v22, v24, v26, v28);
  }
}

void sub_1004F8A38(char *a1, char a2)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView];
    v4 = a1;
    [v3 frame];
    IsEmpty = CGRectIsEmpty(v12);
    v6 = 1;
    if (!IsEmpty && (a2 & 1) == 0)
    {
      v6 = v4[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility];
    }

    [v3 setHidden:v6];
    v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton];
    v11.receiver = v7;
    v11.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v11, "frame");
    v8 = CGRectIsEmpty(v13);
    v9 = 1;
    if (!v8 && (a2 & 1) == 0)
    {
      if ((sub_100749F94() & 1) != 0 || (v10 = sub_10074AFA4(), v10 == sub_10074AFA4()))
      {
        v9 = 1;
      }

      else
      {
        v9 = v4[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility + 1];
      }
    }

    [v7 setHidden:v9];
  }
}

void sub_1004F8B5C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

void sub_1004F8BC0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a2();

  if (a5)
  {
    a5();
  }
}

id sub_1004F8C48(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView];
  if (a2)
  {

    v7 = sub_100753064();

    [v4 setText:v7];

    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v3 traitCollection];
      v10 = sub_1007537D4();

      goto LABEL_8;
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView] setText:0];
  }

  v10 = 1;
LABEL_8:
  [v4 setHidden:v10 & 1];

  return [v3 setNeedsLayout];
}

char *sub_1004F8E40(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconView;
  sub_1007433C4();
  *&v4[v11] = sub_1007431D4();
  v12 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView;
  sub_100745C84();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconWidth] = 0x4044000000000000;
  v13 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconAspectRatio;
  v14 = sub_1007504F4();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v29.receiver = v5;
  v29.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v20 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView;
  v21 = *&v19[OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 _gkPreferredFontForTextStyle:UIFontTextStyleBody symbolicTraits:2];
  [v23 setFont:v24];

  [*&v19[v20] setNumberOfLines:1];
  v25 = *&v19[v20];
  v26 = [v19 traitCollection];

  LOBYTE(v23) = sub_1007537D4();
  [v25 setHidden:v23 & 1];

  [v19 addSubview:*&v19[OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconView]];
  [v19 addSubview:*&v19[v20]];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007A5A00;
  *(v27 + 32) = sub_1007516F4();
  *(v27 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v19;
}

void sub_1004F91C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1007504F4();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v5);
  v8 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v8], 1, v3))
  {
    (*(v4 + 16))(v7, &v1[v8], v3);
    sub_1007504C4();
    (*(v4 + 8))(v7, v3);
  }

  v9 = *&v1[OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView];
  if ([v9 isHidden])
  {
    sub_1007477B4();
    CGRectGetMidX(v20);
    sub_1007477B4();
    CGRectGetMidY(v21);
    sub_100743324();
  }

  else
  {
    [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v11 = v10;
    v13 = v12;
    sub_1007477B4();
    CGRectGetMinX(v22);
    sub_1007477B4();
    CGRectGetMidY(v23);
    sub_100743324();
    sub_100743314();
    v14 = CGRectGetMaxX(v24) + 10.0;
    sub_1007477B4();
    MidY = CGRectGetMidY(v25);
    sub_1007477B4();
    v16 = CGRectGetMaxX(v26) - v14;
    if (v16 >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v16;
    }

    [v9 setFrame:{v14, MidY - v13 * 0.5, v17, v13}];
  }
}

id sub_1004F9530(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductTitleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ProductTitleView.IconTitleView(uint64_t a1)
{
  result = qword_10093B578;
  if (!qword_10093B578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004F964C(uint64_t a1)
{
  sub_100170814(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1004F96FC(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_1007537D4();

  if (v3)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 20.0;
  }

  [a1 layoutMargins];
  v6 = v5;
  [a1 layoutMargins];

  return [a1 setLayoutMargins:{v6, v4}];
}

void sub_1004F97AC()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView(0);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_animationVerticalOffset) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_navigationBarMode) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButtonMode) = 0;
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004F989C(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView);
  [v7 frame];
  if (CGRectIsEmpty(v31))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility);
  }

  [v7 setHidden:v8];
  v9 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton);
  v10 = type metadata accessor for OfferButton();
  v30.receiver = v9;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "frame");
  if (CGRectIsEmpty(v32) || (sub_100749F94() & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility + 1);
  }

  [v9 setHidden:v11];
  [v7 setAlpha:a2];
  [v9 setAlpha:a2];
  [v7 frame];
  [v7 setFrame:?];
  v29.receiver = v9;
  v29.super_class = v10;
  objc_msgSendSuper2(&v29, "frame");
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v28.receiver = v9;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "frame");
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27.receiver = v9;
  v27.super_class = v10;
  objc_msgSendSuper2(&v27, "setFrame:", v13, a4, v15, v17);
  return sub_100153BE0(v19, v21, v23, v25);
}

id sub_1004F9A64(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView];
  v3 = [v2 text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = sub_100753094();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 traitCollection];
    v10 = sub_1007537D4();
  }

  else
  {
LABEL_6:
    v10 = 1;
  }

  [v2 setHidden:v10 & 1];

  return [a1 setNeedsLayout];
}

void sub_1004F9B50()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconView;
  sub_1007433C4();
  *(v0 + v2) = sub_1007431D4();
  v3 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView;
  sub_100745C84();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconWidth) = 0x4044000000000000;
  v4 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconAspectRatio;
  v5 = sub_1007504F4();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004F9C8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F9CC4()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1004F9D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004F9D28()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1004F9D88()
{
  result = qword_100939B40;
  if (!qword_100939B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100939B40);
  }

  return result;
}

uint64_t sub_1004F9E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != enum case for Shelf.ContentType.action(_:))
  {
    if (v12 == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v18 = ASKDeviceTypeGetCurrent();
      v19 = sub_100753094();
      v21 = v20;
      if (v19 == sub_100753094() && v21 == v22)
      {
      }

      else
      {
        v28 = sub_100754754();

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v24 = type metadata accessor for SearchUnifiedMessageCollectionViewCell(0);
      v25 = type metadata accessor for SearchUnifiedMessageCollectionViewCell;
      sub_1004FA2F8(&qword_10093B640, type metadata accessor for SearchUnifiedMessageCollectionViewCell, &unk_1007D1720);
      sub_1004FA2F8(&qword_10093B648, type metadata accessor for SearchUnifiedMessageCollectionViewCell, &unk_1007D06C8);
      v26 = &unk_10093B650;
      v27 = &unk_1007C5CA8;
      goto LABEL_13;
    }

LABEL_17:
    v24 = sub_10061132C(a1, a2);
    goto LABEL_18;
  }

  v13 = ASKDeviceTypeGetCurrent();
  v14 = sub_100753094();
  v16 = v15;
  if (v14 != sub_100753094() || v16 != v17)
  {
    v23 = sub_100754754();

    if (v23)
    {
      goto LABEL_10;
    }

    v13 = ASKDeviceTypeGetCurrent();
    v29 = sub_100753094();
    v31 = v30;
    if (v29 != sub_100753094() || v31 != v32)
    {
      v33 = sub_100754754();

      if (v33)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

LABEL_10:
  v24 = type metadata accessor for SearchActionCollectionViewCell(0);
  v25 = type metadata accessor for SearchActionCollectionViewCell;
  sub_1004FA2F8(&qword_10093B658, type metadata accessor for SearchActionCollectionViewCell, &unk_1007D1558);
  sub_1004FA2F8(&qword_100923568, type metadata accessor for SearchActionCollectionViewCell, &unk_1007A6680);
  v26 = &unk_10093B660;
  v27 = &unk_1007D1588;
LABEL_13:
  sub_1004FA2F8(v26, v25, v27);
LABEL_18:
  (*(v5 + 8))(v7, v4);
  return v24;
}

uint64_t sub_1004FA2F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004FA340(float a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating) = a1;
  if (v3 != a1)
  {
    v4 = 0.0;
    if (a1 < 0.0 || (v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars), v4 < a1))
    {
      *(v1 + v2) = v4;
      a1 = v4;
    }

    v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView);
    v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating);
    *(v5 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating) = a1;
    sub_1004FAF60(v6);
  }
}

void sub_1004FA3C4()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.57254902 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.552941176 blue:0.580392157 alpha:1.0];
  v2.super.isa = v0;
  qword_10093B668 = sub_100753EC4(v2, v1).super.isa;
}

void sub_1004FA474()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor);
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor);
    }

    v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor);
    *(v2 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor) = v4;
    if (v5)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v6 = v3;
      v7 = v4;
      v8 = v5;
      v9 = sub_100753FC4();

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = v3;
      v11 = v4;
      v8 = 0;
    }

    sub_1004FBA08();
    v7 = v4;
LABEL_10:
  }

  v12 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView);
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor);
  v14 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor);
  *(v12 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor) = v13;
  if (!v14)
  {
    v17 = v13;
    v18 = 0;
    goto LABEL_15;
  }

  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v15 = v13;
  v18 = v14;
  v16 = sub_100753FC4();

  if ((v16 & 1) == 0)
  {
LABEL_15:
    sub_1004FBA08();
    v15 = v13;
  }
}

void sub_1004FA614(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_100743B04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding];
  v12 = *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding];
  v13 = v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding + 8];
  *v11 = *&a1;
  *(v11 + 8) = a2 & 1;
  if (v13)
  {
    if (a2)
    {
      return;
    }

LABEL_6:
    v49 = a1;
    v14 = v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starSize];
    v15 = *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
    v47 = v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_useCase];
    v16 = [v3 traitCollection];
    v54.receiver = v3;
    v54.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v54, "minimumContentSizeCategory");
    v53.receiver = v3;
    v53.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v53, "maximumContentSizeCategory");
    v55.value._rawValue = v17;
    v55.is_nil = v18;
    v19.super.isa = sub_1007537C4(v55, v56).super.isa;

    v48 = v14;
    if (v14 <= 1)
    {
      if (v14)
      {
        v23 = &UIFontTextStyleCaption2;
      }

      else
      {
        v23 = &UIFontTextStyleHeadline;
      }

      v24 = [objc_opt_self() configurationWithTextStyle:*v23 scale:2];
    }

    else if (v14 == 2)
    {
      v24 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v14 == 3)
    {
      if ((v47 & 1) != 0 || (v20 = sub_10074F3F4(), v51 = v20, v52 = sub_1001FC0C4(), v21 = sub_10000D134(v50), (*(*(v20 - 8) + 104))(v21, enum case for Feature.search_tags(_:), v20), LOBYTE(v20) = sub_10074FC74(), sub_10000C620(v50), (v20 & 1) == 0))
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v24 = [objc_opt_self() configurationWithPointSize:4 weight:v22 scale:10.0];
    }

    else
    {
      if ((v47 & 1) != 0 || (v25 = sub_10074F3F4(), v51 = v25, v52 = sub_1001FC0C4(), v26 = sub_10000D134(v50), (*(*(v25 - 8) + 104))(v26, enum case for Feature.search_tags(_:), v25), LOBYTE(v25) = sub_10074FC74(), sub_10000C620(v50), (v25 & 1) == 0))
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      v24 = [objc_opt_self() configurationWithPointSize:4 weight:v27 scale:6.0];
    }

    v28 = v24;
    (*(v8 + 104))(v10, enum case for SystemImage.star(_:), v7);
    v29 = [v28 configurationWithTraitCollection:v19.super.isa];
    v30 = sub_100743AE4();

    (*(v8 + 8))(v10, v7);
    [v30 contentInsets];
    v32 = v31;
    [v30 contentInsets];
    v34 = v32 + v33;
    [v30 size];
    v36 = v35 - v34;
    [v30 contentInsets];
    v38 = v37;
    [v30 contentInsets];
    v40 = v38 + v39;
    [v30 size];
    v42 = v41;

    if (a2)
    {
      if (v48 == 4 || v48 == 2)
      {
        v43 = 2.0;
      }

      else
      {
        v43 = 6.0;
        if (v48)
        {
          v44 = v34 * (ceilf(v15) + -1.0);
          if (v44 < 0.0)
          {
            v44 = 0.0;
          }

          v45 = v36 * v15;
          goto LABEL_34;
        }
      }
    }

    else
    {
      v43 = *&v49;
    }

    v45 = v36 * v15;
    v44 = v43 * (ceilf(v15) + -1.0);
LABEL_34:
    [v3 setFrame:{0.0, 0.0, v45 + v44, v42 - v40}];
    sub_1004FBA08();
    return;
  }

  if ((a2 & 1) != 0 || v12 != *&a1)
  {
    goto LABEL_6;
  }
}

id sub_1004FABD0()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView];
  if (v2)
  {
    v3 = v2;
    [v3 frame];
    v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
    [v4 frame];
    [v3 bounds];
    sub_100753B24();
    [v4 setFrame:?];
  }

  v5 = [v1 traitCollection];
  v6 = sub_1007537F4();

  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
  if (v6)
  {
    CGAffineTransformMakeScale(&v9, -1.0, 1.0);
  }

  else
  {
    *&v9.a = 0x3FF0000000000000uLL;
    v9.c = 0.0;
    v9.d = 1.0;
    *&v9.tx = 0uLL;
  }

  return [v7 setTransform:&v9];
}

void sub_1004FAF60(float a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100743B04();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v63[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  if (v10 != a1)
  {
    v11 = v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starSize];
    v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding];
    HIDWORD(v62) = v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding + 8];
    v13 = v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_useCase];
    v14 = [v2 traitCollection];
    v67.receiver = v2;
    v67.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v67, "minimumContentSizeCategory");
    v66.receiver = v2;
    v66.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v66, "maximumContentSizeCategory");
    v68.value._rawValue = v15;
    v68.is_nil = v16;
    v17.super.isa = sub_1007537C4(v68, v69).super.isa;

    if (v11 <= 1)
    {
      if (v11)
      {
        v21 = &UIFontTextStyleCaption2;
      }

      else
      {
        v21 = &UIFontTextStyleHeadline;
      }

      v22 = [objc_opt_self() configurationWithTextStyle:*v21 scale:2];
    }

    else if (v11 == 2)
    {
      v22 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v11 == 3)
    {
      if ((v13 & 1) != 0 || (v18 = sub_10074F3F4(), v64 = v18, v65 = sub_1001FC0C4(), v19 = sub_10000D134(v63), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = sub_10074FC74(), sub_10000C620(v63), (v18 & 1) == 0))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v22 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:10.0];
    }

    else
    {
      if ((v13 & 1) != 0 || (v23 = sub_10074F3F4(), v64 = v23, v65 = sub_1001FC0C4(), v24 = sub_10000D134(v63), (*(*(v23 - 8) + 104))(v24, enum case for Feature.search_tags(_:), v23), LOBYTE(v23) = sub_10074FC74(), sub_10000C620(v63), (v23 & 1) == 0))
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      v22 = [objc_opt_self() configurationWithPointSize:4 weight:v25 scale:6.0];
    }

    v26 = HIDWORD(v62);
    v27 = v22;
    (*(v6 + 104))(v9, enum case for SystemImage.star(_:), v5);
    v28 = [v27 configurationWithTraitCollection:v17.super.isa];
    v29 = sub_100743AE4();

    (*(v6 + 8))(v9, v5);
    [v29 contentInsets];
    v31 = v30;
    [v29 contentInsets];
    v33 = v31 + v32;
    [v29 size];
    v35 = v34 - v33;
    [v29 contentInsets];
    v37 = v36;
    [v29 contentInsets];
    v39 = v37 + v38;
    [v29 size];
    v41 = v40;

    if (v26)
    {
      if (v11 == 4 || v11 == 2)
      {
        v12 = 2.0;
      }

      else
      {
        v12 = 6.0;
        if (v11)
        {
          v42 = v33 * (ceilf(v10) + -1.0);
          if (v42 < 0.0)
          {
            v42 = 0.0;
          }

          v43 = v35 * v10 + v42;
          goto LABEL_29;
        }
      }
    }

    v43 = v35 * v10 + v12 * (ceilf(v10) + -1.0);
LABEL_29:
    [v2 setFrame:{0.0, 0.0, v43, v41 - v39}];
    v44 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starImageView] image];
    if (v44)
    {
      v45 = v44;
      v46 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starLayer];
      [v2 bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      [v45 contentInsets];
      v56 = v55;
      [v45 contentInsets];
      v58 = v57;
      [v45 contentInsets];
      v60 = v59;
      [v45 contentInsets];
      [v46 setFrame:{v48 - v56, v50 - v58, v52 + v60, v54 + v61}];
    }
  }
}

id sub_1004FB518()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100743B04();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v44[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starSize];
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding];
  HIDWORD(v43) = v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  v11 = v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_useCase];
  v12 = [v1 traitCollection];
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v48, "minimumContentSizeCategory");
  v47.receiver = v1;
  v47.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v47, "maximumContentSizeCategory");
  v49.value._rawValue = v13;
  v49.is_nil = v14;
  v15.super.isa = sub_1007537C4(v49, v50).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v19 = &UIFontTextStyleCaption2;
    }

    else
    {
      v19 = &UIFontTextStyleHeadline;
    }

    v20 = [objc_opt_self() configurationWithTextStyle:*v19 scale:2];
  }

  else if (v8 == 2)
  {
    v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v11 & 1) != 0 || (v16 = sub_10074F3F4(), v45 = v16, v46 = sub_1001FC0C4(), v17 = sub_10000D134(v44), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_10074FC74(), sub_10000C620(v44), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:10.0];
  }

  else
  {
    if ((v11 & 1) != 0 || (v21 = sub_10074F3F4(), v45 = v21, v46 = sub_1001FC0C4(), v22 = sub_10000D134(v44), (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21), LOBYTE(v21) = sub_10074FC74(), sub_10000C620(v44), (v21 & 1) == 0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:6.0];
  }

  v24 = HIDWORD(v43);
  v25 = v20;
  (*(v4 + 104))(v7, enum case for SystemImage.star(_:), v3);
  v26 = [v25 configurationWithTraitCollection:v15.super.isa];
  v27 = sub_100743AE4();

  (*(v4 + 8))(v7, v3);
  [v27 contentInsets];
  v29 = v28;
  [v27 contentInsets];
  v31 = v29 + v30;
  [v27 size];
  v33 = v32 - v31;
  [v27 contentInsets];
  v35 = v34;
  [v27 contentInsets];
  v37 = v36;
  [v27 size];
  v39 = v38;

  if (!v24)
  {
    goto LABEL_28;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_28;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_28:
    v41 = v33 * v10 + v9 * (ceilf(v10) + -1.0);
    return [v1 setFrame:{0.0, 0.0, v41, v39 - (v35 + v37)}];
  }

  v40 = v31 * (ceilf(v10) + -1.0);
  if (v40 < 0.0)
  {
    v40 = 0.0;
  }

  v41 = v33 * v10 + v40;
  return [v1 setFrame:{0.0, 0.0, v41, v39 - (v35 + v37)}];
}

void sub_1004FBA08()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v65 = sub_100743B04();
  v66 = *(v65 - 8);
  *&v3 = __chkstk_darwin(v65).n128_u64[0];
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starImageView;
  v6 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starImageView] layer];
  [v6 removeFromSuperlayer];

  v7 = OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starLayer;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starLayer] removeFromSuperlayer];
  v8 = v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starSize];
  v9 = v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled];
  v10 = v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_useCase];
  v11 = [v1 traitCollection];
  v70.receiver = v1;
  v70.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v70, "minimumContentSizeCategory");
  v69.receiver = v1;
  v69.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v69, "maximumContentSizeCategory");
  v71.value._rawValue = v12;
  v71.is_nil = v13;
  isa = sub_1007537C4(v71, v72).super.isa;

  HIDWORD(v63) = v8;
  if (v8 <= 1)
  {
    if (v8)
    {
      v19 = &UIFontTextStyleCaption2;
    }

    else
    {
      v19 = &UIFontTextStyleHeadline;
    }

    v20 = [objc_opt_self() configurationWithTextStyle:*v19 scale:2];
    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
LABEL_15:
    v24 = v67;
    v25 = v65;
    v14 = v9;
    v15 = v66;
    goto LABEL_21;
  }

  v14 = v9;
  if (v8 == 3)
  {
    v15 = v66;
    if ((v10 & 1) != 0 || (v16 = sub_10074F3F4(), *&v68.m14 = v16, *&v68.m21 = sub_1001FC0C4(), v17 = sub_10000D134(&v68), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_10074FC74(), sub_10000C620(&v68), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v25 = v65;
    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:10.0];
  }

  else
  {
    v15 = v66;
    if ((v10 & 1) != 0 || (v21 = sub_10074F3F4(), *&v68.m14 = v21, *&v68.m21 = sub_1001FC0C4(), v22 = sub_10000D134(&v68), (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21), LOBYTE(v21) = sub_10074FC74(), sub_10000C620(&v68), (v21 & 1) == 0))
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v25 = v65;
    v20 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:6.0];
  }

  v24 = v67;
LABEL_21:
  v26 = v20;
  v27 = &enum case for SystemImage.starFill(_:);
  if (!v14)
  {
    v27 = &enum case for SystemImage.star(_:);
  }

  (*(v15 + 104))(v5, *v27, v25);
  v28 = isa;
  v29 = [v26 configurationWithTraitCollection:isa];
  v30 = sub_100743AE4();

  (*(v15 + 8))(v5, v25);
  v31 = [objc_allocWithZone(UIImageView) initWithImage:v30];
  v32 = *&v1[v24];
  *&v1[v24] = v31;

  v33 = [objc_allocWithZone(CAReplicatorLayer) init];
  v34 = *&v1[v7];
  *&v1[v7] = v33;
  v35 = v33;

  [v35 setInstanceCount:*&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_maxNumberOfStars]];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding + 8])
  {
    if (HIDWORD(v63))
    {
      if (HIDWORD(v63) != 4 && HIDWORD(v63) != 2)
      {
        [*&v1[v24] frame];
        Width = CGRectGetWidth(v74);
        goto LABEL_30;
      }

      v36 = 2.0;
    }

    else
    {
      v36 = 6.0;
    }
  }

  else
  {
    v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding];
  }

  [*&v1[v24] frame];
  v37 = CGRectGetWidth(v73);
  [v30 contentInsets];
  v39 = v37 - v38;
  [v30 contentInsets];
  Width = v36 + v39 - v40;
LABEL_30:
  v42 = *&v1[v7];
  CATransform3DMakeTranslation(&v68, Width, 0.0, 0.0);
  [v42 setInstanceTransform:&v68];

  [*&v1[v7] setMasksToBounds:1];
  [*&v1[v24] setTintColor:*&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor]];
  v43 = *&v1[v24];
  v44 = *&v1[v7];
  v45 = [v43 layer];
  [v44 addSublayer:v45];

  v46 = *&v1[v7];
  [v1 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [v30 contentInsets];
  v56 = v55;
  [v30 contentInsets];
  v58 = v57;
  [v30 contentInsets];
  v60 = v59;
  [v30 contentInsets];
  [v46 setFrame:{v48 - v56, v50 - v58, v52 + v60, v54 + v61}];

  v62 = [v1 layer];
  [v62 addSublayer:*&v1[v7]];
}

id sub_1004FC15C(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

void sub_1004FC1C8(void *a1, uint64_t a2, void *a3, const char **a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v10 = *a4;
  v11 = a3;
  v12 = a1;
  v13 = objc_msgSendSuper2(&v15, v10);
  v14.receiver = v12;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, *a5, v11);
  sub_1004FC278(v13, a4);
}

void sub_1004FC278(uint64_t a1, SEL *a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_100743B04();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v55[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v4;
  v60.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v60, *a2, v9);
  v13 = v12;
  if (!a1)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v14 = sub_100753094();
  v16 = v15;
  if (v14 == sub_100753094() && v16 == v17)
  {

    return;
  }

  v19 = sub_100754754();

  if ((v19 & 1) == 0)
  {
LABEL_11:
    v20 = v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starSize];
    v21 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding];
    HIDWORD(v54) = v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding + 8];
    v22 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
    v23 = v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_useCase];
    v24 = [v4 traitCollection];
    v59.receiver = v4;
    v59.super_class = ObjectType;
    v25 = objc_msgSendSuper2(&v59, "minimumContentSizeCategory");
    v58.receiver = v4;
    v58.super_class = ObjectType;
    v26 = objc_msgSendSuper2(&v58, "maximumContentSizeCategory");
    v61.value._rawValue = v25;
    v61.is_nil = v26;
    v27.super.isa = sub_1007537C4(v61, v62).super.isa;

    if (v20 <= 1)
    {
      if (v20)
      {
        v31 = &UIFontTextStyleCaption2;
      }

      else
      {
        v31 = &UIFontTextStyleHeadline;
      }

      v32 = [objc_opt_self() configurationWithTextStyle:*v31 scale:2];
    }

    else if (v20 == 2)
    {
      v32 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    }

    else if (v20 == 3)
    {
      if ((v23 & 1) != 0 || (v28 = sub_10074F3F4(), v56 = v28, v57 = sub_1001FC0C4(), v29 = sub_10000D134(v55), (*(*(v28 - 8) + 104))(v29, enum case for Feature.search_tags(_:), v28), LOBYTE(v28) = sub_10074FC74(), sub_10000C620(v55), (v28 & 1) == 0))
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      v32 = [objc_opt_self() configurationWithPointSize:4 weight:v30 scale:10.0];
    }

    else
    {
      if ((v23 & 1) != 0 || (v33 = sub_10074F3F4(), v56 = v33, v57 = sub_1001FC0C4(), v34 = sub_10000D134(v55), (*(*(v33 - 8) + 104))(v34, enum case for Feature.search_tags(_:), v33), LOBYTE(v33) = sub_10074FC74(), sub_10000C620(v55), (v33 & 1) == 0))
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v32 = [objc_opt_self() configurationWithPointSize:4 weight:v35 scale:6.0];
    }

    v36 = HIDWORD(v54);
    v37 = v32;
    (*(v8 + 104))(v11, enum case for SystemImage.star(_:), v7);
    v38 = [v37 configurationWithTraitCollection:v27.super.isa];
    v39 = sub_100743AE4();

    (*(v8 + 8))(v11, v7);
    [v39 contentInsets];
    v41 = v40;
    [v39 contentInsets];
    v43 = v41 + v42;
    [v39 size];
    v45 = v44 - v43;
    [v39 contentInsets];
    v47 = v46;
    [v39 contentInsets];
    v49 = v47 + v48;
    [v39 size];
    v51 = v50;

    if (v36)
    {
      if (v20 == 4 || v20 == 2)
      {
        v21 = 2.0;
      }

      else
      {
        v21 = 6.0;
        if (v20)
        {
          v52 = v43 * (ceilf(v22) + -1.0);
          if (v52 < 0.0)
          {
            v52 = 0.0;
          }

          v53 = v45 * v22 + v52;
          goto LABEL_39;
        }
      }
    }

    v53 = v45 * v22 + v21 * (ceilf(v22) + -1.0);
LABEL_39:
    [v4 setFrame:{0.0, 0.0, v53, v51 - v49}];
    sub_1004FBA08();
  }
}

char *sub_1004FC838(uint64_t a1, char a2, char a3, uint64_t a4, char a5, void *a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor] = 0;
  v16 = &v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding];
  *v16 = 0;
  v16[8] = 1;
  v17 = OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starImageView;
  *&v8[v17] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starLayer;
  *&v8[v18] = [objc_allocWithZone(CAReplicatorLayer) init];
  v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starSize] = a3;
  *v16 = a4;
  v16[8] = a5 & 1;
  *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_maxNumberOfStars] = a1;
  v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled] = a2;
  *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = a1;
  v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_useCase] = a7 & 1;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor];
  *&v19[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor] = a6;
  v21 = v19;
  v22 = a6;

  sub_1004FB518();
  sub_1004FBA08();
  v23 = [v21 layer];

  [v23 setMasksToBounds:1];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1007A5A00;
  *(v24 + 32) = sub_1007519E4();
  *(v24 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  sub_100016C60(0, &qword_1009239F8, UITraitCollection_ptr);
  sub_100753844();
  sub_100753D44();

  swift_unknownObjectRelease();

  return v21;
}

uint64_t getEnumTagSinglePayload for RatingView.StarSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RatingView.StarSize(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004FCD00()
{
  result = qword_10093B758;
  if (!qword_10093B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B758);
  }

  return result;
}

unint64_t sub_1004FCD58()
{
  result = qword_10093B760;
  if (!qword_10093B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B760);
  }

  return result;
}

void sub_1004FCDF8()
{
  v1 = sub_100743B04();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize];
  v22 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars];
  v7 = v0[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase];
  v8 = [v0 traitCollection];
  v9 = [v0 minimumContentSizeCategory];
  v10 = [v0 maximumContentSizeCategory];
  v26.value._rawValue = v9;
  v26.is_nil = v10;
  v11.super.isa = sub_1007537C4(v26, v27).super.isa;

  if (v6 <= 1)
  {
    if (v6)
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v6 == 2)
  {
    v15 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v6 == 3)
  {
    if ((v7 & 1) != 0 || (v12 = sub_10074F3F4(), v24 = v12, v25 = sub_1001FC0C4(), v13 = sub_10000D134(v23), (*(*(v12 - 8) + 104))(v13, enum case for Feature.search_tags(_:), v12), LOBYTE(v12) = sub_10074FC74(), sub_10000C620(v23), (v12 & 1) == 0))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v14 scale:10.0];
  }

  else
  {
    if ((v7 & 1) != 0 || (v16 = sub_10074F3F4(), v24 = v16, v25 = sub_1001FC0C4(), v17 = sub_10000D134(v23), (*(*(v16 - 8) + 104))(v17, enum case for Feature.search_tags(_:), v16), LOBYTE(v16) = sub_10074FC74(), sub_10000C620(v23), (v16 & 1) == 0))
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v15 = [objc_opt_self() configurationWithPointSize:4 weight:v18 scale:6.0];
  }

  v19 = v15;
  (*(v2 + 104))(v5, enum case for SystemImage.star(_:), v1);
  v20 = [v19 configurationWithTraitCollection:v11.super.isa];
  v21 = sub_100743AE4();

  (*(v2 + 8))(v5, v1);
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
  [v21 contentInsets];
  [v21 contentInsets];
  [v21 size];
}

double sub_1004FD2F8(void *a1)
{
  v3 = sub_100743B04();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize];
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  v51 = v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding + 8];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars];
  v49 = v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase];
  v11 = [a1 traitCollection];
  v12 = [v1 minimumContentSizeCategory];
  v13 = [v1 maximumContentSizeCategory];
  v56.value._rawValue = v12;
  v56.is_nil = v13;
  isa = sub_1007537C4(v56, v57).super.isa;

  if (v8 <= 1)
  {
    if (v8)
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
    }

    else
    {
      v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
    }
  }

  else if (v8 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v14 = sub_10074F3F4(), v54 = v14, v55 = sub_1001FC0C4(), v15 = sub_10000D134(v53), (*(*(v14 - 8) + 104))(v15, enum case for Feature.search_tags(_:), v14), LOBYTE(v14) = sub_10074FC74(), sub_10000C620(v53), (v14 & 1) == 0))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v16 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v18 = sub_10074F3F4(), v54 = v18, v55 = sub_1001FC0C4(), v19 = sub_10000D134(v53), (*(*(v18 - 8) + 104))(v19, enum case for Feature.search_tags(_:), v18), LOBYTE(v18) = sub_10074FC74(), sub_10000C620(v53), (v18 & 1) == 0))
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v17 = [objc_opt_self() configurationWithPointSize:4 weight:v20 scale:6.0];
  }

  v21 = v10;
  v22 = v17;
  v23 = *(v4 + 104);
  v23(v7, enum case for SystemImage.star(_:), v3);
  v24 = [v22 configurationWithTraitCollection:isa];
  v25 = sub_100743AE4();

  v26 = *(v4 + 8);
  v26(v7, v3);
  [v25 contentInsets];
  v28 = v27;
  [v25 contentInsets];
  v30 = v28 + v29;
  [v25 size];
  v32 = v31 - v30;
  [v25 contentInsets];
  [v25 contentInsets];
  [v25 size];

  if (!v51)
  {
    goto LABEL_26;
  }

  if (v8 == 4 || v8 == 2)
  {
    v9 = 2.0;
    goto LABEL_26;
  }

  v9 = 6.0;
  if (!v8)
  {
LABEL_26:
    v34 = v32 * v21 + v9 * (v21 + -1.0);
    goto LABEL_27;
  }

  v33 = v30 * (v21 + -1.0);
  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = v32 * v21 + v33;
LABEL_27:
  v50 = v26;
  if (v8 <= 1)
  {
    if (v8)
    {
      v38 = &UIFontTextStyleCaption2;
    }

    else
    {
      v38 = &UIFontTextStyleHeadline;
    }

    v39 = [objc_opt_self() configurationWithTextStyle:*v38 scale:2];
  }

  else if (v8 == 2)
  {
    v39 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v8 == 3)
  {
    if ((v49 & 1) != 0 || (v35 = sub_10074F3F4(), v54 = v35, v55 = sub_1001FC0C4(), v36 = sub_10000D134(v53), (*(*(v35 - 8) + 104))(v36, enum case for Feature.search_tags(_:), v35), LOBYTE(v35) = sub_10074FC74(), sub_10000C620(v53), (v35 & 1) == 0))
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v37 scale:10.0];
  }

  else
  {
    if ((v49 & 1) != 0 || (v40 = sub_10074F3F4(), v54 = v40, v55 = sub_1001FC0C4(), v41 = sub_10000D134(v53), (*(*(v40 - 8) + 104))(v41, enum case for Feature.search_tags(_:), v40), LOBYTE(v40) = sub_10074FC74(), sub_10000C620(v53), (v40 & 1) == 0))
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    v39 = [objc_opt_self() configurationWithPointSize:4 weight:v42 scale:6.0];
  }

  v43 = v39;
  v23(v7, enum case for SystemImage.starFill(_:), v3);
  v44 = isa;
  v45 = [v43 configurationWithTraitCollection:isa];
  v46 = sub_100743AE4();

  v50(v7, v3);
  sub_100753F34();
  [v46 contentInsets];

  return v34;
}

void sub_1004FDAB0()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starPadding;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_starLayer;
  *(v0 + v3) = [objc_allocWithZone(CAReplicatorLayer) init];
  sub_100754644();
  __break(1u);
}

void sub_1004FDB8C(uint64_t a1)
{
  if (!a1)
  {
    sub_10004E1D8();
    goto LABEL_7;
  }

  sub_100748E14();
  v1 = sub_100743EA4();
  sub_1001D3738(v1, sub_1000E12F0);
  v3 = v2;

  v4 = sub_100743E94();
  sub_10004DF04(v4, 0, v3);

  if (!sub_100748E24())
  {
LABEL_7:
    sub_10004E1D8();
    return;
  }

  v5 = sub_100743EA4();
  sub_1001D3738(v5, sub_100349614);
  v7 = v6;

  v8 = sub_100743E94();
  sub_10004DF04(v8, 0, v7);
}

uint64_t sub_1004FDDBC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100748144();
  sub_100039C50(v4, qword_100982140);
  v24 = sub_10000D0FC(v4, qword_100982140);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v5 = sub_100750B04();
  v6 = sub_10000D0FC(v5, qword_100982098);
  v31[3] = v5;
  v31[4] = &protocol witness table for StaticDimension;
  v7 = sub_10000D134(v31);
  v21 = *(*(v5 - 8) + 16);
  v21(v7, v6, v5);
  *v3 = UIFontTextStyleBody;
  v8 = v1[13];
  v23 = enum case for FontSource.textStyle(_:);
  v22 = v8;
  v8(v3);
  v30[3] = v5;
  v30[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v30);
  v28 = v0;
  v29 = &protocol witness table for FontSource;
  v9 = sub_10000D134(v27);
  v20 = v1[2];
  v20(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_100750B14();
  v19 = v1[1];
  v19(v3, v0);
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v5, qword_1009820C8);
  v28 = v5;
  v29 = &protocol witness table for StaticDimension;
  v12 = sub_10000D134(v27);
  v21(v12, v11, v5);
  *v3 = v10;
  v13 = v23;
  v14 = v22;
  v22(v3, v23, v0);
  v26[3] = v5;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v26);
  v25[3] = v0;
  v25[4] = &protocol witness table for FontSource;
  v15 = sub_10000D134(v25);
  v20(v15, v3, v0);
  v16 = v10;
  sub_100750B14();
  v19(v3, v0);
  *v3 = v16;
  v14(v3, v13, v0);
  v17 = v16;
  return sub_100748124();
}

uint64_t sub_1004FE178(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100750B04();
  sub_100039C50(v8, a3);
  sub_10000D0FC(v8, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v13[3] = v4;
  v13[4] = &protocol witness table for FontSource;
  v9 = sub_10000D134(v13);
  (*(v5 + 16))(v9, v7, v4);
  v10 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1004FE2EC()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10093B780 = sub_100752E44();
  unk_10093B788 = &protocol witness table for OSLogger;
  sub_10000D134(qword_10093B768);
  return sub_100752E34();
}

uint64_t sub_1004FE430()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10000C518(&qword_10093B7C0, qword_1007C7388);
  v3 = sub_100752DE4();
  v4 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((v4 - 1) < 2)
  {
    goto LABEL_6;
  }

  if ((v4 - 3) < 2)
  {
    LOBYTE(v9[0]) = 1;
LABEL_7:
    sub_100752DB4();
    return v3;
  }

  if (v4)
  {
LABEL_6:
    LOBYTE(v9[0]) = 0;
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17EventStoreManager_eventStore);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = ObjectType;
  v9[4] = sub_1004FE870;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005171C8;
  v9[3] = &unk_1008795B8;
  v7 = _Block_copy(v9);

  [v5 requestWriteOnlyAccessToEventsWithCompletion:v7];
  _Block_release(v7);
  return v3;
}

uint64_t sub_1004FE59C(char a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_100752DB4();
  }

  swift_errorRetain();
  if (qword_100921750 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10093B768, qword_10093B780);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000D134(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_100752444();
  sub_1000277BC(v5);
  sub_100752CE4();

  sub_100752DA4();
}

uint64_t sub_1004FE838()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1004FE878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1004FE890(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v27 - v12;
  if ((a2 & 1) == 0)
  {
    v28 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
    v15 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
    [v15 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v15, "isHidden")}];
    v16 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_100171C7C(&v15[v16], v13);
    v17 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_10043084C(v13, v14 + v17);
    swift_endAccess();
    v18 = [*&v15[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView] image];
    if (v18)
    {
      v19 = &v15[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize];
      if ((v15[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 16] & 1) != 0 || (v20 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v21 = *v19;
        v27 = v19[1];
        v22 = v18;

        v23 = v22;
        sub_100527FD0(v22, v21, v27, 0, v20, a3, v28);
      }
    }

    v24 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
    v25 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
    [v25 frame];
    [v24 setFrame:?];
    [v24 setHidden:{objc_msgSend(v25, "isHidden")}];
  }

  return [v5 setHidden:{objc_msgSend(a1, "isHidden", v11)}];
}

char *sub_1004FEB20(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_sourceView] = a1;
  v5 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView];
  v6 = type metadata accessor for RevealingImageMirrorView(0);
  v21.receiver = objc_allocWithZone(v6);
  v21.super_class = v6;
  v7 = a1;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  if (qword_100920C18 != -1)
  {
    swift_once();
  }

  v20[4] = *&byte_1009802F0[64];
  v20[5] = *&byte_1009802F0[80];
  v20[6] = *&byte_1009802F0[96];
  v20[7] = *&byte_1009802F0[112];
  v20[0] = *byte_1009802F0;
  v20[1] = *&byte_1009802F0[16];
  v20[2] = *&byte_1009802F0[32];
  v20[3] = *&byte_1009802F0[48];
  [v10 setTransform:v20];

  v11 = &v8[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v11 + 1) = &off_100875B18;
  swift_unknownObjectWeakAssign();
  sub_1005274D4(Strong);

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView] = v9;
  v13 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView];
  v14 = objc_allocWithZone(type metadata accessor for RevealingVideoMirrorView(0));
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView] = sub_1005626D0(v13);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
  v17 = v15;
  [v17 addSubview:v16];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView]];
  [v17 setClipsToBounds:1];

  return v17;
}

id sub_1004FEDD0()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
  [v0 bounds];
  MidX = CGRectGetMidX(v14);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_sourceView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_sourceView] frame];
  v4 = MidX - CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [*&v0[v3] frame];
  Width = CGRectGetWidth(v17);
  [*&v0[v3] frame];
  [v1 setFrame:{v4, MinX, Width, CGRectGetHeight(v18)}];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
  [v0 bounds];
  v8 = CGRectGetMidX(v19);
  [*&v0[v3] frame];
  v9 = v8 - CGRectGetWidth(v20) * 0.5;
  [v0 bounds];
  v10 = CGRectGetMinX(v21);
  [*&v0[v3] frame];
  v11 = CGRectGetWidth(v22);
  [*&v0[v3] frame];
  return [v7 setFrame:{v9, v10, v11, CGRectGetHeight(v23)}];
}

void sub_1004FF058()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_100753064();
    v5 = sub_100753064();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_1004FF13C(void *a1)
{
  v1 = a1;
  sub_1004FF058();
}

double sub_1004FF184(void *a1)
{
  v1 = a1;
  sub_1004C4774();

  return 0.0;
}

void sub_1004FF1D8(__n128 a1)
{
  v2 = v1;
  v3 = sub_100747154();
  v175 = *(v3 - 8);
  v176 = v3;
  __chkstk_darwin(v3);
  v174 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747144();
  v171 = *(v5 - 8);
  v172 = v5;
  __chkstk_darwin(v5);
  v173 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100747134();
  v168 = *(v7 - 8);
  v169 = v7;
  __chkstk_darwin(v7);
  v170 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100747184();
  v177 = *(v9 - 8);
  __chkstk_darwin(v9);
  v165 = (&v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10074CD14();
  v167 = *(v11 - 8);
  __chkstk_darwin(v11);
  v166 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100747174();
  v192 = *(v13 - 8);
  v193 = v13;
  __chkstk_darwin(v13);
  v154 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v191 = &v149 - v16;
  __chkstk_darwin(v17);
  v190 = &v149 - v18;
  __chkstk_darwin(v19);
  v21 = &v149 - v20;
  v22 = sub_100740E74();
  v155 = *(v22 - 8);
  v156 = v22;
  __chkstk_darwin(v22);
  v152 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v183);
  v184 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&qword_1009289F8, &unk_1007BE1C0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v151 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v187 = (&v149 - v29);
  __chkstk_darwin(v30);
  v186 = &v149 - v31;
  __chkstk_darwin(v32);
  v153 = &v149 - v33;
  __chkstk_darwin(v34);
  v189 = (&v149 - v35);
  __chkstk_darwin(v36);
  v188 = (&v149 - v37);
  __chkstk_darwin(v38);
  v181 = &v149 - v39;
  *&v41 = __chkstk_darwin(v40).n128_u64[0];
  v43 = &v149 - v42;
  v44 = [v1 collectionView];
  if (v44)
  {
    v45 = v44;
    v161 = v11;
    v162 = v26;
    v159 = v25;
    v160 = v9;
    v180 = v21;
    [v44 frame];

    v185 = sub_10074AB34();
    v47 = v46;
    v48 = v2;
    if (qword_100921EA0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for TitleHeaderView.Style(0);
    v50 = sub_10000D0FC(v49, qword_100983178);
    sub_1004C4774();
    v51 = [v48 traitCollection];
    v52 = v192 + 56;
    v53 = *(v192 + 56);
    v178 = v43;
    v54 = v43;
    v55 = v193;
    v53(v54, 1, 1, v193);
    v157 = v53;
    v158 = v52;
    v53(v181, 1, 1, v55);
    v223 = 0;
    memset(v222, 0, sizeof(v222));
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    v179 = v49;
    v56 = *(v49 + 20);
    v182 = v50;
    v150 = v56;
    sub_10010A978(v50 + v56, v184, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100038D38();
    v163 = v51;
    v57 = sub_100753C14();
    v58 = v47;
    v164 = v48;
    if (!v47)
    {
      v63 = v193;
      goto LABEL_11;
    }

    v59 = v185;
    *&v217 = v185;
    *(&v217 + 1) = v47;

    v60 = v152;
    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
    v62 = v61;
    (v155)[1](v60, v156);

    if (v62)
    {
      v63 = v193;
      goto LABEL_11;
    }

    [v57 lineHeight];
    v65 = ceil(v64 * 1.3);
    v66 = &v201;
    v63 = v193;
    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v65 > -9.22337204e18)
    {
      if (v65 < 9.22337204e18)
      {
LABEL_11:
        v219 = 0;
        v217 = 0u;
        v218 = 0u;
        v67 = sub_10074F3F4();
        v215 = v67;
        v216 = sub_1005013D8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v68 = sub_10000D134(v214);
        (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);

        v69 = v57;
        sub_10074FC74();
        sub_10000C620(v214);
        v70 = v166;
        v155 = v69;
        v156 = v58;
        sub_10074CD04();
        sub_10074CCE4();
        (*(v167 + 8))(v70, v161);
        sub_100016B4C(&v217, v213, &unk_100928A00, &qword_1007A5AB0);
        v71 = v215;
        v72 = v216;
        v73 = sub_10000C888(v214, v215);
        v212[3] = v71;
        v212[4] = *(v72 + 8);
        v74 = sub_10000D134(v212);
        (*(*(v71 - 8) + 16))(v74, v73, v71);
        v76 = v183;
        v75 = v184;
        v77 = *(v184 + v183[8]);
        v210 = &type metadata for Float;
        v211 = &protocol witness table for Float;
        v209[0] = v77;
        v78 = v183[9];
        v79 = sub_100750B04();
        v208[3] = v79;
        v208[4] = &protocol witness table for StaticDimension;
        v80 = sub_10000D134(v208);
        v81 = *(*(v79 - 8) + 16);
        v81(v80, v75 + v78, v79);
        v82 = v76[10];
        v207[3] = v79;
        v207[4] = &protocol witness table for StaticDimension;
        v83 = sub_10000D134(v207);
        v81(v83, v75 + v82, v79);
        sub_100016B4C(v222, &v201, &qword_10092BC30, &qword_1007AD5C0);
        v84 = *(&v202 + 1);
        if (*(&v202 + 1))
        {
          v85 = v203;
          v86 = sub_10000C888(&v201, *(&v202 + 1));
          *(&v205 + 1) = v84;
          v206 = *(v85 + 8);
          v87 = sub_10000D134(&v204);
          (*(*(v84 - 8) + 16))(v87, v86, v84);
          sub_10000C620(&v201);
        }

        else
        {
          sub_10000C8CC(&v201, &qword_10092BC30, &qword_1007AD5C0);
          v204 = 0u;
          v205 = 0u;
          v206 = 0;
        }

        v88 = v180;
        v89 = v187;
        sub_100016B4C(v220, v198, &qword_10092BC30, &qword_1007AD5C0);
        v90 = v199;
        if (v199)
        {
          v91 = v200;
          v92 = sub_10000C888(v198, v199);
          *(&v202 + 1) = v90;
          v203 = *(v91 + 8);
          v93 = sub_10000D134(&v201);
          (*(*(v90 - 8) + 16))(v93, v92, v90);
          sub_10000C620(v198);
        }

        else
        {
          sub_10000C8CC(v198, &qword_10092BC30, &qword_1007AD5C0);
          v201 = 0u;
          v202 = 0u;
          v203 = 0;
        }

        v94 = v183;
        v95 = v184;
        sub_10000C824(v184 + v183[12], v198);
        sub_10000C824(v95 + v94[13], &v197);
        v195 = &type metadata for Double;
        v196 = &protocol witness table for Double;
        v194 = 0x4020000000000000;
        sub_100747164();
        sub_10000C620(v214);
        sub_10000C8CC(&v217, &unk_100928A00, &qword_1007A5AB0);
        v96 = *(v182 + v179[9]);
        sub_10000C518(&qword_100928A10, &qword_1007AC450);
        v97 = *(v162 + 72);
        v98 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        if (v96)
        {
          if (v96 == 1)
          {
            v167 = swift_allocObject();
            v99 = (v167 + v98);
            sub_100016B4C(v178, v167 + v98, &qword_1009289F8, &unk_1007BE1C0);
            v100 = v192 + 16;
            (*(v192 + 16))(&v99[v97], v88, v63);
            v157(&v99[v97], 0, 1, v63);
            sub_100016B4C(v181, &v99[2 * v97], &qword_1009289F8, &unk_1007BE1C0);
            v101 = (v100 + 32);
            v190 = (v100 + 16);
            v102 = _swiftEmptyArrayStorage;
            v103 = 3;
            v185 = v97;
            v186 = v99;
            v104 = v99;
            v105 = &qword_1009289F8;
            v188 = v101;
            do
            {
              v106 = v189;
              sub_100016B4C(v104, v189, v105, &unk_1007BE1C0);
              sub_100501368(v106, v89);
              v107 = v193;
              if ((*v101)(v89, 1, v193) == 1)
              {
                sub_10000C8CC(v89, v105, &unk_1007BE1C0);
              }

              else
              {
                v108 = v105;
                v109 = *v190;
                (*v190)(v191, v89, v107);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v102 = sub_100255918(0, *(v102 + 2) + 1, 1, v102);
                }

                v111 = *(v102 + 2);
                v110 = *(v102 + 3);
                if (v111 >= v110 >> 1)
                {
                  v102 = sub_100255918((v110 > 1), v111 + 1, 1, v102);
                }

                v101 = v188;
                *(v102 + 2) = v111 + 1;
                v109(&v102[((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v111], v191, v193);
                v89 = v187;
                v105 = v108;
                v97 = v185;
              }

              v104 += v97;
              --v103;
            }

            while (v103);
            swift_setDeallocating();
            swift_arrayDestroy();
            v66 = v160;
            v53 = v165;
            v63 = v193;
          }

          else
          {
            v124 = swift_allocObject();
            v125 = v124 + v98;
            sub_100016B4C(v178, v124 + v98, &qword_1009289F8, &unk_1007BE1C0);
            v126 = v192;
            (*(v192 + 16))(v124 + v98 + v97, v88, v63);
            v157((v124 + v98 + v97), 0, 1, v63);
            v127 = v153;
            sub_100016B4C(v124 + v98, v153, &qword_1009289F8, &unk_1007BE1C0);
            v128 = v151;
            sub_100501368(v127, v151);
            v129 = *(v126 + 48);
            v130 = (v126 + 32);
            if (v129(v128, 1, v63) == 1)
            {
              sub_10000C8CC(v128, &qword_1009289F8, &unk_1007BE1C0);
              v131 = _swiftEmptyArrayStorage;
            }

            else
            {
              v167 = v124;
              v132 = *v130;
              (*v130)(v154, v128, v63);
              v131 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v131 = sub_100255918(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v134 = *(v131 + 2);
              v133 = *(v131 + 3);
              if (v134 >= v133 >> 1)
              {
                v131 = sub_100255918((v133 > 1), v134 + 1, 1, v131);
              }

              *(v131 + 2) = v134 + 1;
              v135 = &v131[((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v134];
              v63 = v193;
              v132(v135, v154, v193);
              v128 = v151;
            }

            v136 = v125 + v97;
            v137 = v153;
            sub_100016B4C(v136, v153, &qword_1009289F8, &unk_1007BE1C0);
            sub_100501368(v137, v128);
            if (v129(v128, 1, v63) == 1)
            {
              sub_10000C8CC(v128, &qword_1009289F8, &unk_1007BE1C0);
              v66 = v160;
            }

            else
            {
              v138 = *v130;
              (*v130)(v154, v128, v63);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v66 = v160;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v131 = sub_100255918(0, *(v131 + 2) + 1, 1, v131);
              }

              v141 = *(v131 + 2);
              v140 = *(v131 + 3);
              if (v141 >= v140 >> 1)
              {
                v131 = sub_100255918((v140 > 1), v141 + 1, 1, v131);
              }

              *(v131 + 2) = v141 + 1;
              v138(&v131[((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v141], v154, v63);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
            v53 = v165;
          }
        }

        else
        {
          v167 = swift_allocObject();
          v112 = v167 + v98;
          sub_100016B4C(v178, v167 + v98, &qword_1009289F8, &unk_1007BE1C0);
          sub_100016B4C(v181, v112 + v97, &qword_1009289F8, &unk_1007BE1C0);
          v113 = v192 + 16;
          (*(v192 + 16))(v112 + 2 * v97, v88, v63);
          v114 = v63;
          v157((v112 + 2 * v97), 0, 1, v63);
          v187 = (v113 + 32);
          v189 = (v113 + 16);
          v191 = _swiftEmptyArrayStorage;
          v115 = 3;
          v166 = v112;
          v116 = v186;
          do
          {
            v117 = v97;
            v118 = v188;
            sub_100016B4C(v112, v188, &qword_1009289F8, &unk_1007BE1C0);
            sub_100501368(v118, v116);
            if ((*v187)(v116, 1, v114) == 1)
            {
              sub_10000C8CC(v116, &qword_1009289F8, &unk_1007BE1C0);
            }

            else
            {
              v119 = *v189;
              (*v189)(v190, v116, v114);
              v120 = v191;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v120 = sub_100255918(0, *(v120 + 2) + 1, 1, v120);
              }

              v122 = *(v120 + 2);
              v121 = *(v120 + 3);
              if (v122 >= v121 >> 1)
              {
                v120 = sub_100255918((v121 > 1), v122 + 1, 1, v120);
              }

              *(v120 + 2) = v122 + 1;
              v123 = (*(v192 + 80) + 32) & ~*(v192 + 80);
              v191 = v120;
              v114 = v193;
              v119(&v120[v123 + *(v192 + 72) * v122], v190);
              v116 = v186;
            }

            v97 = v117;
            v112 += v117;
            --v115;
          }

          while (v115);
          swift_setDeallocating();
          swift_arrayDestroy();
          v66 = v160;
          v53 = v165;
          v63 = v114;
        }

        swift_deallocClassInstance();
        v219 = 0;
        v217 = 0u;
        v218 = 0u;
        sub_100016B4C(&v217, v214, &unk_100928A00, &qword_1007A5AB0);
        v142 = v179;
        v143 = v182;
        v144 = *(v182 + v179[14]);
        v213[3] = &type metadata for CGFloat;
        v213[4] = &protocol witness table for CGFloat;
        v213[0] = v144;
        (*(v168 + 16))(v170, v182 + v179[10], v169);
        (*(v171 + 16))(v173, v143 + v142[11], v172);
        (*(v175 + 104))(v174, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v176);
        sub_100747104();
        sub_100753BA4();
        sub_1005013D8(&qword_100928A18, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
        sub_100750404();
        v214[0] = v145;
        v214[1] = v146;
        sub_100753BB4();
        if (JUScreenClassGetMain() != 1)
        {

          (*(v177 + 8))(v53, v66);
          (*(v192 + 8))(v180, v63);
          sub_1003B6E50(v184);
          sub_10000C8CC(v220, &qword_10092BC30, &qword_1007AD5C0);
          sub_10000C8CC(v222, &qword_10092BC30, &qword_1007AD5C0);
          sub_10000C8CC(v181, &qword_1009289F8, &unk_1007BE1C0);
          sub_10000C8CC(v178, &qword_1009289F8, &unk_1007BE1C0);
          goto LABEL_62;
        }

        v58 = v177;
        v59 = v178;
        v60 = v180;
        if (qword_100920AD0 != -1)
        {
          swift_once();
        }

        v147 = sub_10000D0FC(v183, qword_10097FF28);
        v62 = v150;
        if (sub_10010A2FC((v182 + v150), v147))
        {

          (*(v58 + 8))(v53, v66);
          (*(v192 + 8))(v60, v63);
          sub_1003B6E50(v184);
          sub_10000C8CC(v220, &qword_10092BC30, &qword_1007AD5C0);
          sub_10000C8CC(v222, &qword_10092BC30, &qword_1007AD5C0);
          sub_10000C8CC(v181, &qword_1009289F8, &unk_1007BE1C0);
          sub_10000C8CC(v59, &qword_1009289F8, &unk_1007BE1C0);
LABEL_62:
          sub_10000C8CC(&v217, &unk_100928A00, &qword_1007A5AB0);

          return;
        }

        if (qword_100920AD8 == -1)
        {
LABEL_61:
          v148 = sub_10000D0FC(v183, qword_10097FF40);
          sub_10010A2FC((v182 + v62), v148);

          (*(v58 + 8))(v53, v66);
          (*(v192 + 8))(v60, v63);
          sub_1003B6E50(v184);
          sub_10000C8CC(v220, &qword_10092BC30, &qword_1007AD5C0);
          sub_10000C8CC(v222, &qword_10092BC30, &qword_1007AD5C0);
          sub_10000C8CC(v181, &qword_1009289F8, &unk_1007BE1C0);
          sub_10000C8CC(v59, &qword_1009289F8, &unk_1007BE1C0);
          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_61;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  __break(1u);
}

id sub_100500AE0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x800000010076E360 == a3 || (sub_100754754() & 1) != 0)
  {
    v9 = sub_100753064();
    v10 = sub_100753064();
    v11.super.isa = sub_100741704().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v10 = sub_100753064();
    v11.super.isa = sub_100741704().super.isa;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v10, v11.super.isa);
  }

  return v12;
}

id sub_100500C34(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100753094();
  v13 = v12;
  sub_100741744();
  v14 = a3;
  v15 = a1;
  v16 = sub_100500AE0(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_100500D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 != 0xD000000000000039 || 0x800000010076E360 != a4) && (sub_100754754() & 1) == 0)
  {
    v25 = sub_100753064();
    isa = sub_100741704().super.isa;
    v26.receiver = v5;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v25, isa);

    goto LABEL_14;
  }

  type metadata accessor for TitleHeaderView(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = sub_1004C4774();
  if (v15 > 40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 40.0;
  }

  [v14 setLayoutMargins:{0.0, v16, 0.0, v16}];
  v17 = (v14 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v17 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v17[1] = 0;

  v18 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel;
  [*(v14 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel) setNumberOfLines:0];
  [*(v14 + v18) setAllowsDefaultTighteningForTruncation:1];
  [*(v14 + v18) setTextAlignment:1];
  v19 = sub_1004C4774();
  if (v19 <= 40.0)
  {
    v19 = 40.0;
  }

  v20 = (v14 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset);
  *v20 = 0.0;
  v20[1] = v19;
  v20[2] = 0.0;
  v20[3] = v19;
  [v14 setNeedsLayout];
  if (qword_100921EA0 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v11, qword_100983178);
  sub_10010A978(v21, v13, type metadata accessor for TitleHeaderView.Style);
  (*((swift_isaMask & *v14) + 0x1C8))(v13);
  sub_10074AB34();
  if (v22)
  {
    v23 = *(v14 + v18);
    isa = sub_100753064();

    [v23 setText:isa];
LABEL_14:
  }
}

uint64_t sub_1005010B4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100753094();
  v15 = v14;
  sub_100741744();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_100500D74(v16, v17, v13, v15);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for PrivacyDefinitionsViewController(uint64_t a1)
{
  result = qword_10093B830;
  if (!qword_10093B830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100501368(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009289F8, &unk_1007BE1C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005013D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100501420()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_100501484(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746994();
  v9 = sub_100741784();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = a1;
        v15 = v13(ObjectType, v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = [Strong view];

          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = [v18 safeAreaLayoutGuide];

          [v19 layoutFrame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v39.origin.x = v21;
          v39.origin.y = v23;
          v39.size.width = v25;
          v39.size.height = v27;
          MinY = CGRectGetMinY(v39);
        }

        else
        {
          MinY = 0.0;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *&v29[qword_10097D2D8];
          if (v31)
          {
            v32 = v15 - MinY;

            if (v32 == *(v31 + 32))
            {

              return;
            }

            *(v31 + 32) = v32;
            [a3 _systemContentInset];
            v34 = v33;
            [a3 contentOffset];
            v36 = v35;
            [a3 contentInset];
            (*(v31 + 16))(v34 + v36 + v37 > *(v31 + 32));
          }

          else
          {
          }
        }
      }
    }
  }
}

id sub_10050174C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_placement];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007A5A00;
  *(v18 + 32) = sub_100751544();
  *(v18 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v16;
}

void sub_100501AE8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] removeFromSuperview];
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

double sub_100501BB4()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

void sub_100501C2C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v7 = a1;

  if (a1)
  {
    v6 = [v1 contentView];
    [v6 addSubview:v7];

    [v7 updateTraitsIfNeeded];
    [v7 setNeedsLayout];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void (*sub_100501D2C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_100501D84;
}

void sub_100501D84(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v8 = v2;
    sub_100501C2C(v2);
LABEL_8:

    return;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *&v3[v4];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v3[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v3[v4] = v2;
  v8 = v2;

  if (v2)
  {
    v7 = [v3 contentView];
    [v7 addSubview:v8];

    [v8 updateTraitsIfNeeded];
    [v8 setNeedsLayout];
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    goto LABEL_8;
  }
}

id sub_100501E9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100501F6C(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100502010()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_100502068(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void *sub_100502128()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100502174(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10050222C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView);
  v2 = v1;
  return v1;
}

void (*sub_100502260(void *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100501D2C(v2);
  return sub_100018728;
}

double sub_1005022D0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2 && (v3 = objc_opt_self(), v4 = [v3 mainScreen], objc_msgSend(v4, "bounds"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v31.origin.x = v6, v31.origin.y = v8, v31.size.width = v10, v31.size.height = v12, Width = CGRectGetWidth(v31), v14 = objc_msgSend(v3, "mainScreen"), objc_msgSend(v14, "bounds"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v32.origin.x = v16, v32.origin.y = v18, v32.size.width = v20, v32.size.height = v22, CGRectGetHeight(v32) < Width))
  {
    v23 = [v0 contentView];
    [v23 bounds];

    v24 = [v3 mainScreen];
    [v24 bounds];

    v25 = [v0 contentView];
    [v25 bounds];

    sub_100753AD4();
    return v26;
  }

  else
  {
    v28 = [v0 contentView];
    [v28 bounds];
    v27 = v29;
  }

  return v27;
}

void sub_100502514()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
}

id sub_100502668(char *a1)
{
  [*&a1[OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] updateTraitsIfNeeded];

  return [a1 setNeedsLayout];
}

uint64_t sub_1005026BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_10093BF48);
  v4 = *(v1 + qword_10093BF50);
  v5 = type metadata accessor for TopChartsSegmentPageGridProvider();
  v6 = swift_allocObject();
  sub_100744594();
  swift_allocObject();
  *(v6 + 24) = sub_100744584();
  *(v6 + 16) = v3;
  *(v6 + 17) = v4;
  a1[3] = v5;
  result = sub_100502C28(&qword_10093C500, type metadata accessor for TopChartsSegmentPageGridProvider, &unk_1007C9D14);
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_100502788@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  a1[3] = &type metadata for TopChartSegmentPageShelfLayoutSpacingProvider;
  result = sub_100502BD4();
  a1[4] = result;
  *a1 = sub_100502BB4;
  a1[1] = v2;
  return result;
}

void *sub_1005027FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TopChartSegmentShelfSupplementaryProvider();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_100502C70;
  v3[4] = v2;
  sub_100502C28(&qword_10093C4F0, type metadata accessor for TopChartSegmentShelfSupplementaryProvider, &unk_1007ADCAC);

  return v3;
}

uint64_t sub_1005028CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong[qword_10093BF48];

  return v2;
}

double sub_100502930(char a1, char a2)
{
  swift_getObjectType();
  v5 = qword_10093BF48;
  *(v2 + qword_10093BF48) = a1 & 1;
  *(v2 + qword_10093BF50) = a2 & 1;
  sub_100502C28(&qword_10093C4E0, type metadata accessor for TopChartDiffableSegmentViewController, &unk_1007B7520);
  sub_10074D9D4();
  sub_10000C518(&qword_100930960, &qword_1007B7738);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  if (swift_dynamicCast())
  {
    *(v7 + 16) = *(v2 + v5);
    *(v7 + 17) = a2 & 1;
    sub_100502C28(&qword_10093C4E8, type metadata accessor for TopChartsSegmentPageGridProvider, &unk_1007C9CD4);
    sub_100745694();
  }

  return result;
}

uint64_t type metadata accessor for TopChartDiffableSegmentViewController(uint64_t a1)
{
  result = qword_10093BF80;
  if (!qword_10093BF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100502B28()
{
  result = qword_10093C4D8;
  if (!qword_10093C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C4D8);
  }

  return result;
}

uint64_t sub_100502B7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100502BD4()
{
  result = qword_10093C4F8;
  if (!qword_10093C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C4F8);
  }

  return result;
}

uint64_t sub_100502C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100502C74()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_100502CAC(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100502D04;
}

void sub_100502D04(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_100324A1C(v2);
  }

  else
  {
    sub_100324A1C(*a1);
  }
}

uint64_t sub_100502D9C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100502F70(&qword_100933098, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007C7820);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_100502E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_100502F70(&qword_100933098, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007C7820);

  return a3(ObjectType, v4);
}

uint64_t sub_100502F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100502FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v7 = sub_100750B04();
  sub_10000D0FC(v7, qword_1009820B0);
  sub_1007502D4();
  sub_100750564();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

unint64_t sub_1005031B0(uint64_t a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52 = sub_1007484E4();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100748504();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10074CD14();
  v11 = *(v62 - 8);
  __chkstk_darwin(v62);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921240 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v14, qword_1009813F8);
  v58 = a7;
  v19 = [a7 traitCollection];
  v63 = sub_100753C14();

  (*(v15 + 16))(v17, v18, v14);
  v20 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v21 = objc_allocWithZone(v20);
  v22 = sub_10004DA8C(v17, 0, 0, 1);
  sub_1007445E4();
  v23 = sub_100743EA4();
  sub_1001D3738(v23, sub_1000E12F0);
  v25 = v24;

  v26 = sub_100743E94();
  sub_10004DF04(v26, 0, v25);

  result = sub_1007445D4();
  v28 = result;
  if (result >> 62)
  {
    v48 = result;
    result = sub_100754664();
    v28 = v48;
    v29 = result;
  }

  else
  {
    v29 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = a1;
  v50 = v20;
  v49 = v22;
  if (v29)
  {
    if (v29 < 1)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v60 = v28 & 0xC000000000000001;
    v59 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v31 = _swiftEmptyArrayStorage;
    v61 = v28;
    do
    {
      if (v60)
      {
        sub_100754574();
      }

      else
      {
      }

      sub_10074CFD4();
      sub_100743E94();

      v32 = v63;
      v33 = sub_100743074();

      v34 = sub_10074F3F4();
      v71 = v34;
      v72 = sub_100504318(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v35 = sub_10000D134(v70);
      (*(*(v34 - 8) + 104))(v35, v59, v34);
      v36 = v33;
      v37 = v32;
      sub_10074FC74();
      sub_10000C620(v70);
      sub_10074CCD4();
      sub_10074CCE4();
      (*(v11 + 8))(v13, v62);
      sub_10000C824(v70, &v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100254FA8(0, v31[2] + 1, 1, v31);
      }

      v39 = v31[2];
      v38 = v31[3];
      if (v39 >= v38 >> 1)
      {
        v31 = sub_100254FA8((v38 > 1), v39 + 1, 1, v31);
      }

      ++v30;

      sub_10000C620(v70);
      v31[2] = v39 + 1;
      sub_100032CCC(&v67, &v31[5 * v39 + 4]);
    }

    while (v29 != v30);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v40 = [v58 traitCollection];
  sub_100751364();

  v41 = sub_100750F34();
  swift_allocObject();
  v42 = sub_100750F14();
  if (qword_100920B80 != -1)
  {
    swift_once();
  }

  v43 = v52;
  v44 = sub_10000D0FC(v52, qword_100980170);
  (*(v51 + 16))(v54, v44, v43);
  sub_1007445C4();
  v71 = v50;
  v72 = &protocol witness table for UIView;
  v70[0] = v49;
  v45 = v49;
  sub_100157548(v31);

  v68 = v41;
  v69 = &protocol witness table for LayoutViewPlaceholder;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  *&v67 = v42;
  v65 = v41;
  v64 = v42;
  swift_retain_n();
  v46 = v55;
  sub_1007484F4();
  sub_100504318(&unk_1009332B0, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
  v47 = v57;
  sub_100750404();

  return (*(v56 + 8))(v46, v47);
}

void *sub_100503A2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v7 = sub_100751344();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_100933250, &unk_1007B3A50);
  __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  v68 = sub_10000C518(&unk_100935110, &unk_1007BD1E0);
  v14 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - v15;
  v16 = sub_10000C518(&unk_100933290, &unk_1007BA6D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v70[0] = sub_1007445E4();
  sub_100743EB4();
  v19 = sub_100752764();
  sub_100504318(&qword_100933028, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v69 = a3;
  v66 = v19;
  sub_100752684();

  v20 = sub_10000C518(&unk_1009332A0, &qword_1007ADB60);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100349358(v18, v4 + v21, &unk_100933290, &unk_1007BA6D0);
  swift_endAccess();
  sub_1003DE7E0();
  sub_10000C8CC(v18, &unk_100933290, &unk_1007BA6D0);
  LOBYTE(v19) = sub_1007445C4();
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v19 & 1;
  v22 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  if (v19)
  {
    v23 = sub_100753DD4();
  }

  else
  {
    v23 = sub_100753DF4();
  }

  v24 = *(v22 + qword_100924048);
  *(v22 + qword_100924048) = v23;
  v25 = v23;
  if ((sub_100753FC4() & 1) == 0)
  {
    sub_10004E2D4();
  }

  v26 = sub_1007445D4();
  if (v26 >> 62)
  {
    v57 = v26;
    v27 = sub_100754664();
    v26 = v57;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v4;
  v60 = a1;
  if (v27)
  {
    v28 = v26;
    v70[0] = _swiftEmptyArrayStorage;
    result = sub_10001E2E8(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v31 = v70[0];
    v32 = v28;
    v65 = v28 & 0xC000000000000001;
    v33 = v28;
    v34 = v27;
    do
    {
      if (v65)
      {
        v35 = sub_100754574();
      }

      else
      {
        v35 = *(v32 + 8 * v30 + 32);
      }

      v73 = v35;
      sub_10074CFE4();
      sub_100504318(&unk_100935120, &type metadata accessor for PrivacyHeaderSupplementaryItem, &protocol conformance descriptor for PrivacyHeaderSupplementaryItem);
      v36 = v67;
      sub_100752684();

      v70[0] = v31;
      v38 = v31[2];
      v37 = v31[3];
      if (v38 >= v37 >> 1)
      {
        sub_10001E2E8((v37 > 1), v38 + 1, 1);
        v31 = v70[0];
      }

      ++v30;
      v31[2] = v38 + 1;
      (*(v14 + 32))(v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, v36, v68);
      v32 = v33;
    }

    while (v34 != v30);

    v4 = v64;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  sub_1003E000C();
  v39 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v31;

  sub_1003DEA84();
  if (sub_1007445C4())
  {
    v40 = *(v63 + 104);
    v63 += 104;
    v41 = v58;
    LODWORD(v68) = enum case for Separator.Position.top(_:);
    v67 = v40;
    (v40)(v58);
    v42 = sub_1007507D4();
    v71 = v42;
    v72 = &protocol witness table for ZeroDimension;
    sub_10000D134(v70);
    sub_1007507C4();
    v43 = v61;
    sub_100751354();
    v44 = sub_100751374();
    v45 = 1;
    v69 = *(*(v44 - 8) + 56);
    v69(v43, 0, 1, v44);
    v46 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_100349358(v43, v64 + v46, &qword_100933250, &unk_1007B3A50);
    swift_endAccess();
    sub_1003DF240();
    v47 = v64;
    sub_10000C8CC(v43, &qword_100933250, &unk_1007B3A50);
    if (*(*(v47 + v39) + 16))
    {
      (v67)(v41, v68, v62);
      v71 = v42;
      v72 = &protocol witness table for ZeroDimension;
      sub_10000D134(v70);
      sub_1007507C4();
      v48 = v59;
      sub_100751354();
      v45 = 0;
    }

    else
    {
      v48 = v59;
    }

    v69(v48, v45, 1, v44);
    v56 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v47 + v56;
    v55 = v48;
  }

  else
  {
    v49 = sub_100751374();
    v50 = *(*(v49 - 8) + 56);
    v48 = v61;
    v50(v61, 1, 1, v49);
    v51 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_100349358(v48, v64 + v51, &qword_100933250, &unk_1007B3A50);
    swift_endAccess();
    sub_1003DF240();
    sub_10000C8CC(v48, &qword_100933250, &unk_1007B3A50);
    v50(v48, 1, 1, v49);
    v52 = v64;
    v53 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v48;
  }

  sub_100349358(v55, v54, &qword_100933250, &unk_1007B3A50);
  swift_endAccess();
  sub_1003DF254();
  return sub_10000C8CC(v48, &qword_100933250, &unk_1007B3A50);
}

uint64_t sub_100504318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100504410()
{
  v0 = sub_1007504F4();
  __chkstk_darwin(v0 - 8);
  v26[3] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26[2] = v26 - v3;
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742014();
  sub_100039C50(v8, qword_100982190);
  v26[1] = sub_10000D0FC(v8, qword_100982190);
  v68[8] = &type metadata for Double;
  v68[9] = &protocol witness table for Double;
  v68[5] = 0x4024000000000000;
  if (qword_100921758 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_10093C560);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v30 = v11 + 16;
  v31 = v12;
  v12(v7, v10, v9);
  v13 = v5[13];
  v29 = enum case for FontSource.useCase(_:);
  v28 = v13;
  v13(v7);
  v14 = sub_100750B04();
  v68[3] = v14;
  v68[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v68);
  v66 = v4;
  v67 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v65);
  v27 = v5[2];
  v27(v15, v7, v4);
  sub_100750B14();
  v16 = v5[1];
  v16(v7, v4);
  if (qword_100921760 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v9, qword_10093C578);
  v31(v7, v17, v9);
  v28(v7, v29, v4);
  v66 = v14;
  v67 = &protocol witness table for StaticDimension;
  sub_10000D134(v65);
  v63 = v4;
  v64 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v62);
  v27(v18, v7, v4);
  sub_100750B14();
  v16(v7, v4);
  if (qword_100921768 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v9, qword_10093C590);
  v31(v7, v19, v9);
  v28(v7, v29, v4);
  v63 = v14;
  v64 = &protocol witness table for StaticDimension;
  sub_10000D134(v62);
  v60 = v4;
  v61 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v59);
  v27(v20, v7, v4);
  sub_100750B14();
  v16(v7, v4);
  if (qword_100921770 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v9, qword_10093C5A8);
  v31(v7, v21, v9);
  v28(v7, v29, v4);
  v60 = v14;
  v61 = &protocol witness table for StaticDimension;
  sub_10000D134(v59);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v56);
  v27(v22, v7, v4);
  sub_100750B14();
  v16(v7, v4);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v14, qword_100982098);
  v57 = v14;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_10000D134(v56);
  (*(*(v14 - 8) + 16))(v24, v23, v14);
  v55 = &protocol witness table for Double;
  v54 = &type metadata for Double;
  v52 = &protocol witness table for Double;
  v53 = 0x4034000000000000;
  v51 = &type metadata for Double;
  v50 = 0x4057400000000000;
  sub_100750504();
  sub_100750504();
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v46 = &protocol witness table for Double;
  v47 = 0x3FAC9107B0E4883ELL;
  v45 = &type metadata for Double;
  v43 = &protocol witness table for Double;
  v44 = 0x3FAC9107B0E4883ELL;
  v42 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  v41 = 0x3FAC0E070381C0E0;
  v39 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v38 = 0x3FA6CB65B2D96CB6;
  v36 = &type metadata for Double;
  v34 = &protocol witness table for Double;
  v35 = 0x4034000000000000;
  v33 = &type metadata for Double;
  v32 = 0x4034000000000000;
  return sub_100741FF4();
}

uint64_t sub_100504B08()
{
  v0 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v0, qword_10093C5C0);
  sub_10000D0FC(v0, qword_10093C5C0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

char *sub_100504BA4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100741E54();
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_100921778 != -1)
  {
    swift_once();
  }

  v21 = sub_100742014();
  v22 = sub_10000D0FC(v21, qword_100982190);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  v68 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
  *&v5[v23] = sub_100753E74();
  if (qword_100921758 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  v25 = sub_10000D0FC(v24, qword_10093C560);
  v26 = *(v24 - 8);
  v73 = *(v26 + 16);
  v73(v19, v25, v24);
  v72 = *(v26 + 56);
  v72(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v71 = enum case for DirectionalTextAlignment.none(_:);
  v70 = v27;
  v27(v16);
  v28 = sub_100745C84();
  v69 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel] = sub_100745C74();
  if (qword_100921760 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v24, qword_10093C578);
  v73(v19, v31, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_100921768 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v24, qword_10093C590);
  v73(v19, v33, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel] = sub_100745C74();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton] = sub_100154454(0);
  sub_100741DD4();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView] = sub_10027562C(v12, 1);
  if (qword_100921770 != -1)
  {
    swift_once();
  }

  v38 = sub_10000D0FC(v24, qword_10093C5A8);
  v73(v19, v38, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] = sub_100745C74();
  v40 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  v75.receiver = v5;
  v75.super_class = v40;
  v41 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel;
  [v46 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel]];

  v48 = [v45 contentView];
  [v48 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel]];

  v49 = [v45 contentView];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel;
  [v49 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel]];

  v51 = [v45 contentView];
  [v51 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton]];

  v52 = [v45 contentView];
  v53 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_body;
  [v52 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_body]];

  v54 = [v45 contentView];
  [v54 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView]];

  v55 = [v45 contentView];
  v56 = OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription;
  [v55 addSubview:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription]];

  v57 = [*&v45[v53] layer];
  [v57 setCornerRadius:20.0];

  v58 = *&v45[v47];
  v59 = [v45 tintColor];
  [v58 setTextColor:v59];

  v60 = *&v45[v50];
  v61 = sub_100753DF4();
  [v60 setTextColor:v61];

  [*&v45[v53] setBackgroundColor:*&v45[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor]];
  v62 = qword_100921780;
  v63 = *&v45[v56];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_10000D0FC(v64, qword_10093C5C0);
  v74 = v45;
  sub_100743464();

  sub_100753F54();
  v65 = *&v45[v56];
  v66 = sub_100753DF4();
  [v65 setTextColor:v66];

  return v45;
}

uint64_t sub_10050568C()
{
  v1 = v0;
  v2 = sub_100750354();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100742014();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742034();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  v66.receiver = v0;
  v66.super_class = v10;
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v11 = [v0 contentView];
  v38 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();

  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_metrics], v4);
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_offerButton];
  sub_1007477B4();
  v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v12[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v14 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v12[v14], v63);
    sub_10000C888(v63, v64);
    sub_10074AE54();
    v16 = v15;
    v18 = v17;
    sub_10000C620(v63);
    *v13 = v16;
    *(v13 + 1) = v18;
    v13[16] = 0;
  }

  sub_100742004();
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v20 = sub_100745C84();
  v64 = v20;
  v65 = &protocol witness table for UILabel;
  v63[0] = v19;
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  v61 = v20;
  v62 = &protocol witness table for UILabel;
  v60 = v21;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
  v58 = v20;
  v59 = &protocol witness table for UILabel;
  v57 = v22;
  v23 = type metadata accessor for OfferButton();
  v37[1] = v7;
  v55 = v23;
  v56 = &protocol witness table for UIView;
  v54 = v12;
  v37[0] = v12;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v52 = type metadata accessor for InAppPurchaseView(0);
  v53 = &protocol witness table for UIView;
  v50 = &protocol witness table for UILabel;
  v51 = v24;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  v49 = v20;
  v47 = &protocol witness table for UIView;
  v48 = v25;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_body];
  v46 = v38;
  v45 = v26;
  v27 = v19;
  v28 = v21;
  v29 = v22;
  v30 = v37[0];
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v39;
  sub_100742024();
  v35 = v42;
  sub_100741FD4();
  (*(v43 + 8))(v35, v44);
  return (*(v40 + 8))(v34, v41);
}

id sub_100505B30(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100921780 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v6, qword_10093C5C0);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

id sub_100505CD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(uint64_t a1)
{
  result = qword_10093C610;
  if (!qword_10093C610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100505E48(void *a1)
{
  v16 = [*(v1 + 16) view];
  if (v16)
  {
    [a1 _systemContentInset];
    v4 = v3;
    v6 = v5;
    [a1 contentOffset];
    v8 = v7;
    v10 = v9;
    [a1 contentInset];
    v12 = v6 + v8 + v11;
    v14 = v4 + v10 + v13;
    [a1 bounds];
    [v16 setFrame:{sub_100505F34(v12, v14, v15)}];
  }

  else
  {
    __break(1u);
  }
}

double sub_100505F34(double a1, double a2, double a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
  if (v6)
  {
    v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
  }

  else
  {
    v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell);
    v6 = 0;
  }

  v9 = v6;
  sub_10036E084(v8, v7, a3);

  type metadata accessor for ListTodayCardCollectionViewCell(0);
  swift_dynamicCastClass();
  return 0.0;
}

uint64_t sub_100506058()
{

  return swift_deallocClassInstance();
}

void sub_1005060C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  sub_100506328();
  if (sub_10074EF24())
  {
    v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_lockupView);
    v6 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v7 = qword_100920548;
    v8 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_100747064();
    sub_10000D0FC(v9, qword_10097E3A8);
    sub_100746F34();
    [v8 contentMode];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v8 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    v10 = *(v5 + v6);
    sub_1007433C4();
    sub_100507304(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v11 = v10;
    sub_100744204();
  }

  v12 = sub_10074EFA4();
  if (v12)
  {
    sub_10070D420(v12, a2);
  }
}

void sub_100506328()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_lockupView);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_100743384(v31, v5);

  v6 = *(v2 + v3);
  sub_1007433C4();
  sub_100507304(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100744274();

  v28 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_bundleView);
  v8 = sub_100704020();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_100754664();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_100754574();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon;
    v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon];
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    sub_100743384(v32, v16);

    v17 = *&v13[v14];
    sub_100744274();
  }

  while (v10 != v11);
LABEL_10:

  v18 = sub_100704038();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = sub_100754664();
    if (v20)
    {
LABEL_12:
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = sub_100754574();
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          ++v21;
          v24 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
          v25 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
          v33.value.super.isa = 0;
          v33.is_nil = 0;
          sub_100743384(v33, v26);

          v27 = *&v23[v24];
          sub_100744274();
        }

        while (v20 != v21);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  v29 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView];
  sub_100744274();
}

double sub_100506638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7)
{
  v101 = a5;
  v89 = a3;
  v90 = a4;
  v86 = a2;
  v84 = a1;
  v9 = sub_100754724();
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  v102 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F314();
  v99 = *(v11 - 8);
  v100 = v11;
  __chkstk_darwin(v11);
  v98 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A8C4();
  v96 = *(v13 - 8);
  v97 = v13;
  __chkstk_darwin(v13);
  v95 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10074CD14();
  v88 = *(v108 - 8);
  __chkstk_darwin(v108);
  v87 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007479B4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v74 - v21;
  v23 = sub_10074A8A4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v91 = v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v74 - v27;
  sub_100753BA4();
  v30 = v29;
  v32 = v31;
  ObjectType = swift_getObjectType();
  v33 = [a6 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v34 = sub_10000D0FC(v23, qword_10097E010);
  v35 = *(v24 + 16);
  v94 = v23;
  v81 = v35;
  v82 = v24 + 16;
  v35(v28, v34, v23);
  v36 = sub_100753804();
  v105 = a6;
  v93 = v24;
  if (v36)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v37 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v37 = qword_10093FF58;
  }

  v38 = sub_10000D0FC(v16, v37);
  v80 = v17;
  (*(v17 + 16))(v19, v38, v16);
  (*(v17 + 32))(v22, v19, v16);
  v79 = v33;
  v39 = [v33 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  v107 = v28;
  sub_10074A894();
  sub_10074A884();
  v40 = sub_100750F34();
  swift_allocObject();
  v78 = sub_100750F14();
  v41 = objc_opt_self();

  v76 = v41;
  v74[1] = [v41 preferredFontForTextStyle:UIFontTextStyleBody];
  v42 = sub_10074F3F4();
  v85 = v22;
  v43 = v42;
  v145[3] = v42;
  v44 = sub_100507304(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v83 = v16;
  v45 = v44;
  v145[4] = v44;
  v75 = v44;
  v46 = sub_10000D134(v145);
  v77 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v47 = *(v43 - 8);
  v106 = *(v47 + 104);
  v48 = v47 + 104;
  v106(v46);
  v74[2] = v48;
  sub_10074FC74();
  sub_10000C620(v145);
  v49 = v87;
  sub_10074CD04();
  sub_10074CCE4();
  v88 = *(v88 + 8);
  (v88)(v49, v108);

  v50 = [v41 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v144[3] = v43;
  v144[4] = v45;
  v51 = sub_10000D134(v144);
  v52 = v77;
  (v106)(v51, v77, v43);
  sub_10074FC74();
  sub_10000C620(v144);
  sub_10074CD04();
  sub_10074CCE4();
  v53 = v108;
  v54 = v88;
  (v88)(v49, v108);
  v55 = [v76 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v143[3] = v43;
  v143[4] = v75;
  v56 = sub_10000D134(v143);
  (v106)(v56, v52, v43);
  sub_10074FC74();
  sub_10000C620(v143);
  sub_10074CD04();
  sub_10074CCE4();
  v54(v49, v53);
  sub_10001BB7C();
  swift_allocObject();
  v57 = sub_100750F14();

  sub_10001BB7C();
  swift_allocObject();
  v58 = sub_100750F14();
  v59 = v94;
  v81(v91, v107, v94);
  v142 = &protocol witness table for LayoutViewPlaceholder;
  v141 = v40;
  v140 = v78;
  v139 = 0;
  *&v137[40] = 0u;
  v138 = 0u;
  sub_10000C824(v145, v137);
  sub_10000C824(v144, &v136);
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;

  v60 = sub_100750F24();
  v129 = &protocol witness table for LayoutViewPlaceholder;
  v128 = v40;
  v127 = v60;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v116 = 0u;
  *&v115[40] = 0u;
  sub_10000C824(v143, v115);
  v113 = v40;
  v114 = &protocol witness table for LayoutViewPlaceholder;
  v111 = &protocol witness table for LayoutViewPlaceholder;
  v112 = v57;
  v110 = v40;
  v109 = v58;
  v61 = v95;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1007A5CF0;
  v63 = v79;
  *(v62 + 32) = v79;
  v64 = v63;
  v65 = sub_100751044();
  sub_100507304(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v66 = v97;
  sub_100750404();

  (*(v96 + 8))(v61, v66);
  sub_10000C620(v143);
  sub_10000C620(v144);
  sub_10000C620(v145);
  (*(v80 + 8))(v85, v83);
  (*(v93 + 8))(v107, v59);
  v68 = v98;
  v67 = v99;
  v69 = v100;
  (*(v99 + 104))(v98, enum case for Artwork.Style.roundedRect(_:), v100);
  if (v101)
  {
    v70 = v101;
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for BundleView(0);

  sub_1007100EC(v68, v70, v105, v30, v32);

  (*(v67 + 8))(v68, v69);
  if (qword_100921A50 != -1)
  {
    swift_once();
  }

  v71 = qword_100982938;
  sub_10000C888(qword_100982920, qword_100982938);
  v72 = v102;
  sub_100536120(v71);
  sub_100750564();
  (*(v103 + 8))(v72, v104);
  return a7;
}

uint64_t sub_100507304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10050734C()
{
  v0 = sub_10074BCC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007478B4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MetadataRibbonItemViewType.borderedTextLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
    v6 = &unk_1009231E8;
    v7 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
    v8 = &unk_1007D71E8;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.editorsChoice(_:))
  {
    v5 = type metadata accessor for MetadataRibbonEditorsChoiceView(0);
    v6 = &unk_1009231E0;
    v7 = type metadata accessor for MetadataRibbonEditorsChoiceView;
    v8 = &unk_1007B40C8;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.imageWithLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v6 = &unk_1009231D8;
    v7 = type metadata accessor for MetadataRibbonIconWithLabelView;
    v8 = &unk_1007BAC78;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.starRating(_:))
  {
    v5 = type metadata accessor for MetadataRibbonStarRatingView(0);
    v6 = &unk_1009231F0;
    v7 = type metadata accessor for MetadataRibbonStarRatingView;
    v8 = &unk_1007D67F8;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.textLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonTagView(0);
    v6 = &unk_1009231C8;
    v7 = type metadata accessor for MetadataRibbonTagView;
    v8 = &unk_1007BBF00;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.divider(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBarView(0);
    v6 = &unk_1009231D0;
    v7 = type metadata accessor for MetadataRibbonBarView;
    v8 = &unk_1007C5B40;
  }

  else
  {
    if (v4 != enum case for MetadataRibbonItemViewType.highlightedText(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v5 = type metadata accessor for MetadataRibbonHighlightedTextView(0);
    v6 = &unk_1009231B8;
    v7 = type metadata accessor for MetadataRibbonHighlightedTextView;
    v8 = &unk_1007AAD40;
  }

  sub_100507670(v6, v7, v8);
  return v5;
}

uint64_t sub_100507670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1005076B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100754724();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920D80 != -1)
  {
    swift_once();
  }

  v13 = sub_100750B04();
  sub_10000D0FC(v13, qword_100980660);
  swift_getObjectType();
  sub_1007502D4();
  sub_100750564();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for SmallLockupView(0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v14 = sub_100747064();
  v15 = sub_10000D0FC(v14, qword_10097E3A8);
  sub_1001CF184(v15, a7, 0.0, 0.0);
  return a1;
}

uint64_t sub_10050789C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v30 - v20;
  v22 = [v3 contentView];
  [v22 layoutMargins];
  [v22 setLayoutMargins:?];

  v23 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView];
  v24 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_100742E24();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_100745E94();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = sub_10074F8B4();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_100656038(a1, v23, v21, a3, 0, 0, v17, v14, v8, v11);
  sub_10000C8CC(v8, &unk_100925520, &unk_1007A8120);
  v23[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1001CE71C();
  [v23 setNeedsLayout];
  sub_10000C8CC(v11, &unk_100925990, qword_1007BB900);
  sub_10000C8CC(v14, &unk_1009259A0, &unk_1007B0610);
  sub_10000C8CC(v17, &unk_100925530, &unk_1007A8130);
  return sub_10000C8CC(v21, &unk_100925540, &qword_1007A8140);
}

char *sub_100507CD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = sub_10074AB44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label;
  if (qword_100920EB0 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  v15 = sub_10000D0FC(v14, qword_100980960);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
  v17 = objc_allocWithZone(sub_100745C84());
  *&v4[v13] = sub_100745C74();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView;
  v19 = objc_allocWithZone(UIImageView);
  *&v4[v18] = [v19 init];
  v20 = type metadata accessor for AlertActionTrailingImageView();
  v36.receiver = v4;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label;
  v23 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label];
  v24 = v21;
  v25 = v23;
  if (a2)
  {
    v26 = sub_100753064();
  }

  else
  {
    v26 = 0;
  }

  [v23 setText:v26];

  v27 = *&v21[v22];
  v28 = v21;
  v29 = v27;
  v30 = [v28 tintColor];
  [v29 setTextColor:v30];

  [v28 addSubview:*&v21[v22]];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView;
  v32 = v35;
  [*&v28[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView] setImage:v35];
  [v28 addSubview:*&v28[v31]];
  [v28 setLayoutMargins:{10.0, 5.0, 10.0, 5.0}];

  return v28;
}

id sub_100508088()
{
  v1 = sub_100754724();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlertActionTrailingImageView();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "layoutSubviews");
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v0 layoutMargins];
  v16 = sub_10010FD98(v7, v9, v11, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView];
  v24 = [v23 image];
  v44.origin.x = v16;
  v44.origin.y = v18;
  v44.size.width = v20;
  v44.size.height = v22;
  MaxX = CGRectGetMaxX(v44);
  if (v24)
  {
    [v24 size];
    v45.origin.x = v16;
    v45.origin.y = v18;
    v45.size.width = v20;
    v45.size.height = v22;
    CGRectGetMidY(v45);
    [v24 size];
    (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.down(_:), v1);
    sub_100753D84();
    v27 = v26;
    v29 = v28;
    (*(v2 + 8))(v4, v1);
    [v24 size];
    v31 = v30;
    v33 = v32;
    sub_100753B24();
    [v23 setFrame:?];
    v46.origin.x = v27;
    v46.origin.y = v29;
    v46.size.width = v31;
    v46.size.height = v33;
    MinX = CGRectGetMinX(v46);

    MaxX = MinX + -10.0;
  }

  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v35 = MaxX - CGRectGetMinX(v47);
  if (v35 > 0.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label];
  v48.origin.x = v16;
  v48.origin.y = v18;
  v48.size.width = v20;
  v48.size.height = v22;
  [v37 sizeThatFits:{v36, CGRectGetHeight(v48)}];
  v42[1] = v38;
  v39 = [v23 image];
  if (v39)
  {
    v40 = v39;
    [v39 size];
  }

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  CGRectGetMidX(v49);
  v50.origin.x = v16;
  v50.origin.y = v18;
  v50.size.width = v20;
  v50.size.height = v22;
  CGRectGetMidY(v50);
  sub_100753B24();
  return [v37 setFrame:?];
}

double sub_100508614(double a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView] image];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    [v3 size];
    v4 = v6;
  }

  v7 = 10.0;
  if (v4 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = a1 - v4 - v7;
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label];
  type metadata accessor for AlertActionTrailingImageView();
  sub_1007477B4();
  [v10 sizeThatFits:{v9, CGRectGetHeight(v12)}];
  [v1 layoutMargins];
  [v1 layoutMargins];
  return a1;
}

id sub_100508798(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlertActionTrailingImageView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10050883C()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_label;
  if (qword_100920EB0 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100980960);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_100745C84());
  *(v1 + v9) = sub_100745C74();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension28AlertActionTrailingImageView_imageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  sub_100754644();
  __break(1u);
}

id sub_100508AAC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a1;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_maxRowsStandard) = a2;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_maxRowsAX) = a3;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_ribbonBarItemModels) = a1;

  v26 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v21 = v4;
    v22 = v5;
    v7 = 0;
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v24 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v24)
      {
        v8 = sub_100754574();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v7 >= *(v23 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v6 = sub_100754664();
          goto LABEL_3;
        }
      }

      v10 = [objc_allocWithZone(type metadata accessor for RibbonBarItemCollectionViewCell(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v11 = sub_1007446A4();
      if (v11)
      {
        v12 = v11;
        v13 = v6;
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v12;
        v16 = &v10[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction];
        v17 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction];
        v18 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction + 8];
        *v16 = sub_10050A1BC;
        v16[1] = v15;

        sub_1000164A8(v17, v18);
        v6 = v13;
        v5 = v22;
      }

      sub_1001C11D4(v8, v25);

      sub_100753284();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v4 = &v26;
      sub_100753344();
      ++v7;
      if (v9 == v6)
      {
        v19 = v26;
        v4 = v21;
        goto LABEL_18;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_18:
  sub_100509040(v19);
  return [v4 setNeedsLayout];
}

id sub_100508D80(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_tagFacetViews] = _swiftEmptyArrayStorage;
  sub_100748EE4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_ribbonBarItemModels] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_maxRowsStandard] = 2;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_maxRowsAX] = 5;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_100921788 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_10093C750];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007A5A00;
  *(v16 + 32) = sub_100751554();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v15;
}

void sub_100509040(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_tagFacetViews;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_tagFacetViews];
  if (v4 >> 62)
  {
    v5 = sub_100754664();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = a1;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    v10 = sub_100754664();
    if (v10)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_100754574();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  [v1 setNeedsLayout];
}

uint64_t sub_1005091F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v22 = sub_100750354();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100748EF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100748F04();
  v21 = *(v23 - 8);
  *&v9 = __chkstk_darwin(v23).n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "layoutSubviews", v9);

  sub_10015868C(v12);

  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_metrics], v5);
  sub_100748EB4();
  sub_1007477B4();
  sub_100748ED4();
  (*(v20 + 8))(v4, v22);
  v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 1);
    swift_endAccess();

    v14(v16);
    v17 = sub_1000164A8(v14, v15);
    return (*(v21 + 8))(v11, v23, v17);
  }

  else
  {
    (*(v21 + 8))(v11, v23);
    return swift_endAccess();
  }
}

double sub_10050954C(uint64_t a1, __n128 a2, double a3)
{
  v16[1] = a1;
  v4 = sub_100748EF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100748F04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10015868C(v12);

  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_metrics, v4);
  sub_100748EB4();
  sub_100748EC4();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  return v14;
}

void sub_100509864(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_100752914();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v49 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_ribbonBarItemModels];
      if (v49)
      {
        v13 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_tagFacetViews];
        v39 = v10;
        if (v13 >> 62)
        {
          goto LABEL_39;
        }

        for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
        {

          if (!i)
          {
            break;
          }

          v47 = v13 & 0xFFFFFFFFFFFFFF8;
          v48 = v13 & 0xC000000000000001;
          v15 = v49 & 0xFFFFFFFFFFFFFF8;
          if (v49 >= 0)
          {
            v16 = v49 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v16 = v49;
          }

          v37 = v16;
          v41 = (v6 + 32);
          v42 = (v6 + 48);
          v40 = (v6 + 8);
          v17 = 4;
          v45 = v49 & 0xC000000000000001;
          v46 = v49 >> 62;
          v43 = v49 & 0xFFFFFFFFFFFFFF8;
          v44 = i;
          v38 = v4;
          while (1)
          {
            v6 = v17 - 4;
            if (v48)
            {
              v18 = sub_100754574();
            }

            else
            {
              if (v6 >= *(v47 + 16))
              {
                goto LABEL_37;
              }

              v18 = *(v13 + 8 * v17);
            }

            v19 = v18;
            v20 = v17 - 3;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            if (v46)
            {
              if (v6 == sub_100754664())
              {
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (v6 == *(v15 + 16))
            {
              goto LABEL_33;
            }

            if (v45)
            {
              sub_100754574();
            }

            else
            {
              if (v6 >= *(v15 + 16))
              {
                goto LABEL_38;
              }
            }

            sub_1007446C4();
            if ((*v42)(v4, 1, v5) == 1)
            {

              sub_10045862C(v4);
            }

            else
            {
              (*v41)(v8, v4, v5);
              v21 = v19;
              if ([v21 isHidden])
              {
              }

              else
              {
                [v21 frame];
                v23 = v22;
                v25 = v24;
                v27 = v26;
                v29 = v28;

                v30 = v13;
                v31 = v12;
                v32 = v5;
                v33 = v8;
                v34 = v39;
                v35 = [v39 superview];
                v36 = v34;
                v8 = v33;
                v5 = v32;
                v12 = v31;
                v13 = v30;
                v4 = v38;
                [v36 convertRect:v35 toView:{v23, v25, v27, v29}];

                sub_100749544();
              }

              (*v40)(v8, v5);
            }

            ++v17;
            v15 = v43;
            if (v20 == v44)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          ;
        }

LABEL_34:
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for TagFacetRibbonView(uint64_t a1)
{
  result = qword_10093C798;
  if (!qword_10093C798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100509E04(uint64_t a1, __n128 a2)
{
  result = sub_100748EF4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_100509EC8()
{
  swift_beginAccess();

  return result;
}

double sub_100509F10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100509FC8()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_10050A024(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_10050A0E4(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_10050A2CC;
}

uint64_t sub_10050A184()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10050A1C4(void *a1)
{
  sub_10000C888(a1, a1[3]);
  v2 = sub_1007514C4();
  if (qword_100921788 != -1)
  {
    swift_once();
  }

  v3 = qword_10093C750;
  if (sub_100753944())
  {
    v3;
  }

  sub_10007271C(a1, a1[3]);
  return sub_1007514D4();
}

uint64_t sub_10050A290()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10050A2DC(uint64_t a1)
{
  v130 = a1;
  v1 = sub_100752AC4();
  v128 = *(v1 - 8);
  v129 = v1;
  __chkstk_darwin(v1);
  v127 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v126 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10074AB44();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v125 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100743B04();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100940810, qword_1007C7BF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v120 - v11;
  v13 = sub_100750534();
  v131 = *(v13 - 8);
  v132 = v13;
  __chkstk_darwin(v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v19 - 8);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  __chkstk_darwin(v25);
  v27 = &v120 - v26;
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v31);
  v33 = (&v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100415A30(v133, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v87 = objc_allocWithZone(type metadata accessor for SearchButton(0));

        sub_10065BF40(v88);
        return;
      }

      if (EnumCaseMultiPayload != 9)
      {
        v104 = v121;
        v105 = v120;
        v106 = v122;
        (*(v121 + 104))(v120, enum case for SystemImage.chevronForward(_:), v122);
        v107 = sub_100743AE4();
        (*(v104 + 8))(v105, v106);
        v108 = [v107 imageWithRenderingMode:2];

        v109 = [objc_allocWithZone(UIImageView) initWithImage:v108];
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        v110 = sub_100753E24();
        [v109 setTintColor:v110];

        return;
      }

      v47 = objc_opt_self();
      v48 = sub_100753064();
      v49 = [v47 kitImageNamed:v48];

      if (!v49)
      {
        __break(1u);
        return;
      }

      v50 = [v49 imageWithRenderingMode:2];

      v51 = [v50 imageFlippedForRightToLeftLayoutDirection];
      v52 = [objc_allocWithZone(UIImageView) initWithImage:v51];
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      isa = sub_100753F24(0.82098, 0.82153, 0.83748, 1.0).super.isa;
      [v52 setTintColor:isa];
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v79 = v33[1];
      if (qword_100920EA8 != -1)
      {
        swift_once();
      }

      v80 = v132;
      v81 = sub_10000D0FC(v132, qword_100980948);
      v82 = v131;
      (*(v131 + 16))(v21, v81, v80);
      (*(v82 + 56))(v21, 0, 1, v80);
      (*(v123 + 104))(v125, enum case for DirectionalTextAlignment.trailing(_:), v124);
      v83 = objc_allocWithZone(sub_100745C84());
      v84 = sub_100745C74();
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v85 = v84;
      v86 = sub_100753DF4();
      [v85 setTextColor:v86];

      if (v79)
      {
        v51 = sub_100753064();
      }

      else
      {
        v51 = 0;
      }

      [v85 setText:v51];
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v35 = v33[1];
        v36 = v33[2];
        sub_1007433C4();
        v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_10074F184();
        sub_10074F374();
        sub_10074F324();
        sub_100743364();
        [v37 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          sub_100753E34();
        }

        sub_100743224();
        v38 = sub_100743304();
        *(v39 + 16) = v35;
        *(v39 + 24) = v36;
        v38(&v134, 0);
        v40 = [objc_opt_self() clearColor];
        sub_100743224();
        memset(&v134, 0, 32);
        memset(v135, 0, 32);
        v41 = v37;
        v42 = v127;
        sub_100752A94();
        sub_10000C8CC(v135, &unk_100923520, &qword_1007A5A70);
        sub_10000C8CC(&v134, &unk_100923520, &qword_1007A5A70);
        sub_100753C74();
        (*(v128 + 8))(v42, v129);
        sub_1007442C4();
        sub_100752764();
        sub_100752D34();
        sub_10050E918(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100744204();

        return;
      }

      v51 = v33[2];
      v96 = v33[4];
      v97 = v33[6];
      v98 = [objc_opt_self() configurationWithFont:v51 scale:v33[3]];
      v99 = sub_100753064();

      v100 = [objc_opt_self() systemImageNamed:v99 withConfiguration:v98];

      v101 = [objc_opt_self() buttonWithType:0];
      [v101 setPreferredSymbolConfiguration:v98 forImageInState:0];
      [v101 setImage:v100 forState:0];
      [v101 setTintColor:v96];
      v102 = v101;
      if (v97)
      {
        v103 = sub_100753064();
      }

      else
      {
        v103 = 0;
      }

      [v101 setAccessibilityLabel:v103];
    }

LABEL_65:

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v54 = v33[1];
      v55 = v33[2];

      v56 = [objc_allocWithZone(type metadata accessor for HeaderButton(0)) init];
      sub_100747764();

      v57 = v56;
      if (v54)
      {
        v58 = sub_100753064();
      }

      else
      {
        v58 = 0;
      }

      [v56 setTitle:v58 forState:0];

      if (v55)
      {
        [v56 setTintColor:v55];

        return;
      }

      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v51 = sub_100753EF4();
      [v56 setTintColor:v51];

      goto LABEL_65;
    }

    v92 = v33[1];
    v93 = sub_10000C518(&qword_10093C958, &qword_1007C7CC8);
    sub_100066578(v33 + *(v93 + 48), v30, &unk_100928A40, qword_1007A6630);
    v94 = [objc_allocWithZone(type metadata accessor for HeaderButton(0)) init];
    sub_100747764();

    if (v92)
    {
      v95 = sub_100753064();
    }

    else
    {
      v95 = 0;
    }

    v113 = v131;
    v112 = v132;
    v114 = v24;
    [v94 setTitle:v95 forState:0];

    sub_100016B4C(v30, v24, &unk_100928A40, qword_1007A6630);
    v115 = *(v113 + 48);
    if (v115(v24, 1, v112) == 1)
    {
      v116 = qword_100920EA0;
      v117 = v94;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = sub_10000D0FC(v112, qword_100980930);
      (*(v113 + 16))(v27, v118, v112);
      if (v115(v114, 1, v112) != 1)
      {
        sub_10000C8CC(v114, &unk_100928A40, qword_1007A6630);
      }
    }

    else
    {
      (*(v113 + 32))(v27, v24, v112);
      v119 = v94;
    }

    (*(v113 + 56))(v27, 0, 1, v112);
    sub_1007466A4();

    sub_10000C8CC(v30, &unk_100928A40, qword_1007A6630);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v59 = v18;
    v60 = v33[2];
    v61 = *(v33 + 3);
    type metadata accessor for HeaderButton(0);
    v62 = qword_100920298;
    v63 = v60;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = v132;
    v65 = sub_10000D0FC(v132, qword_100928AA0);
    v66 = *(v131 + 16);
    v66(v18, v65, v64);
    v66(v15, v18, v64);
    v67 = sub_1007466B4();
    *&v67[qword_100928AC0] = v61;
    v68 = v67;
    v69 = [v68 traitCollection];
    v70 = sub_1007537F4();

    v71 = v68;
    v72 = v71;
    if (v70)
    {
      v73 = v61;
    }

    else
    {
      v73 = 0.0;
    }

    if (v70)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v61;
    }

    if (v70)
    {
      v75 = -v61;
    }

    else
    {
      v75 = v61;
    }

    if ((v70 & 1) == 0)
    {
      v61 = -v61;
    }

    [v71 setContentEdgeInsets:{0.0, v74, 0.0, v73}];
    [v72 setImageEdgeInsets:{0.0, v61, 0.0, v75}];
    v76 = sub_100753064();

    [v72 setTitle:v76 forState:0];

    [v72 setImage:v63 forState:0];
    CGAffineTransformMakeScale(&v134, -1.0, 1.0);
    [v72 setTransform:&v134];

    v77 = [v72 titleLabel];
    if (v77)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v77 setTransform:&v134];
    }

    v78 = [v72 imageView];

    if (v78)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v78 setTransform:&v134];

      (*(v131 + 8))(v59, v132);
    }

    else
    {
      (*(v131 + 8))(v59, v132);
    }

    v111 = v72;
    sub_100747764();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v43 = *v33;
    v44 = sub_10000C518(&qword_1009262D8, &unk_1007A99A0);
    sub_100066578(v33 + *(v44 + 48), v12, &unk_100940810, qword_1007C7BF0);
    sub_100016B4C(v12, v9, &unk_100940810, qword_1007C7BF0);
    v45 = objc_allocWithZone(type metadata accessor for AccountButton(0));
    v46 = v130;

    sub_1005F2040(v43, v9, v46);

    sub_10000C8CC(v12, &unk_100940810, qword_1007C7BF0);
  }

  else
  {
    v89 = *v33;
    v90 = v33[1];
    v91 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    sub_10011B550(1, v89, v90);
  }
}

void sub_10050B5A8(uint64_t a1)
{
  v56 = a1;
  v1 = sub_100742A34();
  v54 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100940810, qword_1007C7BF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_100750534();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100415A30(v55, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_100754844(4uLL);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_100754844(5uLL);
      }

      else
      {
        sub_100754844(6uLL);
      }

      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = *v21;
        v24 = *(v21 + 1);
        v25 = *(v21 + 2);
        sub_100754844(9uLL);
        v57 = v23;
        sub_10074F3D4();
        sub_10050E918(&qword_100936D20, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        sub_100752FB4();
        if (v24 == 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24;
        }

        sub_100754864(*&v26);
        if (v25 == 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v25;
        }

        sub_100754864(*&v27);

        return;
      }

      v43 = *(v21 + 2);
      v44 = *(v21 + 3);
      v45 = *(v21 + 4);
      v46 = *(v21 + 6);
      sub_100754844(0xAuLL);
      sub_100753174();

      sub_100753FD4();
      sub_100754844(v44);
      if (v45)
      {
        sub_100754854(1u);
        v47 = v45;
        sub_100753FD4();

        if (v46)
        {
LABEL_37:
          sub_100754854(1u);
          sub_100753174();

LABEL_53:

          return;
        }
      }

      else
      {
        sub_100754854(0);
        if (v46)
        {
          goto LABEL_37;
        }
      }

      sub_100754854(0);
      goto LABEL_53;
    }

    v39 = *(v21 + 1);
    sub_100754844(8uLL);
    if (v39)
    {
LABEL_32:
      sub_100754854(1u);
      sub_100753174();

      return;
    }

LABEL_41:
    sub_100754854(0);
    return;
  }

  v52 = v15;
  v55 = v12;
  v28 = v54;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v41 = *(v21 + 1);
      v42 = sub_10000C518(&qword_10093C958, &qword_1007C7CC8);
      sub_100066578(&v21[*(v42 + 48)], v18, &unk_100928A40, qword_1007A6630);
      sub_100754844(1uLL);
      if (v41)
      {
        sub_100754854(1u);
        sub_100753174();
      }

      else
      {
        sub_100754854(0);
      }

      v48 = v10;
      v50 = v52;
      v49 = v53;
      v51 = v55;
      sub_100016B4C(v18, v52, &unk_100928A40, qword_1007A6630);
      if ((*(v49 + 48))(v50, 1, v48) == 1)
      {
        sub_100754854(0);
      }

      else
      {
        (*(v49 + 32))(v51, v50, v48);
        sub_100754854(1u);
        sub_10050E918(&qword_10093C980, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
        sub_100752FB4();
        (*(v49 + 8))(v51, v48);
      }

      sub_10000C8CC(v18, &unk_100928A40, qword_1007A6630);
      return;
    }

    v32 = *(v21 + 1);
    v33 = *(v21 + 2);
    v34 = *(v21 + 4);
    sub_100754844(0);
    if (v32)
    {
      sub_100754854(1u);
      sub_100753174();

      if (v33)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_100754854(0);
      if (v33)
      {
LABEL_23:
        sub_100754854(1u);
        v35 = v33;
        sub_100753FD4();

        if (v34)
        {
LABEL_24:
          sub_100754854(1u);
          sub_100753174();

          return;
        }

LABEL_45:
        sub_100754854(0);

        return;
      }
    }

    sub_100754854(0);
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v21 + 2);
    v37 = *(v21 + 3);
    sub_100754844(2uLL);
    sub_100753174();

    sub_100753FD4();
    v38 = 0.0;
    if (v37 != 0.0)
    {
      v38 = v37;
    }

    sub_100754864(*&v38);
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      v40 = *(v21 + 1);
      sub_100754844(7uLL);
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    v29 = v9;
    v30 = *v21;
    v31 = sub_10000C518(&qword_1009262D8, &unk_1007A99A0);
    sub_100066578(&v21[*(v31 + 48)], v29, &unk_100940810, qword_1007C7BF0);
    sub_100754844(3uLL);
    sub_100754854(v30);
    sub_100016B4C(v29, v6, &unk_100940810, qword_1007C7BF0);
    if ((*(v28 + 48))(v6, 1, v1) == 1)
    {
      sub_100754854(0);
    }

    else
    {
      (*(v28 + 32))(v3, v6, v1);
      sub_100754854(1u);
      sub_10050E918(&qword_10093C978, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
      sub_100752FB4();
      (*(v28 + 8))(v3, v1);
    }

    sub_10000C8CC(v29, &unk_100940810, qword_1007C7BF0);
  }
}

Swift::Int sub_10050BE8C()
{
  sub_100754834();
  sub_10050B5A8(v1);
  return sub_100754884();
}

Swift::Int sub_10050BED0(uint64_t a1)
{
  sub_100754834();
  sub_10050B5A8(v2);
  return sub_100754884();
}

void sub_10050BF0C(void *a1)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_100750E94();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v10 = sub_100750BD4();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100743B04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v16);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  sub_100415A30(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 10)
    {
      (*(v13 + 104))(v15, enum case for SystemImage.chevronForward(_:), v12);
      v36 = sub_100743AE4();
      (*(v13 + 8))(v15, v12);
      [v36 size];

      return;
    }

    if (EnumCaseMultiPayload != 9)
    {
      goto LABEL_11;
    }

    v28 = objc_opt_self();
    v29 = sub_100753064();
    v30 = [v28 kitImageNamed:v29];

    if (!v30)
    {
      __break(1u);
      return;
    }

    [v30 size];
LABEL_15:

    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v33 = *v18;
    v34 = v18[1];
    v35 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    v30 = sub_10011B550(1, v33, v34);
    [v30 sizeThatFits:{0.0, 0.0}];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_100750E84();
    if (qword_100920EA8 != -1)
    {
      swift_once();
    }

    v20 = sub_100750534();
    sub_10000D0FC(v20, qword_100980948);
    sub_100750E54();
    v21 = *(v37 + 8);
    v21(v5, v3);
    sub_100750E74();
    v21(v8, v3);
    sub_100750BB4();
    v22 = v38;
    sub_100750BF4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007A5CF0;
    v24 = v42;
    *(v23 + 32) = v42;
    v25 = v24;
    v26 = sub_100751044();
    v27 = v41;
    sub_100750404();

    (*(v40 + 8))(v22, v27);
    return;
  }

LABEL_11:
  if (qword_100921ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_100752E44();
  sub_10000D0FC(v31, qword_1009832E8);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  sub_1007523A4();
  v43[3] = v16;
  v32 = sub_10000D134(v43);
  sub_100415A30(v39, v32);
  sub_100752424();
  sub_10000C8CC(v43, &unk_100923520, &qword_1007A5A70);
  sub_1007523A4();
  sub_100752CF4();

  sub_10007A554(v18);
}

void *sub_10050C5CC(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Accessory(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (v42 - v9);
  v11 = *(v1 + 32);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v42[1] = v8;
  v45 = _swiftEmptyArrayStorage;
  sub_1007545C4();
  v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v15 = *(v4 + 72);
  while (1)
  {
    sub_100415A30(v14, v10);
    swift_beginAccess();
    v18 = *(v2 + 40);
    if (*(v18 + 16))
    {
      v19 = sub_100412228(v10);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        swift_endAccess();
        v22 = v21;
        goto LABEL_5;
      }
    }

    swift_endAccess();
    sub_10050A2DC(v43);
    v24 = v23;
    sub_100415A30(v10, v6);
    swift_beginAccess();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v2 + 40);
    v27 = v44;
    *(v2 + 40) = 0x8000000000000000;
    v28 = sub_100412228(v6);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v27[3] < v33)
    {
      sub_10067007C(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_100412228(v6);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      v36 = v44;
      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v40 = v28;
    sub_100674D44();
    v28 = v40;
    v36 = v44;
    if ((v34 & 1) == 0)
    {
LABEL_15:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = v28;
      sub_100415A30(v6, v36[6] + v28 * v15);
      *(v36[7] + 8 * v37) = v25;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_22;
      }

      v36[2] = v39;
      goto LABEL_4;
    }

LABEL_3:
    v16 = v36[7];
    v17 = *(v16 + 8 * v28);
    *(v16 + 8 * v28) = v25;

LABEL_4:
    sub_10007A554(v6);
    *(v2 + 40) = v36;
    swift_endAccess();
LABEL_5:
    sub_10007A554(v10);
    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
    v14 += v15;
    if (!--v12)
    {
      return v45;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1007547B4();
  __break(1u);
  return result;
}

uint64_t sub_10050C8E8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (sub_1007537D4())
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_10050C924()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for NavigationAccessory.Location(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NavigationAccessory.Location(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for Accessory(uint64_t a1)
{
  result = qword_10093C8D0;
  if (!qword_10093C8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10050CB2C(uint64_t a1)
{
  sub_10050CC28(319);
  if (v1 <= 0x3F)
  {
    sub_10050CCB8(319);
    if (v2 <= 0x3F)
    {
      sub_10050CD44(319);
      if (v3 <= 0x3F)
      {
        sub_10050CDC8(319);
        if (v4 <= 0x3F)
        {
          sub_10050CE40(319, &qword_10093C900);
          if (v5 <= 0x3F)
          {
            sub_10050CE40(319, &qword_10093C908);
            if (v7 <= 0x3F)
            {
              sub_10050CE88(319, v6);
              if (v8 <= 0x3F)
              {
                sub_10050CEFC(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10050CC28(uint64_t a1)
{
  if (!qword_10093C8E0)
  {
    sub_10000C724(&qword_10092FE70, &qword_1007A63F0);
    sub_10000C724(&unk_100935100, &unk_1007C7BE0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10093C8E0);
    }
  }
}

void sub_10050CCB8(uint64_t a1)
{
  if (!qword_10093C8E8)
  {
    sub_10000C724(&qword_10092FE70, &qword_1007A63F0);
    sub_10000C724(&unk_100928A40, qword_1007A6630);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10093C8E8);
    }
  }
}

void sub_10050CD44(uint64_t a1)
{
  if (!qword_10093C8F0)
  {
    sub_100016C60(255, &qword_10092B280, UIImage_ptr);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10093C8F0);
    }
  }
}

void sub_10050CDC8(uint64_t a1)
{
  if (!qword_10093C8F8)
  {
    sub_10000C724(&unk_100940810, qword_1007C7BF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10093C8F8);
    }
  }
}

void sub_10050CE40(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1001071A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10050CE88(uint64_t a1, __n128 a2)
{
  if (!qword_10093C910)
  {
    sub_10074F3D4();
    type metadata accessor for CGSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_10093C910);
    }
  }
}

void sub_10050CEFC(uint64_t a1)
{
  if (!qword_10093C918)
  {
    __chkstk_darwin(a1);
    sub_100016C60(255, &qword_100923AB0, UIFont_ptr);
    type metadata accessor for SymbolScale(255);
    sub_10000C724(&unk_100935100, &unk_1007C7BE0);
    sub_10000C724(&qword_10092FE70, &qword_1007A63F0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10093C918);
    }
  }
}

unint64_t sub_10050D0BC()
{
  result = qword_10093C950;
  if (!qword_10093C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C950);
  }

  return result;
}

uint64_t sub_10050D110(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a2;
  v5 = type metadata accessor for Accessory(0);
  v44 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v13 = a1 >> 62;
    if (a1 >> 62)
    {
      if (i != sub_100754664())
      {
        return 0;
      }
    }

    else if (i != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v31 = a1;
    if (v11)
    {
      break;
    }

    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return 1;
    }

LABEL_9:
    v15 = 0;
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
    v40 = a3 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v16 = v31;
    }

    else
    {
      v16 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = v16;
    v33 = v31 & 0xFFFFFFFFFFFFFF8;
    v37 = v31 & 0xC000000000000001;
    v38 = a3 + 32;
    v35 = a1 >> 62;
    v36 = v31 + 32;
    v30 = a3;
    v34 = v14;
    while (1)
    {
      if (v40)
      {
        v43 = sub_100754574();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_48;
        }

        v43 = *(v38 + 8 * v15);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      if (v13)
      {
        v18 = sub_100754664();
      }

      else
      {
        v18 = *(v11 + 16);
      }

      if (v15 == v18)
      {

        return 1;
      }

      v41 = v17;
      if (v37)
      {
        v19 = sub_100754574();
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_49;
        }

        v19 = *(v36 + 8 * v15);
      }

      v20 = v42;
      a1 = v43;
      v21 = (*(v43 + 16))(v42);
      if (v21 != (*(v19 + 16))(v20) || (v22 = *(a1 + 32), v23 = *(v19 + 32), v11 = *(v22 + 16), v11 != *(v23 + 16)))
      {
LABEL_40:

        return 0;
      }

      if (v11 && v22 != v23)
      {
        break;
      }

LABEL_34:
      v15 = v41;
      v13 = v35;
      v11 = v33;
      if (v41 == v34)
      {
        return 1;
      }
    }

    a1 = 0;
    v24 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    a3 = v22 + v24;
    v25 = v23 + v24;
    while (a1 < *(v22 + 16))
    {
      v26 = *(v44 + 72) * a1;
      sub_100415A30(a3 + v26, v10);
      if (a1 >= *(v23 + 16))
      {
        goto LABEL_46;
      }

      sub_100415A30(v25 + v26, v7);
      v27 = sub_10050D4C8(v10, v7);
      sub_10007A554(v7);
      sub_10007A554(v10);
      if (!v27)
      {
        goto LABEL_40;
      }

      if (v11 == ++a1)
      {

        a3 = v30;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v14 = sub_100754664();
  if (v14)
  {
    goto LABEL_9;
  }

  return 1;
}

BOOL sub_10050D4C8(uint64_t a1, double *a2)
{
  v187 = a1;
  v188 = a2;
  v175 = sub_100742A34();
  v186 = *(v175 - 8);
  __chkstk_darwin(v175);
  v170 = &v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_10000C518(&qword_10093C960, &unk_1007C7CD0);
  __chkstk_darwin(v185);
  v184 = &v169 - v3;
  v4 = sub_10000C518(&unk_100940810, qword_1007C7BF0);
  __chkstk_darwin(v4 - 8);
  v172 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v179 = &v169 - v7;
  __chkstk_darwin(v8);
  v180 = &v169 - v9;
  v10 = sub_100750534();
  v173 = *(v10 - 8);
  v174 = v10;
  __chkstk_darwin(v10);
  v177 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_10000C518(&qword_10092BE70, qword_1007BC060);
  __chkstk_darwin(v176);
  v183 = &v169 - v12;
  v13 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v13 - 8);
  v171 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v178 = &v169 - v16;
  __chkstk_darwin(v17);
  v182 = &v169 - v18;
  v19 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v19);
  v21 = (&v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v181 = &v169 - v23;
  __chkstk_darwin(v24);
  v26 = (&v169 - v25);
  __chkstk_darwin(v27);
  v29 = (&v169 - v28);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  __chkstk_darwin(v33);
  v35 = &v169 - v34;
  __chkstk_darwin(v36);
  v38 = (&v169 - v37);
  __chkstk_darwin(v39);
  v41 = (&v169 - v40);
  v42 = sub_10000C518(&qword_10093C968, &qword_1007C7CE0);
  __chkstk_darwin(v42 - 8);
  v44 = &v169 - v43;
  v46 = (&v169 + *(v45 + 56) - v43);
  sub_100415A30(v187, &v169 - v43);
  v47 = v188;
  v188 = v46;
  sub_100415A30(v47, v46);
  v189 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v58 = v32;
    v60 = v185;
    v59 = v186;
    v61 = v182;
    v62 = v183;
    v63 = v184;
    if (EnumCaseMultiPayload > 1)
    {
      v64 = v189;
      if (EnumCaseMultiPayload == 2)
      {
        sub_100415A30(v189, v35);
        v85 = *v35;
        v84 = *(v35 + 1);
        v86 = *(v35 + 2);
        v87 = *(v35 + 3);
        v88 = v188;
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          goto LABEL_61;
        }

        v89 = *(v88 + 2);
        v90 = v88[3];
        if (v85 == *v88 && v84 == *(v88 + 1))
        {
        }

        else
        {
          v129 = sub_100754754();

          if ((v129 & 1) == 0)
          {

            goto LABEL_98;
          }
        }

        sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
        v130 = sub_100753FC4();

        if (v130)
        {
          v56 = v87 == v90;
          v57 = v64;
LABEL_73:
          sub_10007A554(v57);
          return v56;
        }

        goto LABEL_98;
      }

      v65 = v188;
      if (EnumCaseMultiPayload == 3)
      {
        v66 = v58;
        sub_100415A30(v189, v58);
        v67 = *(sub_10000C518(&qword_1009262D8, &unk_1007A99A0) + 48);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_10000C8CC(&v66[v67], &unk_100940810, qword_1007C7BF0);
          goto LABEL_61;
        }

        v68 = *v66;
        v69 = *v65;
        v70 = &v66[v67];
        v71 = v180;
        sub_100066578(v70, v180, &unk_100940810, qword_1007C7BF0);
        v72 = v65 + v67;
        v73 = v179;
        sub_100066578(v72, v179, &unk_100940810, qword_1007C7BF0);
        if (v68 == v69)
        {
          v131 = *(v60 + 48);
          v132 = v63;
          sub_100016B4C(v71, v63, &unk_100940810, qword_1007C7BF0);
          v133 = v131;
          sub_100016B4C(v73, v132 + v131, &unk_100940810, qword_1007C7BF0);
          v134 = v59;
          v135 = *(v59 + 48);
          v136 = v175;
          if (v135(v132, 1, v175) == 1)
          {
            sub_10000C8CC(v73, &unk_100940810, qword_1007C7BF0);
            sub_10000C8CC(v71, &unk_100940810, qword_1007C7BF0);
            if (v135(v132 + v133, 1, v136) == 1)
            {
              sub_10000C8CC(v132, &unk_100940810, qword_1007C7BF0);
              goto LABEL_116;
            }
          }

          else
          {
            v145 = v172;
            sub_100016B4C(v132, v172, &unk_100940810, qword_1007C7BF0);
            if (v135(v132 + v133, 1, v136) != 1)
            {
              v158 = v132 + v133;
              v159 = v145;
              v160 = v170;
              (*(v134 + 32))(v170, v158, v136);
              sub_10050E918(&qword_10093C970, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
              v161 = sub_100753014();
              v162 = *(v134 + 8);
              v162(v160, v136);
              sub_10000C8CC(v179, &unk_100940810, qword_1007C7BF0);
              sub_10000C8CC(v180, &unk_100940810, qword_1007C7BF0);
              v162(v159, v136);
              sub_10000C8CC(v132, &unk_100940810, qword_1007C7BF0);
              if (v161)
              {
                goto LABEL_116;
              }

              goto LABEL_98;
            }

            sub_10000C8CC(v179, &unk_100940810, qword_1007C7BF0);
            sub_10000C8CC(v180, &unk_100940810, qword_1007C7BF0);
            (*(v134 + 8))(v145, v136);
          }

          v75 = &qword_10093C960;
          v76 = &unk_1007C7CD0;
          v74 = v132;
        }

        else
        {
          sub_10000C8CC(v73, &unk_100940810, qword_1007C7BF0);
          v74 = v71;
          v75 = &unk_100940810;
          v76 = qword_1007C7BF0;
        }

        sub_10000C8CC(v74, v75, v76);
        goto LABEL_98;
      }

      sub_100415A30(v189, v29);
      v96 = *v29;
      v95 = v29[1];
      v97 = swift_getEnumCaseMultiPayload();
      if (v97 == 4)
      {
        v92 = *(v65 + 1);
        if (v95)
        {
          if (v92)
          {
            v93 = *v65;
            goto LABEL_40;
          }

LABEL_64:

          goto LABEL_98;
        }

LABEL_63:
        if (!v92)
        {
          goto LABEL_116;
        }

        goto LABEL_64;
      }

LABEL_43:

      goto LABEL_61;
    }

    v77 = v189;
    if (!EnumCaseMultiPayload)
    {
      sub_100415A30(v189, v41);
      v79 = *v41;
      v78 = v41[1];
      v81 = v41[2];
      v80 = v41[3];
      v82 = v41[4];
      v83 = v188;
      if (swift_getEnumCaseMultiPayload())
      {
        v64 = v77;

        goto LABEL_61;
      }

      v126 = *(v83 + 1);
      v125 = *(v83 + 2);
      v128 = *(v83 + 3);
      v127 = *(v83 + 4);
      if (v78)
      {
        if (v126)
        {
          if (v79 == *v188 && v78 == v126)
          {

            goto LABEL_110;
          }

          v154 = sub_100754754();

          if (v154)
          {
LABEL_110:
            if (v81)
            {
              if (!v125)
              {

                goto LABEL_128;
              }

              sub_100016C60(0, &qword_100923500, UIColor_ptr);
              v155 = v81;
              v156 = v125;
              v157 = sub_100753FC4();

              if ((v157 & 1) == 0)
              {

LABEL_128:

                goto LABEL_142;
              }
            }

            else if (v125)
            {

              goto LABEL_143;
            }

            if (v82)
            {
              if (!v127)
              {

                goto LABEL_142;
              }

              if (v80 == v128 && v82 == v127)
              {

                v163 = v189;
                goto LABEL_117;
              }

              v167 = sub_100754754();

              if ((v167 & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            else
            {

              if (v127)
              {
                goto LABEL_142;
              }
            }

            v163 = v189;
            goto LABEL_117;
          }
        }

        else
        {
        }

        goto LABEL_143;
      }

      if (v126)
      {

LABEL_142:

        goto LABEL_143;
      }

      goto LABEL_110;
    }

    sub_100415A30(v189, v38);
    v99 = *v38;
    v98 = v38[1];
    v100 = *(sub_10000C518(&qword_10093C958, &qword_1007C7CC8) + 48);
    v101 = v188;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000C8CC(v38 + v100, &unk_100928A40, qword_1007A6630);

      v64 = v189;
      goto LABEL_61;
    }

    v102 = v101[1];
    v187 = *v101;
    sub_100066578(v38 + v100, v61, &unk_100928A40, qword_1007A6630);
    v103 = v178;
    sub_100066578(v101 + v100, v178, &unk_100928A40, qword_1007A6630);
    if (v98)
    {
      if (v102)
      {
        v104 = v62;
        if (v99 == v187 && v98 == v102)
        {

          v105 = v176;
          v106 = v177;
          goto LABEL_101;
        }

        v146 = sub_100754754();

        v105 = v176;
        v106 = v177;
        if (v146)
        {
LABEL_101:
          v147 = *(v105 + 48);
          sub_100016B4C(v61, v104, &unk_100928A40, qword_1007A6630);
          sub_100016B4C(v103, v104 + v147, &unk_100928A40, qword_1007A6630);
          v148 = v173;
          v149 = v174;
          v150 = *(v173 + 48);
          if (v150(v104, 1, v174) == 1)
          {
            sub_10000C8CC(v103, &unk_100928A40, qword_1007A6630);
            sub_10000C8CC(v61, &unk_100928A40, qword_1007A6630);
            v151 = v150(v104 + v147, 1, v149);
            v152 = v189;
            if (v151 == 1)
            {
              sub_10000C8CC(v104, &unk_100928A40, qword_1007A6630);
LABEL_126:
              v163 = v152;
              goto LABEL_117;
            }
          }

          else
          {
            v153 = v171;
            sub_100016B4C(v104, v171, &unk_100928A40, qword_1007A6630);
            if (v150(v104 + v147, 1, v149) != 1)
            {
              (*(v148 + 32))(v106, v104 + v147, v149);
              sub_10050E918(&qword_10092BE78, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
              v164 = v148;
              v165 = sub_100753014();
              v166 = *(v164 + 8);
              v166(v106, v149);
              sub_10000C8CC(v178, &unk_100928A40, qword_1007A6630);
              sub_10000C8CC(v61, &unk_100928A40, qword_1007A6630);
              v166(v153, v149);
              sub_10000C8CC(v104, &unk_100928A40, qword_1007A6630);
              v152 = v189;
              if (v165)
              {
                goto LABEL_126;
              }

LABEL_107:
              sub_10007A554(v152);
              return 0;
            }

            sub_10000C8CC(v178, &unk_100928A40, qword_1007A6630);
            sub_10000C8CC(v61, &unk_100928A40, qword_1007A6630);
            (*(v148 + 8))(v153, v149);
            v152 = v189;
          }

          sub_10000C8CC(v104, &qword_10092BE70, qword_1007BC060);
          goto LABEL_107;
        }

LABEL_90:
        sub_10000C8CC(v103, &unk_100928A40, qword_1007A6630);
        sub_10000C8CC(v61, &unk_100928A40, qword_1007A6630);
        goto LABEL_143;
      }
    }

    else
    {
      v104 = v62;
      v105 = v176;
      v106 = v177;
      if (!v102)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_90;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v94 = swift_getEnumCaseMultiPayload();
      v64 = v189;
      if (v94 != 8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v64 = v189;
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v123 = swift_getEnumCaseMultiPayload();
        if (v123 != 10)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_116;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v49 = v181;
      sub_100415A30(v189, v181);
      v51 = *(v49 + 8);
      v50 = *(v49 + 16);
      v52 = v188;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v54 = v52[1];
        v53 = v52[2];
        sub_10074F3D4();
        v55 = sub_10074F224();

        if (v55)
        {
          v56 = v50 == v53 && v51 == v54;
          v57 = v189;
          goto LABEL_73;
        }

        goto LABEL_143;
      }

      v64 = v189;
      goto LABEL_61;
    }

    v107 = v189;
    sub_100415A30(v189, v21);
    v108 = *v21;
    v109 = v21[1];
    v110 = v21[2];
    v111 = v21[3];
    v112 = v21[4];
    v113 = v21[5];
    v114 = v21[6];
    v115 = v188;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v116 = v114;
      v187 = v113;
      v117 = *v115;
      v118 = *(v115 + 1);
      v119 = v115;
      v121 = *(v115 + 2);
      v120 = *(v115 + 3);
      v122 = *(v119 + 4);
      v186 = *(v119 + 5);
      v188 = *(v119 + 6);
      if (v108 == v117 && v109 == v118)
      {

LABEL_78:
        sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
        v138 = sub_100753FC4();
        v139 = v189;
        if ((v138 & 1) != 0 && v111 == v120)
        {
          if (v112)
          {
            if (!v122)
            {

              goto LABEL_137;
            }

            sub_100016C60(0, &qword_100923500, UIColor_ptr);
            v140 = v112;
            v141 = v122;
            v142 = v122;
            v143 = sub_100753FC4();

            if ((v143 & 1) == 0)
            {

LABEL_137:

LABEL_138:

              goto LABEL_85;
            }

LABEL_131:
            if (v116)
            {
              if (!v188)
              {

                goto LABEL_138;
              }

              if (v187 == v186 && v116 == v188)
              {

                v163 = v139;
                goto LABEL_117;
              }

              v168 = sub_100754754();

              if ((v168 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else
            {

              if (v188)
              {
                goto LABEL_138;
              }
            }

            v163 = v139;
            goto LABEL_117;
          }

          v141 = v122;
          if (!v122)
          {
            goto LABEL_131;
          }
        }

        else
        {
        }

LABEL_85:
        sub_10007A554(v139);
        return 0;
      }

      v137 = sub_100754754();

      if (v137)
      {
        goto LABEL_78;
      }

LABEL_143:
      sub_10007A554(v189);
      return 0;
    }

    v64 = v107;
LABEL_61:
    sub_10000C8CC(v64, &qword_10093C968, &qword_1007C7CE0);
    return 0;
  }

  v64 = v189;
  sub_100415A30(v189, v26);
  v96 = *v26;
  v95 = v26[1];
  v91 = v188;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_43;
  }

  v92 = *(v91 + 1);
  if (!v95)
  {
    goto LABEL_63;
  }

  if (!v92)
  {
    goto LABEL_64;
  }

  v93 = *v91;
LABEL_40:
  if (v96 != v93 || v95 != v92)
  {
    v144 = sub_100754754();

    if (v144)
    {
      goto LABEL_116;
    }

LABEL_98:
    sub_10007A554(v64);
    return 0;
  }

LABEL_116:
  v163 = v64;
LABEL_117:
  sub_10007A554(v163);
  return 1;
}

uint64_t sub_10050E918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10050E960()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v4 = sub_10050EA98(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_10050EA98(uint64_t a1)
{
  v2 = sub_10074F704();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749E34();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v50 - v7;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = sub_10000C518(&qword_100934D90, &qword_1007A6578);
  __chkstk_darwin(v11 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v58 = sub_100749E74();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074EAB4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v50 - v23;
  sub_100747BD4();
  sub_10074EA74();
  sub_10050F310(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v63 = sub_100754324();
  v25 = *(v19 + 8);
  v25(v21, v18);
  v25(v24, v18);
  v62 = a1;
  v26 = sub_100747BA4();
  v27 = v51;
  (*(v51 + 56))(v16, 1, 1, v4);
  v54 = v16;
  v28 = v16;
  v29 = v27;
  sub_10009A9B0(v28, v13);
  v30 = *(v27 + 48);
  if (v30(v13, 1, v4) == 1)
  {
    (*(v52 + 224))();
    v31 = v10;
    if (v30(v13, 1, v4) != 1)
    {
      sub_10009AA20(v13);
    }
  }

  else
  {
    (*(v27 + 32))(v10, v13, v4);
    v31 = v10;
  }

  v32 = *(v29 + 16);
  v33 = v53;
  v32(v53, v31, v4);
  v34 = (*(v29 + 88))(v33, v4);
  v35 = v56;
  if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE28, v66);
  }

  else if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_100920A80 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE00, v66);
  }

  else
  {
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE28, v66);
    (*(v29 + 8))(v33, v4);
  }

  v32(v35, v31, v4);
  sub_10000C824(v66, v65);
  sub_100038D38();
  if (qword_100921460 != -1)
  {
    swift_once();
  }

  v36 = sub_100750534();
  sub_10000D0FC(v36, qword_100981A58);
  v37 = [v26 traitCollection];
  sub_100753C14();

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v38 = sub_100750B04();
  v39 = sub_10000D0FC(v38, qword_100982098);
  v64[3] = v38;
  v64[4] = &protocol witness table for StaticDimension;
  v40 = sub_10000D134(v64);
  (*(*(v38 - 8) + 16))(v40, v39, v38);
  v41 = v55;
  sub_100749E54();
  swift_unknownObjectRelease();
  sub_10000C620(v66);
  (*(v29 + 8))(v31, v4);
  sub_10009AA20(v54);
  v42 = v59;
  sub_100747B84();
  sub_10074F674();
  v44 = v43;
  v46 = v45;
  (*(v60 + 8))(v42, v61);
  v47 = sub_100747BA4();
  v48 = sub_1000239F0(v41, v47, v44, v46);
  swift_unknownObjectRelease();
  (*(v57 + 8))(v41, v58);
  return v48;
}

uint64_t sub_10050F310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10050F35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a3;
  v6 = sub_100747524();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = enum case for ComponentSeparator.Position.top(_:);
  v12 = *(v7 + 104);
  (v12)(v10, enum case for ComponentSeparator.Position.top(_:), v6, v8);
  v13 = sub_100747514();
  v15 = v14;
  v33 = v7;
  v30 = *(v7 + 8);
  v30(v10, v6);
  v35._countAndFlagsBits = v13;
  v35._object = v15;
  v31 = a1;
  v32 = a2;
  LOBYTE(v13) = sub_100753124(v35);

  if (v13 & 1) != 0 || (v11 = enum case for ComponentSeparator.Position.bottom(_:), v12(v10, enum case for ComponentSeparator.Position.bottom(_:), v6), v16 = sub_100747514(), v18 = v17, v30(v10, v6), v36._countAndFlagsBits = v16, v36._object = v18, LOBYTE(v16) = sub_100753124(v36), , (v16) || (v11 = enum case for ComponentSeparator.Position.leading(_:), v12(v10, enum case for ComponentSeparator.Position.leading(_:), v6), v19 = sub_100747514(), v21 = v20, v30(v10, v6), v37._countAndFlagsBits = v19, v37._object = v21, LOBYTE(v19) = sub_100753124(v37), , (v19) || (v11 = enum case for ComponentSeparator.Position.trailing(_:), v12(v10, enum case for ComponentSeparator.Position.trailing(_:), v6), v22 = sub_100747514(), v24 = v23, v30(v10, v6), v38._countAndFlagsBits = v22, v38._object = v24, v25 = sub_100753124(v38), , v25))
  {
    v26 = v34;
    v12(v34, v11, v6);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v26 = v34;
  }

  return (*(v33 + 56))(v26, v27, 1, v6);
}

char *sub_10050F628(__n128 a1, double a2, double a3, double a4)
{
  v8 = a1.n128_f64[0];
  v9 = sub_100747524();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v10);
  sub_100747534();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor;
  *&v4[v14] = [objc_opt_self() separatorColor];
  v15 = type metadata accessor for SeparatorSupplementaryView(0);
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", v8, a2, a3, a4);
  [v16 setUserInteractionEnabled:0];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v16 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView] setBackgroundColor:*&v16[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor]];
  [v16 addSubview:*&v16[v17]];

  return v16;
}

void sub_10050F87C()
{
  v1 = v0;
  v2 = sub_100747564();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setNeedsLayout];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  v8 = sub_1007474E4();
  (*(v3 + 8))(v6, v2);
  if (!v8)
  {
    v8 = [objc_opt_self() separatorColor];
  }

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor] = v8;
  v10 = v8;

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView] setBackgroundColor:v10];
}

double sub_10050F9FC(__n128 a1)
{
  v2 = a1.n128_f64[0];
  v25 = sub_100747524();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747564();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v26 = v1;
  v13(v11, v1 + v12, v5);
  sub_100747544();
  v14 = *(v6 + 8);
  v15 = v11;
  v16 = v27;
  v17 = v25;
  v14(v15, v5);
  v18 = (*(v16 + 88))(v4, v17);
  if (v18 == enum case for ComponentSeparator.Position.top(_:) || v18 == enum case for ComponentSeparator.Position.bottom(_:))
  {
    v13(v8, v26 + v12, v5);
    sub_100747504();
    v14(v8, v5);
  }

  else
  {
    v24 = v14;
    if (v18 == enum case for ComponentSeparator.Position.leading(_:) || v18 == enum case for ComponentSeparator.Position.trailing(_:))
    {
      v13(v8, v26 + v12, v5);
      sub_100747504();
      v2 = v21;
      v24(v8, v5);
    }

    else
    {
      (*(v16 + 8))(v4, v17);
      return 0.0;
    }
  }

  return v2;
}

id sub_10050FED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorSupplementaryView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeparatorSupplementaryView(uint64_t a1)
{
  result = qword_10093C9C8;
  if (!qword_10093C9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10050FFE8(uint64_t a1)
{
  result = sub_100747564();
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

void sub_100510088(__n128 a1)
{
  v2 = sub_100747524();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v3);
  sub_100747534();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineView;
  *(v1 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_lineColor;
  *(v1 + v7) = [objc_opt_self() separatorColor];
  sub_100754644();
  __break(1u);
}

uint64_t sub_1005101F8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100982208);
  sub_10000D0FC(v4, qword_100982208);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005108CC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a1;
  sub_100511DBC(v14, v13, v7, v6);

  return (*(v11 + 8))(v13, v10);
}

id sub_100510B0C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_10092E4C0, &unk_1007B0C40);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = sub_100744074();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  v74 = v5;
  v9 = objc_opt_self();
  if (qword_100921B48 != -1)
  {
    swift_once();
  }

  v10 = qword_100982AD8;
  v11 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits) traitCollection];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  sub_100744094();
  v13 = sub_1007440D4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_10000C8CC(v4, &unk_10092E4C0, &unk_1007B0C40);
    v15 = sub_10074ECB4();
    if (v16)
    {
      v17 = v15;

      v74 = v17;
    }
  }

  else
  {
    v74 = sub_10051131C(v74, v7);
    (*(v14 + 8))(v4, v13);
  }

  v72 = sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  v71 = xmmword_1007A6580;
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSForegroundColorAttributeName;
  v20 = qword_1009209E8;
  v70 = NSForegroundColorAttributeName;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_10097FC68;
  v22 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
  *(inited + 40) = v21;
  v69 = v22;
  *(inited + 64) = v22;
  *(inited + 72) = NSFontAttributeName;
  v23 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  *(inited + 104) = v23;
  *(inited + 80) = v12;
  v24 = v21;
  v68 = NSFontAttributeName;
  v73 = v12;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510, &unk_1007A6620);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = sub_100753064();

  type metadata accessor for Key(0);
  sub_100168B0C();
  isa = sub_100752F34().super.isa;

  v28 = [v25 initWithString:v26 attributes:isa];

  v29 = sub_100744024();
  if (v30)
  {
    v66 = v29;
    v67 = v30;
    v31 = v28;
    v32 = v73;
    v33 = swift_initStackObject();
    *(v33 + 16) = v71;
    v34 = v70;
    *(v33 + 32) = v70;
    v35 = qword_1009209E0;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_10097FC60;
    *(v33 + 40) = qword_10097FC60;
    v38 = v68;
    *(v33 + 64) = v69;
    *(v33 + 72) = v38;
    *(v33 + 104) = v23;
    *(v33 + 80) = v32;
    v39 = v38;
    v40 = v32;
    v41 = v37;
    sub_100413A18(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = sub_100752F34().super.isa;

    v65 = v31;
    v42 = [v31 string];
    v43 = sub_100753094();
    v45 = v44;

    v79 = v43;
    v80 = v45;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_1000D5C0C();
    v46 = sub_1007542F4();
    v48 = v47;

    v79 = v46;
    v80 = v48;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v49 = sub_1007542F4();
    v51 = v50;

    v79 = v49;
    v80 = v51;
    v77 = 10060002;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_1007542F4();

    v52 = sub_100753064();

    v79 = v66;
    v80 = v67;
    v76 = 0xE100000000000000;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v53 = sub_1007542F4();
    v55 = v54;

    v79 = v53;
    v80 = v55;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v56 = sub_1007542F4();
    v58 = v57;

    v79 = v56;
    v80 = v58;
    v76 = 0xE100000000000000;
    v77 = 10060002;
    v28 = v65;
    v78 = 0xA300000000000000;
    v75 = 39;
    sub_1007542F4();

    v59 = sub_100753064();

    v60 = [v52 rangeOfString:v59 options:1];
    v62 = v61;

    v63 = v74;
    [v28 addAttributes:v74 range:{v60, v62}];
  }

  v64 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v28];

  return v64;
}

uint64_t sub_10051131C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0xD000000000000020;
  v7 = sub_1007440D4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for SearchEntity.developers(_:))
  {
    v13 = "Search.ResultsTitle.InStories";
LABEL_9:
    sub_10000C518(&unk_10092E4D0, &qword_1007B3608);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_10038664C(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_10093CA20, &qword_1007B3610);
    v20._object = (v13 | 0x8000000000000000);
    v20._countAndFlagsBits = v6;
    v16._rawValue = v15;
    v17 = sub_1007458A4(v20, v16);

    return v17;
  }

  if (v12 == enum case for SearchEntity.stories(_:))
  {
    v13 = "Search.ResultsTitle.InArcade";
    v6 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.arcade(_:))
  {
    v13 = "Search.ResultsTitle.InWatch";
    v6 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.watch(_:))
  {
    v13 = "must be handled.";
    v6 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  result = sub_100754644();
  __break(1u);
  return result;
}

id sub_100511608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005116BC(__n128 a1)
{
  result = sub_10074ECC4();
  if (result)
  {
    sub_10074F1F4();
    v3 = v2;

    if (v3)
    {
      v4 = qword_100920A00;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = [objc_opt_self() configurationWithTextStyle:qword_10097FC80];
      v6 = sub_100743AD4();

      if (qword_1009209F8 != -1)
      {
        swift_once();
      }

      v7 = [v6 imageWithTintColor:qword_10097FC78];
      swift_bridgeObjectRelease_n();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100511800(void *a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchHintCollectionViewCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    sub_100741774();
    sub_100748DE4();
    v14 = sub_100510B0C();
    if (v14)
    {
      v15 = v14;
      v32 = v13;
      v16 = OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView;
      v17 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits);
      v18 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView];
      v33 = v8;
      v19 = v18;
      [v17 pageMarginInsets];
      [v19 setLayoutMargins:?];

      v20 = *&v12[v16];
      *(v20 + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator) = 1;
      [*(v20 + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView) setHidden:0];
      v21 = *&v12[v16];
      v22 = v15;
      v23 = v21;
      v25 = sub_1005116BC(v24);
      [*&v23[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_titleLabel] setAttributedText:v22];
      v26 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage];
      *&v23[OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_iconImage] = v25;
      v27 = v25;

      sub_10064FB3C(v28, v29, v30);
      [v23 setNeedsLayout];

      v31 = v33;

      sub_10074EC74();

      if ((*(v31 + 48))(v6, 1, v7) == 1)
      {

        sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
      }

      else
      {
        (*(v31 + 32))(v10, v6, v7);
        if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator))
        {

          [v12 frame];
          sub_100749544();
        }

        else
        {
        }

        (*(v31 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100511BAC()
{
  v1 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_100752914();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100741774();
  result = sub_100748DC4();
  if (v8 < result)
  {
    sub_100741774();
    sub_100748DE4();
    sub_10074EC74();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_10000C8CC(v3, &unk_100925380, qword_1007A8E40);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator))
      {

        sub_100749564();
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_100511DBC(void *a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(sub_100741774(), 1))
  {
    __break(1u);
  }

  else
  {
    sub_100741784();
    sub_100741764();
    isa = sub_100741704().super.isa;
    (*(v8 + 8))(v10, v7);
    v12 = [a1 cellForItemAtIndexPath:isa];

    if (v12)
    {
      type metadata accessor for SearchHintCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension28SearchHintCollectionViewCell_hintView);
        *(v14 + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_showSeparator) = a3;
        [*(v14 + OBJC_IVAR____TtC22SubscribePageExtension14SearchHintView_separatorView) setHidden:a4 & 1];
      }
    }
  }
}

double sub_100511F44(void *a1)
{
  sub_100741774();
  sub_100748DE4();
  v3 = sub_100510B0C();

  if (!v3)
  {
    return 0.0;
  }

  [a1 frame];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33SearchHintsCollectionViewDelegate_pageTraits);
  swift_unknownObjectRetain();
  sub_100650B90(v3, v6, v7);
  sub_100750F34();
  sub_100750404();

  swift_unknownObjectRelease();
  return v5;
}

void sub_10051207C(uint64_t a1, char a2, Swift::Bool a3)
{
  v4 = v3;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  sub_100743384(v17, a3);
  sub_1007433C4();
  sub_100514B3C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100744274();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_10093CB50;
    v7 = Strong;
    v8 = [*(Strong + qword_10093CB50) layer];
    [v8 removeAllAnimations];

    [*&v7[v6] setImage:0];
    type metadata accessor for VideoView(0);
    sub_100514B3C(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
    sub_100744274();
  }

  v9 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v11 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    v12 = v9;
    v13 = v11;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_100743384(v18, v14);

    v15 = *&v9[v10];
    sub_100744274();
  }
}

void *sub_10051229C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {

      return sub_10000C8CC(v7, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C0E00(a3, 1, a2, v7);

      return (*(v11 + 8))(v7, v10);
    }
  }

  return result;
}

double sub_10051241C(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *a1;
  ObjectType = swift_getObjectType();

  return sub_100513040(v13, a8, a6, v8, ObjectType, a2, a3);
}

double sub_10051252C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, double a10, uint64_t a11, int *a12)
{
  v82 = a5;
  v83 = a6;
  v92 = a3;
  v77 = a1;
  v78 = a2;
  v86 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v86);
  v80 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v87);
  v81 = (v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10074CD14();
  v74 = *(v18 - 8);
  __chkstk_darwin(v18);
  v79 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = v72 - v21;
  __chkstk_darwin(v22);
  v72[0] = v72 - v23;
  v24 = sub_100750F34();
  swift_allocObject();
  v99 = sub_100750F14();
  swift_allocObject();
  v98 = sub_100750F14();
  swift_allocObject();
  v97 = sub_100750F14();
  swift_allocObject();
  v96 = sub_100750F14();
  swift_allocObject();
  v102 = sub_100750F14();
  swift_allocObject();
  v95 = sub_100750F14();
  swift_allocObject();
  v94 = sub_100750F14();
  swift_allocObject();
  v101 = sub_100750F14();
  v25 = [a8 traitCollection];
  sub_100751364();

  swift_allocObject();
  v85 = sub_100750F14();
  v26 = 0;
  v27 = 0;
  if (a7)
  {
    swift_allocObject();
    v27 = sub_100750F14();
    swift_allocObject();
    v26 = sub_100750F14();
  }

  v93 = v26;
  v84 = v27;
  v28 = [a8 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = sub_100753954();

  v100 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921570 != -1)
  {
    swift_once();
  }

  v91 = sub_100750534();
  sub_10000D0FC(v91, qword_100981D88);
  v31 = a8;
  v32 = [a8 traitCollection];
  v33 = sub_100753C14();

  v73 = v30;
  v34 = sub_10074F3F4();
  v124[3] = v34;
  v90 = sub_100514B3C(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v124[4] = v90;
  v35 = sub_10000D134(v124);
  v36 = *(*(v34 - 8) + 104);
  v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v88 = v36;
  v36(v35);
  sub_10074FC74();
  sub_10000C620(v124);

  v37 = v33;
  v72[1] = ~v30;
  v38 = v72[0];
  v75 = v37;
  sub_10074CD04();
  sub_10074CCE4();
  v39 = *(v74 + 1);
  v39(v38, v18);
  if (qword_100921578 != -1)
  {
    swift_once();
  }

  v74 = a12;
  sub_10000D0FC(v91, qword_100981DA0);
  v40 = [v31 traitCollection];
  v41 = sub_100753C14();

  v123[3] = v34;
  v123[4] = v90;
  v42 = sub_10000D134(v123);
  v88(v42, v89, v34);
  sub_10074FC74();
  sub_10000C620(v123);
  v92 = v31;

  v43 = v41;
  v44 = v76;
  v78 = v43;
  sub_10074CD04();
  sub_10074CCE4();
  v39(v44, v18);
  if (qword_100921580 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v91, qword_100981DB8);
  v45 = [v92 traitCollection];
  v46 = sub_100753C14();

  v122[3] = v34;
  v122[4] = v90;
  v47 = sub_10000D134(v122);
  v88(v47, v89, v34);
  sub_10074FC74();
  sub_10000C620(v122);

  v48 = v46;
  v49 = v79;
  v100 = v48;
  sub_10074CD04();
  sub_10074CCE4();
  v39(v49, v18);
  if (qword_100920458 != -1)
  {
    swift_once();
  }

  v50 = sub_10000D0FC(v86, qword_10097E0D8);
  v51 = v80;
  sub_10010C610(v50, v80);
  v121 = &protocol witness table for LayoutViewPlaceholder;
  v120 = v24;
  *&v119 = v99;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v117 = v24;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  *&v116 = v98;
  v114 = v24;
  v112 = &protocol witness table for LayoutViewPlaceholder;
  *&v113 = v97;
  v111 = v24;
  v109 = &protocol witness table for LayoutViewPlaceholder;
  *&v110 = v96;
  v108 = v24;
  *&v107 = v102;
  sub_10000C824(v124, v106);
  sub_10000C824(v123, v105);
  sub_10000C824(v122, v103);
  v52 = v84;
  if (v84)
  {
    v53 = v24;
  }

  else
  {
    v53 = 0;
  }

  if (v84)
  {
    v54 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v54 = 0;
  }

  v90 = v54;
  v91 = v53;
  v55 = v93;
  if (v93)
  {
    v56 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v56 = 0;
  }

  if (v93)
  {
    v57 = v24;
  }

  else
  {
    v57 = 0;
  }

  v58 = v81;
  sub_10010CC50(v51, v81);
  v59 = v87;
  sub_100012160(&v119, v58 + *(v87 + 20));
  sub_100012160(&v116, v58 + v59[6]);
  sub_100012160(&v113, v58 + v59[7]);
  sub_100012160(&v110, v58 + v59[8]);
  sub_100012160(&v107, v58 + v59[9]);
  v60 = (v58 + v59[10]);
  v61 = v94;
  *v60 = v95;
  v60[3] = v24;
  v60[4] = &protocol witness table for LayoutViewPlaceholder;
  v62 = (v58 + v59[11]);
  *v62 = v61;
  v62[3] = v24;
  v62[4] = &protocol witness table for LayoutViewPlaceholder;
  v63 = (v58 + v59[12]);
  *v63 = v101;
  v63[3] = v24;
  v63[4] = &protocol witness table for LayoutViewPlaceholder;
  sub_100012160(v106, v58 + v59[13]);
  sub_100012160(v105, v58 + v59[14]);
  v64 = v58 + v59[15];
  v65 = v103[1];
  *v64 = v103[0];
  *(v64 + 1) = v65;
  *(v64 + 4) = v104;
  v66 = (v58 + v59[16]);
  *v66 = v85;
  v66[3] = v24;
  v66[4] = &protocol witness table for LayoutViewPlaceholder;
  v67 = (v58 + v59[17]);
  *v67 = v52;
  v67[1] = 0;
  v68 = v90;
  v69 = v91;
  v67[2] = 0;
  v67[3] = v69;
  v67[4] = v68;
  v70 = (v58 + v59[18]);
  *v70 = v55;
  v70[1] = 0;
  v70[2] = 0;
  v70[3] = v57;
  v70[4] = v56;

  sub_10010E438(v92, v58, v74, a9, a10);

  sub_10001BB14(v58);
  sub_10000C620(v122);
  sub_10000C620(v123);
  sub_10000C620(v124);
  return a9;
}

double sub_100513040(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int *a5, double a6, double a7)
{
  v12 = sub_100742874();
  v14 = v13;
  v15 = sub_100742864();
  v17 = v16;
  v18 = sub_1007428A4();
  v20 = v19;
  v21 = sub_1005FBD60(a3);
  v22 = sub_10051252C(v12, v14, v15, v17, v18, v20, v21 & 1, a2, a6, a7, a4, a5);

  return v22;
}

double sub_10051312C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v172 = a2;
  v5 = sub_1007527A4();
  v170 = *(v5 - 8);
  v171 = v5;
  __chkstk_darwin(v5);
  v169 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v7 - 8);
  v166 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v165 = &v147 - v10;
  v11 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v11 - 8);
  v163 = &v147 - v12;
  v13 = sub_100744864();
  __chkstk_darwin(v13 - 8);
  v161 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v160 = &v147 - v16;
  v17 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v17 - 8);
  v159 = &v147 - v18;
  v157 = sub_100744894();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v158 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_100747D94();
  v162 = *(v164 - 8);
  __chkstk_darwin(v164);
  v168 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v21 - 8);
  v148 = &v147 - v22;
  v23 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v23 - 8);
  v150 = &v147 - v24;
  v25 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v25 - 8);
  v154 = &v147 - v26;
  v27 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v27 - 8);
  v151 = &v147 - v28;
  v29 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v29 - 8);
  v152 = &v147 - v30;
  v31 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v31 - 8);
  v33 = &v147 - v32;
  v34 = sub_10074D734();
  v149 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v37 - 8);
  v153 = &v147 - v38;
  v39 = sub_100746BA4();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v147 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100742864();
  sub_10018CAA4(v43, v44);
  v45 = sub_100742874();
  sub_10018CAB0(v45, v46);
  v47 = sub_1007428A4();
  sub_10018CABC(v47, v48);
  v49 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
  sub_100742824();
  v50 = sub_100746B84();
  v51 = v39;
  v52 = v172;
  (*(v40 + 8))(v42, v51);
  v155 = v49;
  [v49 setOverrideUserInterfaceStyle:v50];
  sub_10018C450();
  v173 = a1;
  v53 = sub_1005FBD60(v52);
  v167 = v3;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView;
    if (!*&v3[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView])
    {
      v55 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10018F7E8();
      v56 = *&v3[v54];
      *&v3[v54] = v55;
      v57 = v55;

      sub_10018D040();
    }

    v58 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView;
    if (!*&v3[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView])
    {
      v59 = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v60 = *&v3[v58];
      if (v60)
      {
        [v60 removeFromSuperview];
        v61 = *&v3[v58];
      }

      else
      {
        v61 = 0;
      }

      *&v3[v58] = v59;
      v70 = v59;

      sub_10018D208();
    }

    v71 = *&v3[v54];
    if (v71)
    {
      [v71 setHidden:0];
    }

    v72 = *&v3[v58];
    if (v72)
    {
      [v72 setHidden:0];
      v73 = *&v3[v58];
      if (v73)
      {
        v147 = v58;
        v74 = v73;
        v75 = sub_100742894();
        v76 = v149;
        v77 = *(v149 + 104);
        v77(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v34);
        v77(v33, enum case for OfferButtonPresenterViewAlignment.left(_:), v34);
        (*(v76 + 56))(v33, 0, 1, v34);
        sub_100514B3C(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
        v78 = v153;
        sub_10074A9C4();
        v79 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
        (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
        v80 = sub_100742E24();
        v81 = v152;
        (*(*(v80 - 8) + 56))(v152, 1, 1, v80);
        v82 = sub_100745E94();
        v83 = v151;
        (*(*(v82 - 8) + 56))(v151, 1, 1, v82);
        v84 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
        v85 = v154;
        (*(*(v84 - 8) + 56))(v154, 1, 1, v84);
        v86 = sub_10074F8B4();
        v87 = v150;
        (*(*(v86 - 8) + 56))(v150, 1, 1, v86);
        v149 = v75;
        sub_100656038(v75, v74, v78, v172, 0, 0, v81, v83, v87, v85);
        sub_10000C8CC(v87, &unk_100925520, &unk_1007A8120);
        v74[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
        sub_1001CE71C();
        [v74 setNeedsLayout];
        v88 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
        v89 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
        if (v89)
        {
          [v89 setHidden:1];
          v90 = *&v74[v88];
          if (v90)
          {
            [v90 setText:0];
          }
        }

        v91 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
        v92 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
        if (v92)
        {
          if (([v92 isHidden] & 1) == 0)
          {
            v93 = *&v74[v91];
            if (v93)
            {
              if ([v93 hasContent])
              {
                v94 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
                [*&v74[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
                [*&v74[v94] setText:0];
              }
            }
          }
        }

        v95 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
        if ([*&v74[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] isHidden] || !objc_msgSend(*&v74[v95], "hasContent"))
        {

          sub_10000C8CC(v154, &unk_100925990, qword_1007BB900);
          sub_10000C8CC(v83, &unk_1009259A0, &unk_1007B0610);
          sub_10000C8CC(v81, &unk_100925530, &unk_1007A8130);
          sub_10000C8CC(v153, &unk_100925540, &qword_1007A8140);
        }

        else
        {
          v96 = *&v74[v91];
          if (v96)
          {
            [v96 setHidden:1];
            v97 = *&v74[v91];
            if (v97)
            {
              [v97 setText:0];
            }
          }

          v98 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
          [*&v74[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v74[v98] setText:0];

          sub_10000C8CC(v154, &unk_100925990, qword_1007BB900);
          sub_10000C8CC(v83, &unk_1009259A0, &unk_1007B0610);
          sub_10000C8CC(v81, &unk_100925530, &unk_1007A8130);
          sub_10000C8CC(v153, &unk_100925540, &qword_1007A8140);
        }

        v99 = *&v3[v147];
        if (v99)
        {
          v100 = *(v99 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
          if (!v100)
          {
            goto LABEL_37;
          }

          v101 = qword_100920F68;
          v102 = v100;
          if (v101 != -1)
          {
            swift_once();
          }

          v103 = sub_100750534();
          v104 = sub_10000D0FC(v103, qword_100980B88);
          v105 = *(v103 - 8);
          v106 = v148;
          (*(v105 + 16))(v148, v104, v103);
          (*(v105 + 56))(v106, 0, 1, v103);
          sub_100745BA4();

          v99 = *&v3[v147];
          if (v99)
          {
LABEL_37:
            v107 = *(v99 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
            if (v107)
            {
              v108 = qword_100920F80;
              v109 = v107;
              if (v108 != -1)
              {
                swift_once();
              }

              v110 = sub_100750534();
              v111 = sub_10000D0FC(v110, qword_100980BD0);
              v112 = *(v110 - 8);
              v113 = v148;
              (*(v112 + 16))(v148, v111, v110);
              (*(v112 + 56))(v113, 0, 1, v110);
              sub_100745BA4();
            }
          }
        }
      }
    }

    sub_100742894();
    v114 = sub_10074EDC4();

    if (v114)
    {
      v115 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v116 = swift_allocObject();
      v52 = v172;
      v116[2] = v115;
      v116[3] = v52;
      v116[4] = v114;
      v114 = swift_allocObject();
      *(v114 + 16) = sub_100514C04;
      *(v114 + 24) = v116;

      v117 = sub_100514C48;
    }

    else
    {
      v117 = 0;
      v52 = v172;
    }

    v118 = v3;
    v66 = v168;
    v119 = &v118[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    v68 = *&v118[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    v69 = *&v118[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction + 8];
    *v119 = v117;
    v119[1] = v114;
  }

  else
  {
    v62 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView;
    v63 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView];
    if (v63)
    {
      [v63 removeFromSuperview];
      v64 = *&v3[v62];
    }

    else
    {
      v64 = 0;
    }

    v65 = v3;
    v66 = v168;
    *&v65[v62] = 0;

    sub_10018D208();
    v67 = &v65[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    v68 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    v69 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction + 8];
    *v67 = 0;
    *(v67 + 1) = 0;
  }

  sub_1000164A8(v68, v69);
  if (sub_1007427E4())
  {
    (*(v156 + 104))(v158, enum case for VideoFillMode.scaleAspectFill(_:), v157);
    sub_10074EC14();
    sub_10074F2A4();
    v120 = v159;
    sub_100750504();

    v121 = sub_1007504F4();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    v122 = v174[0];
    sub_10074EB94();
    v123 = v163;
    sub_10074EC24();
    v124 = sub_100741264();
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    v125 = v165;
    sub_10074EBE4();
    v126 = v166;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_100514B3C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v172 = v122;
    v127 = sub_1007464A4();
    v128 = v66;
    sub_10000C8CC(v126, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v125, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v123, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v174, &unk_1009276E0, &unk_1007A5C70);
    v129 = v167;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v131 = Strong;
      [v155 insertSubview:Strong aboveSubview:*&v129[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
      [v129 setNeedsLayout];

      (*(v162 + 8))(v128, v164);
    }

    else
    {
      (*(v162 + 8))(v128, v164);
    }
  }

  else
  {
    v129 = v167;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    v132 = swift_unknownObjectWeakLoadStrong();
    if (v132)
    {
      v133 = v132;
      [v155 insertSubview:v132 aboveSubview:*&v129[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
      [v129 setNeedsLayout];
    }
  }

  sub_10074B0C4();
  sub_100752764();
  sub_100752D34();
  v134 = v174[0];

  v135 = sub_100742834();
  type metadata accessor for NotifyMeButtonPresenter(0);
  v136 = swift_allocObject();
  v137 = v136 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v136 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v136 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v136 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v137 + 8) = &off_10086A628;
  swift_unknownObjectWeakAssign();
  *(v136 + 16) = v134;
  *(v136 + 24) = v135;

  v138 = v169;
  v139 = v171;
  sub_100752D34();
  (*(v170 + 32))(v136 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline, v138, v139);
  *(v136 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_objectGraph) = v52;
  sub_100744AC4();

  v140 = sub_100752D34();
  *(v136 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_bag) = v174[5];
  sub_1001D0C08(v140, v141);
  sub_1001D1314(v142, v143);
  v144 = [objc_opt_self() defaultCenter];

  v145 = sub_10074B034();
  [v144 addObserver:v136 selector:"userNotificationsDidChangeNotification:" name:v145 object:0];

  sub_10018E820(v136);
  v129[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_includeBorderInDarkMode] = sub_100742844() & 1;
  sub_10018C450();

  return result;
}