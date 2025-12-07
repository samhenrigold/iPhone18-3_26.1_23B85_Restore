void sub_100BFFFEC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v3;
  v58 = v2[96];
  v4 = *(v2 + 1);
  v52 = *v2;
  v53 = v4;
  v5 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v5;
  v59[0] = v52;
  v59[1] = v4;
  v59[2] = v54;
  v59[3] = v5;
  v59[4] = v56;
  v59[5] = v3;
  v60 = v58;
  if (*(&v52 + 1))
  {
    v6 = *(v2 + 5);
    v50[4] = *(v2 + 4);
    v50[5] = v6;
    v51 = v2[96];
    v7 = *(v2 + 1);
    v50[0] = *v2;
    v50[1] = v7;
    v8 = *(v2 + 3);
    v50[2] = *(v2 + 2);
    v50[3] = v8;
    v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
    v10 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v10)
    {
      v11 = v10;
      sub_100B3336C(&v52, v48);
      CoreAnimationPackageView.reset()();
    }

    else
    {
      v12 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v48[4] = v56;
      v48[5] = v57;
      v49 = v58;
      v48[0] = v52;
      v48[1] = v53;
      v48[2] = v54;
      v48[3] = v55;
      sub_100B03E90(v48, v47);
      sub_100B03E90(v59, v47);
      v13 = CoreAnimationPackageView.init(definition:)(v50);
      v14 = UIView.forAutolayout.getter();

      v11 = v14;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = *&v1[v9];
      *&v1[v9] = v11;
      if (v15)
      {
        v16 = v11;
        v17 = v15;
        v18 = static NSObject.== infix(_:_:)();

        if ((v18 & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v19 = sub_100BFF974();
      v20 = [v19 contentView];

      [v20 addSubview:v11];
      sub_10010FC20(&qword_1011B5630, "\b)\n");
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100EC3620;
      v22 = [v11 topAnchor];
      v23 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
      v24 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] topAnchor];
      v25 = [v22 constraintGreaterThanOrEqualToAnchor:v24];

      *(v21 + 32) = v25;
      v26 = [v11 leadingAnchor];
      v27 = [*&v1[v23] leadingAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v21 + 40) = v28;
      v29 = [v11 trailingAnchor];
      v30 = [*&v1[v23] trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v21 + 48) = v31;
      v32 = [v11 bottomAnchor];
      v33 = [*&v1[v23] bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v21 + 56) = v34;
      v35 = [v11 heightAnchor];
      v36 = [v11 widthAnchor];

      v37 = [v35 constraintEqualToAnchor:v36];
      *(v21 + 64) = v37;
      Array<A>.activate()(v21);
    }

    v38 = &v11[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
    if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] == 2)
    {
      swift_beginAccess();
      v39 = *v38;
      v40 = v38[1];
      *v38 = xmmword_100EFDCE0;
      sub_100B05000(v39, v40);
    }

    else
    {
      swift_beginAccess();
      v41 = *v38;
      v42 = v38[1];
      *v38 = xmmword_100EFDCD0;
      v43 = v11;
      sub_100B05000(v41, v42);

      sub_100009F78(0, &qword_1011B4F00, OS_dispatch_queue_ptr);
      v44 = static OS_dispatch_queue.main.getter();
      v45 = swift_allocObject();
      *(v45 + 16) = v1;
      *(v45 + 24) = v43;
      v46 = v1;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_100C05D8C, v45, 1.0);
    }

    sub_100C00570();
    sub_1000095E8(&v52, &qword_1011B1E08, &qword_100F011A0);
  }

  else
  {
    v11 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
    if (!v11)
    {
      return;
    }

    [v11 removeFromSuperview];
  }
}

void sub_100C00570()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v3 = v1;
    v19 = v3;
    if (v2 == 2)
    {
      v4 = [v3 layer];
      [v4 setCompositingFilter:0];

      v5 = [v0 traitCollection];
      v6 = [v5 accessibilityContrast];

      if (v6 != 1)
      {
        v12 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v11 = v19;
        v13 = *&v19[v12];
        *&v19[v12] = 0;
        if (v13)
        {
          sub_100B06030();

          return;
        }

        goto LABEL_15;
      }

      CoreAnimationPackageView.foregroundColor.setter([v0 tintColor]);
    }

    else
    {
      v7 = [v0 traitCollection];
      v8 = [v7 accessibilityContrast];

      if (v8 != 1)
      {
        v14 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
        swift_beginAccess();
        v15 = v19;
        v16 = *&v19[v14];
        *&v19[v14] = 0;
        if (v16)
        {
          sub_100B06030();

          v15 = v19;
        }

        v17 = [v15 layer];
        v18 = kCAFilterDestOut;
        [v17 setCompositingFilter:v18];

        v11 = v20;
        goto LABEL_15;
      }

      v9 = [objc_opt_self() whiteColor];
      CoreAnimationPackageView.foregroundColor.setter(v9);
      v10 = [v19 layer];
      [v10 setCompositingFilter:0];
    }

    v11 = v19;

LABEL_15:
  }
}

void sub_100C007E8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer;
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer];
  if (v0[v1] - 1 > 1)
  {
    if (!v3)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v4 = 0;
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"longPressed:"];
    [v4 setMinimumPressDuration:0.25];
    [v0 addGestureRecognizer:v4];
  }

  v5 = *&v0[v2];
  *&v0[v2] = v4;
}

void sub_100C008C8(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 2 || v4 == 1 && v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v5 = [a1 state];
    if ((v5 - 3) >= 3)
    {
      if (v5 == 2)
      {
        v7 = sub_100BFF340();
        [a1 locationInView:v7];
        v9 = v8;
        v11 = v10;

        sub_100C00C68(v9, v11);
      }

      else if (v5 == 1)
      {
        v6 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
        v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 1;
        sub_100C02000(v6);
        [v1 sendActionsForControlEvents:0x10000];
        [v1 sendActionsForControlEvents:4096];
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {
      sub_100C00B64();
    }
  }
}

void sub_100C00A04(void *a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  if (v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] != 2)
  {
    v4 = [a1 state];
    if ((v4 - 3) >= 3)
    {
      if (v4 == 2)
      {
        v12 = sub_100BFF340();
        [a1 locationInView:v12];
        v14 = v13;
        v16 = v15;

        sub_100C00C68(v14, v16);
      }

      else if (v4 == 1)
      {
        [v1 sendActionsForControlEvents:0x10000];
        v5 = v1[v2];
        v1[v2] = 1;
        sub_100C02000(v5);
        v6 = sub_100BFF340();
        [a1 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
        *v11 = v8;
        *(v11 + 1) = v10;
        v11[16] = 0;
        *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
      }
    }

    else
    {

      sub_100C00B64();
    }
  }
}

id sub_100C00B64()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue];
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue];
  if (v1 > v2)
  {
    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue];
    v4 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    v5 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    if (v4 > v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
    }

    if (v5 < v3)
    {
      v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
    }

    if (v1 + ((v2 - v1) * ((v3 - v4) / (v5 - v4)))) == v2 && (v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue, swift_beginAccess(), (v0[v6]))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = v7;
    sub_100C02000(v8);
    v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    return [v0 sendActionsForControlEvents:0x40000];
  }

  return result;
}

void sub_100C00C68(double a1, double a2)
{
  v4 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  if (v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation + 16])
  {
    *v4 = a1;
    v4[1] = a2;
    v5 = a2;
    *(v4 + 16) = 0;
  }

  else
  {
    v5 = v4[1];
  }

  v6 = sub_100BFF340();
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v39.origin.x = v8;
  v39.origin.y = v10;
  v39.size.width = v12;
  v39.size.height = v14;
  Height = CGRectGetHeight(v39);
  v16 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio];
  swift_beginAccess();
  v17 = Height * (1.0 - *v16);
  v18 = (v5 - a2) * (1.0 / v17) + *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue];
  v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange];
  v20 = v18;
  if (v19 <= v20)
  {
    v19 = v18;
  }

  if (*&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4] < v19)
  {
    v19 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4];
  }

  sub_100BFF3FC(v19);
  if (v17 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v25 = v17 * v18;
    if (v17 * v18 < 0.0 || v25 > v17)
    {
      if (v25 >= 0.0)
      {
        v27 = v25 + 0.0 - v17;
      }

      else
      {
        v27 = v25 + 0.0;
      }

      v22.n128_f64[0] = fabs(v27);
      v23.n128_u64[1] = 0xBF8B4E81B4E81B4FLL;
      v28 = vmulq_n_f64(xmmword_100EFDCF0, v22.n128_f64[0]);
      v22.n128_f64[1] = v27;
      v21 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      v29 = vmulq_f64(v22, v21);
    }

    else
    {
      v28 = xmmword_1011B7D60;
      v29 = *&qword_1011B7D70;
    }

    v30 = &v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v21.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v22.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v23.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v24.n128_u64[0] = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    *v30 = v28;
    v30[1] = v29;
    sub_100C04B28(v21, v22, v23, v24);
    LOBYTE(v38) = 1;
    sub_100BFFE10(0x100000000);
    v31 = sub_100BFF9F8();
    v32 = v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v33 = [v2 traitCollection];
    if (v32 == 2)
    {

      v34 = 0.0;
    }

    else if (v32)
    {

      v34 = 1.0;
    }

    else
    {
      v35 = v33;
      v36 = [v33 accessibilityContrast];

      v34 = 0.5;
      if (v36 == 1)
      {
        v34 = 1.0;
      }
    }

    [v31 setAlpha:v34];

    v37 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
    swift_beginAccess();
    if (v2[v37])
    {
      [v2 sendActionsForControlEvents:4096];
    }
  }
}

void sub_100C00EF4(uint64_t *a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v61 = *(v3 + 64);
  v62 = v5;
  v6 = *(v3 + 16);
  v58[0] = *v3;
  v58[1] = v6;
  v7 = *(v3 + 16);
  v8 = *(v3 + 48);
  v59 = *(v3 + 32);
  v60 = v8;
  v52 = v4;
  v53 = v61;
  v54 = *(v3 + 80);
  v63 = *(v3 + 96);
  v9 = v58[0];
  v55 = *(v3 + 96);
  v50 = v7;
  v51 = v59;
  v11 = *a1;
  v10 = a1[1];
  if (*(&v58[0] + 1))
  {
    if (v10)
    {
      *&v26 = *a1;
      *(&v26 + 1) = v10;
      v12 = *(a1 + 4);
      v29 = *(a1 + 3);
      v30 = v12;
      v31 = *(a1 + 5);
      v32 = *(a1 + 96);
      v13 = *(a1 + 2);
      v27 = *(a1 + 1);
      v28 = v13;
      v41 = v32;
      v39 = v12;
      v40 = v31;
      v37 = v13;
      v38 = v29;
      v35 = v26;
      v36 = v27;
      v14 = *(v3 + 64);
      v56[3] = *(v3 + 48);
      v56[4] = v14;
      v56[5] = *(v3 + 80);
      v57 = *(v3 + 96);
      v15 = *(v3 + 32);
      v56[1] = *(v3 + 16);
      v56[2] = v15;
      v56[0] = v58[0];
      sub_100B3336C(v58, v33);
      sub_100B3336C(v58, v33);
      sub_100B3336C(a1, v33);
      v16 = _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v56, &v35);
      sub_1000095E8(v58, &qword_1011B1E08, &qword_100F011A0);
      sub_1000095E8(&v26, &qword_1011B1E08, &qword_100F011A0);
      v33[0] = v9;
      v33[4] = v53;
      v33[5] = v54;
      v34 = v55;
      v33[1] = v50;
      v33[2] = v51;
      v33[3] = v52;
      sub_1000095E8(v33, &qword_1011B1E08, &qword_100F011A0);
      if (v16)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if (!v10)
  {
    v35 = *&v58[0];
    v24 = *(v3 + 64);
    v38 = *(v3 + 48);
    v39 = v24;
    v40 = *(v3 + 80);
    v41 = *(v3 + 96);
    v25 = *(v3 + 32);
    v36 = *(v3 + 16);
    v37 = v25;
    sub_100B3336C(v58, v56);
    sub_100B3336C(a1, v56);
    sub_1000095E8(&v35, &qword_1011B1E08, &qword_100F011A0);
    return;
  }

  v35 = v58[0];
  v17 = *(v3 + 64);
  v38 = *(v3 + 48);
  v39 = v17;
  v40 = *(v3 + 80);
  v41 = *(v3 + 96);
  v18 = *(v3 + 32);
  v36 = *(v3 + 16);
  v37 = v18;
  v42 = v11;
  v43 = v10;
  v19 = *(a1 + 2);
  v44 = *(a1 + 1);
  v45 = v19;
  v20 = *(a1 + 3);
  v21 = *(a1 + 4);
  v22 = *(a1 + 5);
  v49 = *(a1 + 96);
  v48 = v22;
  v47 = v21;
  v46 = v20;
  sub_100B3336C(v58, v56);
  sub_100B3336C(a1, v56);
  sub_1000095E8(&v35, &qword_1011B7EE8, &qword_100F0A1F8);
LABEL_7:
  v23 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  sub_100BFFFEC();
}

__n128 sub_100C011C0(id a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  if (a1)
  {
    a1 = [a1 layoutDirection];
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (v4 && a1 + 1 >= 2)
        {
          if (a1 != 1)
          {
            goto LABEL_42;
          }

LABEL_34:
          v5 = CGPoint.centerRight.unsafeMutableAddressor();
          goto LABEL_41;
        }

LABEL_40:
        v5 = CGPoint.centerLeft.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (!v4 || a1 + 1 < 2)
      {
LABEL_17:
        v5 = CGPoint.topRight.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (a1 != 1)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (a2)
      {
        v5 = CGPoint.topCenter.unsafeMutableAddressor();
        goto LABEL_41;
      }

      if (v4 && a1 + 1 >= 2)
      {
        if (a1 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    v5 = CGPoint.topLeft.unsafeMutableAddressor();
    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v5 = CGPoint.center.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (!v4 || a1 + 1 < 2)
    {
      goto LABEL_34;
    }

    if (a1 != 1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 == 6)
  {
    if (!v4 || a1 + 1 < 2)
    {
      goto LABEL_38;
    }

    if (a1 == 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v5 = CGPoint.bottomCenter.unsafeMutableAddressor();
LABEL_41:
      v6 = v5;
      swift_beginAccess();
      return *v6;
    }

    if (!v4 || a1 + 1 < 2)
    {
LABEL_31:
      v5 = CGPoint.bottomRight.unsafeMutableAddressor();
      goto LABEL_41;
    }

    if (a1 == 1)
    {
LABEL_38:
      v5 = CGPoint.bottomLeft.unsafeMutableAddressor();
      goto LABEL_41;
    }
  }

LABEL_42:
  result.n128_u64[0] = sub_100C011C0(0, a2, a3).n128_u64[0];
  result.n128_u64[1] = v8;
  return result;
}

char *VerticalToggleSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  v11[96] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio] = 1040402485;
  v12 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
  *v12 = 0;
  v12[8] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode] = 1;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint] = 8;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange] = 0x3F80000000000000;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue] = 1065353216;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator] = 0;
  v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2;
  v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *&v4[v13] = [objc_opt_self() effectWithBlurRadius:10.0];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = 0;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer] = 0;
  v14 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue] = 0;
  v15 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  v16 = *&qword_1011B7D70;
  *v15 = xmmword_1011B7D60;
  v15[1] = v16;
  v17 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
  *v17 = 0x3FF0000000000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0x3FF0000000000000;
  v17[4] = 0;
  v17[5] = 0;
  v18 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v19 = type metadata accessor for VerticalToggleSlider();
  v18[4] = 0;
  v18[5] = 0;
  v43.receiver = v4;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  [v20 setDeliversTouchesForGesturesToSuperview:0];
  sub_100009F78(0, &qword_1011B1640, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v20 addAction:v21 forControlEvents:64];

  v22 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v20 action:"dragged:"];
  [v20 addGestureRecognizer:v22];

  sub_100C007E8();
  [v20 setClipsToBounds:0];
  sub_100BFFAB4();
  v23 = sub_100BFF974();
  [v23 setUserInteractionEnabled:0];

  v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView;
  [*&v20[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView] setClipsToBounds:0];
  [*&v20[v24] setAutoresizingMask:18];
  v25 = *&v20[v24];
  v26 = sub_100BFF28C();
  [v26 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setFrame:{v28, v30, v32, v34}];
  v35 = [*&v20[v24] contentView];
  v36 = [v35 layer];

  [v36 setCompositingFilter:kCAFilterPlusL];
  [*&v20[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] addSubview:*&v20[v24]];
  sub_100BFFC74();
  sub_100BFF580();
  sub_100BFFFEC();
  v37 = sub_100BFF28C();
  static UIView.Corner.rounded.getter();
  v38 = type metadata accessor for UIView.Corner();
  (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
  UIView.corner.setter();

  sub_10010FC20(qword_1011B36C0, &unk_100F088E0);
  v39 = swift_allocObject();
  v42 = xmmword_100EBC6B0;
  *(v39 + 16) = xmmword_100EBC6B0;
  *(v39 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v39 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v40 = swift_allocObject();
  *(v40 + 16) = v42;
  *(v40 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v40 + 40) = &protocol witness table for UITraitLayoutDirection;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v20;
}

void VerticalToggleSlider.isEnabled.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for VerticalToggleSlider();
  v14.receiver = v2;
  v14.super_class = v4;
  v5 = objc_msgSendSuper2(&v14, "isEnabled");
  v13.receiver = v2;
  v13.super_class = v4;
  objc_msgSendSuper2(&v13, "setEnabled:", v3 & 1);
  if (v5 != [v2 isEnabled])
  {
    v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled;
    swift_beginAccess();
    if (v2[v6])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v2 isEnabled] ^ 1;
    }

    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
    if (v8)
    {
      v9 = 0.4;
      if (!v7)
      {
        v9 = 1.0;
      }

      [v8 setAlpha:v9];
    }

    v10 = sub_100BFF974();
    v11 = v10;
    v12 = 1.0;
    if (v7)
    {
      v12 = 0.5;
    }

    [v10 setAlpha:v12];
  }
}

