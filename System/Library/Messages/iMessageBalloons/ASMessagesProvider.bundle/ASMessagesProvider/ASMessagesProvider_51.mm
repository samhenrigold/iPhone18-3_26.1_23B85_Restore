unint64_t sub_5B4D00(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_76A860();
    if (v14)
    {
      v15 = v14;
      v1 = sub_7E3E8();
      sub_10BC8C(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_76A860();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = sub_76A770();
          v10 = sub_76A770();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_45EDF0();
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_45EDF0();
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_5B4F14(double *a1, __n128 a2)
{
  v3 = sub_75C510();
  __chkstk_darwin(v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v30 = v24 - v9;
  v10 = *(a1 + 2);
  if (v10 < 2)
  {
    return;
  }

  v11 = 0;
  v12 = v10 >> 1;
  v13 = v10 - 1;
  v25 = v10 >> 1;
  v26 = v7;
  v24[1] = v7 + 16;
  v27 = (v7 + 40);
  while (1)
  {
    if (v11 == v13)
    {
      goto LABEL_5;
    }

    v14 = *(a1 + 2);
    if (v11 >= v14)
    {
      break;
    }

    v15 = v5;
    v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = a1 + v29;
    v17 = *(v7 + 72);
    v18 = a1;
    v19 = *(v7 + 16);
    v28 = v17 * v11;
    v19(v30, &v16[v17 * v11], v3, v8);
    if (v13 >= v14)
    {
      goto LABEL_14;
    }

    v20 = v17 * v13;
    v21 = &v16[v17 * v13];
    v5 = v15;
    (v19)(v15, v21, v3);
    a1 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_45D574(v18);
    }

    v22 = a1 + v29;
    v23 = *v27;
    (*v27)(a1 + v29 + v28, v5, v3);
    if (v13 >= *(a1 + 2))
    {
      goto LABEL_15;
    }

    v23(&v22[v20], v30, v3);
    v12 = v25;
    v7 = v26;
LABEL_5:
    ++v11;
    --v13;
    if (v12 == v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_5B5140(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_76A860();
    if (v19)
    {
      v20 = v19;
      v1 = sub_7E3E8();
      sub_10CC98(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_76A860();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = sub_76A770();
          v11 = sub_76A770();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_45EDF0();
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_45EDF0();
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

id sub_5B5350()
{
  v1 = sub_760F30();
  if (v1 == sub_760F30())
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility);
  }

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView) setHidden:v2];
  if (sub_75FF00())
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton);
    v4 = 1;
  }

  else
  {
    v5 = sub_760F30();
    v6 = sub_760F30();
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton);
    if (v5 == v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1);
    }
  }

  return [v3 setHidden:v4];
}

char *sub_5B5448(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView(0);
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_animationVerticalOffset] = 0x4010000000000000;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_navigationBarMode] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButtonMode] = 0;
  v11 = &v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapGestureRecognizer;
  *&v5[v12] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility] = 0;
  v13 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton] = sub_1DD00C(1);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for ProductTitleView();
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setHeightShouldBeIncreasedByTabBarHeight:1];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapGestureRecognizer;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapGestureRecognizer] setEnabled:0];
  v19 = *&v16[v18];
  [v19 addTarget:v16 action:"didTapIcon:"];

  v20 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView] addGestureRecognizer:*&v16[v18]];
  [*&v16[v20] setHidden:1];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton] setHidden:1];
  [v16 addSubview:*&v16[v20]];
  [v16 addSubview:*&v16[v21]];
  [*&v16[v21] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*(*&v16[v21] + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView) setContentMode:1];
  [*&v16[v21] setShowsLargeContentViewer:1];
  v22 = *&v16[v21];
  v23 = objc_allocWithZone(UILargeContentViewerInteraction);
  v24 = v22;
  v25 = [v23 init];
  [v24 addInteraction:v25];

  v26 = [v16 traitCollection];
  LOBYTE(v24) = sub_7699D0();

  if (v24)
  {
    v27 = 16.0;
  }

  else
  {
    v27 = 20.0;
  }

  [v16 layoutMargins];
  v29 = v28;
  [v16 layoutMargins];
  [v16 setLayoutMargins:{v29, v27}];
  sub_BD88(&qword_9477F0, qword_780200);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_77B6D0;
  *(v30 + 32) = sub_767890();
  *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769F40();

  swift_unknownObjectRelease();

  return v16;
}

double sub_5B588C(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_7699D0();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_769C80(), v7, (v18 & 1) == 0))
  {
    if (CGRectGetMinY(v17) <= 50.0)
    {
      y = v17.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v17.origin.x;
    width = v17.size.width;
    height = v17.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v19);
    [v2 bounds];
    v9 = CGRectGetHeight(v20);
    [v2 floatingTabBarHeight];
    MidY = MinY + (v9 - v10) * 0.5;
  }

  return MidY + a1 * -0.5;
}

double sub_5B59D4(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_7699D0();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_769C80(), v7, (v20 & 1) == 0))
  {
    if (CGRectGetMinY(v19) <= 50.0)
    {
      y = v19.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v19.origin.x;
    width = v19.size.width;
    height = v19.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v21);
    [v2 bounds];
    v9 = CGRectGetHeight(v22);
    [v2 floatingTabBarHeight];
    v11 = MinY + (v9 - v10) * 0.5;
    [v2 floatingTabBarHeight];
    MidY = v12 + v11;
  }

  return MidY + a1 * -0.5;
}

uint64_t sub_5B5B2C()
{
  v1 = v0;
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v6 - 8);
  v8 = v101 - v7;
  *&v9 = COERCE_DOUBLE(type metadata accessor for ProductTitleView());
  v115.receiver = v0;
  v115.super_class = v9;
  objc_msgSendSuper2(&v115, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton];
  sub_75D650();
  v11 = &v10[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  v12 = v10[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16];
  v106 = v10;
  v101[0] = v5;
  v107 = v8;
  if (v12)
  {
    v13 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v10[v13], v114);
    sub_B170(v114, v114[3]);
    sub_760DE0();
    v15 = v14;
    v17 = v16;
    sub_BEB8(v114);
    *v11 = v15;
    v11[1] = v17;
    *(v11 + 16) = 0;
  }

  else
  {
    v17 = v11[1];
  }

  sub_75D650();
  CGRectGetMaxX(v116);
  sub_5B588C(v17);
  sub_75D650();
  sub_769D20();
  sub_769BA0();
  v105 = v18;
  v104 = v19;
  v103 = v20;
  v102 = v21;
  sub_769D50();
  MaxX = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v1 traitCollection];
  v31 = sub_7699F0();

  v32 = [v1 contentOverlayRects];
  v101[1] = sub_5B8064();
  v33 = sub_769460();

  if ((v31 & 1) == 0)
  {
    v33 = sub_5B5140(v33);
  }

  v108 = v3;
  v109 = v2;
  MidX = *&v9;
  if (v33 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v38 = sub_76A770();
      }

      else
      {
        if (v35 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_51;
        }

        v38 = *(v33 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v38 CGRectValue];
      x = v118.origin.x;
      y = v118.origin.y;
      width = v118.size.width;
      height = v118.size.height;
      v125.origin.x = MaxX;
      v125.origin.y = v25;
      v125.size.width = v27;
      v125.size.height = v29;
      if (!CGRectIntersectsRect(v118, v125))
      {

        goto LABEL_20;
      }

      v45 = [v1 traitCollection];
      v46 = sub_7699F0();

      v47 = x;
      v48 = y;
      v49 = width;
      v50 = height;
      if (v46)
      {
        MaxX = CGRectGetMaxX(*&v47);
      }

      else
      {
        MinX = CGRectGetMinX(*&v47);
        v117.origin.x = MaxX;
        v117.origin.y = v25;
        v117.size.width = v27;
        v117.size.height = v29;
        v37 = CGRectGetWidth(v117);

        MaxX = MinX - v37;
      }

      ++v35;
      if (v40 == i)
      {
        goto LABEL_20;
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
    ;
  }

LABEL_20:

  v119.origin.x = MaxX;
  v119.origin.y = v25;
  v119.size.width = v27;
  v119.size.height = v29;
  v51 = CGRectGetMinX(v119);
  sub_75D650();
  v52 = CGRectGetMinX(v120);
  v53 = 0.0;
  v54 = v109;
  v55 = v108;
  if (v52 <= v51 && (v121.origin.x = MaxX, v121.origin.y = v25, v121.size.width = v27, v121.size.height = v29, v56 = CGRectGetMaxX(v121), sub_75D650(), v56 <= CGRectGetMaxX(v122)))
  {
    sub_769D10();
    v105 = v58;
    v104 = v59;
    v103 = v60;
    v102 = v61;
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v105 = 0.0;
    v104 = 0.0;
    v103 = 0.0;
    v102 = 0.0;
  }

  v1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1] = v57;
  sub_5B5350();
  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView];
  v62 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconAspectRatio;
  swift_beginAccess();
  v63 = v107;
  sub_29A8E8(v33 + v62, v107);
  v64 = *(v55 + 48);
  v65 = v64(v63, 1, v54);
  sub_9C2A0(v63);
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v65 != 1)
  {
    sub_75D650();
    v70 = v69;
    if (v64(v33 + v62, 1, v54))
    {
      v68 = 40.0;
    }

    else
    {
      v71 = v101[0];
      (*(v55 + 16))(v101[0], v33 + v62, v54);
      sub_766660();
      v68 = v72;
      (*(v55 + 8))(v71, v54);
    }

    v73 = *(v33 + OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView);
    [v73 sizeThatFits:{1.79769313e308, 1.79769313e308, v101[0]}];
    v75 = v74;
    v77 = v76;
    v78 = [v73 isHidden];
    v79 = v75 + 50.0;
    if (v78)
    {
      v79 = 40.0;
    }

    if (v79 >= v70)
    {
      v67 = v70;
    }

    else
    {
      v67 = v79;
    }

    if (v68 <= v77)
    {
      v68 = v77;
    }

    sub_75D650();
    MidX = CGRectGetMidX(v123);
    v66 = sub_5B59D4(v68);
    v80 = [v1 contentOverlayRects];
    v81 = sub_769460();

    v111 = v81;
    v82 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility];
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1] & 1) == 0)
    {
      sub_BD88(&unk_93F5C0, &unk_77C600);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77D9F0;
      *(inited + 32) = [objc_opt_self() valueWithCGRect:{MaxX, v25, v27, v29}];
      sub_10A938(inited);
      v81 = v111;
    }

    v53 = MidX + v67 * -0.5;
    if (v81 >> 62)
    {
      v84 = sub_76A860();
    }

    else
    {
      v84 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
    }

    v85 = 0;
    do
    {
      v86 = v85;
      if (v84 == v85)
      {
        break;
      }

      if ((v81 & 0xC000000000000001) != 0)
      {
        v87 = sub_76A770();
      }

      else
      {
        if (v85 >= *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_53;
        }

        v87 = *(v81 + 8 * v85 + 32);
      }

      v88 = v87;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_52;
      }

      [v87 CGRectValue];
      v126.origin.x = v53;
      v126.origin.y = v66;
      v126.size.width = v67;
      v126.size.height = v68;
      v89 = CGRectIntersectsRect(v124, v126);

      v85 = v86 + 1;
    }

    while (!v89);

    *v82 = v84 != v86;
    sub_5B5350();
  }

  [v33 setFrame:{v53, v66, v67, v68, v101[0]}];
  v90 = type metadata accessor for OfferButton();
  v91 = v106;
  v113.receiver = v106;
  v113.super_class = v90;
  objc_msgSendSuper2(&v113, "frame");
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v112.receiver = v91;
  v112.super_class = v90;
  objc_msgSendSuper2(&v112, "setFrame:", v105, v104, v103, v102);
  return sub_1DC798(v93, v95, v97, v99);
}

id sub_5B6490()
{
  v1 = v0;
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_766660();
    (*(v3 + 8))(v5, v2);
  }

  v7 = *(v1 + OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView);
  [v7 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  return [v7 isHidden];
}

void sub_5B669C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_navigationBarMode] = a1;
  v12 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView];
  if ([v12 isHidden] && (v13 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton], objc_msgSend(*&v6[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton], "isHidden")) && (v14 = sub_760F30(), v14 == sub_760F30()))
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
    v16 = sub_5B59D4(Height);
    v17 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton];
    v18 = type metadata accessor for OfferButton();
    v65.receiver = v17;
    v65.super_class = v18;
    objc_msgSendSuper2(&v65, "frame");
    v19 = CGRectGetHeight(v69);
    v20 = sub_5B588C(v19);
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
      sub_1DC798(v39, v41, v43, v45);

      sub_5B6D14(v6, v28);
      if (v54)
      {
        v54();
      }
    }

    else
    {
      sub_5B7A88(v6, v24, v23, v21);
      v46 = objc_opt_self();
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      v48[2] = sub_5B7F40;
      v48[3] = v26;
      v48[4] = v47;
      v60 = sub_5B7FE0;
      v61 = v48;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_23F0CC;
      v59 = &unk_898F70;
      v49 = _Block_copy(&aBlock);

      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      v51[2] = sub_5B7F60;
      v51[3] = v27;
      v51[4] = v50;
      v51[5] = v54;
      v51[6] = v53;
      v60 = sub_5B8054;
      v61 = v51;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_3D6D80;
      v59 = &unk_898FC0;
      v52 = _Block_copy(&aBlock);

      sub_F714(v54, v53);

      [v46 animateWithDuration:v49 animations:v52 completion:*&a2];

      _Block_release(v52);
      _Block_release(v49);
    }
  }
}

void sub_5B6BA8(char *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView];
    v10 = a1;
    [v9 setAlpha:a3];
    v11 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton];
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
    sub_1DC798(v22, v24, v26, v28);
  }
}

void sub_5B6D14(char *a1, char a2)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView];
    v4 = a1;
    [v3 frame];
    IsEmpty = CGRectIsEmpty(v12);
    v6 = 1;
    if (!IsEmpty && (a2 & 1) == 0)
    {
      v6 = v4[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility];
    }

    [v3 setHidden:v6];
    v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton];
    v11.receiver = v7;
    v11.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v11, "frame");
    v8 = CGRectIsEmpty(v13);
    v9 = 1;
    if (!v8 && (a2 & 1) == 0)
    {
      if ((sub_75FF00() & 1) != 0 || (v10 = sub_760F30(), v10 == sub_760F30()))
      {
        v9 = 1;
      }

      else
      {
        v9 = v4[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1];
      }
    }

    [v7 setHidden:v9];
  }
}

void sub_5B6E38(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

void sub_5B6E9C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a2();

  if (a5)
  {
    a5();
  }
}

id sub_5B6F24(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView];
  if (a2)
  {

    v7 = sub_769210();

    [v4 setText:v7];

    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v3 traitCollection];
      v10 = sub_7699D0();

      goto LABEL_8;
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView] setText:0];
  }

  v10 = 1;
LABEL_8:
  [v4 setHidden:v10 & 1];

  return [v3 setNeedsLayout];
}

char *sub_5B711C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconView;
  sub_759210();
  *&v4[v11] = sub_759020();
  v12 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView;
  sub_75BB20();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconWidth] = 0x4044000000000000;
  v13 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconAspectRatio;
  v14 = sub_766690();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v29.receiver = v5;
  v29.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v20 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView;
  v21 = *&v19[OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 _gkPreferredFontForTextStyle:UIFontTextStyleBody symbolicTraits:2];
  [v23 setFont:v24];

  [*&v19[v20] setNumberOfLines:1];
  v25 = *&v19[v20];
  v26 = [v19 traitCollection];

  LOBYTE(v23) = sub_7699D0();
  [v25 setHidden:v23 & 1];

  [v19 addSubview:*&v19[OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconView]];
  [v19 addSubview:*&v19[v20]];
  sub_BD88(&qword_9477F0, qword_780200);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_77B6D0;
  *(v27 + 32) = sub_767890();
  *(v27 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769F40();

  swift_unknownObjectRelease();

  return v19;
}

void sub_5B74A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_766690();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v5);
  v8 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v8], 1, v3))
  {
    (*(v4 + 16))(v7, &v1[v8], v3);
    sub_766660();
    (*(v4 + 8))(v7, v3);
  }

  v9 = *&v1[OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView];
  if ([v9 isHidden])
  {
    sub_75D650();
    CGRectGetMidX(v20);
    sub_75D650();
    CGRectGetMidY(v21);
    sub_759170();
  }

  else
  {
    [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v11 = v10;
    v13 = v12;
    sub_75D650();
    CGRectGetMinX(v22);
    sub_75D650();
    CGRectGetMidY(v23);
    sub_759170();
    sub_759160();
    v14 = CGRectGetMaxX(v24) + 10.0;
    sub_75D650();
    MidY = CGRectGetMidY(v25);
    sub_75D650();
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

id sub_5B780C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductTitleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ProductTitleView.IconTitleView(uint64_t a1)
{
  result = qword_95C810;
  if (!qword_95C810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5B7928(uint64_t a1)
{
  sub_3A5BC4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_5B79D8(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_7699D0();

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

uint64_t sub_5B7A88(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView);
  [v7 frame];
  if (CGRectIsEmpty(v31))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility);
  }

  [v7 setHidden:v8];
  v9 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton);
  v10 = type metadata accessor for OfferButton();
  v30.receiver = v9;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "frame");
  if (CGRectIsEmpty(v32) || (sub_75FF00() & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1);
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
  return sub_1DC798(v19, v21, v23, v25);
}

void sub_5B7C50()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView(0);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_animationVerticalOffset) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_navigationBarMode) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButtonMode) = 0;
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility) = 0;
  sub_76A840();
  __break(1u);
}

id sub_5B7D40(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView];
  v3 = [v2 text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = sub_769240();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 traitCollection];
    v10 = sub_7699D0();
  }

  else
  {
LABEL_6:
    v10 = 1;
  }

  [v2 setHidden:v10 & 1];

  return [a1 setNeedsLayout];
}

void sub_5B7E2C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconView;
  sub_759210();
  *(v0 + v2) = sub_759020();
  v3 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView;
  sub_75BB20();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconWidth) = 0x4044000000000000;
  v4 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconAspectRatio;
  v5 = sub_766690();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  sub_76A840();
  __break(1u);
}

uint64_t sub_5B7F68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5B7FA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_5B7FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5B8004()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_5B8064()
{
  result = qword_945490;
  if (!qword_945490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_945490);
  }

  return result;
}

void sub_5B80B8(void *a1)
{
  sub_5B8AC0();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_5B8168(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23VideoCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_5B81BC;
}

void sub_5B81BC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_5B8AC0();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_5B8AC0();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_5B8450()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_5B8AC0();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    [v0 setNeedsLayout];
  }
}

