id sub_25DA80()
{
  v1 = *(v0 + 8);
  if (v1 > 2)
  {
    if (v1 != 3 && v1 != 4)
    {
      if (v1 != 5)
      {
        goto LABEL_11;
      }

      v3 = sub_30C098();
      v4 = [objc_opt_self() imageNamed:v3];
LABEL_13:
      v2 = v4;

      return v2;
    }

LABEL_12:
    v3 = sub_30C098();
    v4 = [objc_opt_self() systemImageNamed:v3];
    goto LABEL_13;
  }

  if (v1 < 2)
  {
    goto LABEL_12;
  }

  if (v1 != 2)
  {
LABEL_11:
    v2 = *(v0 + 32);
    v5 = v2;
    return v2;
  }

  return 0;
}

uint64_t sub_25DC50()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == (&dword_0 + 3))
    {
      v2 = [objc_opt_self() mainBundle];
      v11._countAndFlagsBits = 0xED00006465766153;
      v3._countAndFlagsBits = 0x5F45444F53495045;
      v3._object = 0xED00004445564153;
    }

    else
    {
      if (v1 != &dword_4)
      {
        if (v1 == (&dword_4 + 1))
        {
          v2 = [objc_opt_self() mainBundle];
          v11._countAndFlagsBits = 0xE000000000000000;
          v3._object = 0x8000000000342240;
          v3._countAndFlagsBits = 0xD000000000000012;
          goto LABEL_13;
        }

LABEL_12:
        v5 = *v0;
        v2 = [objc_opt_self() mainBundle];
        v11._countAndFlagsBits = 0xE000000000000000;
        v3._countAndFlagsBits = v5;
        v3._object = v1;
        goto LABEL_13;
      }

      v2 = [objc_opt_self() mainBundle];
      v11._countAndFlagsBits = 0xEF64657661736E55;
      v3._countAndFlagsBits = 0x5F45444F53495045;
      v3._object = 0xEF44455641534E55;
    }

    v4 = 0x2065646F73697045;
LABEL_17:
    v6.value._countAndFlagsBits = 0;
    v6.value._object = 0;
    v7.super.isa = v2;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    goto LABEL_18;
  }

  if (!v1)
  {
    v2 = [objc_opt_self() mainBundle];
    v11._countAndFlagsBits = 0xEE00657565755120;
    v3._countAndFlagsBits = 0x4F545F4445444441;
    v3._object = 0xEE0045554555515FLL;
    v4 = 0x6F74206465646441;
    goto LABEL_17;
  }

  if (v1 == (&dword_0 + 1))
  {
    v2 = [objc_opt_self() mainBundle];
    v11._countAndFlagsBits = 0xEC0000007478654ELL;
    v3._countAndFlagsBits = 0x5F474E4959414C50;
    v3._object = 0xEC0000005458454ELL;
    v4 = 0x20676E6979616C50;
    goto LABEL_17;
  }

  if (v1 != (&dword_0 + 2))
  {
    goto LABEL_12;
  }

  v2 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0xE000000000000000;
  v3._countAndFlagsBits = 0x6E69776F6C6C6F46;
  v3._object = 0xE900000000000067;
LABEL_13:
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v7.super.isa = v2;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v4 = 0;
LABEL_18:
  v9 = sub_301AB8(v3, v6, v7, v8, v4, v11);

  return v9;
}

uint64_t sub_25DF58()
{
  v1 = v0[1];
  if (v1 < 5)
  {
    return 0;
  }

  if (v1 == 5)
  {
    v3 = 0x8000000000342220;
    v4 = 0xD000000000000018;
  }

  else
  {
    result = v0[2];
    v3 = v0[3];
    if (!v3)
    {
      return result;
    }

    v4 = v0[2];
  }

  v5 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0xE000000000000000;
  v9._countAndFlagsBits = v4;
  v9._object = v3;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v6.super.isa = v5;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v7 = sub_301AB8(v9, v10, v6, v11, 0, v8);

  return v7;
}

void sub_25E07C(char a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for HUDViewController();
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v14 = sub_25FEA8;
  v15 = v4;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_914CC;
  v13 = &block_descriptor_55;
  v5 = _Block_copy(&v10);
  v6 = v1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v14 = sub_25FEC8;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_2504C4;
  v13 = &block_descriptor_6_0;
  v8 = _Block_copy(&v10);
  v9 = v6;

  [v3 animateWithDuration:131074 delay:v5 options:v8 animations:0.2 completion:0.0];
  _Block_release(v8);
  _Block_release(v5);
}

id sub_25E22C(uint64_t a1)
{
  v2 = sub_25F9F4();
  CGAffineTransformMakeScale(&v4, 1.0, 1.0);
  [v2 setTransform:&v4];

  return [*(a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView) setAlpha:1.0];
}

void sub_25E2B0(uint64_t a1, char *a2)
{
  if (*&a2[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_type + 8] == 2)
  {
    sub_25F4D4(a1);
  }

  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v14 = sub_26021C;
  v15 = v4;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_914CC;
  v13 = &block_descriptor_42;
  v5 = _Block_copy(&v10);
  v6 = a2;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v14 = sub_260224;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_2504C4;
  v13 = &block_descriptor_48_0;
  v8 = _Block_copy(&v10);
  v9 = v6;

  [v3 animateWithDuration:131074 delay:v5 options:v8 animations:0.2 completion:1.5];
  _Block_release(v8);
  _Block_release(v5);
}

id sub_25E4B8()
{
  v1 = v0;
  v2 = sub_30CC58();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v106 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = &v91 - v6;
  __chkstk_darwin(v7);
  v9 = &v91 - v8;
  v10 = type metadata accessor for HUDViewController();
  v108.receiver = v0;
  v108.super_class = v10;
  objc_msgSendSuper2(&v108, "viewDidLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v12 = result;
    [result bounds];
    v101 = v14;
    v102 = v13;
    v99 = v16;
    v100 = v15;

    v17 = [v1 traitCollection];
    sub_30C958();
    v96 = v18;

    v19 = sub_25F9F4();
    v20 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_configuration];
    v21 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_configuration + 24];
    v95 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_configuration + 16];
    [v19 setFrame:{0.0, 0.0, v21}];

    v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView;
    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView] bounds];
    v23 = v20[8];
    v24 = v20[9];
    v94 = *(v20 + 10);
    v30 = UIEdgeInsetsInsetRect(v25, v26, v27, v28, v23, v24);
    v31 = v29;
    v33 = v32;
    v93 = v34;
    v92 = *v20;
    v103 = *(v20 + 1);
    v35 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_type];
    v36 = 19.0;
    if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_type + 8] < 2uLL)
    {
      v36 = 0.0;
    }

    v91 = v29 + v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AE68, &qword_32FAE0);
    v98 = v3;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_315430;
    sub_30CC38();
    v107 = v37;
    sub_260168(&qword_40AE70, &protocol conformance descriptor for CGRect.LayoutAxis);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AE78, qword_32FAE8);
    sub_25FED0();
    v104 = v2;
    sub_30D488();
    v97 = v22;
    [*&v1[v22] bounds];
    v38 = [v1 traitCollection];
    sub_30C958();

    v103 = v9;
    sub_30CC68();
    v43 = v42;
    if (*(v35 + 1) <= 1uLL)
    {
      v44 = v39;
      v45 = v40;
      v46 = v41;
      [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_imageView] setContentMode:1];
      v41 = v46;
      v40 = v45;
      v39 = v44;
    }

    [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_imageView] setFrame:{v39, v40, v41, v43}];
    v47 = 0.0;
    if (*(v35 + 1) >= 2uLL)
    {
      v47 = 19.0;
    }

    v48 = v43 + v47;
    v49 = v31 + v48;
    v50 = v93 - v48;

    v51 = objc_opt_self();
    v52 = COERCE_DOUBLE([v51 fontDescriptorWithSystemFontSize:3 weight:22.0]);

    v53 = [v51 fontDescriptorWithSystemFontSize:5 weight:16.0];
    v54 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel;
    v55 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel];
    v93 = v52;
    v56 = [*&v52 preferredFont];
    [v55 setFont:v56];

    v57 = *&v1[v54];
    [*&v52 scaledValueForValue:18.0];
    v59 = v58;
    [v57 frame];
    [v57 sizeThatFits:{v33, v50}];
    sub_302E38();
    v61 = v60;
    v109.origin.x = v30;
    v62 = v49;
    v109.origin.y = v49;
    v109.size.width = v33;
    v109.size.height = v50;
    MinX = CGRectGetMinX(v109);
    v110.origin.x = v30;
    v110.origin.y = v62;
    v92 = v62;
    v110.size.width = v33;
    v110.size.height = v50;
    v64 = v59 + CGRectGetMinY(v110);
    [v57 setFrame:{MinX, v64, v33, v61}];
    v111.origin.x = MinX;
    v111.origin.y = v64;
    v111.size.width = v33;
    v111.size.height = v61;
    v112.size.height = v50 - CGRectGetHeight(v111);
    v112.origin.x = v30;
    v112.origin.y = v62;
    v112.size.width = v33;
    Height = CGRectGetHeight(v112);
    if (Height > 0.0)
    {
      v66 = Height;
    }

    else
    {
      v66 = 0.0;
    }

    v113.origin.x = MinX;
    v113.origin.y = v64;
    v113.size.width = v33;
    v113.size.height = v61;
    MaxY = CGRectGetMaxY(v113);
    [v57 _baselineOffsetFromBottom];
    v91 = MaxY - v68;
    v114.origin.x = MinX;
    v114.origin.y = v64;
    v114.size.width = v33;
    v114.size.height = v61;
    CGRectGetMaxY(v114);

    v69 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel;
    v70 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel];
    v71 = [v53 preferredFont];
    [v70 setFont:v71];

    v72 = *&v1[v69];
    v73 = v53;
    [v53 scaledValueForValue:25.0];
    [v72 frame];
    [v72 sizeThatFits:{v33, v66}];
    sub_302E38();
    v75 = v74;
    v115.origin.x = v30;
    v76 = v92;
    v115.origin.y = v92;
    v115.size.width = v33;
    v115.size.height = v66;
    v77 = CGRectGetMinX(v115);
    [v72 _firstBaselineOffsetFromTop];
    sub_302E38();
    v79 = v78;
    [v72 setFrame:{v77, v78, v33, v75}];
    v116.origin.x = v77;
    v116.origin.y = v79;
    v116.size.width = v33;
    v116.size.height = v75;
    v117.size.height = v66 - CGRectGetHeight(v116);
    v117.origin.x = v30;
    v117.origin.y = v76;
    v117.size.width = v33;
    CGRectGetHeight(v117);
    v118.origin.x = v77;
    v118.origin.y = v79;
    v118.size.width = v33;
    v118.size.height = v75;
    [v72 _baselineOffsetFromBottom];
    v119.origin.x = v77;
    v119.origin.y = v79;
    v119.size.width = v33;
    v119.size.height = v75;
    CGRectGetMaxY(v119);

    v80 = v97;
    v81 = *&v1[v97];
    sub_302E38();
    [v81 bounds];
    [v81 setBounds:?];

    v82 = *&v1[v80];
    sub_302E38();
    [v82 bounds];
    [v82 setBounds:?];

    v83 = v106;
    sub_30CC48();
    v84 = v105;
    v85 = v103;
    sub_25EE24(v105, v83);
    v86 = *(v98 + 8);
    v87 = v83;
    v88 = v104;
    v86(v87, v104);
    v86(v84, v88);
    v89 = *&v1[v80];
    [v89 frame];
    v90 = [v1 traitCollection];
    sub_30C958();

    sub_30CC68();
    [v89 setFrame:?];

    return (v86)(v85, v88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25EE24(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AEB0, &qword_32FC08);
  __chkstk_darwin(v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_30CC58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = *(v10 + 16);
  v26 = v2;
  v17(v12, v2, v9, v14);
  v24 = sub_260168(&qword_40AE70, &protocol conformance descriptor for CGRect.LayoutAxis);
  sub_30D458();
  sub_260168(qword_40AEB8, &protocol conformance descriptor for CGRect.LayoutAxis);
  v25 = a2;
  v18 = sub_30C018();
  v28 = v4;
  v19 = *(v4 + 48);
  *v8 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v10 + 32))(&v8[v19], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v20 = v25;
    (v17)(&v8[v19], v25, v9);
    (v17)(v12, v20, v9);
    sub_30D468();
  }

  v21 = v27;
  sub_2601AC(v8, v27);
  v22 = *v21;
  (*(v10 + 32))(v29, &v21[*(v28 + 48)], v9);
  return v22;
}

void sub_25F144()
{
  v1 = [objc_allocWithZone(MPModalPresentationWindow) init];
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_presentationWindow);
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_presentationWindow) = v1;
  v3 = v1;

  v4 = v3;
  [v4 setHidden:0];
  [v4 setUserInteractionEnabled:0];

  v5 = objc_opt_self();
  v9 = v4;
  v6 = [v5 sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    if ([v7 respondsToSelector:"window"])
    {
      v8 = [v7 window];
      swift_unknownObjectRelease();
      v7 = [v8 windowScene];
    }

    else
    {
      swift_unknownObjectRelease();
      v7 = 0;
    }
  }

  [v9 setWindowScene:v7];

  [v9 presentViewController:v0 animated:1 completion:0];
}

void sub_25F2E4(char *a1)
{
  v2 = sub_25F9F4();
  v3 = [v2 contentView];

  v4 = [v3 superview];
  if (v4)
  {
    [v4 setAlpha:0.0];
  }

  v5 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView];
  v6 = objc_allocWithZone(UIColor);
  v7 = v5;
  v8 = [v6 initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [v7 setBackgroundColor:v8];

  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    CGAffineTransformMakeScale(&v11, 0.88, 0.88);
    [v10 setTransform:&v11];
  }

  else
  {
    __break(1u);
  }
}

id sub_25F438(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    CGAffineTransformMakeScale(&v5, 1.0, 1.0);
    [v4 setTransform:&v5];

    return [a2 dismissViewControllerAnimated:0 completion:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25F4D4(uint64_t a1)
{
  v2 = sub_25F9F4();
  v3 = [v2 contentView];

  v4 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_configuration];
  v5 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_configuration + 40];
  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_configuration + 48];
  v7 = [objc_allocWithZone(UIBezierPath) init];
  [v7 moveToPoint:{v5 + 42.5, v6 + 76.5}];
  [v7 addLineToPoint:{v5 + 74.0, v6 + 104.5}];
  [v7 addLineToPoint:{v5 + 131.5, v6 + 48.0}];
  v8 = [objc_allocWithZone(CAShapeLayer) init];
  [v3 bounds];
  [v8 setFrame:?];
  v9 = [v7 CGPath];
  [v8 setPath:v9];

  v10 = objc_opt_self();
  v11 = [v10 clearColor];
  v12 = [v11 cgColor];
  v13 = v11;
  if (v12)
  {
    v14 = v12;
    [v8 setFillColor:v14];

    v15 = [v1 traitCollection];
    LODWORD(v14) = [v15 userInterfaceStyle] == &dword_0 + 2;

    v16 = [v10 labelColor];
    v17 = [v16 colorWithAlphaComponent:dbl_32FAC0[v14]];

    v18 = [v17 cgColor];
    if (v18)
    {
      v19 = v18;
      [v8 setStrokeColor:v19];

      [v8 setLineWidth:9.0];
      [v8 setStrokeStart:0.0];
      [v8 setStrokeEnd:0.0];
      [v8 setLineCap:kCALineCapRound];
      [v8 setLineJoin:kCALineJoinRound];
      CATransform3DMakeScale(&v29, v4[7], v4[7], v4[7]);
      [v8 setTransform:&v29];

      v20 = [v3 layer];
      [v20 addSublayer:v8];

      [v8 setStrokeEnd:1.0];
      v21 = sub_30C098();
      v22 = [objc_opt_self() animationWithKeyPath:v21];

      v23 = v22;
      [v23 setDuration:0.26];
      [v23 setFillMode:kCAFillModeBoth];
      isa = sub_30C4A8().super.super.isa;
      [v23 setFromValue:isa];

      v25 = sub_30C4A8().super.super.isa;
      [v23 setToValue:v25];

      [v23 setRemovedOnCompletion:0];
      v26 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      [v23 setTimingFunction:v26];

      LODWORD(v27) = 1.0;
      [v23 setRepeatCount:v27];

      v28 = sub_30C098();
      [v8 addAnimation:v23 forKey:v28];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_25F9F4()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView];
  }

  else
  {
    v4 = sub_25FA58(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_25FA58(void *a1)
{
  v1 = [objc_opt_self() effectWithStyle:1200];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  v3 = v2;
  [v3 setClipsToBounds:1];
  [v3 _setContinuousCornerRadius:9.0];

  return v3;
}

void sub_25FB0C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HUDViewController();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = sub_25F9F4();

  v4 = [objc_opt_self() effectWithStyle:1200];
  [v3 setEffect:v4];
}

id HUDViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HUDViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s23ShelfKitCollectionViews17HUDViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_configuration);
  *v1 = xmmword_32FA70;
  v1[1] = xmmword_32FA80;
  v1[2] = xmmword_32FA90;
  v1[3] = xmmword_32FAA0;
  __asm { FMOV            V1.2D, #25.0 }

  v1[4] = xmmword_32FAB0;
  v1[5] = _Q1;
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_primaryLabel;
  *(v0 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_secondaryLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_imageView;
  *(v0 + v9) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController_presentationWindow) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews17HUDViewController____lazy_storage___HUDView) = 0;
  sub_30D648();
  __break(1u);
}

uint64_t sub_25FE70()
{

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_25FED0()
{
  result = qword_40AE80;
  if (!qword_40AE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_40AE78, qword_32FAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40AE80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ShelfKitCollectionViews17HUDViewControllerC7HUDTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25FFAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 40))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

double sub_26005C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_260098(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2600B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

void sub_26010C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 >= 6)
  {
  }
}