Swift::Void __swiftcall VerticalToggleSlider.layoutSubviews()()
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for VerticalToggleSlider();
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v4 = sub_100BFF28C();
  static UIView.Corner.rounded.getter();
  v5 = type metadata accessor for UIView.Corner();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  UIView.corner.setter();
}

Swift::Void __swiftcall VerticalToggleSlider.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_100BFF580();
}

BOOL VerticalToggleSlider.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v8 = CGRectInset(v7, -14.0, -14.0);
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v8, v6);
}

id sub_100C01F50(void *a1)
{
  v2 = [a1 userInterfaceStyle] == 2;
  v3 = [objc_opt_self() tintColor];
  v4 = [v3 resolvedColorWithTraitCollection:a1];

  v5 = [v4 colorWithAlphaComponent:dbl_100EFDD00[v2]];
  return v5;
}

void sub_100C02000(int a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v5 = &v159[-v4];
  v6 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v7 = v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  if (v7 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 == 2)
  {
    if (v7)
    {
      sub_100BFF3FC(1.0);
    }
  }

  else if (((v7 ^ a1) & 1) == 0)
  {
    return;
  }

  v8 = sub_100BFF508();
  [v8 userInteractionStarted];

  v9 = objc_opt_self();
  if ([v9 areAnimationsEnabled])
  {
    v10 = v1[v6];
    if (a1 == 2)
    {
      if (v10 == 2)
      {
        return;
      }

      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 24) = v10 & 1;
      if (v10)
      {
        v12 = qword_1011B0840;
        v13 = v1;
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = qword_1011B7DB0;
        [qword_1011B7DB0 settlingDuration];
        v16 = v15;
        [v14 mass];
        v18 = v17;
        [v14 stiffness];
        v20 = v19;
        [v14 damping];
        v22 = v21;
        *&aBlock.tx = sub_100C05DF0;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002BC98;
        *&aBlock.d = &unk_1010E96A0;
        v23 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v23 options:0 mass:v16 stiffness:0.0 damping:v18 initialVelocity:v20 animations:v22 completion:0.0];
        _Block_release(v23);
        if (qword_1011B0848 != -1)
        {
          swift_once();
        }

        v24 = qword_1011B7DB8;
        v25 = swift_allocObject();
        *(v25 + 16) = v13;
        v26 = v13;
        [v24 settlingDuration];
        v28 = v27;
        [v24 mass];
        v30 = v29;
        [v24 stiffness];
        v32 = v31;
        [v24 damping];
        v34 = v33;
        *&aBlock.tx = sub_100C05E0C;
        *&aBlock.ty = v25;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002BC98;
        *&aBlock.d = &unk_1010E96F0;
        v35 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v35 options:0 mass:v28 stiffness:0.0 damping:v30 initialVelocity:v32 animations:v34 completion:0.0];
        _Block_release(v35);
      }

      else
      {
        v97 = qword_1011B0820;
        v98 = v1;
        if (v97 != -1)
        {
          swift_once();
        }

        v99 = qword_1011B7D90;
        [qword_1011B7D90 settlingDuration];
        v101 = v100;
        [v99 mass];
        v103 = v102;
        [v99 stiffness];
        v105 = v104;
        [v99 damping];
        v107 = v106;
        *&aBlock.tx = sub_100C05DF0;
        *&aBlock.ty = v11;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002BC98;
        *&aBlock.d = &unk_1010E9600;
        v108 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v108 options:0 mass:v101 stiffness:0.2 damping:v103 initialVelocity:v105 animations:v107 completion:0.0];
        _Block_release(v108);
        if (qword_1011B0818 != -1)
        {
          swift_once();
        }

        v109 = qword_1011B7D88;
        v110 = swift_allocObject();
        *(v110 + 16) = v98;
        v111 = v98;
        [v109 settlingDuration];
        v113 = v112;
        [v109 mass];
        v115 = v114;
        [v109 stiffness];
        v117 = v116;
        [v109 damping];
        v119 = v118;
        *&aBlock.tx = sub_100C05DFC;
        *&aBlock.ty = v110;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002BC98;
        *&aBlock.d = &unk_1010E9650;
        v120 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v120 options:0 mass:v113 stiffness:0.0 damping:v115 initialVelocity:v117 animations:v119 completion:0.0];
        _Block_release(v120);

        sub_100009F78(0, &qword_1011B4F00, OS_dispatch_queue_ptr);
        v121 = static OS_dispatch_queue.main.getter();
        v122 = swift_allocObject();
        *(v122 + 16) = v111;
        v123 = v111;
        OS_dispatch_queue.asyncAfter(_:block:)(sub_100C05E04, v122, 0.3);
      }

LABEL_65:

      return;
    }

    if (v10 != 2)
    {
      if (((a1 ^ v10) & 1) == 0)
      {
        return;
      }

      v73 = swift_allocObject();
      *(v73 + 16) = v2;
      *(v73 + 24) = v10 & 1;
      v74 = swift_allocObject();
      *(v74 + 16) = v2;
      *(v74 + 24) = v10 & 1;
      if (v10)
      {
        v75 = qword_1011B0840;
        v76 = v2;
        if (v75 != -1)
        {
          swift_once();
        }

        v77 = qword_1011B7DB0;
        [qword_1011B7DB0 settlingDuration];
        v79 = v78;
        [v77 mass];
        v81 = v80;
        [v77 stiffness];
        v83 = v82;
        [v77 damping];
        v85 = v84;
        *&aBlock.tx = sub_100C05D94;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002BC98;
        *&aBlock.d = &unk_1010E9420;
        v86 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v86 options:0 mass:v79 stiffness:0.0 damping:v81 initialVelocity:v83 animations:v85 completion:0.0];
        _Block_release(v86);
        if (qword_1011B0848 != -1)
        {
          swift_once();
        }

        v87 = qword_1011B7DB8;
        [qword_1011B7DB8 settlingDuration];
        v89 = v88;
        [v87 mass];
        v91 = v90;
        [v87 stiffness];
        v93 = v92;
        [v87 damping];
        v95 = v94;
        *&aBlock.tx = sub_100C05DA0;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1010E9448;
      }

      else
      {
        v138 = qword_1011B0850;
        v139 = v2;
        if (v138 != -1)
        {
          swift_once();
        }

        v140 = qword_1011B7DC0;
        v141 = swift_allocObject();
        *(v141 + 16) = v139;
        v142 = v139;
        [v140 settlingDuration];
        v144 = v143;
        [v140 mass];
        v146 = v145;
        [v140 stiffness];
        v148 = v147;
        [v140 damping];
        v150 = v149;
        *&aBlock.tx = sub_100C05D94;
        *&aBlock.ty = v73;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002BC98;
        *&aBlock.d = &unk_1010E93A8;
        v151 = _Block_copy(&aBlock);

        *&aBlock.tx = UIScreen.Dimensions.size.getter;
        *&aBlock.ty = v141;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_1005C3688;
        *&aBlock.d = &unk_1010E93D0;
        v152 = _Block_copy(&aBlock);

        [v9 _animateUsingSpringWithDuration:6 delay:v151 options:v152 mass:v144 stiffness:0.0 damping:v146 initialVelocity:v148 animations:v150 completion:0.0];
        _Block_release(v152);
        _Block_release(v151);

        if (qword_1011B0858 != -1)
        {
          swift_once();
        }

        v153 = qword_1011B7DC8;
        [qword_1011B7DC8 settlingDuration];
        v89 = v154;
        [v153 mass];
        v91 = v155;
        [v153 stiffness];
        v93 = v156;
        [v153 damping];
        v95 = v157;
        *&aBlock.tx = sub_100C05DA0;
        *&aBlock.ty = v74;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        v96 = &unk_1010E93F8;
      }

      *&aBlock.c = sub_10002BC98;
      *&aBlock.d = v96;
      v158 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v158 options:0 mass:v89 stiffness:0.0 damping:v91 initialVelocity:v93 animations:v95 completion:0.0];
      _Block_release(v158);
      goto LABEL_65;
    }

    if ((a1 & 1) == 0)
    {
      if (qword_1011B0830 != -1)
      {
        swift_once();
      }

      v44 = qword_1011B7DA0;
      v45 = swift_allocObject();
      *(v45 + 16) = v2;
      v46 = v2;
      [v44 settlingDuration];
      v48 = v47;
      [v44 mass];
      v50 = v49;
      [v44 stiffness];
      v52 = v51;
      [v44 damping];
      v54 = v53;
      *&aBlock.tx = sub_100C05DAC;
      *&aBlock.ty = v45;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10002BC98;
      *&aBlock.d = &unk_1010E9498;
      v55 = _Block_copy(&aBlock);

      [v9 _animateUsingSpringWithDuration:6 delay:v55 options:0 mass:v48 stiffness:0.0 damping:v50 initialVelocity:v52 animations:v54 completion:0.0];
      _Block_release(v55);
    }

    if (qword_1011B0838 != -1)
    {
      swift_once();
    }

    v56 = qword_1011B7DA8;
    *&v57 = COERCE_DOUBLE(swift_allocObject());
    v58 = *&v57;
    v59 = a1 & 1;
    if (a1)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = 0.1;
    }

    *(v57 + 16) = v59;
    *(v57 + 24) = v2;
    if (a1)
    {
      v61 = 0.6;
    }

    else
    {
      v61 = 0.7;
    }

    v62 = swift_allocObject();
    *(v62 + 16) = v2;
    v63 = objc_opt_self();
    v64 = v2;
    [v63 begin];
    [v63 setAnimationTimingFunction:v56];
    *&aBlock.tx = sub_100C05DB4;
    aBlock.ty = v58;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10002BC98;
    *&aBlock.d = &unk_1010E9510;
    v65 = _Block_copy(&aBlock);

    *&aBlock.tx = UIScreen.Dimensions.size.getter;
    *&aBlock.ty = v62;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_1005C3688;
    *&aBlock.d = &unk_1010E9538;
    v66 = _Block_copy(&aBlock);

    [v9 animateWithDuration:2 delay:v65 options:v66 animations:0.75 completion:v60];
    _Block_release(v66);
    _Block_release(v65);
    [v63 commit];

    sub_100009F78(0, &qword_1011B4F00, OS_dispatch_queue_ptr);
    v67 = static OS_dispatch_queue.main.getter();
    v68 = swift_allocObject();
    *(v68 + 16) = v64;
    v69 = v64;
    OS_dispatch_queue.asyncAfter(_:block:)(sub_100C05DC0, v68, v61);

    if (!v59)
    {
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&aBlock.tx = sub_100C05DE8;
      *&aBlock.ty = v70;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_10002BC98;
      *&aBlock.d = &unk_1010E95B0;
      v71 = _Block_copy(&aBlock);
      v72 = v69;

      [v9 animateWithDuration:0 delay:v71 options:0 animations:0.25 completion:0.7];
      _Block_release(v71);
    }
  }

  else
  {
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsUpdateConstraints];
    v36 = [v1 superview];
    [v36 setNeedsLayout];

    v37 = [v1 superview];
    [v37 layoutIfNeeded];

    [v1 updateConstraintsIfNeeded];
    v38 = v1[v6];
    v39 = 1.0;
    v40 = 1.0;
    if (v38 != 2 && (v38 & 1) != 0)
    {
      v41 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      v42 = 2.0;
      if ((v41[1] & 1) == 0)
      {
        v42 = *v41;
      }

      v43 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
      swift_beginAccess();
      if (v43[1])
      {
        v39 = 2.0;
      }

      else
      {
        v39 = *v43;
      }

      v40 = v42;
    }

    CGAffineTransformMakeScale(&aBlock, v40, v39);
    v124 = *&aBlock.c;
    v125 = *&aBlock.tx;
    v126 = &v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
    *v126 = *&aBlock.a;
    *(v126 + 1) = v124;
    *(v126 + 2) = v125;
    v127 = sub_100BFF340();
    v128 = *(v126 + 1);
    *&aBlock.a = *v126;
    *&aBlock.c = v128;
    *&aBlock.tx = *(v126 + 2);
    [v127 setTransform:&aBlock];

    sub_100BFFFEC();
    LOBYTE(aBlock.a) = 1;
    sub_100BFFE10(0x100000000);
    v129 = sub_100BFF9F8();
    v130 = v1[v6];
    v131 = [v2 traitCollection];
    if (v130 == 2)
    {

      v132 = 0.0;
    }

    else if (v130)
    {

      v132 = 1.0;
    }

    else
    {
      v133 = v131;
      v134 = [v131 accessibilityContrast];

      v132 = 0.5;
      if (v134 == 1)
      {
        v132 = 1.0;
      }
    }

    [v129 setAlpha:v132];

    v135 = sub_100BFF28C();
    static UIView.Corner.rounded.getter();
    v136 = type metadata accessor for UIView.Corner();
    (*(*(v136 - 8) + 56))(v5, 0, 1, v136);
    UIView.corner.setter();

    v137 = [objc_opt_self() clearColor];
    UIView.Shadow.init(color:opacity:radius:offset:)(v137, &aBlock, 0.0, 0.0, 0.0, 0.0);
    UIView.shadow.setter(&aBlock);
  }
}

void sub_100C033D0(unsigned __int8 *a1, char a2)
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v29[-v5];
  [a1 invalidateIntrinsicContentSize];
  [a1 setNeedsUpdateConstraints];
  v7 = [a1 superview];
  [v7 setNeedsLayout];

  v8 = [a1 superview];
  [v8 layoutIfNeeded];

  [a1 updateConstraintsIfNeeded];
  v9 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode;
  v10 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v11 = 1.0;
  v12 = 1.0;
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v13 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    v14 = 2.0;
    if ((v13[8] & 1) == 0)
    {
      v14 = *v13;
    }

    v15 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor];
    swift_beginAccess();
    if (v15[8])
    {
      v11 = 2.0;
    }

    else
    {
      v11 = *v15;
    }

    v12 = v14;
  }

  CGAffineTransformMakeScale(&v30, v12, v11);
  v16 = *&v30.c;
  v17 = *&v30.tx;
  v18 = &a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = *&v30.a;
  *(v18 + 1) = v16;
  *(v18 + 2) = v17;
  v19 = sub_100BFF340();
  v20 = *(v18 + 1);
  *&v30.a = *v18;
  *&v30.c = v20;
  *&v30.tx = *(v18 + 2);
  [v19 setTransform:&v30];

  v21 = sub_100BFF28C();
  static UIView.Corner.rounded.getter();
  v22 = type metadata accessor for UIView.Corner();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  UIView.corner.setter();

  if (a2)
  {
    LOBYTE(v30.a) = 1;
    sub_100BFFE10(0x100000000);
    v23 = sub_100BFF9F8();
    v24 = a1[v9];
    v25 = [a1 traitCollection];
    if (v24 == 2)
    {

      v26 = 0.0;
    }

    else if (v24)
    {

      v26 = 1.0;
    }

    else
    {
      v27 = v25;
      v28 = [v25 accessibilityContrast];

      v26 = 0.5;
      if (v28 == 1)
      {
        v26 = 1.0;
      }
    }

    [v23 setAlpha:v26];

    sub_100BFFFEC();
  }

  else
  {
    LOBYTE(v30.a) = 0;
    sub_100BFFE10(1065353216);
  }

  sub_100BFF580();
}