id sub_5B8620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoCollectionViewCell(uint64_t a1)
{
  result = qword_95C848;
  if (!qword_95C848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5B8728(uint64_t a1)
{
  result = sub_75DC30();
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

uint64_t (*sub_5B87D4(uint64_t **a1))()
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
  v2[4] = sub_5B8168(v2);
  return sub_246E0;
}

uint64_t sub_5B8844(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_5B8898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_5B8904(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_21028;
}

uint64_t sub_5B8A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_5B8AC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_5B8A78(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    Strong = v1;
  }

  v2 = sub_4D2144(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t CrossLinkPresenter.adamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_adamId;
  v4 = sub_764CF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CrossLinkPresenter.isVisible.getter()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_5B8C58(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double CrossLinkPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

void (*CrossLinkPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_5B8EE4;
}

void sub_5B8EE4(uint64_t a1, char a2)
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
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t CrossLinkPresenter.__allocating_init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a6;
  v17 = swift_allocObject();
  CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(a1, a2, a3, a4, a5, v11, a7, a8, a9, a10);
  return v17;
}

void *CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v47 = a6;
  v52 = a5;
  v42 = a2;
  v43 = a4;
  v45 = a7;
  v46 = a10;
  v48 = *v10;
  v49 = a3;
  v14 = sub_7580D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = v10 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_view;
  *(v21 + 1) = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_adamId;
  v23 = sub_764CF0();
  v50 = *(v23 - 8);
  v51 = v23;
  (*(v50 + 16))(v11 + v22, a1);
  swift_beginAccess();
  v44 = a8;
  *(v21 + 1) = a8;
  v24 = v45;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v53 = a9;
  v54 = a1;
  v25 = v47;
  v26 = sub_758330();
  v27 = (v11 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_stateMachine);
  *v27 = v26;
  v27[1] = v28;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_758230();
  (*(v15 + 32))(v17, v20, v14);
  v29 = (*(v15 + 88))(v17, v14);
  if (v29 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = sub_75BC10();
LABEL_3:
    (*(*(v30 - 8) + 8))(v17, v30);
LABEL_6:
    v31 = 1;
    goto LABEL_7;
  }

  if (v29 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_6;
  }

  if (v29 == enum case for LegacyAppState.installing(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = sub_758040();
    goto LABEL_3;
  }

  if (v29 == enum case for LegacyAppState.openable(_:))
  {
    (*(v15 + 96))(v17, v14);

    v30 = sub_75E270();
    goto LABEL_3;
  }

  (*(v15 + 8))(v17, v14);
  v31 = 0;
LABEL_7:
  v32 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible;
  *(v11 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible) = v31;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v25 & 1;
  *(v34 + 32) = v48;

  sub_7581F0();

  if (v24)
  {
    ObjectType = swift_getObjectType();
    v36 = v44;
    v37 = *(v44 + 40);
    swift_unknownObjectRetain();
    v48 = v26;
    v37(v42, v49, v43, v52, ObjectType, v36);

    swift_unknownObjectRelease();
    v38 = swift_getObjectType();
    swift_beginAccess();
    v39 = *(v11 + v32);
    v40 = *(v36 + 32);
    swift_unknownObjectRetain();
    v40(v39, 0, v38, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    (*(v50 + 8))(v54, v51);
  }

  else
  {

    (*(v50 + 8))(v54, v51);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v11;
}

uint64_t sub_5B9618()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_5B9650(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_7580D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    sub_758230();
    (*(v5 + 32))(v7, v10, v4);
    v12 = (*(v5 + 88))(v7, v4);
    if (v12 == enum case for LegacyAppState.waiting(_:))
    {
      (*(v5 + 96))(v7, v4);
      v13 = sub_75BC10();
    }

    else
    {
      if (v12 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v5 + 8))(v7, v4);
        goto LABEL_7;
      }

      if (v12 == enum case for LegacyAppState.installing(_:))
      {
        (*(v5 + 96))(v7, v4);
        v13 = sub_758040();
      }

      else
      {
        if (v12 != enum case for LegacyAppState.openable(_:))
        {
          (*(v5 + 8))(v7, v4);
          v14 = 0;
          goto LABEL_8;
        }

        (*(v5 + 96))(v7, v4);

        v13 = sub_75E270();
      }
    }

    (*(*(v13 - 8) + 8))(v7, v13);
LABEL_7:
    v14 = 1;
LABEL_8:
    sub_5B8C58(v14);
  }

  return result;
}

uint64_t sub_5B990C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t CrossLinkPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_758210();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_adamId;
  v3 = sub_764CF0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_13238(v1 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CrossLinkPresenter.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_758210();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_adamId;
  v3 = sub_764CF0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_13238(v1 + OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_view);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_5B9B30(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for CrossLinkPresenter(uint64_t a1)
{
  result = qword_95C890;
  if (!qword_95C890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5B9C04(uint64_t a1)
{
  result = sub_764CF0();
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

uint64_t sub_5B9DA0()
{
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FDE8);
  qword_9A0038 = v0;
  unk_9A0040 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_9A0020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_5B9E5C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_lockupView]];

  v14 = [v11 contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_bundleView]];

  return v11;
}

id sub_5BA178(uint64_t a1)
{
  v2 = v1;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v3 = [v1 contentView];
  sub_2630C();
  sub_75D650();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_lockupView];
  v13 = sub_12EE70();
  v15 = v14;
  v40.origin.x = v5;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  MinX = CGRectGetMinX(v40);
  v36 = v7;
  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  MinY = CGRectGetMinY(v41);
  v38 = MinX;
  v17 = MinX;
  v18 = v13;
  v19 = v15;
  [v12 setFrame:v17];
  if (qword_93DD50 != -1)
  {
    swift_once();
  }

  sub_B170(qword_9A0020, qword_9A0038);
  v20 = [v2 traitCollection];
  sub_766710();
  v22 = v21;

  v42.origin.x = v5;
  v42.origin.y = v36;
  v42.size.width = v9;
  v42.size.height = v11;
  Height = CGRectGetHeight(v42);
  v43.origin.y = MinY;
  v43.origin.x = v38;
  v43.size.width = v18;
  v43.size.height = v19;
  v24 = Height - (v22 + CGRectGetHeight(v43));
  v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36BundleSearchResultCollectionViewCell_bundleView];
  v44.origin.x = v5;
  v44.origin.y = v36;
  v44.size.width = v9;
  v44.size.height = v11;
  [v25 sizeThatFits:{CGRectGetWidth(v44), v24}];
  v27 = v26;
  v29 = v28;
  v45.origin.x = v5;
  v45.origin.y = v36;
  v45.size.width = v9;
  v45.size.height = v11;
  v30 = CGRectGetMinX(v45);
  v46.origin.y = MinY;
  v46.origin.x = v38;
  v46.size.width = v18;
  v46.size.height = v19;
  MaxY = CGRectGetMaxY(v46);
  sub_B170(qword_9A0020, qword_9A0038);
  v32 = [v2 traitCollection];
  sub_766710();
  v34 = v33;

  return [v25 setFrame:{v30, MaxY + v34, v27, v29}];
}

id sub_5BA474(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_5BA51C()
{
  result = qword_941500;
  if (!qword_941500)
  {
    type metadata accessor for LargeLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941500);
  }

  return result;
}

double sub_5BA574()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA40();
  sub_75DA20();
  sub_765630();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  sub_29EC80(v8, v5, v7);
  v10 = v9;
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_5BA69C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v4;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v5 = *(a1 + 16);
  v15 = *a1;
  v16 = v5;
  v6 = sub_768430();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *v9 = sub_769970();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_768460();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v23 = xmmword_94DD18;
    v24 = xmmword_94DD28;
    v25 = xmmword_94DD38;
    v26 = qword_94DD48;
    v21 = xmmword_94DCF8;
    v22 = xmmword_94DD08;
    v27[3] = xmmword_94DD28;
    v27[4] = xmmword_94DD38;
    v27[1] = xmmword_94DD08;
    v27[2] = xmmword_94DD18;
    v28 = qword_94DD48;
    v27[0] = xmmword_94DCF8;
    sub_1ED18(&v21, v13, &unk_93FEF0, &unk_7834B0);
    xmmword_94DD18 = v17;
    xmmword_94DD28 = v18;
    xmmword_94DD38 = v19;
    qword_94DD48 = v20;
    xmmword_94DCF8 = v15;
    xmmword_94DD08 = v16;
    sub_10A2C(v27, &unk_93FEF0, &unk_7834B0);
    v12 = sub_45C2C(a1, v13);
    a2(v12);
    v13[2] = xmmword_94DD18;
    v13[3] = xmmword_94DD28;
    v13[4] = xmmword_94DD38;
    v14 = qword_94DD48;
    v13[0] = xmmword_94DCF8;
    v13[1] = xmmword_94DD08;
    xmmword_94DCF8 = v21;
    xmmword_94DD08 = v22;
    xmmword_94DD18 = v23;
    xmmword_94DD28 = v24;
    xmmword_94DD38 = v25;
    qword_94DD48 = v26;
    return sub_10A2C(v13, &unk_93FEF0, &unk_7834B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_5BA914()
{
  v1 = type metadata accessor for DividerView.Style(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_dividerView];
  if (v5)
  {
    v6 = qword_93D2D8;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_BE38(v1, qword_99E220);
    sub_395C4(v8, v4);
    v9 = &v7[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
    swift_beginAccess();
    sub_39628(v4, v9);
    swift_endAccess();
    v10 = &v7[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
    v11 = *(v9 + 1);
    *v10 = *v9;
    *(v10 + 1) = v11;
    [v7 setNeedsLayout];
    [v7 setNeedsLayout];
    sub_3968C(v4);
    v12 = [v0 contentView];
    [v12 addSubview:v7];
  }

  return [v0 setNeedsLayout];
}

id sub_5BAAA8()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_hasDivider] == 1)
  {
    v1 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v2 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_dividerView;
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_dividerView];
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *&v0[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v0[v2] = v1;
    v8 = v1;

    sub_5BA914();
  }

  else
  {
    v5 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_dividerView;
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_dividerView];
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    sub_5BA914();
  }

  return [v0 setNeedsLayout];
}

UIFontTextStyle sub_5BABD4()
{
  v0 = sub_7664A0();
  sub_161DC(v0, qword_9A0048);
  *sub_BE38(v0, qword_9A0048) = UIFontTextStyleBody;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_5BAC94(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  *v7 = UIFontTextStyleBody;
  *(v7 + 2) = 0;
  v9 = enum case for FontUseCase.preferredFont(_:);
  v10 = sub_7666D0();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v15[3] = v4;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v15);
  (*(v5 + 16))(v11, v7, v4);
  v12 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_5BAE7C()
{
  v0 = sub_766CA0();
  sub_161DC(v0, qword_95CA30);
  sub_BE38(v0, qword_95CA30);
  if (qword_93DD70 != -1)
  {
    swift_once();
  }

  v1 = sub_7664A0();
  v2 = sub_BE38(v1, qword_9A0048);
  v5[3] = v1;
  v5[4] = &protocol witness table for FontSource;
  v3 = sub_B1B4(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return sub_766CB0();
}

uint64_t sub_5BAF8C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93DD70 != -1)
  {
    swift_once();
  }

  v9 = sub_BE38(v4, qword_9A0048);
  (*(v5 + 16))(v7, v9, v4);
  return sub_759340();
}

char *sub_5BB0E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_button;
  sub_75C560();
  if (qword_93DA20 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v10, qword_99F658);
  (*(v11 + 16))(v13, v17, v10);
  *&v5[v16] = sub_75C550();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_dividerView] = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_action;
  v19 = sub_BD88(&unk_950960, &qword_793110);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_hasDivider] = 0;
  v20 = type metadata accessor for RoundedButtonCollectionViewCell(0);
  v27.receiver = v5;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v23 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_button;
  v24 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_button];
  [v24 addTarget:v21 action:"didTapButton:" forControlEvents:64];

  [*&v21[v23] _setWantsAccessibilityUnderline:0];
  v25 = [v21 contentView];

  [v25 addSubview:*&v21[v23]];
  return v21;
}

id sub_5BB43C()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoundedButtonCollectionViewCell(0);
  v55.receiver = v0;
  v55.super_class = v9;
  objc_msgSendSuper2(&v55, "layoutSubviews");
  v10 = [v0 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_dividerView];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style;
    swift_beginAccess();
    sub_395C4(v19 + v20, v8);
    v21 = qword_93D2C8;
    v22 = v19;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = floor(*&qword_99E200);
    sub_766470();
    v24 = sub_766CA0();
    sub_766700();
    v26 = v25;
    v27 = *(v3 + 8);
    v27(v5, v2);
    v28 = v23 + v26;
    sub_3968C(v8);
    if (qword_93DD78 != -1)
    {
      swift_once();
    }

    sub_BE38(v24, qword_95C9E8);
    sub_766470();
    sub_766700();
    v30 = v29;
    v27(v5, v2);
    [v22 setFrame:{0.0, v30, v16, v28}];
    v56.origin.x = 0.0;
    v56.origin.y = v30;
    v56.size.width = v16;
    v56.size.height = v28;
    MaxY = CGRectGetMaxY(v56);
    if (qword_93DD80 != -1)
    {
      swift_once();
    }

    v32 = sub_BD88(&qword_940AD0, &unk_78F910);
    sub_BE38(v32, qword_95CA00);
    sub_766470();
    sub_759360();
    v34 = v33;

    v27(v5, v2);
    v35 = MaxY + v34;
  }

  else
  {
    if (qword_93DD90 != -1)
    {
      swift_once();
    }

    v36 = sub_766CA0();
    sub_BE38(v36, qword_95CA30);
    sub_766470();
    sub_766700();
    v35 = v37;
    v27 = *(v3 + 8);
    v27(v5, v2);
  }

  v38 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_button];
  v39 = [v38 imageForState:0];
  if (v39)
  {

    if (UIAccessibilityIsBoldTextEnabled())
    {
      if (qword_93DD60 != -1)
      {
        swift_once();
      }

      v40 = qword_95C9B8;
    }

    else
    {
      if (qword_93DD58 != -1)
      {
        swift_once();
      }

      v40 = qword_95C9A0;
    }

    v42 = sub_766CA0();
    sub_BE38(v42, v40);
    sub_766470();
    sub_766700();
    v44 = v43;
    v27(v5, v2);
    v41 = ceil(v44 * 0.5);
  }

  else
  {
    v41 = 0.0;
  }

  v45 = [v1 traitCollection];
  v46 = sub_7699F0();

  if (v46)
  {
    v47 = -v41;
  }

  else
  {
    v47 = v41;
  }

  [v38 setContentEdgeInsets:{0.0, v41 + 32.0, 0.0, v41 + v41 + 32.0}];
  [v38 setImageEdgeInsets:{0.0, -v47, 0.0, v47}];
  [v38 setTitleEdgeInsets:{0.0, v47, 0.0, -v47}];
  [v38 sizeThatFits:{v16, v18}];
  v49 = v48;
  if (qword_93DD68 != -1)
  {
    swift_once();
  }

  v50 = sub_766CA0();
  sub_BE38(v50, qword_95C9D0);
  sub_766470();
  sub_766700();
  v52 = v51;
  v27(v5, v2);
  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  [v38 setFrame:{CGRectGetMidX(v57) - v49 * 0.5, v35, v49, v52}];
  return [v38 _setCornerRadius:v52 * 0.5];
}

uint64_t sub_5BBB78(void *a1)
{
  v3 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-v4];
  v6 = sub_BD88(&unk_950960, &qword_793110);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-v8];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  sub_1ED18(v1 + v10, v5, &qword_94EC40, &unk_793120);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10A2C(v5, &qword_94EC40, &unk_793120);
  }

  (*(v7 + 32))(v9, v5, v6);
  v12 = [a1 bounds];
  v23[8] = 1;
  v25 = 1;
  v28 = 15;
  v24[0] = a1;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  __asm { FMOV            V0.2D, #10.0 }

  v26 = _Q0;
  v27 = _Q0;
  __chkstk_darwin(v12);
  *&v23[-16] = v9;
  v22 = a1;
  sub_5BA69C(v24, sub_5BC790);
  sub_45C88(v24);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_5BBDD8()
{
  v0 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v0 - 8);
  v2 = v7 - v1;
  sub_BD88(&unk_950960, &qword_793110);
  v3 = sub_75B460();
  v4 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {

    return sub_10A2C(v2, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_75B470();
    sub_32A6C0(v7[1], 1, v3, v2);

    return (*(v5 + 8))(v2, v4);
  }
}

id sub_5BBFF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedButtonCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RoundedButtonCollectionViewCell(uint64_t a1)
{
  result = qword_95CA90;
  if (!qword_95CA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5BC0FC(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    sub_2F1CA0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_5BC1E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&qword_940AD0, &unk_78F910);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75A540())
  {
    v38 = v4;
    if (qword_93DD78 != -1)
    {
      swift_once();
    }

    v11 = sub_766CA0();
    sub_BE38(v11, qword_95C9E8);
    swift_getObjectType();
    sub_766470();
    sub_766700();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v10, v7);
    type metadata accessor for DividerView(0);
    if (qword_93D2D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for DividerView.Style(0);
    v16 = sub_BE38(v15, qword_99E220);
    v17 = v13 + sub_50F450(v16, a2);
    if (qword_93DD80 != -1)
    {
      swift_once();
    }

    sub_BE38(v3, qword_95CA00);
    sub_766470();
    sub_759360();
    v19 = v18;
    v14(v10, v7);
    v20 = v17 + v19;
    if (qword_93DD68 != -1)
    {
      swift_once();
    }

    sub_BE38(v11, qword_95C9D0);
    sub_766470();
    sub_766700();
    v22 = v21;
    v14(v10, v7);
    v23 = v20 + v22;
    if (qword_93DD88 != -1)
    {
      swift_once();
    }

    v24 = sub_BE38(v3, qword_95CA18);
    v25 = v38;
    (*(v38 + 16))(v6, v24, v3);
    sub_766470();
    sub_759360();
    v27 = v26;
    v14(v10, v7);
    (*(v25 + 8))(v6, v3);
  }

  else
  {
    if (qword_93DD90 != -1)
    {
      swift_once();
    }

    v28 = sub_766CA0();
    sub_BE38(v28, qword_95CA30);
    sub_766470();
    sub_766700();
    v30 = v29;
    v31 = *(v8 + 8);
    v31(v10, v7);
    if (qword_93DD68 != -1)
    {
      swift_once();
    }

    sub_BE38(v28, qword_95C9D0);
    sub_766470();
    sub_766700();
    v33 = v32;
    v31(v10, v7);
    v23 = v30 + v33;
    if (qword_93DD98 != -1)
    {
      swift_once();
    }

    v34 = sub_BE38(v3, qword_95CA48);
    (*(v4 + 16))(v6, v34, v3);
    sub_766470();
    sub_759360();
    v27 = v35;
    v31(v10, v7);
    (*(v4 + 8))(v6, v3);
  }

  return v23 + v27;
}

void sub_5BC7AC()
{
  v1 = v0;
  v2 = sub_7666D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_itemLayoutContext;
  v7 = sub_75C840();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_button;
  sub_75C560();
  if (qword_93DA20 != -1)
  {
    swift_once();
  }

  v9 = sub_BE38(v2, qword_99F658);
  (*(v3 + 16))(v5, v9, v2);
  *(v1 + v8) = sub_75C550();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_dividerView) = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_action;
  v11 = sub_BD88(&unk_950960, &qword_793110);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31RoundedButtonCollectionViewCell_hasDivider) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_5BC9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v89 = a3;
  v90 = sub_766260();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_BD88(&qword_95CB48, qword_7A7AE8) - 8;
  __chkstk_darwin(v81);
  v93 = v75 - v6;
  v79 = sub_75DD30();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v94 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75DCF0();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v82 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v75 - v11;
  v92 = sub_75DCD0();
  v77 = *(v92 - 8);
  __chkstk_darwin(v92);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_764CF0();
  v97 = *(v101 - 8);
  __chkstk_darwin(v101);
  v84 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v75 - v17;
  v19 = sub_766240();
  v98 = *(v19 - 8);
  __chkstk_darwin(v19);
  v83 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v75 - v22;
  v96 = v3;
  v24 = *(v3 + 24);
  sub_75DD50();
  sub_75DD00();
  sub_75DD20();
  v85 = a1;
  sub_75DD40();
  v75[2] = v24;
  swift_getObjectType();
  sub_758330();
  v75[1] = v25;
  v26 = *(v81 + 56);
  v27 = v99;
  v28 = *(v99 + 16);
  v29 = v93;
  v80 = v12;
  v30 = v100;
  v28(v93, v12, v100);
  v31 = v77;
  v32 = *(v77 + 16);
  v76 = v26;
  v81 = v14;
  v32(v29 + v26, v14, v92);
  v33 = (*(v27 + 88))(v29, v30);
  v91 = v19;
  v34 = v98;
  v95 = v23;
  if (v33 == enum case for AdvertActionMetrics.Invocation.advertPressed(_:))
  {
    swift_unknownObjectRelease();
    (*(v78 + 8))(v94, v79);
    v35 = *(v27 + 8);
    v35(v80, v30);
    v36 = *(v31 + 8);
    v37 = v92;
    v36(v81, v92);
    (*(v97 + 8))(v18, v101);
    (*(v34 + 104))(v95, enum case for AdInteractionType.normal(_:), v91);
    v38 = v93;
    v36(v93 + v76, v37);
    v94 = v35;
    v35(v38, v30);
    goto LABEL_12;
  }

  v39 = v94;
  v75[0] = v18;
  v40 = v78;
  v41 = v79;
  v42 = v92;
  v43 = v93;
  if (v33 == enum case for AdvertActionMetrics.Invocation.markerPress(_:))
  {
    swift_unknownObjectRelease();
    (*(v40 + 8))(v39, v41);
    v44 = v100;
    v45 = *(v99 + 8);
    v45(v80, v100);
    v46 = *(v31 + 8);
    v46(v81, v42);
    (*(v97 + 8))(v75[0], v101);
    (*(v98 + 104))(v95, enum case for AdInteractionType.adMarker(_:), v91);
    v46(v43 + v76, v42);
    v94 = v45;
    v45(v43, v44);
    goto LABEL_12;
  }

  v47 = v97;
  v48 = v95;
  v49 = v93;
  v50 = v92;
  v51 = v31;
  v52 = v79;
  v53 = v75[0];
  if (v33 == enum case for AdvertActionMetrics.Invocation.offerButtonPress(_:))
  {
    v54 = v93;
    v55 = (*(v51 + 88))(v93 + v76, v92);
    if (v55 == enum case for AdvertActionMetrics.AdvertType.standardApp(_:))
    {
      sub_538B18(v48);
LABEL_10:
      swift_unknownObjectRelease();
      (*(v40 + 8))(v39, v52);
      v56 = v100;
      v57 = *(v99 + 8);
      v57(v80, v100);
      (*(v51 + 8))(v81, v50);
      (*(v97 + 8))(v53, v101);
      v94 = v57;
      v57(v54, v56);
      goto LABEL_12;
    }

    v49 = v54;
    if (v55 == enum case for AdvertActionMetrics.AdvertType.arcadeApp(_:))
    {
      sub_538744(v48);
      goto LABEL_10;
    }
  }

  v58 = v49;
  swift_unknownObjectRelease();
  (*(v40 + 8))(v39, v52);
  v94 = *(v99 + 8);
  (v94)(v80, v100);
  (*(v51 + 8))(v81, v50);
  (*(v47 + 8))(v53, v101);
  (*(v98 + 104))(v48, enum case for AdInteractionType.open(_:), v91);
  sub_10A2C(v58, &qword_95CB48, qword_7A7AE8);