uint64_t sub_260168(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_30CC58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2601AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AEB0, &qword_32FC08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IdiomAwareValue.init(mac:ios:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v12 = type metadata accessor for IdiomAwareValue(0, a3, a4, v11);
  IdiomAwareValue.macValue.getter(v12, a5);
  IdiomAwareValue.iosValue.getter(v12, a5 + v10);
  v13 = *(*(v12 - 8) + 8);
  v13(a2, v12);
  v13(a1, v12);

  return swift_storeEnumTagMultiPayload();
}

{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v12 = type metadata accessor for IdiomAwareValue(0, a3, a4, v11);
  IdiomAwareValue.macValue.getter(v12, a5);
  (*(*(v12 - 8) + 8))(a1, v12);
  (*(*(a3 - 8) + 32))(a5 + v10, a2, a3);

  return swift_storeEnumTagMultiPayload();
}

{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(*(a3 - 8) + 32);
  v11(a5, a1, a3);
  v11(a5 + v10, a2, a3);
  type metadata accessor for IdiomAwareValue(0, a3, a4, v12);

  return swift_storeEnumTagMultiPayload();
}

{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(a3 - 8);
  (*(v11 + 16))(a5, a1, a3);
  v13 = type metadata accessor for IdiomAwareValue(0, a3, a4, v12);
  IdiomAwareValue.iosValue.getter(v13, a5 + v10);
  (*(*(v13 - 8) + 8))(a2, v13);
  (*(v11 + 8))(a1, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t IdiomAwareValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v4 + 32))(a2, v13, v3);
  }

  v15 = *(swift_getTupleTypeMetadata2() + 48);
  v16 = *(v4 + 32);
  v16(v9, v13, v3);
  v16(v6, &v13[v15], v3);
  sub_111AE0();
  v17 = sub_30C978();
  v18 = *(v4 + 8);
  if (v17)
  {
    v18(v6, v3);
    v19 = a2;
    v20 = v9;
  }

  else
  {
    v18(v9, v3);
    v19 = a2;
    v20 = v6;
  }

  return (v16)(v19, v20, v3);
}

uint64_t static IdiomAwareValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v49 = a2;
  v50 = *(a3 - 8);
  __chkstk_darwin(a1);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v41 - v6;
  __chkstk_darwin(v7);
  v47 = &v41 - v8;
  __chkstk_darwin(v9);
  v42 = &v41 - v10;
  v46 = v11;
  v13 = type metadata accessor for IdiomAwareValue(0, v12, v11, v11);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v21 = __chkstk_darwin(TupleTypeMetadata2);
  v23 = &v41 - v22;
  v25 = &v41 + *(v24 + 48) - v22;
  v26 = *(v14 + 16);
  v26(&v41 - v22, v48, v13, v21);
  (v26)(v25, v49, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v26)(v19, v23, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = v50;
      v38 = v42;
      (*(v50 + 32))(v42, v25, a3);
      v35 = sub_30C018();
      v39 = *(v37 + 8);
      v39(v38, a3);
      v39(v19, a3);
      goto LABEL_11;
    }

    (*(v50 + 8))(v19, a3);
    goto LABEL_8;
  }

  (v26)(v16, v23, v13);
  v27 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = *(v50 + 8);
    v36(&v16[v27], a3);
    v36(v16, a3);
LABEL_8:
    v35 = 0;
    v14 = v43;
    v13 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  v28 = v50;
  v29 = *(v50 + 32);
  v29(v47, v25, a3);
  v29(v45, &v16[v27], a3);
  v29(v44, &v25[v27], a3);
  v30 = v47;
  v31 = sub_30C018();
  v32 = *(v28 + 8);
  v32(v16, a3);
  if (v31)
  {
    v34 = v44;
    v33 = v45;
    v35 = sub_30C018();
    v32(v34, a3);
    v32(v33, a3);
    v32(v47, a3);
  }

  else
  {
    v32(v44, a3);
    v32(v45, a3);
    v32(v30, a3);
    v35 = 0;
  }

LABEL_11:
  (*(v14 + 8))(v23, v13);
  return v35 & 1;
}

uint64_t IdiomAwareValue<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    v18 = *(v5 + 32);
    v18(v10, v14, v4);
    v18(v7, &v14[v17], v4);
    sub_30D808(1uLL);
    sub_30BFD8();
    sub_30BFD8();
    v19 = *(v5 + 8);
    v19(v7, v4);
    return (v19)(v10, v4);
  }

  else
  {
    (*(v5 + 32))(v10, v14, v4);
    sub_30D808(0);
    sub_30BFD8();
    return (*(v5 + 8))(v10, v4);
  }
}

Swift::Int IdiomAwareValue<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_30D7F8();
  IdiomAwareValue<>.hash(into:)(v5, a1, a2);
  return sub_30D858();
}

Swift::Int sub_260EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_30D7F8();
  IdiomAwareValue<>.hash(into:)(v6, a2, v4);
  return sub_30D858();
}

uint64_t IdiomAwareValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  type metadata accessor for IdiomAwareValue(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t IdiomAwareValue.macValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(*(v9 - 8) + 32))(a2, v6, v9);
  }

  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(v9 - 8);
  (*(v11 + 32))(a2, v6, v9);
  return (*(v11 + 8))(&v6[v10], v9);
}

uint64_t IdiomAwareValue.iosValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __chkstk_darwin(a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  if (EnumCaseMultiPayload != 1)
  {
    return (*(*(v9 - 8) + 32))(a2, v6, v9);
  }

  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(v9 - 8);
  (*(v11 + 32))(a2, &v6[v10], v9);
  return (*(v11 + 8))(v6, v9);
}

uint64_t sub_2614F4(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_261588(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_2616D8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_2618C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA8, qword_3250C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v5 = sub_3046C8();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_304838();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AFD0, &unk_32FF50);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_307A88();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_info;
  swift_beginAccess();
  v21 = &v1[v20];
  v22 = v16;
  v23 = v17;
  sub_263CD0(v21, v15);
  if ((*(v17 + 48))(v15, 1, v22) == 1)
  {
    return sub_EB68(v15, &qword_40AFD0, &unk_32FF50);
  }

  v62 = v9;
  v63 = v10;
  v64 = v4;
  v25 = *(v17 + 32);
  v61 = v22;
  v25(v19, v15, v22);
  sub_26216C();
  sub_D8184();
  v26 = sub_30CDB8();
  v27 = sub_30CD88();
  v28 = sub_30CD28();

  v66 = v1;
  sub_30CB88();
  sub_3046D8();
  v29 = objc_opt_self();
  v30 = [v29 secondaryLabelColor];
  v31 = sub_304758();
  sub_304728();
  v31(v70, 0);
  v32 = v28;
  v33 = sub_304758();
  sub_304718();
  v33(v70, 0);
  sub_307A48();
  sub_304818();
  v34 = v32;
  v35 = sub_3047B8();
  v60 = v34;
  sub_304718();
  v35(v70, 0);
  sub_307A38();
  v36 = v68;
  if (v37)
  {
    v59 = v23;
    v38 = [v29 labelColor];
    v39 = sub_3047B8();
    sub_304728();
    v39(v70, 0);
    if (v66[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowDownwardChevron] == 1)
    {

      sub_307A78();
    }

    sub_3046E8();
    v36 = v68;
    v23 = v59;
  }

  sub_307A28();
  if (v71)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60, &unk_317B20);
    sub_30B038();
    v40 = swift_dynamicCast();
    v41 = v63;
    if (v40)
    {
      if (qword_3FAFB8 != -1)
      {
        swift_once();
      }

      v42 = qword_40DB80;
      v43 = sub_3047B8();
      sub_304728();
      v43(v70, 0);
      sub_30B018();
      sub_3046E8();
      [v66 setAccessibilityTraits:UIAccessibilityTraitButton];
    }
  }

  else
  {
    sub_EB68(v70, &unk_3FBB40, &qword_31EF50);
    v41 = v63;
  }

  v44 = v62;
  v68 = v19;
  sub_307A58();
  v45 = sub_3047B8();
  sub_3046F8();
  v45(v70, 0);
  v46 = OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_kind;
  v47 = v66;
  v48 = v67;
  sub_3046D8();
  if (v47[v46] - 17 >= 2)
  {
    sub_3047F8();
    sub_3047D8();
  }

  v71 = v41;
  v72 = &protocol witness table for UIListContentConfiguration;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v70);
  (*(v69 + 16))(boxed_opaque_existential_0Tm, v12, v41);
  sub_30CA78();
  sub_304668();
  sub_307A28();
  v50 = v71;
  sub_EB68(v70, &unk_3FBB40, &qword_31EF50);
  if (!v50)
  {
    v51 = v65;
    sub_304698();
    (*(v48 + 8))(v44, v36);
    (*(v48 + 32))(v44, v51, v36);
  }

  v52 = sub_3070F8();
  v54 = v53;
  if (v52 == sub_3070F8() && v54 == v55)
  {

LABEL_21:
    sub_304648();
    sub_304688();
    goto LABEL_22;
  }

  v56 = sub_30D728();

  if (v56)
  {
    goto LABEL_21;
  }

LABEL_22:
  v57 = v64;
  (*(v48 + 16))(v64, v44, v36);
  (*(v48 + 56))(v57, 0, 1, v36);
  sub_30CA88();

  (*(v48 + 8))(v44, v36);
  (*(v69 + 8))(v12, v41);
  return (*(v23 + 8))(v68, v61);
}

uint64_t sub_26216C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AFD0, &unk_32FF50);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_307A88();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_262B2C(v0, v7);
  sub_2624D0(v10);
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_info;
  swift_beginAccess();
  sub_263CD0(&v1[v11], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_EB68(v4, &qword_40AFD0, &unk_32FF50);
    goto LABEL_8;
  }

  (*(v6 + 32))(v9, v4, v5);
  sub_307A78();
  if (!v13)
  {
    result = (*(v6 + 8))(v9, v5);
LABEL_8:
    v20 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowDownwardChevron];
    v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowDownwardChevron] = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }

    return sub_30CB78();
  }

  v14 = sub_307A58();
  result = (*(v6 + 8))(v9, v5);
  v15 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowDownwardChevron];
  v16 = (v14 & 1) == 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowDownwardChevron] = v16;
  if (v15 == v16)
  {
    return result;
  }

  if ((v14 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FB0, &qword_31E8B0);
    v17 = *(sub_304548() - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_315430;
    sub_2627D0(v19 + v18);
  }

  return sub_30CB78();
}

uint64_t (*sub_262438(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26249C;
}

uint64_t sub_26249C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2618C8();
  }

  return result;
}

void sub_2624D0(char a1)
{
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EB0, &unk_321450);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_3044F8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_304458();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowChevron);
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowChevron) = a1;
  if (v16 != v3)
  {
    if (a1)
    {
      v17 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FB0, &qword_31E8B0);
      sub_304548();
      *(swift_allocObject() + 16) = xmmword_315430;
      (*(v12 + 104))(v15, enum case for UICellAccessory.DisplayedState.always(_:), v17);
      v18 = sub_304488();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
      sub_3044E8();
      sub_3044B8();
      (*(v8 + 8))(v10, v7);
      (*(v12 + 8))(v15, v17);
    }

    sub_30CB78();
  }
}

uint64_t sub_2627D0@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EB0, &unk_321450);
  __chkstk_darwin(v1 - 8);
  v3 = v21 - v2;
  v4 = sub_304538();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = sub_3044D8();
  v8 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_30C098();
  v12 = [objc_opt_self() systemImageNamed:v11];

  v13 = [objc_allocWithZone(UIImageView) initWithImage:v12];
  v14 = [objc_opt_self() secondaryLabelColor];
  [v13 setTintColor:v14];

  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AFD8, qword_32FF60) + 48)];
  v16 = enum case for UICellAccessory.DisplayedState.always(_:);
  v17 = sub_304458();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  *v15 = sub_263D40;
  v15[1] = 0;
  (*(v5 + 104))(v7, enum case for UICellAccessory.Placement.trailing(_:), v4);
  v18 = sub_304488();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  v19 = v13;
  sub_3044C8();
  sub_3043F8();

  return (*(v8 + 8))(v10, v21[0]);
}

BOOL sub_262B2C(unsigned __int8 *a1, double a2)
{
  v3 = sub_307A88();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3070F8();
  v9 = v8;
  if (v7 == sub_3070F8() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_30D728();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_info;
  swift_beginAccess();
  if ((*(v4 + 48))(&a1[v14], 1, v3))
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    (*(v4 + 16))(v6, &a1[v14], v3);
    sub_307A28();
    (*(v4 + 8))(v6, v3);
    if (*(&v21 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60, &unk_317B20);
      sub_30B038();
      if (swift_dynamicCast())
      {
        sub_30B008();
        v15 = sub_30AF78();
        sub_30AFB8();
        if (sub_30AFB8() == v15)
        {

          return 1;
        }

        v16 = sub_30AF98();
        sub_30AFB8();
        if (sub_30AFB8() == v16)
        {
          v17 = [a1 traitCollection];
          v18 = [v17 horizontalSizeClass];

          return v18 == &dword_0 + 1;
        }
      }

      return 0;
    }
  }

  sub_EB68(&v20, &unk_3FBB40, &qword_31EF50);
  return 0;
}

uint64_t sub_262E64@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_30B898();
  __chkstk_darwin(v4 - 8);
  v5 = sub_307A88();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_info;
  swift_beginAccess();
  if ((*(v6 + 48))(v2 + v9, 1, v5))
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    (*(v6 + 16))(v8, v2 + v9, v5);
    sub_307A28();
    (*(v6 + 8))(v8, v5);
    if (*(&v16 + 1))
    {
      sub_12658(&v15, v18);
      return sub_12658(v18, a1);
    }
  }

  sub_EB68(&v15, &unk_3FBB40, &qword_31EF50);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = sub_30AF68();
  sub_30AFB8();
  sub_30AFB8();
  if (sub_30AFB8() != v10)
  {
    sub_30AFB8();
  }

  sub_30B868();
  v11 = sub_308048();
  swift_allocObject();
  v12 = sub_308028();

  a1[3] = v11;
  result = sub_263D88(&qword_401720, &type metadata accessor for ClosureAction, &protocol conformance descriptor for Action);
  a1[4] = result;
  *a1 = v12;
  return result;
}

void sub_263130(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_262438(v11);
    v5 = v4;
    v6 = sub_307A88();
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      sub_307A68();
    }

    v3(v11, 0);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_reload];
    if (v9)
    {
      v10 = *&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_reload + 8];
      sub_9FF04(*&v7[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_reload], v10);

      v9(1);
      sub_1EBD0(v9, v10);
    }

    else
    {
    }
  }
}

id sub_263378(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_kind] = 16;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_info;
  v5 = sub_307A88();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowChevron] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_shouldShowDownwardChevron] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_objectGraph] = 0;
  v6 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_reload];
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t type metadata accessor for InformationCell(uint64_t a1)
{
  result = qword_40AF90;
  if (!qword_40AF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_263560(uint64_t a1, double a2)
{
  sub_26361C(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26361C(uint64_t a1, double a2)
{
  if (!qword_40AFA0)
  {
    sub_307A88();
    v2 = sub_30D3A8();
    if (!v3)
    {
      atomic_store(v2, &qword_40AFA0);
    }
  }
}

uint64_t sub_263674(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AFD0, &unk_32FF50);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_307A88();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_info;
  swift_beginAccess();
  sub_263C60(v5, v1 + v8);
  swift_endAccess();
  sub_2618C8();
  return sub_EB68(v5, &qword_40AFD0, &unk_32FF50);
}

uint64_t sub_2637D0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_objectGraph) = a1;

  result = sub_307038();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_kind) = result;
  return result;
}

uint64_t sub_26382C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_263D88(&qword_40AFE0, type metadata accessor for InformationCell, &unk_32FF10);

  return TypedShelfUIKitCell.apply(model:)(a1, ObjectType, v3);
}

double sub_2638B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_reload);
  v5 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_reload);
  v6 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews15InformationCell_reload + 8);
  *v4 = a2;
  v4[1] = a3;
  sub_1EBD0(v5, v6);

  return result;
}

uint64_t sub_263904(double a1)
{
  v1 = sub_3072C8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_307278();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ShelfCellListSeparatorMode.Layout.marginToMargin(_:), v6);
  (*(v2 + 104))(v4, enum case for ShelfCellListSeparatorMode.Placement.default(_:), v1);
  return sub_3072D8();
}

uint64_t sub_263C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AFD0, &unk_32FF50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_263CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40AFD0, &unk_32FF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_263D48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_263D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_263E64(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_objectGraph) = a1;
  swift_retain_n();

  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_embeddedView;
  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_embeddedView);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_objectGraph] = a1;
  v6 = v5;

  v7 = sub_2662B0();
  sub_2AE20(a1);

  v13 = *(v2 + v4);
  sub_307038();
  v8 = sub_3070F8();
  v10 = v9;
  if (v8 == sub_3070F8() && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_30D728();
  }

  v13[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_isPresentedInSearch] = v12 & 1;
}

void sub_263FA8()
{
  v1 = v0;
  v2 = sub_304618();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_itemIsDeletable;
  swift_beginAccess();
  v7 = 0.0;
  if (v1[v6] == 1 && (v8 = [v1 _bridgedConfigurationState], sub_3045F8(), v8, LOBYTE(v8) = sub_304608(), (*(v3 + 8))(v5, v2), (v8 & 1) != 0) && (v7 = 1.0, !*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionButton]))
  {
    v12 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v13 = swift_allocObject();
    v9 = sub_2656E8;
    *(v13 + 16) = sub_2656E8;
    *(v13 + 24) = v10;
    aBlock[4] = sub_293C0;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19D688;
    aBlock[3] = &block_descriptor_56;
    v14 = _Block_copy(aBlock);
    v15 = v1;

    [v12 performWithoutAnimation:v14];
    _Block_release(v14);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionButton];
  if (v11)
  {
    [v11 setAlpha:v7];
  }

  sub_2B8D4(v9, v10);
}

char *sub_26424C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionButton] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_itemIsDeletable] = 0;
  v10 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionUITriggered];
  *v10 = UINavigationBar.overrideBackButtonStyle.setter;
  v10[1] = 0;
  ObjectType = swift_getObjectType();
  v12 = (*(ObjectType + 160))();
  v13 = objc_allocWithZone(type metadata accessor for LargeLockupView());
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_embeddedView] = sub_26664C(v12 & 0x101);
  v18.receiver = v5;
  v18.super_class = type metadata accessor for LargeLockupCollectionViewCell();
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = [v14 contentView];
  [v16 addSubview:*&v14[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_embeddedView]];

  return v14;
}

