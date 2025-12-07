unint64_t sub_1005D5440(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_10077158C();
    if (v19)
    {
      v21 = v19;
      v1 = sub_1004A01D4(v20);
      sub_1000FBBD0(v1 + 32, v21, v18);
      v23 = v22;

      if (v23 != v21)
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
      a1 = sub_10077158C();
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
          v10 = sub_10077149C();
          v11 = sub_10077149C();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
          v1 = sub_1004BE250(v1);
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
          a1 = sub_1004BE250(v1);
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

void sub_1005D5650(void *a1)
{
  v2 = sub_1007630EC();
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v29 = v23 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, &v15[v16 * v10], v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = &v15[v16 * v12];
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1004BDB9C(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= a1[2])
    {
      goto LABEL_15;
    }

    v22(&v21[v19], v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
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

id sub_1005D587C()
{
  v1 = sub_100767B7C();
  if (v1 == sub_100767B7C())
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility);
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView) setHidden:v2];
  if (sub_100766B6C())
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton);
    v4 = 1;
  }

  else
  {
    v5 = sub_100767B7C();
    v6 = sub_100767B7C();
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton);
    if (v5 == v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1);
    }
  }

  return [v3 setHidden:v4];
}

char *sub_1005D5974(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView(0);
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_animationVerticalOffset] = 0x4010000000000000;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_navigationBarMode] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButtonMode] = 0;
  v11 = &v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer;
  *&v5[v12] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility] = 0;
  v13 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton] = sub_1001E89B8(1);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for ProductTitleView();
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setHeightShouldBeIncreasedByTabBarHeight:1];
  v18 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer] setEnabled:0];
  v19 = *&v16[v18];
  [v19 addTarget:v16 action:"didTapIcon:"];

  v20 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView] addGestureRecognizer:*&v16[v18]];
  [*&v16[v20] setHidden:1];
  v21 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton] setHidden:1];
  [v16 addSubview:*&v16[v20]];
  [v16 addSubview:*&v16[v21]];
  [*&v16[v21] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*(*&v16[v21] + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView) setContentMode:1];
  [*&v16[v21] setShowsLargeContentViewer:1];
  v22 = *&v16[v21];
  v23 = objc_allocWithZone(UILargeContentViewerInteraction);
  v24 = v22;
  v25 = [v23 init];
  [v24 addInteraction:v25];

  v26 = [v16 traitCollection];
  LOBYTE(v24) = sub_1007706EC();

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
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100783DD0;
  *(v30 + 32) = sub_10076E59C();
  *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v16;
}

double sub_1005D5DB8(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007706EC();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_1007709AC(), v7, (v18 & 1) == 0))
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

double sub_1005D5F00(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007706EC();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_1007709AC(), v7, (v20 & 1) == 0))
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

uint64_t sub_1005D6058()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v6 - 8);
  v8 = v101 - v7;
  *&v9 = COERCE_DOUBLE(type metadata accessor for ProductTitleView());
  v115.receiver = v0;
  v115.super_class = v9;
  objc_msgSendSuper2(&v115, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton];
  sub_10076422C();
  v11 = &v10[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  v12 = v10[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16];
  v106 = v10;
  v101[0] = v5;
  v107 = v8;
  if (v12)
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v10[v13], v114);
    sub_10000CF78(v114, v114[3]);
    sub_100767A2C();
    v15 = v14;
    v17 = v16;
    sub_10000CD74(v114);
    *v11 = v15;
    v11[1] = v17;
    *(v11 + 16) = 0;
  }

  else
  {
    v17 = v11[1];
  }

  sub_10076422C();
  CGRectGetMaxX(v116);
  sub_1005D5DB8(v17);
  sub_10076422C();
  sub_100770A4C();
  sub_1007708CC();
  v105 = v18;
  v104 = v19;
  v103 = v20;
  v102 = v21;
  sub_100770A7C();
  MaxX = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v1 traitCollection];
  v31 = sub_10077070C();

  v32 = [v1 contentOverlayRects];
  v101[1] = sub_1005D8590();
  v33 = sub_1007701BC();

  if ((v31 & 1) == 0)
  {
    v33 = sub_1005D5440(v33);
  }

  v108 = v3;
  v109 = v2;
  MidX = *&v9;
  if (v33 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v38 = sub_10077149C();
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
      v46 = sub_10077070C();

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
  sub_10076422C();
  v52 = CGRectGetMinX(v120);
  v53 = 0.0;
  v54 = v109;
  v55 = v108;
  if (v52 <= v51 && (v121.origin.x = MaxX, v121.origin.y = v25, v121.size.width = v27, v121.size.height = v29, v56 = CGRectGetMaxX(v121), sub_10076422C(), v56 <= CGRectGetMaxX(v122)))
  {
    sub_100770A3C();
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

  v1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1] = v57;
  sub_1005D587C();
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView];
  v62 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  v63 = v107;
  sub_1003911F0(v33 + v62, v107);
  v64 = *(v55 + 48);
  v65 = v64(v63, 1, v54);
  sub_10023DEE4(v63);
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v65 != 1)
  {
    sub_10076422C();
    v70 = v69;
    if (v64(v33 + v62, 1, v54))
    {
      v68 = 40.0;
    }

    else
    {
      v71 = v101[0];
      (*(v55 + 16))(v101[0], v33 + v62, v54);
      sub_10076D36C();
      v68 = v72;
      (*(v55 + 8))(v71, v54);
    }

    v73 = *(v33 + OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView);
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

    sub_10076422C();
    MidX = CGRectGetMidX(v123);
    v66 = sub_1005D5F00(v68);
    v80 = [v1 contentOverlayRects];
    v81 = sub_1007701BC();

    v111 = v81;
    v82 = &v1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility];
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1] & 1) == 0)
    {
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007841E0;
      *(inited + 32) = [objc_opt_self() valueWithCGRect:{MaxX, v25, v27, v29}];
      sub_1000F99F4(inited);
      v81 = v111;
    }

    v53 = MidX + v67 * -0.5;
    if (v81 >> 62)
    {
      v84 = sub_10077158C();
    }

    else
    {
      v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
        v87 = sub_10077149C();
      }

      else
      {
        if (v85 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    sub_1005D587C();
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
  return sub_1001E8144(v93, v95, v97, v99);
}

id sub_1005D69BC()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_10076D36C();
    (*(v3 + 8))(v5, v2);
  }

  v7 = *(v1 + OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView);
  [v7 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  return [v7 isHidden];
}

void sub_1005D6BC8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_navigationBarMode] = a1;
  v12 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView];
  if ([v12 isHidden] && (v13 = *&v5[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton], objc_msgSend(*&v6[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton], "isHidden")) && (v14 = sub_100767B7C(), v14 == sub_100767B7C()))
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
    v16 = sub_1005D5F00(Height);
    v17 = *&v6[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton];
    v18 = type metadata accessor for OfferButton();
    v65.receiver = v17;
    v65.super_class = v18;
    objc_msgSendSuper2(&v65, "frame");
    v19 = CGRectGetHeight(v69);
    v20 = sub_1005D5DB8(v19);
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
      sub_1001E8144(v39, v41, v43, v45);

      sub_1005D7240(v6, v28);
      if (v54)
      {
        v54();
      }
    }

    else
    {
      sub_1005D7FB4(v6, v24, v23, v21);
      v46 = objc_opt_self();
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      v48[2] = sub_1005D846C;
      v48[3] = v26;
      v48[4] = v47;
      v60 = sub_1005D850C;
      v61 = v48;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_10009AEDC;
      v59 = &unk_10089BDD0;
      v49 = _Block_copy(&aBlock);

      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = swift_allocObject();
      v51[2] = sub_1005D848C;
      v51[3] = v27;
      v51[4] = v50;
      v51[5] = v54;
      v51[6] = v53;
      v60 = sub_1005D8580;
      v61 = v51;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000513F0;
      v59 = &unk_10089BE20;
      v52 = _Block_copy(&aBlock);

      sub_10001CE50(v54, v53);

      [v46 animateWithDuration:v49 animations:v52 completion:*&a2];

      _Block_release(v52);
      _Block_release(v49);
    }
  }
}

void sub_1005D70D4(char *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView];
    v10 = a1;
    [v9 setAlpha:a3];
    v11 = *&v10[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton];
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
    sub_1001E8144(v22, v24, v26, v28);
  }
}

void sub_1005D7240(char *a1, char a2)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView];
    v4 = a1;
    [v3 frame];
    IsEmpty = CGRectIsEmpty(v12);
    v6 = 1;
    if (!IsEmpty && (a2 & 1) == 0)
    {
      v6 = v4[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility];
    }

    [v3 setHidden:v6];
    v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton];
    v11.receiver = v7;
    v11.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v11, "frame");
    v8 = CGRectIsEmpty(v13);
    v9 = 1;
    if (!v8 && (a2 & 1) == 0)
    {
      if ((sub_100766B6C() & 1) != 0 || (v10 = sub_100767B7C(), v10 == sub_100767B7C()))
      {
        v9 = 1;
      }

      else
      {
        v9 = v4[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1];
      }
    }

    [v7 setHidden:v9];
  }
}

void sub_1005D7364(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

void sub_1005D73C8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a2();

  if (a5)
  {
    a5();
  }
}

id sub_1005D7450(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView];
  if (a2)
  {

    v7 = sub_10076FF6C();

    [v4 setText:v7];

    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v3 traitCollection];
      v10 = sub_1007706EC();

      goto LABEL_8;
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView] setText:0];
  }

  v10 = 1;
LABEL_8:
  [v4 setHidden:v10 & 1];

  return [v3 setNeedsLayout];
}

char *sub_1005D7648(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconView;
  sub_10075FD2C();
  *&v4[v11] = sub_10075FB3C();
  v12 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView;
  sub_1007626BC();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconWidth] = 0x4044000000000000;
  v13 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  v14 = sub_10076D39C();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v29.receiver = v5;
  v29.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v20 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView;
  v21 = *&v19[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 _gkPreferredFontForTextStyle:UIFontTextStyleBody symbolicTraits:2];
  [v23 setFont:v24];

  [*&v19[v20] setNumberOfLines:1];
  v25 = *&v19[v20];
  v26 = [v19 traitCollection];

  LOBYTE(v23) = sub_1007706EC();
  [v25 setHidden:v23 & 1];

  [v19 addSubview:*&v19[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconView]];
  [v19 addSubview:*&v19[v20]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100783DD0;
  *(v27 + 32) = sub_10076E59C();
  *(v27 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v19;
}

void sub_1005D79D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v5);
  v8 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v8], 1, v3))
  {
    (*(v4 + 16))(v7, &v1[v8], v3);
    sub_10076D36C();
    (*(v4 + 8))(v7, v3);
  }

  v9 = *&v1[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView];
  if ([v9 isHidden])
  {
    sub_10076422C();
    CGRectGetMidX(v20);
    sub_10076422C();
    CGRectGetMidY(v21);
    sub_10075FC8C();
  }

  else
  {
    [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v11 = v10;
    v13 = v12;
    sub_10076422C();
    CGRectGetMinX(v22);
    sub_10076422C();
    CGRectGetMidY(v23);
    sub_10075FC8C();
    sub_10075FC7C();
    v14 = CGRectGetMaxX(v24) + 10.0;
    sub_10076422C();
    MidY = CGRectGetMidY(v25);
    sub_10076422C();
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

id sub_1005D7D38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductTitleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductTitleView.IconTitleView(uint64_t a1)
{
  result = qword_10095FBC0;
  if (!qword_10095FBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005D7E54(uint64_t a1)
{
  sub_1003B518C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1005D7F04(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_1007706EC();

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

uint64_t sub_1005D7FB4(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView);
  [v7 frame];
  if (CGRectIsEmpty(v31))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility);
  }

  [v7 setHidden:v8];
  v9 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton);
  v10 = type metadata accessor for OfferButton();
  v30.receiver = v9;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "frame");
  if (CGRectIsEmpty(v32) || (sub_100766B6C() & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1);
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
  return sub_1001E8144(v19, v21, v23, v25);
}

void sub_1005D817C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView(0);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_animationVerticalOffset) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_navigationBarMode) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButtonMode) = 0;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1005D826C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView];
  v3 = [v2 text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = sub_10076FF9C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 traitCollection];
    v10 = sub_1007706EC();
  }

  else
  {
LABEL_6:
    v10 = 1;
  }

  [v2 setHidden:v10 & 1];

  return [a1 setNeedsLayout];
}

void sub_1005D8358()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconView;
  sub_10075FD2C();
  *(v0 + v2) = sub_10075FB3C();
  v3 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_appTitleView;
  sub_1007626BC();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconWidth) = 0x4044000000000000;
  v4 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
  v5 = sub_10076D39C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005D8494()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005D84CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1005D8518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1005D8530()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1005D8590()
{
  result = qword_100948C88;
  if (!qword_100948C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100948C88);
  }

  return result;
}

uint64_t sub_1005D85E4()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10095FBD0);
  sub_10000A61C(v4, qword_10095FBD0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

void sub_1005D8738(void **a1, void **a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_10076FBBC();
  __chkstk_darwin(v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076583C();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076FD4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941238 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v10, qword_10095FBD0);
  (*(v11 + 16))(v13, v14, v10);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F27C();
  v40 = sub_100016F40(0, &unk_10095FCA8, AMSEngagement_ptr);
  aBlock = a1;
  v15 = a1;
  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076F27C();
  if (a2)
  {
    v16 = sub_100016F40(0, &qword_10095FCC0, AMSEngagementRequest_ptr);
    v17 = a2;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v38 = 0;
    v39 = 0;
  }

  aBlock = v17;
  v40 = v16;
  v18 = a2;
  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076FBCC();

  (*(v11 + 8))(v13, v10);
  if (a2)
  {
    v19 = v36;
    v20 = v18;
    sub_10076147C();
    sub_10076FB8C();
    sub_10076582C();
    v21 = sub_10076581C();
    (*(v32 + 8))(v9, v34);
    [v20 setAnonymousMetrics:v21 & 1];
    v22 = v20;
    v23 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v22 bag:sub_10076147C()];

    swift_unknownObjectRelease();
    v24 = [v23 canPresent];
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v19;
    v26 = v35;
    v25[4] = v23;
    v25[5] = v26;
    v41 = sub_1005DB324;
    v42 = v25;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_1005F04D8;
    v40 = &unk_10089C000;
    v27 = _Block_copy(&aBlock);
    v28 = v22;
    v29 = v19;
    v30 = v23;

    [v24 addFinishBlock:v27];
    _Block_release(v27);
  }
}