uint64_t sub_100C036E8()
{
  v0 = [objc_opt_self() blackColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.3, 9.0, 0.0, 5.0);
  return UIView.shadow.setter(v2);
}

uint64_t sub_100C03758(unsigned __int8 *a1)
{
  v2 = sub_100BFF9F8();
  v3 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v4 = [a1 traitCollection];
  if (v3 == 2)
  {

    v5 = 0.0;
  }

  else if (v3)
  {

    v5 = 1.0;
  }

  else
  {
    v6 = v4;
    v7 = [v4 accessibilityContrast];

    v5 = 0.5;
    if (v7 == 1)
    {
      v5 = 1.0;
    }
  }

  [v2 setAlpha:v5];

  sub_100BFFFEC();
  v8 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v8, v10, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v10);
}

double sub_100C03858(void *a1)
{
  if (qword_1011B0828 != -1)
  {
    swift_once();
  }

  v2 = qword_1011B7D98;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  [v4 begin];
  [v4 setAnimationTimingFunction:v2];
  v6 = objc_opt_self();
  v9[4] = sub_100C05E14;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10002BC98;
  v9[3] = &unk_1010E9740;
  v7 = _Block_copy(v9);

  [v6 animateWithDuration:2 delay:v7 options:0 animations:0.85 completion:0.0];
  _Block_release(v7);
  [v4 commit];

  return result;
}

void sub_100C039F0(uint64_t a1)
{
  v2 = sub_100BFF9F8();
  v3 = sub_100BFF974();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v13.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v14.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
  v15.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
  v16.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
  v17 = *&qword_1011B7D70;
  *v12 = xmmword_1011B7D60;
  v12[1] = v17;
  sub_100C04B28(v13, v14, v15, v16);
}

uint64_t sub_100C03AA4(char a1, char *a2)
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  v4 = __chkstk_darwin();
  v9 = v27 - v8;
  if (a1)
  {
    v10 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v4.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
    v5.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8];
    v6.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16];
    v7.n128_u64[0] = *&a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24];
    v11 = *&qword_1011B7D70;
    *v10 = xmmword_1011B7D60;
    *(v10 + 1) = v11;
    sub_100C04B28(v4, v5, v6, v7);
    LOBYTE(v27[0]) = 1;
    sub_100BFFE10(0x100000000);
    v12 = sub_100BFF9F8();
    v13 = a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
    v14 = [a2 traitCollection];
    if (v13 == 2)
    {

      v15 = 0.0;
    }

    else if (v13)
    {

      v15 = 1.0;
    }

    else
    {
      v16 = v14;
      v17 = [v14 accessibilityContrast];

      v15 = 0.5;
      if (v17 == 1)
      {
        v15 = 1.0;
      }
    }

    [v12 setAlpha:v15];
  }

  v18 = &a2[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform];
  *v18 = 0x3FF0000000000000;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0x3FF0000000000000;
  *(v18 + 4) = 0;
  *(v18 + 5) = 0;
  v19 = sub_100BFF340();
  v20 = *(v18 + 1);
  v27[0] = *v18;
  v27[1] = v20;
  v27[2] = *(v18 + 2);
  [v19 setTransform:v27];

  [a2 invalidateIntrinsicContentSize];
  [a2 setNeedsUpdateConstraints];
  v21 = [a2 superview];
  [v21 setNeedsLayout];

  v22 = [a2 superview];
  [v22 layoutIfNeeded];

  [a2 updateConstraintsIfNeeded];
  v23 = sub_100BFF28C();
  static UIView.Corner.rounded.getter();
  v24 = type metadata accessor for UIView.Corner();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  UIView.corner.setter();

  v25 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v25, v27, 0.0, 0.0, 0.0, 0.0);
  return UIView.shadow.setter(v27);
}

void sub_100C03D70(unsigned __int8 *a1)
{
  v7 = sub_100BFF9F8();
  v2 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v3 = [a1 traitCollection];
  if (v2 == 2)
  {

    v4 = 0.0;
  }

  else if (v2)
  {

    v4 = 1.0;
  }

  else
  {
    v5 = v3;
    v6 = [v3 accessibilityContrast];

    v4 = 0.5;
    if (v6 == 1)
    {
      v4 = 1.0;
    }
  }

  [v7 setAlpha:v4];
}

void sub_100C03E34(uint64_t a1, char a2)
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v5 = &v25[-v4];
  v6 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode);
  v7 = 1.0;
  v8 = 1.0;
  if (v6 != 2 && (v6 & 1) != 0)
  {
    v9 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    v10 = 2.0;
    if ((*(v9 + 8) & 1) == 0)
    {
      v10 = *v9;
    }

    v11 = a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
    swift_beginAccess();
    if (*(v11 + 8))
    {
      v7 = 2.0;
    }

    else
    {
      v7 = *v11;
    }

    v8 = v10;
  }

  CGAffineTransformMakeScale(&v26, v8, v7);
  v12 = *&v26.c;
  v13 = *&v26.tx;
  v14 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v14 = *&v26.a;
  v14[1] = v12;
  v14[2] = v13;
  v15 = sub_100BFF340();
  v16 = v14[1];
  *&v26.a = *v14;
  *&v26.c = v16;
  *&v26.tx = v14[2];
  [v15 setTransform:&v26];

  v17 = sub_100BFF28C();
  static UIView.Corner.rounded.getter();
  v18 = type metadata accessor for UIView.Corner();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  UIView.corner.setter();

  if ((a2 & 1) == 0)
  {
    v23 = (a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v19.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
    v20.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 8);
    v21.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16);
    v22.n128_u64[0] = *(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24);
    v24 = *&qword_1011B7D70;
    *v23 = xmmword_1011B7D60;
    v23[1] = v24;
    sub_100C04B28(v19, v20, v21, v22);
  }
}

uint64_t sub_100C0402C(unsigned __int8 *a1, char a2)
{
  LOBYTE(v19) = 1;
  sub_100BFFE10(0x100000000);
  v4 = sub_100BFF9F8();
  v5 = a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
  v6 = [a1 traitCollection];
  if (v5 == 2)
  {

    v7 = 0.0;
  }

  else if (v5)
  {

    v7 = 1.0;
  }

  else
  {
    v8 = v6;
    v9 = [v6 accessibilityContrast];

    v7 = 0.5;
    if (v9 == 1)
    {
      v7 = 1.0;
    }
  }

  [v4 setAlpha:v7];

  v10 = objc_opt_self();
  if (a2)
  {
    v11 = [v10 blackColor];
    v12 = 0.3;
    v13 = 9.0;
    v14 = 5.0;
  }

  else
  {
    v11 = [v10 clearColor];
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  UIView.Shadow.init(color:opacity:radius:offset:)(v11, &v16, v12, v13, 0.0, v14);
  v19 = v16;
  v20 = v17;
  v21 = v18;
  return UIView.shadow.setter(&v19);
}

double sub_100C0419C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) != 2)
  {
    v2 = (a2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_100EFDD10;
    sub_100B05000(v3, v4);
  }

  return result;
}

Swift::Void __swiftcall VerticalToggleSlider.didMoveToWindow()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VerticalToggleSlider();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 windowScene];

    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, v4, 1, 1, sub_100C05C74, v5);
    }

    else
    {
      v2 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver] = v2;
}

void sub_100C04350(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100BFFFEC();
  }
}

id sub_100C043F8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_100C04444(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v4, *a1);
}

void VerticalToggleSlider.isHighlighted.setter(char a1)
{
  v3 = type metadata accessor for VerticalToggleSlider();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, "isHighlighted");
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, "setHighlighted:", a1 & 1);
  sub_100C04574(v4);
}

void sub_100C04574(char a1)
{
  v2 = v1;
  if ([v1 isHighlighted] != (a1 & 1))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = objc_opt_self();
    v5 = v2;
    if ([v4 areAnimationsEnabled])
    {
      if (qword_1011B0810 != -1)
      {
        swift_once();
      }

      v6 = qword_1011B7D80;
      [qword_1011B7D80 settlingDuration];
      v8 = v7;
      [v6 mass];
      v10 = v9;
      [v6 stiffness];
      v12 = v11;
      [v6 damping];
      v14 = v13;
      *&v24.tx = sub_100C05D84;
      *&v24.ty = v3;
      *&v24.a = _NSConcreteStackBlock;
      *&v24.b = 1107296256;
      *&v24.c = sub_10002BC98;
      *&v24.d = &unk_1010E92B8;
      v15 = _Block_copy(&v24);

      [v4 _animateUsingSpringWithDuration:6 delay:v15 options:0 mass:v8 stiffness:0.0 damping:v10 initialVelocity:v12 animations:v14 completion:0.0];
      _Block_release(v15);
    }

    else
    {
      if ([v5 isHighlighted])
      {
        CGAffineTransformMakeScale(&v24, 0.95, 0.95);
        v17 = *&v24.a;
        v16 = *&v24.c;
        v18 = *&v24.tx;
      }

      else
      {
        v16 = xmmword_100EBEF30;
        v17 = xmmword_100EBEF40;
        v18 = 0uLL;
      }

      *&v24.a = v17;
      *&v24.c = v16;
      *&v24.tx = v18;
      [v5 setTransform:&v24];
      v19 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v19)
      {
        v20 = v19;
        if ([v5 isHighlighted])
        {
          CGAffineTransformMakeScale(&v24, 0.9, 0.9);
          v22 = *&v24.a;
          v21 = *&v24.c;
          v23 = *&v24.tx;
        }

        else
        {
          v21 = xmmword_100EBEF30;
          v22 = xmmword_100EBEF40;
          v23 = 0uLL;
        }

        *&v24.a = v22;
        *&v24.c = v21;
        *&v24.tx = v23;
        [v20 setTransform:&v24];
      }
    }
  }
}

void sub_100C04844(char *a1)
{
  if ([a1 isHighlighted])
  {
    CGAffineTransformMakeScale(&v10, 0.95, 0.95);
    v3 = *&v10.a;
    v2 = *&v10.c;
    v4 = *&v10.tx;
  }

  else
  {
    v2 = xmmword_100EBEF30;
    v3 = xmmword_100EBEF40;
    v4 = 0uLL;
  }

  *&v10.a = v3;
  *&v10.c = v2;
  *&v10.tx = v4;
  [a1 setTransform:&v10];
  v5 = *&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
  if (v5)
  {
    v6 = v5;
    if ([a1 isHighlighted])
    {
      CGAffineTransformMakeScale(&v10, 0.9, 0.9);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    else
    {
      v7 = xmmword_100EBEF30;
      v8 = xmmword_100EBEF40;
      v9 = 0uLL;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [v6 setTransform:&v10];
  }
}

void sub_100C04950(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    if (v3[v4] == 1)
    {
      [v3 sendActionsForControlEvents:0x10000];
      v5 = v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2 * (v5 != 2);
      sub_100C02000(v5);
      [v3 sendActionsForControlEvents:4096];
      [v3 sendActionsForControlEvents:0x40000];
    }
  }
}

void sub_100C04B28(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v55 = a1;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  *&v9.f64[0] = v55.n128_u64[0];
  *&v9.f64[1] = v56.n128_u64[0];
  *&v10.f64[0] = v57.n128_u64[0];
  *&v10.f64[1] = v58.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange], v9), vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16], v10)))) & 1) == 0)
  {
    v11 = sub_100BFF28C();
    static UIView.Corner.rounded.getter();
    v12 = type metadata accessor for UIView.Corner();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    UIView.corner.setter();

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v8, xmmword_1011B7D60), vceqq_f64(v8[1], *&qword_1011B7D70)))))
    {
      v42 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
      [*&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] anchorPoint];
      v44 = v43;
      v46 = v45;
      v47 = CGPoint.center.unsafeMutableAddressor();
      swift_beginAccess();
      if (v44 != *v47 || v46 != v47[1])
      {
        [*&v5[v42] setAnchorPoint:?];
        v49 = *&v5[v42];
        [v5 bounds];
        [v49 setFrame:?];
      }

      v50 = &v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
      *v50 = 0x3FF0000000000000;
      *(v50 + 1) = 0;
      *(v50 + 2) = 0;
      *(v50 + 3) = 0x3FF0000000000000;
      *(v50 + 4) = 0;
      *(v50 + 5) = 0;
      v51 = *&v5[v42];
      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v51 setTransform:{&aBlock, *&v55}];
      v52 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v52)
      {
        v53 = *(v50 + 1);
        *&aBlock.a = *v50;
        *&aBlock.c = v53;
        *&aBlock.tx = *(v50 + 2);
        CGAffineTransformInvert(&v64, &aBlock);
        aBlock = v64;
        [v52 setTransform:&aBlock];
      }

      v54 = *&v5[v42];
      [v5 bounds];
      [v54 setFrame:?];
    }

    else
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v5;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100C05D7C;
      *(v15 + 24) = v14;
      *&aBlock.tx = sub_100029B94;
      *&aBlock.ty = v15;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100029B9C;
      *&aBlock.d = &unk_1010E9268;
      v16 = _Block_copy(&aBlock);
      v17 = v5;

      [v13 performWithoutAnimation:v16];
      _Block_release(v16);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v19 = sub_100BFF340();
        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v66.origin.x = v21;
        v66.origin.y = v23;
        v66.size.width = v25;
        v66.size.height = v27;
        v28 = CGRectGetWidth(v66) + v8->f64[1];
        v29 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
        [*&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] frame];
        v30 = v28 / CGRectGetWidth(v67);
        [*&v17[v29] frame];
        v31 = CGRectGetHeight(v68) + v8->f64[0];
        [*&v17[v29] frame];
        Height = CGRectGetHeight(v69);
        CGAffineTransformMakeScale(&aBlock, v30, v31 / Height);
        v58 = *&aBlock.c;
        v57 = *&aBlock.a;
        v64 = aBlock;
        v33 = *&aBlock.tx;
        CGAffineTransformMakeTranslation(&aBlock, 0.0, -v8[1].f64[1]);
        static CGAffineTransform.+ infix(_:_:)(&v64, &aBlock, &v61);
        v34 = &v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
        v35 = v62;
        v36 = v63;
        v37 = v61;
        *v34 = v61;
        *(v34 + 1) = v62;
        *(v34 + 2) = v63;
        v38 = *&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
        *&v60.a = v37;
        *&v60.c = v35;
        *&v60.tx = v36;
        [v38 setTransform:&v60];
        v39 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
        v40 = *&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
        if (v40)
        {
          v60 = *v34;
          CGAffineTransformInvert(&v59, &v60);
          v60 = v59;
          [v40 setTransform:&v60];
          v41 = *&v17[v39];
          if (v41)
          {
            *&v60.a = v57;
            *&v60.c = v58;
            *&v60.tx = v33;
            CGAffineTransformInvert(&v59, &v60);
            v60 = v59;
            [v41 setTransform:&v60];
          }
        }
      }
    }
  }
}

void sub_100C05180(char *a1, __n128 a2)
{
  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24] <= 0.0)
  {
    v3 = CGPoint.topCenter.unsafeMutableAddressor();
  }

  else
  {
    v3 = CGPoint.bottomCenter.unsafeMutableAddressor();
  }

  v4 = v3;
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = sub_100BFF28C();
  [v7 anchorPoint];
  v9 = v8;
  v11 = v10;

  if (v9 != v6 || v11 != v5)
  {
    v13 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
    [*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setAnchorPoint:{v6, v5}];
    v14 = *&a1[v13];
    [a1 bounds];
    [v14 setFrame:?];
  }
}

id sub_100C052A8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:465.0 damping:21.0 initialVelocity:{0.0, 0.0}];
  qword_1011B7D80 = result;
  return result;
}