id sub_264630(uint64_t a1, double a2, double a3)
{
  v27.receiver = v3;
  v27.super_class = type metadata accessor for LargeLockupCollectionViewCell();
  result = objc_msgSendSuper2(&v27, "hitTest:withEvent:", a1, a2, a3);
  if (!result)
  {
    if (([v3 clipsToBounds] & 1) == 0 && (objc_msgSend(v3, "isHidden") & 1) == 0)
    {
      [v3 alpha];
      if (v8 > 0.0)
      {
        v9 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionButton];
        if (v9)
        {
          v10 = v9;
          [v3 convertPoint:v10 toCoordinateSpace:{a2, a3}];
          v12 = v11;
          v14 = v13;
          v15 = v10;
          [v15 bounds];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          [v15 hitRectInsets];
          v29.origin.x = UIEdgeInsetsInsetRect(v17, v19, v21, v23, v24, v25);
          v28.x = v12;
          v28.y = v14;
          v26 = CGRectContainsPoint(v29, v28);

          result = v9;
          if (v26)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_264824(char *a1)
{
  v2 = sub_30D6F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() easyTouchButtonWithType:0];
  v7 = [objc_opt_self() removeImage];
  [v6 setImage:v7 forState:0];

  v8 = [objc_opt_self() configurationWithScale:3];
  [v6 setPreferredSymbolConfiguration:v8 forImageInState:0];

  v9 = v6;
  [v9 sizeToFit];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v14 = enum case for FloatingPointRoundingRule.toNearestOrEven(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v2);
  sub_302E78();
  v17 = v16;
  v18 = *(v3 + 8);
  v18(v5, v2);
  v15(v5, v14, v2);
  sub_302E78();
  v20 = v19;
  v18(v5, v2);
  [v9 setFrame:{-v17, -v20, v11, v13}];

  sub_124C4(0, &qword_408080, UIAction_ptr);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v24 = v9;
  v25 = sub_30D0C8();
  [v24 addAction:v25 forControlEvents:0x2000];
  v26 = [a1 contentView];
  [v26 addSubview:v24];

  [v24 setAlpha:0.0];
  [v24 layoutIfNeeded];

  v27 = *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionButton];
  *&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionButton] = v9;
}

void sub_264BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = (v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionUITriggered);
      v7 = v5;
      swift_beginAccess();
      v8 = *v6;

      v8(v4);
    }

    else
    {
    }
  }
}

void sub_264D64()
{
  v1 = [v0 selectedBackgroundView];
  if (v1)
  {
    v2 = v1;
    if ([v0 isEditing])
    {
      sub_124C4(0, &qword_3FFD48, UIColor_ptr);
      v3.super.isa = sub_30D048(1.0, 1.0, 1.0, 0.0).super.isa;
    }

    else
    {
      if (qword_3FB008 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_42B048;
    }

    isa = v3.super.isa;
    [v2 setBackgroundColor:?];
  }
}

id sub_264F58(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LargeLockupCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_265060(uint64_t *a1)
{
  v2 = *a1;
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_embeddedView];
  [v1 frame];
  Width = CGRectGetWidth(v6);
  sub_26579C(v2, Width);
}

uint64_t sub_2650D0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_itemIsDeletable;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_265114(char a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_itemIsDeletable;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_263FA8();
}

void (*sub_265168(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2651CC;
}

void sub_2651CC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_263FA8();
  }
}

uint64_t sub_265200()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionUITriggered);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_265258(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionUITriggered);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_265330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return TypedShelfUIKitCell.apply(model:)(a1, a2, WitnessTable);
}

uint64_t sub_265390(double a1, uint64_t a2, void *a3)
{
  type metadata accessor for LargeLockupView();
  v5 = (*(v3 + 160))();
  return sub_265A80(v5 & 0x101, a3);
}

void *sub_2653F4()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_embeddedView) + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView);
  v2 = v1;
  return v1;
}

__n128 sub_265434@<Q0>(uint64_t a1@<X8>)
{
  result = *&UIEdgeInsetsZero.top;
  v2 = *&UIEdgeInsetsZero.bottom;
  *a1 = *&UIEdgeInsetsZero.top;
  *(a1 + 16) = v2;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_265450(uint64_t a1)
{
  sub_306FE8();
  v1 = sub_306FD8();
  v3 = v2;
  if (v1 == sub_306FD8() && v3 == v4)
  {

    return 0x4032000000000000;
  }

  else
  {
    v6 = sub_30D728();

    if (v6)
    {
      return 0x4032000000000000;
    }

    else
    {
      return 0x4034000000000000;
    }
  }
}

uint64_t sub_265668(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2656B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_265718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_265750()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_26579C(uint64_t a1, double a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_model] = a1;

  v6 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_preferredArtworkSize];
  *v6 = a2;
  v6[1] = a2;

  [v2 setNeedsLayout];
  v7 = sub_2662B0();
  sub_2A088(a1);

  v8 = *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_titleAccessibilityLabel];
  if (v8)
  {
    v9 = v8;
    sub_307D58();
    if (v10)
    {
      v11 = sub_30C098();
    }

    else
    {
      v11 = 0;
    }

    [v9 setAccessibilityLabel:v11];
  }

  v12 = sub_2663A8();
  if (v12)
  {
    v13 = v12;
    sub_307DC8();
    if (v14)
    {
      v15 = sub_30C098();
    }

    else
    {
      v15 = 0;
    }

    [v13 setText:v15];
  }

  v16 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel, sub_267EC4);
  sub_307D88();
  if (v17)
  {
    v18 = sub_30C098();
  }

  else
  {
    v18 = 0;
  }

  [v16 setText:v18];

  v19 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel, sub_266538);
  if (sub_307DE8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEC78, &qword_31C250);
    sub_79DC0();
    sub_30BFF8();

    v20 = sub_30C098();
  }

  else
  {
    v20 = 0;
  }

  [v19 setText:v20];

  v21 = sub_307D38();
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_subtitleAction;
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_subtitleAction] = v21;

  [*&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel] setUserInteractionEnabled:*&v3[v22] != 0];

  sub_266994(v23);
  return [v3 setNeedsLayout];
}

uint64_t sub_265A80(__int16 a1, void *a2)
{
  v3 = a1;
  if (a1)
  {
    sub_124C4(0, &qword_4019C0, UITraitCollection_ptr);
    v4 = sub_30C978();
    if (qword_3FAD80 != -1)
    {
      v20 = v4;
      swift_once();
      v4 = v20;
    }

    *&v22[58] = *(&xmmword_42A350 + 10);
    *&v22[16] = xmmword_42A330;
    *&v22[32] = *&qword_42A340;
    *&v22[48] = xmmword_42A350;
    v21 = xmmword_42A310;
    *v22 = *&qword_42A320;
    *&v31[8] = xmmword_42A310;
    *&v31[24] = *&qword_42A320;
    *&v31[40] = xmmword_42A330;
    v5 = 0x4033000000000000;
    if (v4)
    {
      v5 = 0x4030000000000000;
    }

    LOBYTE(v33[0]) = 0;
    v30 = v5;
    v31[0] = 0;
    *&v31[56] = *&qword_42A340;
    *&v31[72] = *&v22[48];
    *&v31[88] = *&v22[64];
    v32 = word_42A368 & 0x1FF | 0x8000;
    sub_8FC54(&v21, &v35);
    if (qword_3FAC38 != -1)
    {
      swift_once();
    }

    v6 = sub_30D6F8();
    v7 = __swift_project_value_buffer(v6, qword_4295D8);
    sub_231F6C(a2, v7, 1);
    *v39 = *&v31[48];
    *&v39[16] = *&v31[64];
    v40 = *&v31[80];
    v41 = v32;
    v35 = v30;
    v36 = *v31;
    v37 = *&v31[16];
    v38 = *&v31[32];
    sub_900A8(&v35);
  }

  sub_124C4(0, &qword_4019C0, UITraitCollection_ptr);
  if (sub_30C978())
  {
    if (qword_3FAD70 != -1)
    {
      swift_once();
    }

    v37 = xmmword_42A270;
    v38 = *&qword_42A280;
    *v39 = xmmword_42A290;
    *&v39[10] = *(&xmmword_42A290 + 10);
    v35 = xmmword_42A250;
    v36 = *&qword_42A260;
    v8 = sub_2DAA3C(&v35, a2);
    v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];

    [v9 lineHeight];
  }

  v10 = sub_30C978();
  if (v3)
  {
    v11 = 0x4035000000000000;
  }

  else
  {
    v11 = 0x4033000000000000;
  }

  if (qword_3FAD70 != -1)
  {
    v18 = v10;
    swift_once();
    v10 = v18;
  }

  *&v34[10] = *(&xmmword_42A290 + 10);
  v33[2] = xmmword_42A270;
  v33[3] = *&qword_42A280;
  *v34 = xmmword_42A290;
  v33[0] = xmmword_42A250;
  v33[1] = *&qword_42A260;
  *&v31[8] = xmmword_42A250;
  *&v31[24] = *&qword_42A260;
  *&v31[40] = xmmword_42A270;
  v12 = 0x4030000000000000;
  if ((v10 & 1) == 0)
  {
    v12 = v11;
  }

  v42 = 0;
  v30 = v12;
  v31[0] = 0;
  *&v31[56] = *&qword_42A280;
  *&v31[72] = *v34;
  *&v31[88] = *&v34[16];
  v32 = word_42A2A8 & 0x1FF | 0x8000;
  sub_8FC54(v33, &v35);
  if (qword_3FAC38 != -1)
  {
    swift_once();
  }

  v13 = sub_30D6F8();
  v14 = __swift_project_value_buffer(v13, qword_4295D8);
  sub_231F6C(a2, v14, 1);
  *v39 = *&v31[48];
  *&v39[16] = *&v31[64];
  v40 = *&v31[80];
  v41 = v32;
  v35 = v30;
  v36 = *v31;
  v37 = *&v31[16];
  v38 = *&v31[32];
  sub_900A8(&v35);
  v15 = sub_30C978();
  if (qword_3FAD78 != -1)
  {
    v19 = v15;
    swift_once();
    v15 = v19;
  }

  *&v28[10] = *(&xmmword_42A2F0 + 10);
  v26 = xmmword_42A2D0;
  v27 = *&qword_42A2E0;
  *v28 = xmmword_42A2F0;
  v24 = xmmword_42A2B0;
  v25 = *&qword_42A2C0;
  v16 = 0x4032000000000000;
  if (v15)
  {
    v16 = 0x4030000000000000;
  }

  v29 = 0;
  v21 = v16;
  v22[0] = 0;
  *&v22[8] = v24;
  *&v22[24] = v25;
  *&v22[40] = v26;
  *&v22[56] = v27;
  *&v22[72] = *v28;
  *&v22[88] = *&v28[16];
  v23 = word_42A308 & 0x1FF | 0x8000;
  sub_8FC54(&v24, &v30);
  sub_231F6C(a2, v14, 1);
  *&v31[48] = *&v22[48];
  *&v31[64] = *&v22[64];
  *&v31[80] = *&v22[80];
  v32 = v23;
  v30 = v21;
  *v31 = *v22;
  *&v31[16] = *&v22[16];
  *&v31[32] = *&v22[32];
  sub_900A8(&v30);
  return sub_307198();
}

void sub_265FE4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_model) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_titleAccessibilityLabel);
  if (v2)
  {
    [v2 setAccessibilityLabel:0];
  }

  v3 = sub_2663A8();
  if (v3)
  {
    v4 = v3;
    [v3 setText:0];
  }

  v5 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel, sub_267EC4);
  [v5 setText:0];

  v6 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel, sub_266538);
  [v6 setText:0];

  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_subtitleAction;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_subtitleAction) = 0;

  [*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel) setUserInteractionEnabled:*(v1 + v7) != 0];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView;
  v9 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView);
  v23[0] = 0;
  v23[1] = 0;
  v10 = *(&stru_2E8.reloff + (swift_isaMask & *v9));
  v11 = v9;
  v10(v23);

  v12 = *(v1 + v8);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView;
  v14 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView];
  v15 = v12;
  v16 = [v14 layer];
  [v16 removeAllAnimations];

  [*&v12[v13] setImage:0];
  [v15 invalidateIntrinsicContentSize];

  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_isHovering;
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_isHovering) == 1)
  {
    v18 = sub_2581A8();
    if (v18)
    {
      v22 = v18;
      if (*(v1 + v17) == 1)
      {
        *(v1 + v17) = 0;
      }

      ObjectType = swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v21 = (*(v20 + 16))(ObjectType, v20);
        sub_2A6FC(0, 0);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

char *sub_2662B0()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___artworkContainer;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___artworkContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___artworkContainer);
  }

  else
  {
    v4 = v0;
    v5 = qword_3FAF30;
    v6 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView);
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_42ACA8;
    v8 = unk_42ACB0;
    v9 = qword_42ACB8;
    v10 = qword_42ACC0;
    objc_allocWithZone(type metadata accessor for ArtworkContainer(0));
    v11 = v7;
    v12 = sub_29C44(0, v6, v7, v8, v9, v10);
    v13 = *(v4 + v1);
    *(v4 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

char *sub_2663A8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___ordinalLabel;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___ordinalLabel);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_style) == 1)
    {
      type metadata accessor for DynamicTypeLabel();
      if (qword_3FAD80 != -1)
      {
        swift_once();
      }

      v10[2] = xmmword_42A330;
      v10[3] = *&qword_42A340;
      v11[0] = xmmword_42A350;
      *(v11 + 10) = *(&xmmword_42A350 + 10);
      v10[0] = xmmword_42A310;
      v10[1] = *&qword_42A320;
      v8[2] = xmmword_42A330;
      v8[3] = *&qword_42A340;
      v9[0] = xmmword_42A350;
      *(v9 + 10) = *(&xmmword_42A350 + 10);
      v8[0] = xmmword_42A310;
      v8[1] = *&qword_42A320;
      sub_8FC54(v10, &v7);
      v3 = sub_235C3C(v8, 1, 0, 1);
      v4 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
      v4 = &dword_0 + 1;
    }

    *(v0 + v1) = v3;
    v5 = v3;
    sub_1C8C24(v4);
  }

  sub_1C8C34(v2);
  return v3;
}

id sub_2664D8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_266538()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_124C4(0, &qword_408100, UIFont_ptr);
  v1 = sub_30CE08();
  v2 = sub_30CD98();
  v3 = sub_30CD28();

  [v0 setFont:v3];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:1];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v4];

  return v0;
}

char *sub_26664C(__int16 a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView;
  sub_26FC0C();
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_model] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_isPresentedInSearch] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___artworkContainer] = 0;
  v6 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_preferredArtworkSize];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___ordinalLabel] = 1;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_titleAccessibilityLabel] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_explicitLabel] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_subtitleAction] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_isHovering] = 0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_objectGraph] = 0;
  v7 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_style];
  *v7 = a1 & 1;
  v7[1] = HIBYTE(a1) & 1;
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = objc_allocWithZone(UIAccessibilityElement);
  v10 = v8;
  v11 = [v9 initWithAccessibilityContainer:v10];
  v12 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_titleAccessibilityLabel];
  *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_titleAccessibilityLabel] = v11;

  v13 = sub_2662B0();
  *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews16ArtworkContainer_delegate + 8] = &off_3C26F8;
  swift_unknownObjectWeakAssign();

  [v10 addSubview:*&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___artworkContainer]];
  v14 = sub_2663A8();
  if (v14)
  {
    v15 = v14;
    [v10 addSubview:v14];
  }

  v16 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel, sub_267EC4);
  [v10 addSubview:v16];

  v17 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel, sub_266538);
  [v10 addSubview:v17];

  sub_124C4(0, &qword_4019C0, UITraitCollection_ptr);
  if (sub_30C988())
  {
    sub_E8C88();
    v18 = *&v10[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel];
    v19 = objc_allocWithZone(UITapGestureRecognizer);
    v20 = v18;
    v21 = [v19 initWithTarget:v10 action:"subtitleTapped"];
    [v20 addGestureRecognizer:v21];
  }

  v22 = v10;
  [v22 setIsAccessibilityElement:1];
  [v22 setAccessibilityTraits:UIAccessibilityTraitButton];

  return v22;
}

void sub_266994(__n128 a1)
{
  v2 = sub_307D88();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 && (sub_307D08() & 1) != 0)
  {

    sub_266A84();
  }

  else
  {
LABEL_9:
    v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_explicitLabel);
    if (v7)
    {
      v8 = v7;
      [v8 setText:0];
      [v8 setHidden:1];
    }
  }
}

void sub_266A84()
{
  swift_beginAccess();
  if (off_40D118)
  {
    sub_12670((off_40D118 + 6), v4);
    __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
    sub_308FC8();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_266B8C();
    v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_explicitLabel);
    if (v1)
    {
      v2 = v1;
      v3 = sub_30C098();

      [v2 setText:v3];

      [v2 setHidden:0];
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_266B8C()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_explicitLabel;
  if (!*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_explicitLabel])
  {
    v2 = v0;
    v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v3 setTextAlignment:1];
    sub_124C4(0, &qword_408100, UIFont_ptr);
    v4 = sub_30CDB8();
    v5 = sub_30CD98();
    v6 = sub_30CD28();

    [v3 setFont:v6];
    [v3 setAdjustsFontForContentSizeCategory:1];
    [v3 setNumberOfLines:1];
    v7 = [objc_opt_self() secondaryLabelColor];
    [v3 setTextColor:v7];

    [v3 setHidden:1];
    [v2 addSubview:v3];
    [v2 setNeedsLayout];
    v8 = *&v2[v1];
    *&v2[v1] = v3;
  }
}

double sub_266D2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_subtitleAction);
  if (v1)
  {
    swift_getObjectType();
    v7[3] = sub_30B038();
    v7[4] = sub_268018(&qword_3FBDA0, 255, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    v7[0] = v1;
    swift_retain_n();
    v2 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel, sub_266538);
    v6[3] = sub_124C4(0, &qword_408868, UILabel_ptr);
    v6[0] = v2;
    sub_268018(&qword_40B110, v3, type metadata accessor for LargeLockupView, &unk_330288);
    sub_3025C8();

    sub_9097C(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_267E14(v4);
  }

  return result;
}

void sub_266EC4()
{
  v1 = v0;
  v89.receiver = v0;
  v89.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v89, "layoutSubviews");
  [v0 bounds];
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  v6 = CGRectGetWidth(v90);
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  v7 = CGRectGetWidth(v91);
  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = width;
  v92.size.height = height;
  v8 = CGRectGetMidX(v92) - v6 * 0.5;
  v93.origin.x = x;
  v93.origin.y = y;
  v93.size.width = width;
  v93.size.height = height;
  MinY = CGRectGetMinY(v93);
  v10 = sub_2662B0();
  [v10 setFrame:{v8, MinY, v6, v7}];

  sub_26761C();
  v77 = v12;
  v78 = v11;
  v13 = [v1 traitCollection];
  v76 = [v13 layoutDirection];

  v94.origin.x = v8;
  v94.origin.y = MinY;
  v94.size.width = v6;
  v94.size.height = v7;
  MaxY = CGRectGetMaxY(v94);
  v14 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_style];
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_style + 1] == 1)
  {
    MaxY = MaxY + 10.0;
    v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___artworkContainer;
    v16 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___artworkContainer] layer];
    [v16 setMasksToBounds:1];

    v17 = [*&v1[v15] layer];
    [v17 setCornerRadius:v6 * 0.5];
  }

  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  MinX = CGRectGetMinX(v95);
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  v75 = CGRectGetWidth(v96);
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v18 = CGRectGetHeight(v97);
  v98.origin.x = v8;
  v98.origin.y = MinY;
  v98.size.width = v6;
  v98.size.height = v7;
  v19 = CGRectGetHeight(v98);
  v20 = sub_2663A8();
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 text];
  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = v22;
  v24 = sub_30C0D8();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