double sub_1005D8C5C(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_10076F2EC();
  __chkstk_darwin(v8 - 8);
  if (a1)
  {
    if (qword_100941238 != -1)
    {
      swift_once();
    }

    v9 = sub_10076FD4C();
    sub_10000A61C(v9, qword_10095FBD0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v21._countAndFlagsBits = 0xD000000000000040;
    v21._object = 0x80000001007F0D20;
    sub_10076F2CC(v21);
    v19 = sub_100016F40(0, &qword_10095FCC0, AMSEngagementRequest_ptr);
    v18[0] = a3;
    v10 = a3;
    sub_10076F29C();
    sub_1000258C0(v18);
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    sub_10076F2CC(v22);
    sub_10076F2FC();
    sub_10076FBCC();

    v11 = *(a4 + OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController);
    *(a4 + OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController) = a5;

    v12 = a5;
  }

  else
  {
    if (qword_100941238 != -1)
    {
      swift_once();
    }

    v14 = sub_10076FD4C();
    sub_10000A61C(v14, qword_10095FBD0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v23._object = 0x80000001007F0BD0;
    v23._countAndFlagsBits = 0xD000000000000016;
    sub_10076F2CC(v23);
    v19 = sub_100016F40(0, &unk_10094E0B0, AMSUIEngagementTaskViewController_ptr);
    v18[0] = a5;
    v15 = a5;
    sub_10076F29C();
    sub_1000258C0(v18);
    v24._countAndFlagsBits = 0xD000000000000018;
    v24._object = 0x80000001007F0CD0;
    sub_10076F2CC(v24);
    v19 = sub_100016F40(0, &qword_10095FCC0, AMSEngagementRequest_ptr);
    v18[0] = a3;
    v16 = a3;
    sub_10076F29C();
    sub_1000258C0(v18);
    v25._countAndFlagsBits = 0xD000000000000023;
    v25._object = 0x80000001007F0CF0;
    sub_10076F2CC(v25);
    sub_10076F2FC();
    sub_10076FBCC();
  }

  return result;
}

void sub_1005D9084(void **a1, void **a2, void **a3, uint64_t a4, void **a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a7;
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v45 = a2;
  v10 = sub_10076FBBC();
  __chkstk_darwin(v10 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10076583C();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FD4C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941238 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v13, qword_10095FBD0);
  (*(v14 + 16))(v16, v17, v13);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_10078B310;
  sub_10076F27C();
  v52 = sub_100016F40(0, &unk_10095FCA8, AMSEngagement_ptr);
  aBlock = a1;
  v18 = a1;
  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076F27C();
  v19 = v45;
  if (v45)
  {
    v20 = sub_100016F40(0, &qword_10095FCC0, AMSEngagementRequest_ptr);
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v50 = 0;
    v51 = 0;
  }

  aBlock = v21;
  v52 = v20;
  v37 = v19;
  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076F27C();
  v52 = &type metadata for String;
  aBlock = a3;
  v38 = a3;
  v22 = v48;
  v50 = v48;

  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076F27C();
  v52 = &type metadata for String;
  aBlock = v46;
  v50 = v47;

  sub_10076F30C();
  sub_1000258C0(&aBlock);
  sub_10076FBCC();

  (*(v14 + 8))(v16, v13);
  if (v19)
  {
    v23 = v44;
    v24 = v37;
    sub_10076147C();
    sub_10076FB8C();
    v25 = v39;
    sub_10076582C();
    v26 = sub_10076581C();
    (*(v40 + 8))(v25, v42);
    [v24 setAnonymousMetrics:v26 & 1];
    v27 = v24;
    v28 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v27 bag:sub_10076147C()];

    swift_unknownObjectRelease();
    v29 = [v28 canPresent];
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v27;
    v30[3] = v31;
    v30[4] = v22;
    v30[5] = v23;
    v32 = v43;
    v30[6] = v28;
    v30[7] = v32;
    v53 = sub_1005DB2BC;
    v54 = v30;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1005F04D8;
    v52 = &unk_10089BF60;
    v33 = _Block_copy(&aBlock);
    v34 = v27;

    v35 = v23;
    v36 = v28;

    [v29 addFinishBlock:v33];
    _Block_release(v33);
  }
}

double sub_1005D9688(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_10076F2EC();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    if (qword_100941238 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_10095FBD0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v26._countAndFlagsBits = 0xD000000000000040;
    v26._object = 0x80000001007F0C40;
    sub_10076F2CC(v26);
    v24 = sub_100016F40(0, &qword_10095FCC0, AMSEngagementRequest_ptr);
    v22 = a3;
    v14 = a3;
    sub_10076F29C();
    sub_1000258C0(&v22);
    v27._object = 0x80000001007F0C90;
    v27._countAndFlagsBits = 0xD000000000000010;
    sub_10076F2CC(v27);
    v24 = &type metadata for String;
    v22 = a4;
    v23 = a5;

    sub_10076F29C();
    sub_1000258C0(&v22);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_10076F2CC(v28);
    sub_10076F2FC();
    sub_10076FBCC();

    v15 = *(a6 + OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController);
    *(a6 + OBJC_IVAR____TtC20ProductPageExtension27JourneyDrivenOnboardingStep_engagementViewController) = a7;

    v16 = a7;
  }

  else
  {
    if (qword_100941238 != -1)
    {
      swift_once();
    }

    v18 = sub_10076FD4C();
    sub_10000A61C(v18, qword_10095FBD0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v29._countAndFlagsBits = 0xD000000000000016;
    v29._object = 0x80000001007F0BD0;
    sub_10076F2CC(v29);
    v24 = sub_100016F40(0, &unk_10094E0B0, AMSUIEngagementTaskViewController_ptr);
    v22 = a7;
    v19 = a7;
    sub_10076F29C();
    sub_1000258C0(&v22);
    v30._countAndFlagsBits = 0xD000000000000018;
    v30._object = 0x80000001007F0BF0;
    sub_10076F2CC(v30);
    v24 = sub_100016F40(0, &qword_10095FCC0, AMSEngagementRequest_ptr);
    v22 = a3;
    v20 = a3;
    sub_10076F29C();
    sub_1000258C0(&v22);
    v31._countAndFlagsBits = 0x63616C70206E6920;
    v31._object = 0xEF203A746E656D65;
    sub_10076F2CC(v31);
    v24 = &type metadata for String;
    v22 = a4;
    v23 = a5;

    sub_10076F29C();
    sub_1000258C0(&v22);
    v32._countAndFlagsBits = 0xD000000000000025;
    v32._object = 0x80000001007F0C10;
    sub_10076F2CC(v32);
    sub_10076F2FC();
    sub_10076FBCC();
  }

  return result;
}

uint64_t sub_1005D9C1C(void *a1, void *a2)
{
  v4 = sub_10076FD4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941238 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v4, qword_10095FBD0);
  (*(v5 + 16))(v7, v8, v4);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F27C();
  v15 = sub_100016F40(0, &unk_10095FCA8, AMSEngagement_ptr);
  v14[0] = a1;
  v9 = a1;
  sub_10076F30C();
  sub_1000258C0(v14);
  sub_10076F27C();
  if (a2)
  {
    v10 = sub_100016F40(0, &qword_10095FCB8, AMSDialogRequest_ptr);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_10076F30C();
  sub_1000258C0(v14);
  sub_10076FBCC();

  return (*(v5 + 8))(v7, v4);
}

void sub_1005D9EF0(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

uint64_t sub_1005D9F94(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  ObjectType = swift_getObjectType();
  v11 = sub_10076F08C();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076F0CC();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v27 = sub_10077068C();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = ObjectType;
  v17[4] = v26;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = v18;
  aBlock[4] = sub_1005DA860;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089BE70;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005DA88C(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  v22 = v27;
  sub_10077069C();
  _Block_release(v19);

  (*(v29 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v28);
}

uint64_t sub_1005DA2A4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a3;
  v9 = sub_10076FD4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941238 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v9, qword_10095FBD0);
  (*(v10 + 16))(v12, v13, v9);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_10078B310;
  sub_10076F27C();
  v26 = sub_100016F40(0, &unk_10095FCA8, AMSEngagement_ptr);
  v23 = a1;
  v14 = a1;
  sub_10076F30C();
  sub_1000258C0(&v23);
  sub_10076F27C();
  if (a2)
  {
    v15 = sub_100016F40(0, &qword_10095FCB8, AMSDialogRequest_ptr);
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v24 = 0;
    v25 = 0;
  }

  v23 = v16;
  v26 = v15;
  v17 = a2;
  sub_10076F30C();
  sub_1000258C0(&v23);
  sub_10076F27C();
  v26 = &type metadata for String;
  v23 = v20;
  v24 = a4;

  sub_10076F30C();
  sub_1000258C0(&v23);
  sub_10076F27C();
  v26 = &type metadata for String;
  v23 = v21;
  v24 = v22;

  sub_10076F30C();
  sub_1000258C0(&v23);
  sub_10076FBCC();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1005DA810()
{

  return _swift_deallocObject(v0, 72, 7);
}

double sub_1005DA874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1005DA88C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1005DA8D4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10076F08C();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076F0CC();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  v13[5] = ObjectType;
  aBlock[4] = sub_1005DB2D0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089BFB0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = v2;
  v17 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005DA88C(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_1005DABC0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a5;
  ObjectType = swift_getObjectType();
  v11 = sub_10076F08C();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076F0CC();
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v30 = sub_10077068C();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = v29;
  v17[4] = v28;
  v17[5] = a4;
  v17[6] = v18;
  v17[7] = a6;
  v19 = ObjectType;
  v17[8] = v6;
  v17[9] = v19;
  aBlock[4] = sub_1005DB258;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089BF10;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  v22 = v6;
  v23 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005DA88C(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  v24 = v30;
  sub_10077069C();
  _Block_release(v20);

  (*(v33 + 8))(v13, v11);
  return (*(v31 + 8))(v16, v32);
}

uint64_t sub_1005DAED4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10076F08C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076F0CC();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = ObjectType;
  aBlock[4] = sub_1005DB1F4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089BEC0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005DA88C(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_1005DB1B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005DB200()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1005DB26C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1005DB2DC()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_1005DB35C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a4;
  v42 = a2;
  v45 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v5 - 8);
  v40 = &ObjectType - v6;
  v44 = sub_10076B6EC();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  v43 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v20 = *(v14 + 8);
  v20(v19, v13);
  if (v47 && (sub_10077000C(), v22 = v21, , v22))
  {
    v23 = *&v46[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel];
    v24 = sub_10076FF6C();

    [v23 setText:{v24, ObjectType}];

    [v23 setHidden:{0, ObjectType}];
  }

  else
  {
    [*&v46[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel] setHidden:{1, ObjectType}];
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v20(v16, v13);
  sub_10076B6DC();
  sub_1005DD408(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v25 = v44;
  v26 = sub_10077124C();
  v27 = *(v7 + 8);
  v27(v9, v25);
  v27(v12, v25);
  v28 = v46;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v45)
  {
    goto LABEL_11;
  }

  v29 = sub_10077000C();
  if (!v30)
  {
    goto LABEL_11;
  }

  v31 = v30;
  if (!v41)
  {

LABEL_11:
    v37 = *&v28[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton];
    [v37 setMenu:0];
    [v37 setShowsMenuAsPrimaryAction:0];
    [v37 setHidden:1];
    return [v28 setNeedsLayout];
  }

  v32 = *&v28[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton];
  v33 = v29;
  v34 = v41;
  v35 = v40;
  sub_1005DBF2C(v33, v31, v28);

  v36 = sub_10077111C();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  sub_10077114C();
  [v32 setMenu:v34];
  [v32 setShowsMenuAsPrimaryAction:1];
  [v32 setHidden:0];

  return [v28 setNeedsLayout];
}

uint64_t sub_1005DB870(__n128 a1)
{
  qword_10095FCE0 = sub_10076220C();
  qword_10095FCE8 = sub_1005DD408(&qword_10094DFA0, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
  sub_10000DB7C(qword_10095FCC8);
  return sub_1007621FC();
}

uint64_t sub_1005DB8EC()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_10095FCF0 = v5;
  return result;
}

char *sub_1005DB9E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  if (qword_100940C68 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A1330);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v21 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel] = sub_1007626AC();
  v22 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton] = v22;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel;
  [*&v27[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel] setHidden:1];
  [v27 addSubview:*&v27[v28]];
  v29 = OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton;
  [*&v27[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton] setHidden:1];
  [v27 addSubview:*&v27[v29]];

  return v27;
}

id sub_1005DBD8C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareForReuse", v3);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel];
  [v6 setText:0];
  [v6 setHidden:1];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton];
  v8 = sub_10077111C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_10077114C();
  [v7 setMenu:0];
  [v7 setShowsMenuAsPrimaryAction:0];
  return [v7 setHidden:1];
}

void sub_1005DBF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10075D9EC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000A5D4(&qword_100942698, &qword_10079DCB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_10005312C();
  if (qword_100940C70 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  sub_10000A61C(v8, qword_1009A1348);
  v9 = sub_100770B2C();
  sub_1007710CC();
  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v9;

  v11 = NSFontAttributeName;
  v12 = v9;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B10, &unk_10078B4F0);
  sub_10075DA0C();
  sub_10075D9AC();
  v13 = sub_10075D99C();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  sub_10077101C();
  v14 = [objc_opt_self() configurationWithFont:v12 scale:1];
  sub_100770F4C();
  if (qword_100941248 != -1)
  {
    swift_once();
  }

  v15 = qword_10095FCF0;
  sub_1007710BC();
  sub_100770FBC();
  sub_100770FFC();
  sub_100770FEC();
}

void sub_1005DC208(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for DirectionalTextAlignment.leading(_:))
  {
    v16 = [v2 traitCollection];
    v17 = sub_10077070C();

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v15 != enum case for DirectionalTextAlignment.trailing(_:))
    {

      (*(v11 + 8))(v13, v10);
      return;
    }

    v19 = [v2 traitCollection];
    v20 = sub_10077070C();

    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  [v14 setAlignment:v18];
  sub_10077113C();
  v21 = sub_10077111C();
  if ((*(*(v21 - 8) + 48))(v9, 1, v21))
  {
LABEL_12:
    sub_10014D2A4(v9, v6);
    sub_10077114C();

    sub_10000CFBC(v9, &unk_10095B400, &unk_100783F80);
    return;
  }

  v22 = sub_10077100C();
  v24 = v23;
  v25 = sub_10075D99C();
  if ((*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v22(v28, 0);
    goto LABEL_12;
  }

  v27[1] = v14;
  sub_10054D1B0();
  v26 = v14;
  sub_10075D9BC();
  v22(v28, 0);
  sub_10077114C();
}

id sub_1005DC59C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_titleLabel];
  sub_10076422C();
  v8 = [v0 traitCollection];
  sub_100770E9C();
  v10 = v9;
  v12 = v11;

  sub_10076422C();
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ProductReviewsShelfHeaderView_sortButton];
  sub_10076422C();
  v18 = [v0 traitCollection];
  sub_100770F2C();
  v20 = v19;

  sub_10076422C();
  CGRectGetMaxX(v28);
  sub_10076422C();
  CGRectGetMinY(v29);
  if (([v7 isHidden] & 1) != 0 || (objc_msgSend(v17, "isHidden") & 1) != 0 || (v26 = v10, v21 = v10 + 16.0 + v20, sub_10076422C(), Width = CGRectGetWidth(v30), v23 = v26, Width >= v21))
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.trailing(_:), v2);
    sub_1005DC208(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_1005DC208(v6);
    (*(v3 + 8))(v6, v2);
    sub_10076422C();
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v23;
    v31.size.height = v12;
    CGRectGetMaxY(v31);
  }

  sub_10076422C();
  sub_100770A4C();
  [v7 setFrame:?];
  sub_10076422C();
  sub_100770A4C();
  return [v17 setFrame:?];
}

id sub_1005DC9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v70 = a2;
  v4 = sub_10077164C();
  v86 = *(v4 - 8);
  v87 = v4;
  __chkstk_darwin(v4);
  v85 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B6EC();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v81 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v74 = sub_10076DD3C();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v68 - v13;
  v77 = sub_10076DA7C();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  v22 = sub_10076C38C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076464C();
  sub_10076C8BC();
  sub_10076C2FC();
  v27 = v26;
  (*(v23 + 8))(v25, v22);
  v89 = sub_10076461C();
  v80 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28 = *(v16 + 8);
  v28(v21, v15);
  if (v91 && (sub_10077000C(), v30 = v29, , v30))
  {
    v31 = v71;
    sub_10076DD2C();
    v32 = v75;
    if (qword_100940C68 != -1)
    {
      swift_once();
    }

    v33 = sub_10076D3DC();
    sub_10000A61C(v33, qword_1009A1330);
    sub_10076DCFC();
    (*(v73 + 8))(v31, v74);
    sub_10076DA5C();
    sub_10076DA9C();
    sub_10076DA6C();
    v88 = v34;
    v90 = v35;
    v79 = v36;
    v78 = v37;
    (*(v76 + 8))(v32, v77);
  }

  else
  {
    v38 = JUMeasurementsZero[1];
    v88 = JUMeasurementsZero[0];
    v90 = v38;
    v39 = JUMeasurementsZero[3];
    v79 = JUMeasurementsZero[2];
    v78 = v39;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v28(v18, v15);
  v40 = v81;
  sub_10076B6DC();
  sub_1005DD408(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v41 = v83;
  v42 = sub_10077124C();
  v43 = *(v82 + 8);
  v43(v40, v41);
  v43(v10, v41);
  v69 = v27;
  if ((v42 & 1) != 0 && v84 && (sub_10077000C(), v44))
  {
    v45 = v71;
    sub_10076DD2C();
    v46 = v89;
    if (qword_100940C70 != -1)
    {
      swift_once();
    }

    v47 = sub_10076D3DC();
    sub_10000A61C(v47, qword_1009A1348);
    sub_10076DCFC();
    (*(v73 + 8))(v45, v74);
    sub_10076DA5C();
    v48 = v75;
    sub_10076DA9C();
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v50 = v49;
    if (qword_100941248 != -1)
    {
      swift_once();
    }

    [qword_10095FCF0 size];
    v52 = v50 * v51 + 4.0;
    sub_10076DA6C();
    v54 = v53;
    v56 = v55;
    (*(v76 + 8))(v48, v77);
    v57 = v54 + v52;
  }

  else
  {
    v56 = JUMeasurementsZero[1];
    v57 = JUMeasurementsZero[0];
    v46 = v89;
  }

  if ((JUMeasurementsEqual() & 1) != 0 || (JUMeasurementsEqual() & 1) != 0 || v69 >= v88 + 16.0 + v57)
  {
    if (v90 > v56)
    {
      v58 = v90;
    }

    else
    {
      v58 = v56;
    }
  }

  else
  {
    v58 = v90 + v56 + 8.0;
  }

  v59 = objc_opt_self();
  v60 = [v59 fractionalWidthDimension:1.0];
  if (qword_100941240 != -1)
  {
    swift_once();
  }

  v61 = qword_10095FCE0;
  sub_10000CF78(qword_10095FCC8, qword_10095FCE0);
  sub_10076462C();
  v62 = v85;
  sub_1000FF02C(v61);
  sub_10076D40C();
  v64 = v63;
  swift_unknownObjectRelease();
  (*(v86 + 8))(v62, v87);
  v65 = [v59 absoluteDimension:v58 + v64];
  v66 = [objc_opt_self() sizeWithWidthDimension:v60 heightDimension:v65];

  return v66;
}

uint64_t sub_1005DD408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1005DD49C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076382C();
  sub_1005DD6A0(&qword_10095FD30, &type metadata accessor for ProductCapability, &protocol conformance descriptor for ProductCapability);
  sub_10076332C();
  if (!v18[1])
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = sub_1007637FC();
  v10 = v9;
  v11 = sub_10076381C();
  v12 = sub_10076380C();
  v13 = sub_100630CB4();
  swift_getObjectType();
  v14.n128_u64[0] = v5;
  sub_1003E7634(v8, v10, v11, v12, v13, v14, v7);
  v16 = v15;

  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_1005DD6A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005DD734()
{
  v0 = sub_10076F2EC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10076FD4C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076C38C();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100761C1C();
  sub_1005DDE7C(&qword_10095FD38, &type metadata accessor for UnifiedMessage, &protocol conformance descriptor for UnifiedMessage);
  sub_10076332C();
  v8 = v60[0];
  if (v60[0])
  {
    v56 = v2;
    sub_1007698FC();
    sub_10076F63C();
    v9 = v60[0];
    if (!v60[0])
    {

      return;
    }

    v55 = v1;
    sub_100761C0C();
    v10 = v9;
    v11 = sub_1007698EC();

    if (!v11)
    {

      return;
    }

    v54 = v10;
    sub_10000A5D4(&qword_100950538, &qword_10079A008);
    sub_10076F63C();
    if (!v60[0])
    {

      return;
    }

    v53 = v60[0];
    v12 = v11;
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 superview];

      if (!v15)
      {
        v16 = [v12 view];
        if (!v16)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = v16;
        [v16 setHidden:1];

        v18 = [v53 view];
        if (!v18)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = v18;
        v20 = [v12 view];
        if (!v20)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v15 = v20;
        [v19 insertSubview:v20 atIndex:0];
      }

      v21 = [v12 view];
      if (v21)
      {
        v22 = v21;
        [v21 updateTraitsIfNeeded];

        swift_getKeyPath();
        sub_10076338C();

        sub_10076C2FC();
        v24 = v23;
        v26 = v25;
        (*(v58 + 8))(v6, v4);
        v27 = (*(v59 + 144))(v24, v26);
        v29 = v28;
        v30 = [v12 view];
        if (v30)
        {
          v31 = v30;
          v32 = v12;
          [v30 sizeThatFits:{v27, v29}];
          v34 = v33;
          v36 = v35;

          v37 = v57;
          sub_10076FD0C();
          sub_10000A5D4(&unk_100942A60, &unk_100784760);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100783DD0;
          sub_10076F2DC();
          v62._object = 0x80000001007F0E10;
          v62._countAndFlagsBits = 0xD00000000000002CLL;
          sub_10076F2CC(v62);
          v61 = v7;
          v60[0] = v8;

          sub_10076F29C();
          sub_1000258C0(v60);
          v63._countAndFlagsBits = 8250;
          v63._object = 0xE200000000000000;
          sub_10076F2CC(v63);
          type metadata accessor for CGSize(0);
          v61 = v38;
          v60[0] = v34;
          v60[1] = v36;
          sub_10076F29C();
          sub_1000258C0(v60);
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_10076F2CC(v64);
          sub_10076F2FC();
          v39 = v55;
          sub_10076FBDC();

          (*(v56 + 8))(v37, v39);
          v40 = [v12 view];
          v41 = v54;
          if (v40)
          {
            v42 = v40;
            v43 = [v40 superview];

            v44 = v53;
            v45 = [v53 view];
            v46 = v45;
            if (v43)
            {
              if (v45)
              {
                sub_1000ACA5C();
                v47 = sub_100770EEC();

                if ((v47 & 1) == 0)
                {
LABEL_28:
                  v51 = [v32 view];

                  if (v51)
                  {
                    [v51 setHidden:0];

                    return;
                  }

                  goto LABEL_34;
                }

                goto LABEL_23;
              }

              v46 = v43;
            }

            else if (!v45)
            {
LABEL_23:
              v48 = [v32 view];
              if (!v48)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v49 = v48;
              [v48 removeFromSuperview];

              v50 = [v32 view];
              if (!v50)
              {
LABEL_39:
                __break(1u);
                return;
              }

              v46 = v50;
              [v50 updateTraitsIfNeeded];
            }

            goto LABEL_28;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

uint64_t sub_1005DDE7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005DDF2C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A2490);
  sub_10000A61C(v4, qword_1009A2490);
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1AC8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005DE10C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A24C0);
  sub_10000A61C(v4, qword_1009A24C0);
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1AE0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_1005DE2F4(unsigned __int8 a1, uint64_t a2, UIContentSizeCategory a3)
{
  v4 = a1;
  v5 = sub_10076D39C();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076C20C();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 4)
  {
    if (sub_10077071C())
    {
      goto LABEL_8;
    }

    sub_10076C2AC();
    if (qword_100940270 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_10000A61C(v9, qword_10099F340);
      sub_1005DEBF0();
      v14 = sub_10076FF0C();
      v15 = *(v10 + 8);
      v10 += 8;
      v15(v12, v9);
      if (v14)
      {
        break;
      }

LABEL_8:
      v9 = &off_100911000;
      v16 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_10077088C() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_10077087C())
      {
        v17 = sub_10077088C();

        if (v17)
        {
          return;
        }
      }

      else
      {
      }

      v19 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      a3 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_10077088C())
      {
        if (sub_10077087C())
        {
          sub_10077088C();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_10076C24C();
  sub_10076C24C();
  if (v4 == 4)
  {
    if (qword_100941258 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_10000A61C(v5, qword_1009A2460);
    sub_10076D36C();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_100941250 != -1)
      {
        swift_once();
      }

      v18 = qword_1009A2448;
    }

    else
    {
      if (qword_100941260 != -1)
      {
        swift_once();
      }

      v18 = qword_1009A2478;
    }

    v20 = sub_10000A61C(v5, v18);
    (*(v6 + 16))(v8, v20, v5);
    sub_10076D36C();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1005DE768(char **a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1;
  v6 = sub_10076D39C();
  v21 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076C20C();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != 4)
  {
    if (sub_10077071C())
    {
      goto LABEL_8;
    }

    v20 = a3;
    sub_10076C2AC();
    if (qword_100940270 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_10000A61C(v9, qword_10099F340);
      sub_1005DEBF0();
      v14 = sub_10076FF0C();
      (v10[1])(v12, v9);
      a3 = v20;
      if (v14)
      {
        break;
      }

LABEL_8:
      v4 = &off_100911000;
      v9 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_10077088C() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_10077087C())
      {
        v15 = sub_10077088C();

        if (v15)
        {
          return;
        }
      }

      else
      {
      }

      v17 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v10 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_10077088C())
      {
        if (sub_10077087C())
        {
          sub_10077088C();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_1005B1CD8(v4);
  sub_10076C24C();
  if (v5 == 4)
  {
    if (qword_100941258 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_10000A61C(v6, qword_1009A2460);
    sub_10076D36C();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_100941250 != -1)
      {
        swift_once();
      }

      v16 = qword_1009A2448;
    }

    else
    {
      if (qword_100941260 != -1)
      {
        swift_once();
      }

      v16 = qword_1009A2478;
    }

    v18 = sub_10000A61C(v6, v16);
    v19 = v21;
    (*(v21 + 16))(v8, v18, v6);
    sub_10076D36C();
    (*(v19 + 8))(v8, v6);
  }
}

unint64_t sub_1005DEBF0()
{
  result = qword_10095FD40;
  if (!qword_10095FD40)
  {
    sub_10076C20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095FD40);
  }

  return result;
}

double sub_1005DEC48(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26[-1] - v8;
  v10 = sub_10076D1AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1007706CC() & 1) == 0)
  {
    if (JUScreenClassHasRoundedCorners())
    {
      if (a2)
      {
        v14 = [a2 window];
        if (v14)
        {
          v15 = v14;
          [v14 safeAreaInsets];
        }
      }
    }
  }

  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  v17 = sub_10000A61C(v16, qword_1009A1AC8);
  (*(*(v16 - 8) + 16))(v13, v17, v16);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v26[3] = v10;
  v26[4] = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v26);
  (*(v11 + 16))(v18, v13, v10);
  sub_10076C8EC();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  sub_10000CD74(v26);
  sub_10076D17C();
  *v26 = v20;
  (*(v4 + 16))(v6, v9, v3);
  v21 = (*(v4 + 88))(v6, v3);
  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v22 = round(v20);
LABEL_19:
    (*(v4 + 8))(v9, v3);
    return v22;
  }

  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v22 = rint(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v22 = ceil(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v22 = floor(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v22 = trunc(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v4 + 8))(v9, v3);
    if ((*&v20 & 0x8000000000000000) != 0)
    {
      return floor(v20);
    }

    else
    {
      return ceil(v20);
    }
  }

  else
  {
    sub_10077035C();
    v24 = *(v4 + 8);
    v24(v9, v3);
    v24(v6, v3);
    return *v26;
  }
}

uint64_t AppEventFormattedDatePresenter.__allocating_init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v5 + 16) = a1;
  swift_beginAccess();
  *(v5 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_1005E02D0();
  swift_unknownObjectRelease();
  return v5;
}