id sub_100C052F8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1011B7D88 = result;
  return result;
}

id sub_100C0534C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:194.0 damping:24.0 initialVelocity:{0.0, 0.0}];
  qword_1011B7D90 = result;
  return result;
}

id sub_100C0539C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1011B7D98 = result;
  return result;
}

id sub_100C053E8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:158.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_1011B7DA0 = result;
  return result;
}

id sub_100C05438()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v2 :0.0 :v1 :v3];
  qword_1011B7DA8 = result;
  return result;
}

id sub_100C05484()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:288.0 damping:26.5 initialVelocity:{0.0, 0.0}];
  qword_1011B7DB0 = result;
  return result;
}

id sub_100C054D8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1011B7DB8 = result;
  return result;
}

id sub_100C0552C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1011B7DC0 = result;
  return result;
}

id sub_100C05580()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1011B7DC8 = result;
  return result;
}

id VerticalToggleSlider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100C057E4()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

id VerticalToggleSlider.accessibilitySetSliderValue(_:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    if (v2 > v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_100BFF3FC(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((v4 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));

    return sub_100C00B64();
  }

  return result;
}

void sub_100C05980(char *a1)
{
  v2 = sub_100BFF340();
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v4 = a1[v3];
  v5 = [a1 traitCollection];
  *&v7 = sub_100C011C0(v5, v4, v6).n128_u64[0];
  v9 = v8;

  [v2 setAnchorPoint:{v7, v9}];
}

void _s11MusicCoreUI20VerticalToggleSliderC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio) = 1040402485;
  v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint) = 8;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) = 0x3F80000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = 2;
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *(v0 + v3) = [objc_opt_self() effectWithBlurRadius:10.0];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer) = 0;
  v4 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v6 = *&qword_1011B7D70;
  *v5 = xmmword_1011B7D60;
  v5[1] = v6;
  v7 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform);
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100C05C80()
{
  result = qword_1011B7EB0;
  if (!qword_1011B7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7EB0);
  }

  return result;
}

unint64_t sub_100C05CD8()
{
  result = qword_1011B7EB8;
  if (!qword_1011B7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7EB8);
  }

  return result;
}

unint64_t WaveformPlayIndicator.init(settings:)(void *a1)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v31 = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  v3 = *(v31 - 8);
  __chkstk_darwin();
  v5 = &v29 - v4;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v6 = (v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v7 = objc_opt_self();
  v30 = [v7 tintColor];
  v8 = [v7 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.35];

  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v7 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.6];

  *v6 = v30;
  v6[1] = v9;
  v6[2] = v11;
  v6[3] = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v2 + v14) = [objc_opt_self() zero];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v35 = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v2 + v15, v5, v31);
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v2 + v16) = sub_100C0B798();
  v17 = v32;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings) = v32;
  v18 = v17;
  v19 = [v18 stops];
  sub_100009F78(0, &qword_1011B3A00, NSNumber_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = ObjectType;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars) = v21 - 1;
    v34.receiver = v2;
    v34.super_class = v22;
    v21 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    result = sub_100C063C8();
    v2 = result;
    if (!(result >> 62))
    {
      v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_6;
      }

LABEL_15:

      sub_10010FC20(qword_1011B36C0, &unk_100F088E0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100EBC6B0;
      *(v28 + 32) = type metadata accessor for UITraitActiveAppearance();
      *(v28 + 40) = &protocol witness table for UITraitActiveAppearance;
      UIView.registerForTraitChanges<A>(_:handler:)();

      swift_unknownObjectRelease();

      return v21;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v24 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v21 addSubview:v26];
      [v27 setAlpha:0.0];
    }

    while (v24 != v25);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100C063C8()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    sub_100C0AC90();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_100C0642C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 <= 1)
  {
    if (!*(v0 + v1))
    {
      return;
    }

    v11 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v11 + 8);
    v12 = sub_100C063C8();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(v13 + 8 * i + 32);
        }

        v17 = v16;
        [v16 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

LABEL_38:
    __break(1u);
    return;
  }

  if (v2 == 2)
  {
    v18 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v0 + v18);
    v19 = sub_100C063C8();
    v20 = v19;
    if (v19 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    if (v21 >= 1)
    {
      for (j = 0; j != v21; ++j)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v23 = *(v20 + 8 * j + 32);
        }

        v24 = v23;
        [v23 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 != 3)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = sub_100C063C8();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
LABEL_6:
      if (v7 >= 1)
      {
        for (k = 0; k != v7; ++k)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v9 = *(v6 + 8 * k + 32);
          }

          v10 = v9;
          [v9 setBackgroundColor:v4];
        }

        goto LABEL_34;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }
  }

LABEL_34:
}

void sub_100C06710(char a1, char a2)
{
  if (a1 == a2 && (a1 != 3 || (sub_100C07C5C() & 1) != 0))
  {
    return;
  }

  v68 = sub_100C063C8();
  type metadata accessor for AnimationGroup();
  v2 = swift_allocObject();
  v3 = v67;
  v4 = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v71 = (v2 + 16);
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v67[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask])
  {

    Task.cancel()();

    v3 = v67;
  }

  *&v3[v5] = 0;

  if (a1 == 3)
  {
    sub_100C07F5C();
  }

  if (a2 == 1)
  {
    v14 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v14 timingParameters:0.9];

    v16 = swift_allocObject();
    *(v16 + 16) = v67;
    v17 = v67;
    sub_100C0AF5C(v15, sub_100C0DB3C, v16, 0.0);
  }

  else if (a2 == 4)
  {
    v6 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v6 timingParameters:0.25];

    v8 = swift_allocObject();
    *(v8 + 16) = v67;
    v76 = sub_100C0DB44;
    v77 = v8;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_10002BC98;
    v75 = &unk_1010E9C00;
    v9 = _Block_copy(&aBlock);
    v10 = v67;

    [v7 addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 4;
    v76 = sub_100C0DB4C;
    v77 = v11;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100338AB8;
    v75 = &unk_1010E9C50;
    v12 = _Block_copy(&aBlock);
    v13 = v10;

    [v7 addCompletion:v12];
    _Block_release(v12);
    sub_100C0AF5C(v7, 0, 0, 0.0);
  }

  if (!a1)
  {
    v64 = v4;

    sub_100C0892C(v18);
    v20 = v19;
    sub_100C08370();
    v69 = *(v20 + 16);
    v70 = v20;
    if (v69)
    {
      v4 = 0;
      v21 = (v20 + 40);
      while (v4 < *(v70 + 16))
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = objc_allocWithZone(UICubicTimingParameters);
        v25 = v22;
        v26 = v23;
        v27 = [v24 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v27 timingParameters:0.5];

        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v29 + 24) = v22;
        v76 = sub_100C0DAF0;
        v77 = v29;
        aBlock = _NSConcreteStackBlock;
        v73 = 1107296256;
        v74 = sub_10002BC98;
        v75 = &unk_1010E9B88;
        v30 = _Block_copy(&aBlock);
        swift_retain_n();
        v31 = v26;
        v32 = v25;

        [v28 addAnimations:v30];
        _Block_release(v30);

        swift_beginAccess();
        v33 = *v71;
        v34 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v71 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_100BF9FF4(0, *(v33 + 2) + 1, 1, v33);
          *v71 = v33;
        }

        v37 = *(v33 + 2);
        v36 = *(v33 + 3);
        if (v37 >= v36 >> 1)
        {
          v33 = sub_100BF9FF4((v36 > 1), v37 + 1, 1, v33);
        }

        *(v33 + 2) = v37 + 1;
        v38 = &v33[16 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v4 * 0.03;
        *v71 = v33;
        swift_endAccess();

        v21 += 2;
        if (v69 == ++v4)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_21:

    v4 = v64;
  }

  v39 = v68;
  if (a2)
  {
    if (a2 == 2)
    {

      v45 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
      v46 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v45 timingParameters:0.15];

      v47 = swift_allocObject();
      v44 = v67;
      *(v47 + 16) = v67;
      *(v47 + 24) = a1;
      v48 = v67;
      sub_100C0AF5C(v46, sub_100C0DADC, v47, 0.0);
    }

    else
    {
      if (a2 == 3)
      {
        v40 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v41 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v40 timingParameters:0.15];

        v42 = swift_allocObject();
        *(v42 + 16) = v67;
        v43 = v67;
        sub_100C0AF5C(v41, sub_100C0DAE8, v42, 0.0);
      }

      v44 = v67;
    }

    goto LABEL_39;
  }

  if (v68 >> 62)
  {
LABEL_37:
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v68;
    v49 = v54;
    if (!v54)
    {
      goto LABEL_38;
    }

LABEL_30:
    if (v49 < 1)
    {
      __break(1u);
      return;
    }

    v50 = 0;
    v51 = v39 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v52 = *(v39 + 8 * v50 + 32);
      }

      v53 = v52;
      ++v50;
      [v52 setAlpha:{0.0, v64}];

      v39 = v68;
    }

    while (v49 != v50);
    goto LABEL_38;
  }

  v49 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_38:

  v44 = v67;
  sub_100C08370();
LABEL_39:
  v55 = *&v44[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v55)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v44;
    *(v56 + 24) = v4;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_100C0DAD4;
    *(v57 + 24) = v56;
    swift_beginAccess();
    v58 = *(v55 + 24);
    v59 = v44;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 24) = v58;
    if ((v60 & 1) == 0)
    {
      v58 = sub_1000642E4(0, v58[2] + 1, 1, v58);
      *(v55 + 24) = v58;
    }

    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_1000642E4((v61 > 1), v62 + 1, 1, v58);
    }

    v58[2] = v62 + 1;
    v63 = &v58[2 * v62];
    v63[4] = sub_100029B6C;
    v63[5] = v57;
    *(v55 + 24) = v58;
    swift_endAccess();
  }

  else
  {
    sub_100C0B0E8();
  }
}

uint64_t WaveformPlayIndicator.mode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

void WaveformPlayIndicator.mode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100C06710(v4, a1);
}

void (*WaveformPlayIndicator.mode.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_100C07244;
}

void sub_100C07244(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  v5 = v1[40];
  *(v3 + v2) = v5;
  sub_100C06710(v4, v5);

  free(v1);
}

void sub_100C072B4()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  v5 = [v0 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.6];

  static WaveformPlayIndicator.ColorPalette.overlay = v1;
  *algn_10121BC38 = v2;
  qword_10121BC40 = v4;
  unk_10121BC48 = v6;
}

uint64_t *WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor()
{
  if (qword_1011B0860 != -1)
  {
    swift_once();
  }

  return &static WaveformPlayIndicator.ColorPalette.overlay;
}

uint64_t static WaveformPlayIndicator.ColorPalette.overlay.getter()
{
  if (qword_1011B0860 != -1)
  {
    swift_once();
  }

  v0 = static WaveformPlayIndicator.ColorPalette.overlay;
  v1 = *algn_10121BC38;
  v2 = qword_10121BC40;
  v3 = unk_10121BC48;
  v4 = static WaveformPlayIndicator.ColorPalette.overlay;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  return v0;
}

uint64_t static WaveformPlayIndicator.ColorPalette.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C07544(uint64_t *a1, uint64_t *a2)
{
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

void *WaveformPlayIndicator.colorPalette.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  v8 = v5;
  v9 = v4;
  return v2;
}

void WaveformPlayIndicator.colorPalette.setter(void *a1, void *a2, void *a3, void *a4)
{
  sub_100C0D7B8(a1, a2, a3, a4);
}

void (*WaveformPlayIndicator.colorPalette.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  return sub_100C07784;
}

void sub_100C07784(void ***a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  if (a2)
  {
    v7 = v4;
    v8 = v3;
    v9 = v6;
    v10 = v5;
    sub_100C0D7B8(v7, v8, v9, v10);

    v4 = *v2;
    v3 = v2[1];
    v6 = v2[2];
    v5 = v2[3];
  }

  else
  {
    sub_100C0D7B8(**a1, v3, v6, v5);
  }

  free(v2);
}

id WaveformPlayIndicator.waveform.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaveformPlayIndicator.waveform.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v1[v6] == 2)
  {
    v7 = objc_opt_self();
    v8 = *&v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v8 animationDuration];
    v10 = v9;
    [v8 springDamping];
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v16[4] = sub_100C0D8D4;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10002BC98;
    v16[3] = &unk_1010E9790;
    v14 = _Block_copy(v16);
    v15 = v1;

    [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];

    _Block_release(v14);
  }

  else
  {
  }
}

void (*WaveformPlayIndicator.waveform.modify(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  return sub_100C07AD0;
}

void sub_100C07AD0(void ****a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
    swift_beginAccess();
    if (*(v4 + v5) == 2)
    {
      v6 = v3[9];
      v7 = objc_opt_self();
      v8 = *(v6 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings);
      [v8 animationDuration];
      v10 = v9;
      [v8 springDamping];
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      v3[4] = sub_100C0DF6C;
      v3[5] = v13;
      *v3 = _NSConcreteStackBlock;
      v3[1] = 1107296256;
      v3[2] = sub_10002BC98;
      v3[3] = &unk_1010E97E0;
      v14 = _Block_copy(v3);
      v15 = v6;

      [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];
      _Block_release(v14);
    }
  }

  free(v3);
}

uint64_t sub_100C07C5C()
{
  v0 = sub_100C063C8();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 layer];
      v8 = String._bridgeToObjectiveC()();

      v9 = [v7 animationForKey:v8];

      if (!v9 || (v9, v10 = [v5 layer], v11 = String._bridgeToObjectiveC()(), , v12 = objc_msgSend(v10, "animationForKey:", v11), v10, v11, !v12) || (v12, v13 = objc_msgSend(v5, "layer"), v14 = String._bridgeToObjectiveC()(), , v15 = objc_msgSend(v13, "animationForKey:", v14), v13, v14, !v15))
      {

        return 0;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  return 1;
}

void sub_100C07F5C()
{
  v0 = sub_100C063C8();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6 = [v4 layer];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v2 != v3);

    v1 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      while (1)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          break;
        }

LABEL_11:
        v8 = 0;
        v17 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = _swiftEmptyArrayStorage[v8 + 4];
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = String._bridgeToObjectiveC()();
          [v10 removeAnimationForKey:v12];

          v13 = String._bridgeToObjectiveC()();
          [v10 removeAnimationForKey:v13];

          v14 = String._bridgeToObjectiveC()();
          [v10 removeAnimationForKey:v14];

          v15 = [v10 presentationLayer];
          if (v15)
          {
            v16 = v15;
            [v15 frame];
            [v10 setFrame:?];
            [v16 cornerRadius];
            [v10 setCornerRadius:?];
          }

          ++v8;
          if (v11 == v7)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_23:

        v1 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
  }
}

void sub_100C08264(uint64_t a1, __n128 a2)
{
  sub_100C08370();
  v3 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = sub_100C063C8();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v9 setBackgroundColor:v4];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_100C08370()
{
  [v0 bounds];
  Width = CGRectGetWidth(v27);
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  v3 = CGRectGetWidth(v28);
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v0[v4] == 2)
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
    swift_beginAccess();
    v6 = *&v0[v5];
  }

  else
  {
    v6 = [objc_opt_self() zero];
  }

  v26 = v6;
  v7 = sub_100C063C8();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = Width / *&v2;
    Width = v10 * 0.5;
    v11 = v3 / *&v2 - v10 * 0.5;
    v3 = v10 * 0.5 * 0.5;
    v12 = 4;
    v13 = v11 * 0.5;
    while (1)
    {
      v14 = v12 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v15 = *(v8 + 8 * v12);
      }

      v16 = v15;
      v17 = v12 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v2 = v13 + v3 + v10 * v14;
      [v0 bounds];
      [v16 setCenter:{v2, CGRectGetMidY(v29)}];
      v18 = [v16 layer];
      [v18 setCornerRadius:v10 * 0.5 * 0.5];

      v19 = [v26 amplitudes];
      sub_100009F78(0, &qword_1011B3A00, NSNumber_ptr);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v21 = *(v20 + 8 * v12);
      }

      v22 = v21;

      [v22 doubleValue];
      v24 = v23;

      [v0 bounds];
      Height = CGRectGetHeight(v30);
      if (v24 < 1.0)
      {
        Height = v24 * Height;
      }

      if (Width > Height)
      {
        v2 = v10 * 0.5;
      }

      else
      {
        v2 = Height;
      }

      [v16 bounds];
      [v16 setBounds:?];
      [v16 bounds];
      [v16 setBounds:?];

      ++v12;
      if (v17 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
}