LABEL_16:

LABEL_17:
    v34 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_124C4(0, &qword_4019C0, UITraitCollection_ptr);
  v28 = sub_30C978();
  if (qword_3FAD80 != -1)
  {
    v60 = v28;
    swift_once();
    v28 = v60;
  }

  v83 = xmmword_42A310;
  v84 = *&qword_42A320;
  v85 = xmmword_42A330;
  v86 = *&qword_42A340;
  *v87 = xmmword_42A350;
  *&v87[10] = *(&xmmword_42A350 + 10);
  v69 = *&qword_42A320;
  v72 = xmmword_42A310;
  v63 = *&qword_42A340;
  v66 = xmmword_42A330;
  v29 = *v87;
  v30 = *(&xmmword_42A350 + 10) >> 48;
  v31 = word_42A368 & 0x1FF | 0x8000;
  if (v28)
  {
    v32 = 0x4030000000000000;
  }

  else
  {
    v32 = 0x4033000000000000;
  }

  v80[0] = 0;
  sub_8FC54(&v83, v81);
  v33 = v21;
  v34 = sub_CB81C(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_CB81C((v35 > 1), v36 + 1, 1, v34);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[128 * v36];
  *(v37 + 4) = v33;
  *(v37 + 5) = v32;
  *(v37 + 6) = 0;
  v37[56] = 0;
  *(v37 + 4) = v72;
  *(v37 + 5) = v69;
  *(v37 + 6) = v66;
  *(v37 + 7) = v63;
  *(v37 + 8) = v29;
  *(v37 + 18) = v30;
  *(v37 + 76) = v31;
  *(v37 + 77) = 1;
LABEL_18:
  v70 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel, sub_267EC4);
  v38 = *v14;
  sub_124C4(0, &qword_4019C0, UITraitCollection_ptr);
  v39 = sub_30C978();
  if (v38)
  {
    v40 = 0x4035000000000000;
  }

  else
  {
    v40 = 0x4033000000000000;
  }

  if (qword_3FAD70 != -1)
  {
    v59 = v39;
    swift_once();
    v39 = v59;
  }

  v83 = xmmword_42A250;
  v84 = *&qword_42A260;
  v85 = xmmword_42A270;
  v86 = *&qword_42A280;
  *v87 = xmmword_42A290;
  *&v87[10] = *(&xmmword_42A290 + 10);
  v64 = *&qword_42A260;
  v67 = xmmword_42A250;
  v61 = *&qword_42A280;
  v62 = xmmword_42A270;
  v41 = *v87;
  v42 = *(&xmmword_42A290 + 10) >> 48;
  v43 = word_42A2A8;
  if (v39)
  {
    v44 = 0x4030000000000000;
  }

  else
  {
    v44 = v40;
  }

  v88 = 0;
  sub_8FC54(&v83, v81);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_CB81C(0, *(v34 + 2) + 1, 1, v34);
  }

  v45 = v43 & 0x1FF | 0x8000;
  v47 = *(v34 + 2);
  v46 = *(v34 + 3);
  if (v47 >= v46 >> 1)
  {
    v34 = sub_CB81C((v46 > 1), v47 + 1, 1, v34);
  }

  *(v34 + 2) = v47 + 1;
  v48 = &v34[128 * v47];
  *(v48 + 4) = v70;
  *(v48 + 5) = v44;
  *(v48 + 6) = 0;
  v48[56] = 0;
  *(v48 + 4) = v67;
  *(v48 + 5) = v64;
  *(v48 + 6) = v62;
  *(v48 + 7) = v61;
  *(v48 + 8) = v41;
  *(v48 + 18) = v42;
  *(v48 + 76) = v45;
  *(v48 + 77) = 1;
  v49 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel, sub_266538);
  v50 = sub_30C978();
  if (qword_3FAD78 != -1)
  {
    swift_once();
  }

  v81[0] = xmmword_42A2B0;
  v81[1] = *&qword_42A2C0;
  v81[2] = xmmword_42A2D0;
  v81[3] = *&qword_42A2E0;
  *v82 = xmmword_42A2F0;
  *&v82[10] = *(&xmmword_42A2F0 + 10);
  v71 = *&qword_42A2C0;
  v73 = xmmword_42A2B0;
  v65 = *&qword_42A2E0;
  v68 = xmmword_42A2D0;
  v51 = *v82;
  v52 = *(&xmmword_42A2F0 + 10) >> 48;
  v53 = word_42A308;
  v80[96] = 0;
  sub_8FC54(v81, v80);
  v55 = *(v34 + 2);
  v54 = *(v34 + 3);
  if (v55 >= v54 >> 1)
  {
    v34 = sub_CB81C((v54 > 1), v55 + 1, 1, v34);
  }

  v56 = v78 + MinX;
  *(v34 + 2) = v55 + 1;
  if (v76 != &dword_0 + 1)
  {
    v56 = MinX;
  }

  v57 = 0x4032000000000000;
  if (v50)
  {
    v57 = 0x4030000000000000;
  }

  v58 = &v34[128 * v55];
  *(v58 + 4) = v49;
  *(v58 + 5) = v57;
  *(v58 + 6) = 0;
  v58[56] = 0;
  *(v58 + 4) = v73;
  *(v58 + 5) = v71;
  *(v58 + 6) = v68;
  *(v58 + 7) = v65;
  *(v58 + 8) = v51;
  *(v58 + 18) = v52;
  *(v58 + 76) = v53 & 0x1FF | 0x8000;
  *(v58 + 77) = 1;
  sub_3005CC(v1, v34, v56, MaxY, v75 - v78, v18 - v19);

  sub_267810(v78, v77);
}

void sub_26761C()
{
  v1 = sub_30D6F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_explicitLabel];
  if (v5)
  {
    v6 = v5;
    if ([v6 isHidden])
    {
    }

    else
    {
      [v0 bounds];
      v8 = v7;
      v10 = v9;
      v11 = [v6 numberOfLines];
      v12 = [objc_allocWithZone(NSStringDrawingContext) init];
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v13 = v12;
        [v12 setMaximumNumberOfLines:v11];
        [v13 setWrapsForTruncationMode:v11 != 1];
        sub_2697EC(v6, v13, v8, v10);
        (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.awayFromZero(_:), v1);
        sub_302E78();
        sub_302E78();

        (*(v2 + 8))(v4, v1);
      }
    }
  }
}

void sub_267810(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_explicitLabel];
  if (v3)
  {
    v12 = v3;
    if (([v12 isHidden] & 1) == 0)
    {
      [v12 sizeToFit];
      v6 = sub_2664D8(&OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel, sub_267EC4);
      [v6 frame];
      v8 = v7;

      v9 = [v2 traitCollection];
      v10 = [v9 layoutDirection];

      MaxX = 0.0;
      if (v10 != &dword_0 + 1)
      {
        [*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel] frame];
        MaxX = CGRectGetMaxX(v14);
      }

      [v12 setFrame:{MaxX, v8, a1, a2}];
    }
  }
}

uint64_t sub_267C64()
{
  v0 = sub_303DF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3030E8();
  if ((*(v1 + 88))(v3, v0) == enum case for CropCode.boundingBox(_:))
  {
    return 6;
  }

  sub_3030C8();
  v5 = sub_303118();
  (*(v1 + 8))(v3, v0);
  return v5;
}

void sub_267D84(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_objectGraph) = a1;

  v3 = sub_2662B0();
  sub_2AE20(a1);
}

double sub_267E14(__n128 a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_isPresentedInSearch) == 1 && *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_model))
  {
    if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_objectGraph))
    {
      sub_30A5A8();

      sub_30B8E8();

      sub_30A578();
    }
  }

  return result;
}

id sub_267EC4()
{
  v0 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_124C4(0, &qword_408100, UIFont_ptr);
  v1 = sub_30CE48();
  v2 = sub_30CD98();
  v3 = sub_30CD28();

  [v0 setFont:v3];
  [v0 setAdjustsFontForContentSizeCategory:1];
  sub_124C4(0, &qword_4019C0, UITraitCollection_ptr);
  if (sub_30C978())
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v0 setNumberOfLines:v4];
  v5 = [objc_opt_self() labelColor];
  [v0 setTextColor:v5];

  return v0;
}

uint64_t sub_268018(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_268060(double a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_cachingArtworkView;
  sub_26FC0C();
  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_model) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_isPresentedInSearch) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___artworkContainer) = 0;
  v4 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_preferredArtworkSize);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___ordinalLabel) = 1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_titleAccessibilityLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView____lazy_storage___subtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_explicitLabel) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_subtitleAction) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_isHovering) = 0;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15LargeLockupView_objectGraph) = 0;
  sub_30D648();
  __break(1u);
}

char *sub_268170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_308BD8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v13 = &v71 - v11;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_268D30(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), &v71 - v11, v12);
    v15 = sub_2689DC();
    sub_268D94(v13, v16);
  }

  else
  {
    v15 = 0;
  }

  v3[OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment] = v15;
  v75.receiver = v3;
  v75.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v75, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v18 = v17;
  v74 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v19 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v20 = *(v7 + 72);
    v71 = a1;
    v72 = v17;
    v21 = v17;
    v23 = _swiftEmptyArrayStorage;
    do
    {
      sub_268D30(v19, v9, v22);
      v24 = [v21 traitCollection];
      v25 = [v24 horizontalSizeClass];

      v26 = sub_B3158(v25, v73);
      sub_268D94(v9, v27);
      if (v26)
      {
        sub_30C348();
        if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_30C378();
        }

        sub_30C3C8();
        v23 = v74;
      }

      v19 += v20;
      --v14;
    }

    while (v14);

    v18 = v72;
    if (!(v23 >> 62))
    {
LABEL_12:
      result = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
      if (result > 0)
      {
        goto LABEL_13;
      }

LABEL_20:

      return v18;
    }
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_12;
    }
  }

  result = sub_30D668();
  if (result <= 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (result != &dword_0 + 1)
  {
    v31 = objc_allocWithZone(UIStackView);
    sub_124C4(0, &qword_3FBD90, UIView_ptr);
    isa = sub_30C358().super.isa;

    v30 = [v31 initWithArrangedSubviews:isa];

    [v30 setSpacing:16.0];
    [v30 setAlignment:3];
    goto LABEL_22;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    v29 = sub_30D578();
    goto LABEL_17;
  }

  if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
  {
    v29 = *(v23 + 32);
LABEL_17:
    v30 = v29;

LABEL_22:
    [v18 addSubview:v30];
    if (*(v18 + OBJC_IVAR____TtC23ShelfKitCollectionViews23LargeTitleAccessoryView_wantsBaselineAlignment) == 1)
    {
      v33 = v30;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      v34 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_31D480;
      v36 = [v33 firstBaselineAnchor];
      v37 = [v18 bottomAnchor];
      v38 = [v36 constraintEqualToAnchor:v37];

      *(v35 + 32) = v38;
      v39 = [v33 leadingAnchor];
      v40 = [v18 leadingAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];

      *(v35 + 40) = v41;
      v42 = [v33 trailingAnchor];
      v43 = [v18 trailingAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];

      *(v35 + 48) = v44;
      v45 = [v18 heightAnchor];
      v46 = [v33 heightAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      *(v35 + 56) = v47;
      sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
      v48 = sub_30C358().super.isa;

      [v34 activateConstraints:v48];
    }

    else
    {
      v49 = [v30 superview];
      if (v49)
      {
        v50 = v49;
        [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
        v51 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_31D480;
        v53 = [v30 leftAnchor];
        v54 = [v50 leftAnchor];
        v55 = [v53 constraintEqualToAnchor:v54];

        *(v52 + 32) = v55;
        v56 = [v30 rightAnchor];
        v57 = [v50 rightAnchor];
        v58 = [v56 constraintEqualToAnchor:v57];

        *(v52 + 40) = v58;
        v59 = [v30 topAnchor];
        v60 = [v50 topAnchor];
        v61 = [v59 constraintEqualToAnchor:v60];

        *(v52 + 48) = v61;
        v62 = [v30 bottomAnchor];
        v63 = [v50 bottomAnchor];
        v64 = [v62 constraintEqualToAnchor:v63];

        *(v52 + 56) = v64;
        sub_124C4(0, &qword_403000, NSLayoutConstraint_ptr);
        v65 = sub_30C358().super.isa;

        [v51 activateConstraints:v65];
      }

      v66 = v30;
    }

    [v30 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v68 = v67;
    v70 = v69;

    [v18 setFrame:{0.0, 0.0, v68, v70}];

    return v18;
  }

  __break(1u);
  return result;
}

BOOL sub_2689DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_307678();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_308BD8();
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268D30(v1, v12, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 4)
      {
LABEL_11:
        sub_268D94(v12, v14);
        return 0;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      goto LABEL_11;
    }

    sub_268D94(v12, v14);
    return 1;
  }

  result = 0;
  if (v15 > 8)
  {
    if (v15 != 9)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((v15 - 7) >= 2)
  {
    (*(v6 + 32))(v8, v12, v5);
    sub_307638();
    (*(v6 + 8))(v8, v5);
    v17 = sub_3031C8();
    v18 = (*(*(v17 - 8) + 48))(v4, 1, v17) == 1;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_400C40, &unk_31E410) + 64);
    sub_EB68(v4, &unk_402FF0, &unk_31EF40);
    sub_EB68(&v12[v19], &qword_3FE8B0, &qword_330320);
    return v18;
  }

  return result;
}