Swift::Void __swiftcall AppEventFormattedDatePresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

double sub_1005DF1EC(uint64_t a1, __n128 a2)
{
  v4 = sub_10075DF6C();
  v135 = *(v4 - 8);
  v136 = v4;
  __chkstk_darwin(v4);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075D8BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v132 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v103 - v11;
  __chkstk_darwin(v12);
  v138 = &v103 - v13;
  v14 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  __chkstk_darwin(v14 - 8);
  v133 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  __chkstk_darwin(v19);
  v21 = &v103 - v20;
  v140 = sub_10075DD7C();
  v22 = *(v140 - 8);
  __chkstk_darwin(v140);
  v131 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v134 = &v103 - v25;
  __chkstk_darwin(v26);
  v28 = &v103 - v27;
  __chkstk_darwin(v29);
  v139 = &v103 - v30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v128 = v8;
    v32 = *(v2 + 32);
    if (!a1)
    {
      ObjectType = swift_getObjectType();
      (*(v32 + 32))(0, 0xE000000000000000, 0, ObjectType, v32);
      swift_unknownObjectRelease();
      return result;
    }

    v127 = v7;
    v130 = v32;

    v33 = sub_10075EF2C();
    v129 = a1;
    if (v34)
    {
      v35 = v33;
      v36 = v34;
LABEL_14:
      v68 = swift_getObjectType();
      v69 = sub_10075EF3C();
      (*(v130 + 32))(v35, v36, v69 & 1, v68);

      swift_unknownObjectRelease();

      return result;
    }

    sub_10075EF0C();
    v38 = v22;
    v41 = *(v22 + 48);
    v39 = v22 + 48;
    v40 = v41;
    v42 = v140;
    if (v41(v21, 1, v140) != 1)
    {
      v123 = v40;
      v124 = v39;
      v44 = v139;
      v45 = v21;
      v46 = *(v38 + 32);
      v46(v139, v45, v42);
      v47 = sub_10075EF4C();
      if (!v48)
      {
        (*(v38 + 8))(v44, v42);
        goto LABEL_13;
      }

      v106 = v46;
      v107 = v38 + 32;
      v104 = v47;
      v117 = v48;
      sub_10075DF3C();
      v121 = sub_10000A5D4(&qword_100951998, &unk_10079AB00);
      v49 = sub_10075DF5C();
      v50 = *(v49 - 8);
      v51 = *(v50 + 72);
      v119 = *(v50 + 80);
      v52 = (v119 + 32) & ~v119;
      v122 = v52;
      v125 = 4 * v51;
      v115 = 5 * v51;
      v53 = swift_allocObject();
      v114 = xmmword_100785C70;
      v116 = v53;
      *(v53 + 1) = xmmword_100785C70;
      v126 = v38;
      v54 = v53 + v52;
      v113 = enum case for Calendar.Component.year(_:);
      v105 = v50;
      v55 = *(v50 + 104);
      v55(v53 + v52);
      v112 = enum case for Calendar.Component.month(_:);
      v56 = v51;
      v55(&v54[v51]);
      v51 *= 2;
      v120 = v56;
      v111 = enum case for Calendar.Component.day(_:);
      v108 = v51;
      v55(&v54[v51]);
      v110 = v51 + v56;
      v109 = enum case for Calendar.Component.hour(_:);
      v55(&v54[v51 + v56]);
      v118 = enum case for Calendar.Component.minute(_:);
      v55(&v54[v125]);
      sub_1001799AC(v116);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10075DD6C();
      sub_10075DEEC();

      v57 = *(v126 + 8);
      v126 += 8;
      v116 = v57;
      v57(v28, v140);
      v58 = *(v135 + 1);
      v58(v6, v136);
      sub_10075DF3C();
      v59 = v122;
      v60 = swift_allocObject();
      *(v60 + 16) = v114;
      v61 = v60 + v59;
      (v55)(v61, v113, v49);
      (v55)(v61 + v120, v112, v49);
      (v55)(v61 + v108, v111, v49);
      (v55)(v61 + v110, v109, v49);
      v115 = v50 + 104;
      *&v114 = v55;
      (v55)(v61 + v125, v118, v49);
      sub_1001799AC(v60);
      swift_setDeallocating();
      v125 = v49;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10075DEEC();
      v62 = v138;
      v63 = v136;
      v64 = v140;

      v58(v6, v63);
      sub_10075DF3C();
      sub_10075DF2C();
      v135 = v58;
      v58(v6, v63);
      v65 = v123;
      if (v123(v18, 1, v64) == 1)
      {

        v66 = v127;
        v67 = *(v128 + 8);
        v67(v137, v127);
        v67(v62, v66);
        v116(v139, v64);
        v43 = v18;
        goto LABEL_11;
      }

      v70 = v18;
      v71 = v106;
      v106(v134, v70, v64);
      sub_10075DF3C();
      v72 = v133;
      sub_10075DF2C();
      v73 = v72;
      v135(v6, v63);
      v74 = v65(v72, 1, v64);
      v75 = v64;
      v76 = v128;
      if (v74 != 1)
      {
        v80 = v131;
        v71(v131, v73, v64);
        sub_10075DF3C();
        v81 = v122;
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_100783DD0;
        v83 = v125;
        (v114)(v82 + v81, v118, v125);
        sub_1001799AC(v82);
        swift_setDeallocating();
        v84 = v83;
        v85 = v80;
        (*(v105 + 8))(v82 + v81, v84);
        swift_deallocClassInstance();
        v86 = v132;
        v87 = v134;
        sub_10075DEDC();

        v135(v6, v63);
        v88 = sub_10075D8AC();
        v90 = v89;
        v91 = *(v76 + 8);
        v92 = v127;
        v91(v86, v127);
        if ((v90 & 1) == 0)
        {
          v143._countAndFlagsBits = v104;
          v143._object = v117;
          v144._countAndFlagsBits = 0;
          v144._object = 0xE000000000000000;
          v96 = sub_100767D6C(v143, v88, v144);
          v98 = v97;
          v136 = v97;

          v141 = v96;
          v142 = v98;
          sub_10002564C();
          v35 = sub_1007711FC();
          v36 = v99;
          v100 = v85;
          v101 = v140;
          v102 = v116;
          v116(v100, v140);
          v102(v87, v101);
          v91(v137, v92);
          v91(v138, v92);
          v102(v139, v101);

          goto LABEL_14;
        }

        v93 = v85;
        v94 = v140;
        v95 = v116;
        v116(v93, v140);
        v95(v87, v94);
        v91(v137, v92);
        v91(v138, v92);
        v95(v139, v94);
        goto LABEL_13;
      }

      v77 = v116;
      v116(v134, v64);
      v21 = v73;
      v78 = *(v76 + 8);
      v79 = v127;
      v78(v137, v127);
      v78(v138, v79);
      v77(v139, v75);
    }

    v43 = v21;
LABEL_11:
    sub_10000CFBC(v43, &unk_10094FA00, &unk_100786640);
LABEL_13:
    v35 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_14;
  }

  return result;
}

double AppEventFormattedDatePresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v7 = 0;
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    v7 = *(v2 + v4);
  }

  sub_1005DF1EC(v7, v6);
  swift_unknownObjectRelease();

  return result;
}

void (*AppEventFormattedDatePresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1005E00CC;
}

void sub_1005E00CC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
    swift_beginAccess();
    v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
    v8 = 0;
    if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
    {
      v8 = *(v4 + v5);
    }

    sub_1005DF1EC(v8, v7);
  }

  free(v3);
}

uint64_t AppEventFormattedDatePresenter.init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  *(v3 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_1005E02D0();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1005E02D0()
{
  v1 = sub_10000A5D4(&qword_10095FD58, &qword_1007AE990);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_1005E0590((&v9 - v2));
  v4 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  sub_1005E1A0C(v3, v0 + v4);
  swift_endAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v7 = 0;
  if (!(*(*(v5 - 8) + 48))(v0 + v4, 1, v5))
  {
    v7 = *(v0 + v4);
  }

  sub_1005DF1EC(v7, v6);

  sub_100016E2C(v0 + v4, v3, &qword_10095FD58, &qword_1007AE990);
  sub_1005E0A6C(v3);
  return sub_10000CFBC(v3, &qword_10095FD58, &qword_1007AE990);
}

uint64_t AppEventFormattedDatePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10000CC8C(v0 + 24);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate, &qword_10095FD58, &qword_1007AE990);

  return v0;
}

uint64_t AppEventFormattedDatePresenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10000CC8C(v0 + 24);
  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate, &qword_10095FD58, &qword_1007AE990);

  return swift_deallocClassInstance();
}

uint64_t sub_1005E0590@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v34 - v7);
  v9 = sub_10075DD7C();
  v38 = *(v9 - 1);
  __chkstk_darwin(v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v43 = &v34 - v13;
  v14 = *(v1 + 16);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_28:
    v32 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(v16);
    v33 = *(*(v32 - 8) + 56);

    return v33(a1, 1, 1, v32);
  }

LABEL_3:
  result = sub_10075DD2C();
  v18 = v14 & 0xC000000000000001;
  v37 = a1;
  v42 = v11;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v19 = sub_10077149C();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v14 + 32);
  }

  v20 = v38 + 56;
  a1 = v9;
  v35 = *(v38 + 56);
  v35(v8, 1, 1, v9);
  if (!v15)
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v8;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v9 = sub_10077158C();
  v36 = v8;
  if (v9)
  {
LABEL_8:
    v34 = v20;
    v15 = 0;
    v8 = (v38 + 48);
    v41 = (v38 + 32);
    v39 = v14 & 0xFFFFFFFFFFFFFF8;
    v40 = (v38 + 8);
    while (1)
    {
      if (v18)
      {
        v22 = sub_10077149C();
        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_26;
        }

        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v16 = sub_10077158C();
          if (!v16)
          {
            goto LABEL_28;
          }

          goto LABEL_3;
        }
      }

      v45 = v22;
      sub_10075EF1C();
      if ((*v8)(v5, 1, a1) == 1)
      {

        sub_10000CFBC(v5, &unk_10094FA00, &unk_100786640);
      }

      else
      {
        v44 = v19;
        v23 = v9;
        v24 = v14;
        v25 = v18;
        v26 = v42;
        v27 = *v41;
        (*v41)(v42, v5, a1);
        if (sub_10075DD0C())
        {

          v29 = v36;
          sub_10000CFBC(v36, &unk_10094FA00, &unk_100786640);
          (*v40)(v43, a1);
          v27(v29, v26, a1);
          v35(v29, 0, 1, a1);
          v28 = v44;
          goto LABEL_24;
        }

        (*v40)(v26, a1);

        v18 = v25;
        v14 = v24;
        v9 = v23;
      }

      ++v15;
      v21 = v45;
      v19 = v45;
      if (v11 == v9)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v21 = v19;
LABEL_22:
  (*(v38 + 8))(v43, a1);
  v28 = v21;
  v29 = v36;
LABEL_24:
  v30 = v37;
  *v37 = v28;
  v31 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  sub_1005E1AD8(v29, v30 + *(v31 + 20));
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

void sub_1005E0A6C(uint64_t a1)
{
  v3 = sub_10075DF0C();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10075DEFC();
  v67 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10075DECC();
  v65 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10075DF6C();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10075D8BC();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10075DD7C();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v62 - v12;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = sub_10000A5D4(&qword_10095FD58, &qword_1007AE990);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  __chkstk_darwin(v22 - 8);
  v81 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v71 = &v62 - v25;
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v62 - v31;
  v82 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer;
  v83 = v1;
  v33 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer);
  if (v33)
  {
    [v33 invalidate];
  }

  v34 = a1;
  sub_100016E2C(a1, v21, &qword_10095FD58, &qword_1007AE990);
  v35 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v21, 1, v35) == 1)
  {
    sub_10000CFBC(v21, &qword_10095FD58, &qword_1007AE990);
    v37 = v84;
    (*(v9 + 56))(v32, 1, 1, v84);
  }

  else
  {
    sub_100016E2C(&v21[*(v35 + 20)], v32, &unk_10094FA00, &unk_100786640);
    sub_1005E1A7C(v21);
    v37 = v84;
  }

  sub_10075DD6C();
  sub_100016E2C(v34, v18, &qword_10095FD58, &qword_1007AE990);
  if (v36(v18, 1, v35) == 1)
  {
    sub_10000CFBC(v18, &qword_10095FD58, &qword_1007AE990);
    (*(v9 + 56))(v28, 1, 1, v37);
  }

  else
  {

    sub_1005E1A7C(v18);
    sub_10075EF0C();

    if ((*(v9 + 48))(v28, 1, v37) != 1)
    {
      v46 = v79;
      (*(v9 + 32))(v79, v28, v37);
      if (sub_10075DD0C())
      {
        v47 = v72;
        sub_10075DF3C();
        sub_10000A5D4(&qword_100951998, &unk_10079AB00);
        v48 = sub_10075DF5C();
        v49 = *(v48 - 8);
        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100783DD0;
        (*(v49 + 104))(v51 + v50, enum case for Calendar.Component.second(_:), v48);
        sub_1001799AC(v51);
        swift_setDeallocating();
        (*(v49 + 8))(v51 + v50, v48);
        swift_deallocClassInstance();
        sub_10075DEEC();

        v52 = *(v78 + 8);
        v78 += 8;
        v62 = v52;
        v52(v47, v73);
        sub_10075DF3C();
        v53 = v65;
        (*(v65 + 104))(v74, enum case for Calendar.MatchingPolicy.nextTime(_:), v75);
        v55 = v66;
        v54 = v67;
        (*(v67 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v76);
        v57 = v69;
        v56 = v70;
        v58 = v15;
        v59 = v68;
        (*(v69 + 104))(v68, enum case for Calendar.RepeatedTimePolicy.first(_:), v70);
        v60 = v72;
        sub_10075DF4C();
        v61 = v59;
        v15 = v58;
        v37 = v84;
        (*(v57 + 8))(v61, v56);
        (*(v54 + 8))(v55, v76);
        (*(v53 + 8))(v74, v75);
        v62(v60, v73);
        (*(v63 + 8))(v77, v64);
        (*(v9 + 8))(v79, v37);
        sub_10000CFBC(v32, &unk_10094FA00, &unk_100786640);
        sub_1005E1AD8(v71, v32);
      }

      else
      {
        (*(v9 + 8))(v46, v37);
      }

      goto LABEL_10;
    }
  }

  sub_10000CFBC(v28, &unk_10094FA00, &unk_100786640);
LABEL_10:
  v38 = v83;
  v39 = v81;
  sub_100016E2C(v32, v81, &unk_10094FA00, &unk_100786640);
  if ((*(v9 + 48))(v39, 1, v37) == 1)
  {
    (*(v9 + 8))(v15, v37);
    sub_10000CFBC(v32, &unk_10094FA00, &unk_100786640);
    sub_10000CFBC(v39, &unk_10094FA00, &unk_100786640);
    v40 = 0;
  }

  else
  {
    v41 = v80;
    (*(v9 + 32))(v80, v39, v37);
    isa = sub_10075DCFC().super.isa;

    v40 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v38 target:"update" selector:0 userInfo:0 repeats:0.0];

    v43 = [objc_opt_self() mainRunLoop];
    [v43 addTimer:v40 forMode:NSRunLoopCommonModes];

    v44 = *(v9 + 8);
    v44(v41, v37);
    v44(v15, v37);
    sub_10000CFBC(v32, &unk_10094FA00, &unk_100786640);
  }

  v45 = *(v38 + v82);
  *(v38 + v82) = v40;
}