double sub_100C086B4(uint64_t a1, char *a2, char a3)
{
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (a2[v7] == a3)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = a2;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    *&v10[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask] = sub_100B284E0(0, 0, v6, &unk_100F0A4C8, v12);
  }

  return result;
}

void sub_100C08820(uint64_t a1)
{
  sub_100C08370();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v4 = sub_100C063C8();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_100C0892C(unint64_t a1)
{
  sub_100C0CDE4(a1);
  v2 = v1;

  v3 = v2[2];
  if (v3 < 2)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 >> 1;
  v7 = v3 - 1;
  v8 = 16 * v3 + 24;
  v24 = v3 >> 1;
  while (1)
  {
    if (v5 == v7)
    {
      goto LABEL_5;
    }

    v12 = v2[2];
    if (v5 >= v12)
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_14;
    }

    v13 = v2[v4 + 4];
    v14 = v2[v4 + 5];
    v15 = *(v2 + v8 - 8);
    v16 = *(v2 + v8);
    v17 = v16;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100C0CAB0(v2);
    }

    v21 = &v2[v4];
    v22 = v2[v4 + 4];
    v23 = v2[v4 + 5];
    v21[4] = v20;
    v21[5] = v16;

    if (v7 >= v2[2])
    {
      goto LABEL_15;
    }

    v9 = (v2 + v8);
    v10 = *(v2 + v8 - 8);
    v11 = *(v2 + v8);
    *(v9 - 1) = v18;
    *v9 = v14;

    v6 = v24;
LABEL_5:
    ++v5;
    --v7;
    v8 -= 16;
    v4 += 2;
    if (v6 == v5)
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

void sub_100C08A74(uint64_t a1)
{
  sub_100C08370();
  v2 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = sub_100C063C8();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_100C08B80();
    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_100C08B80()
{
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v2)
  {
    return;
  }

  v3 = sub_100173A78(3uLL);
  if (v3 > 2)
  {
    __break(1u);
LABEL_13:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v45 = *(&off_1010E0B90 + v3 + 32);
  v4 = sub_100C063C8();
  v1 = v4;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v47[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 layer];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v6);

    v10 = v47[0];
    goto LABEL_15;
  }

LABEL_14:

  v10 = _swiftEmptyArrayStorage;
LABEL_15:
  v42 = v10;
  if (v10 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v44 = v2;
    v43 = i;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v13 = *(v42 + 32 + 8 * v12);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = sub_100C0BA44(v45, v12);
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = v16;
      v18 = v16 + 64;
      v19 = 1 << v16[32];
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v16 + 8);
      v2 = (v19 + 63) >> 6;

      v22 = 0;
      if (v21)
      {
        while (1)
        {
          v23 = v22;
LABEL_34:
          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v25 = *(*(v17 + 7) + 8 * (v24 | (v23 << 6)));
          v26 = String._bridgeToObjectiveC()();

          [v14 addAnimation:v25 forKey:v26];

          v22 = v23;
          if (!v21)
          {
            goto LABEL_31;
          }
        }
      }

      while (1)
      {
LABEL_31:
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v23 >= v2)
        {
          break;
        }

        v21 = *&v18[8 * v23];
        ++v22;
        if (v21)
        {
          goto LABEL_34;
        }
      }

      i = v43;
      v2 = v44;
      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v27 = sub_100BB2BEC(1);
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      v29 = [*(*(v17 + 7) + 8 * v27) values];
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = v29;
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v31 + 16))
      {
        goto LABEL_18;
      }

      sub_10000DD18(v31 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v32 = sub_100BB2BEC(0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }

      v34 = [*(*(v17 + 7) + 8 * v32) values];
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = v34;
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v36 + 16))
      {
LABEL_18:

LABEL_19:

        goto LABEL_20;
      }

      sub_10000DD18(v36 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v37 = sub_100BB2BEC(2);
      if ((v38 & 1) == 0)
      {
        goto LABEL_19;
      }

      v39 = *(*(v17 + 7) + 8 * v37);

      v40 = [v39 values];

      if (!v40)
      {
        goto LABEL_20;
      }

      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v41 + 16))
      {
        goto LABEL_19;
      }

      sub_10000DD18(v41 + 32, v47);

      if (swift_dynamicCast())
      {
        [v14 frame];
        [v14 setFrame:?];
        [v14 setCornerRadius:v46];
      }

LABEL_20:

      v12 = v15;
      if (v15 == i)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:
}

void sub_100C09158(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v5 = *&a1[v4];
  v6 = sub_100C063C8();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setBackgroundColor:v5];
  }

LABEL_10:

  if (a2 == 3)
  {
    v12 = objc_opt_self();
    v13 = *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v13 animationDuration];
    v15 = v14;
    [v13 springDamping];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    aBlock[4] = sub_100C0DF6C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010E9E08;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    [v12 animateWithDuration:0 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:v15 options:0.0 animations:v17 completion:0.0];
    _Block_release(v19);
  }
}

void sub_100C09380(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100C0DC94;
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1000642E4(0, v6[2] + 1, 1, v6);
    *(a2 + 24) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1000642E4((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_1001D3174;
  v11[5] = v5;
  *(a2 + 24) = v6;
  swift_endAccess();

  sub_100C0B0E8();
}

void sub_100C094DC(char *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  if (!*&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_100C08370();
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_100C08370();
  }
}

void sub_100C0957C()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v61);
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  Height = CGRectGetHeight(v62);
  v5 = &v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  swift_beginAccess();
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  type metadata accessor for AnimationGroup();
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyArrayStorage;
  v9 = (v8 + 16);
  *(v8 + 24) = _swiftEmptyArrayStorage;
  v45 = (v8 + 24);
  v53 = v7;
  v52 = v6;
  v10 = sub_100C063C8();
  v11 = v10;
  v46 = v8;
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 & 0xC000000000000001;
    v3 = Width / *&v3 * 0.5;
    Height = Height * 0.7;
    Width = 0.11;
    v48 = i;
    v49 = v11;
    v47 = v9;
    while (1)
    {
      if (v51)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v50 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v54 = v13 + 1;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v17 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v16 timingParameters:0.25];

      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v52;
      *(v18 + 32) = Height;
      v59 = sub_100C0DF64;
      v60 = v18;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_10002BC98;
      v58 = &unk_1010E9CC8;
      v19 = _Block_copy(&aBlock);
      v20 = v52;
      v21 = v15;

      [v17 addAnimations:v19];
      _Block_release(v19);
      v22 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v23 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v22 timingParameters:0.25];

      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v53;
      *(v24 + 32) = v3;
      v59 = sub_100C0DC0C;
      v60 = v24;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_10002BC98;
      v58 = &unk_1010E9D18;
      v25 = _Block_copy(&aBlock);
      v26 = v53;
      v27 = v21;

      [v23 addAnimations:v25];
      _Block_release(v25);
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      v59 = sub_100C0DC7C;
      v60 = v28;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v9 = v47;
      v57 = sub_100338AB8;
      v58 = &unk_1010E9D68;
      v29 = _Block_copy(&aBlock);
      v30 = v23;

      [v17 addCompletion:v29];
      _Block_release(v29);
      swift_beginAccess();
      v31 = *v47;
      v32 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_100BF9FF4(0, *(v31 + 2) + 1, 1, v31);
        *v47 = v31;
      }

      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      if (v35 >= v34 >> 1)
      {
        v31 = sub_100BF9FF4((v34 > 1), v35 + 1, 1, v31);
      }

      *(v31 + 2) = v35 + 1;
      v36 = &v31[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v13 * 0.1;
      *v47 = v31;
      swift_endAccess();

      ++v13;
      v11 = v49;
      if (v54 == v48)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100C0DF68;
  *(v38 + 24) = v37;
  swift_beginAccess();
  v39 = *v45;
  v40 = v1;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v45 = v39;
  if ((v41 & 1) == 0)
  {
    v39 = sub_1000642E4(0, v39[2] + 1, 1, v39);
    *v45 = v39;
  }

  v43 = v39[2];
  v42 = v39[3];
  if (v43 >= v42 >> 1)
  {
    v39 = sub_1000642E4((v42 > 1), v43 + 1, 1, v39);
  }

  v39[2] = v43 + 1;
  v44 = &v39[2 * v43];
  v44[4] = sub_1001D3174;
  v44[5] = v38;
  *(v46 + 24) = v39;
  swift_endAccess();

  *&v40[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v46;

  sub_100C0B0E8();
}

uint64_t sub_100C09C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100C09D14, v7, v6);
}

uint64_t sub_100C09D14(__n128 a1)
{
  result = static Task<>.isCancelled.getter();
  if (result)
  {

    v3 = v1[1];

    return v3();
  }

  v4 = *(v1[2] + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  v5 = 100 * v4;
  if ((v4 * 100) >> 64 != (100 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = __OFADD__(v5, 500);
  v7 = v5 + 500;
  if (v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = __OFADD__(v7, 600);
  v8 = v7 + 600;
  v1[9] = v8;
  if (v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = 1000000000000000 * v8;
  v10 = (v8 * 0x38D7EA4C68000uLL) >> 64;
  sub_100C0957C();
  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_100C09E98;

  return sub_100C0C820(v9, v10, 0, 0, 1);
}

uint64_t sub_100C09E98()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_100C0DF60;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_100C0A030;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100C0A030(__n128 a1)
{
  if (static Task<>.isCancelled.getter())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[9];
    sub_100C0957C();
    static Clock<>.continuous.getter();
    v5 = swift_task_alloc();
    v1[10] = v5;
    *v5 = v1;
    v5[1] = sub_100C09E98;

    return sub_100C0C820(1000000000000000 * v4, (v4 * 0x38D7EA4C68000uLL) >> 64, 0, 0, 1);
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.tintColorDidChange()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      goto LABEL_15;
    }

    v3 = v2;
    v4 = sub_100C063C8();
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        if (v6 >= 1)
        {
          for (i = 0; i != v6; ++i)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v8 = *(v5 + 8 * i + 32);
            }

            v9 = v8;
            [v8 setBackgroundColor:v3];
          }

          goto LABEL_12;
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

LABEL_12:
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.didMoveToWindow()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "didMoveToWindow");
  v1 = [v0 window];
  v2 = v1;
  if (v1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2 != 0;
  v4 = v0;
  static Published.subscript.setter();
  sub_100C0A574(v3);
}

void WaveformPlayIndicator.isVisible.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v2 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  sub_100C0A574(v2);
}

void sub_100C0A574(char a1)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((&v2 + 1));

  if (BYTE1(v2) != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v2);

    if (v2 == 1)
    {
      sub_100C08370();
    }
  }
}

uint64_t WaveformPlayIndicator.isVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100C0A6BC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void sub_100C0A73C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  sub_100C0A574(v3);
}

void (*WaveformPlayIndicator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_100C0A8A0;
}

void sub_100C0A8A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  static Published.subscript.getter((a1 + 9));

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  static Published.subscript.setter();
  sub_100C0A574(v4);
}

uint64_t WaveformPlayIndicator.$isVisible.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WaveformPlayIndicator.$isVisible.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7178, &qword_100F09030);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WaveformPlayIndicator.$isVisible.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011B7178, &qword_100F09030);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36374;
}

void sub_100C0AC90()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    do
    {
      v2 = [objc_allocWithZone(UIView) init];
      v3 = [v2 layer];
      [v3 setCornerCurve:kCACornerCurveContinuous];

      v4 = [v2 layer];
      [v4 setAllowsEdgeAntialiasing:1];

      v5 = [v2 tintColor];
      [v2 setBackgroundColor:v5];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_100C0AF5C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10002BC98;
    v17[3] = &unk_1010E9A98;
    v9 = _Block_copy(v17);
    sub_100030444(a2, a3);

    [a1 addAnimations:v9];
    _Block_release(v9);
    sub_100020438(a2, a3);
  }

  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100BF9FF4(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_100BF9FF4((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[16 * v14];
  *(v15 + 4) = v11;
  *(v15 + 5) = a4;
  *(v4 + 16) = v10;
  return swift_endAccess();
}

void sub_100C0B0E8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin();
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_group_create();
  swift_beginAccess();
  v8 = *(*(v0 + 16) + 16);
  if (v8)
  {
    v23 = v0;
    v24 = v3;
    v25 = v2;

    v9 = (v22 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v12 = v10;
      dispatch_group_enter(v7);
      [v12 startAnimationAfterDelay:v11];
      v13 = swift_allocObject();
      *(v13 + 16) = v7;
      v35 = sub_100C0DAC4;
      v36 = v13;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100338AB8;
      v34 = &unk_1010E9A48;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v7;

      [v15 addCompletion:v14];
      _Block_release(v14);

      --v8;
    }

    while (v8);

    v3 = v24;
    v2 = v25;
    v1 = v23;
  }

  sub_100009F78(0, &qword_1011B4F00, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v35 = sub_100C0DACC;
  v36 = v1;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_10002BC98;
  v34 = &unk_1010E9A70;
  v17 = _Block_copy(&aBlock);

  v18 = v26;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100029878(&qword_1011B1148, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_1011B1150, &unk_100F0A4B0);
  sub_100020674(&qword_1011B1158, &qword_1011B1150, &unk_100F0A4B0, &protocol conformance descriptor for [A]);
  v19 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v25;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v27 + 8))(v18, v28);
}

double sub_100C0B51C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t JSShareRequestCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_100C0B5F0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006080(v4, qword_1011B7EF0);
  v5 = sub_1000060E4(v0, qword_1011B7EF0);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v6 = qword_10121B340;
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v5, v3, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C0B798()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = xmmword_100EFDD20;
  *(v1 + 32) = 0x4030000000000000;
  if (qword_1011B0868 != -1)
  {
    swift_once();
  }

  v6 = sub_1000060E4(v2, qword_1011B7EF0);
  (*(v3 + 16))(v5, v6, v2);
  *(v1 + 40) = sub_100C0D174(v5);
  *(v1 + 48) = v7;
  return v1;
}

id sub_100C0BA44(uint64_t a1, unint64_t a2)
{
  sub_100C0C1A8(a1, a2);
  if (!v3)
  {
LABEL_25:
    if (qword_1011B0870 != -1)
    {
LABEL_43:
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_1011B7F08);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "BouncyBars asset does not have expected layers / animations", v36, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = [v3 values];
  if (!v5)
  {

    goto LABEL_25;
  }

  v6 = v5;
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  [v4 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009F78(0, &qword_1011B81C0, CAKeyframeAnimation_ptr);
  swift_dynamicCast();
  v8 = v49;
  [v4 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v45 = v49;
  v43 = v4;
  [v4 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v44 = v49;
  v46 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v46 + 32;
    while (1)
    {
      if (v10 >= v9)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      *&v49 = v10;
      sub_10000DD18(v11, &v49 + 8);
      v52 = v49;
      v53 = v50;
      v54 = v51;
      if (!v51)
      {
        goto LABEL_31;
      }

      v47 = v49;
      sub_100016270((&v52 + 8), &v49);
      if (!swift_dynamicCast())
      {
        swift_bridgeObjectRelease_n();
        if (qword_1011B0870 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_1000060E4(v39, qword_1011B7F08);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "BouncyBars asset does not have expected layers / animations", v42, 2u);
        }

        return 0;
      }

      v12 = v48 / 100.0 * v2[4];
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v12;
      result = [v8 values];
      if (!result)
      {
        break;
      }

      v14 = result;
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100C0CAC4(v15);
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v47 >= *(v15 + 16))
      {
        goto LABEL_39;
      }

      v16 = v15 + 32 * v47;
      sub_10000959C((v16 + 32));
      sub_100016270(&v49, (v16 + 32));
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 setValues:isa];

      v18 = v45;
      v19 = String._bridgeToObjectiveC()();
      [v18 setKeyPath:v19];

      v20 = v2[3];
      v21 = v20 + v2[2];
      if (v20 > v21)
      {
        goto LABEL_40;
      }

      v22 = v20 + v48 / 100.0 * (v21 - v20);
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22;
      result = [v18 values];
      if (!result)
      {
        goto LABEL_45;
      }

      v23 = result;
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100C0CAC4(v24);
      }

      if (v47 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v25 = v24 + 32 * v47;
      sub_10000959C((v25 + 32));
      sub_100016270(&v49, (v25 + 32));
      v26 = Array._bridgeToObjectiveC()().super.isa;

      [v18 setValues:v26];

      v27 = v44;
      v28 = String._bridgeToObjectiveC()();
      [v27 setKeyPath:v28];

      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22 * 0.5;
      result = [v27 values];
      if (!result)
      {
        goto LABEL_46;
      }

      v29 = result;
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100C0CAC4(v30);
      }

      if (v47 >= *(v30 + 16))
      {
        goto LABEL_42;
      }

      ++v10;
      v31 = v30 + 32 * v47;
      sub_10000959C((v31 + 32));
      sub_100016270(&v49, (v31 + 32));
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v27 setValues:v32];

      v9 = *(v46 + 16);
      v11 += 32;
      if (v10 == v9)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_30:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
LABEL_31:
    swift_bridgeObjectRelease_n();
    sub_10010FC20(&qword_1011B81C8, "Vw\n");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = 1;
    *(inited + 56) = v45;
    *(inited + 64) = 2;
    *(inited + 72) = v44;
    v38 = sub_100B179C4(inited);
    swift_setDeallocating();
    sub_10010FC20(&qword_1011B81D0, "vw\n");
    swift_arrayDestroy();

    return v38;
  }

  return result;
}