uint64_t sub_268D30(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_308BD8();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_268D94(uint64_t a1, double a2)
{
  v3 = sub_308BD8();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double CGSize.rounded(_:toScaleOf:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_26B3D4(a1, a2, a3, a4);
}

void sub_268E60(uint64_t a1, uint64_t a2, Swift::UInt a3, uint64_t a4, void *a5, double a6, double a7)
{
  sub_30D868();
  sub_30C1F8();
  v12 = a6;
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  sub_30D828(LODWORD(v12));
  v13 = a7;
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  sub_30D828(LODWORD(v13));
  sub_30D808(a3);
  if (!a4)
  {
LABEL_22:
    if (a5)
    {
      v22 = a5;
      [v22 minimumScaleFactor];
      if (v23 == 0.0)
      {
        v23 = 0.0;
      }

      sub_30D838(*&v23);
      [v22 actualScaleFactor];
      if (v24 == 0.0)
      {
        v24 = 0.0;
      }

      sub_30D838(*&v24);
      sub_30D818([v22 wantsNumberOfLineFragments]);
      sub_30D808([v22 numberOfLineFragments]);
      sub_30D808([v22 maximumNumberOfLines]);
      sub_30D818([v22 wantsBaselineOffset]);
      [v22 baselineOffset];
      if (v25 == 0.0)
      {
        v25 = 0.0;
      }

      sub_30D838(*&v25);
      sub_30D818([v22 wantsScaledBaselineOffset]);
      [v22 scaledBaselineOffset];
      if (v26 == 0.0)
      {
        v26 = 0.0;
      }

      sub_30D838(*&v26);
      sub_30D818([v22 wantsScaledLineHeight]);
      [v22 scaledLineHeight];
      if (v27 == 0.0)
      {
        v27 = 0.0;
      }

      sub_30D838(*&v27);
      [v22 firstBaselineOffset];
      if (v28 == 0.0)
      {
        v28 = 0.0;
      }

      sub_30D838(*&v28);
    }

    v42 = v38[2];
    v43 = v38[3];
    v44 = v39;
    v40 = v38[0];
    v41 = v38[1];
    sub_30D848();
    return;
  }

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = sub_269FD0(*(a4 + 16), 0);
    v16 = sub_26B248(&v40, (v15 + 4), v14, a4);
    v17 = v40;

    sub_649B0(v17);
    if (v16 == v14)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_10:
  v29 = a5;
  *&v40 = v15;
  sub_269EE0(&v40);
  v18 = 0;
  v19 = v40;
  v20 = *(v40 + 16);
  if (v20)
  {
    goto LABEL_13;
  }

LABEL_16:
  v37 = 0;
  v18 = v20;
  v35 = 0u;
  v36 = 0u;
  while (1)
  {
    v40 = v35;
    v41 = v36;
    *&v42 = v37;
    v21 = v35;
    if (!v35)
    {

      a5 = v29;
      goto LABEL_22;
    }

    sub_1DA94((&v40 + 8), v34);
    sub_30C0D8();
    sub_30C1F8();

    sub_1DA1C(v34, v33);
    if (swift_dynamicCast())
    {
      v35 = v30;
      v36 = v31;
      v37 = v32;
      sub_30D4F8();

      sub_196EC8(&v35);
      __swift_destroy_boxed_opaque_existential_1(v34);
      if (v18 == v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v34);

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_EB68(&v30, &qword_406CA0, &qword_329000);
      if (v18 == v20)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *(v19 + 16))
    {
      goto LABEL_38;
    }

    sub_26B584(v19 + 32 + 40 * v18++, &v35);
  }

  __break(1u);
LABEL_38:
  __break(1u);

  __break(1u);
}

double sub_2692C0(void *a1, Swift::UInt a2, void *a3, void *a4, double a5, double a6)
{
  if (!a1)
  {
    return 0.0;
  }

  v11 = a1;
  if ([v11 length] < 1)
  {
    v13 = sub_2D6CB0(_swiftEmptyArrayStorage);
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v12 = [v11 attributesAtIndex:0 effectiveRange:0];
  type metadata accessor for Key(0);
  sub_CFA40();
  v13 = sub_30BF98();

  if (a4)
  {
LABEL_4:
    v37 = sub_124C4(0, &qword_408100, UIFont_ptr);
    *&v35 = a4;
    sub_1DA94(&v35, v34);
    v14 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v13;
    sub_295508(v34, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
  }

LABEL_5:
  v16 = [v11 string];
  v17 = sub_30C0D8();
  v19 = v18;

  sub_268E60(v17, v19, a2, v13, a3, a5, a6);
  v21 = v20;

  if (qword_3FAE40 != -1)
  {
    swift_once();
  }

  *&v34[0] = v21;

  sub_303D28();

  if (v38)
  {
    if (a4)
    {
      v22 = v11;
      v23 = a4;
      [v22 mutableCopy];
      sub_30D448();
      swift_unknownObjectRelease();
      sub_124C4(0, &qword_404AB8, NSMutableAttributedString_ptr);
      if (swift_dynamicCast())
      {
        v24 = *&v34[0];
        v25 = v23;
        v26 = v24;
        [v26 addAttribute:NSFontAttributeName value:v25 range:{0, objc_msgSend(v26, "length")}];

        v22 = v26;
      }

      else
      {
      }
    }

    else
    {
      v22 = v11;
    }

    [v22 boundingRectWithSize:a2 options:a3 context:{a5, a6}];
    v27 = v28;
    *&v35 = v28;
    *(&v35 + 1) = v29;
    v36 = v30;
    v37 = v31;
    v38 = 0;
    *&v34[0] = v21;

    sub_303D38();
  }

  else
  {
    v27 = *&v35;
  }

  return v27;
}

uint64_t sub_26965C(uint64_t a1, uint64_t a2)
{
  sub_26B584(a1, &v16);
  v3 = v16;
  v4 = sub_30C0D8();
  v6 = v5;

  sub_26B584(a2, &v14);
  v7 = v14;
  v8 = sub_30C0D8();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_30D728();
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v12 & 1;
}

uint64_t sub_269744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B150, qword_330328);
  swift_allocObject();
  result = sub_303D08();
  qword_40B148 = result;
  return result;
}

double CGSize.rounded(_:toScale:)(uint64_t a1, double a2, double a3, double a4)
{
  sub_302E58();
  v5 = v4;
  sub_302E58();
  return v5;
}

void sub_2697EC(void *a1, void *a2, double a3, double a4)
{
  v8 = [a1 attributedText];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    v11 = [a1 font];
    sub_2692C0(v9, 1uLL, a2, v11, a3, a4);
  }

  else
  {
    v12 = [a1 text];
    if (v12)
    {
      v13 = v12;
      v14 = sub_30C0D8();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70, &qword_31D650);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315430;
    *(inited + 32) = NSFontAttributeName;
    v18 = NSFontAttributeName;
    v19 = [a1 font];
    if (v19)
    {
      *(inited + 40) = v19;
      v20 = sub_2D6EEC(inited);
      swift_setDeallocating();
      sub_EB68(inited + 32, &qword_40A140, &qword_32E1E0);
      if (v16)
      {
        sub_2D618C(v20);
        sub_268E60(v14, v16, 1uLL, v21, a2, a3, a4);
        v23 = v22;

        if (qword_3FAE40 != -1)
        {
          swift_once();
        }

        sub_303D28();

        if (v26)
        {
          v24 = sub_30C098();
          sub_2D618C(v20);
          type metadata accessor for Key(0);
          sub_CFA40();
          isa = sub_30BF88().super.isa;

          [v24 boundingRectWithSize:1 options:isa attributes:a2 context:{a3, a4, v23}];

          sub_303D38();
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_269B38(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = sub_30D6F8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(NSStringDrawingContext) init];
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = v19;
    [v19 setMaximumNumberOfLines:a2];
    [v20 setWrapsForTruncationMode:a2 != 1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FFD70, &qword_31D650);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_315430;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 40) = a1;
    v22 = NSFontAttributeName;
    v23 = a1;
    v7 = sub_2D6EEC(inited);
    swift_setDeallocating();
    sub_EB68(inited + 32, &qword_40A140, &qword_32E1E0);
    a2 = v20;
    sub_2D618C(v7);
    sub_268E60(a3, a4, 1uLL, v24, v20, a5, a6);
    v8 = v25;

    if (qword_3FAE40 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v37 = v8;

  sub_303D28();

  if (v42)
  {
    v26 = sub_30C098();
    sub_2D618C(v7);
    type metadata accessor for Key(0);
    sub_CFA40();
    isa = sub_30BF88().super.isa;

    [v26 boundingRectWithSize:1 options:isa attributes:a2 context:{a5, a6}];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v38 = v29;
    v39 = v31;
    v40 = v33;
    v41 = v35;
    v42 = 0;
    v37 = v8;

    sub_303D38();
  }

  else
  {
    v29 = v38;
  }

  (*(v16 + 104))(v18, enum case for FloatingPointRoundingRule.awayFromZero(_:), v15);
  sub_302E58();
  sub_302E58();

  (*(v16 + 8))(v18, v15);
  return v29;
}

void sub_269EE0(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF848(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_26A060(v4);
  *a1 = v2;
}

void *sub_269F4C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE2C0, &qword_31B308);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_269FD0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406410, &qword_328B80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void sub_26A060(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_30D6C8(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406418, &qword_328B88);
        v5 = sub_30C3B8();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26A36C(v7, v8, a1, v4);
      v6[2] = 0;

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
    sub_26A168(0, v2, 1, a1);
  }
}

uint64_t sub_26A168(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v4 = v32 + 40 * a3;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v23 = v5;
    while (1)
    {
      sub_26B584(v4, v31);
      v6 = v4 - 40;
      sub_26B584(v4 - 40, v30);
      sub_26B584(v31, &v28);
      v7 = v28;
      v8 = sub_30C0D8();
      v10 = v9;

      sub_26B584(v30, &v26);
      v11 = v26;
      v12 = sub_30C0D8();
      v14 = v13;

      if (v8 == v12 && v10 == v14)
      {

        __swift_destroy_boxed_opaque_existential_1(v27);
        __swift_destroy_boxed_opaque_existential_1(v29);
        sub_EB68(v30, &qword_406418, &qword_328B88);
        result = sub_EB68(v31, &qword_406418, &qword_328B88);
LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 40;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_30D728();

      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_EB68(v30, &qword_406418, &qword_328B88);
      result = sub_EB68(v31, &qword_406418, &qword_328B88);
      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v17 = *(v4 + 32);
      v19 = *v4;
      v18 = *(v4 + 16);
      v20 = *(v4 - 24);
      *v4 = *v6;
      *(v4 + 16) = v20;
      *(v4 + 32) = *(v4 - 8);
      *v6 = v19;
      *(v4 - 24) = v18;
      v4 -= 40;
      *(v6 + 32) = v17;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_26A36C(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_100:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v104 = v4;
    }

    else
    {
LABEL_137:
      v104 = sub_1B0B98(v4);
    }

    v129 = v104;
    v105 = *(v104 + 2);
    if (v105 >= 2)
    {
      v4 = 40;
      while (*a3)
      {
        v106 = *&v104[16 * v105];
        v107 = v104;
        v108 = *&v104[16 * v105 + 24];
        sub_26AC3C((*a3 + 40 * v106), (*a3 + 40 * *&v104[16 * v105 + 16]), *a3 + 40 * v108, v10);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v108 < v106)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1B0B98(v107);
        }

        if (v105 - 2 >= *(v107 + 2))
        {
          goto LABEL_131;
        }

        v109 = &v107[16 * v105];
        *v109 = v106;
        *(v109 + 1) = v108;
        v129 = v107;
        sub_1B0B0C(v105 - 1);
        v104 = v129;
        v105 = *(v129 + 16);
        if (v105 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_141;
    }

    goto LABEL_115;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    if (v8 + 1 < v7)
    {
      v113 = v9;
      v4 = *a3;
      sub_26B584(*a3 + 40 * (v8 + 1), v128);
      sub_26B584(v4 + 40 * v8, v127);
      v120 = sub_26965C(v128, v127);
      if (!v6)
      {
        sub_EB68(v127, &qword_406418, &qword_328B88);
        sub_EB68(v128, &qword_406418, &qword_328B88);
        v11 = v8 + 2;
        v111 = v8;
        v12 = 40 * v8;
        v13 = v4 + 40 * v10 + 80;
        while (v7 != v11)
        {
          v15 = v7;
          sub_26B584(v13, v128);
          sub_26B584(v13 - 40, v127);
          sub_26B584(v128, &v125);
          v16 = v125;
          v17 = sub_30C0D8();
          v19 = v18;

          sub_26B584(v127, &v123);
          v20 = v123;
          v21 = sub_30C0D8();
          v23 = v22;

          if (v17 == v21 && v19 == v23)
          {
            v14 = 0;
          }

          else
          {
            v14 = sub_30D728();
          }

          __swift_destroy_boxed_opaque_existential_1(v124);
          __swift_destroy_boxed_opaque_existential_1(v126);
          v4 = &qword_406418;
          sub_EB68(v127, &qword_406418, &qword_328B88);
          sub_EB68(v128, &qword_406418, &qword_328B88);
          ++v11;
          v13 += 40;
          v7 = v15;
          v6 = 0;
          if ((v120 ^ v14))
          {
            v7 = v11 - 1;
            break;
          }
        }

        v10 = v111;
        v9 = v113;
        if (v120)
        {
          if (v7 < v111)
          {
            goto LABEL_136;
          }

          if (v111 < v7)
          {
            v24 = 40 * v7 - 40;
            v25 = v7;
            v26 = v111;
            do
            {
              if (v26 != --v25)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_140;
                }

                v28 = v27 + v12;
                v29 = v27 + v24;
                v30 = *v28;
                v31 = *(v28 + 16);
                v32 = *(v28 + 32);
                v33 = *(v29 + 32);
                v34 = *(v29 + 16);
                *v28 = *v29;
                *(v28 + 16) = v34;
                *(v28 + 32) = v33;
                *(v29 + 32) = v32;
                *v29 = v30;
                *(v29 + 16) = v31;
              }

              ++v26;
              v24 -= 40;
              v12 += 40;
            }

            while (v26 < v25);
          }
        }

        goto LABEL_23;
      }

      sub_EB68(v127, &qword_406418, &qword_328B88);
      sub_EB68(v128, &qword_406418, &qword_328B88);
LABEL_115:

      return;
    }

    v7 = v8 + 1;
LABEL_23:
    v35 = a3[1];
    if (v7 >= v35)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_133;
    }

    if (v7 - v10 >= a4)
    {
LABEL_32:
      v37 = v7;
      if (v7 < v10)
      {
        goto LABEL_132;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_134;
    }

    if (v10 + a4 >= v35)
    {
      v36 = a3[1];
    }

    else
    {
      v36 = v10 + a4;
    }

    if (v36 < v10)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v7 == v36)
    {
      goto LABEL_32;
    }

    v112 = v10;
    v114 = v9;
    v119 = v6;
    v84 = *a3;
    v85 = *a3 + 40 * v7;
    v86 = v10 - v7;
    v116 = v36;
LABEL_85:
    v121 = v7;
    v117 = v86;
    v118 = v85;
    v87 = v86;
    v88 = v85;
LABEL_86:
    sub_26B584(v88, v128);
    v89 = v88 - 40;
    sub_26B584(v88 - 40, v127);
    sub_26B584(v128, &v125);
    v90 = v125;
    v91 = sub_30C0D8();
    v93 = v92;

    sub_26B584(v127, &v123);
    v94 = v123;
    v95 = sub_30C0D8();
    v97 = v96;

    if (v91 != v95 || v93 != v97)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v124);
    __swift_destroy_boxed_opaque_existential_1(v126);
    v4 = &qword_406418;
    sub_EB68(v127, &qword_406418, &qword_328B88);
    sub_EB68(v128, &qword_406418, &qword_328B88);
LABEL_84:
    v7 = v121 + 1;
    v85 = v118 + 40;
    v86 = v117 - 1;
    v37 = v116;
    if (v121 + 1 != v116)
    {
      goto LABEL_85;
    }

    v6 = v119;
    v10 = v112;
    v9 = v114;
    if (v116 < v112)
    {
      goto LABEL_132;
    }

LABEL_33:
    v38 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v38;
    }

    else
    {
      v9 = sub_CA96C(0, *(v38 + 2) + 1, 1, v38);
    }

    v4 = *(v9 + 2);
    v39 = *(v9 + 3);
    v40 = v4 + 1;
    if (v4 >= v39 >> 1)
    {
      v9 = sub_CA96C((v39 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v40;
    v41 = &v9[16 * v4];
    *(v41 + 4) = v10;
    *(v41 + 5) = v37;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    v8 = v37;
    if (v4)
    {
      while (2)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          v48 = &v9[16 * v40 + 32];
          v49 = *(v48 - 64);
          v50 = *(v48 - 56);
          v54 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          if (v54)
          {
            goto LABEL_119;
          }

          v53 = *(v48 - 48);
          v52 = *(v48 - 40);
          v54 = __OFSUB__(v52, v53);
          v46 = v52 - v53;
          v47 = v54;
          if (v54)
          {
            goto LABEL_120;
          }

          v55 = &v9[16 * v40];
          v57 = *v55;
          v56 = *(v55 + 1);
          v54 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v54)
          {
            goto LABEL_122;
          }

          v54 = __OFADD__(v46, v58);
          v59 = v46 + v58;
          if (v54)
          {
            goto LABEL_125;
          }

          if (v59 >= v51)
          {
            v77 = &v9[16 * v43 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v54 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v54)
            {
              goto LABEL_129;
            }

            if (v46 < v80)
            {
              v43 = v40 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v47)
            {
              goto LABEL_121;
            }

            v60 = &v9[16 * v40];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_124;
            }

            v66 = &v9[16 * v43 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_128;
            }

            if (v64 + v69 < v46)
            {
              goto LABEL_66;
            }

            if (v46 < v69)
            {
              v43 = v40 - 2;
            }
          }
        }

        else
        {
          if (v40 == 3)
          {
            v44 = *(v9 + 4);
            v45 = *(v9 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
            goto LABEL_52;
          }

          v70 = &v9[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_66:
          if (v65)
          {
            goto LABEL_123;
          }

          v73 = &v9[16 * v43];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_126;
          }

          if (v76 < v64)
          {
            break;
          }
        }

        v4 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v10 = v9;
        v81 = *&v9[16 * v4 + 32];
        v82 = *&v9[16 * v43 + 40];
        sub_26AC3C((*a3 + 40 * v81), (*a3 + 40 * *&v9[16 * v43 + 32]), *a3 + 40 * v82, v42);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v82 < v81)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B0B98(v10);
        }

        if (v4 >= *(v10 + 16))
        {
          goto LABEL_118;
        }

        v83 = v10 + 16 * v4;
        *(v83 + 32) = v81;
        *(v83 + 40) = v82;
        v129 = v10;
        sub_1B0B0C(v43);
        v9 = v129;
        v40 = *(v129 + 16);
        if (v40 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_100;
    }
  }

  v4 = sub_30D728();

  __swift_destroy_boxed_opaque_existential_1(v124);
  __swift_destroy_boxed_opaque_existential_1(v126);
  sub_EB68(v127, &qword_406418, &qword_328B88);
  sub_EB68(v128, &qword_406418, &qword_328B88);
  if ((v4 & 1) == 0)
  {
    goto LABEL_84;
  }

  if (v84)
  {
    v99 = *(v88 + 32);
    v101 = *v88;
    v100 = *(v88 + 16);
    v102 = *(v88 - 24);
    *v88 = *v89;
    *(v88 + 16) = v102;
    *(v88 + 32) = *(v88 - 8);
    *v89 = v101;
    *(v88 - 24) = v100;
    v88 -= 40;
    *(v89 + 32) = v99;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_84;
    }

    goto LABEL_86;
  }

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
}

uint64_t sub_26AC3C(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v58 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v28 = v7;
      v51 = v4;
      do
      {
        __dst = v28;
        v29 = (v28 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          sub_26B584(v30, v57);
          v33 = v29;
          sub_26B584(v29, v56);
          sub_26B584(v57, &v54);
          v34 = v54;
          v35 = sub_30C0D8();
          v37 = v36;

          sub_26B584(v56, &v52);
          v38 = v52;
          v39 = sub_30C0D8();
          v41 = v40;

          v42 = v35 == v39 && v37 == v41;
          v43 = v42 ? 0 : sub_30D728();

          __swift_destroy_boxed_opaque_existential_1(v53);
          __swift_destroy_boxed_opaque_existential_1(v55);
          sub_EB68(v56, &qword_406418, &qword_328B88);
          sub_EB68(v57, &qword_406418, &qword_328B88);
          if (v43)
          {
            break;
          }

          v29 = v33;
          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v4 = v51;
          v32 = v30 > v51;
          v30 -= 40;
          if (!v32)
          {
            v58 = (v31 + 40);
            v7 = __dst;
            goto LABEL_43;
          }
        }

        v7 = v33;
        if ((v5 + 40) != __dst)
        {
          v46 = *v33;
          v47 = *(v33 + 16);
          *(v5 + 32) = *(v33 + 32);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v28 = v7;
      }

      while (v7 > __src);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_26B584(v7, v57);
        sub_26B584(v4, v56);
        sub_26B584(v57, &v54);
        v14 = v54;
        v15 = sub_30C0D8();
        v17 = v16;

        sub_26B584(v56, &v52);
        v18 = v52;
        v19 = sub_30C0D8();
        v21 = v20;

        v22 = v15 == v19 && v17 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_30D728();

        __swift_destroy_boxed_opaque_existential_1(v53);
        __swift_destroy_boxed_opaque_existential_1(v55);
        sub_EB68(v56, &qword_406418, &qword_328B88);
        sub_EB68(v57, &qword_406418, &qword_328B88);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v53);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_EB68(v56, &qword_406418, &qword_328B88);
      sub_EB68(v57, &qword_406418, &qword_328B88);
LABEL_15:
      v24 = v4;
      v22 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__src + 4) = *(v24 + 4);
      *__src = v25;
      *(__src + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v48 = (v58 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v48])
  {
    memmove(v7, v4, 40 * v48);
  }

  return 1;
}

void *sub_26B0F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      v20 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v20)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26B248(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      sub_1DA1C(*(a4 + 56) + 32 * v18, &v27 + 8);
      *&v27 = v19;
      v20 = v29;
      v32 = v29;
      v21 = v28;
      v30 = v27;
      v31 = v28;
      *v11 = v27;
      *(v11 + 16) = v21;
      *(v11 + 32) = v20;
      if (v14 == v10)
      {
        v25 = v19;
        goto LABEL_23;
      }

      v11 += 40;
      v22 = v19;
      result = v14;
      v23 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_26B3D4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_302E78();
  v5 = v4;
  sub_302E78();
  return v5;
}