double sub_1005E15C4(uint64_t a1)
{

  sub_1005E02D0();

  return result;
}

void sub_1005E16B8(uint64_t a1)
{
  sub_1005E19B8(319, &unk_10095FD98, type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1005E1798(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1005E1868(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1005E1918(uint64_t a1)
{
  sub_10075EF5C();
  if (v1 <= 0x3F)
  {
    sub_1005E19B8(319, &qword_100951390, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005E19B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005E1A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095FD58, &qword_1007AE990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E1A7C(uint64_t a1)
{
  v2 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005E1AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E1B50()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10076C2DC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  sub_10076C20C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100783DD0;
  sub_10001E290();
  sub_10076C29C();
  sub_10076C28C();
  sub_10076C29C();
  sub_10076C2CC();
  sub_10076C29C();
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10095FEC0 = v6;
  return result;
}

void sub_1005E1F2C(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for MessagesSearchViewController(0);
  objc_msgSendSuper2(&v10, "viewWillLayoutSubviews");
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1005E24A0;
  *(v5 + 24) = v4;
  v9[4] = sub_1000349FC;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001C5148;
  v9[3] = &unk_10089C088;
  v6 = _Block_copy(v9);
  v7 = v2;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1005E212C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for MessagesSearchViewController(0);
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  sub_100761FAC();
  sub_100761F8C();
  sub_100761EFC();
}

void sub_1005E21C8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v14 - v4;
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController])
  {
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController + 8];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_1000BFE68(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph];
      v10 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_1000527AC(v5);
      }

      else
      {
        sub_100263BF0(v8, 1, v9, v5);

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

id sub_1005E23A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MessagesSearchViewController(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for MessagesSearchViewController(uint64_t a1)
{
  result = qword_10095FEF8;
  if (!qword_10095FEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005E2468()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1005E24D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1005E24EC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel];
  sub_100760D7C();
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel];
  sub_100760D6C();
  if (v6)
  {
    v7 = sub_10076FF6C();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return [v1 setNeedsLayout];
}

void sub_1005E266C(void *a1)
{
  v13 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v13)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_1006EB15C(v3, a1, 1);
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
      swift_beginAccess();
      v7 = *(v1 + v6);
      v8 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v6) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_10049DEB4(0, *(v7 + 2) + 1, 1, v7);
        *(v1 + v6) = v7;
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_10049DEB4((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[24 * v11];
      *(v12 + 4) = sub_1005E3648;
      *(v12 + 5) = v5;
      v12[48] = 2;
      *(v1 + v6) = v7;
      swift_endAccess();
    }

    else
    {
    }
  }
}

void sub_1005E2824(void *a1)
{
  v2 = v1;
  v89 = sub_10076F08C();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10076F0CC();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076F0EC();
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v77 - v10;
  v11 = [a1 viewControllerForKey:{UITransitionContextToViewControllerKey, sub_1000730D8(0)}];
  if (v11)
  {
    v12 = v11;
    [a1 finalFrameForViewController:v11];
  }

  else
  {
    v12 = [a1 containerView];
    [v12 bounds];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = &v1[OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_fromRect];
  v22 = v1[OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_fromRect + 32];
  if (v22)
  {
    v96.origin.x = v17;
    v96.origin.y = v18;
    v96.size.width = v19;
    v96.size.height = v20;
    v23 = CGRectGetWidth(v96) * 0.2;
    v97.origin.x = v17;
    v97.origin.y = v18;
    v97.size.width = v19;
    v97.size.height = v20;
    v24 = CGRectGetHeight(v97) * 0.2;
    v98.origin.x = v17;
    v98.origin.y = v18;
    v98.size.width = v19;
    v98.size.height = v20;
    v99 = CGRectInset(v98, v23, v24);
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
  }

  else
  {
    v25 = v21[2];
    height = v21[3];
    width = v25;
    v26 = *v21;
    y = v21[1];
    x = v26;
  }

  v27 = x;
  v100.origin.x = x;
  v28 = y;
  v100.origin.y = y;
  v29 = width;
  v100.size.width = width;
  v30 = height;
  v100.size.height = height;
  v83 = CGRectGetWidth(v100);
  v101.origin.x = v17;
  v101.origin.y = v18;
  v101.size.width = v19;
  v101.size.height = v20;
  v82 = CGRectGetWidth(v101);
  v102.origin.x = v27;
  v102.origin.y = v28;
  v102.size.width = v29;
  v102.size.height = v30;
  v80 = CGRectGetHeight(v102);
  v103.origin.x = v17;
  v103.origin.y = v18;
  v103.size.width = v19;
  v103.size.height = v20;
  v79 = CGRectGetHeight(v103);
  v104.origin.x = v27;
  x = v27;
  v104.origin.y = v28;
  v104.size.width = v29;
  width = v29;
  v104.size.height = v30;
  height = v30;
  MidX = CGRectGetMidX(v104);
  v105.origin.x = v17;
  v105.origin.y = v18;
  v105.size.width = v19;
  v105.size.height = v20;
  v77 = CGRectGetMidX(v105);
  v106.origin.x = v27;
  v106.origin.y = v28;
  v31 = v28;
  v106.size.width = v29;
  v106.size.height = v30;
  MidY = CGRectGetMidY(v106);
  v107.origin.x = v17;
  v107.origin.y = v18;
  v107.size.width = v19;
  v107.size.height = v20;
  v33 = CGRectGetMidY(v107);
  v34 = sqrt((v83 - v82) * (v83 - v82) + (v80 - v79) * (v80 - v79));
  v35 = sqrt((MidX - v77) * (MidX - v77) + (MidY - v33) * (MidY - v33));
  if (v34 > v35)
  {
    v35 = v34;
  }

  v80 = v35 / 0.7 / v35;
  v108.origin.x = v17;
  v108.origin.y = v18;
  v108.size.width = v19;
  v108.size.height = v20;
  v36 = CGRectGetMidX(v108);
  v37 = x;
  v109.origin.x = x;
  v109.origin.y = v31;
  v109.size.width = width;
  v38 = height;
  v109.size.height = height;
  v39 = v36 - CGRectGetMidX(v109);
  v83 = v17;
  v110.origin.x = v17;
  v40 = v18;
  v110.origin.y = v18;
  v79 = v19;
  v110.size.width = v19;
  v82 = v20;
  v110.size.height = v20;
  MinY = CGRectGetMinY(v110);
  v111.origin.x = v37;
  v111.origin.y = v31;
  v111.size.width = width;
  v111.size.height = v38;
  v42 = MinY - CGRectGetMinY(v111);
  v43 = [a1 viewForKey:UITransitionContextToViewKey];
  v44 = v43;
  if (v43)
  {
    v45 = y + v42;
    v46 = x + v39;
    v47 = v43;
    v48 = [a1 containerView];
    [v48 addSubview:v47];

    [v47 setFrame:{v46, v45, width, height}];
    if (v22)
    {
      [v47 setAlpha:0.0];
    }
  }

  [v44 layoutIfNeeded];
  CATransform3DMakeTranslation(&aBlock, -v39, -v42, 0.0);
  v49 = sub_10076FF6C();
  v50 = [objc_opt_self() animationWithKeyPath:v49];

  v51 = objc_opt_self();
  v52 = v50;
  v53 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setFromValue:v53];

  v54 = *&CATransform3DIdentity.m33;
  *&aBlock.m31 = *&CATransform3DIdentity.m31;
  *&aBlock.m33 = v54;
  v55 = *&CATransform3DIdentity.m43;
  *&aBlock.m41 = *&CATransform3DIdentity.m41;
  *&aBlock.m43 = v55;
  v56 = *&CATransform3DIdentity.m13;
  *&aBlock.m11 = *&CATransform3DIdentity.m11;
  *&aBlock.m13 = v56;
  v57 = *&CATransform3DIdentity.m23;
  *&aBlock.m21 = *&CATransform3DIdentity.m21;
  *&aBlock.m23 = v57;
  v58 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setToValue:v58];

  [v52 setDamping:16.0];
  [v52 setMass:1.0];
  [v52 setStiffness:150.0];
  [v52 setInitialVelocity:v80];
  v59 = v52;
  [v59 settlingDuration];
  [v59 setDuration:?];
  [v59 setFillMode:kCAFillModeBackwards];

  width = *&v44;
  if (*&v44 != 0.0)
  {
    v60 = [*&width layer];
    v61 = sub_10076FF6C();
    [v60 addAnimation:v59 forKey:v61];
  }

  [v59 settlingDuration];
  sub_100085204();
  v62 = sub_10077068C();
  sub_10076F0DC();
  v63 = v81;
  sub_10076F15C();
  height = *(v84 + 8);
  (*&height)(v8, v91);
  v64 = swift_allocObject();
  *(v64 + 16) = a1;
  *(v64 + 24) = v2;
  *&aBlock.m21 = sub_10056D0A8;
  *&aBlock.m22 = v64;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_10009AEDC;
  *&aBlock.m14 = &unk_10089C0D8;
  v65 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  x = COERCE_DOUBLE(v2);

  sub_10076F0AC();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  v66 = v85;
  v67 = v89;
  sub_1007712CC();
  sub_10077064C();
  _Block_release(v65);

  (*(v88 + 8))(v66, v67);
  (*(v86 + 8))(v6, v87);
  (*&height)(v63, v91);
  v68 = objc_opt_self();
  v69 = swift_allocObject();
  v70 = x;
  v71 = width;
  *(v69 + 16) = x;
  *(v69 + 24) = v71;
  *(v69 + 32) = v83;
  *(v69 + 40) = v40;
  v72 = v82;
  *(v69 + 48) = v79;
  *(v69 + 56) = v72;
  *&aBlock.m21 = sub_1005E3600;
  *&aBlock.m22 = v69;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_10009AEDC;
  *&aBlock.m14 = &unk_10089C128;
  v73 = _Block_copy(&aBlock);
  v74 = *&v71;
  v75 = *&v70;

  *&aBlock.m21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  aBlock.m22 = 0.0;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_1000513F0;
  *&aBlock.m14 = &unk_10089C150;
  v76 = _Block_copy(&aBlock);
  [v68 animateWithDuration:129 delay:v73 options:v76 animations:0.35 completion:0.0];

  _Block_release(v76);
  _Block_release(v73);
}

id sub_1005E343C(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_1000730D8(1);
  result = [a6 setFrame:{a1, a2, a3, a4}];
  if (a6)
  {

    return [a6 setAlpha:1.0];
  }

  return result;
}

id sub_1005E3510(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BouncyFromRectAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005E3568()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1005E35A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1005E35C0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1005E3610()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1005E3648()
{
  v1 = [*(v0 + 16) tabBar];
  [v1 setHidden:0];
}

char *sub_1005E36B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = sub_10076771C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label;
  if (qword_100940A20 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A0C70);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
  v17 = objc_allocWithZone(sub_1007626BC());
  *&v4[v13] = sub_1007626AC();
  v18 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView;
  v19 = objc_allocWithZone(UIImageView);
  *&v4[v18] = [v19 init];
  v20 = type metadata accessor for AlertActionTrailingImageView();
  v36.receiver = v4;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label;
  v23 = *&v21[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label];
  v24 = v21;
  v25 = v23;
  if (a2)
  {
    v26 = sub_10076FF6C();
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
  v31 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView;
  v32 = v35;
  [*&v28[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView] setImage:v35];
  [v28 addSubview:*&v28[v31]];
  [v28 setLayoutMargins:{10.0, 5.0, 10.0, 5.0}];

  return v28;
}

id sub_1005E3A6C()
{
  v1 = sub_10077164C();
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
  v16 = sub_100102A30(v7, v9, v11, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView];
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
    sub_100770CAC();
    v27 = v26;
    v29 = v28;
    (*(v2 + 8))(v4, v1);
    [v24 size];
    v31 = v30;
    v33 = v32;
    sub_100770A4C();
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

  v37 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label];
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
  sub_100770A4C();
  return [v37 setFrame:?];
}

double sub_1005E3FF8(double a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView] image];
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

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label];
  type metadata accessor for AlertActionTrailingImageView();
  sub_10076422C();
  [v10 sizeThatFits:{v9, CGRectGetHeight(v12)}];
  [v1 layoutMargins];
  [v1 layoutMargins];
  return a1;
}

id sub_1005E417C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AlertActionTrailingImageView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005E4220()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_label;
  if (qword_100940A20 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A0C70);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  v14 = OBJC_IVAR____TtC20ProductPageExtension28AlertActionTrailingImageView_imageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005E4490()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v41 = &v34 - v1;
  v44 = sub_10076C2DC();
  v50 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v34 - v8;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v15 = *(sub_10076C20C() - 8);
  v49 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v39 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v18 = v17 + v16;
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_10001E290();
  sub_10076C27C();
  v51 = 0x4030000000000000;
  v52 = 0x4020000000000000;
  sub_10076C27C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v48 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v50 + 104);
  v50 += 104;
  v25 = v44;
  v24(v3);
  v42 = v24;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  v47 = v6;
  sub_10076C29C();
  v43 = v18;
  v45 = v14;
  v46 = v11;
  sub_10076C1CC();
  v51 = 0x3FF0000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v51 = 0x4034000000000000;
  v52 = 0x4024000000000000;
  sub_10076C27C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  (v24)(v3, v48, v25);
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  v28 = v49;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v52 = 0x4034000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v44;
  v30 = v42;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 2 * v28 + v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v52 = 0x4034000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  (v30)(v3, v48, v29);
  sub_1007704BC();
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 4 * v49;
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v52 = 0x4038000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v48;
  v32 = v44;
  (v42)(v3, v48, v44);
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  v52 = 0x3FF8000000000000;
  sub_10076C27C();
  v52 = 0x4038000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  v52 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  (v42)(v3, v31, v32);
  LOBYTE(v52) = 0;
  sub_10076C29C();
  v52 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10095FF80 = v39;
  return result;
}

uint64_t sub_1005E4EC4()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10076C2DC();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v16 = *(sub_10076C20C() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007844F0;
  v46 = v18 + v17;
  v51 = 0x4000000000000000;
  sub_10001E290();
  sub_10076C29C();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  v43 = v6;
  sub_10076C29C();
  v41 = v15;
  v44 = v12;
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10076C27C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 2 * v28 + v48;
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v51 = 0x4034000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007704BC();
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  v34 = v9;
  sub_10076C1CC();
  v35 = 4 * v48;
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v51 = 0x4000000000000000;
  sub_10076C29C();
  v51 = 0x4038000000000000;
  sub_10076C29C();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10076C27C();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10076C29C();
  v51 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10095FF88 = v39;
  return result;
}

uint64_t sub_1005E58D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_10094C040, &qword_1007890D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v43 - v17);
  v45 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v19 = *(v45 - 8);
  *&v20 = __chkstk_darwin(v45).n128_u64[0];
  v22 = &v43 - v21;
  v23 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v23;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_10076114C();
  v24 = sub_100761DCC();

  if (v24)
  {
    v43 = a1;
    if (qword_1009413D0 != -1)
    {
      swift_once();
    }

    v25 = sub_10000A61C(v13, qword_1009A27F8);
    sub_1000A9194(v25, v18, v26);
    v27 = *v18;
    v28 = v24;

    *v18 = v24;
    sub_1000A9194(v18, v15, v29);
    sub_10000A5D4(&unk_100943120, &unk_100784C10);
    sub_10075FE0C();

    sub_1000A91F8(v18, v30);
  }

  else
  {
    if (qword_1009413D0 != -1)
    {
      swift_once();
    }

    v31 = sub_10000A61C(v13, qword_1009A27F8);
    sub_1000A9194(v31, v18, v32);
    sub_10000A5D4(&unk_100943120, &unk_100784C10);
    sub_10075FE0C();
  }

  v33 = sub_10076114C();
  v34 = v45;
  (*(v19 + 16))(v12, v22, v45);
  v35.n128_f64[0] = (*(v19 + 56))(v12, 0, 1, v34);
  sub_1006098B0(v35, v33, v12, v44);

  sub_1005E5F74(v12);
  v36 = sub_10076113C();
  if (!v36)
  {
    v36 = [objc_opt_self() clearColor];
  }

  v37 = v36;
  v38 = ObjectType;
  v48.receiver = v7;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "setBackgroundColor:", v36, v43);
  v39 = *&v7[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
  v47.receiver = v7;
  v47.super_class = v38;
  v40 = v39;
  v41 = objc_msgSendSuper2(&v47, "backgroundColor");
  sub_10075FB8C();

  [v7 setNeedsLayout];
  return (*(v19 + 8))(v22, v34);
}

uint64_t sub_1005E5D4C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_10076523C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10065132C(a6, v10);
  sub_10076525C();
  sub_1005E6210(&qword_10095FFF8, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  sub_10076DBDC();
  (*(v8 + 8))(v10, v7);
  v11 = [objc_opt_self() fractionalWidthDimension:1.0];
  v12 = sub_1007665BC();

  return v12;
}