LABEL_12:
  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v93 = sub_768FF0();
  v92 = sub_BE38(v93, qword_9A0460);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_7A7A50;
  sub_7685D0();
  sub_768540();
  sub_768540();
  v59 = sub_75DD10();
  v104 = &type metadata for String;
  v102 = v59;
  v103 = v60;
  sub_7685C0();
  sub_10A2C(&v102, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  v104 = v101;
  sub_B1B4(&v102);
  sub_75DD50();
  sub_768550();
  sub_10A2C(&v102, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  v61 = v82;
  sub_75DD20();
  v62 = sub_75DCE0();
  v64 = v63;
  (v94)(v61, v100);
  v104 = &type metadata for String;
  v102 = v62;
  v103 = v64;
  sub_7685C0();
  sub_10A2C(&v102, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  v65 = v91;
  v104 = v91;
  v66 = sub_B1B4(&v102);
  v67 = v98;
  v68 = *(v98 + 16);
  v69 = v95;
  v68(v66, v95, v65);
  sub_768550();
  sub_10A2C(&v102, &unk_93FBD0, &qword_77DFA0);
  sub_768E80();

  v70 = sub_75DD10();
  v99 = v71;
  v100 = v70;
  v68(v83, v69, v65);
  sub_75DD60();
  v72 = v84;
  sub_75DD50();
  sub_764CA0();
  (*(v97 + 8))(v72, v101);
  v73 = v86;
  sub_766250();
  sub_765FB0();
  (*(v87 + 8))(v73, v90);
  return (*(v67 + 8))(v69, v65);
}

char *sub_5BD72C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_cardView]];

  return v18;
}