double _sSo6CGRectV23ShelfKitCollectionViewsE10containing6pointsABSo7CGPointVd_tFZ_0(double *a1)
{
  v1 = *(a1 + 2);
  v2 = 0.0;
  if (!v1)
  {
    return 0.0;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = v1 - 1;
  if (v1 != 1)
  {

    v7 = a1 + 7;
    v8 = 0.0;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v19.origin.x = v4;
      v19.origin.y = v5;
      v19.size.width = v2;
      v19.size.height = v8;
      v18.x = v10;
      v18.y = *v7;
      if (!CGRectContainsPoint(v19, v18))
      {
        v20.origin.x = v4;
        v20.origin.y = v5;
        v20.size.width = v2;
        v20.size.height = v8;
        MinX = CGRectGetMinX(v20);
        if (v10 >= MinX)
        {
          v12 = MinX;
        }

        else
        {
          v12 = v10;
        }

        v21.origin.x = v4;
        v21.origin.y = v5;
        v21.size.width = v2;
        v21.size.height = v8;
        MinY = CGRectGetMinY(v21);
        if (v9 >= MinY)
        {
          v14 = MinY;
        }

        else
        {
          v14 = v9;
        }

        v22.origin.x = v4;
        v22.origin.y = v5;
        v22.size.width = v2;
        v22.size.height = v8;
        v15 = v2 + CGRectGetMinX(v22);
        if (v15 > v10)
        {
          v10 = v15;
        }

        v23.origin.x = v4;
        v23.origin.y = v5;
        v23.size.width = v2;
        v23.size.height = v8;
        v16 = v8 + CGRectGetMinY(v23);
        if (v16 <= v9)
        {
          v16 = v9;
        }

        v2 = v10 - v12;
        v8 = v16 - v14;
        v4 = v12;
        v5 = v14;
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return v4;
}

uint64_t sub_26B584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406418, &qword_328B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_26B688(char *a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_checkmarkImageView;
  result = [*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_checkmarkImageView] image];
  if (result)
  {
    v4 = result;
    [result size];
    v6 = v5;
    v8 = v7;

    v9 = [a1 effectiveUserInterfaceLayoutDirection];
    [a1 bounds];
    if (v9 == &dword_0 + 1)
    {
      v14 = v10 + 0.0;
    }

    else
    {
      v14 = CGRectGetMaxX(*&v10) - v6;
    }

    [a1 bounds];
    v15 = CGRectGetMaxY(v29) - v8;
    v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_blurredImageBackgroundView;
    v17 = [*&a1[OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_blurredImageBackgroundView] maskView];
    [v17 setFrame:{v14, v15, v6, v8}];

    v18 = *&a1[v16];
    [a1 bounds];
    [v18 setFrame:?];

    v19 = [*&a1[v16] superview];
    if (!v19 || (v20 = v19, sub_293E0(), v21 = a1, v22 = sub_30D098(), v20, v21, (v22 & 1) == 0))
    {
      [a1 addSubview:*&a1[v16]];
    }

    [*&a1[v2] setFrame:{v14, v15, v6, v8}];
    v23 = [*&a1[v2] superview];
    if (!v23 || (v24 = v23, sub_293E0(), v25 = a1, v26 = sub_30D098(), v24, v25, (v26 & 1) == 0))
    {
      [a1 addSubview:*&a1[v2]];
    }

    v27 = *&a1[v2];

    return [a1 bringSubviewToFront:v27];
  }

  return result;
}

void sub_26BA98()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_blurredImageBackgroundView);
}

void sub_26BB5C(__int128 *a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_blurredImageBackgroundView);
  v5 = *a1;
  v3 = *(&stru_2E8.reloff + (swift_isaMask & *v2));
  v4 = v2;
  v3(&v5);
}

id sub_26BC04(float a1)
{
  v2 = *v1;
  *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_progress) = a1;
  return [v2 setNeedsLayout];
}

void sub_26BC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v36 = a4;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405320, qword_3304C0);
  __chkstk_darwin(v8 - 8);
  v10 = (&ObjectType - v9);
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_progressStyle] = 2;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_checkmarkInset] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_progress] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_playing] = 0;
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v34 = ObjCClassFromMetadata;
  v13 = [v12 bundleForClass:ObjCClassFromMetadata];
  v14 = sub_30C098();
  v15 = objc_opt_self();
  v16 = [v15 imageNamed:v14 inBundle:v13];

  if (v16)
  {
    v17 = [objc_allocWithZone(UIImageView) initWithImage:v16];

    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_checkmarkImageView] = v17;
    v18 = type metadata accessor for LegacyCachingArtworkView(0);
    *v10 = 0x401C000000000000;
    v19 = enum case for ImageBlur.light(_:);
    v20 = sub_302B58();
    v21 = *(v20 - 8);
    (*(v21 + 104))(v10, v19, v20);
    (*(v21 + 56))(v10, 0, 1, v20);
    v22 = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v23 = sub_26FA54(a1, v35, a3, 0, v10, v18, v22, v36);
    swift_unknownObjectRelease();
    v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_blurredImageBackgroundView;
    *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews37LegacyArtworkCheckmarkProgressOverlay_blurredImageBackgroundView] = v23;
    v25 = v23;
    v26 = [v12 bundleForClass:v34];
    v27 = sub_30C098();
    v28 = [v15 imageNamed:v27 inBundle:v26];

    if (v28)
    {
      v29 = [objc_allocWithZone(UIImageView) initWithImage:v28];

      [v25 setMaskView:v29];
      v30 = *&v5[v24];
      v38[0] = 0;
      v38[1] = 0;
      v31 = *(&stru_2E8.reloff + (swift_isaMask & *v30));
      v32 = v30;
      v31(v38);

      v37.receiver = v5;
      v37.super_class = ObjectType;
      objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26C014()
{

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_26C158()
{
  result = qword_40B1B0;
  if (!qword_40B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B1B0);
  }

  return result;
}

id sub_26C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v44 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405320, qword_3304C0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v43 - v9);
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressStyle] = 1;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progress] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_playing] = 0;
  v11 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.1];
  v12 = [objc_opt_self() whiteColor];
  v13 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v14 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressBarSettings];
  *v14 = xmmword_3181E0;
  *(v14 + 2) = v11;
  *(v14 + 3) = v12;
  *(v14 + 4) = v13;
  __asm { FMOV            V0.2D, #8.0 }

  *(v14 + 40) = _Q0;
  *(v14 + 56) = _Q0;
  v20 = *(v14 + 3);
  v50[2] = *(v14 + 2);
  v50[3] = v20;
  v51 = *(v14 + 8);
  v21 = *(v14 + 1);
  v50[0] = *v14;
  v50[1] = v21;
  sub_2C588(v50, v48);
  v22 = sub_2B7C0C(0);
  sub_2C5E4(v50);
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressView] = v22;
  v23 = type metadata accessor for LegacyCachingArtworkView(0);
  *v10 = 0x401C000000000000;
  v24 = enum case for ImageBlur.light(_:);
  v25 = sub_302B58();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v10, v24, v25);
  (*(v26 + 56))(v10, 0, 1, v25);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = sub_26FA54(a1, v44, a3, 0, v10, v23, ObjectType, v45);
  swift_unknownObjectRelease();
  v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_blurredImageBackgroundView;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_blurredImageBackgroundView] = v28;
  v30 = *(v14 + 2);
  v48[3] = *(v14 + 3);
  v49 = *(v14 + 8);
  v31 = *v14;
  v48[1] = *(v14 + 1);
  v48[2] = v30;
  v48[0] = v31;
  v32 = v28;
  sub_2C588(v48, v47);
  v33 = sub_2B7C0C(1);
  sub_2C5E4(v48);
  [v32 setMaskView:v33];

  v34 = *&v5[v29];
  v47[1] = 0;
  v47[0] = 0;
  v35 = *(&stru_2E8.reloff + (swift_isaMask & *v34));
  v36 = v34;
  v35(v47);

  v37 = type metadata accessor for LegacyArtworkProgressBarOverlay();
  v46.receiver = v5;
  v46.super_class = v37;
  v38 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 defaultCenter];
  [v41 addObserver:v40 selector:"updateProgressViewOpacity" name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v40;
}

char *sub_26C654()
{
  result = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressView);
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progress);
  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = &result[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView__progress];
  if ((result[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView__progress + 4] & 1) != 0 || vabds_f32(*v3, v2) >= COERCE_FLOAT(1))
  {
    *v3 = v2;
    v3[4] = 0;
    return [result setNeedsLayout];
  }

  return result;
}

void sub_26C6C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressView;
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressView];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_barHeight;
  swift_beginAccess();
  v5 = *&v3[v4];
  [v3 frame];
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = 0.0;
  v32.size.height = 0.0;
  if (CGRectEqualToRect(v29, v32) || (v6 = [v1 traitCollection], v7 = sub_30C968(), v6, (v7 & 1) != 0))
  {
    v8 = objc_opt_self();
    [v8 begin];
    v9 = 1;
    [v8 setDisableActions:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressBarSettings + 48];
  v11 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressBarSettings + 56];
  v12 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressBarSettings + 64];
  [v1 bounds];
  v13 = CGRectGetMaxY(v30) - v11;
  v14 = *&v1[v2];
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_barHeight;
  swift_beginAccess();
  v16 = v13 - *(v14 + v15);
  [v1 bounds];
  v17 = CGRectGetMaxY(v31) - (v10 + v12);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_blurredImageBackgroundView;
  v19 = [*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_blurredImageBackgroundView] maskView];
  [v19 setFrame:{v10, v16, v17, v5}];

  v20 = *&v1[v18];
  [v1 bounds];
  [v20 setFrame:?];

  v21 = [*&v1[v18] superview];
  if (!v21 || (v22 = v21, sub_293E0(), v23 = v1, v24 = sub_30D098(), v22, v23, (v24 & 1) == 0))
  {
    [v1 addSubview:*&v1[v18]];
  }

  [*&v1[v2] setFrame:{v10, v16, v17, v5}];
  v25 = [*&v1[v2] superview];
  if (!v25 || (v26 = v25, sub_293E0(), v27 = v1, v28 = sub_30D098(), v26, v27, (v28 & 1) == 0))
  {
    [v1 addSubview:*&v1[v2]];
  }

  [v1 bringSubviewToFront:*&v1[v2]];
  sub_26CA10();
  if (v9)
  {
    [objc_opt_self() commit];
  }
}

void sub_26CA10()
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressView;
  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressView);
  v4 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressBarSettings;
  v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressBarSettings + 16);
  if (!IsReduceTransparencyEnabled)
  {
    v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
    swift_beginAccess();
    v24 = *&v3[v23];
    *&v3[v23] = v5;
    v25 = v5;
    v26 = v3;

    v27 = *&v26[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer];
    v28 = [v25 CGColor];
    [v27 setFillColor:v28];

    v29 = *(v0 + v2);
    v30 = *(v4 + 32);
    v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
    swift_beginAccess();
    v32 = *&v29[v31];
    *&v29[v31] = v30;
    v19 = v30;
    v15 = v29;

    v20 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
    v33 = *&v29[v31];
    if (v33)
    {
      v34 = [v33 CGColor];
    }

    else
    {
      v34 = 0;
    }

    [v20 setStrokeColor:v34];

    if (*&v29[v31])
    {
      goto LABEL_11;
    }

LABEL_12:
    [v20 removeFromSuperlayer];
    goto LABEL_13;
  }

  v6 = v3;
  v7 = [v5 colorWithAlphaComponent:1.0];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_trackColor;
  swift_beginAccess();
  v9 = *&v6[v8];
  *&v6[v8] = v7;
  v10 = v7;

  v11 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_backgroundShapeLayer];
  v12 = [v10 CGColor];
  [v11 setFillColor:v12];

  v13 = *(v0 + v2);
  v14 = *(v4 + 32);
  v15 = v13;
  v16 = [v14 colorWithAlphaComponent:1.0];
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor;
  swift_beginAccess();
  v18 = *&v15[v17];
  *&v15[v17] = v16;
  v19 = v16;

  v20 = *&v15[OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderShapeLayer];
  v21 = *&v15[v17];
  if (v21)
  {
    v22 = [v21 CGColor];
  }

  else
  {
    v22 = 0;
  }

  [v20 setStrokeColor:v22];

  if (!*&v15[v17])
  {
    goto LABEL_12;
  }

LABEL_11:
  v35 = [v15 layer];
  [v35 addSublayer:v20];

  v15 = v19;
  v19 = v35;
LABEL_13:
}

void sub_26CDD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressBarSettings + 16);
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressBarSettings + 24);

  v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_progressView);
}

id sub_26CE40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyArtworkProgressBarOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_26CF20(__int128 *a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews31LegacyArtworkProgressBarOverlay_blurredImageBackgroundView);
  v5 = *a1;
  v3 = *(&stru_2E8.reloff + (swift_isaMask & *v2));
  v4 = v2;
  v3(&v5);
}

void sub_26D00C()
{
  v1 = v0;
  v2 = sub_303748();
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_presenter;
  if (!*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_presenter] || (, v9 = v0, sub_2A2D04(v0, &off_3C2980), , !*&v0[v8]))
  {
    swift_storeEnumTagMultiPayload();
    sub_1DC68(v7, v4);
    v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_episodePlayState;
    swift_beginAccess();
    sub_2B3F0(v4, &v1[v10]);
    swift_endAccess();
    sub_26D1B4();
    sub_2B454(v4);
    sub_2B454(v7);
  }
}

double sub_26D150@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource);
  a1[1] = v2;

  return result;
}

id sub_26D16C(__int128 *a1)
{
  v4 = *a1;
  v2 = sub_26E6B4(&v4);

  return [v1 setNeedsLayout];
}

id sub_26D1B4()
{
  v1 = sub_303748();
  __chkstk_darwin(v1);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_episodePlayState;
  swift_beginAccess();
  sub_1DC68(&v0[v4], v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      goto LABEL_4;
    case 2:
      *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progress] = 1065353216;
      [v0 setNeedsLayout];
      sub_2FB8C(v3);
      v9 = 2;
      break;
    case 3:
LABEL_4:
      v6 = v3[1];
      if (v6 <= 0.0)
      {
        goto LABEL_8;
      }

      v7 = *v3 / v6;
      v8 = 1.0;
      if (v7 >= 1.0)
      {
        v9 = 2;
        goto LABEL_12;
      }

      if (v7 <= 0.0)
      {
LABEL_8:
        v9 = 0;
        v8 = 0.0;
      }

      else
      {
        v9 = 1;
        v8 = v7;
      }

LABEL_12:
      *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progress] = v8;
      [v0 setNeedsLayout];
      break;
    default:
      sub_2B454(v3);
      v9 = 0;
      break;
  }

  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlayStyle] = v9;
  [v0 setNeedsLayout];
  return [v0 setNeedsLayout];
}

void sub_26D33C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for LegacyArtworkWithPlaybackStatusView(0);
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v2 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlay];
  v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlay];
  if (v3)
  {
    v4 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = v3;
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlayStyle] != v6(ObjectType, v4))
    {
      if (*v2)
      {
        v8 = *v2;
        [v8 removeFromSuperview];
      }

      v7 = *v2;
      *v2 = 0;
      *(v2 + 1) = 0;
    }
  }

  sub_26D480();
  sub_26D66C();
}

void sub_26D480()
{
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlay;
  if (!*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlay))
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlayStyle);
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_dataProvider);
      v5 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_dataProvider + 8);
      v6 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_imageStoreProvider);
      v7 = *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_imageStoreProvider + 8);
      if (v3 == 1)
      {
        v8 = objc_allocWithZone(type metadata accessor for LegacyArtworkProgressBarOverlay());
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v3 = sub_26C1AC(v4, v5, v6, v7);
        v9 = &off_3C2928;
      }

      else
      {
        v10 = objc_allocWithZone(type metadata accessor for LegacyArtworkCheckmarkProgressOverlay());
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_26BC34(v4, v5, v6, v7);
        v3 = v11;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v9 = &off_3C27C8;
      }
    }

    else
    {
      v9 = v3;
    }

    v12 = *v1;
    *v1 = v3;
    *(v1 + 8) = v9;
    v13 = v3;

    if (v3)
    {
      (*(&stru_68.reserved2 + (swift_isaMask & *v13)))(*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerStyle), *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews17RoundedCornerView_cornerRadius));
    }

    v14 = *v1;
    if (*v1)
    {
      v15 = 1.0;
      if (*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressHidden))
      {
        v15 = 0.0;
      }

      [v14 setAlpha:v15];
    }
  }
}

void sub_26D66C()
{
  v1 = v0;
  v2 = sub_303748();
  __chkstk_darwin(v2 - 8);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlay];
  v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progressOverlay];
  if (v6)
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v9 = v6;
    [v1 bounds];
    [v9 setFrame:?];

    v10 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_progress];
    v26[0] = v9;
    (*(v7 + 48))(ObjectType, v7, v10);
    v11 = v26[0];
    v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_episodePlayState;
    swift_beginAccess();
    sub_1DC68(&v1[v12], v4);
    LOBYTE(v12) = sub_3036F8();
    sub_2B454(v4);
    v13 = swift_getObjectType();
    v24[0] = v11;
    (*(v7 + 72))(v12 & 1, v13, v7);
    v14 = v24[0];
    v16 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource];
    v15 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource + 8];
    v17 = swift_getObjectType();
    v24[1] = v15;
    v25 = v14;
    v24[0] = v16;
    v18 = *(v7 + 24);

    v18(v24, v17, v7);
    v19 = v25;
    v20 = [v25 superview];
    if (!v20 || (v21 = v20, sub_293E0(), v22 = v1, v23 = sub_30D098(), v21, v22, (v23 & 1) == 0))
    {
      [v1 addSubview:v19];
    }
  }
}

void sub_26D8B8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (off_40D118)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_30AC38();
    swift_unknownObjectRelease();
    sub_309A78();
    if (swift_dynamicCastClass())
    {

      v4 = sub_309A68();
      v6 = v5;
      type metadata accessor for PlaybackStatusPresenter(0);
      swift_allocObject();

      v7 = sub_2A38D8(v4, v6, v3);

      v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_presenter;
      if (*(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_presenter))
      {

        sub_2A2D04(0, 0);
      }

      *(v2 + v8) = v7;

      sub_26D00C();
    }

    else
    {
      v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_presenter;
      if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_presenter))
      {

        sub_2A2D04(0, 0);
      }

      *(v1 + v9) = 0;

      sub_26D00C();
    }

    sub_26DD5C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26DA78()
{

  swift_unknownObjectRelease();

  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_episodePlayState;

  return sub_2B454(v1);
}