uint64_t sub_1005E5F74(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094C040, &qword_1007890D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1005E5FDC(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10076523C();
  __chkstk_darwin(v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076525C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10065132C(a5, v8);
  swift_getObjectType();
  sub_1006525E0(a5);
  v13 = sub_10076DDDC();
  swift_allocObject();
  v14 = sub_10076DDBC();
  v19[8] = v13;
  v19[9] = &protocol witness table for LayoutViewPlaceholder;
  v19[5] = v14;
  swift_allocObject();
  v15 = sub_10076DDBC();
  v19[3] = v13;
  v19[4] = &protocol witness table for LayoutViewPlaceholder;
  v19[0] = v15;
  sub_10076524C();
  sub_1005E6210(&qword_10095FFF0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  sub_10076D2AC();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_1005E6210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005E6258@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_100941420 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009A2BB0;
  }

  else
  {
    if (qword_100941410 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009A28D0;
  }

  return sub_10015E5E0(v4, a1);
}

uint64_t sub_1005E6348@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_100941438 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009A3000;
  }

  else
  {
    if (qword_100941418 != -1)
    {
      swift_once();
    }

    v4 = &xmmword_1009A2A40;
  }

  return sub_10015E5E0(v4, a1);
}

double sub_1005E6438()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  result = 16.0;
  if (v1 == 1)
  {
    return 10.0;
  }

  return result;
}

_UNKNOWN **sub_1005E649C()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = &off_100882680;
  if (v2 != 1)
  {
    v4 = [v0 currentTraitCollection];
    v5 = sub_10077071C();

    if ((v5 & 1) == 0)
    {
      return &off_1008826E0;
    }
  }

  return v3;
}

double sub_1005E654C(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 12.0;
  }

  sub_10077071C();
  return 112.0;
}

id sub_1005E65B0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  v3 = objc_opt_self();
  v4 = [v3 currentTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    if (qword_100941420 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1009A2BB0;
  }

  else
  {
    if (qword_100941410 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1009A28D0;
  }

  sub_10015E5E0(v6, v24);
  v7 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_10015E684(v24, v2 + v7);
  swift_endAccess();
  v8 = [v3 currentTraitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == 1)
  {
    if (qword_100941438 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_1009A3000;
  }

  else
  {
    if (qword_100941418 != -1)
    {
      swift_once();
    }

    v10 = &xmmword_1009A2A40;
  }

  sub_10015E5E0(v10, v24);
  v11 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E684(v24, v2 + v11);
  swift_endAccess();
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 currentTraitCollection];
    [v14 horizontalSizeClass];

    v15 = [v3 currentTraitCollection];
    [v15 horizontalSizeClass];

    sub_10076C64C();
  }

  v16 = sub_100356124();
  v17 = [v3 currentTraitCollection];
  v18 = [v17 horizontalSizeClass];

  v19 = &off_100882680;
  if (v18 != 1)
  {
    v20 = [v3 currentTraitCollection];
    v21 = sub_10077071C();

    if ((v21 & 1) == 0)
    {
      v19 = &off_1008826E0;
    }
  }

  sub_1000E5D30(v19);

  v23.receiver = v1;
  v23.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v23, "layoutSubviews");
}

uint64_t sub_1005E6964(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10076443C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v50 - v15;
  if ([a1 horizontalSizeClass] == 1)
  {
    return (*(ObjectType + 312))(a1);
  }

  v50[0] = v16;
  v18 = v4;
  if ([a1 horizontalSizeClass] == 1)
  {
    v19 = 24.0;
    v20 = 12.0;
  }

  else
  {
    if (sub_10077071C())
    {
      v19 = 20.0;
    }

    else
    {
      v19 = 16.0;
    }

    v20 = 112.0;
  }

  v21 = objc_opt_self();
  v22 = [v21 currentTraitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 == 1)
  {
    if (qword_100941420 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_1009A2BB0;
  }

  else
  {
    if (qword_100941410 != -1)
    {
      swift_once();
    }

    v24 = &xmmword_1009A28D0;
  }

  v25 = v18;
  sub_10015E5E0(v24, v60);
  v26 = [v21 currentTraitCollection];
  v27 = [v26 horizontalSizeClass];

  v28 = v50[0];
  if (v27 == 1)
  {
    if (qword_100941438 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009A3000;
  }

  else
  {
    if (qword_100941418 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009A2A40;
  }

  sub_10015E5E0(v29, v57);
  v30 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  sub_1006563D8(&v51);
  v31 = v54;
  v32 = v55;
  v33 = v56;
  sub_10015E58C(&v51);
  if (v33)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v31;
  }

  if (v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v32;
  }

  *&v61[32] = v34;
  *&v61[33] = v35;
  v62 = 0;
  *&v58[32] = v34;
  *&v58[33] = v35;
  v59 = 0;
  if (sub_10077071C())
  {
    v36 = v57;
  }

  else
  {
    v36 = v60;
  }

  sub_10015E5E0(v36, &v51);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v37 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v37 = qword_100944CA0;
  }

  v38 = sub_10000A61C(v9, v37);
  (*(v10 + 16))(v12, v38, v9);
  (*(v10 + 32))(v28, v12, v9);
  if ((v56 & 1) == 0 && v54 == 0.0 && v55 == 0.0)
  {
    sub_1007643EC();
    v40 = v39;
    sub_1007643EC();
    v54 = v40;
    v55 = v41;
    v56 = 0;
  }

  v42 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(&v51, a1, a2);
  v44 = v43;
  (*(v10 + 8))(v28, v9, v42);
  sub_10015E58C(&v51);
  v45 = (a3 - (v19 + v20 + v44 - sub_1005E72E4(v60, a1, v20 + v44, v35))) * 0.5;
  sub_10000CF78(v61, v61[3]);
  sub_10076D3EC();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v46;
  sub_10000CD74(v61);
  sub_10003F19C(&v51, v61);
  sub_10000CF78(v58, v58[3]);
  sub_10076D3EC();
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v45 + v47;
  sub_10000CD74(v58);
  sub_10003F19C(&v51, v58);
  sub_10015E5E0(v60, &v51);
  v48 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_10015E684(&v51, v30 + v48);
  swift_endAccess();
  sub_10015E5E0(v57, &v51);
  v49 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E684(&v51, v30 + v49);
  swift_endAccess();
  sub_10015E58C(v57);
  return sub_10015E58C(v60);
}

void sub_1005E6F88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v10 = sub_1007601DC();
  if (v10 >> 62)
  {
    v24 = v10;
    v25 = sub_10077158C();
    v10 = v24;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == 1 && (a4 & 1) == 0)
  {
    v13 = [objc_opt_self() mainScreen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetWidth(v27);
  }

  v22 = sub_10076BD4C();
  sub_10076BEFC();
  sub_10076D3AC();
  v23 = (v7 + 8);
  if (v22)
  {
    sub_10076D36C();
  }

  else
  {
    sub_10076D35C();
  }

  (*v23)(v9, v6);
}

double sub_1005E7244(double a1, double a2)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  [v2 center];
  v8 = a2 * 0.5;
  if (v6 == 1)
  {
    v8 = a2;
  }

  return v7 - (a1 * 0.5 - v8);
}

double sub_1005E72E4(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = 0.0;
  if ((sub_10077071C() & 1) == 0)
  {
    sub_10000CF78(a1 + 14, a1[17]);
    sub_10076D41C();
    v9 = v8;
    sub_10000CF78(a1 + 19, a1[22]);
    sub_10076D41C();
    v11 = v9 + v10;
    sub_10000CF78(a1 + 24, a1[27]);
    v12 = [v4 traitCollection];
    sub_10076D41C();
    v14 = v13;

    if (v11 <= a4)
    {
      if (v11 + v14 <= a4)
      {
        return v14 * 0.5;
      }

      else
      {
        return (a4 - v11) * 0.5;
      }
    }
  }

  return v7;
}

id sub_1005E7480(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005E7630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v4 = sub_10076048C();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076389C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v41 = sub_1007610DC();
  sub_10076B90C();
  sub_10076F64C();
  sub_1005E7C5C(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  sub_10076F56C();

  v16 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  v18 = v15;
  v19 = v3;
  sub_1002F0390(v18, &v3[v17]);
  swift_endAccess();
  v3[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_hasDivider] = sub_10076109C() & 1;
  sub_1005C7F00();
  sub_1007610BC();
  (*(v7 + 16))(v9, v12, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for RoundedButtonType.share(_:))
  {
    v30 = *(v7 + 8);
    v30(v9, v6);
    v30(v12, v6);
    goto LABEL_7;
  }

  v21 = v36;
  v20 = v37;
  v22 = v38;
  (*(v37 + 104))(v36, enum case for SystemImage.squareAndArrowUp(_:), v38);
  v23 = sub_10076046C();
  (*(v20 + 8))(v21, v22);
  v24 = [v23 imageWithRenderingMode:2];

  (*(v7 + 8))(v12, v6);
  if (!v24)
  {
LABEL_7:
    v29 = *&v19[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button];
    [v29 setImage:0 forState:0];
    goto LABEL_8;
  }

  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940F70 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D3DC();
  sub_10000A61C(v25, qword_1009A1C48);
  v26 = [v19 traitCollection];
  v27 = sub_100770B3C();

  v28 = [objc_opt_self() configurationWithFont:v27];
  v29 = *&v19[OBJC_IVAR____TtC20ProductPageExtension31RoundedButtonCollectionViewCell_button];
  [v29 setPreferredSymbolConfiguration:v28 forImageInState:0];
  [v29 setContentVerticalAlignment:0];
  [v29 setImage:v24 forState:0];

LABEL_8:
  sub_1007610CC();
  v31 = sub_10076FF6C();

  [v29 setTitle:v31 forState:0];

  v32 = sub_1007610EC();
  if (!v32)
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v32 = sub_100770D6C();
  }

  v33 = v32;
  [v29 setTitleColor:v33 forState:0];
  [v29 setTintColor:v33];

  v34 = sub_1007610AC();
  if (!v34)
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v34 = sub_100770DAC();
  }

  v35 = v34;
  [v29 setBackgroundColor:v34];

  [v19 setNeedsLayout];
}

uint64_t sub_1005E7C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005E7CA4(void *a1, uint64_t a2)
{
  v4 = sub_10076FA1C();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10076F3BC();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076F68C();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_100760EFC();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10075DD7C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100766B2C();
  sub_10075DD6C();
  sub_10075DD4C();
  (*(v16 + 8))(v18, v15);
  sub_100766B1C();
  sub_10076F69C();
  v19 = [a1 viewControllers];
  if (v19)
  {
    sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
    v20 = sub_1007701BC();

    v19 = sub_1000C3A80(a2, v20);
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  v23 = [a1 tabBar];
  v24 = [v23 items];

  if (!v24)
  {
    return 1;
  }

  sub_100016F40(0, &unk_100960200, UITabBarItem_ptr);
  v25 = sub_1007701BC();

  result = sub_1007701EC();
  if (result & 1) == 0 || (v22)
  {

    return 1;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v28 = sub_10077149C();
    v27 = v40;
LABEL_13:

    [v28 tag];

    sub_100760ECC();
    if ((*(v27 + 48))(v11, 1, v12) == 1)
    {
      sub_10000CFBC(v11, &qword_10094B168, &qword_100791000);
    }

    else
    {
      (*(v27 + 32))(v14, v11, v12);
      sub_10076305C();
      sub_100760EAC();
      [a1 selectedIndex];
      sub_10076302C();

      sub_10076F64C();
      v29 = v34;
      sub_10076FC1C();
      v30 = v33;
      sub_10076084C();
      v31 = v36;
      sub_10076F9FC();
      sub_10076F67C();

      (*(v38 + 8))(v31, v39);
      (*(v35 + 8))(v30, v37);
      (*(v32 + 8))(v8, v29);
      (*(v27 + 8))(v14, v12);
    }

    return 1;
  }

  v27 = v40;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v25 + 8 * v19 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1005E8350(void *a1, void *a2)
{
  v4 = sub_10000A5D4(&unk_100958FE0, qword_1007A5B10);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v99 = &v89 - v5;
  v6 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v6 - 8);
  v98 = &v89 - v7;
  v8 = sub_10076F4FC();
  __chkstk_darwin(v8 - 8);
  v96 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100954460, &unk_100790FF0);
  __chkstk_darwin(v10 - 8);
  v94 = &v89 - v11;
  v91 = sub_100760A6C();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v13 - 8);
  v92 = &v89 - v14;
  v97 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v103 = &v89 - v15;
  v110 = sub_10075F2FC();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&qword_1009601F8, qword_1007AECA0);
  __chkstk_darwin(v17);
  v104 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  v22 = sub_10000A5D4(&qword_10095D440, &unk_100797450);
  __chkstk_darwin(v22 - 8);
  v106 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v102 = &v89 - v25;
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  __chkstk_darwin(v29);
  v31 = &v89 - v30;
  __chkstk_darwin(v32);
  v109 = &v89 - v33;
  __chkstk_darwin(v34);
  v112 = &v89 - v35;
  v36 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  __chkstk_darwin(v36 - 8);
  v38 = &v89 - v37;
  v39 = sub_100760EFC();
  v113 = *(v39 - 8);
  v114 = v39;
  __chkstk_darwin(v39);
  v41 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v111 = &v89 - v43;
  type metadata accessor for StoreNavigationController();
  if (swift_dynamicCastClass())
  {
    v44 = a2;
    sub_10003E6CC();
  }

  v45 = [a1 tabBar];
  v46 = [v45 items];

  if (v46)
  {
    sub_100016F40(0, &unk_100960200, UITabBarItem_ptr);
    v47 = sub_1007701BC();

    if ((sub_1007701EC() & 1) == 0 || (v48 = [a1 selectedIndex], v48 == sub_10075D75C()))
    {

      return;
    }

    v49 = [a1 selectedIndex];
    if ((v47 & 0xC000000000000001) == 0)
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 < *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v50 = *(v47 + 8 * v49 + 32);
        goto LABEL_13;
      }

      __break(1u);
      return;
    }

    v50 = sub_10077149C();
LABEL_13:
    v51 = v50;

    [v51 tag];

    sub_100760ECC();
    v53 = v113;
    v52 = v114;
    if ((*(v113 + 48))(v38, 1, v114) == 1)
    {
      sub_10000CFBC(v38, &qword_10094B168, &qword_100791000);
      return;
    }

    v54 = v111;
    (*(v53 + 32))(v111, v38, v52);
    v89 = objc_opt_self();
    v55 = v52;
    v56 = [v89 standardUserDefaults];
    v57 = v112;
    sub_10072EA0C(v112);

    v58 = v54;
    v59 = v109;
    (*(v53 + 16))(v41, v58, v55);
    sub_10075F2CC();
    v60 = *(v17 + 48);
    sub_1005E9444(v57, v21);
    sub_1005E9444(v59, &v21[v60]);
    v61 = v108;
    v62 = *(v108 + 48);
    v63 = v110;
    if (v62(v21, 1, v110) == 1)
    {
      if (v62(&v21[v60], 1, v63) == 1)
      {
        sub_10000CFBC(v21, &qword_10095D440, &unk_100797450);
        v64 = v107;
        v65 = v111;
LABEL_22:
        (*(v61 + 104))(v28, enum case for StoreTab.Identifier.search(_:), v63);
        (*(v61 + 56))(v28, 0, 1, v63);
        v68 = *(v17 + 48);
        v69 = v104;
        sub_1005E9444(v59, v104);
        sub_1005E9444(v28, v69 + v68);
        if (v62(v69, 1, v63) == 1)
        {
          sub_10000CFBC(v28, &qword_10095D440, &unk_100797450);
          if (v62(v69 + v68, 1, v63) == 1)
          {
            sub_10000CFBC(v69, &qword_10095D440, &unk_100797450);
LABEL_29:
            v111 = *(v64 + OBJC_IVAR____TtC20ProductPageExtension17TabChangeDelegate_objectGraph);
            v74 = v97;
            sub_10076F5CC();
            v75 = sub_10075DB7C();
            (*(*(v75 - 8) + 56))(v92, 1, 1, v75);
            (*(v90 + 104))(v93, enum case for SearchOrigin.tabBar(_:), v91);
            v76 = sub_100760A5C();
            (*(*(v76 - 8) + 56))(v94, 1, 1, v76);
            sub_10076F4DC();
            v77 = sub_10076096C();
            (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
            v78 = sub_100760A4C();
            swift_allocObject();
            v59 = v109;
            v79 = sub_100760A0C();
            v115[3] = v78;
            v115[4] = sub_1005E94B4(&qword_10094F060, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
            v115[0] = v79;
            v81 = v99;
            v80 = v100;
            v82 = v101;
            (*(v100 + 104))(v99, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v101);

            v83 = v103;
            sub_10076F6CC();

            (*(v80 + 8))(v81, v82);
            (*(v95 + 8))(v83, v74);
            sub_10000CD74(v115);
            goto LABEL_30;
          }

          goto LABEL_27;
        }

        v70 = v102;
        sub_1005E9444(v69, v102);
        if (v62(v69 + v68, 1, v63) == 1)
        {
          sub_10000CFBC(v28, &qword_10095D440, &unk_100797450);
          (*(v108 + 8))(v70, v63);
LABEL_27:
          sub_10000CFBC(v69, &qword_1009601F8, qword_1007AECA0);
          goto LABEL_30;
        }

        v71 = v108;
        v72 = v105;
        (*(v108 + 32))(v105, v69 + v68, v63);
        sub_1005E94B4(&qword_100960210, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
        LODWORD(v111) = sub_10076FF1C();
        v73 = *(v71 + 8);
        v73(v72, v63);
        sub_10000CFBC(v28, &qword_10095D440, &unk_100797450);
        v73(v70, v63);
        sub_10000CFBC(v69, &qword_10095D440, &unk_100797450);
        if (v111)
        {
          goto LABEL_29;
        }

LABEL_30:
        sub_100761FAC();
        sub_100761F8C();
        sub_100760EAC();
        sub_100761EFC();

        v84 = [v89 standardUserDefaults];
        v85 = v106;
        sub_1005E9444(v59, v106);
        sub_10072EB44(v85);

        sub_10075F45C();
        sub_10076F63C();
        v86 = v115[0];
        if (v115[0])
        {
          sub_10075F43C();
        }

        sub_100767BFC();
        sub_10076F63C();
        v87 = v115[0];
        v88 = v113;
        if (v115[0])
        {
          sub_100767BEC();
        }

        sub_10000CFBC(v59, &qword_10095D440, &unk_100797450);
        sub_10000CFBC(v112, &qword_10095D440, &unk_100797450);
        (*(v88 + 8))(v65, v114);
        return;
      }
    }

    else
    {
      sub_1005E9444(v21, v31);
      if (v62(&v21[v60], 1, v63) != 1)
      {
        (*(v61 + 32))(v105, &v21[v60], v63);
        sub_1005E94B4(&qword_100960210, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
        v66 = sub_10076FF1C();
        v67 = *(v61 + 8);
        v67(v105, v110);
        v67(v31, v110);
        v59 = v109;
        v63 = v110;
        sub_10000CFBC(v21, &qword_10095D440, &unk_100797450);
        v64 = v107;
        v65 = v111;
        if ((v66 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      (*(v61 + 8))(v31, v63);
    }

    sub_10000CFBC(v21, &qword_1009601F8, qword_1007AECA0);
    v65 = v111;
    goto LABEL_30;
  }
}

uint64_t sub_1005E9444(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095D440, &unk_100797450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E94B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005E9510()
{
  result = qword_100960218;
  if (!qword_100960218)
  {
    sub_10076363C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960218);
  }

  return result;
}

uint64_t sub_1005E9568(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F50C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_10076FCAC();
  }

  else
  {
    (*(v4 + 104))(v7, enum case for ActionOutcome.performed(_:), v3, v5);
    sub_10076FCBC();
    return (*(v4 + 8))(v7, v3);
  }
}

double sub_1005E96A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_10076FE4C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);

  return result;
}

id sub_1005E9754()
{
  v0 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - v1;
  v3 = sub_100765F9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075DB7C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v11 = sub_10076FCEC();
  sub_10076362C();
  sub_100765F8C();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1001B82AC(v2);
    sub_1005E9AC4();
    swift_allocError();
    sub_10076FCAC();

    return v11;
  }

  (*(v8 + 32))(v10, v2, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    sub_10075DB1C(v13);
    v16 = v15;
    v17 = [objc_allocWithZone(_LSOpenConfiguration) init];
    aBlock[4] = sub_1005E9B18;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005E96A0;
    aBlock[3] = &unk_10089C290;
    v18 = _Block_copy(aBlock);

    [v14 openURL:v16 configuration:v17 completionHandler:v18];
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_1005E9AC4()
{
  result = qword_100960220;
  if (!qword_100960220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960220);
  }

  return result;
}

double sub_1005E9B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1005E9B4C()
{
  result = qword_100960228;
  if (!qword_100960228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960228);
  }

  return result;
}

id sub_1005E9BA0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyHeaderIconView()) init];
  v5[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_buttonsStyle] = a1 & 1;
  v12 = &v5[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_buttonsCallback];
  *v12 = a3;
  v12[1] = a4;

  v19._object = 0x80000001007F1220;
  v19._countAndFlagsBits = 0xD000000000000025;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_1007622EC(v19, v20);
  sub_10076551C();
  v13 = sub_10076FF6C();

  v14 = sub_10076FF6C();

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:icon:contentLayout:", v13, v14, 0, 2);

  v16 = v15;
  [v16 setModalInPresentation:1];
  [v16 setDisableButtonsUntilAllContentWasVisable:a2 & 1];

  return v16;
}