void sub_5BD9C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v2 - 8);
  v62 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v51 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v63 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (!v12)
  {

    return;
  }

  v13 = v12;
  v14 = [v11 superview];
  if (!v14)
  {

LABEL_21:

    return;
  }

  v15 = v14;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_cardView;
  v17 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_cardView];

  v18 = v15;
  v19 = v17;
  sub_755FA8(v19, v13, v18);

  v20 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v17) = sub_38F8EC(v21);

  if ((v17 & 1) == 0)
  {

    goto LABEL_21;
  }

  v22 = [v11 viewWithTag:58236912];
  [v22 removeFromSuperview];

  v23 = *&v11[v16];
  v24 = qword_964F50;
  swift_beginAccess();
  v61 = v23;
  v25 = *&v23[v24];
  v55 = v11;
  v54 = v13;
  v53 = v18;
  if (v25 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v27 = qword_964F38;
    v28 = v61;
    v52 = v61;

    v67 = v27;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v29 = 0;
    v65 = v25 & 0xFFFFFFFFFFFFFF8;
    v66 = v25 & 0xC000000000000001;
    v64 = (v8 + 48);
    v60 = (v8 + 32);
    v59 = (v8 + 16);
    v58 = (v8 + 56);
    v57 = (v8 + 8);
    v30 = 32;
    v56 = v6;
    while (1)
    {
      if (v66)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v29 >= *(v65 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(v25 + 8 * v29 + 32);
      }

      v31 = *&v28[v67];
      if (v29 >= *(v31 + 16))
      {
        break;
      }

      v32 = *(v31 + v30);
      sub_764E50();
      if ((*v64)(v6, 1, v7) == 1)
      {

        sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
      }

      else
      {
        v33 = v63;
        (*v60)(v63, v6, v7);
        v34 = v32;
        [v34 bounds];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v43 = [objc_opt_self() blueColor];
        v44 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
        v45 = sub_6F4BD4(v43, v36, v38, v40, v42);
        v46 = i;
        v47 = v25;
        v48 = v62;
        (*v59)(v62, v33, v7);
        (*v58)(v48, 0, 1, v7);
        sub_6F47B4(v48);
        sub_10A2C(v48, &unk_93FF30, &unk_77DB10);
        v49 = [v34 viewWithTag:58236912];
        [v49 removeFromSuperview];

        v25 = v47;
        i = v46;
        v6 = v56;
        [v34 addSubview:v45];

        v50 = v33;
        v28 = v61;
        (*v57)(v50, v7);
      }

      ++v29;

      v30 += 16;
      if (i == v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_22:
}

uint64_t type metadata accessor for ArcadeDownloadPackCollectionViewCell(uint64_t a1)
{
  result = qword_95CB78;
  if (!qword_95CB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5BE0CC(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_5BE17C()
{
  swift_beginAccess();

  return result;
}

double sub_5BE1C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_5BE27C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_5BE2D8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_5BE398(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_5BE4E8;
}

uint64_t sub_5BE438()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5BE470()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5BE4A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_5BE4F0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

id sub_5BE5DC(uint64_t a1, void *a2)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_7575D0();
  sub_7616C0();
  sub_5BEAC8();
  sub_75AF10();
  v8 = sub_764910();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_3DF2F8(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_764910();
    v18 = v17;
    swift_beginAccess();
    isa = sub_20623C(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_764910();
    v20 = sub_769210();

    isa = sub_757550().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

id sub_5BEA04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PurchasesCollectionViewDataSource();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_5BEAC8()
{
  result = qword_95CBD8;
  if (!qword_95CBD8)
  {
    sub_7616C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95CBD8);
  }

  return result;
}

uint64_t sub_5BEB20(uint64_t a1)
{
  sub_7616C0();
  sub_5BEAC8();
  if (sub_75AF30() <= a1 || (sub_75AEE0() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_75AF20();
  if (sub_5C5374(a1))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

double sub_5BEBD4(uint64_t a1, __n128 a2)
{
  sub_76A6D0();
  v3 = sub_769330();
  v4 = *(v2 + 72);
  if (v4 && (v4(v3), v5))
  {
    sub_76AA50(1u);
    sub_769330();
  }

  else
  {
    sub_76AA50(0);
  }

  return result;
}

void *sub_5BEC78(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v2 = v1;
  if ((sub_76A6C0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  if (result[7] != v1[7] || result[8] != v1[8])
  {
    v5 = result;
    v6 = sub_76A950();
    result = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = result[9];
  if (!v7)
  {
    v17 = v2[9];

    if (!v17)
    {
      goto LABEL_25;
    }

    v17(v18);
    v16 = v19;
    goto LABEL_18;
  }

  v9 = v7(v8);
  v11 = v10;
  v12 = v2[9];
  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v13 = v9;
  v14 = v12();
  v16 = v15;
  if (!v11)
  {
LABEL_18:

    if (!v16)
    {
      return (&dword_0 + 1);
    }

    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_21:

LABEL_22:

    return 0;
  }

  if (v13 == v14 && v11 == v15)
  {

LABEL_25:

    return (&dword_0 + 1);
  }

  v20 = sub_76A950();

  return (v20 & 1);
}

double sub_5BEE54()
{

  sub_F704(*(v0 + 72), *(v0 + 80));

  return result;
}

uint64_t sub_5BEE8C()
{
  sub_1EB60(v0 + 16);

  sub_F704(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_5BEF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_7572E0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  sub_F714(a3, a4);

  sub_7572D0();
  v18 = sub_7572B0();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  v23[1] = v18;
  v23[2] = v20;
  sub_76A6E0();
  v21 = v25;
  *(v7 + 16) = v24;
  *(v7 + 32) = v21;
  *(v7 + 48) = v26;
  return v7;
}

void sub_5BF080(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_5C7CF0, v8);
}

uint64_t sub_5BF154(double a1, double a2, double a3, double a4)
{
  v5 = sub_768A80();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764A70();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10A2C(v11, &unk_93FF30, &unk_77DB10);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (*(v4 + 112))
    {

      sub_75F4B0();

      if (*(v4 + 112))
      {

        sub_768A90();
        v16 = sub_75F4A0();

        (*(v6 + 8))(v8, v5);
        (*(v13 + 8))(v15, v12);
        return v16;
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

double sub_5BF41C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  v54 = a4;
  v49 = a2;
  v56 = a1;
  v6 = sub_75B660();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v47 - v9;
  v10 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_764930();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  sub_7616C0();
  sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v20 = sub_75AFE0();
  v55 = v19;
  v56 = v20;
  sub_764940();
  if (a3)
  {
    v21 = v12;
    (*(v14 + 56))(v12, 1, 1, v13);
    v23 = v50;
    v22 = v51;
    v24 = v52;
    (*(v51 + 104))(v50, enum case for ShelfBackground.none(_:), v52);
  }

  else
  {
    sub_75AF10();
    v21 = v12;
    (*(v14 + 56))(v12, 0, 1, v13);
    v25 = v50;
    sub_75AF00();
    v22 = v51;
    v24 = v52;
    v23 = v25;
  }

  v26 = v14;
  v27 = *(v14 + 16);
  v28 = v55;
  v27(v16, v55, v13);
  v29 = (*(v26 + 88))(v16, v13);
  v30 = v54;
  v53 = v26;
  if (v29 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v31 = &off_89D438;
  }

  else
  {
    if (v29 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v26 + 8))(v16, v13);
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v31 = &off_8924D0;
  }

  v32 = (v31[2])();
  if ((v33 & 1) == 0)
  {
    v34 = *&v32;

    v35 = v34;
    (*(v22 + 8))(v23, v24);
    sub_10A2C(v21, &qword_951BE0, &unk_782280);
    (*(v53 + 8))(v28, v13);
    return v35;
  }

LABEL_11:
  v36 = sub_3AC688();
  if (v36)
  {
    v38 = v36;
    v39 = v37;
    v40 = v24;
    v41 = v48;
    v52 = v13;
    sub_7648F0();
    *&v42 = COERCE_DOUBLE((*(v39 + 48))(v21, v23, v41, v30, v38, v39));
    v44 = v43;

    v45 = *(v22 + 8);
    v45(v41, v40);
    v45(v23, v40);
    sub_10A2C(v21, &qword_951BE0, &unk_782280);
    (*(v53 + 8))(v55, v52);
    v35 = 0.0;
    if ((v44 & 1) == 0)
    {
      return *&v42;
    }
  }

  else
  {

    (*(v22 + 8))(v23, v24);
    sub_10A2C(v21, &qword_951BE0, &unk_782280);
    (*(v53 + 8))(v28, v13);
    return 0.0;
  }

  return v35;
}

double sub_5BF9A8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7616C0();
  sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v11 = 0.0;
  if (sub_75AF30() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_75AFF0();
  if (v17)
  {
    v59 = v16;
    v60 = v17;
    v18 = sub_75AF40();
    if (v18)
    {
      v57 = v18;
      sub_764C60();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_93C5E0 != -1)
      {
        swift_once();
      }

      v21 = qword_9481A0;
      v55 = v4;
      v56 = v20;
      if (v20)
      {
        v20 = sub_769210();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v54 = v22;
        v24 = [v54 font];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v26 = 0;
        }

        v30 = v54;
        [v54 setFont:v26];
      }

      v27 = a2;
      v28 = v10;
      [v21 sizeThatFits:{v13, v15}];
      v32 = v31;
      v11 = v33;

      v29 = v32 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];
    }

    else
    {
      v27 = a2;
      v28 = v10;
      v29 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [v27 pageMarginInsets];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (a1 >= 1)
    {
      v41 = a1 - 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = v34.n128_f64[0] + sub_5BF41C(a1, v41, a1 < 1, v27, v34);
    v43 = sub_75AF50();
    v44 = sub_75B000();
    v56 = v45;
    v57 = v44;
    v46 = sub_75AF90();
    v47 = [v27 traitCollection];
    v48 = sub_769A00();

    if (v43)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_69DB8C(a1, v27, v28);
    sub_1995E0(v57, v56, v46, v59, v60, v43, 0, 0, v13, v15, v29, v11, v42, v36, v38, v40, 0, 0, v50, v28, 1, v27);
    v13 = v51;

    sub_1227C4(v28);
  }

  return v13;
}

void sub_5BFE68(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v131 = a4;
  v140 = a3;
  v129 = a2;
  v121 = sub_764A60();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v108 - v8;
  v9 = sub_BD88(&unk_955F20, &unk_77EB30);
  __chkstk_darwin(v9 - 8);
  v126 = &v108 - v10;
  v128 = sub_75FA00();
  v135 = *(v128 - 8);
  __chkstk_darwin(v128);
  v139 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v108 - v13;
  __chkstk_darwin(v15);
  v138 = &v108 - v16;
  v17 = sub_757640();
  v124 = *(v17 - 8);
  __chkstk_darwin(v17);
  v123 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v19 - 8);
  v125 = &v108 - v20;
  v122 = sub_BD88(&qword_946810, &qword_783360);
  v127 = *(v122 - 8);
  __chkstk_darwin(v122);
  v137 = &v108 - v21;
  v22 = sub_764930();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v112 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v117 = &v108 - v26;
  __chkstk_darwin(v27);
  v29 = &v108 - v28;
  v130 = v4;
  v30 = *(v4 + 16);
  sub_7575D0();
  sub_7616C0();
  sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_75AF10();
  v31 = sub_3AC688();
  if (!v31)
  {
    v23[1](v29, v22);
    return;
  }

  v113 = v17;
  v115 = v32;
  v116 = v31;
  v133 = v29;
  sub_7575D0();
  v33 = sub_75AEF0();
  v136 = v22;
  v34 = a1;
  v35 = v30;
  if ((v33 & 1) != 0 && (v36 = sub_7575D0(), v36 < sub_75AF30()) && (sub_75AEE0() & 1) == 0)
  {
    v94 = sub_75AF20();
    if (sub_5C53BC(v36, &type metadata accessor for PurchasesContentPresenter, &qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter))
    {
      v95 = 1;
    }

    else
    {
      v95 = v94;
    }

    v114 = v95;
  }

  else
  {
    v114 = 0;
  }

  sub_7575D0();
  v37 = sub_75AEF0();
  v134 = v35;
  if (v37)
  {
    sub_7575D0();
    v132 = sub_75AFE0();
  }

  else
  {
    v132 = 0;
  }

  v38 = v133;
  v39 = v131;
  [v131 bounds];
  [v39 safeAreaInsets];
  sub_769DA0();
  v41 = v40;
  v43 = v42;
  v44 = sub_3AC688();
  v131 = v23;
  if (!v44)
  {
    goto LABEL_27;
  }

  v46 = v44;
  v47 = v45;
  v48 = v140;
  ObjectType = swift_getObjectType();
  [v48 pageMarginInsets];
  v50 = (*(v47 + 32))(0, v48, v46, v47, v49);
  v41 = v41 - (v50 + v51);
  v52 = [v48 traitCollection];
  v53 = v23[2];
  v54 = v117;
  v55 = v23;
  v56 = v136;
  v110 = v53;
  (v53)(v117, v38, v136);
  v57 = v55[11];
  v58 = (v57)(v54, v56);
  if (v58 == enum case for Shelf.ContentType.artwork(_:))
  {

    goto LABEL_13;
  }

  v23 = v131;
  if (v58 != enum case for Shelf.ContentType.ribbonBar(_:) && v58 != enum case for Shelf.ContentType.ribbonFlow(_:) && v58 != enum case for Shelf.ContentType.paragraph(_:) && v58 != enum case for Shelf.ContentType.footnote(_:) && v58 != enum case for Shelf.ContentType.titledParagraph(_:) && v58 != enum case for Shelf.ContentType.reviewsContainer(_:) && v58 != enum case for Shelf.ContentType.reviewSummary(_:) && v58 != enum case for Shelf.ContentType.editorialLink(_:) && v58 != enum case for Shelf.ContentType.quote(_:) && v58 != enum case for Shelf.ContentType.framedArtwork(_:) && v58 != enum case for Shelf.ContentType.screenshots(_:))
  {
    if (v58 == enum case for Shelf.ContentType.appShowcase(_:))
    {

      v23 = v131;
      goto LABEL_27;
    }

    v109 = v52;
    if (v58 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v58 == enum case for Shelf.ContentType.linkableText(_:) || v58 == enum case for Shelf.ContentType.framedVideo(_:) || v58 == enum case for Shelf.ContentType.productDescription(_:) || v58 == enum case for Shelf.ContentType.banner(_:) || v58 == enum case for Shelf.ContentType.roundedButton(_:) || v58 == enum case for Shelf.ContentType.titledButtonStack(_:) || v58 == enum case for Shelf.ContentType.smallStoryCard(_:) || v58 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) || v58 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v58 == enum case for Shelf.ContentType.upsellBreakout(_:) || v58 == enum case for Shelf.ContentType.smallBreakout(_:) || v58 == enum case for Shelf.ContentType.arcadeFooter(_:) || v58 == enum case for Shelf.ContentType.editorialQuote(_:) || v58 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v58 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v58 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v58 == enum case for Shelf.ContentType.privacyHeader(_:) || v58 == enum case for Shelf.ContentType.privacyFooter(_:) || v58 == enum case for Shelf.ContentType.privacyCategory(_:) || v58 == enum case for Shelf.ContentType.privacyDefinition(_:) || v58 == enum case for Shelf.ContentType.heroCarousel(_:) || v58 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v96 = *(v131 + 1), v97 = v117, v117 = v131 + 8, v98 = v96, v96(v97, v136), (sub_7699E0() & 1) == 0))
    {

      goto LABEL_13;
    }

    v99 = v109;
    v100 = sub_769A00();

    if (v100)
    {
LABEL_13:
      v23 = v131;
      goto LABEL_27;
    }

    v101 = v133;
    v109 = sub_5C6368(v133, v114, v140);
    v102 = v112;
    v103 = v101;
    v104 = v136;
    (v110)(v112, v103, v136);
    v105 = (v57)(v102, v104);
    if (v105 == enum case for Shelf.ContentType.annotation(_:) || v105 == enum case for Shelf.ContentType.productCapability(_:) || v105 == enum case for Shelf.ContentType.productPageLink(_:) || v105 == enum case for Shelf.ContentType.privacyType(_:))
    {
      if (!__OFSUB__(v109, 1))
      {
        v107 = v41 + (v109 - 1) * -30.0;
        goto LABEL_81;
      }
    }

    else
    {
      v98(v112, v136);
      PageTraitEnvironment.pageColumnMargin.getter();
      if (!__OFSUB__(v109, 1))
      {
        v107 = v41 - v106 * (v109 - 1);
LABEL_81:
        v41 = v107 / v109;
        goto LABEL_13;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_27:
  if (v41 <= 0.0)
  {
    v41 = 0.0;
  }

  v59 = v34;
  sub_75AFD0();
  (*(v124 + 16))(v123, v34, v113);
  sub_769080();
  v141 = *(v130 + 24);

  sub_BD88(&qword_9467C0, &qword_790FA0);
  sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
  sub_769020();
  v60 = v138;
  sub_75F9F0();
  v61 = v140;
  v62 = sub_5C3E54(v59, v140);
  v63 = v128;
  if (v62)
  {
    v64 = v14;
    v65 = v139;
    sub_75F9B0();
    sub_295EC4(v64, v65);
    v66 = *(v135 + 8);
    v67 = v65;
    v14 = v64;
    v23 = v131;
    v66(v67, v63);
    v66(v14, v63);
    v60 = v138;
  }

  v68 = v126;
  sub_75AFA0();
  v69 = sub_75ACC0();
  v70 = (*(*(v69 - 8) + 48))(v68, 1, v69);
  sub_10A2C(v68, &unk_955F20, &unk_77EB30);
  v71 = v135;
  if (v70 != 1)
  {
    v72 = v61;
    v73 = v139;
    sub_75F990();
    sub_295EC4(v14, v73);
    v74 = *(v71 + 8);
    v75 = v73;
    v61 = v72;
    v74(v75, v63);
    v74(v14, v63);
  }

  v76 = [v61 traitCollection];
  v77 = sub_7699D0();

  v78 = v136;
  if (v77)
  {
    v79 = v139;
    sub_75F9E0();
    sub_295EC4(v14, v79);
    v80 = *(v71 + 8);
    v80(v79, v63);
    v80(v14, v63);
  }

  if (!sub_7575D0())
  {
    v81 = v139;
    sub_75F9A0();
    sub_295EC4(v14, v81);
    v82 = *(v71 + 8);
    v82(v81, v63);
    v82(v14, v63);
  }

  if (v132)
  {

    v83 = v14;
    v84 = v118;
    sub_764A80();

    v85 = v119;
    sub_764A20();
    sub_5C7EE8(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v86 = v121;
    v87 = sub_76A520();
    v88 = *(v120 + 8);
    v88(v85, v86);
    v89 = v83;
    v23 = v131;
    v78 = v136;
    v90 = v86;
    v60 = v138;
    v88(v84, v90);
    if (v87)
    {
      v91 = v139;
      sub_75F9D0();
      sub_295EC4(v89, v91);
      v92 = *(v71 + 8);
      v92(v91, v63);
      v92(v89, v63);
    }
  }

  v93 = v137;
  (*(v115 + 72))(&v142, v114, v137, v129, v60, v140, v41, v43);

  (*(v71 + 8))(v60, v63);
  (*(v127 + 8))(v93, v122);
  sub_BEB8(&v142);
  v23[1](v133, v78);
}

uint64_t sub_5C0F5C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v262 = a6;
  v294 = a5;
  v293 = a4;
  v286 = a3;
  v296 = a2;
  v288 = sub_768AB0();
  v287 = *(v288 - 1);
  __chkstk_darwin(v288);
  v255 = v247 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v247 - v10;
  __chkstk_darwin(v12);
  v260 = v247 - v13;
  __chkstk_darwin(v14);
  v250 = v247 - v15;
  __chkstk_darwin(v16);
  v253 = v247 - v17;
  v258 = sub_757500();
  v257 = *(v258 - 8);
  __chkstk_darwin(v258);
  v256 = v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_75B660();
  v272 = *(v273 - 8);
  __chkstk_darwin(v273);
  v271 = v247 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_764A60();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v268 = v247 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_955F20, &unk_77EB30);
  __chkstk_darwin(v21 - 8);
  v23 = v247 - v22;
  v290 = sub_75FA00();
  v289 = *(v290 - 8);
  __chkstk_darwin(v290);
  v25 = v247 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v247 - v27;
  __chkstk_darwin(v29);
  v285 = v247 - v30;
  v278 = sub_757640();
  v277 = *(v278 - 8);
  __chkstk_darwin(v278);
  v261 = v31;
  v276 = v247 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v32 - 8);
  v275 = sub_BD88(&unk_944D90, &qword_783300);
  v274 = *(v275 - 8);
  __chkstk_darwin(v275);
  v284 = v247 - v33;
  v292 = sub_764930();
  v291 = *(v292 - 8);
  __chkstk_darwin(v292);
  v267 = v247 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v279 = v247 - v36;
  __chkstk_darwin(v37);
  v283 = v247 - v38;
  v280 = sub_768A80();
  v281 = *(v280 - 8);
  __chkstk_darwin(v280);
  v263 = v247 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v282 = v247 - v41;
  v42 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v42 - 8);
  v259 = v247 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v266 = v247 - v45;
  __chkstk_darwin(v46);
  v265 = v247 - v47;
  __chkstk_darwin(v48);
  v251 = v247 - v49;
  __chkstk_darwin(v50);
  v252 = v247 - v51;
  __chkstk_darwin(v52);
  v54 = v247 - v53;
  v55 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v55 - 8);
  v254 = v247 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v264 = v247 - v58;
  __chkstk_darwin(v59);
  v61 = v247 - v60;
  *&v63 = __chkstk_darwin(v62).n128_u64[0];
  v65 = v247 - v64;
  [a1 setBackgroundColor:{0, v63}];
  swift_getObjectType();
  v66 = swift_conformsToProtocol2();
  v295 = v6;
  v297 = *(v6 + 16);
  if (!v66 || *&a1 == 0.0)
  {
    v78 = sub_7616C0();
    v79 = sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v80 = v296;
    v283 = v78;
    v282 = v79;
    result = sub_75AF80();
    if ((result & 1) == 0)
    {
      return result;
    }

    v248 = v11;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v249 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_75AFD0();
    v82 = *(v277 + 16);
    v247[1] = v277 + 16;
    v247[0] = v82;
    v82(v276, v80, v278);
    sub_769080();
    v303 = *(v295 + 24);

    sub_BD88(&qword_9467C0, &qword_790FA0);
    sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
    v83 = v296;
    sub_768AE0();
    sub_75F9F0();
    if (sub_5C38AC(v83, v293))
    {
      sub_75F9B0();
      sub_295EC4(v28, v25);
      v84 = v289[1];
      v85 = v290;
      v84(v25, v290);
      v84(v28, v85);
    }

    sub_75AFA0();
    v86 = sub_75ACC0();
    v87 = (*(*(v86 - 8) + 48))(v23, 1, v86);
    sub_10A2C(v23, &unk_955F20, &unk_77EB30);
    if (v87 != 1)
    {
      sub_75F990();
      sub_295EC4(v28, v25);
      v88 = v289[1];
      v89 = v290;
      v88(v25, v290);
      v88(v28, v89);
    }

    if (!sub_7575D0())
    {
      sub_75F9A0();
      sub_295EC4(v28, v25);
      v90 = v289[1];
      v91 = v290;
      v90(v25, v290);
      v90(v28, v91);
    }

    sub_7575D0();
    v92 = v279;
    sub_75AF10();
    sub_7575D0();
    v93 = sub_75AED0();
    v94 = v291;
    v95 = v267;
    v96 = v292;
    (*(v291 + 16))(v267, v92, v292);
    v97 = (*(v94 + 88))(v95, v96);
    if (v97 == enum case for Shelf.ContentType.smallLockup(_:) || v97 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v97 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v97 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v97 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v97 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v97 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v97 == enum case for Shelf.ContentType.editorialCard(_:) || v97 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v97 == enum case for Shelf.ContentType.brick(_:) || v97 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v97 == enum case for Shelf.ContentType.reviews(_:) || v97 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v97 == enum case for Shelf.ContentType.framedVideo(_:) || v97 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v97 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v97 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v97 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v97 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v97 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v97 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v97 == enum case for Shelf.ContentType.posterLockup(_:) || v97 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v97 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v97 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v291 + 8))(v95, v292);
              goto LABEL_50;
            }

LABEL_38:
            if (v93)
            {
              goto LABEL_39;
            }

LABEL_50:
            v122 = [v293 traitCollection];
            v123 = sub_7699D0();

            if ((v123 & 1) == 0)
            {
              LODWORD(v267) = 0;
              v124 = v285;
LABEL_53:
              ObjectType = swift_getObjectType();
              sub_7575D0();
              sub_75AFE0();
              v128 = v268;
              sub_764A80();

              (*(v249 + 80))(&v305, v284, v294, v124, v128, v293, ObjectType);
              (*(v269 + 8))(v128, v270);
              v129 = a1;
              sub_7575D0();
              v130 = v271;
              sub_75AF00();
              v132 = sub_51DB60(v131);
              (*(v272 + 8))(v130, v273);
              if ([a1 overrideUserInterfaceStyle] != v132)
              {
                [a1 setOverrideUserInterfaceStyle:v132];
              }

              sub_134D8(&v305, &v303);
              *(&v301 + 1) = sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
              *&v300 = a1;
              v133 = a1;
              sub_758EF0();
              sub_10A2C(&v303, &unk_963040, &qword_77F400);
              sub_BEB8(&v300);
              swift_getObjectType();
              v134 = swift_conformsToProtocol2();
              v135 = v295;
              if (v134 && *&a1 != 0.0)
              {
                v136 = v134;
                v137 = swift_getObjectType();
                v138 = *(v136 + 8);
                v139 = v133;
                v140 = v138(v137, v136);
                v83 = v296;
                v141 = v140;
                v142 = (v140 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
                v143 = *(v140 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
                v144 = v142[1];
                *v142 = 0;
                v142[1] = 0;
                sub_F704(v143, v144);
                [*&v141[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && *&a1 != 0.0)
              {
                v145 = swift_allocObject();
                swift_weakInit();
                v294 = a1;
                v146 = v135;
                v147 = v276;
                v148 = v278;
                (v247[0])(v276, v83, v278);
                v149 = v277;
                v150 = (*(v277 + 80) + 16) & ~*(v277 + 80);
                v151 = (v261 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
                v152 = swift_allocObject();
                v153 = v147;
                v135 = v146;
                v129 = v294;
                (*(v149 + 32))(v152 + v150, v153, v148);
                *(v152 + v151) = v145;
                v154 = &v133[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
                v155 = *&v133[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
                v156 = *&v133[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler + 8];
                *v154 = sub_5C7E4C;
                v154[1] = v152;
                v157 = v133;

                sub_F704(v155, v156);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_761120();
                sub_768900();
                v158 = v133;
                sub_768ED0();
                v159 = v303;
                swift_getObjectType();
                v160 = sub_75EF20();
                v161 = v158;
                sub_761100();
              }

              *&v298[0] = v133;
              *(&v298[0] + 1) = v249;
              v162 = v133;
              sub_BD88(&qword_95CD80, "v(\a");
              sub_BD88(&qword_95CD88, &unk_7AC6D0);
              if (swift_dynamicCast())
              {
                sub_10914(&v300, &v303);
                sub_761120();
                sub_768900();
                sub_768ED0();
                v163 = v300;
                sub_B170(&v303, v304);
                sub_761530();

                sub_BEB8(&v303);
              }

              else
              {
                v302 = 0;
                v301 = 0u;
                v300 = 0u;
                sub_10A2C(&v300, &unk_95CD90, "v(\a");
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_75E3E0();
                v164 = v162;
                sub_7688F0();
                v165 = v303;
                if (v303)
                {
                  v166 = v164;
                  v167 = v165;
                  sub_75E3D0();

                  v164 = v167;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_134D8(&v305, &v300);
                v168 = v162;
                sub_BD88(&unk_944DA0, &unk_77EB70);
                sub_BD88(&unk_952540, &qword_7918A0);
                if (swift_dynamicCast())
                {
                  sub_10914(v298, &v303);
                  sub_B170(&v303, v304);
                  if (sub_762A10())
                  {
                    sub_75E5C0();
                  }

                  swift_getObjectType();
                  sub_75D990();

                  sub_BEB8(&v303);
                }

                else
                {

                  v299 = 0;
                  memset(v298, 0, sizeof(v298));
                  sub_10A2C(v298, &unk_9513E0, &qword_7A38B0);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                swift_getObjectType();
                v169 = v162;
                sub_761FA0();
              }

              sub_7575D0();
              sub_75AFE0();
              if (v267)
              {
                v170 = [v262 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v171 = swift_dynamicCastClass();
                if (v171)
                {
                  v172 = v171;
                  v173 = [v171 _orthogonalScrollingSections];
                  v174 = v256;
                  sub_7574D0();

                  v175 = sub_7575D0();
                  LOBYTE(v173) = sub_7574F0(v175);
                  (*(v257 + 8))(v174, v258);
                  if (v173)
                  {
                    [v162 frame];
                    v177 = v176;
                    v179 = v178;
                    v181 = v180;
                    v183 = v182;
                    v184 = v252;
                    sub_764A70();
                    v185 = v287;
                    v186 = *(v287 + 6);
                    v187 = v288;
                    if (v186(v184, 1, v288) == 1)
                    {

                      (*(v291 + 8))(v279, v292);
                      (v289[1])(v285, v290);
                      (*(v274 + 8))(v284, v275);
                      sub_BEB8(&v305);
                      return sub_10A2C(v184, &unk_93FF30, &unk_77DB10);
                    }

                    v297 = *(v185 + 4);
                    v297(v253, v184, v187);
                    sub_134D8(&v305, &v303);
                    sub_B170(&v303, v304);
                    v219 = v251;
                    sub_7690D0();
                    if (v186(v219, 1, v187) == 1)
                    {

                      (*(v185 + 1))(v253, v187);
                      (*(v291 + 8))(v279, v292);
                      (v289[1])(v285, v290);
                      (*(v274 + 8))(v284, v275);
                      sub_BEB8(&v305);
                      v199 = v219;
                      goto LABEL_99;
                    }

                    v293 = v179;
                    v294 = v177;
                    v220 = v250;
                    v297(v250, v219, v187);
                    [v172 _layoutFrameForSection:sub_7575D0()];
                    v222 = v221;
                    v224 = v223;
                    v226 = v225;
                    v228 = v227;
                    [v172 _offsetForOrthogonalScrollingSection:sub_7575D0()];
                    v230 = v295;
                    v231 = *(v295 + 112);
                    v232 = v187;
                    v233 = v285;
                    if (v231)
                    {
                      v234 = v229;

                      v235 = v253;
                      v236 = v222;
                      sub_75F4B0();

                      v237 = v224;
                      if (*(v230 + 112))
                      {

                        v238 = v263;
                        sub_768A90();
                        v300 = v234;
                        *&v301 = v226;
                        *(&v301 + 1) = v228;
                        LOBYTE(v302) = 0;
                        v231 = sub_75F490();

                        (*(v281 + 8))(v238, v280);
                      }

                      else
                      {
                        v231 = 0;
                      }

                      v239 = *&v294;
                    }

                    else
                    {
                      v236 = v222;
                      v235 = v253;
                      v239 = *&v294;
                      v237 = v224;
                    }

                    v240 = *&v293;
                    v306.origin.x = v236;
                    v306.origin.y = v237;
                    v306.size.width = v226;
                    v306.size.height = v228;
                    v241 = -CGRectGetMinY(v306);
                    v307.origin.x = v239;
                    v307.origin.y = v240;
                    v307.size.width = v181;
                    v307.size.height = v183;
                    v308 = CGRectOffset(v307, 0.0, v241);
                    x = v308.origin.x;
                    y = v308.origin.y;
                    width = v308.size.width;
                    height = v308.size.height;
                    if (v231)
                    {

                      sub_75F4B0();
                    }

                    sub_5C5D18(&v303, v231, x, y, width, height);

                    v246 = *(v185 + 1);
                    v246(v220, v232);
                    v246(v235, v232);
                    (*(v291 + 8))(v279, v292);
                    (v289[1])(v233, v290);
                    goto LABEL_109;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                v188 = v162;
                [v188 frame];
                sub_5BF154(v189, v190, v191, v192);
                swift_getObjectType();
                sub_7633C0();
              }

              v193 = v265;
              sub_764A70();
              v194 = v287;
              v195 = *(v287 + 6);
              v196 = v288;
              if (v195(v193, 1, v288) == 1)
              {
                sub_10A2C(v193, &unk_93FF30, &unk_77DB10);
                v197 = v266;
              }

              else
              {
                v198 = v260;
                (*(v194 + 4))(v260, v193, v196);
                v197 = v266;
                if (*(v135 + 112))
                {

                  [v162 frame];
                  sub_75F500();
                }

                (*(v194 + 1))(v198, v196);
              }

              sub_134D8(&v305, &v303);
              sub_B170(&v303, v304);
              sub_7690D0();
              if (v195(v197, 1, v196) == 1)
              {

                (*(v291 + 8))(v279, v292);
                (v289[1])(v285, v290);
                (*(v274 + 8))(v284, v275);
                sub_BEB8(&v305);
                v199 = v197;
LABEL_99:
                sub_10A2C(v199, &unk_93FF30, &unk_77DB10);
                return sub_BEB8(&v303);
              }

              (*(v194 + 4))(v248, v197, v196);
              v200 = v259;
              sub_764A70();
              if (v195(v200, 1, v196) == 1)
              {
                sub_10A2C(v200, &unk_93FF30, &unk_77DB10);
                v201 = 1;
                v202 = v281;
                v203 = v264;
              }

              else
              {
                v203 = v264;
                sub_768A90();
                (*(v194 + 1))(v200, v196);
                v201 = 0;
                v202 = v281;
              }

              v204 = v280;
              (*(v202 + 56))(v203, v201, 1, v280);
              if (*(v135 + 112))
              {
                v205 = v203;
                v206 = v254;
                sub_5C7D08(v205, v254);
                v207 = v202;
                v208 = (*(v202 + 48))(v206, 1, v204);

                if (v208 == 1)
                {
                  sub_10A2C(v206, &qword_93FFC0, &qword_77F490);
                }

                else
                {
                  sub_768A70();
                  (*(v207 + 8))(v206, v204);
                }

                v209 = v255;
                sub_768A40();

                [v162 frame];
                sub_75F4B0();

                (*(v194 + 1))(v209, v196);
                v203 = v264;
              }

              [v162 frame];
              v211 = v210;
              v213 = v212;
              v215 = v214;
              v217 = v216;
              v218 = *(v135 + 112);

              sub_5C5D18(&v303, v218, v211, v213, v215, v217);

              sub_10A2C(v203, &qword_93FFC0, &qword_77F490);
              (*(v194 + 1))(v248, v196);
              (*(v291 + 8))(v279, v292);
              (v289[1])(v285, v290);
LABEL_109:
              (*(v274 + 8))(v284, v275);
              sub_BEB8(&v305);
              return sub_BEB8(&v303);
            }

            sub_75F9E0();
            LODWORD(v267) = 0;
LABEL_52:
            v124 = v285;
            sub_295EC4(v28, v25);
            v125 = v289[1];
            v126 = v290;
            v125(v25, v290);
            v125(v28, v126);
            goto LABEL_53;
          }
        }
      }
    }

LABEL_39:
    sub_75F9C0();
    LODWORD(v267) = 1;
    goto LABEL_52;
  }

  v290 = v66;
  v67 = a1;
  sub_7575D0();
  sub_7616C0();
  sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v68 = sub_75AFE0();
  v289 = v67;
  [v67 frame];
  v69 = v295;
  v285 = sub_5BF154(v70, v71, v72, v73);
  sub_761120();
  sub_768900();
  sub_768ED0();
  v74 = v305;
  sub_75E3E0();
  sub_7688F0();
  v279 = v305;
  v284 = v68;
  sub_764A70();
  v75 = v287;
  v76 = v288;
  if ((*(v287 + 6))(v54, 1, v288) == 1)
  {
    sub_10A2C(v54, &unk_93FF30, &unk_77DB10);
    v77 = 1;
  }

  else
  {
    sub_768A90();
    (*(v75 + 1))(v54, v76);
    v77 = 0;
  }

  v98 = v281;
  v99 = v280;
  (*(v281 + 56))(v65, v77, 1, v280);
  v100 = objc_allocWithZone(sub_75FA60());
  v101 = v74;
  v102 = sub_75FA50();
  if (*(v69 + 112))
  {
    sub_5C7D08(v65, v61);
    if ((*(v98 + 48))(v61, 1, v99) == 1)
    {
      sub_10A2C(v61, &qword_93FFC0, &qword_77F490);
    }

    else
    {
      v103 = v282;
      (*(v98 + 32))(v282, v61, v99);
      (*(v98 + 16))(v263, v103, v99);
      sub_761C40();
      swift_allocObject();
      swift_retain_n();
      sub_761C50();
      sub_75FA40();

      (*(v98 + 8))(v103, v99);
    }
  }

  sub_7624B0();
  swift_allocObject();
  v104 = v101;
  sub_7624C0();
  sub_75FA40();

  v105 = v279;
  v288 = v104;
  if (v279)
  {
    sub_75FED0();
    swift_allocObject();
    v106 = v105;
    sub_75FEE0();
    sub_75FA40();

    v287 = v106;
  }

  else
  {

    v287 = 0;
  }

  v107 = v102;
  sub_10A2C(v65, &qword_93FFC0, &qword_77F490);
  v108 = v297;

  v109 = sub_7575D0();
  v110 = v283;
  v111 = v284;
  sub_764940();
  v112 = sub_764900();
  (*(v291 + 8))(v110, v292);
  v113 = *(v295 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_BD88(&qword_95CDA0, &qword_7A7CE0);
  v115 = swift_allocObject();
  *(v115 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v115 + 16) = v108;
  *(v115 + 24) = v109;
  *(v115 + 32) = v112 & 1;
  *(v115 + 40) = v113;
  *(v115 + 64) = v107;
  *(v115 + 72) = &protocol witness table for CompoundScrollObserver;
  *(v115 + 80) = v285;
  swift_unknownObjectWeakAssign();

  v297 = v107;

  v116 = v289;
  v117 = swift_getObjectType();
  v118 = sub_7575D0();
  v119 = sub_16194(&qword_95CDA8, &qword_95CDA0, &qword_7A7CE0, &unk_7A2DE0);
  v120 = v290;
  v121 = *(v290 + 32);

  v121(v111, v118, v286, v294, v115, v119, v293, v117, v120);
}

uint64_t sub_5C38AC(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v27 = v2;
  sub_7575D0();
  sub_7616C0();
  sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_75AF10();
  sub_7575D0();
  v13 = sub_75AED0();
  (*(v4 + 32))(v9, v12, v3);
  v14 = (*(v4 + 88))(v9, v3);
  if (v14 == enum case for Shelf.ContentType.smallLockup(_:) || v14 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_11;
  }

  v20 = v14 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v14 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v20 || v14 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.editorialCard(_:) || v14 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.brick(_:) || v14 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.reviews(_:) || v14 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v14 == enum case for Shelf.ContentType.framedVideo(_:) || v14 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v14 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v14 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v14 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v14 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v14 == enum case for Shelf.ContentType.posterLockup(_:) || v14 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_6:
    if (v13)
    {
LABEL_11:
      sub_7575D0();
      v18 = sub_75AF70();
      result = sub_7575C0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else if (v18)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v18 != -1)
        {
          return (result + 1) % v18 == 0;
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v16 = sub_7575D0();
  if (v16 >= sub_75AF30() || (sub_75AEE0() & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_75AF20();
    if (sub_5C53BC(v16, &type metadata accessor for PurchasesContentPresenter, &qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter))
    {
      v17 = 1;
    }
  }

  sub_7575D0();
  sub_75AF10();
  sub_7575D0();
  v23 = sub_75AF20();
  v24 = sub_5C6368(v6, v23, v28);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v17, 1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v24)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v17 == 0x8000000000000001 && v24 == -1)
  {
    goto LABEL_62;
  }

  v25 = (v17 - 1) % v24;
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    goto LABEL_59;
  }

  result = sub_7575C0();
  if (__OFSUB__(v17, v26))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  return result >= v17 - v26;
}

uint64_t sub_5C3E54(uint64_t a1, void *a2)
{
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575D0();
  sub_7616C0();
  sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v7 = sub_75AF20();
  sub_7575D0();
  sub_75AF10();
  sub_7575D0();
  v8 = sub_75AF20();
  v9 = sub_5C6368(v6, v8, a2);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 == 0x8000000000000001 && v9 == -1)
  {
    goto LABEL_12;
  }

  v11 = (v7 - 1) % v9;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_7575C0();
    if (!__OFSUB__(v7, v12))
    {
      return result >= v7 - v12;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_5C40E4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_artworkLoader);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_pageTraits;
  v10 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_pageTraits);
  v11 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_objectGraph);
  swift_unknownObjectRetain();
  sub_5C0F5C(a2, a3, v8, v10, v11, a1);
  swift_unknownObjectRelease();
  v12 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v12 layoutMargins];
  [v12 setLayoutMargins:?];

  v13 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v13 layoutMargins];
  [v13 setLayoutMargins:?];

  type metadata accessor for SmallLockupCollectionViewTableCell();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setSelectionStyle:0];
  }

  return result;
}

void sub_5C4634(void *a1, uint64_t a2)
{
  v5 = sub_757640();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&unk_944D90, &qword_783300);
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_shelfDataSource);
  v32 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_objectGraph);
  isa = sub_757550().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v31 = v9;
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v15;
      v30 = a1;
      v17 = sub_7616C0();
      sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
      v27[1] = v17;
      sub_75AFD0();
      v28 = *(v34 + 16);
      v29 = v34 + 16;
      v28(v7, a2, v35);
      sub_769080();
      v36 = *(v12 + 24);

      sub_BD88(&qword_9467C0, &qword_790FA0);
      sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
      sub_768AE0();
      ObjectType = swift_getObjectType();
      v19 = (*(v16 + 88))(v37, v11, v32, ObjectType, v16);
      v20 = v19;
      if (v19)
      {
        sub_75AF60();
        v21 = v30;
        if ((v20 & 2) == 0)
        {
LABEL_5:
          if ((v20 & 4) == 0)
          {
LABEL_7:

            (*(v33 + 8))(v11, v31);
            sub_BEB8(v37);
            return;
          }

LABEL_6:
          sub_BD88(&unk_941A18, &qword_78A3D0);
          v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_77B6D0;
          v28((v23 + v22), a2, v35);
          v24 = sub_769450().super.isa;

          [v21 reloadItemsAtIndexPaths:v24];

          v14 = v24;
          goto LABEL_7;
        }
      }

      else
      {
        v21 = v30;
        if ((v19 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v26 = sub_757550().super.isa;
      [v21 deselectItemAtIndexPath:v26 animated:1];

      if ((v20 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  sub_7616C0();
  sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_75AF60();
  v35 = sub_757550().super.isa;
  [a1 deselectItemAtIndexPath:v35 animated:1];
  v25 = v35;
}

id sub_5C4C70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PurchasesCollectionViewDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_5C4F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_5C4FBC(a6, v9);
  }

  return a3(1);
}

uint64_t sub_5C4FBC(uint64_t a1, __n128 a2)
{
  v2 = sub_75ED10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_761650();
  (*(v3 + 104))(v5, enum case for PurchasesContentMode.hidden(_:), v2);
  sub_5C7EE8(&qword_95CD78, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  sub_769430();
  sub_769430();
  if (v13[2] == v13[0] && v13[3] == v13[1])
  {
    v9 = *(v3 + 8);
    v9(v5, v2);
    v9(v8, v2);

    return sub_761640();
  }

  v10 = sub_76A950();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);

  if (v10)
  {
    return sub_761640();
  }

  return sub_761620();
}

BOOL sub_5C53BC(uint64_t a1, uint64_t (*a2)(void, __n128), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_764930();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - v15;
  a2(0, v14);
  sub_5C7EE8(a3, a4, a5);
  sub_75AF10();
  (*(v10 + 32))(v12, v16, v9);
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v18 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v17 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v18 = type metadata accessor for InformationRibbonCollectionViewCell(0);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    v18 = 0;
  }

  return v18 != 0;
}

uint64_t sub_5C5580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_95B250, "hq\b");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_77E280;
  *(v8 + 32) = sub_7575D0();
  *(v8 + 40) = a1;
  sub_757540();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_7616C0();
    sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    sub_75AFC0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_5C572C(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_768AB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_BD88(&qword_956658, &qword_79F6B0);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v19 = sub_7601B0();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_134D8(v21, v53);
          sub_B170(v53, v53[3]);
          v23 = v48;
          sub_7690D0();
          sub_BEB8(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10A2C(v23, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_B170(v44, v44[3]);
            sub_7690D0();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10A2C(v10, &unk_93FF30, &unk_77DB10);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_768A90();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_768A80();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_5C7D08(v27, v40);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10A2C(v31, &qword_93FFC0, &qword_77F490);
              }

              else
              {
                sub_768A70();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_768A40();

              sub_75F4D0();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10A2C(v32, &qword_93FFC0, &qword_77F490);
              v35(v34, v37);
            }

            else
            {
              sub_10A2C(v27, &qword_93FFC0, &qword_77F490);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10A2C(v51, &qword_956660, &unk_7AC6E0);
  }
}

uint64_t sub_5C5D18(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v11;
  v12 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = sub_768AB0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v43 - v22;
  v48 = a1;
  sub_134D8(a1, v57);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_BD88(&qword_956658, &qword_79F6B0);
  if (swift_dynamicCast())
  {
    v52 = v17;
    v44 = v9;
    sub_10914(v55, v58);
    sub_B170(v58, v58[3]);
    v23 = sub_7601B0();
    if (v23)
    {
      v54 = v18;
      v43 = v23;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v43 + 32;
        v26 = (v19 + 48);
        v46 = (v19 + 32);
        v49 = (v19 + 8);
        v47 = v14;
        do
        {
          sub_134D8(v25, v57);
          sub_B170(v57, v57[3]);
          v27 = v52;
          sub_7690D0();
          sub_BEB8(v57);
          v28 = *v26;
          v29 = v54;
          if ((*v26)(v27, 1, v54) == 1)
          {
            sub_10A2C(v27, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            (*v46)(v53, v27, v29);
            sub_B170(v48, v48[3]);
            sub_7690D0();
            if (v28(v14, 1, v29) == 1)
            {
              sub_10A2C(v14, &unk_93FF30, &unk_77DB10);
              v30 = 1;
              v31 = v50;
            }

            else
            {
              v32 = v14;
              v31 = v50;
              sub_768A90();
              (*v49)(v32, v29);
              v30 = 0;
            }

            v33 = sub_768A80();
            v34 = *(v33 - 8);
            (*(v34 + 56))(v31, v30, 1, v33);
            if (v51)
            {
              v35 = v44;
              sub_5C7D08(v31, v44);
              if ((*(v34 + 48))(v35, 1, v33) == 1)
              {
                v36 = v31;
                sub_10A2C(v35, &qword_93FFC0, &qword_77F490);
              }

              else
              {
                sub_768A70();
                (*(v34 + 8))(v35, v33);
                v36 = v50;
              }

              v37 = v45;
              v38 = v53;
              sub_768A40();

              sub_75F4B0();
              v39 = *v49;
              v40 = v37;
              v41 = v54;
              (*v49)(v40, v54);
              sub_10A2C(v36, &qword_93FFC0, &qword_77F490);
              v39(v38, v41);
            }

            else
            {
              sub_10A2C(v31, &qword_93FFC0, &qword_77F490);
              (*v49)(v53, v54);
            }

            v14 = v47;
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }
    }

    return sub_BEB8(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    return sub_10A2C(v55, &qword_956660, &unk_7AC6E0);
  }
}

uint64_t sub_5C6368(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = v6[2];
  v13(&v21 - v11, a1, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 0;
  if (v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v25 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
    v22 = v6[1];
    v22(v12, v5);
    ObjectType = swift_getObjectType();
    v24 = a3;
    v18 = [a3 traitCollection];
    (v13)(v8, a1, v5);
    v19 = v14(v8, v5);
    if (v19 == enum case for Shelf.ContentType.artwork(_:) || v19 == enum case for Shelf.ContentType.ribbonBar(_:) || v19 == enum case for Shelf.ContentType.ribbonFlow(_:) || v19 == enum case for Shelf.ContentType.paragraph(_:) || v19 == enum case for Shelf.ContentType.footnote(_:) || v19 == enum case for Shelf.ContentType.titledParagraph(_:) || v19 == enum case for Shelf.ContentType.reviewsContainer(_:) || v19 == enum case for Shelf.ContentType.reviewSummary(_:) || v19 == enum case for Shelf.ContentType.editorialLink(_:) || v19 == enum case for Shelf.ContentType.quote(_:) || v19 == enum case for Shelf.ContentType.framedArtwork(_:) || v19 == enum case for Shelf.ContentType.screenshots(_:) || v19 == enum case for Shelf.ContentType.appShowcase(_:) || v19 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v19 == enum case for Shelf.ContentType.linkableText(_:) || v19 == enum case for Shelf.ContentType.framedVideo(_:) || v19 == enum case for Shelf.ContentType.productDescription(_:) || v19 == enum case for Shelf.ContentType.banner(_:) || v19 == enum case for Shelf.ContentType.roundedButton(_:) || v19 == enum case for Shelf.ContentType.titledButtonStack(_:) || v19 == enum case for Shelf.ContentType.smallStoryCard(_:) || v19 == v25 || v19 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v19 == enum case for Shelf.ContentType.upsellBreakout(_:) || v19 == enum case for Shelf.ContentType.smallBreakout(_:) || v19 == enum case for Shelf.ContentType.arcadeFooter(_:) || v19 == enum case for Shelf.ContentType.editorialQuote(_:) || v19 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v19 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v19 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v19 == enum case for Shelf.ContentType.privacyHeader(_:) || v19 == enum case for Shelf.ContentType.privacyFooter(_:) || v19 == enum case for Shelf.ContentType.privacyCategory(_:) || v19 == enum case for Shelf.ContentType.privacyDefinition(_:) || v19 == enum case for Shelf.ContentType.heroCarousel(_:) || v19 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v22(v8, v5), (sub_7699E0() & 1) == 0))
    {
    }

    else
    {
      v20 = sub_769A00();

      if ((v20 & 1) == 0)
      {
        return sub_3AD19C(v26, v24, a1);
      }
    }

    return 1;
  }

  return result;
}

void sub_5C6840(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v9 - 8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = &v84 - v13;
  v14 = sub_764930();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v97 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v99 = &v84 - v18;
  v19 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v19 - 8);
  v91 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v92 = &v84 - v22;
  __chkstk_darwin(v23);
  v96 = &v84 - v24;
  v25 = sub_768AB0();
  v100 = *(v25 - 8);
  v101 = v25;
  __chkstk_darwin(v25);
  v90 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v93 = &v84 - v28;
  __chkstk_darwin(v29);
  v95 = &v84 - v30;
  if (sub_7575E0() >= 2)
  {
    v86 = v11;
    v87 = *(v4 + 16);
    v31 = sub_7616C0();
    v88 = sub_5C7EE8(&qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v98 = a2;
    v32 = sub_75AF80();
    v108 = sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
    v107[0] = a1;
    v33 = a1;
    v89 = v32;
    sub_760910();
    sub_BEB8(v107);
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    v102 = a4;
    v103 = v31;
    if (v34 && v33)
    {
      sub_761120();
      v85 = v15;
      sub_768900();
      v35 = v33;
      sub_768ED0();
      v36 = v107[0];
      swift_getObjectType();
      v37 = sub_75EF20();
      v38 = v35;
      sub_7610C0();

      v15 = v85;
    }

    v106 = v33;
    v39 = v33;
    sub_BD88(&qword_95CD88, &unk_7AC6D0);
    if (swift_dynamicCast())
    {
      sub_10914(v104, v107);
      sub_761120();
      sub_768900();
      sub_768ED0();
      v40 = *&v104[0];
      sub_B170(v107, v108);
      sub_761540();

      sub_BEB8(v107);
    }

    else
    {
      v105 = 0;
      memset(v104, 0, sizeof(v104));
      sub_10A2C(v104, &unk_95CD90, "v(\a");
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      sub_75E3E0();
      v41 = v39;
      sub_7688F0();
      v42 = v107[0];
      if (v107[0])
      {
        v43 = v41;
        v44 = v42;
        sub_75E390();

        v41 = v44;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      swift_getObjectType();
      v45 = v39;
      sub_761FB0();
    }

    swift_getObjectType();
    v46 = swift_conformsToProtocol2();
    if (v46 && v33)
    {
      v47 = v46;
      ObjectType = swift_getObjectType();
      v49 = *(v47 + 8);
      v50 = v39;
      v49(ObjectType, v47);
    }

    if (v89)
    {
      swift_getObjectType();
      v51 = swift_conformsToProtocol2();
      if (v51 && v33)
      {
        v52 = v51;
        v53 = swift_getObjectType();
        v54 = *(v52 + 40);
        v55 = v39;
        v54(v53, v52);
      }

      v56 = sub_7575D0();
      v57 = sub_5C53BC(v56, &type metadata accessor for PurchasesContentPresenter, &qword_95CBD8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
      sub_7575D0();
      if (v57)
      {
        sub_75AFE0();
        v58 = v96;
        sub_764A70();
        v60 = v100;
        v59 = v101;
        if ((*(v100 + 48))(v58, 1, v101) == 1)
        {

          sub_10A2C(v58, &unk_93FF30, &unk_77DB10);
        }

        else
        {
          v71 = v95;
          (*(v60 + 32))(v95, v58, v59);
          if (*(v5 + 112))
          {

            sub_75F4D0();
          }

          (*(v60 + 8))(v71, v59);
        }

        return;
      }

      v61 = v99;
      sub_75AF10();
      sub_7575D0();
      v62 = sub_75AED0();
      v63 = v97;
      (*(v15 + 16))(v97, v61, v14);
      v64 = (*(v15 + 88))(v63, v14);
      if (v64 == enum case for Shelf.ContentType.smallLockup(_:) || v64 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v64 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v64 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v64 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v64 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v64 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v64 == enum case for Shelf.ContentType.editorialCard(_:) || v64 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v64 == enum case for Shelf.ContentType.brick(_:) || v64 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v64 == enum case for Shelf.ContentType.reviews(_:) || v64 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v64 == enum case for Shelf.ContentType.framedVideo(_:) || v64 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v64 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v64 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v64 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v64 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v64 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v64 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v64 == enum case for Shelf.ContentType.posterLockup(_:) || v64 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v64 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v64 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v62)
        {
          goto LABEL_56;
        }
      }

      else
      {
        (*(v15 + 8))(v63, v14);
      }

      v65 = sub_75AF30();
      if (sub_7575D0() < v65)
      {
        v66 = sub_7575C0();
        sub_7575D0();
        if (v66 < sub_75AF20())
        {
          sub_75AFD0();
          sub_B170(v107, v108);
          v67 = v92;
          sub_7690D0();
          v68 = v100;
          v69 = *(v100 + 48);
          v70 = v101;
          if (v69(v67, 1, v101) == 1)
          {
            (*(v15 + 8))(v99, v14);
            sub_10A2C(v67, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            (*(v68 + 32))(v93, v67, v70);
            sub_7575D0();
            sub_75AFE0();
            v72 = v91;
            sub_764A70();
            if (v69(v72, 1, v70) == 1)
            {
              sub_10A2C(v72, &unk_93FF30, &unk_77DB10);
              v73 = 1;
              v74 = v94;
            }

            else
            {
              v74 = v94;
              sub_768A90();
              (*(v68 + 8))(v72, v70);
              v73 = 0;
            }

            v75 = v86;
            v76 = sub_768A80();
            v77 = *(v76 - 8);
            (*(v77 + 56))(v74, v73, 1, v76);
            if (*(v5 + 112))
            {
              sub_5C7D08(v74, v75);
              v78 = (*(v77 + 48))(v75, 1, v76);

              if (v78 == 1)
              {
                sub_10A2C(v75, &qword_93FFC0, &qword_77F490);
              }

              else
              {
                sub_768A70();
                (*(v77 + 8))(v75, v76);
              }

              v82 = v93;
              v83 = v90;
              sub_768A40();

              sub_75F4D0();

              v81 = v100;
              v80 = v101;
              (*(v100 + 8))(v83, v101);
              v79 = *(v5 + 112);
            }

            else
            {
              v79 = 0;
              v81 = v100;
              v80 = v101;
              v82 = v93;
            }

            sub_5C572C(v107, v79);

            sub_10A2C(v94, &qword_93FFC0, &qword_77F490);
            (*(v81 + 8))(v82, v80);
            (*(v15 + 8))(v99, v14);
          }

          sub_BEB8(v107);
          return;
        }
      }

LABEL_56:
      (*(v15 + 8))(v61, v14);
    }
  }
}

id sub_5C771C(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75ED10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_7615F0())
  {
    sub_761650();
    v11 = sub_75ED00();
    v25[0] = v12;
    v25[1] = v11;
    (*(v8 + 8))(v10, v7);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    (*(v4 + 32))(v15 + v14, v6, v3);

    v16 = sub_769210();

    aBlock[4] = sub_5C7C04;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_5BF080;
    aBlock[3] = &unk_899110;
    v17 = _Block_copy(aBlock);
    v18 = [objc_opt_self() contextualActionWithStyle:1 title:v16 handler:v17];

    _Block_release(v17);

    sub_BD88(&unk_93F5C0, &unk_77C600);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_77D9F0;
    *(v19 + 32) = v18;
    sub_BE70(0, &unk_93FFF0, UIContextualAction_ptr);
    v20 = v18;
    isa = sub_769450().super.isa;

    v22 = [objc_opt_self() configurationWithActions:isa];

    [v22 setPerformsFirstActionWithFullSwipe:0];
  }

  else
  {
    sub_BE70(0, &unk_93FFF0, UIContextualAction_ptr);
    v23 = sub_769450().super.isa;
    v22 = [objc_opt_self() configurationWithActions:v23];
  }

  return v22;
}

uint64_t sub_5C7B08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5C7B40(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_5C7C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_757640() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_5C4F3C(a1, a2, a3, a4, v10, v11);
}

double sub_5C7CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5C7CB8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5C7D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FFC0, &qword_77F490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C7D78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5C7DB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_5C7E4C(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_757640() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_5C5580(a1, v2 + v5, v6);
}

uint64_t sub_5C7EE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchAdTransparencyButton(uint64_t a1)
{
  result = qword_95CDC0;
  if (!qword_95CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_5C7FD4()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.525490196 green:0.752941176 blue:0.992156863 alpha:1.0];
  qword_9A00A0 = result;
  return result;
}

char *sub_5C8028()
{
  ObjectType = swift_getObjectType();
  v2 = sub_768C60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = qword_95CDB0;
  *&v0[v9] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = &v0[qword_95CDB8];
  *v10 = 0;
  *(v10 + 1) = 0;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = qword_93D958;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  v15 = sub_BE38(v14, qword_99F400);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  sub_75C540();
  v17 = qword_95CDB0;
  [*&v13[qword_95CDB0] setClipsToBounds:1];
  v18 = qword_93DDA0;
  v19 = *&v13[v17];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setBackgroundColor:qword_9A00A0];

  [*&v13[v17] _setContinuousCornerRadius:4.0];
  [v13 addSubview:*&v13[v17]];
  v20 = objc_opt_self();
  v21 = v13;
  v22 = [v20 whiteColor];
  [v21 setTitleColor:v22 forState:0];

  v23 = [v20 whiteColor];
  sub_75C560();
  sub_769E50();
  v24 = [v23 colorWithAlphaComponent:?];

  [v21 setTitleColor:v24 forState:4];
  v25 = v21;
  sub_75D600();

  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  sub_768C10();
  sub_BDD0(v27);
  sub_BDD0(v28);
  sub_769E70();
  (*(v3 + 8))(v5, v2);
  [v25 addTarget:v25 action:"didTapButton" forControlEvents:64];

  [v25 _setWantsAccessibilityUnderline:0];
  return v25;
}

char *sub_5C84A0(char *result)
{
  v1 = *&result[qword_95CDB8];
  if (v1)
  {
    v2 = *&result[qword_95CDB8 + 8];
    v3 = result;
    v4 = sub_F714(v1, v2);
    v1(v4);

    return sub_F704(v1, v2);
  }

  return result;
}

double sub_5C8524(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v1 titleForState:0];
  if (v3)
  {
    v4 = v3;
    v5 = sub_769240();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_5C886C(v2, v5, v7);

  return v8;
}

id sub_5C85E8()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v0 titleForState:0];
  if (v2)
  {
    v3 = v2;
    v4 = sub_769240();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_5C886C(v1, v4, v6);

  v7 = *&v0[qword_95CDB0];
  [v7 frame];
  [v7 setFrame:?];
  [v0 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  return [v7 setCenter:{MidX, CGRectGetMidY(v16)}];
}

void sub_5C8758(void *a1)
{
  v1 = a1;
  sub_5C85E8();
}

uint64_t sub_5C87D0()
{
  v1 = *(v0 + qword_95CDB8);
  v2 = *(v0 + qword_95CDB8 + 8);

  return sub_F704(v1, v2);
}

uint64_t sub_5C8814(uint64_t a1)
{
  v2 = *(a1 + qword_95CDB8);
  v3 = *(a1 + qword_95CDB8 + 8);

  return sub_F704(v2, v3);
}

double sub_5C886C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_762D10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v21._object = 0x80000000007DB810;
    v21._countAndFlagsBits = 0xD00000000000001FLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_75B750(v21, v22);
  }

  sub_26F08();
  v9 = qword_93D958;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  sub_BE38(v10, qword_99F400);
  sub_769E10();
  v11 = sub_7653B0();
  v20[3] = v11;
  v20[4] = sub_4342DC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v12 = sub_B1B4(v20);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  sub_765C30();
  sub_BEB8(v20);
  sub_762D00();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_77D9F0;
  *(v13 + 32) = a1;
  v14 = a1;
  v15 = sub_7671E0();
  sub_4342DC(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  sub_7665A0();
  v17 = v16;

  (*(v6 + 8))(v8, v5);
  return v17 + 12.0;
}

uint64_t sub_5C8B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v55 = a2;
  v51 = sub_7664A0();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v42 - v4;
  v5 = sub_7656C0();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94B5A0, &qword_78E0B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_BD88(&qword_944E50, qword_78AFE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v65 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v62 = _Q0;
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for CGSize(0);
  sub_7592E0();
  v65 = xmmword_78DFA0;
  v62 = xmmword_78DFB0;
  sub_7592E0();
  v26 = *(v12 + 16);
  v49 = v14;
  v46 = v20;
  v26(v14, v20, v11);
  v47 = v17;
  v26(v10, v17, v11);
  v50 = v12;
  v27 = *(v12 + 56);
  v52 = v10;
  v53 = v11;
  v27(v10, 0, 1, v11);
  sub_75DA20();
  sub_765620();
  v29 = v28;
  (*(v43 + 8))(v7, v44);
  v66 = &type metadata for CGFloat;
  v67 = &protocol witness table for CGFloat;
  v65.i64[0] = v29;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  v61[14] = &protocol witness table for Double;
  *&v62 = 0x4048000000000000;
  v61[13] = &type metadata for Double;
  v61[10] = 0x4028000000000000;
  if (qword_93D4B8 != -1)
  {
    swift_once();
  }

  v30 = sub_7666D0();
  v45 = sub_BE38(v30, qword_99E638);
  v31 = *(*(v30 - 8) + 16);
  v32 = v56;
  v31(v56, v45, v30);
  v33 = enum case for FontSource.useCase(_:);
  v34 = v48;
  v35 = *(v48 + 104);
  v36 = v51;
  v35(v32, enum case for FontSource.useCase(_:), v51);
  v61[9] = &protocol witness table for Double;
  v61[8] = &type metadata for Double;
  v61[5] = 0;
  v37 = v54;
  v31(v54, v45, v30);
  v35(v37, v33, v36);
  v61[3] = sub_766CA0();
  v61[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v61);
  v59 = v36;
  v60 = &protocol witness table for FontSource;
  v38 = sub_B1B4(v58);
  (*(v34 + 16))(v38, v37, v36);
  sub_766CB0();
  (*(v34 + 8))(v37, v36);
  v60 = &protocol witness table for Double;
  v59 = &type metadata for Double;
  v58[0] = 0x4020000000000000;
  v57[3] = sub_766970();
  v57[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v57);
  sub_766960();
  sub_759AB0();
  v39 = *(v50 + 8);
  v40 = v53;
  v39(v47, v53);
  return (v39)(v46, v40);
}

uint64_t sub_5C9194(uint64_t a1, uint64_t a2)
{
  v113 = a2;
  v127 = sub_7664A0();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_9569B8, &qword_79FA60);
  __chkstk_darwin(v4 - 8);
  v132 = &v108 - v5;
  v137 = sub_7677A0();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_7656C0();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v145 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v8 - 8);
  v112 = &v108 - v9;
  v115 = sub_BD88(&qword_944D88, &unk_784820);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v138 = &v108 - v10;
  v128 = sub_764A60();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v142 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_75FA00();
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v111 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v144 = &v108 - v14;
  v141 = sub_BD88(&unk_944D90, &qword_783300);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v131 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v139 = &v108 - v17;
  v18 = sub_BD88(&unk_959540, &qword_784830);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v108 - v20;
  v22 = sub_75DAB0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_759B00();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  sub_5C8B80(v25, v29);
  v30 = *(v23 + 8);
  v121 = v25;
  v31 = v25;
  v32 = v144;
  v124 = v22;
  v123 = v23 + 8;
  v118 = v30;
  v30(v31, v22);
  v33 = v26;
  v34 = a1;
  v35 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_layoutMetrics;
  v36 = v129;
  swift_beginAccess();
  v37 = *(v27 + 40);
  v120 = v35;
  v119 = v29;
  v116 = v33;
  v38 = v33;
  v39 = v142;
  v122 = v27 + 40;
  v117 = v37;
  v37(&v36[v35], v29, v38);
  swift_endAccess();
  sub_75C7E0();
  sub_768760();
  (*(v19 + 8))(v21, v18);
  v40 = v139;
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v147 = v34;
  v41 = sub_527DE4();
  sub_134D8(v151, &v149);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_764C80();
  v42 = &selRef_setTextAlignment_;
  v43 = &selRef_setSpeed_;
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    (*(v130 + 8))(v39, v128);
    (*(v146 + 8))(v32, v143);
    (*(v140 + 8))(v40, v141);
    sub_BEB8(v151);
    v54 = v135;
    v45 = v36;
    v55 = &unk_90D000;
    goto LABEL_24;
  }

  v44 = v148;
  (*(v140 + 16))(v131, v40, v141);
  sub_768FA0();
  sub_768B30();
  v45 = v36;
  v46 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel];
  sub_764C60();
  sub_75BA70();

  v47 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_separatorView];
  v48 = v111;
  sub_75F9B0();
  sub_5CA570(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v49 = v143;
  v50 = sub_76A520();
  v51 = *(v146 + 8);
  v146 += 8;
  v110 = v51;
  v51(v48, v49);
  [v47 setHidden:v50 & 1];
  v131 = v44;
  v52 = sub_764C30();
  v109 = v46;
  if ((v52 & 2) != 0)
  {
    [v46 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v46 _setTextColorFollowsTintColor:0];
    sub_396E8();
    v53 = sub_769FD0();
    [v46 setTextColor:v53];
  }

  v56 = v130;
  v55 = &unk_90D000;
  swift_getObjectType();
  v57 = sub_3DB210(v41);
  v58 = type metadata accessor for Accessory(0);
  if (v57)
  {
    v59 = v112;
    swift_storeEnumTagMultiPayload();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v112;
  }

  (*(*(v58 - 8) + 56))(v59, v60, 1, v58);
  sub_2512A8(v59, v113);
  sub_10A2C(v59, &qword_93FF90, qword_77ECE0);
  v61 = [v41 traitCollection];
  v62 = [v61 horizontalSizeClass];

  if (v62 == &dword_0 + 1 || (sub_75F9C0(), v63 = v143, v64 = sub_76A520(), v110(v48, v63), (v64 & 1) != 0))
  {
    v65 = [v45 contentView];
    [v41 pageMarginInsets];
  }

  else
  {
    v65 = [v45 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v70 = v138;
  [v65 setLayoutMargins:{top, left, bottom, right}];

  v71 = sub_764C70();
  if (v71)
  {

    v72 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v72 && ([v72 isHidden] & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v74 = v71 == 0;
    v75 = sub_24F274();
    v76 = v74;
    v70 = v138;
    [v75 setHidden:v76];

    goto LABEL_20;
  }

  v73 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v73 && ![v73 isHidden])
  {
    goto LABEL_19;
  }

LABEL_20:
  sub_75F9C0();
  v77 = v143;
  v78 = v144;
  v79 = sub_76A520();
  v80 = v48;
  v81 = v110;
  v110(v80, v77);
  v45[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isVertical] = (v79 & 1) == 0;
  if (v79)
  {
    v82 = 1;
  }

  else
  {
    v82 = 3;
  }

  [v109 setNumberOfLines:v82];
  [v45 setNeedsLayout];
  [v45 setNeedsLayout];
  swift_unknownObjectRelease();

  (*(v114 + 8))(v70, v115);
  (*(v56 + 8))(v142, v128);
  v81(v78, v77);
  (*(v140 + 8))(v139, v141);
  sub_BEB8(v151);
  v42 = &selRef_setTextAlignment_;
  v43 = &selRef_setSpeed_;
  v54 = v135;
LABEL_24:
  v83 = [v45 v43[376]];
  [v83 v55[456]];

  swift_getKeyPath();
  sub_75C7B0();

  sub_767750();
  sub_765550();
  v85 = v84;
  sub_765570();
  v86 = v137;
  v87 = v136;
  if (v85 == 1.0)
  {
    sub_765620();
    sub_765570();
    sub_765620();
  }

  else
  {
    sub_7655F0();
    sub_765570();
    sub_7655F0();
  }

  sub_767770();
  v88 = v132;
  (*(v87 + 16))(v132, v54, v86);
  (*(v87 + 56))(v88, 0, 1, v86);
  sub_769AF0();
  v89 = ASKDeviceTypeGetCurrent();
  v90 = sub_769240();
  v92 = v91;
  if (v90 == sub_769240() && v92 == v93)
  {
  }

  else
  {
    v94 = sub_76A950();

    if ((v94 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  sub_75AE60();
  sub_5CA570(&unk_94F480, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  v45[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = sub_75C770() & 1;
  v95 = v121;
  sub_75C720();
  v96 = v45;
  v97 = v119;
  sub_5C8B80(v95, v119);
  v118(v95, v124);
  v98 = v120;
  swift_beginAccess();
  v99 = v97;
  v45 = v96;
  v117(&v96[v98], v99, v116);
  swift_endAccess();
  sub_24FC28();
  v100 = *&v96[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel];
  swift_beginAccess();
  v101 = v125;
  sub_759AF0();
  swift_endAccess();
  v102.super.isa = [v96 v42[23]];
  isa = v102.super.isa;
  v104 = sub_766490(v102).super.isa;

  (*(v126 + 8))(v101, v127);
  [v100 setFont:v104];

  [v45 setNeedsLayout];
LABEL_32:
  sub_BD88(&qword_944DC8, &qword_7848C8);
  sub_75C760();
  if (v150)
  {
    sub_10914(&v149, v151);
    sub_B170(v151, v151[3]);
    v105 = sub_75E950();
    if (v105)
    {
    }

    v45[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_hasArtworkToDisplay] = v105 != 0;
    sub_BEB8(v151);
  }

  else
  {
    sub_10A2C(&v149, &unk_944DD0, &unk_7848D0);
  }

  v106 = v145;
  [v45 setNeedsLayout];
  (*(v87 + 8))(v54, v86);
  return (*(v133 + 8))(v106, v134);
}

uint64_t sub_5CA3F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_5CA454(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_5CA51C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, "prepareForReuse");
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  return result;
}

uint64_t sub_5CA570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5CA5B8()
{
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FDE8);
  qword_9A00D0 = v0;
  unk_9A00D8 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_9A00B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_5CA674(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
  v13 = type metadata accessor for AppEventSearchResultCollectionViewCell();
  *v12 = 0;
  *(v12 + 1) = 0;
  v25.receiver = v4;
  v25.super_class = v13;
  v14 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_lockupView]];

  v20 = [v18 contentView];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView;
  [v20 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView]];

  v22 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  [*&v18[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer] addTarget:v18 action:"handleTapWithGestureRecognizer:"];
  v23 = *&v18[v22];
  [v23 setDelegate:v18];

  [*&v18[v21] addGestureRecognizer:*&v18[v22]];
  return v18;
}

id sub_5CA8CC()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_5CA9F8()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v27.receiver - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AppEventSearchResultCollectionViewCell();
  v27.receiver = v0;
  v27.super_class = v5;
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v6 = [v0 contentView];
  sub_2630C();
  sub_75D650();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_lockupView];
  sub_12EE70();
  sub_769D20();
  [v15 setFrame:?];
  if (qword_93DDA8 != -1)
  {
    swift_once();
  }

  sub_B170(qword_9A00B8, qword_9A00D0);
  v16 = [v1 traitCollection];
  sub_766710();
  v18 = v17;

  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  CGRectGetMinX(v28);
  [v15 frame];
  MaxY = CGRectGetMaxY(v29);
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  Width = CGRectGetWidth(v30);
  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  v21 = CGRectGetMaxY(v31);
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView];
  if (qword_93C808 != -1)
  {
    v26 = v21;
    swift_once();
    v21 = v26;
  }

  v23 = v21 - (v18 + MaxY);
  sub_634BB8(&unk_99BE98, v22, Width, v23);
  v24 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
  sub_17BC9C(v4);
  sub_5CB710(v24, v4, Width, v23);
  sub_2467C(v4);
  [v1 bounds];
  sub_769D20();
  return [v22 setFrame:?];
}

void sub_5CAE24(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_5CB6C8(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    sub_2630C();
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_5CAFC4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_20718;
}

id sub_5CB038(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  sub_12F484();
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView];
  sub_26E5C0();
  v3 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  sub_17CC38();
  v4 = &v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v2 addSubview:*&v2[v3]];
}

uint64_t (*sub_5CB1D4(uint64_t **a1))()
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
  v2[4] = sub_5CAFC4(v2);
  return sub_21028;
}

double sub_5CB2CC()
{
  [*(*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView(0);
  sub_75D650();
  CGRectGetHeight(v3);
  sub_75D650();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_5CB358()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView(0);
  sub_75D650();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_5CB3E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_5CB43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_5CB4A8(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_5CB544(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  sub_2630C();
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_5CB6C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_5CB710(void *a1, void *a2, double a3, double a4)
{
  v86 = sub_76A920();
  v90 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_766C30();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_766C50();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_767170();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_75D850();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v67 - v14;
  v15 = sub_75CF00();
  v78 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_1ED18(a2 + v18[18], &v93, &unk_943B10, &qword_77E080);
  v19 = v94;
  sub_10A2C(&v93, &unk_943B10, &qword_77E080);
  v20 = [a1 traitCollection];
  v21 = [v20 preferredContentSizeCategory];
  v22 = sub_769B50();

  if (v22)
  {
    v67 = v19;
    v87 = a2;
    v24 = v18[13];
    v25 = v18[14];
    v26 = v18[16];
    v70 = v18[15];
    v71 = v26;
    if (qword_93C4E8 != -1)
    {
      swift_once();
    }

    v68 = (v87 + v24);
    v69 = (v87 + v25);
    v27 = sub_BE38(v15, qword_99B3D0);
    v88 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_766660();
    v29 = v28;
    v30 = [a1 traitCollection];
    v31 = v78;
    (*(v78 + 16))(v17, v27, v15);
    v32 = sub_75CE70();
    v34 = v79;
    if ((v35 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v36 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v36 = qword_946938;
      }

      v37 = v75;
      v38 = sub_BE38(v75, v36);
      v39 = v74;
      v40 = v72;
      (*(v74 + 16))(v72, v38, v37);
      v41 = v73;
      (*(v39 + 32))(v73, v40, v37);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v39 + 8))(v41, v37);
    }

    sub_75CDB0();
    v43 = v42;

    (*(v31 + 8))(v17, v15);
    *&v91 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30, &unk_781150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    v94 = &type metadata for CGFloat;
    v95 = &protocol witness table for CGFloat;
    *&v93 = v29;
    *(inited + 56) = v34;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((inited + 32));
    sub_767180();
    sub_109F98(inited);
    v45 = v87;
    v46 = v86;
    if (v67)
    {
      v94 = &type metadata for CGFloat;
      v95 = &protocol witness table for CGFloat;
      *&v93 = ceil(v43 + 16.0 + 16.0);
      v47 = v76;
      sub_767180();
      v48 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_7AADC(0, *(v48 + 16) + 1, 1, v48);
      }

      v50 = *(v48 + 16);
      v49 = *(v48 + 24);
      if (v50 >= v49 >> 1)
      {
        v48 = sub_7AADC((v49 > 1), v50 + 1, 1, v48);
      }

      v94 = v34;
      v95 = &protocol witness table for VerticalSpaceMeasurable;
      v51 = sub_B1B4(&v93);
      v52 = v77;
      (*(v77 + 16))(v51, v47, v34);
      *(v48 + 16) = v50 + 1;
      sub_10914(&v93, v48 + 40 * v50 + 32);
      (*(v52 + 8))(v47, v34);
      *&v91 = v48;
    }

    (*(v83 + 104))(v81, enum case for StackMeasurable.Axis.vertical(_:), v85);
    v53 = v80;
    sub_766C40();
    sub_766C20();
    (*(v82 + 8))(v53, v84);
    v54 = v45[3];
    sub_B170(v45, v54);
    v55 = v89;
    sub_33964(v54);
    sub_766700();
    v56 = *(v90 + 8);
    v90 += 8;
    v56(v55, v46);
    sub_769DA0();
    sub_B170(v68, v68[3]);
    sub_7665A0();
    v58 = v57;
    v59 = v88;
    sub_B170((v45 + v88[7]), *(v45 + v88[7] + 24));
    sub_766720();
    *&v93 = v58;
    sub_7666F0();
    sub_B170(v69, v69[3]);
    sub_7665A0();
    v61 = v60;
    sub_B170((v45 + v59[8]), *(v45 + v59[8] + 24));
    sub_766720();
    *&v93 = v61;
    sub_7666F0();
    sub_1ED18(v45 + v70, &v91, &qword_9417D0, &unk_780EA0);
    if (v92)
    {
      sub_10914(&v91, &v93);
      sub_B170(&v93, v94);
      if (sub_766500())
      {
        sub_B170(&v93, v94);
        sub_7665A0();
        v63 = v62;
        sub_B170((v45 + v88[9]), *(v45 + v88[9] + 24));
        sub_766720();
        *&v91 = v63;
        sub_7666F0();
      }

      sub_BEB8(&v93);
    }

    else
    {
      sub_10A2C(&v91, &qword_9417D0, &unk_780EA0);
    }

    v64 = (v45 + v88[10]);
    v65 = v64[3];
    sub_B170(v64, v65);
    v66 = v89;
    sub_33964(v65);
    sub_766700();
    v56(v66, v46);
    sub_1ED18(v45 + v71, &v91, &unk_943B10, &qword_77E080);
    if (v92)
    {
      sub_10914(&v91, &v93);
      sub_B170(&v93, v94);
      if ((sub_766540() & 1) == 0)
      {
        sub_B170(&v93, v94);
        sub_7665A0();
      }

      sub_BEB8(&v93);
    }

    else
    {
      sub_10A2C(&v91, &unk_943B10, &qword_77E080);
    }
  }

  else
  {
    v23.n128_f64[0] = a3;
    sub_5CC4B8(v23, a4, a2, v19 != 0, a1);
  }
}

double sub_5CC4B8(__n128 a1, double a2, uint64_t a3, int a4, void *a5)
{
  v47 = a4;
  v52 = sub_766C30();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_766C50();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_767170();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75D850();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_75CF00();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C4E0 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v16, qword_99B3B8);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_766660();
  v22 = v21;
  v54 = a5;
  v23 = [a5 traitCollection];
  (*(v17 + 16))(v19, v20, v16);
  v24 = sub_75CE70();
  if ((v26 & 1) == 0 && ((v24 | v25) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v27 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v27 = qword_946938;
    }

    v28 = sub_BE38(v10, v27);
    v29 = v44;
    (*(v44 + 16))(v12, v28, v10);
    (*(v29 + 32))(v15, v12, v10);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v29 + 8))(v15, v10);
  }

  sub_75CDB0();
  v31 = v30;

  (*(v17 + 8))(v19, v16);
  v58 = _swiftEmptyArrayStorage;
  sub_BD88(&qword_941B30, &unk_781150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  *&v55 = v22;
  v33 = v48;
  *(inited + 56) = v48;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((inited + 32));
  sub_767180();
  sub_109F98(inited);
  if (v47)
  {
    v56 = &type metadata for CGFloat;
    v57 = &protocol witness table for CGFloat;
    *&v55 = ceil(v31 + 4.0 + 4.0);
    v34 = v45;
    sub_767180();
    v35 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_7AADC(0, *(v35 + 2) + 1, 1, v35);
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_7AADC((v36 > 1), v37 + 1, 1, v35);
    }

    v56 = v33;
    v57 = &protocol witness table for VerticalSpaceMeasurable;
    v38 = sub_B1B4(&v55);
    v39 = v46;
    (*(v46 + 16))(v38, v34, v33);
    *(v35 + 2) = v37 + 1;
    sub_10914(&v55, &v35[5 * v37 + 4]);
    (*(v39 + 8))(v34, v33);
    v58 = v35;
  }

  (*(v50 + 104))(v49, enum case for StackMeasurable.Axis.vertical(_:), v52);
  sub_766C40();
  sub_766C20();
  v41 = v40;
  (*(v51 + 8))(v8, v53);
  return v41;
}

void sub_5CCBE4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_5CCCE0(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView] + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  [a1 locationInView:v1];
  v7 = v6;
  v9 = v8;
  v10 = [v1 hitTest:0 withEvent:?];
  [a1 locationInView:v2];
  v12 = v11;
  v14 = v13;
  [a1 locationInView:v5];
  v16 = v15;
  v18 = v17;
  [v2 bounds];
  v21.x = v12;
  v21.y = v14;
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventViewTappedAction])
  {
    [v1 bounds];
    v23.x = v7;
    v23.y = v9;
    v19 = CGRectContainsPoint(v26, v23);

    if (v19)
    {
      if (!v10)
      {
        return 1;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass() == 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

double *sub_5CCE88(uint64_t a1, char a2)
{
  if (a2)
  {
    v11[3] = sub_75F850();
    v11[4] = sub_5CD114();
    sub_B1B4(v11);

    sub_75F830();
    sub_134D8(v11, &v8);
    sub_B170(&v8, v9);
    if (sub_75AD40())
    {
      sub_10914(&v8, v7);
      v2 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = _swiftEmptyArrayStorage;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_143978(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
        v2 = v10;
      }

      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      if (v5 >= v4 >> 1)
      {
        sub_143978((v4 > 1), v5 + 1, 1);
        v2 = v10;
      }

      *(v2 + 2) = v5 + 1;
      sub_10914(v7, &v2[5 * v5 + 4]);
    }

    else
    {
      sub_BEB8(&v8);
      v2 = _swiftEmptyArrayStorage;
    }

    sub_BEB8(v11);
    return v2;
  }

  else
  {
    result = sub_76A840();
    __break(1u);
  }

  return result;
}

Swift::Int OnboardingConfiguration.hashValue.getter(unsigned __int8 a1)
{
  sub_76AA30();
  sub_76AA40(a1);
  return sub_76AA80();
}

unint64_t sub_5CD0B0()
{
  result = qword_95CE68;
  if (!qword_95CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95CE68);
  }

  return result;
}

unint64_t sub_5CD114()
{
  result = qword_93F350;
  if (!qword_93F350)
  {
    sub_75F850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F350);
  }

  return result;
}

uint64_t sub_5CD16C()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_95CE70 = v5;
  return result;
}