id sub_26DAD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyArtworkWithPlaybackStatusView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LegacyArtworkWithPlaybackStatusView(uint64_t a1)
{
  result = qword_40B260;
  if (!qword_40B260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26DBD0(uint64_t a1)
{
  result = sub_303748();
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

uint64_t sub_26DCA0(uint64_t a1)
{
  v3 = sub_303748();
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC68(a1, v5);
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews35LegacyArtworkWithPlaybackStatusView_episodePlayState;
  swift_beginAccess();
  sub_2B3F0(v5, v1 + v6);
  swift_endAccess();
  sub_26D1B4();
  return sub_2B454(v5);
}

id sub_26DD5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0, &unk_31EF40);
  v3.n128_f64[0] = __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v12 = 0;
  v13 = 0;
  (*(&stru_2E8.reloff + (swift_isaMask & *v0)))(&v12, v3);
  sub_307DA8();
  v6 = sub_3031C8();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_EB68(v5, &unk_402FF0, &unk_31EF40);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = &v5[*(v6 + 48)];
    v7 = *v9;
    v8 = *(v9 + 1);

    sub_6D924(v5);
  }

  v10 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_accessibilityTitle];
  *v10 = v7;
  *(v10 + 1) = v8;

  return [v1 setNeedsLayout];
}

void *sub_26DEEC()
{
  v1 = v0;
  v2 = *(&stru_2E8.offset + (swift_isaMask & *v0));
  v3 = v2(&v15);
  if (!v16)
  {
    goto LABEL_11;
  }

  if (v15 == 0xD000000000000018 && v16 == 0x8000000000342B10)
  {
  }

  else
  {
    v5 = sub_30D728();

    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageDownloadObserver;
  swift_beginAccess();
  sub_26F990(v1 + v6, &v15);
  v7 = v17;
  v3 = sub_EB68(&v15, &qword_40B2C8, &unk_3306D0);
  if (v7)
  {
    sub_26E2D8();
    return sub_26E410();
  }

LABEL_11:
  (v2)(&v15, v3);
  if (!v16)
  {
    goto LABEL_17;
  }

  if (v15 == 0xD000000000000018 && v16 == 0x8000000000342B10)
  {

    return sub_26E410();
  }

  v9 = sub_30D728();

  if ((v9 & 1) == 0)
  {
LABEL_17:
    v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageDownloadObserver;
    swift_beginAccess();
    sub_26F990(v1 + v10, &v15);
    v11 = v17;
    sub_EB68(&v15, &qword_40B2C8, &unk_3306D0);
    if (!v11)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_30AC68();
      swift_unknownObjectRelease();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = sub_3EFB4();
      v13 = sub_30C8F8();
      v17 = v12;
      v18 = &protocol witness table for OS_dispatch_queue;
      v15 = v13;
      sub_30BEA8();

      __swift_destroy_boxed_opaque_existential_1(&v15);
    }
  }

  return sub_26E410();
}

uint64_t sub_26E1A8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageDownloadObserver;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    sub_30ADD8();
  }

  sub_1D2800(a1, v3, &qword_40B2C8, &unk_3306D0);
  if (*(v3 + 24))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    sub_30ADD8();
  }

  swift_endAccess();
  return sub_EB68(a1, &qword_40B2C8, &unk_3306D0);
}

uint64_t sub_26E2D8()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageDownloadObserver;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
    sub_30ADD8();
  }

  sub_1D2800(v3, v1, &qword_40B2C8, &unk_3306D0);
  if (*(v1 + 24))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
    sub_30ADD8();
  }

  swift_endAccess();
  return sub_EB68(v3, &qword_40B2C8, &unk_3306D0);
}

void *sub_26E410()
{
  v1 = sub_302168();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 bounds];
  if (v8 >= 1.0 && v7 >= 1.0)
  {
    result = (*(&stru_2E8.offset + (swift_isaMask & *v0)))(v13, result);
    if (v13[1])
    {
      if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_pageRenderController))
      {
        *v5 = 1;
        v10 = enum case for PageRenderActivity.resourceFetchStarted(_:);
        v11 = sub_302288();
        (*(*(v11 - 8) + 104))(v5, v10, v11);
        (*(v2 + 104))(v5, enum case for PageRenderEvent.activity(_:), v1);
        sub_3024F8();
        (*(v2 + 8))(v5, v1);
      }

      sub_12670(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageStore, v13);
      __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_301F88();

      return __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  return result;
}

double sub_26E69C@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource);
  a1[1] = v2;

  return result;
}

double sub_26E6B4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource);
  v6 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource);
  v7 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource + 8);
  *v5 = v3;
  v5[1] = v4;
  if (v4)
  {
    if (v7)
    {
      v8 = v3 == v6 && v4 == v7;
      if (v8 || (sub_30D728() & 1) != 0 || !v5[1])
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if (!v7)
  {

    goto LABEL_10;
  }

  if (v5[1])
  {
LABEL_9:
    sub_26DEEC();
  }

LABEL_10:

  return result;
}

id sub_26E798(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for LegacyCachingArtworkView(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_26E7F0(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, SEL *a7, SEL *a8)
{
  v14 = a1;
  [v14 *a7];
  v16 = v15;
  v18 = v17;
  v22.receiver = v14;
  v22.super_class = type metadata accessor for LegacyCachingArtworkView(0);
  objc_msgSendSuper2(&v22, *a8, a2, a3, a4, a5);
  [v14 *a7];
  if (v16 != v20 || v18 != v19)
  {
    sub_26E410();
  }
}

uint64_t sub_26E8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_306E68();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_306E88();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EFB4();
  v13 = sub_30C8F8();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_26F924;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_58;
  v15 = _Block_copy(aBlock);

  sub_306E78();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_26F948(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
  sub_9442C();
  sub_30D488();
  sub_30C908();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v18);
}

void sub_26EB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(&stru_2E8.offset + (swift_isaMask & *Strong)))(&v9);
    if (v10)
    {
      if (v9 == a2 && v10 == a3)
      {
      }

      else
      {
        v8 = sub_30D728();

        if ((v8 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      sub_26E410();
    }

LABEL_11:
  }
}

uint64_t sub_26EC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_306E68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_306E88();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EFB4();
  v12 = sub_30C8F8();
  sub_12670(a1, v18);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  sub_12658(v18, v13 + 24);
  aBlock[4] = sub_26FA48;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_83_0;
  v14 = _Block_copy(aBlock);

  sub_306E78();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_26F948(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860, &unk_31E9E0);
  sub_9442C();
  sub_30D488();
  sub_30C908();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_26EF3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_12670(a2, v5);
    sub_26E1A8(v5);
  }
}

double sub_26EFA4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498, &qword_31C430);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_315430;
  sub_30D558(43);
  v3._object = 0x8000000000342B30;
  v3._countAndFlagsBits = 0xD000000000000029;
  sub_30C238(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88, &unk_317C20);
  sub_30D638();
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_30D4C8();

  return result;
}

void sub_26F0AC(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_302168();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*(&stru_2E8.offset + (swift_isaMask & *Strong)))(&v27);
    if (v28)
    {
      if (v27 == a2 && v28 == a3)
      {

        goto LABEL_7;
      }

      v13 = sub_30D728();

      if (v13)
      {
LABEL_7:
        v14 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_pageRenderController];
        if (a1)
        {
          if (v14)
          {
            *v10 = 1;
            v15 = &enum case for PageRenderActivity.resourceFetchCompleted(_:);
LABEL_12:
            v19 = *v15;
            v20 = sub_302288();
            (*(*(v20 - 8) + 104))(v10, v19, v20);
            (*(v8 + 104))(v10, enum case for PageRenderEvent.activity(_:), v7);
            sub_3024F8();
            (*(v8 + 8))(v10, v7);
          }
        }

        else if (v14)
        {
          v16 = sub_302678();
          sub_26F948(&qword_40B2D0, &type metadata accessor for PageRenderResourceError, &protocol conformance descriptor for PageRenderResourceError);
          v17 = swift_allocError();
          (*(*(v16 - 8) + 104))(v18, enum case for PageRenderResourceError.notFound(_:), v16);
          *v10 = v17;
          v10[8] = 1;
          v15 = &enum case for PageRenderActivity.resourceFetchFailed(_:);
          goto LABEL_12;
        }

        v21 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_imageView];
        if (v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode + 8])
        {
          v22 = v12;
          [v21 setImage:a1];
        }

        else
        {
          if (a1)
          {
            v23 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_renderingMode];
            v24 = v12;
            a1 = [a1 imageWithRenderingMode:v23];
          }

          else
          {
            v25 = v12;
          }

          [v21 setImage:a1];
        }

        [v12 invalidateIntrinsicContentSize];
      }
    }
  }
}

uint64_t sub_26F458()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageStore));

  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageBlur, &qword_405320, qword_3304C0);
  return sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageDownloadObserver, &qword_40B2C8, &unk_3306D0);
}

id sub_26F4F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyCachingArtworkView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s23ShelfKitCollectionViews18CachingImageSourceO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_30D728();
}

uint64_t sub_26F644(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_26F6E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26F700(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for LegacyCachingArtworkView(uint64_t a1)
{
  result = qword_40B2B0;
  if (!qword_40B2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F784(uint64_t a1)
{
  sub_26F844(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26F844(uint64_t a1)
{
  if (!qword_40B2C0)
  {
    sub_302B58();
    v1 = sub_30D3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_40B2C0);
    }
  }
}

uint64_t sub_26F89C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_26F8E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

double block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_26F948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B2C8, &unk_3306D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26FA08()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

id sub_26FA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for LegacyCachingArtworkView(0);
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageSource];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageBlur;
  v16 = sub_302B58();
  (*(*(v16 - 8) + 56))(&v13[v15], 1, 1, v16);
  v17 = &v13[OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageDownloadObserver];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = &v13[OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_dataProvider];
  *v18 = a1;
  *(v18 + 1) = a2;
  swift_unknownObjectRetain();
  sub_30AB58();
  swift_unknownObjectRelease();
  sub_12658(&v22, &v13[OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_imageStore]);
  *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews24LegacyCachingArtworkView_pageRenderController] = a4;
  swift_beginAccess();

  sub_1D2800(a5, &v13[v15], &qword_405320, qword_3304C0);
  swift_endAccess();
  v21.receiver = v13;
  v21.super_class = v12;
  v19 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_EB68(a5, &qword_405320, qword_3304C0);
  return v19;
}

void sub_26FC0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_405320, qword_3304C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  swift_beginAccess();
  v3 = off_40D118;
  if (off_40D118)
  {
    v4 = type metadata accessor for LegacyCachingArtworkView(0);
    v5 = *&stru_68.sectname[v3];
    v6 = *&stru_68.segname[v3 - 8];
    ObjectType = swift_getObjectType();
    v8 = sub_302B58();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    v9 = *(v6 + 8);
    v10 = swift_unknownObjectRetain_n();
    v11 = sub_26FA54(v10, v6, v5, 0, v2, v4, ObjectType, v9);
    swift_unknownObjectRelease();
    HIBYTE(v13) = v11[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style];
    v11[OBJC_IVAR____TtC23ShelfKitCollectionViews11ArtworkView_style] = 0;
    v12 = v11;
    sub_2DE78(&v13 + 7);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_26FD8C()
{
  result = qword_40B2D8;
  if (!qword_40B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B2D8);
  }

  return result;
}

void sub_26FE68(double a1, double a2)
{
  v5 = sub_30D6F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v2 + 24);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return;
  }

  v42 = v5;
  v41 = enum case for FloatingPointRoundingRule.awayFromZero(_:);
  v40 = (v6 + 104);
  v11 = (v6 + 8);

  v12 = 0;
  v39 = v10 - 1;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = 32;
  v15 = a2;
  while (1)
  {
    v17 = *(v9 + v14 + 32);
    v16 = *(v9 + v14 + 48);
    v18 = *(v9 + v14 + 16);
    v44 = *(v9 + v14);
    v45 = v18;
    v46 = v17;
    v47 = v16;
    v19 = v44;
    v20 = v17;
    if (v17)
    {
      v21 = v45;
      sub_270350(&v44, v43);
      v22 = v21;
    }

    else
    {
      sub_270350(&v44, v43);
      v23 = [v19 font];
      if (!v23)
      {
        goto LABEL_38;
      }

      v22 = v23;
      sub_27068C(&v44);
    }

    [v22 lineHeight];
    v25 = v24;

    v26 = floor(v15 / v25);
    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v26 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v26 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v27 = *(&v46 + 1);
    if (v13 < *(&v46 + 1))
    {
      v27 = v13;
    }

    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    sub_270388(&v44, v28, a1);
    v30 = v29;
    if (v20)
    {
      v31 = 0;
    }

    else
    {
      v31 = v19;
    }

    [v31 setNumberOfLines:v30];

    if (__OFSUB__(v13, v30))
    {
      goto LABEL_37;
    }

    if (v20)
    {
      v32 = v42;
      (*v40)(v8, v41, v42);
      sub_302E58();
      v34 = v33;
    }

    else
    {
      v32 = v42;
      (*v40)(v8, v41, v42);
      v35 = v19;
      sub_302E78();
      v34 = v36;
      sub_27068C(&v44);
    }

    (*v11)(v8, v32);
    sub_27068C(&v44);
    if (v30 < 1)
    {
      v37 = v34;
    }

    else
    {
      v37 = v34 + *(&v47 + 1);
      if (v34 + *(&v47 + 1) >= v15)
      {
        v15 = v15 - v34;
        if (v15 > 0.0)
        {
          goto LABEL_29;
        }

LABEL_28:
        v15 = 0.0;
        goto LABEL_29;
      }
    }

    v15 = v15 - v37;
    if (v15 <= 0.0)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (v39 == v12)
    {
      goto LABEL_32;
    }

    ++v12;
    v13 = (v13 - v30) & ~((v13 - v30) >> 63);
    v14 += 64;
    if (v12 >= *(v9 + 16))
    {
      __break(1u);
LABEL_32:

      return;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_27023C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2702A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2702EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_270388(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_30D6F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return;
  }

  sub_302E48();
  v10 = *a1;
  if (v11 <= a3)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    [*a1 bounds];
    a3 = v12;
    v10 = *a1;
LABEL_8:
    v21 = objc_allocWithZone(NSStringDrawingContext);
    v22 = v10;
    v23 = [v21 init];
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v24 = v23;
    [v23 setMaximumNumberOfLines:a2];
    [v24 setWrapsForTruncationMode:a2 != 1];
    sub_2697EC(v22, v24, a3, 1.79769313e308);
    (*(v7 + 104))(v9, enum case for FloatingPointRoundingRule.awayFromZero(_:), v6);
    sub_302E78();
    sub_302E78();
    v19 = v25;

    sub_27068C(a1);
    (*(v7 + 8))(v9, v6);
    v26 = [v22 font];
    if (!v26)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v20 = v26;
    sub_27068C(a1);
    goto LABEL_11;
  }

  v13 = *(a1 + 24);
  v16 = a1 + 8;
  v14 = *(a1 + 8);
  v15 = *(v16 + 8);

  v17 = v15;
  sub_269B38(v17, a2, v10, v14, a3, 1.79769313e308, v13);
  v19 = v18;

  v20 = v17;
LABEL_11:
  [v20 lineHeight];
  v28 = v27;

  if (v19 > 0.0)
  {
    v29 = floor((v19 - v28) / v28);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v29 > -9.22337204e18)
      {
        if (v29 < 9.22337204e18)
        {
          if (!__OFADD__(v29, 1))
          {
            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_2706BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_270704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_270768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48, &qword_319CA0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_47304(a3, v22 - v9);
  v11 = sub_30C468();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_EB68(v10, &qword_3FBD48, &qword_319CA0);
  }

  else
  {
    sub_30C458();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_30C3F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_30C168() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_EB68(a3, &qword_3FBD48, &qword_319CA0);

      return v20;
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

  sub_EB68(a3, &qword_3FBD48, &qword_319CA0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_270A78()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48, &qword_319CA0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = sub_3042E8();
  __chkstk_darwin(v5 - 8);
  sub_3042D8();
  v6 = objc_allocWithZone(sub_304318());
  v7 = sub_304308();
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_overlayViewController;
  v9 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_overlayViewController);
  sub_302768();

  v10 = *(v1 + v8);
  *(v1 + v8) = v7;
  v11 = v7;

  memset(v18, 0, sizeof(v18));
  v19 = 1;
  sub_302758();

  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_loadTask;
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_loadTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88, &unk_317C20);
    sub_30C478();
  }

  sub_30C448();
  v13 = sub_30C468();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_30C438();

  v15 = sub_30C428();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;

  *(v1 + v12) = sub_270768(0, 0, v4, &unk_3309C8, v16);

  return result;
}

void sub_270E28()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_overlayViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
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

uint64_t sub_270F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_30C418();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_30C438();
  v4[16] = sub_30C428();
  v7 = sub_30C3F8();
  v4[17] = v7;
  v4[18] = v6;

  return _swift_task_switch(sub_27105C, v7, v6);
}

uint64_t sub_27105C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_271168;

    return sub_271A98((v0 + 2));
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_271168()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_2716D0;
  }

  else
  {
    v5 = sub_2712A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2712A4()
{
  v1 = v0[21];
  sub_30C498();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v0[10] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88, &unk_317C20);
    v2 = swift_dynamicCast();
    v3 = v0[19];
    if (v2)
    {
      v4 = v0[14];
      v5 = v0[15];
      v6 = v0[12];
      v7 = v0[13];

      (*(v7 + 32))(v4, v5, v6);
      sub_272C70(&qword_40B428, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
      swift_allocError();
      (*(v7 + 16))(v8, v4, v6);
      swift_willThrow();

      (*(v7 + 8))(v4, v6);
    }

    else
    {

      sub_272740(v1, v12);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[22] = v10;
    *v10 = v0;
    v10[1] = sub_271510;

    return sub_27214C((v0 + 2));
  }
}

uint64_t sub_271510()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_2718B0;
  }

  else
  {
    v5 = sub_27164C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_27164C()
{
  v1 = v0[19];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2716D0()
{

  v1 = v0[21];
  v0[10] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88, &unk_317C20);
  v2 = swift_dynamicCast();
  v3 = v0[19];
  if (v2)
  {
    v4 = v0[14];
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];

    (*(v7 + 32))(v4, v5, v6);
    sub_272C70(&qword_40B428, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    (*(v7 + 16))(v8, v4, v6);
    swift_willThrow();

    (*(v7 + 8))(v4, v6);
  }

  else
  {

    sub_272740(v1, v10);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2718B0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[23];
  v0[10] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88, &unk_317C20);
  v2 = swift_dynamicCast();
  v3 = v0[19];
  if (v2)
  {
    v4 = v0[14];
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];

    (*(v7 + 32))(v4, v5, v6);
    sub_272C70(&qword_40B428, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    (*(v7 + 16))(v8, v4, v6);
    swift_willThrow();

    (*(v7 + 8))(v4, v6);
  }

  else
  {

    sub_272740(v1, v10);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_271A98(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_308538();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_307728();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_301CB8();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_308DE8();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  sub_30C438();
  v2[16] = sub_30C428();
  v8 = sub_30C3F8();
  v2[17] = v8;
  v2[18] = v7;

  return _swift_task_switch(sub_271CA0, v8, v7);
}

uint64_t sub_271CA0()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  (*(v0[11] + 16))(v0[12], v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_pageURL, v0[10]);
  (*(v3 + 104))(v1, enum case for FlowOrigin.external(_:), v2);
  sub_307718();
  (*(v3 + 8))(v1, v2);
  sub_308DD8();
  v5 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_intentDispatcher + 24);
  v6 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_intentDispatcher + 32);
  __swift_project_boxed_opaque_existential_1Tm((v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_intentDispatcher), v5);
  v7 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_objectGraph);
  v8 = swift_task_alloc();
  v0[19] = v8;
  v9 = sub_272C70(&qword_40B430, &type metadata accessor for FetchActionIntent, &protocol conformance descriptor for FetchActionIntent);
  *v8 = v0;
  v8[1] = sub_271E60;
  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v12, v10, v7, v11, v9, v5, v6);
}