void sub_1005E9D38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v53 = sub_10076F9AC();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_10077111C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58.receiver = v1;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad", v9);
  v12 = [v1 headerView];
  LODWORD(v13) = 1036831949;
  [v12 setTitleHyphenationFactor:v13];

  v14 = [v1 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    [v15 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView]];
  }

  v16 = [objc_opt_self() accessoryButton];
  v59._countAndFlagsBits = 0xD00000000000002ALL;
  v59._object = 0x80000001007F12F0;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_1007622EC(v59, v62);
  v17 = sub_10076FF6C();

  [v16 setTitle:v17 forState:0];

  [v16 addTarget:v1 action:"didTapLearnMore" forControlEvents:64];
  v18 = v16;
  v19 = sub_10076FF6C();
  [v18 setAccessibilityIdentifier:v19];

  v20 = [v1 headerView];
  v51 = v18;
  [v20 addAccessoryButton:v18];

  v21 = v1[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_buttonsStyle];
  v22 = objc_opt_self();
  v23 = [v22 boldButton];
  v24 = v23;
  if (v21)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 linkButton];
  }

  else
  {
    v48 = v23;
    v47 = [v22 boldButton];
    sub_10077109C();
    v28 = objc_opt_self();
    v29 = [v28 systemBlueColor];
    sub_10077104C();
    v30 = [v28 systemGray5Color];
    v31 = sub_100770F5C();
    sub_10076E46C();
    v31(&v56, 0);
    v32 = *(v8 + 16);
    v32(v6, v11, v7);
    v49 = v1;
    v33 = v24;
    v34 = *(v8 + 56);
    v34(v6, 0, 1, v7);
    v35 = v48;
    sub_10077114C();

    v32(v6, v11, v7);
    v34(v6, 0, 1, v7);
    v24 = v33;
    v1 = v49;
    v36 = v47;
    sub_10077114C();
    v27 = v36;

    (*(v8 + 8))(v11, v7);
  }

  v37 = v24;
  v60._countAndFlagsBits = 0xD000000000000027;
  v60._object = 0x80000001007F1350;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  sub_1007622EC(v60, v63);
  v38 = sub_10076FF6C();

  [v37 setTitle:v38 forState:0];

  [v37 addTarget:v1 action:"didTapTurnOn" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v52;
  sub_10076F8FC();
  sub_1000258C0(&v54);
  sub_1000258C0(&v56);
  sub_100770B9C();

  v40 = *(v50 + 8);
  v41 = v53;
  v40(v39, v53);
  v42 = [v1 buttonTray];
  [v42 addButton:v37];

  v43 = v27;
  v61._countAndFlagsBits = 0xD000000000000028;
  v61._object = 0x80000001007F1380;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007622EC(v61, v64);
  v44 = sub_10076FF6C();

  [v43 setTitle:v44 forState:0];

  [v43 addTarget:v1 action:"didTapTurnOff" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  sub_10076F8FC();
  sub_1000258C0(&v54);
  sub_1000258C0(&v56);
  sub_100770B9C();

  v40(v39, v41);
  v45 = [v1 buttonTray];
  [v45 addButton:v43];
}

uint64_t sub_1005EA520()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_1005EA7D0();
  sub_100085204();
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005EAEF4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089C370;
  v14 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_1005EA7D0()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 headerView];
  v8 = [v7 customIconContainerView];

  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView];
    [v8 bounds];
    v10 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label;
    [*&v9[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label] sizeToFit];
    [*&v9[v10] frame];
    (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
    sub_100770AAC();
    v12 = v11;
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    [v8 bounds];
    v15 = CGRectGetMidX(v17) - v12 * 0.5;
    [v8 bounds];
    [v9 setFrame:{v15, CGRectGetMidY(v18) - v14 * 0.5, v12, v14}];
  }
}

void sub_1005EA9D4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v3 = Strong, v4 = [Strong headerView], v3, v5 = objc_msgSend(v4, "customIconContainerView"), v4, v5))
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    MidX = CGRectGetMidX(v29);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    if (v14)
    {
      return;
    }

    goto LABEL_12;
  }

  v16 = v15;
  v17 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView);

  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  if (MidX == CGRectGetMidX(v30))
  {
    v26 = v14;
  }

  else
  {
    v26 = 1;
  }

  if (v26 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      sub_1005EA7D0();
    }
  }
}

void sub_1005EAC38()
{
  v1 = sub_10076FF6C();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v1];

  if (v2)
  {
    [v2 setPresentingViewController:v0];
  }

  [v2 present];
}

uint64_t sub_1005EAEBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1005EAEFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_1005EAF60()
{
  *&v72 = sub_10000A5D4(&qword_1009528B8, &qword_10079BB08);
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v63 - v0;
  v1 = sub_10076D9AC();
  v71 = *(v1 - 8);
  __chkstk_darwin(v1);
  v83 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v63 - v4;
  v82 = sub_10076DA7C();
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D7FC();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v9;
  v77 = sub_10076DD3C();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = sub_10076D3DC();
  v75 = *(v20 - 8);
  v76 = v20;
  __chkstk_darwin(v20);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076C38C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007621CC();
  sub_1005EBB38(&unk_100960280, &type metadata accessor for ProductPageLink, &protocol conformance descriptor for ProductPageLink);
  result = sub_10076332C();
  v27 = v85[0];
  if (v85[0])
  {
    v64 = v1;
    swift_getKeyPath();
    sub_10076338C();

    v28 = v85[0];
    v73 = v27;
    sub_1007621AC();
    if (v29)
    {
      v30 = sub_10076045C();

      v31 = v30;
      [v31 size];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
      sub_100770A8C();
    }

    if (qword_10093FE80 != -1)
    {
      swift_once();
    }

    v32 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
    sub_10000A61C(v32, qword_10099E680);
    sub_10075FDBC();
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v23 + 8))(v25, v22);
    if (sub_1007706FC())
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_100940CB8 != -1)
      {
        swift_once();
      }

      v38 = qword_1009A1420;
    }

    else
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_100940CB0 != -1)
      {
        swift_once();
      }

      v38 = qword_1009A1408;
    }

    v39 = sub_10000A61C(v33, v38);
    (*(v36 + 16))(v37, v39, v33);
    sub_10076DD2C();
    sub_10076DCFC();
    v42 = *(v35 + 8);
    v40 = v35 + 8;
    v41 = v42;
    v42(v11, v34);
    if (qword_10093FE88 != -1)
    {
      swift_once();
    }

    v43 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
    sub_10000A61C(v43, qword_10099E698);
    sub_10075FDBC();
    sub_10076DD1C();
    v41(v14, v34);
    v44 = v41;
    v63 = v41;
    v45 = v68;
    sub_10076DD0C();
    v44(v17, v34);
    v46 = v69;
    sub_10076D7EC();
    sub_10076DCAC();
    v84 = v40;
    sub_10000CF78(v85, v85[3]);
    sub_10076D85C();
    sub_10076D7CC();
    sub_10000CD74(v85);
    sub_10076DCEC();
    sub_10076D77C();
    sub_10076DCCC();
    sub_10076D75C();
    sub_10076DCDC();
    sub_10076D76C();
    sub_10076DCBC();
    sub_10076D74C();
    sub_1007621BC();
    (*(v78 + 16))(v65, v46, v79);
    sub_10076DA5C();
    sub_10076DA8C();
    v47 = v66;
    sub_100321D80(v66);
    v48 = v72;
    sub_10075FDBC();
    v49 = *(v67 + 8);
    v49(v47, v48);
    sub_100321D74(v47);
    sub_10075FDBC();
    v49(v47, v48);
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v50 = swift_allocObject();
    v72 = xmmword_1007841E0;
    *(v50 + 16) = xmmword_1007841E0;
    *(v50 + 32) = v28;
    v51 = v28;
    v52 = sub_10076DEEC();
    sub_10076D2AC();

    v53 = swift_allocObject();
    *(v53 + 16) = v72;
    *(v53 + 32) = v51;
    v54 = v51;
    v55 = sub_10076DEEC();
    v56 = v81;
    v57 = v64;
    sub_10076D3EC();

    v58 = swift_allocObject();
    *(v58 + 16) = v72;
    *(v58 + 32) = v54;
    v59 = v54;
    v60 = sub_10076DEEC();
    v61 = v83;
    sub_10076D3EC();

    v62 = *(v71 + 8);
    v62(v61, v57);
    v62(v56, v57);
    (*(v70 + 8))(v80, v82);
    (*(v78 + 8))(v46, v79);
    v63(v45, v77);
    return (*(v75 + 8))(v74, v76);
  }

  return result;
}

uint64_t sub_1005EBB38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for VideoView(uint64_t a1)
{
  result = qword_100960330;
  if (!qword_100960330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005EBBD4(uint64_t a1)
{
  sub_1005F3114(319);
  if (v1 <= 0x3F)
  {
    sub_10075DB7C();
    if (v2 <= 0x3F)
    {
      sub_10076481C();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1005EBD8C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_10077130C();
    v5 = v4;
    v6 = sub_1007713AC();
    v8 = v7;
    v9 = sub_10077132C();
    sub_100032734(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100032734(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1007712DC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1005F3F8C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100032734(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1005EBEA8()
{
  v1 = v0;
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009A2558;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_10076477C();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_10076922C();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1005EBFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = qword_1009602F0;
  v6 = *(v3 + qword_1009602F0);
  if (v6 || (sub_1005ECC94(a1, a2, a3), (v6 = *(v3 + v5)) != 0))
  {
    v7 = v6;
    v8 = sub_10076051C();

    if ((v8 & 1) == 0)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = *(v4 + v5);
      if (v10)
      {
        swift_retain_n();
        v11 = v10;
        if ([v11 isMuted] & 1) != 0 && ((*((swift_isaMask & *v4) + qword_1009A2568 + 752))())
        {

          sub_1001F0F38(sub_1005F5FB4, v9);

LABEL_12:

          return;
        }
      }

      else
      {
        swift_retain_n();
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        v14 = *(Strong + qword_1009602F0);

        [v14 play];

        return;
      }

      goto LABEL_12;
    }
  }
}

uint64_t sub_1005EC1A0()
{
  sub_10076394C();
  v0 = sub_10076395C();

  return v0();
}

void sub_1005EC1E8(uint64_t a1)
{
  sub_10076394C();
  v2 = sub_10076395C();
  v2(a1);

  sub_1005F2048();
}

uint64_t (*sub_1005EC248(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  sub_10076394C();
  v5 = sub_10076395C();
  *(v4 + 40) = v5(v4);
  return sub_1005EC2E8;
}

void sub_1005EC2E8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1005F2048();
  }

  free(v3);
}

double sub_1005EC344(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_1009602C0 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + qword_1009602F0);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer);
      v6 = v3;
      [v5 setPlayer:v6];
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1005EC3F0()
{
  v1 = *(v0 + qword_1009602F0);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 currentItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 tracks];

  sub_100016F40(0, &unk_100960480, AVPlayerItemTrack_ptr);
  v5 = sub_1007701BC();

  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 assetTrack];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 mediaType];

        v14 = sub_10076FF9C();
        v16 = v15;
        if (v14 == sub_10076FF9C() && v16 == v17)
        {

LABEL_23:
          i = 1;
          goto LABEL_24;
        }

        v19 = sub_10077167C();

        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        i = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_24:

  return i;
}

uint64_t sub_1005EC628@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = sub_10076481C();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007611EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_1009A2528);
  if (v12)
  {
    v30[0] = v9;
    v30[1] = a1;
    v13 = *(v1 + qword_1009A2528 + 8);

    v14 = sub_10076922C();
    v15 = qword_1009A2558;
    v16 = (v4 + 16);
    v17 = (v4 + 8);
    if (v14)
    {
      swift_beginAccess();
      v18 = v2 + v15;
      v19 = v31;
      (*v16)(v6, v18, v31);
      sub_1007647CC();
    }

    else
    {
      swift_beginAccess();
      v25 = v2 + v15;
      v19 = v31;
      (*v16)(v6, v25, v31);
      sub_10076479C();
    }

    (*v17)(v6, v19);
    v26 = sub_10076922C();
    v12(v11, v26 & 1);
    v27 = sub_1000167E0(v12, v13);
    return (*(v8 + 8))(v11, v30[0], v27);
  }

  else
  {
    v20 = sub_10076922C();
    v21 = qword_1009A2558;
    v22 = (v4 + 16);
    if (v20)
    {
      swift_beginAccess();
      v23 = v2 + v21;
      v24 = v31;
      (*v22)(v6, v23, v31);
      sub_1007647CC();
    }

    else
    {
      swift_beginAccess();
      v29 = v2 + v21;
      v24 = v31;
      (*v22)(v6, v29, v31);
      sub_10076479C();
    }

    return (*(v4 + 8))(v6, v24);
  }
}

uint64_t sub_1005EC950@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100762EDC();
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_1009602F0);
  if (v8)
  {
    v14 = v4;
    v9 = v8;
    sub_10076055C();

    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = enum case for VideoPlayerState.unknown(_:);
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

uint64_t sub_1005ECA84(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_10076481C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  v11 = qword_1009A2558;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1005F4A14(&unk_100960470, &type metadata accessor for VideoConfiguration, &protocol conformance descriptor for VideoConfiguration);
  LOBYTE(v11) = sub_10076FF1C();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1005F41B0(v14);
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_1005ECC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_10075DB7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005EE4F4();
  v9 = qword_1009602F0;
  v10 = *(v3 + qword_1009602F0);
  if (v10 || (((*(v6 + 16))(v8, v3 + qword_1009A2520, v5), v11 = objc_allocWithZone(sub_1007605BC()), v12 = sub_10076054C(), (v13 = *(v3 + v9)) == 0) ? (v15 = 0) : (v14 = v13, sub_10076057C(), v14, v15 = *(v4 + v9)), *(v4 + v9) = v12, v16 = v12, v15, sub_1005F0550(), v16, (v10 = *(v4 + v9)) != 0))
  {
    v17 = v10;
    sub_10076052C();
  }
}

void sub_1005ECDF4(char a1)
{
  if (a1)
  {
    v2 = *(v1 + qword_1009602F8);
    if (v2)
    {
      v7[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v7[5] = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1005F04D8;
      v7[3] = &unk_10089C6E8;
      v3 = _Block_copy(v7);
      v4 = v2;
      [v4 exitFullScreenAnimated:0 completionHandler:v3];
      _Block_release(v3);
    }

    v5 = *(v1 + qword_1009602F0);
    if (v5)
    {
      v6 = v5;
      sub_10076050C();
    }
  }

  else
  {
    *(v1 + qword_100960328) = 1;
  }
}

void sub_1005ECEF4()
{
  v1 = qword_1009602F8;
  v2 = *(v0 + qword_1009602F8);
  if (v2)
  {
    v3 = [v2 view];
  }

  else
  {
    v3 = 0;
  }

  [v3 removeFromSuperview];

  v4 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1005ECF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v5 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v7 = sub_10000A5D4(&qword_100960460, &qword_1007AF228);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10000A5D4(&qword_100960468, qword_1007AF230);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_10076F3BC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(v3 + qword_1009A24F0, v15, &unk_10094C030, &unk_10078D680);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v38 = a3;
    (*(v17 + 32))(v19, v15, v16);
    v21 = qword_1009602F0;
    v22 = *(v3 + qword_1009602F0);
    if (!v22)
    {
      (*(v17 + 8))(v19, v16);
      v20 = 1;
      a3 = v38;
      return (*(v17 + 56))(a3, v20, 1, v16);
    }

    v23 = v3;
    v24 = v22;
    v25 = sub_1007604FC();
    if (v25)
    {
      v26 = *(v23 + v21);
      if (v26)
      {
        v27 = [v26 currentItem];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 asset];

          v30 = sub_10076FF6C();
          v31 = [v29 statusOfValueForKey:v30 error:0];

          if (v31 == 2)
          {
            [v25 duration];
            [v25 currentTime];
            CMTimeGetSeconds(&time);

LABEL_12:
            v32 = sub_1007635BC();
            v33 = *(v32 - 8);
            (*(v33 + 16))(v12, v39, v32);
            (*(v33 + 56))(v12, 0, 1, v32);
            v34 = sub_1007635CC();
            (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
            v35 = v40;
            sub_10076058C();
            a3 = v38;
            sub_1007635EC();

            sub_10000CFBC(v35, &unk_1009435D0, &qword_100785850);
            sub_10000CFBC(v9, &qword_100960460, &qword_1007AF228);
            sub_10000CFBC(v12, &qword_100960468, qword_1007AF230);
            (*(v17 + 8))(v19, v16);
            v20 = 0;
            return (*(v17 + 56))(a3, v20, 1, v16);
          }
        }
      }
    }

    v37 = 0;
    goto LABEL_12;
  }

  sub_10000CFBC(v15, &unk_10094C030, &unk_10078D680);
  v20 = 1;
  return (*(v17 + 56))(a3, v20, 1, v16);
}