void sub_100C0C1A8(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 40);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = sub_100C0C384(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  sub_100009F78(0, &qword_1011B13D8, CALayer_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v9 = *(v8 + 8 * a2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v13 + 16))
    {

      v14 = String._bridgeToObjectiveC()();

      v15 = [v10 animationForKey:v14];

      if (v15)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_100C0C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_10000F8B8(a1, a2), (v5 & 1) != 0))
  {
    sub_10000DD18(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_10010FC20(&qword_1011B7C70, &unk_100EFFD00);
  sub_100009F78(0, &qword_1011B13D8, CALayer_ptr);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C0C42C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "cannedHeightAnimation";
  v4 = 0xD000000000000014;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v2 == 1)
  {
    v6 = "cannedHeightAnimation";
  }

  else
  {
    v6 = "cannedWidthAnimation";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ntroller1XCroppedImage";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "cannedWidthAnimation";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ntroller1XCroppedImage";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100C0C500()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100C0C598(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100C0C61C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100C0C6B0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C0DEE8(*a1);
  *a2 = result;
  return result;
}

void sub_100C0C6E0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "cannedHeightAnimation";
  v4 = 0xD000000000000014;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "cannedWidthAnimation";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ntroller1XCroppedImage";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_100C0C748()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011B7F08);
  sub_1000060E4(v0, qword_1011B7F08);
  sub_100009F78(0, &qword_1011B1428, OS_os_log_ptr);
  OS_os_log.init(musicCategory:)(0x614279636E756F42, 0xEF74657373417372);
  return Logger.init(_:)();
}

uint64_t sub_100C0C7D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100C0C820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100C0C920, 0, 0);
}

uint64_t sub_100C0C920()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100029878(&qword_1011B81D8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100029878(&qword_1011B81E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10062A6FC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

void sub_100C0CAD8(uint64_t a1)
{
  v41 = sub_10010FC20(&qword_1011B4A38, &qword_100F055B0);
  v2 = *(v41 - 8);
  __chkstk_darwin();
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = *(v2 + 80);
    v38 = v9;
    v39 = (v9 + 32) & ~v9;
    v10 = _swiftEmptyArrayStorage + v39;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = *(v13 + 72);
    v15 = _swiftEmptyArrayStorage;
    v36 = v7;
    v37 = v2;
    while (1)
    {
      v17 = *(v41 + 48);
      *v4 = v11;
      sub_100C0DD00(v14, v4 + v17);
      sub_100C0DD64(v4, v6);
      if (v12)
      {
        v8 = v15;
        v16 = __OFSUB__(v12--, 1);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = v15[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v19 = v6;
        v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        sub_10010FC20(&qword_1011B8218, &qword_100F0A4E8);
        v22 = *(v2 + 72);
        v23 = v39;
        v8 = swift_allocObject();
        v24 = j__malloc_size(v8);
        if (!v22)
        {
          goto LABEL_34;
        }

        v25 = v24 - v23;
        if (v24 - v23 == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_35;
        }

        v27 = v25 / v22;
        v8[2] = v21;
        v8[3] = 2 * (v25 / v22);
        v28 = v8 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v8 < v15 || v28 >= v15 + v39 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v32 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v6 = v19;
        v7 = v36;
        v2 = v37;
        v16 = __OFSUB__(v32, 1);
        v12 = v32 - 1;
        if (v16)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_100C0DD64(v6, v10);
      v10 += *(v2 + 72);
      v14 += v40;
      v15 = v8;
      if (v7 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v33 = v8[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v16 = __OFSUB__(v34, v12);
    v35 = v34 - v12;
    if (v16)
    {
      goto LABEL_36;
    }

    v8[2] = v35;
  }
}

void sub_100C0CDE4(unint64_t a1)
{

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  for (i = &_swiftEmptyArrayStorage[4]; ; i += 2)
  {
    v5 = a1 >> 62;
    if (a1 >> 62)
    {
      break;
    }

    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

LABEL_4:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v6 = *(a1 + 32);
    }

    v7 = v6;
    if (v5)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_61;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_62;
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_61;
      }
    }

    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v5)
      {
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_20;
    }

    if (v5)
    {
      goto LABEL_19;
    }

LABEL_20:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    if (a1 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (v17 - 1));
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_68;
      }

      *(v10 + 16) = v18 - 1;
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_39:
        v15 = 0;
        if (v2)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v11 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v11 - 8);
      *(v10 + 16) = v11 - 1;
      if (v11 == 1)
      {
        goto LABEL_39;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_100501584(a1);
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *(v10 + 16);
    if (!v13)
    {
      goto LABEL_60;
    }

    v14 = v13 - 1;
    v15 = *(v10 + 8 * v14 + 32);
    *(v10 + 16) = v14;
    if (v2)
    {
LABEL_28:
      v16 = __OFSUB__(v2--, 1);
      if (v16)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_40:
    v19 = v3[3];
    if (((v19 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_63;
    }

    v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    sub_10010FC20(&qword_1011B7C90, &qword_100F09E40);
    v22 = swift_allocObject();
    v23 = j__malloc_size(v22);
    v24 = v23 - 32;
    if (v23 < 32)
    {
      v24 = v23 - 17;
    }

    v25 = v24 >> 4;
    v22[2] = v21;
    v22[3] = 2 * (v24 >> 4);
    v26 = (v22 + 4);
    v27 = v3[3] >> 1;
    if (v3[2])
    {
      v28 = v3 + 4;
      if (v22 != v3 || v26 >= v28 + 16 * v27)
      {
        memmove(v22 + 4, v28, 16 * v27);
      }

      v3[2] = 0;
    }

    i = (v26 + 16 * v27);
    v29 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

    v3 = v22;
    v16 = __OFSUB__(v29, 1);
    v2 = v29 - 1;
    if (v16)
    {
      goto LABEL_59;
    }

LABEL_52:
    *i = v7;
    i[1] = v15;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_65;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_66;
    }

    goto LABEL_4;
  }

LABEL_53:

  v30 = v3[3];
  if (v30 < 2)
  {
    return;
  }

  v31 = v30 >> 1;
  v16 = __OFSUB__(v31, v2);
  v32 = v31 - v2;
  if (!v16)
  {
    v3[2] = v32;
    return;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void *sub_100C0D174(uint64_t a1)
{
  v3 = Data.init(contentsOf:options:)();
  if (v1)
  {
    goto LABEL_2;
  }

  v7 = v3;
  v8 = v4;
  sub_100009F78(0, &qword_1011B81E8, NSKeyedUnarchiver_ptr);
  sub_10010FC20(&qword_1011B81F0, &qword_100F0A4E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EC6C60;
  *(v9 + 32) = sub_100009F78(0, &qword_1011B13D8, CALayer_ptr);
  *(v9 + 40) = sub_100009F78(0, &qword_1011B81F8, NSMutableDictionary_ptr);
  *(v9 + 48) = sub_100009F78(0, &qword_1011B8200, NSArray_ptr);
  *(v9 + 56) = sub_100009F78(0, &qword_1011B8208, NSString_ptr);
  *(v9 + 64) = sub_100009F78(0, &qword_1011B3A00, NSNumber_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v17)
  {
    sub_100011EC0(v16);
    goto LABEL_14;
  }

  sub_10010FC20(&qword_1011B1768, &qword_100F00C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_100C0DCAC();
    swift_allocError();
    swift_willThrow();
    sub_10002C064(v7, v8);
LABEL_2:
    v5 = type metadata accessor for URL();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  if (!v15[2] || (v10 = sub_10000F8B8(0x6579614C746F6F72, 0xE900000000000072), (v11 & 1) == 0) || (sub_10000DD18(v15[7] + 32 * v10, v16), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  if (!v15[2] || (v12 = sub_10000F8B8(0xD000000000000010, 0x8000000100E68390), (v13 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_10000DD18(v15[7] + 32 * v12, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_14;
  }

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 8))(a1, v14);
  sub_10002C064(v7, v8);
  return v15;
}

void _s11MusicCoreUI21WaveformPlayIndicatorC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v18 = sub_10010FC20(&qword_1011B3D00, &unk_100F0A200);
  v2 = *(v18 - 8);
  __chkstk_darwin();
  v4 = &v16 - v3;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v6 = objc_opt_self();
  v17 = [v6 tintColor];
  v7 = [v6 labelColor];
  v8 = [v7 colorWithAlphaComponent:0.35];

  v9 = [v6 labelColor];
  v10 = [v9 colorWithAlphaComponent:0.2];

  v11 = [v6 labelColor];
  v12 = [v11 colorWithAlphaComponent:0.6];

  *v5 = v17;
  v5[1] = v8;
  v5[2] = v10;
  v5[3] = v12;
  v13 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v1 + v13) = [objc_opt_self() zero];
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v19 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v1 + v14, v4, v18);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v1 + v15) = sub_100C0B798();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100C0D7B8(void *a1, void *a2, void *a3, void *a4)
{
  v9 = v4 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_100C0642C();
  }
}

unint64_t sub_100C0D8E0()
{
  result = qword_1011B7F78;
  if (!qword_1011B7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B7F78);
  }

  return result;
}

uint64_t type metadata accessor for WaveformPlayIndicator(uint64_t a1)
{
  result = qword_1011B7FA8;
  if (!qword_1011B7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C0D988(uint64_t a1)
{
  sub_100008ED0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100C0DAF0()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:1.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_100C0DB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100C09C20(a1, v4, v5, v6);
}

id sub_100C0DC10()
{
  v1 = *(v0 + 16);
  [v1 setBackgroundColor:*(v0 + 24)];
  [v1 bounds];

  return [v1 setBounds:?];
}

id sub_100C0DC7C(id result)
{
  if (!result)
  {
    return [*(v1 + 16) startAnimation];
  }

  return result;
}

double sub_100C0DC94()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;

  return result;
}

unint64_t sub_100C0DCAC()
{
  result = qword_1011B8210;
  if (!qword_1011B8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B8210);
  }

  return result;
}

uint64_t sub_100C0DD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCurators.Curator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C0DD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B4A38, &qword_100F055B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100C0DE3C()
{
  result = qword_1011B8230;
  if (!qword_1011B8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B8230);
  }

  return result;
}

unint64_t sub_100C0DE94()
{
  result = qword_1011B8238;
  if (!qword_1011B8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B8238);
  }

  return result;
}

unint64_t sub_100C0DEE8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010E0BB8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_100C0DF9C()
{
  result = sub_100C0DFBC();
  qword_10121BC50 = result;
  return result;
}

id sub_100C0DFBC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_10010FC20(&qword_1011B8490, &unk_100F0B200) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_10001E774(_swiftEmptyArrayStorage);
  sub_10010FC20(&qword_1011B8498, &qword_100F0AA60);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBE260;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_100027B58(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_100027B58(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_10001EF84(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "319BF3FEA1012BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_100C0EA64(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_100028BD8(v6);
        v36 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_100C0EA64(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_100028BD8(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_100028BD8(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t variable initialization expression of ShaderFallback.calculator()
{
  type metadata accessor for ShaderFallback.Calculator(0);
  swift_allocObject();
  return sub_100C1A1B8();
}

__n128 sub_100C0E670(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100C0E684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C0E6A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 368) = v3;
  return result;
}

uint64_t sub_100C0E758(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int sub_100C0E8B0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100C0E960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100C0E9A8(uint64_t a1)
{
  sub_100C0E960(&qword_1011B84E0, type metadata accessor for Option, &unk_100F0AC70);
  sub_100C0E960(&qword_1011B84E8, type metadata accessor for Option, &unk_100F0ABC4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100C0EA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B8490, &unk_100F0B200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100C0EAD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100C0EAF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100C0EAF4(void *result, int64_t a2, char a3, void *a4)
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

  sub_10010FC20(&qword_1011B8498, &qword_100F0AA60);
  v10 = *(sub_10010FC20(&qword_1011B8490, &unk_100F0B200) - 8);
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
  v15 = *(sub_10010FC20(&qword_1011B8490, &unk_100F0B200) - 8);
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

uint64_t sub_100C0ECE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C0ED04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 sub_100C0ED4C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_100C0ED80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100C0ED9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C0EDBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
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

  *(result + 80) = v3;
  return result;
}

__n128 sub_100C0EE10(uint64_t a1, uint64_t a2)
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

uint64_t sub_100C0EE24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C0EE44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Backdrop.RGBColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

double sub_100C0EFA8()
{
  xmmword_10121BC60 = xmmword_100F0A690;
  *algn_10121BC70 = xmmword_100F0A6A0;
  result = 0.0;
  xmmword_10121BC80 = xmmword_100F0A6B0;
  unk_10121BC90 = xmmword_100F0A6C0;
  return result;
}

void sub_100C0EFDC(void *a1)
{
  v3 = [v1 vertexCount];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      [v1 vertexAtIndex:{v5, *&v32}];
      [a1 vertexAtIndex:v5];
      v32 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100C16480(0, *(v6 + 2) + 1, 1, v6);
      }

      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_100C16480((v7 > 1), v8 + 1, 1, v6);
      }

      ++v5;
      *(&v9 + 1) = *&v33.f64[1];
      *&v9 = vcvt_f32_f64(v33);
      *&v10 = vcvt_f32_f64(v34);
      *&v11 = v35;
      *(&v10 + 1) = v11;
      *&v12 = v10;
      *&v13 = v35;
      *(&v12 + 1) = v13;
      *(v6 + 2) = v8 + 1;
      v14 = &v6[64 * v8];
      *(v14 + 2) = v9;
      *(v14 + 6) = v9;
      *(v14 + 4) = v10;
      *(v14 + 5) = v12;
    }

    while (v4 != v5);
  }

  v15 = [v1 faceCount];
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v16 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    while (1)
    {
      [v1 faceAtIndex:v17];
      sub_10010FC20(&unk_1011B8620, &unk_100F0B1D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBCED0;
      if (HIWORD(LODWORD(v33.f64[0])))
      {
        break;
      }

      v20 = inited;
      *(inited + 32) = LOWORD(v33.f64[0]);
      if (HIWORD(LODWORD(v33.f64[1])))
      {
        goto LABEL_29;
      }

      *(inited + 34) = LOWORD(v33.f64[1]);
      if (HIWORD(HIDWORD(v33.f64[1])))
      {
        goto LABEL_30;
      }

      *(inited + 36) = WORD2(v33.f64[1]);
      *(inited + 38) = LOWORD(v33.f64[0]);
      if (HIWORD(HIDWORD(v33.f64[0])))
      {
        goto LABEL_31;
      }

      *(inited + 40) = WORD2(v33.f64[0]);
      *(inited + 42) = LOWORD(v33.f64[1]);
      v21 = *(v18 + 2);
      v22 = v21 + 6;
      if (__OFADD__(v21, 6))
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v24 = *(v18 + 3) >> 1, v24 < v22))
      {
        if (v21 <= v22)
        {
          v25 = v21 + 6;
        }

        else
        {
          v25 = v21;
        }

        v18 = sub_100C16384(isUniquelyReferenced_nonNull_native, v25, 1, v18);
        v24 = *(v18 + 3) >> 1;
      }

      v26 = *(v18 + 2);
      if (v24 - v26 < 6)
      {
        goto LABEL_33;
      }

      v27 = *(v20 + 32);
      v28 = &v18[2 * v26];
      *(v28 + 10) = *(v20 + 40);
      *(v28 + 4) = v27;

      v29 = *(v18 + 2);
      v30 = __OFADD__(v29, 6);
      v31 = v29 + 6;
      if (v30)
      {
        goto LABEL_34;
      }

      ++v17;
      *(v18 + 2) = v31;
      if (v16 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
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
    goto LABEL_35;
  }
}

double sub_100C0F2C8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat);
  *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat) = a1;
  if (v2 != a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 16);
    *(v3 + 16) = a1;
    *(v3 + 160) = sub_100C11924();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100C0F33C(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  v7 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage);
  if (!a1)
  {
    *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage) = 0;
    v10 = 0;

    goto LABEL_17;
  }

  if (v7)
  {
    _s3__C7CGImageCMa_1(0);
    sub_100C14D94(&qword_1011B9138, _s3__C7CGImageCMa_1, &unk_100F0A9B8);
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      return;
    }

    v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  }

  v11 = *(v3 + v6);
  *(v3 + v6) = a1;
  v12 = a1;

  v13 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  v14 = *(v13 + 24);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v13 + 32);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v16 = sub_100C0F5BC(v14, 0, v15, 0);
  if (v16)
  {
    v20 = v16;
    sub_100C0FDDC(v16, 0, 0, 0, a2 & 1);

    return;
  }

LABEL_17:
  v17 = sub_100C109E4(*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 8), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 16));
  v18 = 1.0;
  if (a2)
  {
    v18 = 0.0;
  }

  *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v18;
  v19 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  *(v19 + 96) = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v19 + 104) = 1;

  swift_unknownObjectRelease();
}