uint64_t sub_5CD264()
{
  v2._object = 0x80000000007EC8B0;
  v2._countAndFlagsBits = 0xD000000000000016;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  result = sub_75B750(v2, v3);
  qword_95CE78 = result;
  unk_95CE80 = v1;
  return result;
}

uint64_t sub_5CD2A8()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_95CE88);
  sub_BE38(v0, qword_95CE88);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7593B0();
}

void sub_5CD344(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (sub_7699D0() & 1) != 0 || (sub_769A00())
  {
    v4 = sub_7699F0();

    v5 = 2;
    if ((v4 & 1) == 0)
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = sub_7699F0();

    v5 = 2;
    if (v6)
    {
      v5 = 0;
    }
  }

  *a2 = v5;
}

uint64_t sub_5CD3D0()
{
  v0 = sub_766CA0();
  __chkstk_darwin(v0 - 8);
  v17[2] = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_940AD0, &unk_78F910);
  __chkstk_darwin(v6 - 8);
  v7 = sub_760EB0();
  sub_161DC(v7, qword_9A00E0);
  v17[1] = sub_BE38(v7, qword_9A00E0);
  if (qword_93D770 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EE48);
  v10 = *(*(v8 - 8) + 16);
  v10(v5, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for FontSource.useCase(_:), v2);
  sub_759330();
  if (qword_93D778 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v8, qword_99EE60);
  v10(v5, v13, v8);
  v12(v5, v11, v2);
  v19 = v2;
  v20 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v18);
  (*(v3 + 16))(v14, v5, v2);
  sub_766CB0();
  (*(v3 + 8))(v5, v2);
  v19 = &type metadata for Double;
  v20 = &protocol witness table for Double;
  v18[0] = 0x4030000000000000;
  if (qword_93DDB0 != -1)
  {
    swift_once();
  }

  v15 = qword_95CE70;
  [v15 size];

  return sub_760EA0();
}