uint64_t sub_1005ED500@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A5D4(&unk_100960400, &qword_1007AF1F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_1007635BC();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for MediaMetricsEvent.ActionType.stop(_:), v12, v14);
  if (a2)
  {
    v17 = enum case for MediaMetricsEvent.ActionDetails.complete(_:);
    v18 = sub_1007635DC();
    (*(*(v18 - 8) + 104))(v8, v17, v18);
  }

  else
  {
    v18 = sub_1007635DC();
    if (a1)
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.pause(_:);
    }

    else
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.autopause(_:);
    }

    (*(*(v18 - 8) + 104))(v8, *v19, v18);
  }

  sub_1007635DC();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_1005F5F44(v8, v11);
  sub_1005ECF74(v16, v11, a3);
  sub_10000CFBC(v11, &unk_100960400, &qword_1007AF1F0);
  return (*(v13 + 8))(v16, v12);
}

id sub_1005ED780()
{
  v1 = qword_100960308;
  result = [*&v0[qword_100960308] isHidden];
  if ((result & 1) == 0)
  {
    v3 = *&v0[v1];
    [v0 bounds];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = &v0[qword_1009A2510];
    if (v0[qword_1009A2510 + 16])
    {
      [v0 bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MidY = CGRectGetMidY(v20);
    }

    else
    {
      MidX = *v10;
      MidY = v10[1];
    }

    v17 = *&v0[v1];

    return [v17 setFrame:{MidX - v7 * 0.5, MidY - v9 * 0.5, v7, v9}];
  }

  return result;
}

uint64_t sub_1005ED8D0()
{
  v1 = v0;
  v95 = sub_1007611EC();
  v2 = *(v95 - 8);
  __chkstk_darwin(v95);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v97 = &v85 - v6;
  v7 = sub_100762EDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v85 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v86 = &v85 - v12;
  __chkstk_darwin(v13);
  v87 = &v85 - v14;
  __chkstk_darwin(v15);
  v93 = &v85 - v16;
  __chkstk_darwin(v17);
  v19 = &v85 - v18;
  v22 = __chkstk_darwin(v20);
  v23 = &v85 - v21;
  v24 = qword_100960328;
  v25 = v1[qword_100960328];
  v90 = v8;
  v88 = v26;
  if (v25 == 1)
  {
    v92 = v2;
    v27 = *&v1[qword_1009602F0];
    if (v27)
    {
      v28 = v27;
      sub_10076055C();

      (*(v8 + 32))(v23, v19, v7);
      v29 = *(v8 + 104);
    }

    else
    {
      v29 = *(v8 + 104);
      v29(&v85 - v21, enum case for VideoPlayerState.unknown(_:), v7, v22);
    }

    v32 = v93;
    (v29)(v93, enum case for VideoPlayerState.paused(_:), v7);
    v33 = sub_100762ECC();
    v34 = *(v8 + 8);
    v34(v32, v7);
    v34(v23, v7);
    if (v33)
    {
      v1[v24] = 0;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_1005F5F3C;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v2 = v92;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v35 = qword_1009602F0;
  v36 = *&v1[qword_1009602F0];
  v89 = v7;
  v96 = v31;
  v91 = qword_1009602F0;
  if (!v36)
  {
    v43 = v2;
    v48 = 0;
    v49 = &v1[qword_1009A2540];
    v50 = v1[qword_1009A2540] ^ 1;
    goto LABEL_22;
  }

  v37 = [v36 currentItem];
  if (v37)
  {
    v38 = v4;
    v39 = v2;
    v40 = v37;
    [v37 currentTime];
    sub_100770B1C(0.0, 1000000000);
    v41 = sub_100770B0C();

    v2 = v39;
    v4 = v38;
    v31 = v96;
    v42 = *&v1[v35];
    if (v42)
    {
      goto LABEL_13;
    }

LABEL_17:
    v43 = v2;
    v45 = 0;
    goto LABEL_18;
  }

  v41 = 1;
  v42 = *&v1[v35];
  if (!v42)
  {
    goto LABEL_17;
  }

LABEL_13:
  v43 = v2;
  v44 = v42;
  v45 = sub_10076059C();

  v46 = *&v1[v35];
  if (!v46)
  {
LABEL_18:
    v48 = 0;
    goto LABEL_19;
  }

  v47 = v46;
  v48 = sub_1007605AC();

LABEL_19:
  v49 = &v1[qword_1009A2540];
  v51 = v1[qword_1009A2540] | v48;
  v52 = v51 | v41;
  v50 = v51 ^ 1;
  if ((v52 & 1) == 0 && (v45 & 1) == 0)
  {
    v48 = 0;
    v50 = v1[qword_1009602E8];
  }

LABEL_22:
  v53 = v1[qword_1009602D8];
  v94 = v30;
  sub_1005EE16C(v50 & 1, v53, v30, v31);
  v54 = v97;
  sub_1005EC628(v97);
  sub_1007611CC();
  sub_1005F4A14(&unk_1009603F0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v55 = v95;
  v56 = sub_10077124C();
  v59 = *(v43 + 8);
  v57 = v43 + 8;
  v58 = v59;
  v59(v4, v55);
  if (v56)
  {
    v60 = v48 ^ 1;
  }

  else
  {
    sub_1007611DC();
    v61 = sub_10077124C();
    v58(v4, v55);
    if (v61)
    {
      v62 = *&v1[v91];
      v92 = v57;
      if (v62)
      {
        v63 = v62;
        v64 = v86;
        sub_10076055C();

        v65 = v89;
        v66 = v90;
        v67 = v87;
        (*(v90 + 32))(v87, v64, v89);
        v68 = *(v66 + 104);
      }

      else
      {
        v65 = v89;
        v66 = v90;
        v68 = *(v90 + 104);
        v67 = v87;
        (v68)(v87, enum case for VideoPlayerState.unknown(_:), v89);
      }

      v69 = v93;
      v87 = v68;
      (v68)(v93, enum case for VideoPlayerState.paused(_:), v65);
      v70 = sub_100762ECC();
      v71 = *(v66 + 8);
      v71(v69, v65);
      v71(v67, v65);
      if (v70)
      {
        v60 = 1;
        v55 = v95;
        v54 = v97;
      }

      else
      {
        v72 = *&v1[v91];
        if (v72)
        {
          v73 = v72;
          v74 = v85;
          sub_10076055C();

          (*(v90 + 32))(v88, v74, v65);
          v54 = v97;
          v75 = v87;
        }

        else
        {
          v75 = v87;
          (v87)(v88, enum case for VideoPlayerState.unknown(_:), v65);
          v54 = v97;
        }

        v76 = v93;
        (v75)(v93, enum case for VideoPlayerState.ended(_:), v65);
        v77 = v88;
        v60 = sub_100762ECC();
        v71(v76, v65);
        v71(v77, v65);
        v55 = v95;
      }
    }

    else
    {
      v60 = 0;
      v54 = v97;
    }
  }

  v78 = v60 & ~*v49;
  v79 = objc_opt_self();
  v80 = swift_allocObject();
  *(v80 + 16) = v1;
  *(v80 + 24) = v78 & 1;
  aBlock[4] = sub_1005F5F08;
  aBlock[5] = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089C6C0;
  v81 = _Block_copy(aBlock);
  v82 = v1;

  [v79 animateWithDuration:4 delay:v81 options:0 animations:0.2 completion:0.0];
  _Block_release(v81);
  v83 = sub_1000167E0(v94, v96);
  return (v58)(v54, v55, v83);
}

void sub_1005EE16C(char a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  if (a2)
  {
    v8 = a1 & 1;
    if (a1)
    {
      v9 = 0.2;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v8;
    v27 = sub_1005F5EFC;
    v28 = v10;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10009AEDC;
    v26 = &unk_10089C5F8;
    v11 = _Block_copy(&v23);
    v12 = v4;

    if (a3)
    {
      v27 = a3;
      v28 = a4;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_1000513F0;
      v26 = &unk_10089C670;
      a3 = _Block_copy(&v23);
    }

    v13 = objc_opt_self();
    [v13 animateWithDuration:4 delay:v11 options:a3 animations:v9 completion:0.0];
    _Block_release(a3);
    _Block_release(v11);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v8;
    v27 = sub_1005F5FFC;
    v28 = v14;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10009AEDC;
    v26 = &unk_10089C648;
    v15 = _Block_copy(&v23);
    v16 = v12;

    [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
    _Block_release(v15);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a1 & 1;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1005F5EE0;
    *(v19 + 24) = v18;
    v27 = sub_1000349FC;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1001C5148;
    v26 = &unk_10089C5A8;
    v20 = _Block_copy(&v23);
    v21 = v4;

    [v17 performWithoutAnimation:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1005EE4F4()
{
  v1 = qword_1009602F8;
  if (*&v0[qword_1009602F8])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for AppStoreVideoPlayerViewController()) init];
  [v2 setShowsPlaybackControls:0];
  [v2 setAllowsVideoFrameAnalysis:0];
  [v2 setUpdatesNowPlayingInfoCenter:0];
  [v2 setCanPausePlaybackWhenExitingFullScreen:0];
  [v2 setPreferredUnobscuredArea:*&v0[qword_1009A2518]];
  [v2 setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [v2 setDelegate:v0];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 setClipsToBounds:1];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v0 backgroundColor];
  if (!v8)
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v8 = sub_100770D5C();
  }

  [v7 setBackgroundColor:v8];

  [v3 setModalPresentationStyle:5];
  [v3 setCanToggleVideoGravityWhenEmbeddedInline:0];
  v9 = [v3 view];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 layer];

  sub_10076394C();
  v12 = sub_10076395C();
  v12();
  [v11 setMaskedCorners:sub_1007704FC()];

  v13 = [v3 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v0 bounds];
  [v14 setFrame:?];

  v15 = *&v0[qword_1009602F0];
  if (v15)
  {
    v16 = v15;
    [v16 _setDisallowsVideoLayerDisplayCompositing:1];
    [v3 setPlayer:v16];
  }

  v17 = [v3 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  [v0 insertSubview:v17 atIndex:0];

  v19 = *&v0[v1];
  *&v0[v1] = v3;

  sub_1005F41B0(v20);
  v21 = [v3 view];

  if (!v21)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v22 = [v21 layer];

  [v22 setAllowsGroupBlending:0];
}

id sub_1005EE8BC(__n128 a1)
{
  v2 = v1;
  v3 = sub_1007611EC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[qword_1009A2540] == 1)
  {
    v8 = *&v1[qword_1009602F8];
    if (v8)
    {
      [v8 setShowsPlaybackControls:{1, v5}];
    }
  }

  else
  {
    v9 = *&v1[qword_1009602F0];
    if (v9 && (v10 = v9, v11 = sub_1007605AC(), v10, (v11 & 1) != 0))
    {
      v12 = qword_1009602F8;
      v13 = *&v2[qword_1009602F8];
      if (v13)
      {
        v14 = v13;
        sub_1005EC628(v7);
        v15 = sub_1007611AC();
        (*(v4 + 8))(v7, v3);
        [v14 setShowsPlaybackControls:v15 & 1];

        v16 = *&v2[v12];
        if (v16)
        {
          [v16 flashPlaybackControlsWithDuration:5.0];
        }
      }
    }

    else
    {
      v17 = *&v2[qword_1009602F8];
      if (v17)
      {
        [v17 setShowsPlaybackControls:{0, v5}];
      }
    }
  }

  return [v2 accessibilityUpdatePlayerControllerControls];
}

void sub_1005EEA78()
{
  v1 = v0;
  if (qword_1009412A0 != -1)
  {
    swift_once();
  }

  v2 = *&qword_100960290;
  v3 = *algn_100960298;
  v4 = *&qword_1009602A0;
  v5 = unk_1009602A8;
  v6 = &v0[qword_1009A2508];
  v7 = *&v0[qword_1009A2508];
  v8 = *&v0[qword_1009A2508 + 16];
  v9 = [v0 traitCollection];
  v10 = sub_10077070C();

  v11 = *&v1[qword_1009602F8];
  if (v11)
  {
    v12 = 8;
    if (v10)
    {
      v13 = 24;
    }

    else
    {
      v13 = 8;
    }

    if ((v10 & 1) == 0)
    {
      v12 = 24;
    }

    v14 = v3 + *&v6[v13];
    v15 = v5 + *&v6[v12];
    v16 = objc_opt_self();
    v17 = v11;
    v18 = [v16 valueWithUIEdgeInsets:{v2 + v7, v14, v4 + v8, v15}];
    [v17 setOverrideLayoutMarginsWhenEmbeddedInline:v18];
  }
}

void sub_1005EEC10()
{
  v1 = v0;
  v2 = sub_10076F08C();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F09C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_1009A2540] != 1)
  {
LABEL_4:
    [v1 frame];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];

    sub_100770A8C();
    v13 = v16;
    v14 = v17;
    goto LABEL_6;
  }

  sub_100016E2C(&v0[qword_1009A2500], aBlock, &unk_100960410, &qword_10079F3D0);
  if (v37)
  {
    sub_10000CF78(aBlock, v37);
    v12 = sub_10076183C();
    sub_10000CD74(aBlock);
    v13 = 0.0;
    v14 = 0.0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  sub_10000CFBC(aBlock, &unk_100960410, &qword_10079F3D0);
  v13 = 0.0;
  v14 = 0.0;
LABEL_6:
  v18 = qword_1009602F0;
  v19 = *&v1[qword_1009602F0];
  if (!v19 || (v20 = v19, v21 = sub_1007604FC(), v20, !v21) || (([v21 preferredMaximumResolution], v23 = v22, v25 = v24, v21, v23 == v13) ? (v26 = v25 == v14) : (v26 = 0), !v26))
  {
    sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v27 = sub_1007706BC();
    (*(v9 + 8))(v11, v8);
    v28 = *&v1[v18];
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v14;
    v38 = sub_1005F5E9C;
    v39 = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    v37 = &unk_10089C530;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    sub_10076F0AC();
    v35 = _swiftEmptyArrayStorage;
    sub_1005F4A14(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_1000852B8();
    sub_1007712CC();
    sub_10077069C();
    _Block_release(v30);

    (*(v34 + 8))(v4, v2);
    (*(v32 + 8))(v7, v33);
  }
}

void sub_1005EF108(uint64_t a1)
{
  v3 = sub_100765B1C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3, v5);
  if ((*(v4 + 88))(v7, v3) == enum case for VideoPlaybackFailure.videoDecodersUnavailable(_:))
  {
    (*(v4 + 96))(v7, v3);
    v8 = *v7;
    v9 = [objc_opt_self() defaultCenter];
    v10 = sub_1007707AC();
    sub_10000A5D4(&unk_100947120, &unk_100789380);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100784500;
    v17 = sub_10076A76C();
    v18 = v12;
    sub_10077140C();
    *(inited + 96) = &type metadata for AnyHashable;
    v13 = swift_allocObject();
    *(inited + 72) = v13;
    sub_10008C3EC(v1 + qword_1009A2530, v13 + 16);
    v17 = sub_10076A77C();
    v18 = v14;
    sub_10077140C();
    *(inited + 168) = sub_10000A5D4(&unk_100960450, &qword_1007AF220);
    *(inited + 144) = v8;
    v15 = v8;
    sub_1000FCED4(inited);
    swift_setDeallocating();
    sub_10000A5D4(&unk_100948B20, &qword_10078B500);
    swift_arrayDestroy();
    isa = sub_10076FE3C().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1005EF3F8()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v27 - v5;
  v6 = sub_10076481C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = qword_1009A2558;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, &v1[v13], v6);
  v15 = sub_10076478C();
  v16 = *(v7 + 8);
  v16(v12, v6);
  if ((v15 & 1) == 0)
  {
    [v1 _continuousCornerRadius];
    if (v20 == 0.0)
    {
      [v1 _cornerRadius];
      v21 = v30;
      if (v22 == 0.0)
      {
        v23 = v29;
        v24 = v31;
        (*(v30 + 104))(v29, enum case for CornerStyle.arc(_:), v31);
        goto LABEL_12;
      }

      [v1 _cornerRadius];
      v25 = enum case for CornerStyle.arc(_:);
    }

    else
    {
      [v1 _continuousCornerRadius];
      v25 = enum case for CornerStyle.continuous(_:);
      v21 = v30;
    }

    v23 = v29;
    v24 = v31;
    (*(v21 + 104))(v29, v25, v31);
    goto LABEL_12;
  }

  v14(v9, &v1[v13], v6);
  sub_1007647DC();
  v18 = v17;
  v16(v9, v6);
  if (v18)
  {
    v19 = &enum case for CornerStyle.arc(_:);
  }

  else
  {
    [*&v1[qword_1009602D0] frame];
    v19 = &enum case for CornerStyle.continuous(_:);
  }

  v21 = v30;
  v24 = v31;
  v23 = v28;
  (*(v30 + 104))(v28, *v19, v31);
LABEL_12:
  sub_1007638AC();
  return (*(v21 + 8))(v23, v24);
}

void sub_1005EF770()
{
  v1 = v0;
  v2 = qword_1009602F0;
  v3 = *(v0 + qword_1009602F0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10076051C();

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = v6;
      sub_10076057C();

      v6 = *(v1 + v2);
    }

    *(v1 + v2) = 0;

    sub_1005F0550();
    if (v5)
    {
      sub_1005ECC94(v8, v9, v10);
      v11 = *((swift_isaMask & *v1) + qword_1009A2568 + 712);

      v11();
    }
  }

  else
  {

    sub_1005F0550();
  }
}

void sub_1005EF88C()
{
  v1 = sub_10076688C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007668CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[qword_1009602F0];
  if (v9)
  {
    v10 = v9;
    [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
    v11 = [v10 isMuted];
    [v0 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
    (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
    v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
    if (!v11)
    {
      v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
    }

    (*(v2 + 104))(v4, *v12, v1);
    sub_1005EFAB8(v8, v4);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1005EFAB8(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v74 = &v62 - v4;
  v5 = sub_10076F75C();
  __chkstk_darwin(v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100960420, &qword_1007AF1F8);
  __chkstk_darwin(v7 - 8);
  v71 = &v62 - v8;
  v9 = sub_10000A5D4(&qword_100960428, &qword_1007AF200);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_10000A5D4(&qword_100960430, &qword_1007AF208);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_10000A5D4(&qword_100960438, &unk_1007AF210);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v76 = sub_10076F4FC();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v62 - v20;
  v21 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = sub_10076F3BC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(v2 + qword_1009A24F8, v23, &unk_10094C030, &unk_10078D680);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &unk_10094C030;
    v29 = &unk_10078D680;
    v30 = v23;
LABEL_3:
    sub_10000CFBC(v30, v28, v29);
    return;
  }

  (*(v25 + 32))(v27, v23, v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v25 + 8))(v27, v24);
    return;
  }

  v32 = Strong;
  v33 = qword_1009602F0;
  v34 = *(v2 + qword_1009602F0);
  if (!v34)
  {
    (*(v25 + 8))(v27, v24);

    return;
  }

  v35 = v2;
  v66 = v34;
  v36 = sub_1007604FC();
  v67 = v32;
  v65 = v2;
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v36;
  v38 = *(v35 + v33);
  if (!v38 || (v39 = [v38 currentItem]) == 0 || (v40 = v39, v41 = objc_msgSend(v39, "asset"), v40, v42 = sub_10076FF6C(), v43 = objc_msgSend(v41, "statusOfValueForKey:error:", v42, 0), v41, v42, v43 != 2))
  {

LABEL_14:
    v64 = 0.0;
    v63 = 1;
    goto LABEL_15;
  }

  [v37 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v63 = 0;
  v64 = Seconds;
LABEL_15:
  sub_10000A5D4(&qword_1009451D0, &qword_1007875C8);
  v62 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  v45 = enum case for MediaClickMetricsEvent.TargetType.button(_:);
  v46 = sub_10076689C();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v17, v45, v46);
  (*(v47 + 56))(v17, 0, 1, v46);
  v48 = sub_1007668CC();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v14, v69, v48);
  (*(v49 + 56))(v14, 0, 1, v48);
  v50 = sub_10076688C();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v11, v70, v50);
  (*(v51 + 56))(v11, 0, 1, v50);
  LODWORD(v51) = *(v65 + qword_1009A2540);
  v52 = sub_1007668AC();
  v53 = *(v52 - 8);
  v54 = &enum case for MediaClickMetricsEvent.ActionContext.fullscreen(_:);
  if (!v51)
  {
    v54 = &enum case for MediaClickMetricsEvent.ActionContext.inline(_:);
  }

  v55 = v71;
  (*(*(v52 - 8) + 104))(v71, *v54, v52);
  (*(v53 + 56))(v55, 0, 1, v52);
  sub_1007668BC();
  sub_10000CFBC(v55, &qword_100960420, &qword_1007AF1F8);
  sub_10000CFBC(v11, &qword_100960428, &qword_1007AF200);
  sub_10000CFBC(v14, &qword_100960430, &qword_1007AF208);
  sub_10000CFBC(v17, &qword_100960438, &unk_1007AF210);
  sub_10076F74C();
  v56 = v75;
  sub_10076F4EC();
  v57 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v58 = v74;
  sub_10076F5AC();
  v59 = *(v57 - 8);
  if ((*(v59 + 48))(v58, 1, v57) == 1)
  {

    (*(v73 + 8))(v56, v76);
    (*(v25 + 8))(v27, v24);
    v28 = &unk_100943200;
    v29 = &unk_100785840;
    v30 = v58;
    goto LABEL_3;
  }

  sub_10075FD5C();
  v60 = v73;
  (*(v73 + 16))(v68, v56, v76);
  v61 = sub_10075FD3C();
  sub_100263FC8(v61, 1, v67, v58);

  (*(v60 + 8))(v75, v76);
  (*(v25 + 8))(v27, v24);
  (*(v59 + 8))(v58, v57);
}

void sub_1005F04D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1005F0550()
{
  v1 = v0;
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1009602F0;
  v8 = *&v0[qword_1009602F0];
  if (v8)
  {
    sub_1005F4A14(&unk_100960440, type metadata accessor for VideoView, &unk_1007AF0C0);
    v9 = v8;
    v10 = v0;
    sub_10076057C();

    v11 = *&v0[v7];
    if (v11)
    {
      v12 = qword_1009A2558;
      swift_beginAccess();
      (*(v3 + 16))(v6, &v10[v12], v2);
      v13 = v11;
      sub_1007647EC();
      (*(v3 + 8))(v6, v2);
      sub_10076053C();

      v14 = *&v1[v7];
      if (v14)
      {
        [v14 _setDisallowsVideoLayerDisplayCompositing:1];
      }
    }
  }

  v15 = *&v1[qword_1009602F8];
  if (v15)
  {
    [v15 setPlayer:{*&v1[v7], v4}];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer);
    v18 = *&v1[v7];
    [v17 setPlayer:v18];

    swift_unknownObjectRelease();
  }

  v19 = qword_100960310;
  if (v1[qword_100960310] == 1)
  {
    [v1 updateAudioSessionCategoryWithIsAudioOn:1];
    v20 = *&v1[v7];
    if (v20)
    {
      [v20 setMuted:0];
    }

    v1[v19] = 0;
  }
}