uint64_t sub_271E60()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_272090;
  }

  else
  {
    v5 = sub_271F9C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_271F9C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  sub_308528();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_272090()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_27214C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = swift_getObjectType();
  v3 = sub_30B8A8();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_308668();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0, qword_31E3C0);
  v2[20] = swift_task_alloc();
  sub_30C438();
  v2[21] = sub_30C428();
  v6 = sub_30C3F8();
  v2[22] = v6;
  v2[23] = v5;

  return _swift_task_switch(sub_2722E0, v6, v5);
}

uint64_t sub_2722E0(double a1)
{
  v2 = v1[20];
  v4 = v1[12];
  v3 = v1[13];
  v5 = v1[11];
  sub_3093A8();

  sub_30B9B8();
  v6 = sub_302268();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v1[10] = v3;
  v1[7] = v4;
  v7 = [v4 view];
  v1[24] = sub_309388();

  sub_EB68(v2, &unk_4090C0, qword_31E3C0);
  sub_EB68((v1 + 7), &unk_3FBB70, &unk_3174C0);
  sub_12670(v5, (v1 + 2));

  sub_308678();
  v8 = swift_task_alloc();
  v1[25] = v8;
  *v8 = v1;
  v8[1] = sub_2724A4;
  v9 = v1[16];

  return ActionPerformer.callAsFunction()(v9);
}

uint64_t sub_2724A4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = v2[22];
    v4 = v2[23];
    v5 = sub_272688;
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v3 = v2[22];
    v4 = v2[23];
    v5 = sub_2725D0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_2725D0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_272688()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_272740(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = sub_304338();
  __chkstk_darwin(v4 - 8);
  sub_304328();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(sub_304358());
  swift_errorRetain();
  v6 = sub_304348();
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_overlayViewController;
  v8 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_overlayViewController);
  sub_302768();

  v9 = *(v3 + v7);
  *(v3 + v7) = v6;
  v10 = v6;

  sub_302758();
}

void sub_272888(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_270A78();
  }
}

uint64_t type metadata accessor for LoadingPageViewController(uint64_t a1)
{
  result = qword_40B418;
  if (!qword_40B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_272A4C(uint64_t a1)
{
  result = sub_301CB8();
  if (v2 <= 0x3F)
  {
    result = sub_307728();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_272B3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_272B74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_272BB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F4FC;

  return sub_270F5C(a1, v4, v5, v6);
}

uint64_t sub_272C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_272CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_loadTask] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_objectGraph] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408550, qword_3309E0);

  sub_30B8E8();
  sub_12658(&v18, &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_intentDispatcher]);
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_pageURL;
  v10 = sub_301CB8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a2, v10);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_origin;
  v13 = sub_307728();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v4[v12], a3, v13);
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  (*(v14 + 8))(a3, v13);
  (*(v11 + 8))(a2, v10);
  return v15;
}

void sub_272F28(double a1)
{
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_fill;
  if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_fill])
  {
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_fill] == 1)
    {
      v3 = objc_allocWithZone(UIColor);
      v13[4] = sub_AB208;
      v13[5] = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_2EB7C;
      v13[3] = &block_descriptor_25;
      v4 = _Block_copy(v13);
      v5 = [v3 initWithDynamicProvider:v4];
      _Block_release(v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v5 = qword_40DB80;
  }

  [v1 setBackgroundColor:v5];

  v6 = [v1 imageView];
  if (v6)
  {
    v7 = v6;
    if (v1[v2])
    {
      if (v1[v2] == 1)
      {
        v8 = 0;
LABEL_15:
        [v7 setTintColor:v8];

        goto LABEL_16;
      }

      v9 = &selRef_secondaryLabelColor;
    }

    else
    {
      v9 = &selRef_whiteColor;
    }

    v8 = [objc_opt_self() *v9];
    goto LABEL_15;
  }

LABEL_16:
  if (!v1[v2])
  {
    v10 = [objc_opt_self() whiteColor];
    goto LABEL_24;
  }

  if (v1[v2] != 1 && v1[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_style] == 4)
  {
    v10 = [objc_opt_self() secondaryLabelColor];
LABEL_24:
    v11 = v10;
    goto LABEL_25;
  }

  if (qword_3FAFB8 != -1)
  {
    swift_once();
  }

  v11 = qword_40DB80;
LABEL_25:
  v12 = v11;
  [v1 setTitleColor:v11 forState:0];
}

void sub_273280()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v9, "isHighlighted");
  v2 = v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_fill];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_fill])
    {
      if (v2 == 1)
      {
        if (qword_3FAFB8 != -1)
        {
          swift_once();
        }

        v3 = [qword_40DB80 colorWithAlphaComponent:0.1];
        goto LABEL_17;
      }

LABEL_10:
      v3 = 0;
      goto LABEL_17;
    }

    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v6 = qword_40DB80;
    v7 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
    v3 = [v6 _colorBlendedWithColor:v7];
  }

  else
  {
    if (v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_fill])
    {
      if (v2 == 1)
      {
        v4 = objc_allocWithZone(UIColor);
        v8[4] = sub_AB208;
        v8[5] = 0;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_2EB7C;
        v8[3] = &block_descriptor_59;
        v5 = _Block_copy(v8);
        v3 = [v4 initWithDynamicProvider:v5];
        _Block_release(v5);

        goto LABEL_17;
      }

      goto LABEL_10;
    }

    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v3 = qword_40DB80;
  }

LABEL_17:
  [v0 setBackgroundColor:v3];
}

id sub_2734E0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_2735B8()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton____lazy_storage___layoutView;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton____lazy_storage___layoutView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton____lazy_storage___layoutView];
  }

  else
  {
    v4 = sub_27361C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_27361C(void *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setUserInteractionEnabled:0];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [a1 addSubview:v2];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_31D480;
    v7 = [v2 leftAnchor];
    v8 = [v4 leftAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    *(v6 + 32) = v9;
    v10 = [v2 rightAnchor];
    v11 = [v4 rightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v6 + 40) = v12;
    v13 = [v2 topAnchor];
    v14 = [v4 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v6 + 48) = v15;
    v16 = [v2 bottomAnchor];
    v17 = [v4 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v6 + 56) = v18;
    sub_91304();
    isa = sub_30C358().super.isa;

    [v5 activateConstraints:isa];
  }

  return v2;
}

unsigned __int8 *sub_2738D0(unsigned __int8 *a1)
{
  v1 = a1[OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_usesBoundsForBaselineGuide];
  v2 = a1;
  if (v1 == 1)
  {
    v3 = sub_2735B8();

    v2 = v3;
  }

  return v2;
}

void sub_273984()
{
  if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_style) != 3)
  {
    v1.receiver = v0;
    v1.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v1, "intrinsicContentSize");
  }
}

uint64_t get_enum_tag_for_layout_string_23ShelfKitCollectionViews9MacButtonC5GlyphO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_273BB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_273C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_273C60(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for MacButton.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MacButton.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_273DF4()
{
  result = qword_40B498;
  if (!qword_40B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B498);
  }

  return result;
}

unint64_t sub_273E4C()
{
  result = qword_40B4A0;
  if (!qword_40B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_40B4A0);
  }

  return result;
}

double block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_273EB8(id a1)
{
  if (a1 >= 7)
  {
  }
}

double MacGridSpec.basePageMargin(for:)(double a1)
{
  if (a1 <= 1720.0)
  {
    return 40.0;
  }

  else
  {
    return (a1 + -1720.0) * 0.5 + 40.0;
  }
}

void sub_273F2C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_30B3F8();
  __chkstk_darwin(v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = _swiftEmptyArrayStorage;
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_175474(0, v23[2] + 1, 1);
          v23 = v39;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_175474((v25 > 1), v26 + 1, 1);
          v23 = v39;
        }

        v23[2] = v26 + 1;
        v36 = v23;
        v22(v23 + v13 + v26 * v14, v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_14:
  }
}

void sub_2741FC(uint64_t *a1)
{
  v2 = *(sub_30B3F8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AF884(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_279020(v5);
  *a1 = v3;
}

uint64_t sub_2742A4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_301A58();
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v29 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_30C068();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0, &qword_317E00);
  __chkstk_darwin(v5 - 8);
  v26 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v33 = sub_301A38();
  __chkstk_darwin(v33);
  v22[1] = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_401920, &unk_31F110);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_30C088();
  __chkstk_darwin(v14 - 8);
  v15 = sub_301A78();
  v27 = *(v15 - 8);
  v28 = v15;
  __chkstk_darwin(v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30C028();
  v24 = sub_301E48();
  v18 = *(v24 - 8);
  v23 = *(v18 + 56);
  v25 = v18 + 56;
  v23(v13, 1, 1, v24);
  v34 = _swiftEmptyArrayStorage;
  v22[3] = sub_27B830(&qword_40B710, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
  v22[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B718, &qword_330DE8);
  v22[4] = sub_EC8C(&qword_40B720, &qword_40B718, &qword_330DE8, &protocol conformance descriptor for [A]);
  sub_30D488();
  sub_301A68();
  sub_301CA8();
  sub_EB00(v9, v26, &qword_3FB8E0, &qword_317E00);
  sub_27BF54();
  sub_301A98();
  sub_EB68(v9, &qword_3FB8E0, &qword_317E00);
  sub_30C058();
  v35._countAndFlagsBits = 0xD000000000000058;
  v35._object = 0x8000000000342F70;
  sub_30C048(v35);
  v34 = _swiftEmptyArrayStorage;
  sub_27B830(&qword_40B730, &type metadata accessor for AttributedString.InterpolationOptions, &protocol conformance descriptor for AttributedString.InterpolationOptions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B738, &qword_330DF0);
  sub_EC8C(&qword_40B740, &qword_40B738, &qword_330DF0, &protocol conformance descriptor for [A]);
  v20 = v29;
  v19 = v30;
  sub_30D488();
  sub_30C038();
  (*(v31 + 8))(v20, v19);
  v36._countAndFlagsBits = 46;
  v36._object = 0xE100000000000000;
  sub_30C048(v36);
  sub_30C078();
  v23(v13, 1, 1, v24);
  v34 = _swiftEmptyArrayStorage;
  sub_30D488();
  sub_301A68();
  return (*(v27 + 8))(v17, v28);
}

uint64_t sub_274900()
{
  swift_getKeyPath();
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  return *(v0 + 104);
}

void sub_2749A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  *a2 = *(v3 + 104);
}

void sub_274A48(char a1)
{
  if (*(v1 + 104) == (a1 & 1))
  {
    *(v1 + 104) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
    sub_302D88();
  }
}

double sub_274B58()
{
  swift_getKeyPath();
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  return result;
}

double sub_274BFC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  *a2 = *(v3 + 112);

  return result;
}

double sub_274CA8(uint64_t a1)
{
  if (*(v1 + 112) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
    sub_302D88();
  }

  return result;
}

double sub_274DDC()
{
  swift_getKeyPath();
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  return result;
}

double sub_274E80@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  *a2 = *(v3 + 120);

  return result;
}

double sub_274F2C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D88();

  return result;
}

uint64_t sub_274FF8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ManageCategoriesController__pageContent;
  swift_beginAccess();
  return sub_27B780(v5 + v3, a1);
}

uint64_t sub_2750C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ManageCategoriesController__pageContent;
  swift_beginAccess();
  return sub_27B780(v3 + v4, a2);
}

uint64_t sub_275188(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ManageCategoriesController.PageContentState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_27B780(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D88();

  return sub_27C350(v6, type metadata accessor for ManageCategoriesController.PageContentState);
}

double sub_2752C4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ManageCategoriesController__pageContent;
  swift_beginAccess();
  sub_27B71C(a2, a1 + v4);
  swift_endAccess();
  return result;
}

double sub_275330()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408578, &qword_32B750);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408580, &unk_330CC0);
  v6 = *(v5 - 8);
  v13 = v5;
  v14 = v6;
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v15 = sub_308808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408588, &qword_32B758);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_315430;
  *(v9 + 32) = sub_3087F8() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408590, &qword_330CD0);
  sub_EC8C(&qword_408598, &qword_408590, &qword_330CD0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_304F18();

  sub_EC8C(&qword_4085A0, &qword_408578, &qword_32B750, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_304F48();
  (*(v2 + 8))(v4, v1);
  swift_allocObject();
  swift_weakInit();
  sub_EC8C(&qword_4085A8, &qword_408580, &unk_330CC0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v10 = v13;
  sub_304F58();

  (*(v14 + 8))(v8, v10);
  swift_getKeyPath();
  v15 = v0;
  sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);
  sub_302D98();

  v11 = *(v0 + 120);

  os_unfair_lock_lock(v11 + 6);
  sub_27B5F8();
  os_unfair_lock_unlock(v11 + 6);

  return result;
}

double sub_2756E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408F30, &qword_31EA30);
  __chkstk_darwin(v1 - 8);
  v40 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B670, &qword_330D80);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  __chkstk_darwin(v3);
  v38 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B678, &qword_330D88);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  __chkstk_darwin(v6);
  v39 = &v31 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B680, &qword_330D90);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v31 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B688, &qword_330D98);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = &v31 - v11;
  v45 = sub_303BC8();
  v31 = sub_30AEC8();
  v48 = v31;
  v32 = v0;
  v13 = *(v0 + 32);
  sub_12670(v32 + 40, v47);
  v14 = swift_allocObject();
  sub_12658(v47, v14 + 16);
  *(v14 + 56) = v13;

  sub_304CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B690, &qword_330DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B698, &unk_330DA8);
  v34 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_EC8C(&qword_40B6A0, &qword_40B690, &qword_330DA0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_EC8C(&qword_40B6A8, &qword_40B698, &unk_330DA8, &protocol conformance descriptor for Future<A, B>);
  sub_304F78();

  sub_309AC8();
  sub_EC8C(&qword_40B6B0, &qword_40B680, &qword_330D90, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v15 = v35;
  sub_304E98();
  (*(v37 + 8))(v10, v15);
  sub_EC8C(&qword_40B6B8, &qword_40B688, &qword_330D98, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v16 = v33;
  v17 = sub_304E88();
  (*(v36 + 8))(v12, v16);
  *&v47[0] = v45;
  v48 = v17;
  v37 = v17;
  swift_getKeyPath();
  v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ManageCategoriesController___observationRegistrar;
  v18 = v32;
  v46 = v32;
  v35 = sub_27B830(&qword_40B660, type metadata accessor for ManageCategoriesController, &unk_330C94);

  sub_302D98();

  v46 = *(v18 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FCF58, &qword_3196D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B6C0, &qword_330DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B658, &unk_330CB0);
  v19 = v34;
  sub_EC8C(&qword_3FCF60, &qword_3FCF58, &qword_3196D0, v34);
  sub_EC8C(&qword_40B6C8, &qword_40B6C0, &qword_330DB8, v19);
  sub_EC8C(&qword_40B6D0, &qword_40B658, &unk_330CB0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v20 = v38;
  sub_304CC8();
  sub_3EFB4();
  v21 = sub_30C8F8();
  *&v47[0] = v21;
  v22 = sub_30C8E8();
  v23 = v40;
  (*(*(v22 - 8) + 56))(v40, 1, 1, v22);
  sub_EC8C(&qword_40B6D8, &qword_40B670, &qword_330D80, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  sub_27B830(&qword_3FCF68, sub_3EFB4, &protocol conformance descriptor for OS_dispatch_queue);
  v24 = v39;
  v25 = v41;
  sub_304F28();
  sub_EB68(v23, &unk_408F30, &qword_31EA30);

  (*(v42 + 8))(v20, v25);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_27B878;
  *(v27 + 24) = v26;
  sub_EC8C(&qword_40B6E0, &qword_40B678, &qword_330D88, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v28 = v43;
  sub_304F58();

  (*(v44 + 8))(v24, v28);
  swift_getKeyPath();
  *&v47[0] = v18;
  sub_302D98();

  v29 = *(v18 + 120);

  os_unfair_lock_lock(v29 + 6);
  sub_27C3C8();
  os_unfair_lock_unlock(v29 + 6);

  return result;
}

void sub_275FE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48, &qword_319CA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_303BB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  sub_12670(a2, v24);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v16, v15, v11);
  sub_12658(v24, v18 + v17);
  *(v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8)) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_40B750, &qword_330E18);

  v19 = sub_30BF08();
  v20 = sub_30C468();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_330E10;
  v21[5] = v18;
  v21[6] = v19;

  sub_27AB08(0, 0, v10, &unk_330E28, v21);

  v22 = sub_30BE88();

  *a4 = v22;
}

uint64_t sub_276288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_303BB8();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = sub_30AB78();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_2763A8, 0, 0);
}

uint64_t sub_2763A8()
{
  v1 = v0[4];
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  sub_30AB68();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = sub_27B830(&qword_40B758, &type metadata accessor for ManageCategoriesPageIntent, &protocol conformance descriptor for ManageCategoriesPageIntent);
  *v4 = v0;
  v4[1] = sub_2764D8;
  v6 = v0[11];
  v7 = v0[9];
  v8 = v0[5];
  v9 = v0[2];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v9, v6, v8, v7, v5, v2, v3);
}