CGImageRef sub_100C0F5BC(uint64_t Width, char a2, int64_t Height, char a4)
{
  v5 = v4;
  if (a2)
  {
    Width = CGImageGetWidth(v5);
  }

  v9 = CGImageGetWidth(v5);
  if (v9 < Width)
  {
    Width = v9;
  }

  if (a4)
  {
    Height = CGImageGetHeight(v5);
  }

  v10 = CGImageGetHeight(v5);
  if (v10 >= Height)
  {
    v11 = Height;
  }

  else
  {
    v11 = v10;
  }

  v12 = CGImageGetColorSpace(v5);
  if (!v12 || (v13 = v12, Model = CGColorSpaceGetModel(v12), v13, Model))
  {
    if (CGImageGetAlphaInfo(v5) != kCGImageAlphaNoneSkipFirst && CGImageGetAlphaInfo(v5) != kCGImageAlphaPremultipliedFirst)
    {
      return v5;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = sub_100C14DDC(Width, v11, DeviceRGB);

  if (!v16)
  {
    return v5;
  }

  v17 = static os_log_type_t.info.getter();
  sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    _s3__C7CGImageCMa_1(0);
    v21 = v5;
    v22 = String.init<A>(describing:)();
    v24 = sub_100010810(v22, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v17, "Backdrop: Redrawing incompatible image: %s", v19, 0xCu);
    sub_10000959C(v20);
  }

  CGContextRef.draw(_:in:byTiling:)();
  Image = CGBitmapContextCreateImage(v16);

  return Image;
}

double sub_100C0F7E8(char a1, double result, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor);
  *v5 = result;
  v5[1] = a3;
  v5[2] = a4;
  if (!*(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage))
  {
    v7 = sub_100C109E4(result, a3, a4);
    v8 = 1.0;
    if (a1)
    {
      v8 = 0.0;
    }

    *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v8;
    v9 = *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v9 + 96) = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v9 + 104) = 1;

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_100C0F8A4(uint64_t *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_state] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat] = 80;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_colorPixelFormat] = 115;
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_isPaused] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration] = 1077097267;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage] = 0;
  v4 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor];
  *v4 = 0x3FF0000000000000;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v5 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment];
  *v5 = 0;
  *(v5 + 4) = 0x432000004019999ALL;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction;
  v7 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v8) = 1050253722;
  LODWORD(v9) = 1.0;
  *&v2[v6] = [v7 initWithControlPoints:0.0 :0.0 :v8 :v9];
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_warpTimingSpeed] = 0x400C000000000000;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchMix] = 0;
  v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  if (qword_1011B8288 != -1)
  {
    swift_once();
  }

  memmove(&v2[v10], &static Uniforms.standard, 0x170uLL);
  memmove(&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], &static Uniforms.standard, 0x170uLL);
  v11 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis;
  type metadata accessor for SpectrumAnalysis();
  swift_allocObject();
  *&v2[v11] = sub_100C15AAC();
  __asm { FMOV            V0.2S, #1.0 }

  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio] = _D0;
  v17 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
  *v17 = 0;
  v17[4] = 1;
  v18 = a1[3];
  v19 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context];
  *(v19 + 25) = *(a1 + 25);
  v20 = *(a1 + 1);
  *v19 = *a1;
  *(v19 + 1) = v20;
  type metadata accessor for Backdrop.TextureBlender();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = v18;
  v22 = sub_100C14760(a1);
  type metadata accessor for Backdrop.RotatingArtworkRenderer();
  v23 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v21;
  sub_100C12964(a1);
  type metadata accessor for Backdrop.PinchRenderer();
  v25 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = v24;
  sub_100C11158(a1, 0);
  v27 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
  *v27 = v22;
  v27[1] = v23;
  v27[2] = v25;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_100C0FC00();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v28;
}

void sub_100C0FC00()
{
  sub_100C14A5C();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100F0A690, COERCE_FLOAT(*(v1 + 96))), xmmword_100F0A6A0, *(v1 + 96), 1), xmmword_100F0A6B0, *(v1 + 96), 2), xmmword_100F0A6D0, *(v1 + 96), 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100F0A690, COERCE_FLOAT(*(v1 + 112))), xmmword_100F0A6A0, *(v1 + 112), 1), xmmword_100F0A6B0, *(v1 + 112), 2), xmmword_100F0A6D0, *(v1 + 112), 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100F0A690, COERCE_FLOAT(*(v1 + 128))), xmmword_100F0A6A0, *(v1 + 128), 1), xmmword_100F0A6B0, *(v1 + 128), 2), xmmword_100F0A6D0, *(v1 + 128), 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100F0A690, COERCE_FLOAT(*(v1 + 144))), xmmword_100F0A6A0, *(v1 + 144), 1), xmmword_100F0A6B0, *(v1 + 144), 2), xmmword_100F0A6D0, *(v1 + 144), 3);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v4 = *(v1 + 208);
    v5 = *(v1 + 192);

    v3 = v0 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v3 + 80) = v15;
    *(v3 + 96) = v14;
    *(v3 + 112) = v13;
    *(v3 + 128) = v12;
    *(v3 + 144) = -1;
    *(v3 + 148) = 1130102784;
    *(v3 + 160) = v11;
    *(v3 + 176) = v10;
    *(v3 + 192) = v9;
    *(v3 + 208) = v8;
    *(v3 + 224) = -1;
    *(v3 + 228) = 1124204544;
    *(v3 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100F0A690, v7.f32[0]), xmmword_100F0A6A0, *v7.f32, 1), xmmword_100F0A6B0, v7, 2), xmmword_100F0A6E0, v7, 3);
    *(v3 + 256) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100F0A690, v6.f32[0]), xmmword_100F0A6A0, *v6.f32, 1), xmmword_100F0A6B0, v6, 2), xmmword_100F0A6E0, v6, 3);
    *(v3 + 272) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100F0A690, v5.f32[0]), xmmword_100F0A6A0, *v5.f32, 1), xmmword_100F0A6B0, v5, 2), xmmword_100F0A6E0, v5, 3);
    *(v3 + 288) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100F0A690, v4.f32[0]), xmmword_100F0A6A0, *v4.f32, 1), xmmword_100F0A6B0, v4, 2), xmmword_100F0A6E0, v4, 3);
    *(v3 + 304) = 0;
    *(v3 + 308) = 1124859904;
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_100C0FDDC(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    v10 = sub_100C109E4(*&a1, *&a2, *&a3);
    v11 = 1.0;
    if (a5)
    {
      v11 = 0.0;
    }

    *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = v11;
    v12 = *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
    *(v12 + 96) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v12 + 104) = 1;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = 0;
    *(v14 + 48) = v5;
    *(v14 + 56) = a5 & 1;
    sub_10010FC20(&qword_1011B90E8, &qword_100F0B060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    v16 = MTKTextureLoaderOptionSRGB;
    *(inited + 32) = MTKTextureLoaderOptionSRGB;
    *(inited + 40) = 0;
    v17 = v5;
    sub_100C14D18(a1, a2, a3, 0);
    v18 = v16;
    v19 = sub_100C14670(inited);
    swift_setDeallocating();
    sub_100C14D24(inited + 32);
    v20 = *&v17[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 24];
    sub_100C102A8(v19);

    type metadata accessor for Option(0);
    sub_100C14D94(&qword_1011B84E0, type metadata accessor for Option, &unk_100F0AC70);
    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (a5)
    {
      v22 = swift_allocObject();
      v22[2] = sub_100C14D00;
      v22[3] = v14;
      v28[4] = sub_100C14D8C;
      v28[5] = v22;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 1107296256;
      v28[2] = sub_100C10964;
      v28[3] = &unk_1010EF520;
      v23 = _Block_copy(v28);

      [v20 newTextureWithCGImage:a1 options:v21.super.isa completionHandler:v23];

      _Block_release(v23);
    }

    else
    {
      v28[0] = 0;
      v24 = [v20 newTextureWithCGImage:a1 options:v21.super.isa error:v28];

      v25 = v28[0];
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v27 = v25;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v26 = 0;
      }

      sub_100C101A4(v26, a1, a2, a3, 0, v17, 0);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100C101A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a5 & 1) != 0 || (v7 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage)) == 0 || (v8 = a1, v9 = a6, v10 = a7, _s3__C7CGImageCMa_1(0), sub_100C14D94(&qword_1011B9138, _s3__C7CGImageCMa_1, &unk_100F0A9B8), v11 = v7, v12 = static _CFObject.== infix(_:_:)(), v11, a7 = v10, a6 = v9, a1 = v8, (v12))
  {
    v13 = 1.0;
    if (a7)
    {
      v13 = 0.0;
    }

    *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v13;
    v14 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v14 + 96) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v14 + 104) = 1;
  }
}