id sub_1005F07BC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for VideoView(0);
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1005F0818(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[qword_1009602F8];
  v6 = a3;
  v7 = a1;
  if (v5)
  {
    v5 = [v5 view];
  }

  [v5 setBackgroundColor:a3];

  v8.receiver = a1;
  v8.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v8, "setBackgroundColor:", a3);
}

id sub_1005F08C8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v2, "frame");
}

void sub_1005F090C(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for VideoView(0);
  v20.receiver = a1;
  v20.super_class = v10;
  v11 = a1;
  objc_msgSendSuper2(&v20, "frame");
  v13 = v12;
  v15 = v14;
  v19.receiver = v11;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, "setFrame:", a2, a3, a4, a5);
  [v11 frame];
  v18 = v17 == v13 && v16 == v15;
  if (!v18 && (*(v11 + qword_1009602E0) & 1) == 0)
  {
    sub_1005EEC10();
  }
}

void sub_1005F09F4(__n128 a1)
{
  v1 = ASKDeviceTypeGetCurrent();
  v2 = sub_10076FF9C();
  v4 = v3;
  v6 = 8.0;
  if (v2 != sub_10076FF9C() || v4 != v5)
  {
    if (sub_10077167C())
    {
      v6 = 8.0;
    }

    else
    {
      v6 = 6.0;
    }
  }

  qword_100960290 = *&v6;
  *algn_100960298 = v6;
  qword_1009602A0 = *&v6;
  unk_1009602A8 = *&v6;
}

char *sub_1005F0AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v69 = a5;
  v70 = a4;
  v71 = a3;
  v63 = sub_10076F9AC();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10075DB7C();
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v60 = v7;
  v17 = objc_allocWithZone(v7);
  swift_weakInit();
  *&v17[qword_1009602B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_1009602C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_1009602C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = qword_1009602D0;
  *&v17[v18] = [objc_allocWithZone(UIImageView) init];
  v17[qword_1009602D8] = 0;
  v17[qword_1009602E0] = 0;
  v17[qword_1009602E8] = 0;
  *&v17[qword_1009602F0] = 0;
  *&v17[qword_1009602F8] = 0;
  v19 = qword_100960300;
  sub_10076925C();
  *&v17[v19] = sub_10076924C();
  v20 = qword_100960308;
  *&v17[v20] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v21 = a2;
  v22 = &v17[qword_1009A2508];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v24 = &v17[qword_1009A2510];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v17[qword_1009A2518] = 1;
  v17[qword_100960310] = 0;
  v25 = &v17[qword_1009A2528];
  *v25 = 0;
  v25[1] = 0;
  *&v17[qword_1009A2538 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_1009A2540] = 0;
  v17[qword_1009A2548] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_100960318] = 0;
  v17[qword_1009A2560] = 0;
  *&v17[qword_100960320] = 0;
  v17[qword_100960328] = 0;
  swift_beginAccess();
  v66 = a7;
  swift_weakAssign();
  v65 = a1;
  sub_10008C3EC(a1, &v17[qword_1009A2530]);
  v26 = sub_10075DB5C();
  v28 = v27;
  v29 = sub_10076BD6C();
  v59 = a2;
  if (!v28)
  {

    v31 = v67;
    v32 = v64;
    goto LABEL_9;
  }

  if (v26 == v29 && v28 == v30)
  {

    v31 = v67;
    v32 = v64;
    goto LABEL_7;
  }

  v33 = sub_10077167C();

  v31 = v67;
  v32 = v64;
  if ((v33 & 1) == 0)
  {
LABEL_9:
    (*(v32 + 16))(&v17[qword_1009A2520], v21, v31);
    goto LABEL_10;
  }

LABEL_7:
  v34 = [objc_opt_self() mainBundle];
  sub_10075DB0C();
  v35 = sub_10076FF6C();

  v36 = [v34 URLForResource:v35 withExtension:0];

  if (!v36)
  {
    goto LABEL_9;
  }

  sub_10075DB3C();

  v37 = *(v32 + 32);
  v37(v16, v13, v31);
  v37(&v17[qword_1009A2520], v16, v31);
LABEL_10:
  v38 = v32;
  sub_100016E2C(v70, &v17[qword_1009A24F0], &unk_10094C030, &unk_10078D680);
  sub_100016E2C(v69, &v17[qword_1009A24F8], &unk_10094C030, &unk_10078D680);
  v39 = qword_1009A2558;
  v40 = sub_10076481C();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v17[v39], v71, v40);
  sub_100016E2C(v68, &v17[qword_1009A2500], &unk_100960410, &qword_10079F3D0);
  v74.receiver = v17;
  v74.super_class = v60;
  v42 = objc_msgSendSuper2(&v74, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v42 setClipsToBounds:0];
  v43 = qword_1009602D0;
  [*&v42[qword_1009602D0] setUserInteractionEnabled:0];
  [*&v42[v43] setClipsToBounds:1];
  [v42 addSubview:*&v42[v43]];
  v44 = objc_opt_self();
  v45 = [v44 defaultCenter];
  v46 = sub_1007707BC();
  [v45 addObserver:v42 selector:"didChangeAutoPlayVideoSetting" name:v46 object:0];

  v47 = [v44 defaultCenter];
  [v47 addObserver:v42 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v48 = qword_100960308;
  [*&v42[qword_100960308] setHidden:1];
  v49 = *&v42[v48];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  v52 = *&v49[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  v53 = *&v49[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock + 8];
  *v51 = sub_10039E4D0;
  v51[1] = v50;
  v54 = v49;

  sub_1000167E0(v52, v53);

  memset(v73, 0, sizeof(v73));
  memset(v72, 0, sizeof(v72));
  v55 = v61;
  sub_10076F95C();
  sub_10000CFBC(v72, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v73, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  (*(v62 + 8))(v55, v63);
  [v42 addSubview:*&v42[v48]];
  sub_1005F41B0(v56);

  sub_10000CFBC(v68, &unk_100960410, &qword_10079F3D0);
  sub_10000CFBC(v69, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v70, &unk_10094C030, &unk_10078D680);
  (*(v41 + 8))(v71, v40);
  (*(v38 + 8))(v59, v67);
  sub_100016C74(v65);

  return v42;
}

void sub_1005F1390(uint64_t a1)
{
  v45 = sub_10076481C();
  v1 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007611EC();
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  __chkstk_darwin(v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &ObjectType - v8;
  v10 = sub_10076688C();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007668CC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v41 = v1;
    (*((swift_isaMask & *Strong) + qword_1009A2568 + 712))();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      sub_1005F4A14(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v19 = v18;
      v40 = v9;
      v20 = v6;
      v21 = v13;
      v22 = v19;
      sub_100763C6C();

      v13 = v21;
      v6 = v20;
      v9 = v40;
      swift_unknownObjectRelease();
    }

    (*(v14 + 104))(v16, enum case for MediaClickMetricsEvent.TargetId.play(_:), v13);
    v23 = v13;
    v25 = v46;
    v24 = v47;
    (*(v46 + 104))(v12, enum case for MediaClickMetricsEvent.ActionType.play(_:), v47);
    sub_1005EFAB8(v16, v12);
    (*(v25 + 8))(v12, v24);
    v26 = (*(v14 + 8))(v16, v23);
    if ((*((swift_isaMask & *v18) + qword_1009A2568 + 752))(v26))
    {
      v27 = sub_10076922C();
      v28 = qword_1009A2558;
      v29 = (v41 + 16);
      v30 = (v41 + 8);
      if (v27)
      {
        swift_beginAccess();
        v31 = v18 + v28;
        v32 = v44;
        (*v29)(v44, v31, v45);
        sub_1007647CC();
      }

      else
      {
        swift_beginAccess();
        v33 = v18 + v28;
        v32 = v44;
        (*v29)(v44, v33, v45);
        sub_10076479C();
      }

      (*v30)(v32, v45);
      sub_1007611BC();
      sub_1005F4A14(&unk_1009603F0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
      v34 = v42;
      v35 = sub_10077124C();
      v36 = *(v43 + 8);
      v36(v6, v34);
      v36(v9, v34);
      if (v35)
      {
        v37 = *(v18 + qword_1009602F0);
        if (v37)
        {
          v38 = v37;
          [v18 updateAudioSessionCategoryWithIsAudioOn:1];
          [v38 setMuted:0];

          v18 = v38;
        }

        else
        {
          *(v18 + qword_100960310) = 1;
        }
      }
    }
  }
}

void sub_1005F199C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + qword_1009602F0);

    [v3 play];
  }
}

void sub_1005F1A14()
{
  v1 = v0;
  v0[qword_1009A2548] = 0;
  v2 = qword_1009A2540;
  [v0 setUserInteractionEnabled:(v0[qword_1009A2540] & 1) == 0];
  v3 = [v0 backgroundColor];
  if (!v3)
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v3 = sub_100770D5C();
  }

  v11 = v3;
  v5 = *&v0[qword_1009602F8];
  if (v5)
  {
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      if (v1[v2] == 1)
      {
        v8 = [objc_opt_self() clearColor];
      }

      else
      {
        v8 = v11;
      }

      v9 = v8;
      [v7 setBackgroundColor:v8];
    }
  }

  sub_1005F41B0(v4);
  if ((v1[v2] & 1) == 0)
  {
    v10 = *&v1[qword_1009602F0];
    if (v10)
    {
      [v10 setMuted:(v1[qword_100960318] & 1) == 0];
    }
  }

  sub_1005EEC10();
  [v1 setNeedsLayout];
}

void sub_1005F1BA0(void *a1)
{
  v2 = a1;
  sub_1005F41B0(v1);
}

uint64_t sub_1005F1BE8()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[qword_1009602F8];
  if (v9)
  {
    v10 = [v9 view];
  }

  else
  {
    v10 = 0;
  }

  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[qword_1009602D0];
  [v11 frame];
  [v11 setFrame:?];
  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  [v11 setCenter:{MidX, CGRectGetMidY(v16)}];
  sub_1005ED780();
  return sub_1005EF3F8();
}

void sub_1005F1D38(void *a1)
{
  v1 = a1;
  sub_1005F1BE8();
}

void sub_1005F1D80(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + qword_1009602F0);
      v4 = Strong;
      v5 = v3;

      if (v3)
      {
        sub_10076050C();
      }
    }
  }
}

id sub_1005F1E00(char *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = 0.0;
  if (a2)
  {
    v6 = 1.0;
  }

  [*&a1[qword_1009602D0] setAlpha:v6];

  return [a1 layoutSubviews];
}

id sub_1005F1EC0(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = *(a1 + qword_1009602D0);
  v7 = 0.0;
  if (a2)
  {
    v7 = 1.0;
  }

  return [v6 setAlpha:v7];
}

void sub_1005F1F78(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v5 = sub_1007604FC();
    [v5 setPreferredMaximumResolution:{a2, a3}];
  }
}

void sub_1005F1FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + qword_1009A2540) = 0;
    sub_1005F1A14();
  }
}

void sub_1005F2048()
{
  sub_10076394C();
  v1 = sub_10076395C();
  v1();
  v2 = sub_1007704FC();
  v3 = [v0 layer];
  [v3 setMaskedCorners:v2];

  sub_10076391C();
  v4 = *&v0[qword_1009602F8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];

      [v7 setMaskedCorners:v2];
    }
  }

  v8 = [*&v0[qword_1009602D0] layer];
  [v8 setMaskedCorners:v2];
}

void sub_1005F2184(void *a1, double a2)
{
  v3 = a1;
  sub_1005F22D4(&selRef__setCornerRadius_, &selRef__cornerRadius, a2);
}

id sub_1005F2210(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VideoView(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1005F2254(void *a1, double a2)
{
  v3 = a1;
  sub_1005F22D4(&selRef__setContinuousCornerRadius_, &selRef__continuousCornerRadius, a2);
}

id sub_1005F22D4(SEL *a1, SEL *a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for VideoView(0);
  objc_msgSendSuper2(&v12, *a1, a3);
  v7 = *&v3[qword_1009602F8];
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v3 *a2];
      [v9 *a1];
    }
  }

  v10 = *&v3[qword_1009602D0];
  [v3 *a2];
  return [v10 *a1];
}

void sub_1005F239C(uint64_t a1, uint64_t a2)
{
  v5 = qword_100960320;
  v6 = *&v2[qword_100960320];
  if (!v6 || [v6 phase] == 3 || (v7 = *&v2[v5]) != 0 && objc_msgSend(v7, "phase") == 4)
  {
    v8 = sub_1005EBD8C(a1);
    if (v8)
    {
      v9 = *&v2[v5];
      *&v2[v5] = v8;
      v10 = v8;

      [v10 locationInView:v2];
      v11 = [v2 hitTest:a2 withEvent:?];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v13 = v12;
        v14 = v2;
        v15 = v2;
        v16 = sub_100770EEC();

        if ((v16 & 1) == 0)
        {
          sub_100016F40(0, &qword_10094F760, UITouch_ptr);
          sub_10027D9C8();
          v17 = v13;
          isa = sub_10077038C().super.isa;
          [v17 touchesBegan:isa withEvent:a2];
        }

        v2 = v14;
      }

      sub_100016F40(0, &qword_10094F760, UITouch_ptr);
      sub_10027D9C8();
      v19.super.isa = sub_10077038C().super.isa;
      v21.super_class = type metadata accessor for VideoView(0);
      objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v2, v21.super_class, v22.receiver, v22.super_class);
    }

    else
    {
      sub_100016F40(0, &qword_10094F760, UITouch_ptr);
      sub_10027D9C8();
      v19.super.isa = sub_10077038C().super.isa;
      v22.super_class = type metadata accessor for VideoView(0);
      objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v2, v22.super_class);
    }
  }

  else
  {
    sub_100016F40(0, &qword_10094F760, UITouch_ptr);
    sub_10027D9C8();
    v19.super.isa = sub_10077038C().super.isa;
    v20.super_class = type metadata accessor for VideoView(0);
    objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v19.super.isa, a2, v2, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
  }
}