char *sub_5CD774(double a1, double a2, double a3, double a4)
{
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_tapHandler];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v57 = v4;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_disclosureImageView] = v16;
  if (qword_93D770 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  v18 = sub_BE38(v17, qword_99EE48);
  v19 = *(v17 - 8);
  v55 = *(v19 + 16);
  v55(v14, v18, v17);
  v20 = *(v19 + 56);
  v20(v14, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v10 + 104);
  v54(v56, enum case for DirectionalTextAlignment.none(_:), v9);
  v22 = sub_75BB20();
  v53 = v9;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v57[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_primaryLabel] = sub_75BB10();
  if (qword_93D778 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v17, qword_99EE60);
  v55(v14, v25, v17);
  v20(v14, 0, 1, v17);
  v54(v56, v21, v53);
  v26 = objc_allocWithZone(v23);
  v27 = sub_75BB10();
  v28 = v57;
  *&v57[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_secondaryLabel] = v27;
  v29 = type metadata accessor for DeveloperLinkView();
  v60.receiver = v28;
  v60.super_class = v29;
  v30 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_disclosureImageView;
  v36 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_disclosureImageView];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v37 = v36;
  v38 = sub_769FF0();
  [v37 setTintColor:v38];

  v39 = qword_93DDB0;
  v40 = *&v34[v35];
  if (v39 != -1)
  {
    swift_once();
  }

  [v40 setImage:qword_95CE70];

  if (qword_93DDC0 != -1)
  {
    swift_once();
  }

  v41 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_BE38(v41, qword_95CE88);
  v58 = v34;
  v42 = v34;
  sub_7592B0();

  v43 = v59;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_primaryLabel;
  [*&v42[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_primaryLabel] setTextAlignment:v59];
  [*&v42[v44] _setTextColorFollowsTintColor:1];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_secondaryLabel;
  [*&v42[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_secondaryLabel] setTextAlignment:v43];
  v46 = *&v42[v45];
  v61._object = 0x80000000007EC8B0;
  v61._countAndFlagsBits = 0xD000000000000016;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_75B750(v61, v62);
  v47 = sub_769210();

  [v46 setText:v47];

  v48 = *&v42[v45];
  v49 = sub_769FF0();
  [v48 setTextColor:v49];

  v50 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v42 action:"didTapLink:"];
  [v42 addGestureRecognizer:v50];
  [v42 addSubview:*&v34[v35]];
  [v42 addSubview:*&v42[v44]];
  [v42 addSubview:*&v42[v45]];

  return v42;
}