void sub_100C102A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011B9128, &qword_100F0B080);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_100016270((v24 + 8), v22);
    sub_100016270(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v6[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v6[v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~v6[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v12;
    sub_100016270(v24, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100C10540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for DispatchQoS();
  v11 = *(v34 - 8);
  __chkstk_darwin();
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v33 = v11;
    swift_errorRetain();
    v14 = static os_log_type_t.error.getter();
    sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v31 = v16;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v16 = 136315138;
      swift_getErrorValue();
      v30 = v15;
      v17 = Error.localizedDescription.getter();
      v19 = sub_100010810(v17, v18, aBlock);
      v29 = v14;
      v20 = v8;
      v21 = v19;

      v23 = v30;
      v22 = v31;
      *(v31 + 1) = v21;
      v8 = v20;
      _os_log_impl(&_mh_execute_header, v23, v29, "Error loading texture: %s", v22, 0xCu);
      sub_10000959C(v32);
    }

    else
    {
    }

    v11 = v33;
  }

  sub_100009F78(0, &qword_1011B9100, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  v25[2] = v35;
  v25[3] = a4;
  v25[4] = a1;
  aBlock[4] = sub_1002CF93C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010EF570;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100C14D94(&qword_1011B9108, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_1011B9110, &qword_100F0B070);
  sub_1000249C8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v34);
}

double sub_100C10964(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  swift_unknownObjectRelease();
  return result;
}

id sub_100C109E4(double a1, double a2, double a3)
{
  v7 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  result = [*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context) newTextureWithDescriptor:v7];
  v9 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = a3 * 255.0;
  if (COERCE__INT64(fabs(a3 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 256.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16[0] = v10;
  v11 = a2 * 255.0;
  if (COERCE__INT64(fabs(a2 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 >= 256.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16[1] = v11;
  v12 = a1 * 255.0;
  if (COERCE__INT64(fabs(a1 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 256.0)
  {
    v16[2] = v12;
    v16[3] = -1;
    memset(v13, 0, sizeof(v13));
    v14 = vdupq_n_s64(1uLL);
    v15 = 1;
    [result replaceRegion:v13 mipmapLevel:0 withBytes:v16 bytesPerRow:4];
LABEL_12:

    return v9;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_100C10BEC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for Backdrop.CompositeRenderer()
{
  return objc_opt_self();
}

{
  return type metadata accessor for Backdrop.CompositeRenderer();
}

int8x8_t sub_100C10D10(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = a1 / a2;
  v9 = 1.0 / v8;
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio);
  *v10 = v9;
  v10[1] = v8;
  v19 = LODWORD(v9);
  LODWORD(v11) = 0;
  *(&v11 + 1) = v8;
  v18 = v11;
  v12 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms);
  swift_beginAccess();
  v12[1] = v19;
  v12[2] = v18;
  v12[3] = xmmword_100F0A6B0;
  v12[4] = xmmword_100F0A6C0;
  v13 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
  v14 = *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v14[6] = a3;
  sub_100C12B80(a1, a2);
  v15 = v14[5] < v14[4];
  v16 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment;
  *v16 = v15;
  result = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v15), 0x1FuLL)), 0x42F000004019999ALL, 0x42AA000040000000);
  *(v16 + 4) = result;
  *(*(v13 + 16) + 104) = v15;
  return result;
}

void sub_100C10EA8(void *a1)
{
  v2 = v1;
  v16 = [a1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 isDrawableAvailable];

    if (v5)
    {
      sub_100C14AE4(0.016667);
      v6 = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 8) commandBuffer];
      if (v6)
      {
        v7 = v6;
        v8 = v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
        v9 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
        v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
        swift_beginAccess();
        sub_100C124A4(v7, v2 + v10, v11);
        swift_endAccess();
        v12 = *(v8 + 8);
        *(v12 + 152) = *(v9 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        swift_beginAccess();
        sub_100C12C10(v7, v2 + v10, v13);
        swift_endAccess();
        *(*(v8 + 16) + 32) = *(v12 + 168);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v14 = [a1 currentRenderPassDescriptor];
        swift_beginAccess();
        sub_100C115A8(v7, v2 + v10, v14);
        swift_endAccess();

        v15 = [a1 currentDrawable];
        if (v15)
        {
          [v7 presentDrawable:v15];
          swift_unknownObjectRelease();
        }

        [v7 commit];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
  }
}

void sub_100C11158(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + 16) = 80;
  *(v2 + 32) = 0;
  *(v2 + 104) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  *(v3 + 112) = *a1;
  *(v3 + 128) = v6;
  *(v3 + 137) = *(a1 + 25);
  v45 = v4;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v43 = v5;
  sub_100C169DC(1, &v46);
  v7 = v48;
  v8 = v49;
  v9 = kCADepthNormalizationNone;
  v10 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v46 + 2) vertices:v46 + 32 faceCount:*(v47 + 16) faces:v47 + 32 depthNormalization:kCADepthNormalizationNone];
  v11 = [v10 subdividedMesh:2];

  v12 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v7 + 16) vertices:v7 + 32 faceCount:*(v8 + 16) faces:v8 + 32 depthNormalization:v9];

  v13 = [v12 subdividedMesh:2];

  sub_100C0EFDC(v13);
  v16 = *(v14 + 16);
  if (v16 >> 57)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = v14;
  v18 = v15;
  v19 = v16 << 6;

  v20 = [v45 newBufferWithBytes:v17 + 32 length:v19 options:0];
  v21 = *(v18 + 16);
  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v22 = v20;
  v23 = 2 * v21;
  swift_unknownObjectRetain();
  v24 = [v45 newBufferWithBytes:v18 + 32 length:v23 options:0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  *(v3 + 40) = v17;
  *(v3 + 48) = v18;
  *(v3 + 56) = v22;
  *(v3 + 64) = v24;
  swift_unknownObjectRetain();
  sub_100C169DC(0, &v46);
  v25 = v48;
  v26 = v49;
  v27 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v46 + 2) vertices:v46 + 32 faceCount:*(v47 + 16) faces:v47 + 32 depthNormalization:v9];
  v28 = [v27 subdividedMesh:2];

  v29 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v25 + 16) vertices:v25 + 32 faceCount:*(v26 + 16) faces:v26 + 32 depthNormalization:v9];

  v30 = [v29 subdividedMesh:2];

  sub_100C0EFDC(v30);
  v33 = *(v31 + 16);
  if (v33 >> 57)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v34 = v31;
  v35 = v32;
  v36 = v33 << 6;

  v37 = [v45 newBufferWithBytes:v34 + 32 length:v36 options:0];
  v38 = *(v35 + 16);
  if (v38 + 0x4000000000000000 >= 0)
  {
    v39 = v37;
    v40 = 2 * v38;
    swift_unknownObjectRetain();
    v41 = [v45 newBufferWithBytes:v35 + 32 length:v40 options:0];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *(v3 + 72) = v34;
    *(v3 + 80) = v35;
    *(v3 + 88) = v39;
    *(v3 + 96) = v41;
    *(v3 + 24) = a2 & 1;
    v42 = sub_100C11924();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v3 + 160) = v42;
    swift_unknownObjectRelease();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100C115A8(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 160);
  if (!v4)
  {
    return;
  }

  if (*(v3 + 104) == 1)
  {
    v5 = *(v3 + 56);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 64);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v5 = *(v3 + 88);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 96);
    if (!v6)
    {
      return;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = *(v3 + 32);
  if (!v10 || !a3)
  {
    swift_unknownObjectRelease();
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRetain();
  v15 = a3;
  swift_unknownObjectRetain();
  v11 = [a1 renderCommandEncoderWithDescriptor:v15];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    [v12 setLabel:v13];

    [v12 setRenderPipelineState:v4];
    [v12 setVertexBuffer:v5 offset:0 atIndex:0];
    [v12 setVertexBytes:a2 length:368 atIndex:1];
    [v12 setFragmentBytes:a2 length:368 atIndex:1];
    [v12 setFragmentTexture:v10 atIndex:0];
    v14 = 80;
    if (*(v3 + 104))
    {
      v14 = 48;
    }

    [v12 drawIndexedPrimitives:3 indexCount:*(*(v3 + v14) + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
    [v12 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id sub_100C11840()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 168);
  }

  else
  {
    if (*(v0 + 24))
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x72665F68636E6970;
    }

    if (*(v0 + 24))
    {
      v4 = 0x8000000100E68B70;
    }

    else
    {
      v4 = 0xEE00746E656D6761;
    }

    v5 = sub_100C157A4(0x65765F68636E6970, 0xEC00000078657472, v3, v4, 0xD000000000000022, 0x8000000100E68B40, *(v0 + 128));

    v6 = *(v0 + 168);
    *(v0 + 168) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_100C11924()
{
  v1 = sub_100C11840();
  if (qword_1011B8258 != -1)
  {
    swift_once();
  }

  [v1 setVertexDescriptor:qword_10121BCD0];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (!v3)
  {
    v7 = static os_log_type_t.error.getter();
    sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Backdrop: could not create pipeline for pinch. Missing color attachments", 72, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  [v3 setPixelFormat:*(v0 + 16)];
  v4 = *(v0 + 112);
  v21 = 0;
  v5 = [v4 newRenderPipelineStateWithDescriptor:v1 error:&v21];
  v6 = v21;
  if (!v5)
  {
    v9 = v6;
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v24 = v10;
    sub_10010FC20(&qword_1011B90D0, &qword_100F0B050);
    sub_100009F78(0, &qword_1011B90D8, NSError_ptr);
    swift_dynamicCast();
    v11 = v23;
    sub_10010FC20(&qword_1011B90E0, &qword_100F0B058);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100EBC6B0;
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v21 = 0xD00000000000001FLL;
    v22 = 0x8000000100E68920;
    v13 = [v11 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18 = v21;
    v19 = v22;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v18;
    *(v12 + 40) = v19;
    print(_:separator:terminator:)();

    return 0;
  }

  return v5;
}

uint64_t sub_100C11C30()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_100C11D18()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = sub_100C11D70();
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100C11D70()
{
  v1 = sub_100C157A4(0x797469746E656469, 0xEF7865747265765FLL, 0xD000000000000010, 0x8000000100E68AD0, 0x2065727574786554, 0xEF7265646E656C42, *(v0 + 64));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_1011B8258 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_10121BCD0];

    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(56);
    v5._countAndFlagsBits = 0xD000000000000036;
    v5._object = 0x8000000100E68940;
    String.append(_:)(v5);
    v6 = [v1 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100C11F64()
{
  v1 = *(v0 + 48);
  v2 = sub_100C11D18();
  v17 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v17];

  v4 = v17;
  if (!v3)
  {
    v5 = v4;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = v6;
    sub_10010FC20(&qword_1011B90D0, &qword_100F0B050);
    sub_100009F78(0, &qword_1011B90D8, NSError_ptr);
    swift_dynamicCast();
    v7 = v19;
    sub_10010FC20(&qword_1011B90E0, &qword_100F0B058);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBC6B0;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v17 = 0xD00000000000001FLL;
    v18 = 0x8000000100E68920;
    v9 = [v7 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = v17;
    v15 = v18;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v14;
    *(v8 + 40) = v15;
    print(_:separator:terminator:)();

    return 0;
  }

  return v3;
}

id sub_100C1215C()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v7._object = 0x8000000100E688E0;
    v7._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v7);
    v8 = [v1 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100C1230C(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 32);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode:0];
  [v5 setUsage:7];
  *(v1 + 40) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  *(v1 + 112) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  v6 = sub_100C1215C();

  v7 = *(v1 + 168);
  *(v1 + 168) = v6;
}

double sub_100C124A4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  if (!v4 || (v5 = *(v3 + 136)) == 0 || (v6 = *(v3 + 144)) == 0 || (v7 = *(v3 + 96)) == 0)
  {
    v14 = static os_log_type_t.info.getter();
    sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v20, "Backdrop: could not encode texture blender, missing required value", 66, 2, _swiftEmptyArrayStorage);
LABEL_11:

    return result;
  }

  if (*(v3 + 104) == 1 && (v8 = *(v3 + 40)) != 0)
  {
    v9 = a1;
    v10 = a2;
    v11 = *(v3 + 112);
    if (v11)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = [v9 blitCommandEncoder];
      if (v12)
      {
        v13 = v12;
        [v12 copyFromTexture:v8 toTexture:v11];
        *(v3 + 104) = 0;
        [v13 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!*(v3 + 168))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = a1;
    v10 = a2;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (!*(v3 + 168))
  {
LABEL_21:
    v19 = static os_log_type_t.error.getter();
    sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Backdrop: Could not create command encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_16:
  v16 = [v9 renderCommandEncoderWithDescriptor:?];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  [v17 setLabel:v18];

  [v17 setRenderPipelineState:v4];
  [v17 setVertexBuffer:v5 offset:0 atIndex:0];
  [v17 setVertexBytes:v10 length:368 atIndex:1];
  [v17 setFragmentTexture:v7 atIndex:0];
  [v17 setFragmentTexture:*(v3 + 112) atIndex:1];
  [v17 setFragmentBytes:v10 length:368 atIndex:1];
  [v17 drawIndexedPrimitives:3 indexCount:*(*(v3 + 128) + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
  [v17 endEncoding];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

id *sub_100C12870()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100C1290C()
{
  sub_100C12870();

  return swift_deallocClassInstance();
}

void sub_100C12964(uint64_t *a1)
{
  v2 = v1;
  *(v2 + 16) = 115;
  *(v2 + 24) = 1117782016;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0x3FF0000000000000;
  *(v2 + 184) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  v4 = a1[3];
  *(v2 + 81) = *(a1 + 25);
  v5 = *a1;
  *(v2 + 72) = *(a1 + 1);
  *(v2 + 56) = v5;
  v6 = qword_1011B8280;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_10121BDE0;
  *(v2 + 104) = qword_10121BDE0;
  *(v2 + 112) = &off_1010EA0E0;
  v9 = *(v8 + 16);
  if (v9 >> 57)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = [*(v2 + 56) newBufferWithBytes:+ 32 length:v9 << 6 options:0];
    swift_unknownObjectRelease();
    v10 = *(v2 + 112);
    v11 = *(v10 + 16);
    if (v11 + 0x4000000000000000 >= 0)
    {
      *(v2 + 128) = [*(v2 + 56) newBufferWithBytes:v10 + 32 length:2 * v11 options:0];
      swift_unknownObjectRelease();
      type metadata accessor for Backdrop.TexturePan();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = v7;
      v13 = sub_100C148E4(a1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 176) = v13;
      v14 = sub_100C13174();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 136) = v14;
      swift_unknownObjectRelease();
      return;
    }
  }

  __break(1u);
}

double sub_100C12B80(double result, double a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  if (v3 != result || v4 != a2)
  {
    sub_100C13508(*(v2 + 56));
    sub_100C136E4();
    v6 = *(v2 + 176);
    result = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    *(v6 + 24) = result;
    *(v6 + 32) = v7;
    if (result != v8 || v7 != v9)
    {
      v11 = *(v6 + 56);

      sub_100C13884(v11);
    }
  }

  return result;
}

double sub_100C12C10(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[17];
  if (v4 && (v5 = v3[15]) != 0 && (v6 = v3[16]) != 0 && (v7 = v3[20]) != 0 && (v8 = v3[21]) != 0)
  {
    v9 = v3[18];
    if (v9)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = a1;
      v13 = [a1 renderCommandEncoderWithDescriptor:v9];
      if (v13)
      {
        v14 = v13;
        v15 = String._bridgeToObjectiveC()();
        [v14 setLabel:v15];

        [v14 setRenderPipelineState:v4];
        [v14 setVertexBuffer:v5 offset:0 atIndex:0];
        [v14 setVertexBytes:a2 length:368 atIndex:1];
        [v14 setFragmentBytes:a2 length:368 atIndex:1];
        [v14 setFragmentTexture:v3[19] atIndex:0];
        [v14 drawIndexedPrimitives:3 indexCount:*(v3[14] + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:3];
        [v14 endEncoding];
        *(v3[22] + 40) = v7;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();

        v16 = v3;
        sub_100C14020(v12, a2, v17);

        v18 = *(v3[22] + 48);
        if (v18 && (v19 = v16[23]) != 0)
        {
          swift_unknownObjectRetain();
          v20 = v19;
          [v20 encodeToCommandBuffer:v12 sourceTexture:v18 destinationTexture:v8];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return result;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v23 = static os_log_type_t.error.getter();
    sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Backdrop: Could not create command Encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = static os_log_type_t.info.getter();
    sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v24, "Backdrop: could not encode rotating artwork, missing required value", 67, 2, _swiftEmptyArrayStorage);
  }

  return result;
}

id sub_100C12FE4()
{
  v1 = sub_100C157A4(0x6E6F697461746F72, 0xEF7865747265765FLL, 0xD000000000000011, 0x8000000100E68980, 0xD000000000000024, 0x8000000100E689A0, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    [v3 setBlendingEnabled:0];
    if (qword_1011B8258 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_10121BCD0];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100C13174()
{
  v1 = *(v0 + 56);
  v2 = sub_100C12FE4();
  v17 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v17];

  v4 = v17;
  if (!v3)
  {
    v5 = v4;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = v6;
    sub_10010FC20(&qword_1011B90D0, &qword_100F0B050);
    sub_100009F78(0, &qword_1011B90D8, NSError_ptr);
    swift_dynamicCast();
    v7 = v19;
    sub_10010FC20(&qword_1011B90E0, &qword_100F0B058);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBC6B0;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v17 = 0xD00000000000001FLL;
    v18 = 0x8000000100E68920;
    v9 = [v7 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = v17;
    v15 = v18;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v14;
    *(v8 + 40) = v15;
    print(_:separator:terminator:)();

    return 0;
  }

  return v3;
}

id sub_100C1336C()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 160);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v7._object = 0x8000000100E688E0;
    v7._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v7);
    v8 = [v1 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100C13508(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 40);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 160) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              *(v1 + 168) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = sub_100C1336C();

              v7 = *(v1 + 144);
              *(v1 + 144) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 160) = 0;
  swift_unknownObjectRelease();
  *(v1 + 168) = 0;

  swift_unknownObjectRelease();
}

void sub_100C136E4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24) / (4.0 / v1);
  v3 = *(v0 + 184);
  if (!v3 || ([v3 sigma], v2 != v4))
  {
    v5 = *(v0 + 56);
    v6 = objc_allocWithZone(MPSImageGaussianBlur);
    *&v7 = v2;
    v8 = [v6 initWithDevice:v5 sigma:v7];
    v9 = *(v0 + 184);
    *(v0 + 184) = v8;
  }
}

id *sub_100C13788()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100C1382C()
{
  sub_100C13788();

  return swift_deallocClassInstance();
}

void sub_100C13884(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 32);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 48) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = sub_100C13E70();

              v7 = *(v1 + 152);
              *(v1 + 152) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 48) = 0;

  swift_unknownObjectRelease();
}

id sub_100C13A34()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = sub_100C13A8C();
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100C13A8C()
{
  v1 = sub_100C157A4(0x797469746E656469, 0xEF7865747265765FLL, 0x676172665F6E6170, 0xEC000000746E656DLL, 0x2065727574786554, 0xEE0072656E6E6150, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_1011B8258 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_10121BCD0];

    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(56);
    v5._object = 0x8000000100E68940;
    v5._countAndFlagsBits = 0xD000000000000036;
    String.append(_:)(v5);
    v6 = [v1 description];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100C13C78()
{
  v1 = *(v0 + 56);
  v2 = sub_100C13A34();
  v17 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v17];

  v4 = v17;
  if (!v3)
  {
    v5 = v4;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v20 = v6;
    sub_10010FC20(&qword_1011B90D0, &qword_100F0B050);
    sub_100009F78(0, &qword_1011B90D8, NSError_ptr);
    swift_dynamicCast();
    v7 = v19;
    sub_10010FC20(&qword_1011B90E0, &qword_100F0B058);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBC6B0;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v17 = 0xD00000000000001FLL;
    v18 = 0x8000000100E68920;
    v9 = [v7 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = v17;
    v15 = v18;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v14;
    *(v8 + 40) = v15;
    print(_:separator:terminator:)();

    return 0;
  }

  return v3;
}

id sub_100C13E70()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 48);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(52);
    v7._object = 0x8000000100E688E0;
    v7._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v7);
    v8 = [v1 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100C14020(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  if (v4 && (v5 = v3[15]) != 0 && (v6 = v3[16]) != 0 && (v7 = v3[5]) != 0)
  {
    v8 = v3[19];
    if (v8)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = [a1 renderCommandEncoderWithDescriptor:v8];
      if (v11)
      {
        v12 = v11;
        v13 = String._bridgeToObjectiveC()();
        [v12 setLabel:v13];

        [v12 setRenderPipelineState:v4];
        [v12 setVertexBuffer:v5 offset:0 atIndex:0];
        [v12 setVertexBytes:a2 length:368 atIndex:1];
        [v12 setFragmentTexture:v7 atIndex:0];
        [v12 setFragmentBytes:a2 length:368 atIndex:1];
        [v12 drawIndexedPrimitives:3 indexCount:*(v3[14] + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
        [v12 endEncoding];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v15 = static os_log_type_t.error.getter();
    sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Backdrop: Could not create command encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = static os_log_type_t.info.getter();
    sub_100009F78(0, &qword_1011B90C8, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v16, "Backdrop: could not encode texture blender, missing required value", 66, 2, _swiftEmptyArrayStorage);
  }
}

id *sub_100C14320()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100C143B4()
{
  sub_100C14320();

  return swift_deallocClassInstance();
}

__n128 sub_100C1440C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Backdrop.Specs.Environment(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Backdrop.Specs.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Backdrop.Specs.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100C14528()
{
  result = qword_1011B90C0;
  if (!qword_1011B90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B90C0);
  }

  return result;
}

char *sub_100C1457C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011B9120, &qword_100F0B078);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t sub_100C14670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B9130, &qword_100F0B088);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1002B5A68(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}