uint64_t sub_5CDE6C()
{
  v1 = v0;
  v2 = sub_7664F0();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760EB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_760ED0();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeveloperLinkView();
  v39.receiver = v0;
  v39.super_class = v11;
  v25[1] = v11;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_disclosureImageView];
  v13 = [v0 traitCollection];
  v14 = sub_7699E0();

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [v1 traitCollection];
    v15 = sub_769A00();
  }

  [v12 setHidden:v15 & 1];
  if (qword_93DDC8 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v4, qword_9A00E0);
  (*(v5 + 16))(v7, v17, v4);
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_primaryLabel];
  v37 = sub_75BB20();
  v38 = &protocol witness table for UILabel;
  v35 = &protocol witness table for UILabel;
  v36 = v18;
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_secondaryLabel];
  v34 = v37;
  v33 = v19;
  v31 = sub_BE70(0, &qword_949D90, UIImageView_ptr);
  v32 = &protocol witness table for UIView;
  v30 = v12;
  v20 = v18;
  v21 = v19;
  v22 = v12;
  sub_760EC0();
  sub_75D650();
  v23 = v27;
  sub_760E90();
  (*(v28 + 8))(v23, v29);
  return (*(v8 + 8))(v10, v26);
}

double sub_5CE244(uint64_t a1, __n128 a2, double a3)
{
  v4 = sub_760EB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760ED0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DDC8 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v4, qword_9A00E0);
  (*(v5 + 16))(v7, v12, v4);
  v13 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_primaryLabel);
  v23 = sub_75BB20();
  v24 = &protocol witness table for UILabel;
  v22[10] = &protocol witness table for UILabel;
  v22[11] = v13;
  v14 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_secondaryLabel);
  v22[9] = v23;
  v22[6] = v14;
  v15 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_disclosureImageView);
  v22[4] = sub_BE70(0, &qword_949D90, UIImageView_ptr);
  v22[5] = &protocol witness table for UIView;
  v22[1] = v15;
  v16 = v13;
  v17 = v14;
  v18 = v15;
  sub_760EC0();
  sub_760E80();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  return v20;
}

double sub_5CE54C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v46 = a6;
  v45 = a5;
  v49 = sub_762D10();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_760EB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v54 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_760ED0();
  v51 = *(v52 - 8);
  *&v14 = __chkstk_darwin(v52).n128_u64[0];
  v50 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 traitCollection];
  v17 = sub_7699E0();

  v18 = 2;
  if ((v17 & 1) == 0)
  {
    v18 = 0;
  }

  v44 = v18;
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D770 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  sub_BE38(v19, qword_99EE48);
  v20 = [a1 traitCollection];
  v21 = sub_769E10();

  if (qword_93D778 != -1)
  {
    swift_once();
  }

  sub_BE38(v19, qword_99EE60);
  v53 = a1;
  v22 = [a1 traitCollection];
  v43 = sub_769E10();

  if (qword_93DDC8 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v11, qword_9A00E0);
  (*(v12 + 16))(v54, v23, v11);
  v24 = sub_7653B0();
  v59[3] = v24;
  v42 = sub_9BA34();
  v59[4] = v42;
  v25 = sub_B1B4(v59);
  v26 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v27 = *(*(v24 - 8) + 104);
  v27(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);

  v28 = v21;
  sub_765C30();
  sub_BEB8(v59);
  v46 = v28;
  sub_762D00();
  sub_762CE0();
  v29 = *(v48 + 8);
  v30 = v10;
  v31 = v49;
  v29(v30, v49);
  if (qword_93DDB8 != -1)
  {
    swift_once();
  }

  v58[3] = v24;
  v58[4] = v42;
  v32 = sub_B1B4(v58);
  v27(v32, v26, v24);

  v33 = v43;
  sub_765C30();
  sub_BEB8(v58);
  v34 = v47;
  sub_762D00();
  sub_762CE0();
  v29(v34, v31);
  if (qword_93DDB0 != -1)
  {
    swift_once();
  }

  [qword_95CE70 size];
  v35 = sub_7670D0();
  swift_allocObject();
  v36 = sub_7670B0();
  v56 = v35;
  v57 = &protocol witness table for LayoutViewPlaceholder;
  v55 = v36;
  v37 = v50;
  sub_760EC0();
  sub_760E80();
  v39 = v38;

  (*(v51 + 8))(v37, v52);
  return v39;
}

id sub_5CEC90(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DeveloperLinkView();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93DDC0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v6, qword_95CE88);
    v7 = v1;
    sub_7592B0();

    [*&v7[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_primaryLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC18ASMessagesProvider17DeveloperLinkView_secondaryLabel] setTextAlignment:v8];
  }

  return result;
}

id sub_5CEE6C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeveloperLinkView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_5CF00C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MessagesSearchViewController(0);
  objc_msgSendSuper2(&v8, "viewWillLayoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_5CF580;
  *(v3 + 24) = v2;
  v7[4] = sub_2EC28;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1EB578;
  v7[3] = &unk_8992D0;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_5CF20C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for MessagesSearchViewController(0);
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  sub_75B430();
  sub_75B410();
  sub_75B380();
}

void sub_5CF2A8()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v14 - v4;
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_activeSearchBarObservingViewController])
  {
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_activeSearchBarObservingViewController + 8];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_61E2B8(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_objectGraph];
      v10 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_268C8(v5);
      }

      else
      {
        sub_32A6C0(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }

  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
  }
}

id sub_5CF484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesSearchViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesSearchViewController(uint64_t a1)
{
  result = qword_95CF18;
  if (!qword_95CF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5CF548()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_5CF5B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5CF5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_944EA0, &unk_78A060);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v43 - v17);
  v45 = sub_BD88(&unk_95CF90, &unk_784980);
  v19 = *(v45 - 8);
  *&v20 = __chkstk_darwin(v45).n128_u64[0];
  v22 = &v43 - v21;
  v23 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits] = v23;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_75A5F0();
  v24 = sub_75B260();

  if (v24)
  {
    v43 = a1;
    if (qword_93CA70 != -1)
    {
      swift_once();
    }

    v25 = sub_BE38(v13, qword_99CA78);
    sub_FCD60(v25, v18, v26);
    v27 = *v18;
    v28 = v24;

    *v18 = v24;
    sub_FCD60(v18, v15, v29);
    sub_BD88(&qword_93FBE0, &unk_77EA70);
    sub_7592F0();

    sub_FCDC4(v18, v30);
  }

  else
  {
    if (qword_93CA70 != -1)
    {
      swift_once();
    }

    v31 = sub_BE38(v13, qword_99CA78);
    sub_FCD60(v31, v18, v32);
    sub_BD88(&qword_93FBE0, &unk_77EA70);
    sub_7592F0();
  }

  v33 = sub_75A5F0();
  v34 = v45;
  (*(v19 + 16))(v12, v22, v45);
  v35.n128_f64[0] = (*(v19 + 56))(v12, 0, 1, v34);
  sub_5F8FA0(v35, v33, v12, v44);

  sub_5CFC70(v12);
  v36 = sub_75A5E0();
  if (!v36)
  {
    v36 = [objc_opt_self() clearColor];
  }

  v37 = v36;
  v38 = ObjectType;
  v48.receiver = v7;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "setBackgroundColor:", v36, v43);
  v39 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
  v47.receiver = v7;
  v47.super_class = v38;
  v40 = v39;
  v41 = objc_msgSendSuper2(&v47, "backgroundColor");
  sub_759070();

  [v7 setNeedsLayout];
  return (*(v19 + 8))(v22, v34);
}

uint64_t sub_5CFA48(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_75E670();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6443F4(a6, v10);
  sub_75E690();
  sub_5CFF0C(&qword_95CFA8, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  sub_766ED0();
  (*(v8 + 8))(v10, v7);
  v11 = [objc_opt_self() fractionalWidthDimension:1.0];
  v12 = sub_75F970();

  return v12;
}

uint64_t sub_5CFC70(uint64_t a1)
{
  v2 = sub_BD88(&qword_944EA0, &unk_78A060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_5CFCD8(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_75E670();
  __chkstk_darwin(v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75E690();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6443F4(a5, v8);
  swift_getObjectType();
  sub_6456A8(a5);
  v13 = sub_7670D0();
  swift_allocObject();
  v14 = sub_7670B0();
  v19[8] = v13;
  v19[9] = &protocol witness table for LayoutViewPlaceholder;
  v19[5] = v14;
  swift_allocObject();
  v15 = sub_7670B0();
  v19[3] = v13;
  v19[4] = &protocol witness table for LayoutViewPlaceholder;
  v19[0] = v15;
  sub_75E680();
  sub_5CFF0C(&qword_95CFA0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  sub_7665A0();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_5CFF0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_5CFF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v10 - 8);
  v53 = v44 - v11;
  v51 = sub_7623A0();
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_BD88(&unk_9457F0, qword_783FD0);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v44 - v13;
  v14 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v14 - 8);
  v46 = v44 - v15;
  v16 = sub_763750();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&unk_948730, &qword_788DD0);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = v44 - v22;
  v24 = [v6 contentView];
  [a6 pageMarginInsets];
  [v24 setLayoutMargins:?];

  v25 = sub_75AA50();
  v45 = a3;
  if (!v25)
  {
    goto LABEL_7;
  }

  if (v25 >> 62)
  {
    v29 = v25;
    v30 = sub_76A860();
    v25 = v29;
    if (v30)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_6:

LABEL_7:
    [*&v6[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_8;
  }

LABEL_4:
  v26 = v25;
  sub_75A110();
  sub_768900();
  sub_768ED0();
  v27 = v54[0];
  v28 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView];
  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:0];
  *(v28 + OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks) = v26;

  *(v28 + OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader) = v27;

  sub_533B34(v26, v27);

LABEL_8:
  v44[1] = *&v7[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton];
  v31 = sub_75AA90();
  v32 = sub_75AA70();
  v33 = sub_75AA60();
  (*(v17 + 104))(v19, enum case for OfferButtonPresenterViewAlignment.center(_:), v16);
  (*(v17 + 56))(v46, 1, 1, v16);
  sub_5D08F4(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  sub_760940();
  v34 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v34 - 8) + 56))(v23, 0, 1, v34);
  v35 = v47;
  v36 = v51;
  (*(v47 + 104))(v48, enum case for OfferButtonSubtitlePosition.above(_:), v51);
  (*(v35 + 56))(v53, 1, 1, v36);
  sub_5D08F4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v37 = v49;
  sub_760940();
  sub_1DFEBC(v31, v32, v33, v23, v37, v45, 0, 0);

  (*(v50 + 8))(v37, v52);
  sub_35280C(v23);
  sub_761230();
  sub_768900();
  sub_768ED0();
  v38 = v54[0];
  sub_75AA80();
  sub_75AAA0();
  v39 = sub_761190();
  swift_allocObject();
  v40 = v38;
  v41 = sub_761170();
  sub_5D08F4(&unk_9513A0, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_7A8090);
  swift_unknownObjectRetain();
  sub_761180();
  v54[3] = v39;
  v54[0] = v41;
  v42 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();

  sub_12C2F8(v54, &v7[v42]);
  swift_endAccess();
  [v7 setNeedsLayout];

  return result;
}

double sub_5D06F0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_769240();
  v11 = v10;

  if (!a2)
  {

    v14 = 0;
    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_76A950();

    if (v13)
    {
      return result;
    }

LABEL_10:
    v14 = sub_769210();
LABEL_12:
    [v5 setText:v14];

    [v5 setHidden:sub_7692D0() & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_5D08F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_5D093C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_758FD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_761230();
  sub_768900();
  sub_768ED0();
  v14 = v22[1];
  sub_761210();
  if (sub_758FA0())
  {
    v15 = sub_75AA80();
  }

  else
  {
    v15 = sub_75AAA0();
  }

  v17 = v15;
  v18 = v16;
  swift_getObjectType();
  v19.n128_f64[0] = a1;
  v20 = sub_145CB4(v17, v18, a7, v19, a2);

  (*(v11 + 8))(v13, v10);
  return v20;
}

void sub_5D0ACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_titleLabel];
  sub_75E930();
  if (v5)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_subtitleLabel];
  sub_75E940();
  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_itemViews;
  swift_beginAccess();
  v11 = *&v2[v10];
  if (v11 >> 62)
  {
    v12 = sub_76A860();
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = sub_76A770();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    [v14 removeFromSuperview];
  }

LABEL_16:
  *&v2[v10] = _swiftEmptyArrayStorage;

  v16 = sub_75E920();
  v17 = v16;
  if (!(v16 >> 62))
  {
    v18 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_36:

    [v3 setNeedsLayout];
    return;
  }

  v18 = sub_76A860();
  if (!v18)
  {
    goto LABEL_36;
  }

LABEL_18:
  type metadata accessor for ArcadeWelcomeItemView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v18 >= 1)
  {
    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
      }

      v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel];
      sub_75C3E0();
      if (v22)
      {
        v23 = sub_769210();
      }

      else
      {
        v23 = 0;
      }

      [v21 setText:v23];

      v24 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel];
      sub_75C3C0();
      if (v25)
      {
        v26 = sub_769210();
      }

      else
      {
        v26 = 0;
      }

      [v24 setText:v26];

      *&v20[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artwork] = sub_75C3D0();

      *&v20[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkLoader] = a2;

      [v20 setNeedsLayout];
      [v3 addSubview:v20];
      swift_beginAccess();
      v27 = v20;
      sub_769440();
      if (*(&dword_10 + (*(v3 + v10) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v3 + v10) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      ++v19;
      sub_769500();
      swift_endAccess();
    }

    while (v18 != v19);
    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_5D0F10(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v9 = sub_7664A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_761A10();
  sub_161DC(v13, a5);
  sub_BE38(v13, a5);
  v17[24] = &type metadata for Double;
  v17[25] = &protocol witness table for Double;
  *&v17[21] = a1;
  v17[19] = &type metadata for Double;
  v17[20] = &protocol witness table for Double;
  *&v17[16] = a2;
  if (qword_93DB28 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  v15 = sub_BE38(v14, qword_99F970);
  (*(*(v14 - 8) + 16))(v12, v15, v14);
  (*(v10 + 104))(v12, enum case for FontSource.useCase(_:), v9);
  v17[14] = &type metadata for Double;
  v17[15] = &protocol witness table for Double;
  *&v17[11] = a3;
  v17[9] = &type metadata for Double;
  v17[10] = &protocol witness table for Double;
  v17[6] = 0x4046800000000000;
  v17[5] = &protocol witness table for Double;
  v17[4] = &type metadata for Double;
  v17[1] = 0x4024000000000000;
  return sub_761A00();
}

char *sub_5D113C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_760AD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - v13;
  if (qword_93DB20 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  v16 = sub_BE38(v15, qword_99F958);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = sub_75BB20();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v47[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_titleLabel] = sub_75BB10();
  if (qword_93DB28 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v15, qword_99F970);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = sub_75BB10();
  v26 = v47;
  *&v47[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_subtitleLabel] = v25;
  *&v26[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_itemViews] = _swiftEmptyArrayStorage;
  v48.receiver = v26;
  v48.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_titleLabel;
  v33 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_titleLabel];
  sub_396E8();
  v34 = v33;
  v35 = sub_769FD0();
  [v34 setTextColor:v35];

  v36 = OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_subtitleLabel;
  v37 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_subtitleLabel];
  if (sub_2DF0B4())
  {
    v38 = 3;
  }

  else
  {
    v38 = 4;
  }

  [v37 setNumberOfLines:v38];

  v39 = *&v31[v36];
  v40 = sub_769FF0();
  [v39 setTextColor:v40];

  sub_5D15C8();
  [v31 addSubview:*&v31[v32]];
  [v31 addSubview:*&v31[v36]];

  return v31;
}

id sub_5D15C8()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_769A00();

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_titleLabel];
  if (v8)
  {
    v10 = enum case for DirectionalTextAlignment.leading(_:);
    v11 = *(v3 + 104);
    v11(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_75BA90();
    [v9 setNumberOfLines:0];
    v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_subtitleLabel];
    v11(v6, v10, v2);
    sub_75BA90();
    return [v12 setNumberOfLines:0];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_titleLabel] setTextAlignment:1];
    [v9 setNumberOfLines:2];
    v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_subtitleLabel];
    [v14 setTextAlignment:1];
    if (sub_2DF0B4())
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    return [v14 setNumberOfLines:v15];
  }
}

uint64_t sub_5D1840()
{
  ObjectType = swift_getObjectType();
  v23 = sub_7664F0();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_761A10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_761A30();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v22[1] = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v11);
  if (sub_2DF0B4())
  {
    if (qword_93DDD8 != -1)
    {
      swift_once();
    }

    v14 = qword_95D010;
  }

  else
  {
    if (qword_93DDD0 != -1)
    {
      swift_once();
    }

    v14 = qword_95CFF8;
  }

  v15 = sub_BE38(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_titleLabel];
  v28 = sub_75BB20();
  v29 = &protocol witness table for UILabel;
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_subtitleLabel];
  v26 = &protocol witness table for UILabel;
  v27 = v16;
  v25 = v28;
  v24 = v17;
  swift_beginAccess();
  v18 = v16;
  v19 = v17;

  sub_141AE0(v20);

  sub_761A20();
  sub_75D650();
  sub_7619F0();
  (*(v2 + 8))(v4, v23);
  return (*(v10 + 8))(v13, v9);
}

double sub_5D1BD0(uint64_t a1, __n128 a2, double a3)
{
  v4 = sub_761A10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_761A30();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2DF0B4())
  {
    if (qword_93DDD8 != -1)
    {
      swift_once();
    }

    v12 = qword_95D010;
  }

  else
  {
    if (qword_93DDD0 != -1)
    {
      swift_once();
    }

    v12 = qword_95CFF8;
  }

  v13 = sub_BE38(v4, v12);
  (*(v5 + 16))(v7, v13, v4);
  v14 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_titleLabel);
  v23 = sub_75BB20();
  v24 = &protocol witness table for UILabel;
  v15 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider24ArcadeWelcomeContentView_subtitleLabel);
  v22[8] = &protocol witness table for UILabel;
  v22[9] = v14;
  v22[7] = v23;
  v22[4] = v15;
  swift_beginAccess();
  v16 = v14;
  v17 = v15;

  sub_141AE0(v18);

  sub_761A20();
  sub_7619E0();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  return v20;
}

uint64_t sub_5D1F24(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_769A00();

  if (!a1 || (result = sub_769A00(), (result & 1) != (v5 & 1)))
  {
    sub_5D15C8();
    return [v2 setNeedsLayout];
  }

  return result;
}

double sub_5D2184(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_766690();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v82 = &v74 - v16;
  v88 = a5;
  [a5 pageMarginInsets];
  v99._object = 0x80000000007CC420;
  v99._countAndFlagsBits = 0xD000000000000010;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v17 = sub_75B750(v99, v100);
  v19 = sub_3A5CC8(v17, v18);
  v77 = v9;
  v78 = v8;
  v76 = v11;
  v83 = v13;
  if (v19 > 2)
  {
    if (v19 - 3 < 2)
    {
      if (qword_93CE60 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_99D650;
      goto LABEL_21;
    }

    if (v19 == 5)
    {
      if (qword_93CE68 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_99D6A8;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    if (qword_93CE48 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_99D548;
    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (qword_93CE50 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_99D5A0;
  }

  else
  {
    if (qword_93CE58 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_99D5F8;
  }

LABEL_21:
  v21 = v20[4];
  *&v97[16] = v20[3];
  *&v97[32] = v21;
  v98 = *(v20 + 10);
  v22 = v20[2];
  v96 = v20[1];
  *v97 = v22;
  v95 = *v20;
  v23 = *&v97[40];
  v24 = v98;
  v86 = *&v97[24];
  v87 = *&v97[8];
  v26 = *(&v96 + 1);
  v25 = v22;
  v28 = *(&v95 + 1);
  v27 = v96;
  v29 = v95;
  sub_72018(&v95, v92);
  v92[0] = __PAIR128__(v28, v29);
  v92[1] = __PAIR128__(v26, v27);
  *&v93[0] = v25;
  *(v93 + 8) = v87;
  *(&v93[1] + 8) = v86;
  *(&v93[2] + 1) = v23;
  v94 = v24;
  v98 = v24;
  v95 = __PAIR128__(v28, v29);
  v96 = __PAIR128__(v26, v27);
  *v97 = v93[0];
  *&v97[16] = v93[1];
  *&v97[32] = v93[2];
  v30 = v88;
  [v88 pageMarginInsets];
  v31 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v85 = sub_3A5D14(&v95);

  *&v86 = a1;
  sub_7648B0();
  v33 = v32;
  v34 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93CE88 != -1)
  {
    swift_once();
  }

  v84 = sub_7666D0();
  v35 = sub_BE38(v84, qword_99D700);
  v36 = [v30 traitCollection];
  v81 = v35;
  v37 = sub_769E10();

  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v39 = qword_93C2E0;
  v40 = NSParagraphStyleAttributeName;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = [qword_99A440 paragraphStyleWithBaseWritingDirection:-1];
  v42 = sub_BE70(0, &qword_940F48, NSParagraphStyle_ptr);
  *(inited + 40) = v41;
  *(inited + 64) = v42;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v34;
  *(inited + 80) = v37;
  v43 = NSFontAttributeName;
  v80 = v37;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50, &qword_785170);
  swift_arrayDestroy();
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = sub_769210();
  type metadata accessor for Key(0);
  sub_5D3358(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
  v79 = v33;
  isa = sub_7690E0().super.isa;

  v47 = [v44 initWithString:v45 attributes:isa];

  *&v87 = v47;
  if (v85)
  {
    v48 = v85;
    sub_10D028(_swiftEmptyArrayStorage);
    v49 = objc_allocWithZone(NSAttributedString);
    v50 = sub_769210();
    v51 = sub_7690E0().super.isa;

    v52 = [v49 initWithString:v50 attributes:v51];

    [v87 appendAttributedString:v52];
    v53 = [objc_allocWithZone(NSTextAttachment) init];
    [v53 setImage:v48];
    [(UIImage *)v48 size];
    [v53 setBounds:{0.0, -v23, v54, v55}];
    v56 = [objc_opt_self() attributedStringWithAttachment:v53];
    [v87 appendAttributedString:v56];

    sub_72078(v92);
  }

  else
  {

    sub_72078(v92);
  }

  v57 = v84;
  v58 = *(v84 - 8);
  v59 = v82;
  (*(v58 + 16))(v82, v81, v84);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = sub_7653B0();
  v90 = v60;
  v61 = sub_5D3358(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v91 = v61;
  v62 = sub_B1B4(v89);
  v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v64 = *(*(v60 - 8) + 104);
  v64(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
  sub_765C30();
  sub_BEB8(v89);
  v65 = v88;
  sub_762CA0();
  sub_11A38(v59);
  if (qword_93CE98 != -1)
  {
    swift_once();
  }

  v66 = sub_766CA0();
  sub_BE38(v66, qword_99D730);
  sub_766720();
  if (qword_93CEA0 != -1)
  {
    swift_once();
  }

  sub_BE38(v66, qword_99D748);
  sub_7666F0();
  v82 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v82 setMaximumNumberOfLines:0];
  sub_7648C0();
  if (v67)
  {
    if (qword_93CE90 != -1)
    {
      swift_once();
    }

    sub_BE38(v84, qword_99D718);
    v90 = v60;
    v91 = v61;
    v68 = sub_B1B4(v89);
    v64(v68, v63, v60);
    sub_765C30();
    sub_BEB8(v89);
    v69 = v88;
    sub_762CB0();

    if (qword_93CEA8 != -1)
    {
      swift_once();
    }

    sub_BE38(v66, qword_99D760);
    sub_766720();
    v65 = v69;
    v70 = v83;
    v71 = &unk_90D000;
    if (qword_93CEB0 != -1)
    {
      swift_once();
    }

    sub_BE38(v66, qword_99D778);
    sub_7666F0();
  }

  else
  {
    v70 = v83;
    v71 = &unk_90D000;
  }

  if (sub_7648D0())
  {
    sub_765260();
    sub_765260();
    sub_7666A0();
    if ((sub_7648A0() & 1) == 0)
    {
      [v65 v71[511]];
      [v65 v71[511]];
    }

    sub_766660();
    if (qword_93CEB8 != -1)
    {
      swift_once();
    }

    sub_BE38(v66, qword_99D790);
    v72 = v75;
    sub_766470();
    sub_766700();

    (*(v77 + 8))(v72, v78);
    (*(v74 + 8))(v70, v76);
  }

  else
  {
  }

  return a2;
}

id sub_5D2F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_766690();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView];
  v16 = sub_7648B0();
  sub_3A39A4(v16, v17);
  v18 = sub_7648C0();
  sub_3A4118(v18, v19);
  v15[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork] = sub_7648A0() & 1;
  sub_3A4508();
  if (sub_7648D0())
  {
    sub_765260();
    sub_765260();
    sub_7666A0();
    (*(v12 + 16))(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_3C5990(v10, &v15[v20]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] setHidden:0];
    [v15 setNeedsLayout];
    v21 = [v6 contentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    sub_75D650();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    Width = CGRectGetWidth(v40);
    sub_766660();
    v32 = v31;

    (*(v12 + 8))(v14, v11);
    v33 = &v6[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
    *v33 = Width;
    *(v33 + 1) = v32;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v34 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_3C5990(v10, &v15[v34]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] setHidden:1];
    [v15 setNeedsLayout];
    v35 = &v6[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
    *v35 = 0;
    *(v35 + 1) = 0;
  }

  [a5 pageMarginInsets];
  v37 = v36;
  [a5 pageMarginInsets];
  return [v15 setLayoutMargins:{0.0, v37, 0.0}];
}