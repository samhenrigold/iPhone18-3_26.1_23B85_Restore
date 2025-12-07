id sub_220F756F0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model];
  memcpy(__dst, &v0[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model], sizeof(__dst));
  sub_220E31B58(__dst, v31);
  if (qword_2812C78D8 != -1)
  {
    swift_once();
  }

  v31[0] = 0x616C696176616E75;
  v31[1] = 0xEB00000000656C62;
  v31[2] = 0;
  v31[3] = 0;
  v32 = 2;
  v33 = qword_2812CE540;
  v34 = *algn_2812CE548;
  v35 = MEMORY[0x277D84F90];
  v36 = 0;
  v37 = 0;
  v38 = xmmword_220FC8E20;

  v3 = sub_220FBB128(__dst, v31);
  sub_220E31784(v31);
  sub_220E31784(__dst);
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel];
  if (*(v2 + 6))
  {

    v5 = sub_220FC26C0();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText_];

  v6 = &property descriptor for MapLocationAccessibilityModel.expiration;
  [v4 setHidden_];
  if (v2[96] == 3 && (memcpy(v29, v2, sizeof(v29)), (v7 = v29[6]) != 0))
  {
    v8 = v29[5];
    sub_220E31B58(v29, v28);
    v6 = &property descriptor for MapLocationAccessibilityModel.expiration;
    v9 = sub_220FBB898(v8, v7);
    sub_220E31784(v29);
  }

  else
  {
    v9 = 0;
  }

  [v4 setAccessibilityAttributedLabel_];

  v10 = sub_220F76030();
  [v10 v6[277]];

  v11 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel];
  v12 = v3 ^ 1;
  [v11 v6[277]];
  if ((v3 ^ 1))
  {
    v14 = 0;
  }

  else
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v13 = qword_2812CE4B0;
    v25 = 0x8000000220FE5020;
    sub_220FBFF80();

    v14 = sub_220FC26C0();
  }

  [v11 setText_];

  if (!v2[32])
  {
    v19 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
    memcpy(v27, v2, sizeof(v27));
    memcpy(v28, &v19[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale], sizeof(v28));
    memmove(&v19[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale], v2, 0x60uLL);
    sub_220E31B58(v27, v26);
    sub_220E31784(v28);
    sub_220ECFE90();

    [*&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView] v6[277]];
    v18 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
    [v18 v6[277]];
    goto LABEL_19;
  }

  if (v2[32] == 1)
  {
    v15 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
    [v15 v6[277]];

    v16 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
    [v16 v6[277]];

    v17 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView];
    memcpy(v27, v2, sizeof(v27));
    memcpy(v28, &v17[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_scale], sizeof(v28));
    memmove(&v17[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_scale], v2, 0x60uLL);
    v18 = v17;
    sub_220E31B58(v27, v26);
    sub_220E31784(v28);
    sub_220E40224();
LABEL_19:

    goto LABEL_21;
  }

  v20 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
  [v20 v6[277]];

  v21 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
  [v21 v6[277]];

  [*&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView] v6[277]];
LABEL_21:
  [v1 setShowsLargeContentViewer_];
  if (*(v2 + 6))
  {

    v22 = sub_220FC26C0();
  }

  else
  {
    v22 = 0;
  }

  [v1 setLargeContentTitle_];

  v23 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v1 addInteraction_];

  return [v1 setNeedsLayout];
}

id sub_220F75DDC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_bounds);
}

id sub_220F75E8C(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_setBounds_, a1, a2, a3, a4);
  return sub_220F75EF8();
}

id sub_220F75EF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  v4 = [v0 layer];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_bounds);
  v9 = [objc_opt_self() bezierPathWithRect_];
  v10 = [v9 CGPath];

  [v4 setShadowPath_];
  return [v3 commit];
}

id sub_220F76030()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_220F760A4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy);
  }

  else
  {
    v3 = v0;
    type metadata accessor for BackgroundEffectManager();
    swift_allocObject();
    v2 = sub_220E3D348(2, 0xD000000000000017, 0x8000000220FE2560);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_220F7613C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy);
  }

  else
  {
    v4 = v0;
    sub_220F760A4();
    v5 = sub_220E3D3CC();

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_220F761B4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView);
  }

  else
  {
    v4 = v0;
    sub_220F760A4();
    v5 = sub_220E3D488(0, 1);

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_220F76234(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(_BYTE *, void *))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = v3;
    memcpy(__dst, (v3 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model), sizeof(__dst));
    sub_220E31B58(__dst, &v16);
    v10 = sub_220F760A4();
    v11 = objc_allocWithZone(a2(0));
    v12 = a3(__dst, v10);
    v13 = *(v9 + v4);
    *(v9 + v4) = v12;
    v6 = v12;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

id sub_220F762FC(const void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleHeight] = 0x4040000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_maximumWidth] = 0x4062000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_minimumWidth] = 0x4055400000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_padding] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleDividerSpacing] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView] = 0;
  v4 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView] = 0;
  memcpy(&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model], a1, 0x61uLL);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F7646C(v6);

  return v6;
}

void sub_220F7646C(uint64_t a1)
{
  v2 = v1;
  if ((sub_220FC2300() & 1) == 0)
  {
    v3 = [v1 layer];
    [v3 setBorderWidth_];

    v4 = [v2 layer];
    v5 = [objc_opt_self() quaternaryLabelColor];
    v6 = [v2 traitCollection];
    v7 = [v5 resolvedColorWithTraitCollection_];

    v8 = [v7 CGColor];
    [v4 setBorderColor_];
  }

  v9 = [v2 layer];
  v10 = objc_opt_self();
  v11 = [v10 blackColor];
  v12 = [v11 colorWithAlphaComponent_];

  v13 = [v12 CGColor];
  [v9 setShadowColor_];

  v14 = [v2 layer];
  [v14 setShadowOffset_];

  v15 = [v2 layer];
  [v15 setShadowRadius_];

  v16 = [v2 layer];
  v17 = sub_220F7613C();
  [v16 addSublayer_];

  v18 = sub_220F76030();
  v19 = [v10 systemFillColor];
  [v18 setBackgroundColor_];

  v20 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v21 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView;
  v22 = [*&v2[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView] layer];
  [v22 addSublayer_];

  v23 = [v10 systemFillColor];
  v24 = [v23 CGColor];

  [v20 setBackgroundColor_];
  v25 = sub_220FC26C0();
  [v20 setCompositingFilter_];

  [v2 addSubview_];
  v26 = *&v2[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel];
  sub_220E41E50();
  v27 = *MEMORY[0x277D76938];
  v28 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74410]);
  [v26 setFont_];

  [v26 setAdjustsFontSizeToFitWidth_];
  [v26 setMinimumScaleFactor_];
  v29 = [v10 labelColor];
  [v26 setTextColor_];

  v30 = sub_220F761B4();
  v31 = [v30 contentView];

  [v31 addSubview_];
  [v2 addSubview_];
  v32 = *&v2[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel];
  v33 = sub_220E417BC(v27, 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74418]);
  [v32 setFont_];

  [v32 setAdjustsFontSizeToFitWidth_];
  [v32 setAllowsDefaultTighteningForTruncation_];
  [v32 setMinimumScaleFactor_];
  [v32 setAlpha_];
  [v2 addSubview_];
  v34 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
  [v2 addSubview_];

  v35 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
  [v2 addSubview_];

  sub_220F756F0();
  v36 = [objc_opt_self() defaultCenter];
  [v36 addObserver:v2 selector:sel_handleInvertColorsStatusDidChangeWithNotification_ name:*MEMORY[0x277D76480] object:0];
}

void sub_220F76AD4()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleHeight) = 0x4040000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_maximumWidth) = 0x4062000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_minimumWidth) = 0x4055400000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_padding) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleDividerSpacing) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView) = 0;
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F76C2C()
{
  ObjectType = swift_getObjectType();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_bounds);
  sub_220F76C90(v2, v3);
}

void sub_220F76C90(double a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_220F7613C();
  [v7 setFrame_];

  v8 = *&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel];
  v9 = 10.0;
  if (([v8 isHidden] & 1) == 0)
  {
    [v8 sizeThatFits_];
    v11 = v10;
    v12 = sub_220F761B4();
    [v12 bounds];
    [v12 setBounds_];

    v13 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView;
    [*&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView] setCenter_];
    [*&v3[v13] bounds];
    [v8 setFrame_];
    v14 = sub_220F76030();
    [*&v3[v13] &selRef_initForTextStyle_];
    v15 = CGRectGetMaxY(v30) + 10.0;
    v29.receiver = v3;
    v29.super_class = ObjectType;
    objc_msgSendSuper2(&v29, sel_bounds);
    [v14 setFrame_];

    [*&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView] &selRef_initForTextStyle_];
    v9 = CGRectGetMaxY(v32) + 10.0;
  }

  v16 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
  v17 = [v16 isHidden];

  if ((v17 & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView;
    v22 = *&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView];
    sub_220ED1320();
    v24 = v23;

    v25 = *&v3[v21];
    [v25 bounds];
    [v25 setBounds_];

    [*&v3[v21] setCenter_];
LABEL_9:
    v20 = *&v3[v21];
    goto LABEL_10;
  }

  v18 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
  v19 = [v18 isHidden];

  if ((v19 & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView;
    v26 = *&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView];
    sub_220E409C4(a1 + -20.0);

    v27 = *&v3[v21];
    [v27 bounds];
    [v27 setBounds_];

    v28 = *&v3[v21];
    [v28 bounds];
    [v28 setCenter_];

    goto LABEL_9;
  }

  v20 = *&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel];
  if ([v20 isHidden])
  {
    return;
  }

  [v20 sizeThatFits_];
  [v20 bounds];
  [v20 setBounds_];
  [v20 bounds];
  [v20 setCenter_];
LABEL_10:
  [v20 frame];
  CGRectGetMaxY(v35);
}

void sub_220F77328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_220F0B298(0, v1, 0);
    v3 = v39;
    v6 = sub_220F7BC80(v2);
    v7 = 0;
    v8 = v2 + 64;
    v25 = v4;
    v26 = v1;
    v24 = v2 + 72;
    v27 = v2 + 64;
    v28 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_23;
      }

      v31 = v4;
      v29 = v5;
      v30 = v7;
      v10 = (*(v2 + 48) + 16 * v6);
      v11 = v10[1];
      v32 = *v10;
      v12 = *(v2 + 56) + 96 * v6;
      memcpy(__dst, v12, sizeof(__dst));
      v35 = *(v12 + 32);
      v33 = *(v12 + 72);
      v34 = *(v12 + 88);
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      __src[2] = v35;
      __src[3] = __dst[3];
      *&__src[4] = *&__dst[4];
      *(&__src[5] + 1) = v34;
      *(&__src[4] + 8) = v33;
      swift_bridgeObjectRetain_n();
      sub_220E31B58(__dst, v38);
      sub_220E31B58(__src, v38);

      memcpy(v38, __src, 0x60uLL);
      sub_220E31784(v38);
      v39 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_220F0B298((v13 > 1), v14 + 1, 1);
        v3 = v39;
      }

      *(v3 + 16) = v14 + 1;
      v15 = v3 + 16 * v14;
      *(v15 + 32) = v32;
      *(v15 + 40) = v11;
      v2 = v28;
      v16 = 1 << *(v28 + 32);
      if (v6 >= v16)
      {
        goto LABEL_24;
      }

      v8 = v27;
      v17 = *(v27 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v28 + 36) != v31)
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (v24 + 8 * v9);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_220EDAB04(v6, v31, v29 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_220EDAB04(v6, v31, v29 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v30 + 1;
      v6 = v16;
      v4 = v25;
      if (v30 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_220F7764C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_220F0B4A8(0, v1, 0);
    v5 = sub_220F7BC80(a1);
    v6 = 0;
    v7 = a1 + 64;
    v23 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v24 = v4;
        v25 = v6;
        v26 = v3;
        v9 = *(a1 + 56) + 32 * v5;
        v10 = *(v9 + 16);
        v27 = *(v9 + 24);
        v11 = *(v28 + 16);
        v12 = *(v28 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_220F0B4A8((v12 > 1), v11 + 1, 1);
        }

        *(v28 + 16) = v11 + 1;
        v14 = v28 + 16 * v11;
        *(v14 + 32) = v10;
        *(v14 + 40) = v27;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v26)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (a1 + 72 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_220EDAB04(v5, v26, v24 & 1);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_18;
            }
          }

          sub_220EDAB04(v5, v26, v24 & 1);
        }

LABEL_18:
        v6 = v25 + 1;
        if (v25 + 1 == v23)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

BOOL sub_220F7788C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_220FC1070() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_220F77960(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v18 = *v6;
    v9 = OUTLINED_FUNCTION_50_0();
    sub_220EE8D08(v9, v10);
    v11 = a1(&v18);
    if (v3)
    {
      v15 = OUTLINED_FUNCTION_50_0();
      sub_220E5E3BC(v15, v16);
      return v7 != 0;
    }

    v12 = v11;
    v13 = OUTLINED_FUNCTION_50_0();
    sub_220E5E3BC(v13, v14);
    ++v6;
  }

  while ((v12 & 1) == 0);
  return v7 != 0;
}

BOOL sub_220F77A20(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

char *sub_220F77B00(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_220FC34C0();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_220F0B1A0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D9CB30](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      a2(0);
      swift_dynamicCast();
      v12 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_220F0B1A0((v9 > 1), v10 + 1, 1);
        v5 = v12;
      }

      ++v7;
      *(v5 + 16) = v10 + 1;
      sub_220E5D784(&v11, (v5 + 32 * v10 + 32));
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_220F77C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    sub_220F0B4C8(0, v1, 0);
    v2 = v30;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v28 = &type metadata for WeatherMapOverlayRegionMetadata;
      v29 = &off_2834842F0;
      v9 = swift_allocObject();
      v27[0] = v9;
      v9[2] = v5;
      v9[3] = v6;
      v9[4] = v7;
      v9[5] = v8;
      v30 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      v23 = v11 + 1;

      v12 = &type metadata for WeatherMapOverlayRegionMetadata;
      if (v11 >= v10 >> 1)
      {
        sub_220F0B4C8((v10 > 1), v23, 1);
        v12 = v28;
        v2 = v30;
      }

      v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v12);
      v22[1] = v22;
      v14 = MEMORY[0x28223BE20](v13, v13);
      v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      v18 = *v16;
      v19 = *(v16 + 3);
      v25 = &type metadata for WeatherMapOverlayRegionMetadata;
      v26 = &off_2834842F0;
      v20 = swift_allocObject();
      *&v24 = v20;
      *(v20 + 16) = v18;
      *(v20 + 24) = *(v16 + 8);
      *(v20 + 40) = v19;
      *(v2 + 16) = v23;
      sub_220E1E72C(&v24, v2 + 40 * v11 + 32);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void WeatherMapOverlayTileColorFormat.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_220FC37A0();

  *a3 = v4 != 0;
}

uint64_t sub_220F77F38(uint64_t a1)
{
  v2 = sub_220F7BDA4();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_220F77F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_220F7BDA4();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_220F77FE8(uint64_t a1)
{
  v2 = sub_220F7BDA4();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t WeatherMapOverlayTileColorFormat.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  v3 = MEMORY[0x277D837D0];
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = v3;
  *(inited + 48) = 0x6C61637379617267;
  *(inited + 56) = 0xEB00000000327665;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F538, &qword_220FD7640);
  a1[4] = sub_220F78140();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

unint64_t sub_220F78140()
{
  result = qword_2812C5F88;
  if (!qword_2812C5F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F538, &qword_220FD7640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5F88);
  }

  return result;
}

unint64_t sub_220F781A4()
{
  result = qword_27CF9F540;
  if (!qword_27CF9F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F540);
  }

  return result;
}

uint64_t sub_220F78214(uint64_t a1)
{
  sub_220F7BD50();

  return sub_220FC1290();
}

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayTileColorFormat(_BYTE *result, int a2, int a3)
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

uint64_t sub_220F78310(uint64_t a1, uint64_t a2, __int128 *a3, double a4, double a5, double a6, double a7)
{
  sub_220FC1570();

  v13 = sub_220FC13B0();
  sub_220FC1490();

  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  *(v14 + 32) = a6;
  *(v14 + 40) = a7;
  *(v14 + 48) = a1;
  *(v14 + 56) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_220F7BAA8;
  *(v15 + 24) = v14;
  sub_220EA10E4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F548, &qword_220FD78C0);
  v16 = sub_220FC14B0();

  return v16;
}

uint64_t sub_220F784E4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v6 = sub_220FC17A0();
  __swift_project_value_buffer(v6, qword_2812C5EB0);
  v7 = sub_220FC1780();
  v8 = sub_220FC2E30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_220E15000, v7, v8, "Receiving metadata request", v9, 2u);
    MEMORY[0x223D9DDF0](v9, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  v11[0] = v3;
  v11[1] = v4;
  v12 = v5;
  return sub_220E61418(v11);
}

uint64_t sub_220F78600@<X0>(char *__src@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[24])
  {
    memcpy(v11, __src + 120, 0x48uLL);
    v11[9] = __dst[24];
    v12 = *(__src + 200);
    v13 = *(__src + 27);
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    v6 = __swift_project_boxed_opaque_existential_1(a2 + 12, a2[15]);
    v7 = *(*v6 + 160);
    v8 = *(*v6 + 168);

    sub_220F5377C(v11, v7, v8);
  }

  memcpy(a3, __dst, 0x158uLL);
  return sub_220E62C10(__dst, v10);
}

uint64_t sub_220F786E8(void *a1, void *a2, uint64_t a3, unint64_t a4, double a5, double a6, double a7, double a8)
{
  __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  v53 = a1;
  sub_220E632B0(a1);
  v10 = v9;
  v11 = *(v9 + 16);
  if (!v11)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070, &unk_220FC9CD0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220FC8E30;
    v12 = __swift_project_boxed_opaque_existential_1(a2 + 12, a2[15]);
    v14 = *(*v12 + 160);
    v13 = *(*v12 + 168);
    *(v10 + 32) = v14;
    *(v10 + 40) = v13;

    v11 = 1;
  }

  v60 = MEMORY[0x277D84F90];
  sub_220F0B488(0, v11, 0);
  v15 = v60;
  v16 = (v10 + 40);
  do
  {
    v17 = *(v16 - 1);
    v18 = *v16;

    v19 = sub_220F78BCC(v17, v18, v53, a3, a4);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v27 = *(v60 + 16);
    v26 = *(v60 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_220F0B488((v26 > 1), v27 + 1, 1);
    }

    *(v60 + 16) = v27 + 1;
    v28 = (v60 + 32 * v27);
    v28[4] = v19;
    v28[5] = v21;
    v28[6] = v23;
    v28[7] = v25;
    v16 += 2;
    --v11;
  }

  while (v11);

  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v29 = sub_220FC17A0();
  __swift_project_value_buffer(v29, qword_2812C5EB0);

  sub_220EA10E4(a3, a4);
  v30 = sub_220FC1780();
  v31 = sub_220FC2E30();

  sub_220E5E3D0(a3, a4);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v63 = v33;
    *v32 = 136381187;
    type metadata accessor for MKMapRect(0);
    sub_220F7BAD4(&qword_2812C5B10, type metadata accessor for MKMapRect, &protocol conformance descriptor for MKMapRect);
    v34 = sub_220FC38F0();
    v36 = sub_220E20FF8(v34, v35, &v63);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    v37 = *(v60 + 16);
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v52 = v33;
      v54 = v31;
      v56 = v30;
      v59 = MEMORY[0x277D84F90];
      sub_220F0B298(0, v37, 0);
      v38 = v59;
      v39 = v60 + 56;
      do
      {
        v40 = *(v39 - 8);
        v61 = *(v39 - 24);
        v62 = *(v39 - 16);
        swift_bridgeObjectRetain_n();

        sub_220F9DA88(v40);

        v42 = *(v59 + 16);
        v41 = *(v59 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_220F0B298((v41 > 1), v42 + 1, 1);
        }

        *(v59 + 16) = v42 + 1;
        v43 = v59 + 16 * v42;
        *(v43 + 32) = v61;
        *(v43 + 40) = v62;
        v39 += 32;
        --v37;
      }

      while (v37);
      v30 = v56;
      v31 = v54;
      v33 = v52;
    }

    v44 = MEMORY[0x223D9BED0](v38, MEMORY[0x277D837D0]);
    v46 = v45;

    v47 = sub_220E20FF8(v44, v46, &v63);

    *(v32 + 14) = v47;
    *(v32 + 22) = 2080;
    sub_220EA10E4(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8, &qword_220FD0080);
    v48 = sub_220FC2750();
    v50 = sub_220E20FF8(v48, v49, &v63);

    *(v32 + 24) = v50;
    _os_log_impl(&dword_220E15000, v30, v31, "Got metadata for rect=%{private}s, regions=%{public}s, selectedCountryCode=%s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v33, -1, -1);
    MEMORY[0x223D9DDF0](v32, -1, -1);
  }

  return v15;
}

uint64_t sub_220F78BCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v263 = a3;
  v9 = sub_220FC0EA0();
  v260 = *(v9 - 8);
  v261 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v259 = &v232 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v12 = sub_220FC17A0();
  v13 = __swift_project_value_buffer(v12, qword_2812C5EB0);

  sub_220EA10E4(a4, a5);
  v272 = v13;
  v14 = sub_220FC1780();
  v15 = sub_220FC2E30();

  sub_220E5E3D0(a4, a5);
  v16 = os_log_type_enabled(v14, v15);
  v267 = a4;
  v268 = a5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v274[0] = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_220E20FF8(a1, a2, v274);
    *(v17 + 12) = 2082;
    *&v280[0] = a4;
    *(&v280[0] + 1) = a5;
    sub_220EA10E4(a4, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8, &qword_220FD0080);
    v19 = sub_220FC2750();
    v21 = sub_220E20FF8(v19, v20, v274);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_220E15000, v14, v15, "Compose overlays. intersectingRegionIdentifier=%{public}s, selectedCountryCode=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v18, -1, -1);
    MEMORY[0x223D9DDF0](v17, -1, -1);
  }

  v22 = v263;
  v236 = *(v263 + 8);
  v24 = *(v263 + 24);
  v23 = *(v263 + 32);
  v25 = *(v263 + 40);
  v249 = *(v263 + 48);
  v27 = *(v263 + 56);
  v26 = *(v263 + 64);
  v253 = v25;
  v254 = v27;
  *&v255 = v26;
  v250 = *(v263 + 72);
  v251 = *(v263 + 80);
  v252 = *(v263 + 96);
  v248 = *(v263 + 104);
  v29 = *(v263 + 112);
  v28 = *(v263 + 120);
  v30 = *(v263 + 136);
  v238 = *(v263 + 128);
  v242 = v28;
  v243 = v30;
  v31 = *(v263 + 144);
  v239 = *(v263 + 152);
  v240 = *(v263 + 160);
  v241 = *(v263 + 176);
  v237 = *(v263 + 184);
  v32 = *(v263 + 192);
  *&v265 = *(v263 + 200);
  v33 = *(v263 + 216);
  v245 = *(v263 + 208);
  v246 = v31;
  v244 = v33;
  v257 = *(v263 + 224);
  v34 = *(v263 + 248);
  v258 = *(v263 + 240);
  v256 = v34;
  v266 = *(v263 + 256);
  memcpy(__dst, (v263 + 264), sizeof(__dst));
  v270 = a1;
  v271 = a2;
  *&v264 = v32;
  if (!v24)
  {
    v46 = sub_220FC1780();
    v47 = sub_220FC2E30();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_220E15000, v46, v47, "No airQuality overlay in metadata", v48, 2u);
      MEMORY[0x223D9DDF0](v48, -1, -1);
    }

    v42 = 0;
    v273 = MEMORY[0x277D84F90];
    if (!v29)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if (v268 >= 2)
  {
    a1 = v267;
    a2 = v268;
  }

  v35 = sub_220FC1780();
  v36 = sub_220FC2E30();

  v37 = os_log_type_enabled(v35, v36);
  v247 = v29;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v280[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_220E20FF8(a1, a2, v280);
    _os_log_impl(&dword_220E15000, v35, v36, "AirQuality overlay present in metadata. airQualityRegionIdentifier=%{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x223D9DDF0](v39, -1, -1);
    MEMORY[0x223D9DDF0](v38, -1, -1);
  }

  *&v280[0] = a1;
  *(&v280[0] + 1) = a2;
  MEMORY[0x28223BE20](v40, v41);
  *(&v232 - 2) = v280;
  v42 = 0;
  if (sub_220F77A20(sub_220F7BDF8, (&v232 - 4), v23))
  {
    v282[0] = v24;
    if (*(v24 + 16))
    {
      v43 = sub_220F19120(a1, a2);
      if (v44)
      {
        v269 = 0;
        v45 = (*(v24 + 56) + 96 * v43);
        goto LABEL_21;
      }
    }

    v49 = __swift_project_boxed_opaque_existential_1((v262.i64[0] + 96), *(v262.i64[0] + 120));
    if (*(v24 + 16))
    {
      v50 = *(*v49 + 160);
      v51 = *(*v49 + 168);

      v52 = sub_220F19120(v50, v51);
      v54 = v53;

      if (v54)
      {
        v269 = 0;
        v45 = (*(v24 + 56) + 96 * v52);
LABEL_21:
        memcpy(v274, v45, 0x60uLL);
        memcpy(v280, v45, 0x60uLL);
        v55 = v274[10];
        v56 = v274[11];
        LODWORD(v235) = LOBYTE(v274[9]);
        v233 = v274[7];
        v234 = v274[8];
        v57 = v274[5];
        v58 = v274[6];
        v59 = BYTE1(v274[4]);
        v60 = v274[4];
        v61 = v274[2];
        v62 = v274[3];
        v63 = v274[1];
        v273 = v274[0];
        sub_220E31B58(v274, v278);
        memcpy(v279, v280, sizeof(v279));
        v278[0] = v273;
        v278[1] = v63;
        v278[2] = v61;
        v278[3] = v62;
        LOBYTE(v278[4]) = v60;
        BYTE1(v278[4]) = v59;
        v278[5] = v57;
        v278[6] = v58;
        v278[7] = v233;
        v278[8] = v234;
        LOBYTE(v278[9]) = v235;
        v278[10] = v55;
        v278[11] = v56;
        sub_220ED6038(v279, v280, &qword_27CF9EF78, &unk_220FD4660);
        sub_220ED6038(v282, v280, &qword_27CF9F568, &qword_220FD78F0);

        v64 = sub_220FC1780();
        v65 = sub_220FC2E30();
        sub_220E31784(v278);
        sub_220E3B2DC(v282, &qword_27CF9F568, &qword_220FD78F0);

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v280[0] = v67;
          *v66 = 136446466;

          v68 = sub_220E20FF8(v273, v63, v280);

          *(v66 + 4) = v68;
          *(v66 + 12) = 2082;
          v69 = MEMORY[0x223D9BED0](v23, MEMORY[0x277D837D0]);
          v71 = sub_220E20FF8(v69, v70, v280);

          *(v66 + 14) = v71;
          _os_log_impl(&dword_220E15000, v64, v65, "Append airQuality overlay. scale=%{public}s, supportedRegions=%{public}s", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D9DDF0](v67, -1, -1);
          MEMORY[0x223D9DDF0](v66, -1, -1);
        }

        a1 = v270;
        a2 = v271;
        v42 = v269;
        v29 = v247;
        sub_220F37CA4();
        v74 = *(v72 + 16);
        v73 = *(v72 + 24);
        v273 = v72;
        if (v74 >= v73 >> 1)
        {
          sub_220F37CA4();
          v273 = v229;
        }

        v277 = 1;
        memcpy(v274 + 7, v278, 0x60uLL);
        v280[0] = vextq_s8(v236, v236, 8uLL);
        *&v280[1] = 0;
        BYTE8(v280[1]) = 1;
        memcpy(&v280[1] + 9, v274, 0x67uLL);
        sub_220F3D824(v280);
        v75 = v273;
        *(v273 + 16) = v74 + 1;
        memcpy((v75 + 184 * v74 + 32), v280, 0xB8uLL);
        if (!v29)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }
    }
  }

  sub_220F77328(v24);
  v78 = v77;

  v79 = sub_220FC1780();
  v80 = sub_220FC2E30();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v273 = swift_slowAlloc();
    *&v280[0] = v273;
    *v81 = 136446466;
    v82 = MEMORY[0x277D837D0];
    v83 = MEMORY[0x223D9BED0](v23, MEMORY[0x277D837D0]);
    v85 = sub_220E20FF8(v83, v84, v280);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2082;
    v86 = MEMORY[0x223D9BED0](v78, v82);
    v88 = v87;

    v89 = sub_220E20FF8(v86, v88, v280);

    *(v81 + 14) = v89;
    _os_log_impl(&dword_220E15000, v79, v80, "AirQuality does not match requested region identfier. supportedRegions=%{public}s, scaleIdentifiers=%{public}s", v81, 0x16u);
    v90 = v273;
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v90, -1, -1);
    MEMORY[0x223D9DDF0](v81, -1, -1);
  }

  else
  {
  }

  v273 = MEMORY[0x277D84F90];
  a1 = v270;
  a2 = v271;
  v29 = v247;
  if (!v247)
  {
LABEL_26:
    v76 = 0;
LABEL_45:

    v121 = sub_220FC1780();
    v122 = sub_220FC2E30();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *&v280[0] = v124;
      *v123 = 136446210;
      v274[0] = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F130, &unk_220FD78E0);
      v125 = sub_220FC2750();
      v127 = sub_220E20FF8(v125, v126, v280);

      *(v123 + 4) = v127;
      a1 = v270;
      _os_log_impl(&dword_220E15000, v121, v122, "No matching precipitation forecast overlay in metadata. scaleIdentifiers=%{public}s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v124);
      MEMORY[0x223D9DDF0](v124, -1, -1);
      MEMORY[0x223D9DDF0](v123, -1, -1);
    }

    else
    {
    }

    v115 = v265;
    goto LABEL_49;
  }

LABEL_31:
  if (*(v29 + 16) && (v91 = sub_220F19120(a1, a2), (v92 & 1) != 0))
  {
    v269 = v42;
    v93 = (*(v29 + 56) + 96 * v91);
  }

  else
  {
    v94 = __swift_project_boxed_opaque_existential_1((v262.i64[0] + 96), *(v262.i64[0] + 120));
    if (!*(v29 + 16) || (v95 = *(*v94 + 160), v96 = *(*v94 + 168), , v97 = sub_220F19120(v95, v96), v99 = v98, , (v99 & 1) == 0))
    {
      sub_220F77328(v29);
      v76 = v120;
      goto LABEL_45;
    }

    v269 = v42;
    v93 = (*(v29 + 56) + 96 * v97);
  }

  memcpy(v279, v93, sizeof(v279));
  memcpy(v280, v93, 0x60uLL);
  v100 = v279[10];
  v101 = v279[11];
  v236.i32[0] = LOBYTE(v279[9]);
  v235 = v279[8];
  v102 = v279[7];
  v103 = v279[5];
  v104 = v279[6];
  v105 = BYTE1(v279[4]);
  v106 = v279[4];
  v107 = v279[2];
  v108 = v279[3];
  v247 = v279[0];
  v109 = v279[1];
  sub_220E31B58(v279, v278);
  memcpy(v274, v280, 0x60uLL);
  v279[0] = v247;
  v279[1] = v109;
  v279[2] = v107;
  v279[3] = v108;
  LOBYTE(v279[4]) = v106;
  BYTE1(v279[4]) = v105;
  v279[5] = v103;
  v279[6] = v104;
  v279[7] = v102;
  v279[8] = v235;
  LOBYTE(v279[9]) = v236.i8[0];
  v279[10] = v100;
  v279[11] = v101;
  sub_220ED6038(v274, v280, &qword_27CF9EF78, &unk_220FD4660);
  v110 = sub_220FC1780();
  v111 = sub_220FC2E30();
  sub_220E31784(v279);
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *&v280[0] = v113;
    *v112 = 136446210;

    v114 = sub_220E20FF8(v247, v109, v280);

    *(v112 + 4) = v114;
    _os_log_impl(&dword_220E15000, v110, v111, "Append precipitation forecast overlay. scale=%{public}s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x223D9DDF0](v113, -1, -1);
    MEMORY[0x223D9DDF0](v112, -1, -1);
  }

  a1 = v270;
  a2 = v271;
  v42 = v269;
  v115 = v265;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220F37CA4();
    v273 = v227;
  }

  v116 = *(v273 + 16);
  if (v116 >= *(v273 + 24) >> 1)
  {
    sub_220F37CA4();
    v273 = v228;
  }

  v277 = v248 & 1;
  memcpy(&v275[7], v279, 0x60uLL);
  LOBYTE(v278[0]) = v250 & 1;
  *&v280[0] = v253;
  *(v280 + 1) = v249;
  *(&v280[1] + 8) = vextq_s8(v251, v251, 8uLL);
  *&v280[1] = v254;
  *(&v280[2] + 1) = v252;
  LOBYTE(v280[3]) = v248 & 1;
  memcpy(&v280[3] + 1, v275, 0x67uLL);
  *(&v280[9] + 1) = v255;
  LOBYTE(v280[10]) = v250 & 1;
  sub_220F3D810(v280);
  v117 = v273;
  *(v273 + 16) = v116 + 1;
  v118 = memcpy((v117 + 184 * v116 + 32), v280, 0xB8uLL);
LABEL_49:
  v128 = v264;
  if (v264)
  {
    *&v280[0] = a1;
    *(&v280[0] + 1) = a2;
    MEMORY[0x28223BE20](v118, v119);
    *(&v232 - 2) = v280;
    if (sub_220F77A20(sub_220F7BCEC, (&v232 - 4), v115))
    {
      if (*(v128 + 16))
      {
        v129 = sub_220F19120(a1, a2);
        if (v130)
        {
          v269 = v42;
          v131 = (*(v128 + 56) + 96 * v129);
          goto LABEL_58;
        }
      }

      v133 = __swift_project_boxed_opaque_existential_1((v262.i64[0] + 96), *(v262.i64[0] + 120));
      if (*(v128 + 16))
      {
        v134 = *(*v133 + 160);
        v135 = *(*v133 + 168);

        v136 = sub_220F19120(v134, v135);
        v137 = v128;
        v139 = v138;

        if (v139)
        {
          v269 = v42;
          v131 = (*(v137 + 56) + 96 * v136);
LABEL_58:
          memcpy(v279, v131, sizeof(v279));
          memcpy(v280, v131, 0x60uLL);
          v140 = v279[10];
          v141 = v279[11];
          LODWORD(v264) = LOBYTE(v279[9]);
          v262.i64[0] = v279[8];
          v142 = v279[7];
          v143 = v279[5];
          v144 = v279[6];
          v145 = BYTE1(v279[4]);
          v146 = v279[4];
          v147 = v279[2];
          v148 = v279[3];
          *&v265 = v279[0];
          v149 = v279[1];
          sub_220E31B58(v279, v278);
          memcpy(v274, v280, 0x60uLL);
          v279[0] = v265;
          v279[1] = v149;
          v279[2] = v147;
          v279[3] = v148;
          LOBYTE(v279[4]) = v146;
          BYTE1(v279[4]) = v145;
          v279[5] = v143;
          v279[6] = v144;
          v279[7] = v142;
          v279[8] = v262.i64[0];
          LOBYTE(v279[9]) = v264;
          v279[10] = v140;
          v279[11] = v141;
          sub_220ED6038(v274, v280, &qword_27CF9EF78, &unk_220FD4660);
          v150 = sub_220FC1780();
          v151 = sub_220FC2E30();
          sub_220E31784(v279);
          if (os_log_type_enabled(v150, v151))
          {
            v152 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            *&v280[0] = v153;
            *v152 = 136446210;

            v154 = sub_220E20FF8(v265, v149, v280);

            *(v152 + 4) = v154;
            _os_log_impl(&dword_220E15000, v150, v151, "Append precipitation radar overlay. scale=%{public}s", v152, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v153);
            MEMORY[0x223D9DDF0](v153, -1, -1);
            MEMORY[0x223D9DDF0](v152, -1, -1);
          }

          v155 = v266;
          v156 = v244;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_220F37CA4();
            v273 = v230;
          }

          v157 = *(v273 + 16);
          if (v157 >= *(v273 + 24) >> 1)
          {
            sub_220F37CA4();
            v273 = v231;
          }

          v277 = v237 & 1;
          memcpy(&v276[7], v279, 0x60uLL);
          LOBYTE(v278[0]) = v239 & 1;
          *&v280[0] = v242;
          *(v280 + 1) = v238;
          *(&v280[1] + 8) = vextq_s8(v240, v240, 8uLL);
          *&v280[1] = v243;
          *(&v280[2] + 1) = v241;
          LOBYTE(v280[3]) = v237 & 1;
          memcpy(&v280[3] + 1, v276, 0x67uLL);
          *(&v280[9] + 1) = v246;
          LOBYTE(v280[10]) = v239 & 1;
          *(&v280[10] + 1) = v245;
          *&v280[11] = v156;
          sub_220E21C3C(v280);
          v158 = v273;
          *(v273 + 16) = v157 + 1;
          memcpy((v158 + 184 * v157 + 32), v280, 0xB8uLL);
          if (!v155)
          {
            goto LABEL_65;
          }

          goto LABEL_74;
        }

        v128 = v137;
      }
    }

    sub_220F77328(v128);
    v132 = v166;
  }

  else
  {
    v115 = 0;
    v132 = 0;
  }

  v167 = sub_220FC1780();
  v168 = sub_220FC2E30();

  v169 = os_log_type_enabled(v167, v168);
  v269 = v42;
  if (v169)
  {
    v170 = swift_slowAlloc();
    v171 = v115;
    v172 = swift_slowAlloc();
    *&v280[0] = v172;
    *v170 = 136446466;
    v274[0] = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F130, &unk_220FD78E0);
    v173 = sub_220FC2750();
    v175 = sub_220E20FF8(v173, v174, v280);

    *(v170 + 4) = v175;
    *(v170 + 12) = 2082;
    v274[0] = v171;

    v176 = sub_220FC2750();
    v178 = sub_220E20FF8(v176, v177, v280);

    *(v170 + 14) = v178;
    _os_log_impl(&dword_220E15000, v167, v168, "No matching precipitation radar overlay in metadata. scaleIdentifiers=%{public}s, supportedRegions=%{public}s", v170, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v172, -1, -1);
    MEMORY[0x223D9DDF0](v170, -1, -1);
  }

  else
  {
  }

  v155 = v266;
  if (!v266)
  {
LABEL_65:
    v159 = sub_220FC1780();
    v160 = sub_220FC2E30();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *&v280[0] = v162;
      *v161 = 136446210;
      v274[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F560, &qword_220FD78D8);
      v163 = sub_220FC2750();
      v165 = sub_220E20FF8(v163, v164, v280);

      *(v161 + 4) = v165;
      _os_log_impl(&dword_220E15000, v159, v160, "No matching temperature overlay in metadata. scaleIdentifiers=%{public}s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v162);
      MEMORY[0x223D9DDF0](v162, -1, -1);
      MEMORY[0x223D9DDF0](v161, -1, -1);
    }

    goto LABEL_93;
  }

LABEL_74:

  v179 = sub_220FC1780();
  v180 = sub_220FC2E30();
  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    *v181 = 0;
    _os_log_impl(&dword_220E15000, v179, v180, "Append temperature overlay.", v181, 2u);
    MEMORY[0x223D9DDF0](v181, -1, -1);
  }

  v182 = *(v155 + 16);
  v183 = 0uLL;
  v264 = 0u;
  v265 = xmmword_220FC8E20;
  if (!v182)
  {
    v188 = 0;
    v186 = 0;
    v262.i32[0] = 0;
    v187 = MEMORY[0x277D84F90];
    v189 = 2;
    v191 = 0xE800000000000000;
    goto LABEL_87;
  }

  v184 = sub_220F191E0(0);
  if ((v185 & 1) == 0)
  {

    if (!*(v155 + 16))
    {
      goto LABEL_85;
    }

    v192 = sub_220F191E0(1);
    if (v193)
    {
LABEL_84:
      memcpy(v280, (*(v155 + 56) + 96 * v192), 0x60uLL);
      v262.i32[0] = BYTE8(v280[4]);
      v186 = *&v280[4];
      v187 = *(&v280[3] + 1);
      v264 = *(&v280[2] + 8);
      v265 = v280[5];
      v188 = BYTE1(v280[2]);
      v189 = v280[2];
      v255 = v280[1];
      v191 = *(&v280[0] + 1);
      v190 = *&v280[0];
      sub_220E31B58(v280, v274);
      goto LABEL_88;
    }

    if (*(v155 + 16))
    {
      v189 = 2;
      v192 = sub_220F191E0(2);
      if (v194)
      {
        goto LABEL_84;
      }

      v188 = 0;
      v186 = 0;
      v262.i32[0] = 0;
      v187 = MEMORY[0x277D84F90];
    }

    else
    {
LABEL_85:
      v188 = 0;
      v186 = 0;
      v262.i32[0] = 0;
      v187 = MEMORY[0x277D84F90];
      v189 = 2;
    }

    v191 = 0xE800000000000000;
    v183 = 0uLL;
LABEL_87:
    v255 = v183;
    v190 = 0x6576697463616E69;
    goto LABEL_88;
  }

  memcpy(v280, (*(v155 + 56) + 96 * v184), 0x60uLL);
  sub_220E31B58(v280, v274);

  v262.i32[0] = BYTE8(v280[4]);
  v186 = *&v280[4];
  v187 = *(&v280[3] + 1);
  v264 = *(&v280[2] + 8);
  v265 = v280[5];
  v188 = BYTE1(v280[2]);
  v189 = v280[2];
  v255 = v280[1];
  v191 = *(&v280[0] + 1);
  v190 = *&v280[0];
LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220F37CA4();
    v273 = v223;
  }

  v195 = *(v273 + 16);
  if (v195 >= *(v273 + 24) >> 1)
  {
    sub_220F37CA4();
    v273 = v224;
  }

  LOBYTE(v274[0]) = v256 & 1;
  v280[0] = vextq_s8(v257, v257, 8uLL);
  *&v280[1] = v258;
  BYTE8(v280[1]) = v256 & 1;
  *&v280[2] = v190;
  *(&v280[2] + 1) = v191;
  v280[3] = v255;
  LOBYTE(v280[4]) = v189;
  BYTE1(v280[4]) = v188;
  *(&v280[4] + 8) = v264;
  *(&v280[5] + 1) = v187;
  *&v280[6] = v186;
  BYTE8(v280[6]) = v262.i8[0];
  v280[7] = v265;
  *&v280[8] = v266;
  sub_220F3D7FC(v280);
  v196 = v273;
  *(v273 + 16) = v195 + 1;
  memcpy((v196 + 184 * v195 + 32), v280, 0xB8uLL);
LABEL_93:
  memcpy(v279, __dst, 0x50uLL);
  v197 = v279[9];
  if (v279[9])
  {
    *&v265 = v279[0];
    v258 = v279[1];
    v266 = v279[2];
    v272 = v279[3];
    v257.i32[0] = LOBYTE(v279[4]);
    v262 = *&v279[5];
    *&v264 = v279[7];
    LODWORD(v256) = LOBYTE(v279[8]);
    v199 = v259;
    v198 = v260;
    v200 = v261;
    (*(v260 + 104))(v259, *MEMORY[0x277D7AAB0], v261);
    if (*(v197 + 16))
    {
      sub_220ED6038(v279, v280, &qword_27CF9F558, &qword_220FD78D0);

      v201 = sub_220F1914C();
      if (v202)
      {
        memcpy(v280, (*(v197 + 56) + 96 * v201), 0x60uLL);
        sub_220E31B58(v280, v274);
        (*(v198 + 8))(v199, v200);
        sub_220E3B2DC(v279, &qword_27CF9F558, &qword_220FD78D0);
        v203 = *(&v280[5] + 1);
        v204 = *&v280[5];
        LODWORD(v261) = BYTE8(v280[4]);
        v259 = *(&v280[2] + 1);
        v260 = *&v280[4];
        v254 = *(&v280[3] + 1);
        *&v255 = *&v280[3];
        LODWORD(v253) = BYTE1(v280[2]);
        v205 = v280[2];
        v207 = *(&v280[1] + 1);
        v206 = *&v280[1];
        v208 = *(&v280[0] + 1);
        v209 = *&v280[0];
LABEL_103:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_220F37CA4();
          v273 = v225;
        }

        v217 = *(v273 + 16);
        if (v217 >= *(v273 + 24) >> 1)
        {
          sub_220F37CA4();
          v273 = v226;
        }

        LOBYTE(v278[0]) = v256 & 1;
        LOBYTE(v274[0]) = v257.i8[0] & 1;
        *&v280[0] = v265;
        *(v280 + 1) = v258;
        *(&v280[1] + 8) = vextq_s8(v262, v262, 8uLL);
        *&v280[1] = v266;
        *(&v280[2] + 1) = v264;
        LOBYTE(v280[3]) = v256 & 1;
        *(&v280[3] + 1) = v209;
        *&v280[4] = v208;
        *(&v280[4] + 1) = v206;
        *&v280[5] = v207;
        BYTE8(v280[5]) = v205;
        BYTE9(v280[5]) = v253;
        *&v280[6] = v259;
        *(&v280[6] + 1) = v255;
        *&v280[7] = v254;
        *(&v280[7] + 1) = v260;
        LOBYTE(v280[8]) = v261;
        *(&v280[8] + 1) = v204;
        *&v280[9] = v203;
        *(&v280[9] + 1) = v272;
        LOBYTE(v280[10]) = v257.i8[0] & 1;
        *(&v280[10] + 1) = v197;
        sub_220F3D6EC(v280);
        v218 = v273;
        *(v273 + 16) = v217 + 1;
        memcpy((v218 + 184 * v217 + 32), v280, 0xB8uLL);
        goto LABEL_108;
      }

      sub_220E3B2DC(v279, &qword_27CF9F558, &qword_220FD78D0);
    }

    else
    {
    }

    (*(v198 + 8))(v199, v200);
    v206 = 0;
    v207 = 0;
    LODWORD(v253) = 0;
    v259 = 0;
    v260 = 0;
    *&v255 = 0;
    LODWORD(v261) = 0;
    v203 = 1.0;
    v204 = 0;
    v254 = MEMORY[0x277D84F90];
    v205 = 2;
    v208 = 0xE800000000000000;
    v209 = 0x6576697463616E69;
    goto LABEL_103;
  }

  v210 = sub_220FC1780();
  v211 = sub_220FC2E30();
  if (os_log_type_enabled(v210, v211))
  {
    v212 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    *&v280[0] = v213;
    *v212 = 136446210;
    v274[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F550, &qword_220FD78C8);
    v214 = sub_220FC2750();
    v216 = sub_220E20FF8(v214, v215, v280);

    *(v212 + 4) = v216;
    _os_log_impl(&dword_220E15000, v210, v211, "No matching wind overlay in metadata. scaleIdentifiers=%{public}s", v212, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v213);
    MEMORY[0x223D9DDF0](v213, -1, -1);
    MEMORY[0x223D9DDF0](v212, -1, -1);
  }

LABEL_108:
  v219 = v270;
  if (v268 == 1 || (v220 = sub_220FC0C30(), !v221))
  {
  }

  else
  {
    v219 = v220;
  }

  sub_220F7764C(*v22);
  return v219;
}

void sub_220F7A7CC(void *__src@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(_BYTE *, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = a3(__dst, a2);
  v8 = sub_220F77C58(v7);

  *a4 = v8;
}

double sub_220F7A850(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  sub_220F784E4(&v3);

  return result;
}

void *sub_220F7A894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = *a7;
  v14 = a7[1];
  v15 = *(a7 + 16);
  result = __swift_project_boxed_opaque_existential_1((v7 + 176), *(v7 + 200));
  if ((a4 | a3 | a5) < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_220F7A988(a6);
    v21[0] = v13;
    v21[1] = v14;
    v22 = v15;
    sub_220E89220(a3, a4, a5, a1, a2, v17, v21);
    v19 = v18;

    type metadata accessor for WeatherMapOverlayFrameBasedTaskDataProvider();
    swift_allocObject();
    return sub_220F916A8(v19);
  }

  return result;
}

uint64_t sub_220F7A988(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_220F0B468(0, v2, 0);
    result = v12;
    v4 = *(v12 + 16);
    v5 = 16 * v4;
    v6 = (a1 + 40);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v6 - 1);
      }

      else
      {
        v8 = *(v6 - 1) & 1;
      }

      v13 = result;
      v9 = *(result + 24);
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        sub_220F0B468((v9 > 1), v4 + 1, 1);
        result = v13;
      }

      *(result + 16) = v10;
      v11 = result + v5;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 16;
      v6 += 16;
      v4 = v10;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *sub_220F7AAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  result = OUTLINED_FUNCTION_27_13();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_220F7A988(a4);
    v10 = OUTLINED_FUNCTION_13_23();
    v11 = a6(v10);

    type metadata accessor for WeatherMapOverlayFrameBasedTaskDataProvider();
    swift_allocObject();
    return sub_220F916A8(v11);
  }

  return result;
}

void *sub_220F7ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  result = OUTLINED_FUNCTION_27_13();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_220F7A988(a4);
    v10 = OUTLINED_FUNCTION_13_23();
    v11 = a6(v10);

    type metadata accessor for WeatherMapOverlayFrameBasedTaskDataProvider();
    swift_allocObject();
    return sub_220F916A8(v11);
  }

  return result;
}

uint64_t sub_220F7AC60@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v175 = a2;
  v181 = a3;
  memcpy(v189, __src, sizeof(v189));
  v182 = type metadata accessor for WeatherMapOverlayTimeConstraints(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3_3();
  v167 = v6;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_8_22();
  v174 = v9;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_8_22();
  v166 = v12;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_8_22();
  v173 = v15;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_8_22();
  v165 = v18;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v19, v20);
  v172 = &v161 - v21;
  sub_220FC0E70();
  OUTLINED_FUNCTION_6();
  v170 = v23;
  v171 = v22;
  MEMORY[0x28223BE20](v22, v24);
  sub_220FC0CA0();
  OUTLINED_FUNCTION_6();
  v168 = v26;
  v169 = v25;
  MEMORY[0x28223BE20](v25, v27);
  v180 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v29 = v28;
  MEMORY[0x28223BE20](v30, v31);
  OUTLINED_FUNCTION_3_3();
  v164 = v32;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_8_22();
  v178 = v35;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_8_22();
  v39 = v38;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v40, v41);
  OUTLINED_FUNCTION_8_22();
  v163 = v42;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v43, v44);
  OUTLINED_FUNCTION_8_22();
  v177 = v45;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v46, v47);
  OUTLINED_FUNCTION_8_22();
  v49 = v48;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v50, v51);
  OUTLINED_FUNCTION_8_22();
  v162 = v52;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v161 - v55;
  MEMORY[0x28223BE20](v57, v58);
  OUTLINED_FUNCTION_8_22();
  v176 = v59;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v60, v61);
  v63 = &v161 - v62;
  v179 = __src;
  memcpy(v188, __src, sizeof(v188));
  v64 = sub_220E435CC(v188);
  v65 = sub_220E22B0C(v188);
  switch(v64)
  {
    case 1:
      OUTLINED_FUNCTION_10_27(v65);
      v76 = v49;
      sub_220FC0670();
      if (v64)
      {
        OUTLINED_FUNCTION_8_29();
        sub_220FC0C90();
        v77 = OUTLINED_FUNCTION_26_16();
        v78(v77);
        sub_220FC0E30();
        v79 = OUTLINED_FUNCTION_14_23();
        v80(v79);
      }

      OUTLINED_FUNCTION_24_16();
      sub_220FC01C0();
      sub_220FC0230();
      OUTLINED_FUNCTION_21_14(v113, 300.0);
      sub_220FC0220();
      v114 = OUTLINED_FUNCTION_3_44();
      v115(v114);
      v116 = *(v29 + 16);
      v89 = v173;
      OUTLINED_FUNCTION_18_16();
      v116();
      v117 = OUTLINED_FUNCTION_4_42();
      (v116)(v117);
      OUTLINED_FUNCTION_11_21();
      if (qword_2812C5EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0(&qword_2812C5EA8);
      }

      v118 = sub_220FC17A0();
      v92 = __swift_project_value_buffer(v118, qword_2812C5EB0);
      v93 = v163;
      OUTLINED_FUNCTION_18_16();
      v116();
      v119 = v166;
      sub_220E5ADF8(v89, v166);
      OUTLINED_FUNCTION_28_14(v187);
      v120 = sub_220E22B0C(v187);
      sub_220ED6038(v120, v186, &qword_27CF9E3A0, &unk_220FD0070);
      v121 = sub_220FC1780();
      v122 = sub_220FC2E30();
      v178 = v76;
      v123 = v122;
      sub_220E56918(v64);
      if (os_log_type_enabled(v121, v123))
      {
        swift_slowAlloc();
        v176 = OUTLINED_FUNCTION_33_8();
        v184 = v176;
        OUTLINED_FUNCTION_17_16(4.8754e-34);
        OUTLINED_FUNCTION_28_14(v185);
        v124 = sub_220E22B0C(v185);
        sub_220ED6038(v124, v186, &qword_27CF9E3A0, &unk_220FD0070);
        sub_220E568C4();
        sub_220FC38F0();
        OUTLINED_FUNCTION_12_23();
        OUTLINED_FUNCTION_32_12();
        sub_220E56918(v186);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_23_14();
        OUTLINED_FUNCTION_1_66();
        v127 = sub_220F7BAD4(v125, v126, MEMORY[0x277CC95B8]);
        OUTLINED_FUNCTION_30_11(v127);
        v128 = OUTLINED_FUNCTION_5_33();
        v93(v128);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_20_17();
        OUTLINED_FUNCTION_0_79();
        v131 = sub_220F7BAD4(v129, v130, &unk_220FD2A34);
        OUTLINED_FUNCTION_31_11(v131);
        OUTLINED_FUNCTION_12_23();
        sub_220E83244(v119);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        *(v89 + 24) = v183;
        OUTLINED_FUNCTION_16_16(&dword_220E15000, v132, v133, "Returning time constraints for precipitation radar. metadata=%{public}s, current=%{public}s, timeConstraints=%{public}s");
        OUTLINED_FUNCTION_36_9();
        OUTLINED_FUNCTION_29_12();
        v134 = v89;
        v89 = v173;
        MEMORY[0x223D9DDF0](v134, -1, -1);

        v135 = v177;
        goto LABEL_23;
      }

      sub_220E83244(v119);
      v136 = OUTLINED_FUNCTION_25_17();
      v92(v136);
      v137 = v177;
      goto LABEL_26;
    case 2:
      OUTLINED_FUNCTION_10_27(v65);
      sub_220FC0670();
      if (v64)
      {
        OUTLINED_FUNCTION_8_29();
        sub_220FC0C90();
        v81 = OUTLINED_FUNCTION_26_16();
        v82(v81);
        sub_220FC0E40();
        v83 = OUTLINED_FUNCTION_14_23();
        v84(v83);
      }

      OUTLINED_FUNCTION_24_16();
      sub_220FC01C0();
      sub_220FC0230();
      OUTLINED_FUNCTION_21_14(v138, 3600.0);
      sub_220FC0220();
      v139 = OUTLINED_FUNCTION_3_44();
      v140(v139);
      v141 = *(v29 + 16);
      v89 = v172;
      OUTLINED_FUNCTION_18_16();
      v141();
      v142 = OUTLINED_FUNCTION_4_42();
      (v141)(v142);
      OUTLINED_FUNCTION_11_21();
      if (qword_2812C5EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0(&qword_2812C5EA8);
      }

      v143 = sub_220FC17A0();
      v92 = __swift_project_value_buffer(v143, qword_2812C5EB0);
      v93 = v162;
      OUTLINED_FUNCTION_18_16();
      v141();
      v144 = v165;
      sub_220E5ADF8(v89, v165);
      OUTLINED_FUNCTION_28_14(v187);
      v145 = sub_220E22B0C(v187);
      sub_220E21C98(v145, v186);
      v146 = sub_220FC1780();
      v147 = sub_220FC2E30();
      v178 = v63;
      v148 = v147;
      sub_220E56918(v64);
      if (os_log_type_enabled(v146, v148))
      {
        swift_slowAlloc();
        v177 = OUTLINED_FUNCTION_33_8();
        v184 = v177;
        OUTLINED_FUNCTION_17_16(4.8754e-34);
        OUTLINED_FUNCTION_28_14(v185);
        v149 = sub_220E22B0C(v185);
        sub_220E21C98(v149, v186);
        sub_220E568C4();
        sub_220FC38F0();
        OUTLINED_FUNCTION_12_23();
        OUTLINED_FUNCTION_32_12();
        sub_220E56918(v186);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_23_14();
        OUTLINED_FUNCTION_1_66();
        v152 = sub_220F7BAD4(v150, v151, MEMORY[0x277CC95B8]);
        OUTLINED_FUNCTION_30_11(v152);
        v153 = OUTLINED_FUNCTION_5_33();
        v93(v153);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_20_17();
        OUTLINED_FUNCTION_0_79();
        v156 = sub_220F7BAD4(v154, v155, &unk_220FD2A34);
        OUTLINED_FUNCTION_31_11(v156);
        OUTLINED_FUNCTION_12_23();
        sub_220E83244(v144);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        *(v89 + 24) = v183;
        OUTLINED_FUNCTION_16_16(&dword_220E15000, v157, v158, "Returning time constraints for precipitation forecast. metadata=%{public}s, current=%{public}s, timeConstraints=%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_12();
        v159 = v89;
        v89 = v172;
        MEMORY[0x223D9DDF0](v159, -1, -1);

        v135 = v176;
LABEL_23:
        (v93)(v135, v56);
        v110 = v178;
        goto LABEL_24;
      }

      sub_220E83244(v144);
      v160 = OUTLINED_FUNCTION_25_17();
      v92(v160);
      v137 = v176;
LABEL_26:
      (v92)(v137, v56);
      v112 = v178;
      goto LABEL_27;
    case 4:
      OUTLINED_FUNCTION_10_27(v65);
      sub_220FC0670();
      if (v64)
      {
        OUTLINED_FUNCTION_8_29();
        sub_220FC0C90();
        v72 = OUTLINED_FUNCTION_26_16();
        v73(v72);
        sub_220FC0DD0();
        v74 = OUTLINED_FUNCTION_14_23();
        v75(v74);
      }

      OUTLINED_FUNCTION_24_16();
      sub_220FC01C0();
      sub_220FC0230();
      OUTLINED_FUNCTION_21_14(v85, 3600.0);
      sub_220FC0220();
      v86 = OUTLINED_FUNCTION_3_44();
      v87(v86);
      v88 = *(v29 + 16);
      v89 = v174;
      OUTLINED_FUNCTION_18_16();
      v88();
      v90 = OUTLINED_FUNCTION_4_42();
      (v88)(v90);
      OUTLINED_FUNCTION_11_21();
      if (qword_2812C5EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0(&qword_2812C5EA8);
      }

      v91 = sub_220FC17A0();
      v92 = __swift_project_value_buffer(v91, qword_2812C5EB0);
      v93 = v164;
      OUTLINED_FUNCTION_18_16();
      v88();
      v94 = v167;
      sub_220E5ADF8(v89, v167);
      OUTLINED_FUNCTION_28_14(v187);
      v95 = sub_220E22B0C(v187);
      sub_220ED6038(v95, v186, &qword_27CF9E398, &qword_220FD6EA0);
      v96 = sub_220FC1780();
      v97 = sub_220FC2E30();
      v177 = v39;
      v98 = v97;
      sub_220E56918(v64);
      if (os_log_type_enabled(v96, v98))
      {
        swift_slowAlloc();
        v176 = OUTLINED_FUNCTION_33_8();
        v184 = v176;
        OUTLINED_FUNCTION_17_16(4.8754e-34);
        OUTLINED_FUNCTION_28_14(v185);
        v99 = sub_220E22B0C(v185);
        sub_220ED6038(v99, v186, &qword_27CF9E398, &qword_220FD6EA0);
        sub_220E568C4();
        sub_220FC38F0();
        OUTLINED_FUNCTION_12_23();
        OUTLINED_FUNCTION_32_12();
        sub_220E56918(v186);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_23_14();
        OUTLINED_FUNCTION_1_66();
        v102 = sub_220F7BAD4(v100, v101, MEMORY[0x277CC95B8]);
        OUTLINED_FUNCTION_30_11(v102);
        v103 = OUTLINED_FUNCTION_5_33();
        v93(v103);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_20_17();
        OUTLINED_FUNCTION_0_79();
        v106 = sub_220F7BAD4(v104, v105, &unk_220FD2A34);
        OUTLINED_FUNCTION_31_11(v106);
        OUTLINED_FUNCTION_12_23();
        sub_220E83244(v94);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        *(v89 + 24) = v183;
        OUTLINED_FUNCTION_16_16(&dword_220E15000, v107, v108, "Returning time constraints for animated wind. metadata=%{public}s, current=%{public}s, timeConstraints=%{public}s");
        OUTLINED_FUNCTION_36_9();
        OUTLINED_FUNCTION_29_12();
        v109 = v89;
        v89 = v174;
        MEMORY[0x223D9DDF0](v109, -1, -1);

        (v93)(v178, v56);
        v110 = v177;
LABEL_24:
        (v93)(v110, v56);
      }

      else
      {

        sub_220E83244(v94);
        v111 = OUTLINED_FUNCTION_25_17();
        v92(v111);
        (v92)(v178, v56);
        v112 = v177;
LABEL_27:
        (v92)(v112, v56);
      }

      return sub_220E5AE74(v89, v181);
    default:
      v66 = *(v29 + 16);
      v68 = v180;
      v67 = v181;
      v69 = v175;
      v66(v181, v175, v180);
      v70 = v182;
      result = (v66)(v67 + *(v182 + 20), v69, v68);
      *(v67 + *(v70 + 24)) = 0;
      *(v67 + *(v70 + 28)) = 0;
      return result;
  }
}

uint64_t sub_220F7B998()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  return v0;
}

uint64_t sub_220F7B9E8()
{
  sub_220F7B998();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t sub_220F7BA40()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = v1;
  return sub_220F784E4(&v3);
}

uint64_t sub_220F7BAD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220F7BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  switch(a2)
  {
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    case 6:
      return a4 == 6;
    default:
      if ((a4 - 2) < 5)
      {
        return 0;
      }

      if (a2 != 1)
      {
        if (a4 == 1)
        {
          sub_220EA10E4(a3, 1);
        }

        else
        {
          sub_220EA10E4(a3, a4);
          OUTLINED_FUNCTION_50_0();
          v8 = sub_220FC0C10();
          sub_220E5E3BC(a3, v4);
          if (v8)
          {
            return 1;
          }
        }

        return 0;
      }

      if (a4 != 1)
      {
        return 0;
      }

      sub_220EA10E4(a3, 1);
      return v4;
  }
}

uint64_t sub_220F7BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_220FC3940() & 1;
  }
}

unint64_t sub_220F7BD0C()
{
  result = qword_2812C5B78;
  if (!qword_2812C5B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5B78);
  }

  return result;
}

unint64_t sub_220F7BD50()
{
  result = qword_2812C8448[0];
  if (!qword_2812C8448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C8448);
  }

  return result;
}

unint64_t sub_220F7BDA4()
{
  result = qword_27CF9F570;
  if (!qword_27CF9F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F570);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_6_28()
{

  return sub_220E20FF8(v1, v2, (v0 + 360));
}

void OUTLINED_FUNCTION_16_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void *OUTLINED_FUNCTION_17_16(float a1)
{
  *v2 = a1;

  return memcpy((v1 + 176), v3, 0xB8uLL);
}

double OUTLINED_FUNCTION_22_15()
{

  return result;
}

void *OUTLINED_FUNCTION_28_14(void *a1)
{

  return memcpy(a1, (v1 + 1104), 0xB8uLL);
}

void OUTLINED_FUNCTION_29_12()
{

  JUMPOUT(0x223D9DDF0);
}

uint64_t OUTLINED_FUNCTION_31_11(uint64_t a1)
{

  return sub_220FC38F0();
}

void *OUTLINED_FUNCTION_32_12()
{

  return memcpy((v0 + 552), (v0 + 176), 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_33_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_9()
{

  return swift_arrayDestroy();
}

_BYTE *_s5LayerOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220F7C0BC()
{
  result = qword_27CF9F578;
  if (!qword_27CF9F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F578);
  }

  return result;
}

uint64_t sub_220F7C110()
{
  memcpy(__dst, v0 + 2, sizeof(__dst));
  v1 = sub_220E435CC(__dst);
  sub_220E22B0C(__dst);
  switch(v1)
  {
    case 1:
      if (qword_2812C7508 != -1)
      {
        swift_once();
      }

      sub_220E20F44();

      sub_220E1B804();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F580, &qword_220FD7968);
      sub_220F7C37C();
      break;
    case 2:
    case 3:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F580, &qword_220FD7968);
      sub_220F7C37C();
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F590, &qword_220FD7970);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_220FC8E30;
      *(v2 + 32) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F598, &qword_220FD7978);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_220FC8E30;
      v5 = *v0;
      v4 = v0[1];
      *(v3 + 32) = *v0;
      *(v3 + 40) = v4;
      *(v2 + 40) = v3;
      sub_220EA10E4(v5, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F580, &qword_220FD7968);
      sub_220F7C37C();
      break;
  }

  return sub_220FC2600();
}

unint64_t sub_220F7C37C()
{
  result = qword_27CF9F588;
  if (!qword_27CF9F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F588);
  }

  return result;
}

id sub_220F7C3D0()
{
  result = [*(v0 + OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label) font];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_220F7C424()
{
  v2 = v0;
  v3 = &v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_point];
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_point + 8];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label];

  sub_220FB51B0(v5, v4, v6);
  sub_220F7CDC4(v5, v4, v2);
  v7 = *(v3 + 3);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *(v3 + 2) & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_220E1966C(0, &qword_2812C5B58, 0x277D75348);

    v9 = sub_220FC3220();
    v10 = [v9 accessibilityName];
    v11 = sub_220FC2700();
    v1 = v12;

    sub_220FB516C(v11, v1, v2);
  }

  else
  {
    if ((v3[48] & 1) == 0)
    {
      v13 = *(v3 + 5) * 100.0;
      if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_25;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v13 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v1 = v13;
      if (qword_2812C5B30 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    [v2 setAccessibilityValue_];
  }

  while (1)
  {
    [v2 setShowsLargeContentViewer_];
    sub_220F7CE1C(v5, v4, v2);
    v20 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v2 addInteraction_];

LABEL_14:
    v21 = *&v2[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label];
    [v21 sizeThatFits_];
    v23 = v22;
    v4 = lroundf(v23);
    result = [v21 font];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    [result lineHeight];
    v26 = v25;

    v27 = v26;
    v28 = lroundf(v27);
    if (!v28)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v4 != 0x8000000000000000 || v28 != -1)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_12:
    v14 = qword_2812CE4B0;
    v32 = 0x8000000220FE5250;
    sub_220FBFF80();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0, &unk_220FCA870);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D83B88];
    *(v15 + 16) = xmmword_220FC8E30;
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = v1;
    v18 = sub_220FC26D0();
    v1 = v19;

    sub_220FB516C(v18, v1, v2);
  }

  v30 = v4 / v28;
  [v21 intrinsicContentSize];
  *&v2[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_stepHeight] = v31 * v30;

  return [v2 setNeedsLayout];
}

id sub_220F7C804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_maximumWidth] = 0x405C800000000000;
  *&v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_stepHeight] = 0;
  v8 = &v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_point];
  v8[48] = *(a1 + 48);
  v9 = *(a1 + 32);
  *(v8 + 1) = *(a1 + 16);
  *(v8 + 2) = v9;
  *v8 = *a1;
  *&v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_backgroundEffectManager] = a2;

  *&v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_vibrancyEffectView] = sub_220E3D488(0, 1);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 setIsAccessibilityElement_];
  sub_220F7C93C();

  return v10;
}

id sub_220F7C93C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_vibrancyEffectView];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label];
  sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
  v4 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74418]);
  [v3 setFont_];

  [v3 setAlpha_];
  LODWORD(v4) = DeviceIsSlow();
  v5 = objc_opt_self();
  v6 = &selRef_labelColor;
  if (!v4)
  {
    v6 = &selRef_blackColor;
  }

  v7 = [v5 *v6];
  [v3 setTextColor_];

  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];
  if (DeviceIsSlow())
  {
    [v1 addSubview_];
  }

  else
  {
    v8 = [v2 contentView];
    [v8 addSubview_];
  }

  return sub_220F7C424();
}

void sub_220F7CAF0()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_maximumWidth) = 0x405C800000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_stepHeight) = 0;
  sub_220FC3740();
  __break(1u);
}

id sub_220F7CBB0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_vibrancyEffectView];
  [v0 bounds];
  return [v2 setFrame_];
}

void sub_220F7CDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();
  [a3 setAccessibilityLabel_];
}

void sub_220F7CE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setLargeContentTitle_];
}

id sub_220F7CE80(void **a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = sub_220F44860();
  swift_unknownObjectRelease();
  v4 = *a1;
  [v4 setUsage_];
  if ((v3 - 1) >= 2u)
  {
    v6 = 2;
    [v4 setStorageMode_];
    v5 = 1;
  }

  else
  {
    v5 = 4;
    v6 = 4;
  }

  [v4 setSampleCount_];

  return [v4 setTextureType_];
}

uint64_t sub_220F7CF8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + 16);

  return sub_220E65A70(v3, a1);
}

uint64_t sub_220F7CFEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = a4;
  v78 = a7;
  v75 = a5;
  v76 = a6;
  v13 = a3;
  __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
  v15 = a1;
  sub_220E470E4(a1, v77, (a8 & 0xFFFFFFFFFFLL), &v81, v13, a11);
  if (v82)
  {
    sub_220E1E72C(&v81, v83);
    sub_220E1E2A8(v83, v88);
    sub_220E1E2A8(v11 + 56, v87);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v87, v87[3]);
    v17 = MEMORY[0x28223BE20](v16, v16);
    v19 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v22 = v75;
    swift_unknownObjectRetain();
    sub_220E4E4D8(v15, &v81);
    v23 = sub_220F7D81C(v15, (a8 & 0x8000000000) == 0, v22, v76, v88, v21);
    __swift_destroy_boxed_opaque_existential_0(v87);
    v24 = [objc_opt_self() sharedCaptureManager];
    v25 = v84;
    v26 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (*(v26 + 8))(&v81, v25, v26);
    v27 = *(*__swift_project_boxed_opaque_existential_1(&v81, v82) + 24);
    swift_unknownObjectRetain();
    v28 = [v24 newCaptureScopeWithCommandQueue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(&v81);
    memcpy(v86, v15 + 2, sizeof(v86));
    memcpy(v88, v15 + 2, 0xB8uLL);
    v29 = sub_220E435CC(v88);
    if (v29 == 1)
    {
      sub_220E22B0C(v88);
      if (qword_2812C7508 != -1)
      {
        swift_once();
      }

      v24 = sub_220E1B804();

      if ((v24 & 1) == 0 || (a8 & 0x8000000000) != 0)
      {
        sub_220E1E2A8(v83, v87);
        v51 = type metadata accessor for OverlayTileViewportManager();
        v52 = OUTLINED_FUNCTION_1_67(v51, &off_283483B10);
        v53 = type metadata accessor for OverlayRenderer(v52);
        OUTLINED_FUNCTION_3_5(v53);
        OUTLINED_FUNCTION_2_46();

        swift_unknownObjectRetain();
        v54 = OUTLINED_FUNCTION_0_80();
        v58 = sub_220F5AA64(v54, v55, v56, v57);
        if (!v24)
        {
          v38 = v58;
          v40 = 0x7261646152;
          v39 = 0xE500000000000000;
          goto LABEL_34;
        }
      }

      else
      {
        sub_220E1E2A8(v83, v87);
        v41 = type metadata accessor for OverlayTileViewportManager();
        v42 = OUTLINED_FUNCTION_1_67(v41, &off_283483B10);
        v43 = type metadata accessor for HashOverlayRenderer(v42);
        OUTLINED_FUNCTION_3_5(v43);
        OUTLINED_FUNCTION_2_46();

        swift_unknownObjectRetain();
        v44 = OUTLINED_FUNCTION_0_80();
        v48 = sub_220E3D66C(v44, v45, v46, v47);
        if (!v24)
        {
          v38 = v48;
          v39 = 0xEC00000029687361;
          v40 = 0x4828207261646152;
          goto LABEL_34;
        }
      }

      goto LABEL_27;
    }

    if (v29 == 4)
    {
      sub_220E22B0C(v88);
      if ((a8 & 0x8000000000) != 0)
      {
        sub_220E1E2A8(v83, v87);
        v59 = type metadata accessor for OverlayTileViewportManager();
        v60 = OUTLINED_FUNCTION_1_67(v59, &off_283483B10);
        v61 = type metadata accessor for WindIntensityOverlayRenderer(v60);
        OUTLINED_FUNCTION_3_5(v61);
        OUTLINED_FUNCTION_2_46();

        swift_unknownObjectRetain();
        v62 = OUTLINED_FUNCTION_0_80();
        sub_220EF2A88(v62, v63, v64, v65);
        if (!v24)
        {
          v38 = v66;
          v39 = 0x8000000220FE5380;
          v40 = 0xD000000000000010;
          goto LABEL_34;
        }
      }

      else
      {
        sub_220E1E2A8(v83, v87);
        v30 = type metadata accessor for OverlayTileViewportManager();
        v31 = OUTLINED_FUNCTION_1_67(v30, &off_283483B10);
        v32 = type metadata accessor for WindParticleOverlayRenderer(v31);
        OUTLINED_FUNCTION_3_5(v32);
        OUTLINED_FUNCTION_2_46();

        swift_unknownObjectRetain();
        v33 = OUTLINED_FUNCTION_0_80();
        v37 = sub_220EDD164(v33, v34, v35, v36);
        if (!v24)
        {
          v38 = v37;
          v39 = 0xEF29656C63697472;
          v40 = 0x61502820646E6957;
LABEL_34:
          *&v81 = 0;
          *(&v81 + 1) = 0xE000000000000000;
          sub_220FC35C0();

          strcpy(&v81, "MapOverlays - ");
          HIBYTE(v81) = -18;
          MEMORY[0x223D9BD60](v40, v39);

          v72 = sub_220FC26C0();

          [v28 setLabel_];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0(v83);
          return v38;
        }
      }

LABEL_27:
      if (qword_2812C5EC8 != -1)
      {
        swift_once();
      }

      v68 = sub_220FC17A0();
      __swift_project_value_buffer(v68, qword_2812C5ED0);
      v69 = sub_220FC1780();
      v70 = sub_220FC2E00();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_220E15000, v69, v70, "Could not create overlay renderer!", v71, 2u);
        MEMORY[0x223D9DDF0](v71, -1, -1);
      }

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v83);
      return 0;
    }

    memcpy(v87, v86, sizeof(v87));
    v49 = sub_220E435CC(v87);
    v50 = v15;
    if (v49)
    {
      if (v49 == 3)
      {
        v39 = 0xEB00000000657275;
        v40 = 0x74617265706D6554;
      }

      else
      {
        if (v49 != 2)
        {
          v39 = 0xE700000000000000;
          v40 = 0x6E776F6E6B6E55;
          goto LABEL_26;
        }

        v39 = 0xE800000000000000;
        v40 = 0x7473616365726F46;
      }
    }

    else
    {
      v39 = 0xEA00000000007974;
      v40 = 0x696C617551726941;
    }

    sub_220E22B0C(v87);
LABEL_26:
    sub_220E1E2A8(v83, v80);
    v79[3] = type metadata accessor for OverlayTileViewportManager();
    v79[4] = &off_283483B10;
    v79[0] = v23;
    v67 = type metadata accessor for OverlayRenderer(0);
    OUTLINED_FUNCTION_3_5(v67);
    sub_220E4E4D8(v50, &v81);

    swift_unknownObjectRetain();
    v38 = sub_220F5AA64(v80, v79, v28, v50);
    goto LABEL_34;
  }

  sub_220F7D7B4(&v81);
  return 0;
}

uint64_t sub_220F7D750()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_220F7D7B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F5D0, &qword_220FD7A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F7D81C(const void *a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6)
{
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v30 = a2;
  v29 = a1;
  v7 = *a6;
  v28 = sub_220FC2FB0();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220FC2F80();
  MEMORY[0x28223BE20](v12, v13);
  v14 = sub_220FC2390();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = sub_220FC1160();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v35[3] = v7;
  v35[4] = &off_2834859D8;
  v35[0] = a6;
  type metadata accessor for OverlayTileViewportManager();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v35, v7);
  v20 = MEMORY[0x28223BE20](v19, v19);
  v22 = (&v28 - v21);
  (*(v23 + 16))(&v28 - v21, v20);
  v24 = *v22;
  *(v18 + 304) = v7;
  *(v18 + 312) = &off_2834859D8;
  *(v18 + 280) = v24;
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v18 + 320) = sub_220FC1170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D948, &unk_220FCBDF0);
  sub_220E98C20();
  v25 = MEMORY[0x277D84F90];
  *(v18 + 328) = sub_220FC2600();
  sub_220E1AAEC();
  sub_220FC2350();
  v34 = v25;
  sub_220E1A080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28, &unk_220FCAD00);
  sub_220E1AC1C();
  sub_220FC3430();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v28);
  *(v18 + 336) = sub_220FC2FF0();
  memcpy((v18 + 24), v29, 0xC8uLL);
  *(v18 + 16) = v30 & 1;
  v26 = v32;
  *(v18 + 224) = v31;
  *(v18 + 232) = v26;
  sub_220E1E72C(v33, v18 + 240);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v18;
}

double sub_220F7DC08(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher) = a1;

  sub_220F7DE94();

  return result;
}

void sub_220F7DC64(uint64_t a1, float a2)
{
  v6 = a2 * 100.0;
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 < 9.2234e18)
  {
    v2 = a1;
    v4 = v6;
    if (qword_2812C5B30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  swift_once();
LABEL_5:
  v7 = qword_2812CE4B0;
  sub_220FBFF80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0, &unk_220FCA870);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D83B88];
  *(v8 + 16) = xmmword_220FC8E30;
  v10 = MEMORY[0x277D83C10];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v4;
  v11 = sub_220FC2720();
  v13 = v12;

  sub_220FB516C(v11, v13, v3);
  if (v2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2 == 0.0;
  }

  v15 = v14;
  v16 = (a2 > 0.99) | v15;
  v17 = [v3 accessibilityElementsHidden];
  [v3 setAccessibilityElementsHidden_];
  if (v16 != v17)
  {
    v18 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v18, 0);
  }
}

double sub_220F7DE94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF40, &qword_220FC9870);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F608, &qword_220FD7A80);
  *&result = MEMORY[0x28223BE20](v6, v7).n128_u64[0];
  v11 = &v15 - v10;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher))
  {
    v18 = *(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher);
    v16 = v8;
    sub_220E1966C(0, &qword_2812C5CA0, 0x277D85C78);

    v12 = sub_220FC2FC0();
    v17 = v12;
    v13 = sub_220FC2FA0();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F610, &qword_220FD7A88);
    sub_220E453D4(&qword_27CF9F618, &qword_27CF9F610, &qword_220FD7A88, MEMORY[0x277CBCD90]);
    sub_220F7EDFC();
    sub_220FC19F0();
    sub_220F7EE64(v5);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_220E453D4(&qword_27CF9F620, &qword_27CF9F608, &qword_220FD7A80, MEMORY[0x277CBCD60]);
    v14 = sub_220FC1A10();

    (*(v16 + 8))(v11, v6);
    *(v1 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressObserver) = v14;
  }

  return result;
}

void sub_220F7E150(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport;
    *v6 = v2;
    *(v6 + 8) = v3;
    sub_220F7DC64(v3, v2);
    sub_220F7E1D8(1);
  }
}

void sub_220F7E1D8(char a1)
{
  if ((v1[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport];
    v4 = *&v1[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport + 8];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3 == 0.0;
    }

    v6 = 1.0;
    v7 = 0.0;
    if (v5)
    {
      v6 = 0.0;
    }

    [v1 setAlpha_];
    if (a1)
    {
      v7 = 0.25;
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v3;
    *(v9 + 32) = v4;
    v19 = sub_220F7EDAC;
    v20 = v9;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_220F6DA78;
    v18 = &block_descriptor_26;
    v10 = _Block_copy(&v15);
    v11 = v1;

    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
    *(v12 + 32) = v11;
    v19 = sub_220F7EDD4;
    v20 = v12;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_220EFF6B0;
    v18 = &block_descriptor_6;
    v13 = _Block_copy(&v15);
    v14 = v11;

    [v8 animateWithDuration:v10 animations:v13 completion:v7];
    _Block_release(v13);
    _Block_release(v10);
  }
}

char *sub_220F7E3D4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressObserver] = 0;
  v5 = &v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_previousFrame];
  *v6 = 0u;
  v6[1] = 0u;
  v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion] = 0;
  *&v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher] = 0;
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemFillColor];
  [v9 setBackgroundColor_];

  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_27CF9C120 != -1)
  {
    swift_once();
  }

  sub_220FC0A80();

  v11 = *&v9[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView];
  v12 = &selRef_systemBlueColor;
  if (!v23)
  {
    v12 = &selRef_blackColor;
  }

  v13 = [v8 *v12];
  [v11 setBackgroundColor_];

  [v9 _setCornerRadius_];
  v14 = OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView;
  [*&v9[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView] _setCornerRadius_];
  [v9 addSubview_];
  [v9 setIsAccessibilityElement_];
  v15 = *MEMORY[0x277D765D0];
  v16 = [v9 accessibilityTraits];
  if ((v15 & ~v16) != 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  [v9 setAccessibilityTraits_];
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v18 = qword_2812CE4B0;
  v19 = sub_220FBFF80();
  v21 = v20;

  sub_220FB51A4(v19, v21, v9);

  return v9;
}

void sub_220F7E714()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressObserver) = 0;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport;
  *v2 = 0;
  *(v2 + 8) = 0;
  v3 = (v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_previousFrame);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F7E800(void *a1)
{
  v2 = v1;
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_layoutSublayersOfLayer_, a1);
  sub_220E1966C(0, &qword_2812C5B20, 0x277D82BB8);
  v4 = [v1 layer];
  v5 = sub_220FC3250();

  if (v5)
  {
    [a1 frame];
    v6 = &v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_previousFrame];
    if (!CGRectEqualToRect(v12, *&v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_previousFrame]))
    {
      [a1 frame];
      *v6 = v7;
      *(v6 + 1) = v8;
      *(v6 + 2) = v9;
      *(v6 + 3) = v10;
      sub_220F7E1D8(0);
    }
  }
}

id sub_220F7E958(char *a1, float a2)
{
  v4 = *&a1[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView];
  v5 = [a1 layer];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v14 = CGRectGetWidth(v26) * a2;
  v15 = [a1 layer];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  v28.size.height = CGRectGetHeight(v27);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v14;
  v29 = CGRectIntegral(v28);

  return [v4 setFrame_];
}

void sub_220F7EA7C(float a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a1 > 0.99)
  {
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    a4[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion] = 1;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    v20 = sub_220F7EDE0;
    v21 = v10;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_220F6DA78;
    v19 = &block_descriptor_12;
    v11 = _Block_copy(&v16);
    v12 = a4;

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v20 = sub_220F7EDF4;
    v21 = v13;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_220EFF6B0;
    v19 = &block_descriptor_18;
    v14 = _Block_copy(&v16);
    v15 = v12;

    [v9 animateWithDuration:v11 animations:v14 completion:0.3];
    _Block_release(v14);
    _Block_release(v11);
  }
}

id sub_220F7EC2C(int a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView];
  v4 = [a2 layer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v14.origin.x = v6;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v12;
  result = [v3 setFrame_];
  a2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion] = 0;
  return result;
}

double block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_220F7EDFC()
{
  result = qword_27CF9CF58;
  if (!qword_27CF9CF58)
  {
    sub_220E1966C(255, &qword_2812C5CA0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CF58);
  }

  return result;
}

uint64_t sub_220F7EE64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF40, &qword_220FC9870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_220F7EEEC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel] = 0;
  v8 = &v3[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_model];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;

  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F7EFA4();

  return v10;
}

void sub_220F7EFA4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_model + 16];
  v3 = objc_allocWithZone(MEMORY[0x277D756B8]);

  v4 = v2;
  v5 = [v3 init];
  v6 = sub_220FC26C0();
  [v5 setText_];

  sub_220E41E50();
  v7 = sub_220FC3150();
  [v5 setFont_];
  [v5 setTextAlignment_];
  [v5 setTextColor_];
  [v5 setAdjustsFontSizeToFitWidth_];
  [v5 setMinimumScaleFactor_];
  [v1 addSubview_];

  v8 = *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel];
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel] = v5;
}

void sub_220F7F114()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F7F194()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel];
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_1_1();
    MinX = CGRectGetMinX(v7);
    OUTLINED_FUNCTION_1_1();
    v4 = CGRectGetMinY(v8) + 2.0;
    OUTLINED_FUNCTION_1_1();
    Width = CGRectGetWidth(v9);
    OUTLINED_FUNCTION_1_1();
    [v2 setFrame_];
  }
}

uint64_t sub_220F7F364()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  OUTLINED_FUNCTION_3_5(v8);
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24(36, v9, v10);
  qword_2812CA230 = result;
  return result;
}

uint64_t sub_220F7F508()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  OUTLINED_FUNCTION_3_5(v8);
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24(28, v9, v10);
  qword_2812CA240 = result;
  return result;
}

uint64_t sub_220F7F688()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  OUTLINED_FUNCTION_3_5(v8);
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24(35, v9, v10);
  qword_2812CA218 = result;
  return result;
}

uint64_t sub_220F7F82C()
{
  v0 = sub_220FC0B30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220FC0B10();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  swift_allocObject();
  result = sub_220FC0BA0();
  qword_27CF9F638 = result;
  return result;
}

uint64_t sub_220F7FA14()
{
  v0 = sub_220FC0B30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220FC0B10();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  swift_allocObject();
  result = sub_220FC0BA0();
  qword_2812CA1E0 = result;
  return result;
}

uint64_t sub_220F7FC20()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  OUTLINED_FUNCTION_3_5(v8);
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24(50, v9, v10);
  qword_2812CA1A0 = result;
  return result;
}

uint64_t sub_220F7FDA0()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  OUTLINED_FUNCTION_3_5(v8);
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24(42, v9, v10);
  qword_2812CA1B8 = result;
  return result;
}

uint64_t sub_220F7FF20()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E8, &qword_220FD7B10);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(49, v4, v5, v6, v7);
  qword_27CF9F640 = result;
  return result;
}

uint64_t sub_220F80040()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  OUTLINED_FUNCTION_3_5(v8);
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24(31, v9, v10);
  qword_27CF9F648 = result;
  return result;
}

uint64_t sub_220F801C4()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  OUTLINED_FUNCTION_3_5(v8);
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24(35, v9, v10);
  qword_2812CA200 = result;
  return result;
}

uint64_t sub_220F80348()
{
  v1 = sub_220FC0B30();
  MEMORY[0x28223BE20](v1 - 8, v2);
  OUTLINED_FUNCTION_0_81();
  v3 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for Settings.Maps.Requests(0);
  (*(v5 + 104))(v0, *MEMORY[0x277D6D098], v3);
  sub_220FC0B20();
  result = OUTLINED_FUNCTION_17_17(28, 0x8000000220FE5B20);
  qword_2812CA138 = result;
  return result;
}

uint64_t sub_220F80480()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E8, &qword_220FD7B10);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(43, v4, v5, v6, v7);
  qword_27CF9F650 = result;
  return result;
}

uint64_t sub_220F805A0()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E8, &qword_220FD7B10);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(40, v4, v5, v6, v7);
  qword_27CF9F658 = result;
  return result;
}

uint64_t sub_220F806C0()
{
  v1 = sub_220FC0B30();
  MEMORY[0x28223BE20](v1 - 8, v2);
  OUTLINED_FUNCTION_0_81();
  v3 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for Settings.Maps.Overrides(0);
  (*(v5 + 104))(v0, *MEMORY[0x277D6D098], v3);
  sub_220FC0B20();
  result = OUTLINED_FUNCTION_17_17(29, 0x8000000220FE5E40);
  qword_2812CA0F0 = result;
  return result;
}

uint64_t sub_220F807D4()
{
  v0 = sub_220FC0B30();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v22 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_220FC0B10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220FC0DC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v21 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F708, &qword_220FD7B28);
  v21[1] = "ays.forceRadarPrecipOverlayKind";
  v21[2] = v17;
  v18 = *MEMORY[0x277D7AA80];
  v19 = *(v9 + 104);
  v19(v16, v18, v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D6D098], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F710, &qword_220FD7B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F718, &qword_220FD7B38);
  *(swift_allocObject() + 16) = xmmword_220FC9880;
  v19(v12, *MEMORY[0x277D7AA78], v8);
  sub_220FC0B40();
  v19(v12, v18, v8);
  sub_220FC0B40();
  v19(v12, *MEMORY[0x277D7AA68], v8);
  sub_220FC0B40();
  v19(v12, *MEMORY[0x277D7AA88], v8);
  sub_220FC0B40();
  (*(v23 + 104))(v22, *MEMORY[0x277D6D0A8], v24);
  sub_220E1F290(&qword_27CF9F720, MEMORY[0x277D7AA90], MEMORY[0x277D7AA70]);
  result = sub_220FC0B70();
  qword_27CF9F660 = result;
  return result;
}

uint64_t sub_220F80CA0()
{
  v0 = sub_220FC0B30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220FC0B10();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700, &qword_220FD7B20);
  swift_allocObject();
  result = sub_220FC0BA0();
  qword_27CF9F668 = result;
  return result;
}

uint64_t sub_220F80E84()
{
  v1 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_2_47();
  v6 = sub_220FC0A20();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F298, &unk_220FD5790);
  (*(v8 + 104))(v13, *MEMORY[0x277D6D050], v6);
  (*(v3 + 104))(v0, *MEMORY[0x277D6D098], v1);
  result = sub_220FC0B80();
  qword_27CF9F670 = result;
  return result;
}

uint64_t sub_220F81030()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x4023000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(39, v4, v5, v6, v7);
  qword_27CF9F678 = result;
  return result;
}

uint64_t sub_220F81148()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x4021CCCCCCCCCCCDLL);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(50, v4, v5, v6, v7);
  qword_27CF9F680 = result;
  return result;
}

uint64_t sub_220F81268()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x4022000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(65, v4, v5, v6, v7);
  qword_27CF9F688 = result;
  return result;
}

uint64_t sub_220F81380()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x401E000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(71, v4, v5, v6, v7);
  qword_27CF9F690 = result;
  return result;
}

uint64_t sub_220F81498()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x401A000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(69, v4, v5, v6, v7);
  qword_27CF9F698 = result;
  return result;
}

uint64_t sub_220F815B0()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x4014000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(56, v4, v5, v6, v7);
  qword_27CF9F6A0 = result;
  return result;
}

uint64_t sub_220F816C8()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x4022333333333333);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(47, v4, v5, v6, v7);
  qword_27CF9F6A8 = result;
  return result;
}

uint64_t sub_220F817E4()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x4023000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(56, v4, v5, v6, v7);
  qword_27CF9F6B0 = result;
  return result;
}

uint64_t sub_220F818FC()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x4022000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(43, v4, v5, v6, v7);
  qword_27CF9F6B8 = result;
  return result;
}

uint64_t sub_220F81A14()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x4021000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(40, v4, v5, v6, v7);
  qword_27CF9F6C0 = result;
  return result;
}

uint64_t sub_220F81B2C()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8, &qword_220FD7B18);
  OUTLINED_FUNCTION_7_26(0x401C000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(33, v4, v5, v6, v7);
  qword_27CF9F6C8 = result;
  return result;
}

uint64_t sub_220F81C44()
{
  v0 = sub_220FC02B0();
  __swift_allocate_value_buffer(v0, qword_27CFAF690);
  __swift_project_value_buffer(v0, qword_27CFAF690);
  return sub_220FC0140();
}

uint64_t sub_220F81C94()
{
  v2 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_0_81();
  v7 = sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3_45();
  v12 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  if (qword_27CF9C1B0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v12, qword_27CFAF690);
  (*(v14 + 16))(v19, v20, v12);
  (*(v9 + 104))(v1, *MEMORY[0x277D6D0A8], v7);
  (*(v4 + 104))(v0, *MEMORY[0x277D6D090], v2);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E0, &qword_220FD7B08);
  OUTLINED_FUNCTION_3_5(v21);
  result = sub_220FC0BA0();
  qword_27CFAF6A8 = result;
  return result;
}

uint64_t sub_220F81EDC()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E8, &qword_220FD7B10);
  OUTLINED_FUNCTION_3_5(v8);
  result = sub_220FC0BA0();
  qword_27CFAF6B0 = result;
  return result;
}

uint64_t sub_220F82050()
{
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_16_17();
  v4(v3);
  OUTLINED_FUNCTION_20_18();
  v5 = OUTLINED_FUNCTION_19_15();
  v6(v5);
  return v2;
}

uint64_t sub_220F82128()
{
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_16_17();
  v4(v3);
  OUTLINED_FUNCTION_20_18();
  v5 = OUTLINED_FUNCTION_19_15();
  v6(v5);
  return v0;
}

uint64_t Settings.Maps.ScrubberForecastHint.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C11WeatherMapsE0D0V20ScrubberForecastHintCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_220F82234(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C1B8 != -1)
  {
    swift_once();
  }

  sub_220FC02B0();
  sub_220E1F290(&qword_27CF9F6F0, MEMORY[0x277CC9578], MEMORY[0x277D6D038]);
  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C1C0 != -1)
  {
    swift_once();
  }

  return sub_220FC0B00();
}

uint64_t sub_220F82384(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_2812CA238 != -1)
  {
    swift_once();
  }

  return sub_220FC0B00();
}

uint64_t sub_220F82424(uint64_t a1)
{
  v1 = sub_220FC0B60();
  OUTLINED_FUNCTION_3_5(v1);
  return sub_220FC0B50();
}

uint64_t sub_220F82468(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C158 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C160 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C168 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C188 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C190 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C198 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C1A0 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C1A8 != -1)
  {
    swift_once();
  }

  return sub_220FC0B00();
}

_BYTE *_s4MapsVwst(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_11_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821D29A0](v7, a2, a3, a4, a5, v5);
}

uint64_t OUTLINED_FUNCTION_17_17(uint64_t a1, uint64_t a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821D2890](v5, a2, 0, v3, v2);
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_220FC0B10();
}

uint64_t OUTLINED_FUNCTION_20_18()
{

  return MEMORY[0x2821D2898](v2, v1, v0, v3);
}

uint64_t sub_220F82A30(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD71F0]) initWithDevice_];
  swift_unknownObjectRelease();
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_220F82A88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F740, &qword_220FD7BB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  v1 = *MEMORY[0x277CD71A0];
  *(inited + 32) = *MEMORY[0x277CD71A0];
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v3 = v1;
  v4 = [v2 initWithBool_];
  v5 = sub_220ED19E4();
  *(inited + 40) = v4;
  v6 = *MEMORY[0x277CD71C0];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = v6;
  v9 = [v7 initWithUnsignedInteger_];
  *(inited + 104) = v5;
  *(inited + 80) = v9;
  type metadata accessor for Option(0);
  sub_220F82F44();
  return sub_220FC2600();
}

id sub_220F82B9C(float a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_0_82();
  v4 = sub_220FC26C0();
  v5 = a1;
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v6 = qword_2812CE4B0;
  v7 = qword_2812CE4B0;
  v8 = sub_220F82A88();
  v13[0] = 0;
  v9 = sub_220F82E90(v4, v6, v8, v13, v3, v5);

  v10 = v13[0];
  if (!v9)
  {
    v11 = v10;
    sub_220FBFFE0();

    swift_willThrow();
  }

  return v9;
}

id sub_220F82CBC()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_220FC0100();
  v3 = sub_220F82A88();
  v8[0] = 0;
  v4 = sub_220F82F9C(v2, v3, v8, v1, &selRef_newTextureWithData_options_error_);

  v5 = v8[0];
  if (!v4)
  {
    v6 = v5;
    sub_220FBFFE0();

    swift_willThrow();
  }

  return v4;
}

id sub_220F82D7C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_220F82A88();
  v9[0] = 0;
  v5 = sub_220F82F9C(a1, v4, v9, v3, &selRef_newTextureWithCGImage_options_error_);
  v6 = v9[0];
  if (!v5)
  {
    v7 = v6;
    sub_220FBFFE0();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_220F82E34()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_220F82E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  type metadata accessor for Option(0);
  sub_220F82F44();
  v11 = sub_220FC25B0();

  v12 = [a5 newTextureWithName:a1 scaleFactor:a2 bundle:v11 options:a4 error:a6];

  return v12;
}

unint64_t sub_220F82F44()
{
  result = qword_27CF9C8E8;
  if (!qword_27CF9C8E8)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9C8E8);
  }

  return result;
}

id sub_220F82F9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  type metadata accessor for Option(0);
  sub_220F82F44();
  v9 = sub_220FC25B0();

  v10 = [a4 *a5];

  return v10;
}

uint64_t sub_220F83038(__int128 *a1, __int128 *a2)
{
  v15 = sub_220FC2FB0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_220FC2F80();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  v12 = sub_220FC2390();
  MEMORY[0x28223BE20](v12 - 8, v13);
  OUTLINED_FUNCTION_3();
  sub_220E1AAEC();
  sub_220FC2360();
  sub_220F84AEC(&qword_2812C5CA8, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28, &unk_220FCAD00);
  sub_220E1AC1C();
  sub_220FC3430();
  (*(v4 + 104))(v9, *MEMORY[0x277D85260], v15);
  *(v2 + 56) = sub_220FC2FF0();
  sub_220E1E72C(a1, v2 + 16);
  sub_220E1E72C(a2, v2 + 64);
  return v2;
}

uint64_t sub_220F83268(uint64_t a1, char *a2, double a3, double a4)
{
  v7 = OUTLINED_FUNCTION_4_44(*a2, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));

  return sub_220F8342C(a1, a3, a4, v7);
}

double sub_220F832CC(unsigned __int8 *a1, char *a2)
{
  v4 = sub_220FC0D50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 != 5)
  {
    if (v9 == 4)
    {
      sub_220F83778(v8);
      sub_220FC0CD0();
    }

    else
    {
      if (v9 != 3)
      {
        v14 = *a2;
        return sub_220F83DA8(&v14);
      }

      sub_220F83778(v8);
      sub_220FC0CC0();
    }

    v11 = v10;
    (*(v5 + 8))(v8, v4);
    return v11;
  }

  return sub_220F84148();
}

uint64_t sub_220F8342C(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v33 = a1;
  v10 = sub_220FC1070();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v15 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v11 + 16);
  v34(v15, a1, v10, v14);
  v16 = *(v11 + 80);
  v30 = ((v16 + 24) & ~v16) + v12;
  v31 = (v16 + 24) & ~v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  v32 = *(v11 + 32);
  v32(v17 + ((v16 + 24) & ~v16), v15, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F748, &unk_220FD7C80);
  sub_220FC1540();

  (v34)(v15, v33, v10);
  v18 = (v16 + 16) & ~v16;
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v32(v20 + v18, v15, v10);
  v21 = (v20 + v19);
  *v21 = a2;
  v21[1] = a3;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v22 = sub_220FC13B0();
  sub_220FC1500();

  (v34)(v15, v33, v10);
  v23 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  v32(v24 + v31, v15, v10);
  v25 = (v24 + v23);
  *v25 = a2;
  v25[1] = a3;
  v26 = sub_220FC13B0();
  v27 = sub_220FC1490();

  return v27;
}

void sub_220F83734(char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = OUTLINED_FUNCTION_4_44(*a1, v3, v4, SWORD2(v4), SBYTE6(v4), SHIBYTE(v4));
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
}

uint64_t sub_220F83778@<X0>(uint64_t a1@<X8>)
{
  v14[4] = a1;
  v2 = sub_220FC0E70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220FC0CA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812CA0E8 != -1)
  {
    swift_once();
  }

  if (sub_220FC0A50())
  {
    if (qword_27CF9C158 != -1)
    {
      swift_once();
    }

    sub_220F84AEC(&qword_27CF9F750, v12, type metadata accessor for WeatherMapCameraFocusFactory, &unk_220FD7C30);
    sub_220FC0A00();
    v14[3] = v14[15];
    if (qword_27CF9C160 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    v14[2] = v14[14];
    if (qword_27CF9C168 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    v14[1] = v14[13];
    if (qword_27CF9C170 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    v14[0] = v14[12];
    if (qword_27CF9C178 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C180 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C188 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C190 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C198 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C1A0 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C1A8 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    return sub_220FC0CB0();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
    sub_220FC0F40();
    sub_220FC0C90();
    (*(v8 + 8))(v11, v7);
    sub_220FC0DB0();
    return (*(v3 + 8))(v6, v2);
  }
}

double sub_220F83DA8(unsigned __int8 *a1)
{
  v2 = sub_220FC0D50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_220F83778(v6);
  v8 = (v3 + 8);
  switch(v7)
  {
    case 1:
      sub_220FC0D10();
      goto LABEL_7;
    case 2:
      sub_220FC0D30();
      goto LABEL_7;
    case 3:
      sub_220FC0D20();
      goto LABEL_7;
    case 4:
    case 5:
      sub_220FC0CE0();
      goto LABEL_7;
    case 6:
      sub_220FC0CE0();
      v10 = v21;
      (*v8)(v6, v2);
      return v10;
    default:
      sub_220FC0CF0();
LABEL_7:
      v10 = v9;
      v11 = *v8;
      (*v8)(v6, v2);
      sub_220F83778(v6);
      sub_220FC0CF0();
      v11(v6, v2);
      sub_220F83778(v6);
      sub_220FC0D00();
      v13 = v12;
      v11(v6, v2);
      if (v13 < v10)
      {
        if (qword_2812C5EC8 != -1)
        {
          swift_once();
        }

        v14 = sub_220FC17A0();
        __swift_project_value_buffer(v14, qword_2812C5ED0);
        v15 = sub_220FC1780();
        v16 = sub_220FC2E10();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v25 = v18;
          *v17 = 134218242;
          *(v17 + 4) = v10;
          *(v17 + 12) = 2080;
          v19 = 0xE900000000000072;
          v20 = 0x756F68207478656ELL;
          switch(v7)
          {
            case 0:
              v19 = 0xE300000000000000;
              v20 = 7827310;
              goto LABEL_18;
            case 1:
              goto LABEL_18;
            case 2:
              v19 = 0x8000000220FDCEB0;
              v20 = 0xD000000000000010;
              goto LABEL_18;
            case 3:
              v19 = 0xEE007372756F6820;
              v20 = 0x786973207478656ELL;
              goto LABEL_18;
            case 4:
              v19 = 0xE400000000000000;
              v20 = 1701736302;
              goto LABEL_18;
            case 5:
              v19 = 0xE700000000000000;
              v20 = 0x6E776F6E6B6E75;
LABEL_18:
              v22 = sub_220E20FF8(v20, v19, &v25);

              *(v17 + 14) = v22;
              _os_log_impl(&dword_220E15000, v15, v16, "Zoom level (%f) above radar threshold returned when rain expectation is: %s.", v17, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v18);
              MEMORY[0x223D9DDF0](v18, -1, -1);
              MEMORY[0x223D9DDF0](v17, -1, -1);
              break;
            default:
              return v10;
          }
        }
      }

      return v10;
  }
}

double sub_220F84148()
{
  v0 = sub_220FC0D50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F83778(v4);
  v5 = COERCE_DOUBLE(sub_220FC0D40());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 7.0;
  }

  return result;
}

uint64_t sub_220F84288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v34 = a3;
  v12 = sub_220FC1070();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v17 = sub_220FC17A0();
  __swift_project_value_buffer(v17, qword_2812C5ED0);
  (*(v13 + 16))(v16, a2, v12);
  v18 = a1;
  v19 = sub_220FC1780();
  v20 = sub_220FC2E10();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33[1] = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136447491;
    swift_getErrorValue();
    v24 = sub_220FC39D0();
    v26 = sub_220E20FF8(v24, v25, &v35);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v27 = sub_220FC1020();
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = sub_220E20FF8(v27, v29, &v35);

    *(v22 + 24) = v30;
    *(v22 + 32) = 2050;
    *(v22 + 34) = a4;
    *(v22 + 42) = 2050;
    *(v22 + 44) = a5;
    *(v22 + 52) = 2050;
    *(v22 + 54) = a6;
    _os_log_impl(&dword_220E15000, v19, v20, "Error while fitting zoomLevel. error=%{public}s, location=%{private,mask.hash}s, size.width=%{public}f, size.height=%{public}f, zoomLevel=%{public}f", v22, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v23, -1, -1);
    MEMORY[0x223D9DDF0](v22, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v31 = sub_220FC0F30();
  return __swift_storeEnumTagSinglePayload(v34, 1, 1, v31);
}

uint64_t sub_220F84598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F748, &unk_220FD7C80);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v27 - v10;
  v12 = sub_220FC0F30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F84A14(a1, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    result = sub_220F84A84(v11);
    *a2 = a3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_220FC0FE0();
    MKMapPointForCoordinate(v29);
    v28 = a3;
    MKMapRectMakeWithZoomLevel();
    sub_220FC0EF0();
    v19 = v18;
    sub_220FC0F00();
    v21 = v20;
    sub_220FC0F10();
    v23 = v22;
    sub_220FC0F20();
    v25 = v24;
    v26 = MKMapRectContainsRectWrappingMeridian();
    result = (*(v13 + 8))(v16, v12);
    if (v26)
    {
      *a2 = v28;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      *a2 = v19;
      *(a2 + 8) = v21;
      *(a2 + 16) = v23;
      *(a2 + 24) = v25;
      *(a2 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_220F847F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  return v0;
}

uint64_t sub_220F84824()
{
  sub_220F847F4();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_220F848E4()
{
  OUTLINED_FUNCTION_5_34();
  v0 = OUTLINED_FUNCTION_2_48();
  return sub_220F84288(v0, v1, v2, v3, v4, v5);
}

uint64_t sub_220F84980()
{
  OUTLINED_FUNCTION_5_34();
  v0 = OUTLINED_FUNCTION_2_48();
  return sub_220F84598(v0, v1, v2);
}

uint64_t sub_220F84A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F748, &unk_220FD7C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F84A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F748, &unk_220FD7C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F84AEC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_220F84B34()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_220F84B74()
{
  sub_220F84B34();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_220F84BCC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_220F84C4C()
{
  result = qword_2812C6B78[0];
  if (!qword_2812C6B78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C6B78);
  }

  return result;
}

uint64_t sub_220F84CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  return MEMORY[0x223D9CFA0](a4);
}

uint64_t sub_220F84D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a1);
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  return sub_220FC3A90();
}

uint64_t sub_220F84DB8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v2);
  MEMORY[0x223D9CFA0](v3);
  MEMORY[0x223D9CFA0](v4);
  return sub_220FC3A90();
}

uint64_t sub_220F84E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  MEMORY[0x223D9CFA0](a4);
  return MEMORY[0x223D9CFA0](a5);
}

uint64_t sub_220F84E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a1);
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  MEMORY[0x223D9CFA0](a4);
  return sub_220FC3A90();
}

uint64_t sub_220F84F30(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v2);
  MEMORY[0x223D9CFA0](v3);
  MEMORY[0x223D9CFA0](v4);
  MEMORY[0x223D9CFA0](v5);
  return sub_220FC3A90();
}

unint64_t sub_220F84FB0()
{
  result = qword_2812C5FD0;
  if (!qword_2812C5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5FD0);
  }

  return result;
}

id sub_220F85004(double a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel__setCornerRadius_, a1);
  return sub_220F856C0();
}

uint64_t sub_220F85050(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_background;
  swift_beginAccess();
  sub_220F85EBC(a1, v1 + v3);
  swift_endAccess();
  sub_220F85148();
  return sub_220F85F20(a1);
}

id sub_220F850BC()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  sub_220FAE50C(0xD00000000000002FLL, 0x8000000220FE60D0, v1);
  return v1;
}

char *sub_220F85148()
{
  v1 = sub_220FC2560();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherMapAnnotationBackground(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = objc_opt_self();
  [v10 begin];
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations) == 1)
  {
    [v10 setDisableActions_];
  }

  v11 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_background;
  swift_beginAccess();
  sub_220F85F7C(v0 + v11, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v2 + 32))(v5, v9, v1);
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView) setAlpha_];
      LODWORD(v34) = 1.0;
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer) setOpacity_];
      sub_220FC2550();
      (*(v2 + 8))(v5, v1);
      return [v10 commit];
    case 2u:
      v20 = *v9;
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView) setAlpha_];
      v21 = *(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer);
      LODWORD(v22) = 1.0;
      [v21 setOpacity_];
      [v21 setLocations_];
      v23 = sub_220F43CDC();
      if (v23)
      {
        v24 = v23;
        v37 = MEMORY[0x277D84F90];
        result = sub_220F0B1A0(0, v23 & ~(v23 >> 63), 0);
        if (v24 < 0)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v27 = v37;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x223D9CB30](v26, v20);
          }

          else
          {
            v28 = v20[v26 + 4];
          }

          v29 = v28;
          v30 = [v28 CGColor];
          type metadata accessor for CGColor(0);
          v36 = v31;

          *&v35 = v30;
          v37 = v27;
          v33 = *(v27 + 16);
          v32 = *(v27 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_220F0B1A0((v32 > 1), v33 + 1, 1);
            v27 = v37;
          }

          ++v26;
          *(v27 + 16) = v33 + 1;
          sub_220E5D784(&v35, (v27 + 32 * v33 + 32));
        }

        while (v24 != v26);
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
      }

      sub_220F85FE0(v27, v21);
      return [v10 commit];
    case 3u:
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer) setOpacity_];
      return [v10 commit];
    default:
      v12 = *v9;
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView) setAlpha_];
      v13 = *(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer);
      LODWORD(v14) = 1.0;
      [v13 setOpacity_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0, &qword_220FC9150);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_220FC8E10;
      v16 = [v12 CGColor];
      type metadata accessor for CGColor(0);
      v18 = v17;
      *(v15 + 56) = v17;
      *(v15 + 32) = v16;
      v19 = [v12 CGColor];
      *(v15 + 88) = v18;
      *(v15 + 64) = v19;
      sub_220F85FE0(v15, v13);

      return [v10 commit];
  }
}

id sub_220F85630()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel__cornerRadius);
}

id sub_220F856C0()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel__cornerRadius);
  [v2 setCornerRadius_];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel__cornerRadius);
  return [v3 _setCornerRadius_];
}

id sub_220F85754()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v3 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView;
  *&v0[v3] = sub_220F850BC();
  v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations] = 1;
  v4 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_0_83(v4);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F85838();

  return v5;
}

void sub_220F85838()
{
  [v0 addSubview_];
  v1 = [v0 layer];
  [v1 addSublayer_];
}

id sub_220F858DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v11 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView;
  *&v4[v11] = sub_220F850BC();
  v4[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations] = 1;
  v12 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_0_83(v12);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_220F85838();

  return v13;
}

void sub_220F85A04()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView;
  *(v0 + v2) = sub_220F850BC();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations) = 1;
  v3 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_background;
  *(v0 + v3) = [objc_opt_self() whiteColor];
  type metadata accessor for WeatherMapAnnotationBackground(0);
  swift_storeEnumTagMultiPayload();
  sub_220FC3740();
  __break(1u);
}

id sub_220F85B08()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  if (v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations] == 1)
  {
    [v1 setDisableActions_];
  }

  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView];
  [v0 bounds];
  [v3 setFrame_];
  return [v1 commit];
}

uint64_t sub_220F85CC8(uint64_t a1)
{
  result = type metadata accessor for WeatherMapAnnotationBackground(319);
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

void sub_220F85D94(uint64_t a1)
{
  sub_220F85E1C();
  if (v1 <= 0x3F)
  {
    sub_220FC2560();
    if (v2 <= 0x3F)
    {
      sub_220F85E64(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220F85E1C()
{
  if (!qword_2812C5B60)
  {
    v0 = sub_220E31740();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5B60);
    }
  }
}

void sub_220F85E64(uint64_t a1)
{
  if (!qword_27CF9F770)
  {
    sub_220E31740();
    v1 = sub_220FC2A10();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF9F770);
    }
  }
}

uint64_t sub_220F85EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationBackground(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F85F20(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapAnnotationBackground(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F85F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationBackground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220F85FE0(uint64_t a1, void *a2)
{
  v3 = sub_220FC2960();

  [a2 setColors_];
}

uint64_t sub_220F86050(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  sub_220F87DE4(a1, v1 + v3);
  swift_endAccess();
  sub_220F863BC();
  OUTLINED_FUNCTION_0_84();
  return sub_220F87F60(a1, v4);
}

id sub_220F860C0()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView;
  v13 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView);
  }

  else
  {
    v15 = v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
    OUTLINED_FUNCTION_5_1(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel, v23);
    OUTLINED_FUNCTION_1_68();
    sub_220F87F00(v15, v6, v16);
    sub_220F86200(*(v15 + 27), v11);
    OUTLINED_FUNCTION_0_84();
    sub_220F87F60(v6, v17);
    v18 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationPinView(0));
    v19 = sub_220E461F8(v11);
    v20 = *(v1 + v12);
    *(v1 + v12) = v19;
    v14 = v19;

    v13 = 0;
  }

  v21 = v13;
  return v14;
}

int *sub_220F86200@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for WeatherMapAnnotationBackground(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  if (*(v2 + 26) == 1)
  {
    v10 = type metadata accessor for WeatherMapAnnotationViewModel(0);
    v11 = *(v2 + *(v10 + 48));
    *v9 = v11;
    swift_storeEnumTagMultiPayload();
    v12 = *v2;
    v13 = v2[1];
    v14 = v2[2];
    v15 = *(v2 + 24);
    v16 = *(v2 + *(v10 + 40));
    v17 = objc_opt_self();
    v18 = v11;
    OUTLINED_FUNCTION_7_27();
    v19 = v16;
    v20 = [v17 clearColor];
    v21 = 0;
  }

  else
  {
    if (a1 >= 2u)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 = type metadata accessor for WeatherMapAnnotationViewModel(0);
    sub_220F87F00(v2 + v22[9], v9, type metadata accessor for WeatherMapAnnotationBackground);
    v12 = *v2;
    v13 = v2[1];
    v14 = v2[2];
    v15 = *(v2 + 24);
    v23 = v22[11];
    v24 = *(v2 + v22[10]);
    v25 = *(v2 + v23);
    OUTLINED_FUNCTION_7_27();
    v19 = v24;
    v20 = v25;
  }

  sub_220F87E48(v9, a2);
  result = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  v27 = a2 + result[5];
  *v27 = v12;
  *(v27 + 8) = v13;
  *(v27 + 16) = v14;
  *(v27 + 24) = v15;
  *(a2 + result[6]) = v19;
  *(a2 + result[7]) = v21;
  *(a2 + result[8]) = v20;
  return result;
}

uint64_t sub_220F863BC()
{
  v1 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  sub_220F87F00(v0 + v5, v4, type metadata accessor for WeatherMapAnnotationViewModel);
  sub_220F8648C(v4);
  return sub_220F87F60(v4, type metadata accessor for WeatherMapAnnotationViewModel);
}

id sub_220F8648C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  MEMORY[0x28223BE20](v33, v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v32 - v8;
  v34 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_shouldDisableImplicitAnimations;
  if (v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_shouldDisableImplicitAnimations] == 1)
  {
    v10 = objc_opt_self();
    [v10 begin];
    [v10 setDisableActions_];
  }

  v35 = v9;
  v11 = *(a1 + 25);
  [v2 setCanShowCallout_];
  [v2 setEnabled_];
  if ((v11 & 1) == 0)
  {
    swift_unknownObjectWeakAssign();
  }

  v12 = sub_220F86898();
  v13 = *(a1 + 27);
  if (*(a1 + 26) & 1 | (v13 == 1))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 40);
  v17 = *(a1 + 48);
  v16 = *(a1 + 56);
  v18 = v14 | *(a1 + 64);
  v19 = v12 + OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model;
  v20 = *(v12 + OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model);
  v21 = *(v12 + OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model + 8);
  v23 = *(v12 + OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model + 16);
  v22 = *(v12 + OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model + 24);
  *v19 = *(a1 + 32);
  *(v19 + 1) = v15;
  *(v19 + 2) = v17;
  *(v19 + 3) = v16;
  *(v19 + 16) = v18;

  sub_220E3B0C4(v20, v21, v23, v22);
  sub_220E9BFF8();

  v24 = v35;
  sub_220F86200(v13, v35);
  v25 = sub_220F860C0();
  v26 = v32;
  sub_220F87F00(v24, v32, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
  sub_220E4618C(v26);

  v27 = dbl_220FD8058[*(v24 + *(v33 + 28))];
  [*&v2[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView] setBounds_];
  sub_220F86FB4();
  [v2 bounds];
  [v2 setBounds_];
  v28 = [v2 _calloutView];
  if (v28)
  {
    v29 = v28;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      [v30 setStrokeColor_];
    }
  }

  result = sub_220F87F60(v24, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
  if (v2[v34] == 1)
  {
    return [objc_opt_self() commit];
  }

  return result;
}

double sub_220F867DC()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  result = 0.0;
  if (*(v1 + 26))
  {
    return -3.0;
  }

  return result;
}

double sub_220F86834()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  result = 2.0;
  if ((*(v1 + 26) & 1) == 0)
  {
    result = 0.0;
    if (*(v1 + 27) < 2u)
    {
      return 1.0;
    }
  }

  return result;
}

_OWORD *sub_220F86898()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel;
  v8 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel);
  }

  else
  {
    if (qword_27CF9C068 != -1)
    {
      swift_once();
    }

    v28[0] = xmmword_27CFAF4A0;
    v28[1] = *&qword_27CFAF4B0;
    v28[2] = xmmword_27CFAF4C0;
    v28[3] = *&qword_27CFAF4D0;
    v10 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
    OUTLINED_FUNCTION_5_1(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel, v27);
    OUTLINED_FUNCTION_1_68();
    sub_220F87F00(v1 + v10, v6, v11);
    v12 = (*(v6 + 26) & 1) != 0 || *(v6 + 27) == 1;
    v14 = *(v6 + 32);
    v13 = *(v6 + 40);
    v16 = *(v6 + 48);
    v15 = *(v6 + 56);
    v17 = *(v6 + 64);
    sub_220E9CA50(v28, v24);

    OUTLINED_FUNCTION_0_84();
    sub_220F87F60(v6, v18);
    v24[0] = v14;
    v24[1] = v13;
    v24[2] = v16;
    v24[3] = v15;
    v25 = v17;
    v26 = v12;
    v19 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationLocationLabel());
    v20 = sub_220E9C384(v28, v24);
    v21 = *(v1 + v7);
    *(v1 + v7) = v20;
    v9 = v20;

    v8 = 0;
  }

  v22 = v8;
  return v9;
}

id sub_220F86A3C(void *a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_dataSource);
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_delegate);
  *&v5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel] = 0;
  *&v5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView] = 0;
  *&v5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation] = a1;
  OUTLINED_FUNCTION_1_68();
  sub_220F87F00(a2, &v5[v10], v11);
  v5[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_shouldDisableImplicitAnimations] = a3;
  v12 = a1;
  v13 = sub_220FC26C0();

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithAnnotation_reuseIdentifier_, v12, v13);

  v15 = v14;
  sub_220F86BAC();

  OUTLINED_FUNCTION_0_84();
  sub_220F87F60(a2, v16);
  return v15;
}

uint64_t sub_220F86BAC()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_220FC1070();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation];
  v16 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  swift_beginAccess();
  sub_220F87F00(v15 + v16, v14, type metadata accessor for WeatherMapAnnotatedLocationData);
  sub_220F05E6C(v10);
  sub_220F87F60(v14, type metadata accessor for WeatherMapAnnotatedLocationData);
  sub_220FC1030();
  (*(v7 + 8))(v10, v6);
  v17 = sub_220FC0FB0();
  v19 = v18;
  if (v17 == sub_220FC0FB0() && v19 == v20)
  {

    LODWORD(v23) = 1144750080;
  }

  else
  {
    v22 = sub_220FC3940();

    LODWORD(v23) = 1132068864;
    if (v22)
    {
      *&v23 = 750.0;
    }
  }

  [v1 setDisplayPriority_];
  [v1 setCollisionMode_];
  [v1 _setCalloutStyle_];
  v24 = sub_220F860C0();
  [v1 addSubview_];

  v25 = sub_220F86898();
  [v1 addSubview_];

  v26 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  sub_220F87F00(&v1[v26], v5, type metadata accessor for WeatherMapAnnotationViewModel);
  sub_220F8648C(v5);
  return sub_220F87F60(v5, type metadata accessor for WeatherMapAnnotationViewModel);
}

void sub_220F86EE8()
{
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_dataSource);
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_delegate);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView) = 0;
  sub_220FC3740();
  __break(1u);
}

double sub_220F86FB4()
{
  v1 = sub_220F86898();
  sub_220E9C770();
  OUTLINED_FUNCTION_17_0();

  v2 = sub_220F860C0();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  CGRectGetHeight(v12);
  sub_220F86834();
  return v0;
}

void sub_220F8709C()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v0 bounds];
  v2 = CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  v3 = CGRectGetHeight(v16) * 0.5;
  v4 = sub_220F860C0();
  [v4 setCenter_];

  v5 = sub_220F86898();
  sub_220E9C770();
  v7 = v6;

  v8 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel;
  v9 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel];
  [v9 bounds];
  [v9 setBounds_];

  v10 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView];
  v11 = *&v1[v8];
  [v10 frame];
  MaxY = CGRectGetMaxY(v17);
  [v11 setCenter_];

  v13 = *&v1[v8];
  [v13 frame];
  v19 = CGRectIntegral(v18);
  [v13 setFrame_];
}

double sub_220F87274(char a1, char a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setSelected_animated_, a1 & 1, a2 & 1);
  if ((a1 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_220F26698(v2);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_220F26790(v2, a1 & 1, a2 & 1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220F873F0()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  OUTLINED_FUNCTION_5_1(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel, v4);
  v2 = *(v1 + *(type metadata accessor for WeatherMapAnnotationViewModel(0) + 52));

  return v2;
}

uint64_t sub_220F874E0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel];
  OUTLINED_FUNCTION_5_1(&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel], v8);
  if (v2[26] == 1)
  {
    v3 = *&v2[*(type metadata accessor for WeatherMapAnnotationViewModel(0) + 56)];
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v7, sel_accessibilityValue);
    if (v4)
    {
      v5 = v4;
      v3 = sub_220FC2700();
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_220F875D4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a3)
  {
    sub_220FC2700();
  }

  v6 = a1;
  a4();
}

unint64_t sub_220F8767C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v6, sel_accessibilityTraits);
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  OUTLINED_FUNCTION_5_1(v2, v5);
  if (*(v2 + 26))
  {
    v3 = *MEMORY[0x277D76598];
  }

  else
  {
    v3 = 0;
  }

  return v3 | v1;
}

double sub_220F87754()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong accessibilityFrame];
    OUTLINED_FUNCTION_17_0();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, sel_accessibilityFrame);
    OUTLINED_FUNCTION_17_0();
  }

  return v1;
}

id sub_220F8784C()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = Strong, v4 = [Strong accessibilityPath], v3, !v4))
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_accessibilityPath);
  }

  return v4;
}

double sub_220F87980()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong accessibilityActivationPoint];
    OUTLINED_FUNCTION_17_0();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, sel_accessibilityActivationPoint);
    OUTLINED_FUNCTION_17_0();
  }

  return v1;
}

uint64_t type metadata accessor for WeatherMapAnnotationView(uint64_t a1)
{
  result = qword_2812C9B08;
  if (!qword_2812C9B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F87B74(uint64_t a1)
{
  result = type metadata accessor for WeatherMapAnnotationViewModel(319);
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

void *sub_220F87C8C()
{
  v1 = v0;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v2 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView;
  if (*&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView] && !sub_220F268BC(*&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation]))
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v3 = sub_220F26138(v0);
  v4 = *&v0[v2];
  *&v0[v2] = v3;

  v5 = [v0 isEnabled];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v5)
  {
    swift_unknownObjectWeakAssign();
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView;
  v7 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView];
  if (v7 && swift_unknownObjectWeakLoadStrong())
  {
    v8 = v7;
    sub_220F2671C(v8);

    swift_unknownObjectRelease();
  }

  v9 = *&v1[v6];
  v10 = v9;
  return v9;
}

uint64_t sub_220F87DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F87E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_220F87EAC()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  OUTLINED_FUNCTION_5_1(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel, v5);
  v2 = *(v1 + *(type metadata accessor for WeatherMapAnnotationViewModel(0) + 48));
  v3 = v2;
  return v2;
}

uint64_t sub_220F87F00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220F87F60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_220F87FCC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_35();
  MinX = CGRectGetMinX(v11);
  v9 = MinX;
  *&MinX = a1;
  v10 = *&MinX;
  v12.origin.x = OUTLINED_FUNCTION_6_0();
  MinY = CGRectGetMinY(v12);
  v13.origin.x = OUTLINED_FUNCTION_6_0();
  MaxX = CGRectGetMaxX(v13);
  v14.origin.x = OUTLINED_FUNCTION_6_0();
  MaxY = CGRectGetMaxY(v14);
  v4.f64[0] = MaxX;
  v4.f64[1] = MaxY;
  v5.f64[0] = v9;
  v5.f64[1] = MinY;
  *&result = vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4), vdupq_lane_s32(v10, 0)).u64[0];
  return result;
}

uint64_t sub_220F88060(void *a1)
{
  [a1 setRenderPipelineState_];
  sub_220F886CC(v1 + 16, &v4);
  if (v5[24] == 255)
  {
    return sub_220E832A0(&v4);
  }

  v6 = v4;
  v7[0] = *v5;
  *(v7 + 9) = *&v5[9];
  sub_220F880E4(a1, 1uLL);
  return sub_220E3FF0C(&v6);
}

void sub_220F880E4(void *a1, unint64_t a2)
{
  v3 = v2;
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  sub_220EF5194(v3, v7);
  switch(v8)
  {
    case 1:
      [a1 setFragmentTexture:v7[0] atIndex:a2];
      swift_unknownObjectRelease();
      break;
    case 2:
    case 3:
      sub_220E3FF0C(v7);
      break;
    case 4:
      [a1 setFragmentTexture:0 atIndex:a2];
      break;
    default:
      v6 = v7[0];
      break;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (HIDWORD(a2))
  {
    goto LABEL_12;
  }

  if (a2 == 4)
  {
    [a1 setFragmentBytes:&v6 length:4 atIndex:1];
  }
}

id sub_220F88234()
{
  OUTLINED_FUNCTION_5_35();
  sub_220F88060(v0);
  OUTLINED_FUNCTION_6_0();
  sub_220F87FCC(512);
  v1 = OUTLINED_FUNCTION_2_49();
  sub_220F880E4(v1, v2);
  v3 = OUTLINED_FUNCTION_1_69();
  [v3 v4];
  v5 = OUTLINED_FUNCTION_1_69();
  [v5 v6];
  v7 = OUTLINED_FUNCTION_1_69();
  return [v7 v8];
}

id sub_220F88340(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_4_45();
  sub_220F88060(v5);
  OUTLINED_FUNCTION_6_0();
  sub_220F87FCC(512);
  v6 = OUTLINED_FUNCTION_2_49();
  sub_220F880E4(v6, v7);
  sub_220F880E4(a4, 2uLL);
  v8 = OUTLINED_FUNCTION_1_69();
  [v8 v9];
  v10 = OUTLINED_FUNCTION_1_69();
  [v10 v11];
  v12 = OUTLINED_FUNCTION_1_69();
  return [v12 v13];
}

uint64_t sub_220F8843C()
{
  sub_220E832A0(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

double sub_220F884A0(void *a1)
{
  sub_220FC3200();
  v12 = v2;
  v10 = v4;
  v11 = v3;
  v9 = v5;

  v6.f64[0] = v10;
  v6.f64[1] = v9;
  v7.f64[0] = v12;
  v7.f64[1] = v11;
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v7), v6).u64[0];
  return result;
}

id sub_220F884F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  OUTLINED_FUNCTION_4_45();
  sub_220F88060(v11);
  OUTLINED_FUNCTION_6_0();
  sub_220F87FCC(512);
  v12 = OUTLINED_FUNCTION_2_49();
  sub_220F880E4(v12, v13);
  sub_220F880E4(a5, 2uLL);
  sub_220F880E4(a5, 3uLL);
  sub_220F880E4(a5, 4uLL);
  LODWORD(v23) = v8;
  v14 = OUTLINED_FUNCTION_3_46();
  [v14 v15];
  v16 = OUTLINED_FUNCTION_3_46();
  [v16 v17];
  v24 = *(v5 + 128);
  v18 = OUTLINED_FUNCTION_3_46();
  [v18 v19];
  LOBYTE(v25) = a4;
  v20 = OUTLINED_FUNCTION_3_46();
  return [v20 v21];
}

uint64_t sub_220F88644()
{
  sub_220E832A0(v0 + 16);
  swift_unknownObjectRelease();
  sub_220E3FF0C(v0 + 72);
  return v0;
}

uint64_t sub_220F88674()
{
  sub_220F88644();

  return MEMORY[0x2821FE8D8](v0, 144, 15);
}

uint64_t sub_220F886CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F3B0, &unk_220FC9AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F88764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030, &qword_220FD7310);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v5 - v2;
  sub_220E43574();
  return sub_220F739EC(v3);
}

void static WeatherMap.LocationAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29_2();
  v43 = v0;
  sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v41 = v2;
  v42 = v1;
  MEMORY[0x28223BE20](v1, v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v40 - v7;
  MEMORY[0x28223BE20](v9, v10);
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F800, &qword_220FD8200);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v40 - v25;
  v28 = *(v27 + 56);
  sub_220F8FF64();
  sub_220F8FF64();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_85();
      sub_220F8FF64();
      if (OUTLINED_FUNCTION_27_14() == 1)
      {
        v35 = v41;
        v34 = v42;
        (*(v41 + 32))(v8, &v26[v28], v42);
        sub_220FC1010();
        v36 = *(v35 + 8);
        v36(v8, v34);
        v36(v18, v34);
        goto LABEL_17;
      }

      v14 = v18;
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_0_85();
      sub_220F8FF64();
      if (OUTLINED_FUNCTION_27_14() != 2)
      {
        goto LABEL_13;
      }

      v29 = OUTLINED_FUNCTION_30_12();
      v30 = v42;
      v31(v29);
      sub_220FC1010();
      v32 = OUTLINED_FUNCTION_28_15();
      (v18)(v32);
      v33 = v14;
      goto LABEL_16;
    case 3u:
      if (OUTLINED_FUNCTION_27_14() == 3)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    case 4u:
      if (OUTLINED_FUNCTION_27_14() != 4)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_0_85();
      sub_220F8FF64();
      if (OUTLINED_FUNCTION_27_14())
      {
        v14 = v22;
LABEL_13:
        (*(v41 + 8))(v14, v42);
LABEL_14:
        sub_220E3B2DC(v26, &qword_27CF9F800, &qword_220FD8200);
      }

      else
      {
        v30 = v42;
        v37 = OUTLINED_FUNCTION_30_12();
        v38(v37);
        sub_220FC1010();
        v39 = OUTLINED_FUNCTION_28_15();
        (v18)(v39);
        v33 = v22;
LABEL_16:
        (v18)(v33, v30);
LABEL_17:
        OUTLINED_FUNCTION_14_25();
      }

      OUTLINED_FUNCTION_22();
      return;
  }
}

uint64_t static WeatherMap.Event.Overlay.== infix(_:_:)(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a1[7] >> 6;
  if (!v4)
  {
    v17 = v2 ^ v3 ^ 1;
    v18 = v3 >> 62 == 0;
LABEL_10:
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    return v19 & 1;
  }

  v5 = *(a2 + 3);
  v6 = *(a2 + 1);
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  if (v4 != 1)
  {
    if (v3 >> 62 == 2 && v3 == 0x8000000000000000)
    {
      v22 = vorrq_s8(v6, v5);
      if (!(v8 | *&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | v9 | v10 | v7))
      {
        v19 = 1;
        return v19 & 1;
      }
    }

    goto LABEL_17;
  }

  if (v3 >> 62 != 1)
  {
LABEL_17:
    v19 = 0;
    return v19 & 1;
  }

  v11 = *(a1 + 5);
  v12 = *(a1 + 6);
  v13 = *(a1 + 7);
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  v16 = *(a1 + 8);
  switch(v2)
  {
    case 5:
      if (*a2 != 5)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    case 4:
      if (*a2 != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    case 3:
      if (*a2 != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
  }

  v19 = 0;
  if ((v3 - 6) <= 0xFCu && v2 == v3)
  {
LABEL_27:
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v16, v6), vceqq_s64(v15, v5)))))
    {
      v17 = v12 == v8 && v13 == v9 && v14 == v10;
      v18 = v11 == v7;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  return v19 & 1;
}

uint64_t static WeatherMap.Event.== infix(_:_:)(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[7];
  v4 = *a2;
  v5 = (v3 >> 4) & 3;
  if (v5)
  {
    v6 = *(a1 + 1);
    v7 = *(a1 + 2);
    v8 = *(a1 + 1) | ((*(a1 + 5) | (v3 << 16)) << 32);
    v9 = *(a1 + 3);
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    v12 = *(a1 + 6);
    v14 = *(a1 + 7);
    v13 = *(a1 + 8);
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = a2[6];
    v22 = a2[7];
    v21 = a2[8];
    if (v5 == 1)
    {
      if ((v4 & 0x3000000000000000) == 0x1000000000000000)
      {
        v30 = v2;
        v31 = v8;
        v33 = (v8 & 0xFFCFFFFFFFFFFFFFLL) >> 48;
        v32 = (v8 & 0xFFCFFFFFFFFFFFFFLL) >> 32;
        v34 = v6;
        v35 = v7;
        v36 = v9;
        v37 = v10;
        v38 = v11;
        v39 = v12;
        v40 = v14;
        v41 = v13;
        v29[0] = v4 & 0xCFFFFFFFFFFFFFFFLL;
        v29[1] = v15;
        v29[2] = v16;
        v29[3] = v17;
        v29[4] = v18;
        v29[5] = v19;
        v29[6] = v20;
        v29[7] = v22;
        v29[8] = v21;
        v23 = static WeatherMap.Event.Overlay.== infix(_:_:)(&v30, v29);
        return v23 & 1;
      }
    }

    else
    {
      v24 = v7 | v6 | v9 | v10 | v11 | v12 | v14 | v13;
      if ((v2 | (v8 << 8)) == 0x2000000000000000 && v24 == 0)
      {
        if ((v4 & 0x3000000000000000) != 0x2000000000000000 || v4 != 0x2000000000000000)
        {
          goto LABEL_25;
        }
      }

      else if ((v4 & 0x3000000000000000) != 0x2000000000000000 || v4 != 0x2000000000000001)
      {
        goto LABEL_25;
      }

      if (!(v16 | v15 | v17 | v18 | v19 | v20 | v22 | v21))
      {
        v23 = 1;
        return v23 & 1;
      }
    }

LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  if ((v4 & 0x3000000000000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = v2 ^ v4 ^ 1;
  }

  return v23 & 1;
}

__n128 WeatherMap.displayMode.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 WeatherMap.displayMode.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t WeatherMap.preferredMapSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

uint64_t WeatherMap.selectedLocationId.getter()
{
  OUTLINED_FUNCTION_29_13();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  MEMORY[0x223D9B7E0](&v2, v0);
  return v2;
}

uint64_t WeatherMap.selectedLocationId.setter()
{
  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  return sub_220FC22A0();
}

void (*WeatherMap.selectedLocationId.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v4 = v1[9];
  v5 = v1[10];
  v3[12] = v4;
  v3[13] = v5;
  v7 = v1[11];
  v6 = v1[12];
  v3[14] = v7;
  v3[15] = v6;
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v7;
  v3[3] = v6;

  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  MEMORY[0x223D9B7E0]();
  return sub_220F890F8;
}

void sub_220F890F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_220FC22A0();
  }

  else
  {
    sub_220FC22A0();
  }

  free(v2);
}

uint64_t WeatherMap.$selectedLocationId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  sub_220FC22B0();
  return v1;
}

uint64_t WeatherMap.overlayKind.getter()
{
  OUTLINED_FUNCTION_24_17();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810, &qword_220FD8210);
  return MEMORY[0x223D9B7E0](v0);
}

uint64_t sub_220F89274@<X0>(_BYTE *a1@<X8>)
{
  result = WeatherMap.overlayKind.getter();
  *a1 = v3;
  return result;
}

double WeatherMap.overlayKind.setter(char *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810, &qword_220FD8210);
  sub_220FC22A0();

  return result;
}

void (*WeatherMap.overlayKind.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v3[6] = v4;
  v3[7] = v5;
  v6 = *(v1 + 120);
  *(v3 + 19) = v6;
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 16) = v6;

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810, &qword_220FD8210);
  MEMORY[0x223D9B7E0]();
  return sub_220F89404;
}

void sub_220F89404(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_220FC22A0();

  free(v1);
}

void *WeatherMap.$overlayKind.getter()
{
  OUTLINED_FUNCTION_24_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810, &qword_220FD8210);
  return sub_220FC22B0();
}

void WeatherMap.cacheIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

uint64_t sub_220F895B0()
{
  v1 = sub_220FC1CD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 184);
  if (*(v0 + 192) == 1)
  {
  }

  else
  {

    sub_220FC2E20();
    v7 = sub_220FC1EE0();
    sub_220FC16C0();

    sub_220FC1CC0();
    swift_getAtKeyPath(&v11);
    v8 = sub_220F8FFBC(v6, 0);
    (*(v2 + 8))(v5, v1, v8);
    return v11;
  }

  return v6;
}

double sub_220F89700()
{
  v1 = sub_220FC1CD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 216);
  if (*(v0 + 224) == 1)
  {
    return *(v0 + 216);
  }

  sub_220FC2E20();
  v8 = sub_220FC1EE0();
  sub_220FC16C0();

  sub_220FC1CC0();
  swift_getAtKeyPath(&v10);
  sub_220E2C4C4(v6, 0);
  (*(v2 + 8))(v5, v1);
  return v10;
}

uint64_t sub_220F8984C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220FC1CD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_220E43574();
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_220FC2E20();
    v9 = sub_220FC1EE0();
    sub_220FC16C0();

    sub_220FC1CC0();
    swift_getAtKeyPath(a1);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_220F899BC@<X0>(void *a1@<X8>)
{
  v2 = sub_220FC1CD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818, &qword_220FD82C0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - v9;
  type metadata accessor for WeatherMap(0);
  sub_220E43574();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_220F90F5C(v10, a1);
  }

  sub_220FC2E20();
  v12 = sub_220FC1EE0();
  sub_220FC16C0();

  sub_220FC1CC0();
  swift_getAtKeyPath(a1);

  return (*(v3 + 8))(v6, v2);
}

double WeatherMap.init(displayMode:startsFocused:preferredMapSize:locations:overlayKind:selectedLocationId:weatherData:options:cacheIdentifier:isPreferredForCachedInstance:debugIdentifier:)@<D0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  v22 = *a7;
  v21 = a7[1];
  v23 = *(a7 + 16);
  *(a9 + 184) = swift_getKeyPath();
  *(a9 + 192) = 0;
  sub_220FC12B0();
  OUTLINED_FUNCTION_3_47();
  sub_220F90264(v24, v25, MEMORY[0x277D6CCD8]);
  v36 = a1[1];
  v37 = *a1;
  *(a9 + 200) = sub_220FC1BF0();
  *(a9 + 208) = v26;
  *(a9 + 216) = swift_getKeyPath();
  *(a9 + 224) = 0;
  *(a9 + 232) = swift_getKeyPath();
  *(a9 + 272) = 0;
  v27 = type metadata accessor for WeatherMap(0);
  v28 = v27[19];
  *(a9 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818, &qword_220FD82C0);
  swift_storeEnumTagMultiPayload();
  v29 = a9 + v27[20];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  v30 = (a9 + v27[21]);
  type metadata accessor for CachingBannerViewControllerFactory();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_33_9(v31);
  v42[0] = v32;
  sub_220FC2260();
  v33 = *(&v43 + 1);
  *v30 = v43;
  v30[1] = v33;
  *(a9 + 104) = v22;
  *(a9 + 112) = v21;
  *(a9 + 120) = v23;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *a9 = v37;
  *(a9 + 16) = v36;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5 & 1;
  *(a9 + 64) = a6;
  *(a9 + 72) = a8;
  *(a9 + 128) = a12;
  *(a9 + 144) = a13;
  *(a9 + 152) = a14;
  *(a9 + 160) = a15;
  *(a9 + 168) = a16;
  *(a9 + 176) = a17;
  v34 = (a9 + v27[22]);
  *v34 = 0;
  v34[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F820, &qword_220FD82F0);
  sub_220FC2270();
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  OUTLINED_FUNCTION_32_2(v42[0] + 16, v42);
  sub_220E563B0();
  swift_endAccess();

  return result;
}

double WeatherMap.init<A, B>(displayMode:startsFocused:locations:overlayKind:selectedLocationId:weatherData:options:cacheIdentifier:isPreferredForCachedInstance:debugIdentifier:supplementaryOverlay:contentStatusBanner:)@<D0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v44 = a4[1];
  v45 = *a4;
  v28 = *(a4 + 16);
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = 1;
  *(a9 + 184) = swift_getKeyPath();
  *(a9 + 192) = 0;
  sub_220FC12B0();
  OUTLINED_FUNCTION_3_47();
  sub_220F90264(v29, v30, MEMORY[0x277D6CCD8]);
  v42 = a1[1];
  v43 = *a1;
  *(a9 + 200) = sub_220FC1BF0();
  *(a9 + 208) = v31;
  *(a9 + 216) = swift_getKeyPath();
  *(a9 + 224) = 0;
  *(a9 + 232) = swift_getKeyPath();
  *(a9 + 272) = 0;
  v32 = type metadata accessor for WeatherMap(0);
  v33 = v32[19];
  *(a9 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818, &qword_220FD82C0);
  swift_storeEnumTagMultiPayload();
  v34 = a9 + v32[20];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = (a9 + v32[21]);
  type metadata accessor for CachingBannerViewControllerFactory();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_33_9(v36);
  v50[0] = v37;
  sub_220FC2260();
  v38 = v52;
  *v35 = v51;
  v35[1] = v38;
  *(a9 + 120) = v28;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 104) = v45;
  *(a9 + 112) = v44;
  *(a9 + 96) = a8;
  *a9 = v43;
  *(a9 + 16) = v42;
  *(a9 + 32) = a2;
  *(a9 + 64) = a3;
  *(a9 + 72) = a5;
  *(a9 + 128) = a10;
  *(a9 + 144) = a11;
  *(a9 + 152) = a12;
  *(a9 + 160) = a13;
  *(a9 + 168) = a14;
  *(a9 + 176) = a15;
  v39 = swift_allocObject();
  *(v39 + 2) = a20;
  *(v39 + 3) = a21;
  *(v39 + 4) = a22;
  *(v39 + 5) = a23;
  *(v39 + 6) = a24;
  *(v39 + 7) = a16;
  *(v39 + 8) = a17;
  v40 = (a9 + v32[22]);
  *v40 = sub_220F8EFC8;
  v40[1] = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F820, &qword_220FD82F0);
  sub_220FC2270();
  v53 = type metadata accessor for ClosureBackedBannerViewFactory(0, a21, a23, a24);
  WitnessTable = swift_getWitnessTable();

  v51 = a18;
  v52 = a19;
  OUTLINED_FUNCTION_32_2(v50[0] + 16, v50);
  sub_220E563B0();
  swift_endAccess();

  return result;
}

uint64_t sub_220F8A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v17 - v12;
  v14(v11);
  sub_220FC1DA0();
  (*(v6 + 16))(v8, v13, a3);
  v15 = sub_220FC1D90();
  (*(v6 + 8))(v13, a3);
  return v15;
}

void *WeatherMap.makeCoordinator()()
{
  v18 = *(v0 + 8);
  v19 = *v0;
  v16 = *(v0 + 24);
  v17 = *(v0 + 16);
  v15 = *(v0 + 32);
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  v3 = *(v0 + 128);

  v4 = sub_220F895B0();
  v5 = sub_220F89700();
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  *&v25 = *(v0 + 104);
  *(&v25 + 1) = v7;
  LOBYTE(v26) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810, &qword_220FD8210);
  sub_220FC22B0();
  v9 = *(v0 + 80);
  *&v25 = *(v0 + 72);
  *(&v25 + 1) = v9;
  v26 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  sub_220FC22B0();
  v25 = v23;
  LOBYTE(v26) = v24;
  *(&v26 + 1) = v20;
  v27 = v21;
  v28 = v22;
  v10 = *(v0 + 200);
  if (v10)
  {
    type metadata accessor for WeatherMap.Coordinator();
    v11 = swift_allocObject();

    return sub_220F8F388(v19, v18, v17, v16, v15, v1, v2, v3, v5, v4, v6, &v25, v10, v11);
  }

  else
  {
    sub_220FC12B0();
    OUTLINED_FUNCTION_3_47();
    sub_220F90264(v13, v14, MEMORY[0x277D6CCD8]);
    result = sub_220FC1BE0();
    __break(1u);
  }

  return result;
}

void sub_220F8A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_36_10();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = *v26;
  v31 = *(v26 + 8);
  v33 = *(v26 + 16);
  v34 = *(v26 + 24);
  v35 = *(v26 + 32);
  v36 = *(v26 + 40);
  v37 = *(v26 + 48);
  a11 = *v26;
  a12 = v31;
  LOBYTE(a13) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810, &qword_220FD8210);
  MEMORY[0x223D9B7E0](&a9);
  v38 = *(v30 + 48);
  switch(a9)
  {
    case 5u:
      if (v38 != 5)
      {
        goto LABEL_7;
      }

      break;
    case 4u:
      if (v38 == 4)
      {
        break;
      }

      goto LABEL_7;
    case 3u:
      if (v38 == 3)
      {
        break;
      }

LABEL_7:
      a11 = v32;
      a12 = v31;
      LOBYTE(a13) = v33;
      LOBYTE(a9) = v38;

      sub_220FC22A0();

      break;
    default:
      if (a9 != v38 || (v38 - 6) >= 0xFFFFFFFD)
      {
        goto LABEL_7;
      }

      break;
  }

  a11 = v34;
  a12 = v35;
  a13 = v36;
  a14 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  MEMORY[0x223D9B7E0](&a9);
  v40 = a9;
  v39 = a10;
  v41 = (v30 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 36));
  v43 = *v41;
  v42 = v41[1];
  if (v39)
  {
    if (v42)
    {
      if (v40 == v43 && v39 == v42)
      {

        goto LABEL_28;
      }

      v45 = sub_220FC3940();

      if (v45)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  else if (!v42)
  {
    goto LABEL_28;
  }

  a11 = v34;
  a12 = v35;
  a13 = v36;
  a14 = v37;
  a9 = v43;
  a10 = v42;

  sub_220FC22A0();
LABEL_28:
  OUTLINED_FUNCTION_37_8();
}

BOOL sub_220F8A674(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 != 0);
  return OUTLINED_FUNCTION_8_31(v2);
}

BOOL sub_220F8A6A0(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 != 3);
  return OUTLINED_FUNCTION_8_31(v2);
}

double sub_220F8A6CC(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = (v1 + 16);
    v4 = *v1;
    v1 += 16;
    if ((v4 & 1) == 0)
    {
      return *(v3 - 3);
    }
  }

  return 0.0;
}

BOOL sub_220F8A700(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 != 1);
  return OUTLINED_FUNCTION_8_31(v2);
}

BOOL sub_220F8A72C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 < 4);
  return v2 == 0;
}

double sub_220F8A760(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 24);
    v13 = *(Strong + 32);
    LOBYTE(v14) = *(Strong + 40);
    v15 = *(Strong + 48);
    v16 = *(Strong + 56);
    v17 = *(Strong + 64);
    v18 = *(Strong + 72);

    sub_220F8A4B4(a1, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  return result;
}

void *WeatherMap.Coordinator.deinit()
{

  return v0;
}

uint64_t WeatherMap.Coordinator.__deallocating_deinit()
{
  WeatherMap.Coordinator.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

void WeatherMap.makeUIViewController(context:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v39 = v1;
  v3 = type metadata accessor for WeatherMap(0);
  v4 = OUTLINED_FUNCTION_29(v3);
  v6 = v5;
  v48 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_32_13();
  v42 = v9;
  MEMORY[0x28223BE20](v10, v11);
  v37[1] = v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830, &qword_220FD8300);
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_32_13();
  v40 = v18;
  v37[4] = v19;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = v37 - v23;
  v25 = *(v0 + 144);
  v26 = *(v0 + 152);
  v46 = *(v0 + 168);
  v47 = v25;
  v27 = *(v0 + 176);
  v43 = v26;
  v44 = v27;
  v45 = *(v0 + 160);
  v38 = *(v15 + 16);
  v38(v37 - v23, v2, v13, v22);
  v37[2] = type metadata accessor for WeatherMap;
  sub_220F8FF64();
  v28 = *(v15 + 80);
  v29 = *(v6 + 80);
  v37[3] = v28 | v29;
  v30 = swift_allocObject();
  v31 = *(v15 + 32);
  v41 = v30;
  v31(v30 + ((v28 + 16) & ~v28), v24, v13);
  sub_220F90F04();
  sub_220F8FF64();
  v32 = v40;
  (v38)(v40, v39, v13);
  v33 = (v48 + v28 + ((v29 + 16) & ~v29)) & ~v28;
  v34 = swift_allocObject();
  sub_220F90F04();
  v31(v34 + v33, v32, v13);
  objc_allocWithZone(type metadata accessor for WeatherMapCachingViewController());
  v35 = v43;

  v36 = v44;

  sub_220F8D7C8(v47, v35, v46, v36, v45, sub_220F8FFC8, v41, sub_220F9008C, v34);
  OUTLINED_FUNCTION_22();
}

id sub_220F8AC34(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WeatherMap(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830, &qword_220FD8300);
  sub_220FC1EC0();
  v5 = *(v10 + 16);

  v6 = *(a2 + 200);
  if (v6)
  {
    sub_220F8FF64();
    v7 = swift_allocObject();
    sub_220F90F04();
    v8 = objc_allocWithZone(type metadata accessor for WeatherMapViewController(0));

    return sub_220F91154(v5, v6, sub_220F91100, v7, v8);
  }

  else
  {
    sub_220FC12B0();
    sub_220F90264(&qword_2812C5F48, MEMORY[0x277D6CCE8], MEMORY[0x277D6CCD8]);
    result = sub_220FC1BE0();
    __break(1u);
  }

  return result;
}

void sub_220F8AE1C(char *a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80, &unk_220FC9670);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v53 = v51 - v7;
  v52 = type metadata accessor for WeatherMapOverlay(0);
  MEMORY[0x28223BE20](v52, v8);
  v51[1] = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WeatherMap(0);
  MEMORY[0x28223BE20](v10, v11);
  sub_220F8FF64();
  v12 = swift_allocObject();
  sub_220F90F04();
  v13 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  v14 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  v15 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController + 8];
  *v13 = sub_220F90FCC;
  *(v13 + 1) = v12;
  sub_220E2DD2C(v14, v15);
  sub_220F8FF64();
  v16 = swift_allocObject();
  sub_220F90F04();
  v17 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  v18 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  v19 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler + 8];
  *v17 = sub_220F91018;
  *(v17 + 1) = v16;
  sub_220E2DD2C(v18, v19);
  sub_220F8FF64();
  v20 = swift_allocObject();
  sub_220F90F04();
  v21 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  v22 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  v23 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler + 8];
  *v21 = sub_220F9106C;
  v21[1] = v20;
  sub_220E2DD2C(v22, v23);
  sub_220F8FF64();
  v24 = swift_allocObject();
  sub_220F90F04();
  v25 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  v26 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  v27 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler + 8];
  *v25 = sub_220F91084;
  v25[1] = v24;
  sub_220E2DD2C(v26, v27);
  sub_220F8FF64();
  v28 = swift_allocObject();
  sub_220F90F04();
  v29 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  v30 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  v31 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler + 8];
  *v29 = sub_220F914D4;
  *(v29 + 1) = v28;
  sub_220E2DD2C(v30, v31);
  sub_220F8984C(&v55);
  v32 = v56;
  if (v56)
  {
    v33 = v57;
    __swift_project_boxed_opaque_existential_1(&v55, v56);
    v34 = (*(v33 + 24))(v32, v33);
    v36 = v35;
    v37 = __swift_destroy_boxed_opaque_existential_0(&v55);
    if (v34)
    {
      ObjectType = swift_getObjectType();
      v39 = *(v36 + 16);
      v40 = swift_unknownObjectRetain();
      v39(v40, &protocol witness table for WeatherMapViewController, ObjectType, v36);
      v37 = swift_unknownObjectRelease();
    }
  }

  else
  {
    v37 = sub_220E3B2DC(&v55, &qword_27CF9F868, &unk_220FD84D0);
  }

  v41 = *(a2 + *(v10 + 88));
  if (v41)
  {
    v42 = v41(v37);
  }

  else
  {
    v42 = 0;
  }

  sub_220E78EB0(v42);
  v43 = (a2 + *(v10 + 84));
  v45 = *v43;
  v44 = v43[1];
  *&v55 = v45;
  *(&v55 + 1) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F820, &qword_220FD82F0);
  sub_220FC2270();
  v46 = sub_220F8B6F0();

  sub_220E78F10(v46);

  swift_beginAccess();
  type metadata accessor for WeatherMapStore.ViewModel(0);
  v47 = v53;
  sub_220E43574();
  if (__swift_getEnumTagSinglePayload(v47, 1, v52) == 1)
  {
    sub_220E3B2DC(v47, &unk_27CF9EB80, &unk_220FC9670);
  }

  else
  {
    sub_220F90F04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830, &qword_220FD8300);
    sub_220FC1EC0();

    sub_220F31868();

    sub_220F901C8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830, &qword_220FD8300);
  sub_220FC1EC0();
  v48 = *(v55 + 16);

  sub_220E78AD0(v48);
  v49 = *(a2 + 200);
  if (v49)
  {
    v56 = sub_220FC12B0();
    v57 = MEMORY[0x277D6CCE0];
    *&v55 = v49;
    v50 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resolver;
    swift_beginAccess();

    __swift_destroy_boxed_opaque_existential_0(&a1[v50]);
    sub_220E1E72C(&v55, &a1[v50]);
    swift_endAccess();
    sub_220F8BA04(a1, 1, 0);
  }

  else
  {
    sub_220FC12B0();
    sub_220F90264(&qword_2812C5F48, MEMORY[0x277D6CCE8], MEMORY[0x277D6CCD8]);
    sub_220FC1BE0();
    __break(1u);
  }
}

uint64_t sub_220F8B51C(const void *a1)
{
  v2 = sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  memcpy(__dst, a1, sizeof(__dst));
  sub_220E43574();
  if (v17[40] == 1)
  {
    v18 = *v17;
    v19 = *&v17[16];
    v20 = *&v17[32];
  }

  else
  {
    sub_220FC2E20();
    v10 = sub_220FC1EE0();
    OUTLINED_FUNCTION_40_5(v10, &dword_220E15000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

    sub_220FC1CC0();
    swift_getAtKeyPath(&v18);

    (*(v4 + 8))(v9, v2);
  }

  v14 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
    return sub_220E3B2DC(&v18, &qword_27CF9F868, &unk_220FD84D0);
  }

  v15 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  memcpy(v17, __dst, sizeof(v17));
  (*(v15 + 56))(v17, v14, v15);
  return __swift_destroy_boxed_opaque_existential_0(&v18);
}

void *sub_220F8B6F0()
{
  v1 = v0;
  swift_beginAccess();
  sub_220E43574();
  if (AssociatedTypeWitness)
  {
    sub_220E1E72C(&v24, v28);
    v2 = v29;
    v3 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v4 = *(v3 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v24);
    v4(v2, v3);
    swift_beginAccess();
    sub_220E43574();
    if (v20)
    {
      sub_220F90EC4(&v19, v21);
      v5 = *(v0 + 104);
      if (v5)
      {
        v6 = v22;
        v7 = v23;
        v8 = __swift_project_boxed_opaque_existential_1(v21, v22);
        v9 = v5;
        if ((sub_220F8EC34(v8, &v24, v6, v7) & 1) == 0)
        {
          v10 = v29;
          v11 = v30;
          __swift_project_boxed_opaque_existential_1(v28, v29);
          v5 = sub_220F8EB04(v10, v11);

          sub_220F90E60(&v24, &v19);
          swift_beginAccess();
          sub_220E563B0();
          swift_endAccess();
          v12 = *(v1 + 104);
          *(v1 + 104) = v5;
          v13 = v5;
        }

        __swift_destroy_boxed_opaque_existential_0(v21);
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    else
    {
      sub_220E3B2DC(&v19, &qword_27CF9F908, &qword_220FD86F8);
    }

    v14 = v29;
    v15 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v5 = sub_220F8EB04(v14, v15);
    sub_220F90E60(&v24, v21);
    swift_beginAccess();
    sub_220E563B0();
    swift_endAccess();
    v16 = *(v1 + 104);
    *(v1 + 104) = v5;
    v17 = v5;

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(&v24);
    __swift_destroy_boxed_opaque_existential_0(v28);
    return v5;
  }

  sub_220E3B2DC(&v24, &qword_27CF9F828, &qword_220FD82F8);
  return 0;
}

void sub_220F8BA04(char *a1, char a2, char a3)
{
  v4 = v3;
  v63 = type metadata accessor for WeatherMap(0);
  MEMORY[0x28223BE20](v63, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE60, &qword_220FD3DB8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE68, &qword_220FD8700);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v62 - v15;
  v64 = v3;
  v65 = a2;
  v66 = a3;

  sub_220F32468(sub_220F90C44);

  v17 = [a1 view];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  sub_220FC18B0();
  v19 = sub_220FC18C0();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  sub_220FC18D0();
  sub_220E3B2DC(v12, &qword_27CF9EE60, &qword_220FD3DB8);
  v20 = sub_220FC18E0();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
  sub_220FC31E0();

  sub_220F8FF64();
  v21 = swift_allocObject();
  sub_220F90F04();
  v22 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  v23 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  v24 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController + 8];
  *v22 = sub_220F914C0;
  *(v22 + 1) = v21;
  sub_220E2DD2C(v23, v24);
  sub_220F8FF64();
  v25 = swift_allocObject();
  sub_220F90F04();
  v26 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  v27 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  v28 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler + 8];
  *v26 = sub_220F914C8;
  *(v26 + 1) = v25;
  sub_220E2DD2C(v27, v28);
  sub_220F8FF64();
  v29 = swift_allocObject();
  sub_220F90F04();
  v30 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  v31 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  v32 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler + 8];
  *v30 = sub_220F914CC;
  *(v30 + 1) = v29;
  sub_220E2DD2C(v31, v32);
  sub_220F8FF64();
  v33 = swift_allocObject();
  sub_220F90F04();
  v34 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  v35 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  v36 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler + 8];
  *v34 = sub_220F914D0;
  *(v34 + 1) = v33;
  sub_220E2DD2C(v35, v36);
  sub_220F8FF64();
  v37 = swift_allocObject();
  sub_220F90F04();
  v38 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  v39 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  v40 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler + 8];
  *v38 = sub_220F914D4;
  *(v38 + 1) = v37;
  sub_220E2DD2C(v39, v40);
  v41 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize];
  v42 = *(v4 + 40);
  v43 = *(v4 + 48);
  v44 = *(v4 + 56);
  if (a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize + 16])
  {
    if (*(v4 + 56))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 56) & 1) == 0 && *v41 == v42 && *(v41 + 1) == v43)
  {
    goto LABEL_11;
  }

  *v41 = v42;
  *(v41 + 1) = v43;
  v41[16] = v44;
  sub_220E78B2C();
LABEL_11:
  sub_220F8984C(v67);
  v46 = v68;
  if (v68)
  {
    v47 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v48 = (*(v47 + 24))(v46, v47);
    v50 = v49;
    v51 = __swift_destroy_boxed_opaque_existential_0(v67);
    if (v48)
    {
      ObjectType = swift_getObjectType();
      v53 = *(v50 + 16);
      v54 = swift_unknownObjectRetain();
      v53(v54, &protocol witness table for WeatherMapViewController, ObjectType, v50);
      v51 = swift_unknownObjectRelease();
    }
  }

  else
  {
    v51 = sub_220E3B2DC(v67, &qword_27CF9F868, &unk_220FD84D0);
  }

  v55 = v63;
  v56 = *(v4 + *(v63 + 88));
  if (v56)
  {
    v57 = v56(v51);
  }

  else
  {
    v57 = 0;
  }

  sub_220E78EB0(v57);
  v58 = (v4 + *(v55 + 84));
  v60 = *v58;
  v59 = v58[1];
  v67[0] = v60;
  v67[1] = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F820, &qword_220FD82F0);
  sub_220FC2270();
  v61 = sub_220F8B6F0();

  sub_220E78F10(v61);
}

void WeatherMap.updateUIViewController(_:context:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v3 = sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if ((*(v0 + 16) & 0x8000000000000000) == 0)
  {
    v11 = v0 + *(type metadata accessor for WeatherMap(0) + 80);
    v12 = *v11;
    if (*(v11 + 8) == 1)
    {
      if (v12)
      {
        goto LABEL_13;
      }
    }

    else
    {

      sub_220FC2E20();
      v13 = sub_220FC1EE0();
      sub_220FC16C0();

      sub_220FC1CC0();
      swift_getAtKeyPath(&v24);
      sub_220E2C4C4(v12, 0);
      (*(v5 + 8))(v10, v3);
      if (v24)
      {
        goto LABEL_13;
      }
    }
  }

  v14 = *(v0 + 152);
  v15 = &v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier];
  *v15 = *(v0 + 144);
  v15[1] = v14;

  v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_isPreferredForCachedInstance] = *(v0 + 160);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [v2 childViewControllers];
    sub_220F90184();
    v19 = sub_220FC2970();

    v20 = sub_220F40C10(v19);

    if (v20)
    {
      v21 = *&v17[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830, &qword_220FD8300);
      sub_220FC1EC0();
      v22 = *(v25 + 16);

      if (v21 == v22)
      {
        sub_220FC1ED0();
        v23 = sub_220FC1AF0();

        if (v23)
        {
        }

        sub_220F8BA04(v17, 0, v23 != 0);
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_22();
}

void sub_220F8C298(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v113 = a4;
  LODWORD(v118) = a3;
  v116 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
  MEMORY[0x28223BE20](v116, v6);
  v108 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F920, &qword_220FD8718);
  MEMORY[0x28223BE20](v115, v8);
  v117 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030, &qword_220FD7310);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v112 = (&v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v14);
  v110 = &v106 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v119 = (&v106 - v18);
  v19 = type metadata accessor for InteractiveFocus(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v114 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v122, v22);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v120 = &v106 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v106 - v30;
  v32 = a1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  v33 = *(v32 + 40);

  sub_220F35194();
  if ((v34 & 1) == 0)
  {
    sub_220F32C58();
  }

  v121 = a1;
  v36 = *(a2 + 72);
  v35 = *(a2 + 80);
  v38 = *(a2 + 88);
  v37 = *(a2 + 96);
  v125 = v36;
  v126 = v35;
  v127 = v38;
  v128 = v37;
  v111 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  v40 = MEMORY[0x223D9B7E0](&v123);
  v42 = (v32 + v122[9]);
  v43 = v42[1];
  if (v124)
  {
    if (v43)
    {
      if (v123 == *v42 && v124 == v43)
      {
      }

      else
      {
        v109 = v38;
        v45 = sub_220FC3940();

        if ((v45 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_19:

      v49 = v122;
      goto LABEL_20;
    }

    v109 = v38;
  }

  else
  {
    v109 = v38;
    if (!v43)
    {
      goto LABEL_19;
    }
  }

LABEL_14:
  if (*(v33 + 16))
  {
    v107 = &v106;
    MEMORY[0x28223BE20](v40, v41);
    *(&v106 - 2) = a2;
    v46 = sub_220F7788C(sub_220F90EDC, (&v106 - 4), v33);

    LODWORD(v107) = !v46;
  }

  else
  {

    LODWORD(v107) = 0;
  }

  v125 = v36;
  v126 = v35;
  v127 = v109;
  v128 = v111;
  MEMORY[0x223D9B7E0](&v123, v39);
  v48 = v123;
  v47 = v124;
  sub_220F8FF64();
  v49 = v122;
  v50 = &v31[v122[9]];
  swift_bridgeObjectRetain_n();

  *v50 = v48;
  *(v50 + 1) = v47;
  v51 = v114;
  sub_220F319DC();
  sub_220F347F0(v51, &v31[v49[11]]);
  v31[v49[12]] = 1;
  v31[v49[18]] = (v118 & 1) == 0;
  v52 = v120;
  sub_220F8FF64();
  sub_220F3196C(v52);
  sub_220F901C8();
  swift_bridgeObjectRelease_n();
LABEL_20:
  v54 = *a2;
  v53 = *(a2 + 8);
  v55 = *(a2 + 16);
  v57 = *v32;
  v56 = *(v32 + 8);
  v58 = *(v32 + 16);
  if (v55 < 0)
  {
    if (v58 < 0)
    {
      if (LOBYTE(v53))
      {
LABEL_26:
        if (LOBYTE(v56))
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (!(LOBYTE(v56) & 1 | (v54 != v57)))
      {
        goto LABEL_43;
      }
    }
  }

  else if ((v58 & 0x8000000000000000) == 0)
  {
    v59 = *(v32 + 24);
    v60 = *(a2 + 24);
    if ((v55 & 1) == 0)
    {
      if ((v58 & 1) == 0)
      {
        v61 = v54 == v57 && v53 == v56;
        if (v61 && v60 == v59)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_39;
    }

    LOBYTE(v56) = v58 & (v60 == v59);
    goto LABEL_26;
  }

LABEL_39:
  v63 = *(a2 + 24);
  v64 = (v118 ^ 1) & v113;
  sub_220F8FF64();
  if (v55 < 0 && (*(v24 + 2) & 0x8000000000000000) == 0)
  {
    v118 = a2;
    v65 = v31;
    v66 = v32;
    v67 = v53;
    v68 = v114;
    sub_220F319DC();
    v69 = v122;
    v70 = v68;
    v53 = v67;
    v32 = v66;
    v31 = v65;
    a2 = v118;
    sub_220F347F0(v70, &v24[v122[11]]);
    v24[v69[12]] = 1;
  }

  *v24 = v54;
  *(v24 + 1) = v53;
  *(v24 + 2) = v55;
  *(v24 + 3) = v63;
  v71 = v64 & 1;
  v49 = v122;
  v24[v122[18]] = v71;
  sub_220F8FF64();
  sub_220F3196C(v31);
  sub_220F901C8();
LABEL_43:
  v72 = *(a2 + 112);
  v73 = *(a2 + 120);
  v125 = *(a2 + 104);
  v126 = v72;
  LOBYTE(v127) = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810, &qword_220FD8210);
  MEMORY[0x223D9B7E0](&v123);
  v75 = *(v32 + 48);
  if (v123 == 5)
  {
    v76 = v117;
    v77 = v119;
    if (v75 != 5)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v76 = v117;
    v77 = v119;
    if (v123 == 4)
    {
      if (v75 == 4)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (v123 == 3)
    {
      if (v75 == 3)
      {
        goto LABEL_50;
      }

LABEL_49:
      v78 = *(a2 + 112);
      v79 = *(a2 + 120);
      v125 = *(a2 + 104);
      v126 = v78;
      LOBYTE(v127) = v79;
      MEMORY[0x223D9B7E0](&v123, v74);
      LOBYTE(v125) = v123;
      sub_220F317A4(&v125);
      goto LABEL_50;
    }

    if (v123 != v75 || (v75 - 6) >= 0xFFFFFFFD)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v122 = *(a2 + 136);
  v80 = sub_220F8CF50(v122);
  if (v80 != *(v32 + v49[15]))
  {
    sub_220F8FF64();
    v31[v49[15]] = v80;
    v81 = v120;
    sub_220F8FF64();
    sub_220F3196C(v81);
    sub_220F901C8();
  }

  v82 = *(a2 + 160);
  if (v82 != *(v32 + v49[25]))
  {
    sub_220F8FF64();
    v31[v49[25]] = v82;
    v83 = v120;
    sub_220F8FF64();
    sub_220F3196C(v83);
    sub_220F901C8();
  }

  v84 = *(a2 + 128);
  v85 = *(v32 + v49[10]);
  if (!v84)
  {
    if (!v85)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (!v85 || (, v86 = , sub_220F17768(v86, v85), v88 = v87, , , (v88 & 1) == 0))
  {
LABEL_59:
    sub_220F330CC(v84);
  }

LABEL_60:
  sub_220F899BC(v77);
  v89 = *(v115 + 48);
  sub_220E43574();
  sub_220E43574();
  v90 = v116;
  if (__swift_getEnumTagSinglePayload(v76, 1, v116) == 1)
  {
    sub_220E3B2DC(v77, &qword_27CF9F030, &qword_220FD7310);
    if (__swift_getEnumTagSinglePayload(v76 + v89, 1, v90) == 1)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v91 = v110;
  sub_220E43574();
  if (__swift_getEnumTagSinglePayload(v76 + v89, 1, v90) == 1)
  {
    sub_220E3B2DC(v119, &qword_27CF9F030, &qword_220FD7310);
    sub_220F901C8();
LABEL_65:
    sub_220E3B2DC(v76, &qword_27CF9F920, &qword_220FD8718);
LABEL_66:
    v76 = v112;
    v92 = sub_220F899BC(v112);
    MEMORY[0x28223BE20](v92, v93);
    *(&v106 - 2) = v76;
    sub_220F32B5C(sub_220F90EFC);
LABEL_67:
    sub_220E3B2DC(v76, &qword_27CF9F030, &qword_220FD7310);
    goto LABEL_68;
  }

  v103 = v108;
  sub_220F90F04();
  v104 = static WeatherMapPerformanceTestConditions.== infix(_:_:)(v91, v103);
  sub_220F901C8();
  sub_220E3B2DC(v119, &qword_27CF9F030, &qword_220FD7310);
  sub_220F901C8();
  sub_220E3B2DC(v76, &qword_27CF9F030, &qword_220FD7310);
  if (!v104)
  {
    goto LABEL_66;
  }

LABEL_68:
  v94 = sub_220F895B0();
  v95 = *(v32 + v49[13]);

  sub_220F17BE4(v94, v95);
  v97 = v96;

  if ((v97 & 1) == 0)
  {
    v98 = sub_220F895B0();
    sub_220F33130(v98);
  }

  v99 = sub_220F8A674(v122);
  v100 = v49[22];
  if (v99 != *(v32 + v100))
  {
    *(v32 + v100) = v99;
    sub_220F318B0();
  }

  v101 = sub_220F8A72C(v122);
  v102 = v49[21];
  if (v101 != *(v32 + v102))
  {
    *(v32 + v102) = v101;
    sub_220F318B0();
  }
}

uint64_t sub_220F8CE64(uint64_t a1, uint64_t a2)
{
  v3 = sub_220FC1020();
  v5 = v4;
  v6 = *(a2 + 80);
  v13 = *(a2 + 72);
  v14 = v6;
  v15 = *(a2 + 88);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808, &qword_220FD8208);
  MEMORY[0x223D9B7E0](&v11, v7);
  if (v12)
  {
    if (v3 == v11 && v12 == v5)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_220FC3940();
    }
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_220F8CF50(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 != 2);
  return OUTLINED_FUNCTION_8_31(v2);
}

uint64_t sub_220F8CF7C()
{
  v0 = sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  sub_220E43574();
  if (v18 == 1)
  {
    v19 = v15;
    v20 = v16;
    v21 = v17;
  }

  else
  {
    sub_220FC2E20();
    v8 = sub_220FC1EE0();
    OUTLINED_FUNCTION_40_5(v8, &dword_220E15000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_220FC1CC0();
    swift_getAtKeyPath(&v19);

    (*(v2 + 8))(v7, v0);
  }

  v12 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    (*(v13 + 16))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  else
  {
    sub_220E3B2DC(&v19, &qword_27CF9F868, &unk_220FD84D0);
  }

  return OUTLINED_FUNCTION_9();
}

uint64_t sub_220F8D12C()
{
  OUTLINED_FUNCTION_57_2();
  sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3_45();
  sub_220E43574();
  if (v11 == 1)
  {
    OUTLINED_FUNCTION_15_16();
  }

  else
  {
    sub_220FC2E20();
    v2 = sub_220FC1EE0();
    OUTLINED_FUNCTION_19_16(v2, &dword_220E15000, v3, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v4, v5, MEMORY[0x277D84F90]);

    sub_220FC1CC0();
    OUTLINED_FUNCTION_26_17();

    v6 = OUTLINED_FUNCTION_20_19();
    v7(v6);
  }

  if (!v12[3])
  {
    return sub_220E3B2DC(v12, &qword_27CF9F868, &unk_220FD84D0);
  }

  OUTLINED_FUNCTION_18_18();
  v8 = OUTLINED_FUNCTION_23_15();
  v9(v8);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_220F8D294()
{
  OUTLINED_FUNCTION_57_2();
  sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3_45();
  sub_220E43574();
  if (v12 == 1)
  {
    OUTLINED_FUNCTION_15_16();
  }

  else
  {
    sub_220FC2E20();
    v2 = sub_220FC1EE0();
    OUTLINED_FUNCTION_19_16(v2, &dword_220E15000, v3, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v4, v5, MEMORY[0x277D84F90]);

    sub_220FC1CC0();
    OUTLINED_FUNCTION_26_17();

    v6 = OUTLINED_FUNCTION_20_19();
    v7(v6);
  }

  if (v13[3])
  {
    OUTLINED_FUNCTION_18_18();
    v8 = OUTLINED_FUNCTION_23_15();
    v10 = v9(v8);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_220E3B2DC(v13, &qword_27CF9F868, &unk_220FD84D0);
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_220F8D408()
{
  OUTLINED_FUNCTION_57_2();
  sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3_45();
  sub_220E43574();
  if (v12 == 1)
  {
    OUTLINED_FUNCTION_15_16();
  }

  else
  {
    sub_220FC2E20();
    v2 = sub_220FC1EE0();
    OUTLINED_FUNCTION_19_16(v2, &dword_220E15000, v3, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v4, v5, MEMORY[0x277D84F90]);

    sub_220FC1CC0();
    OUTLINED_FUNCTION_26_17();

    v6 = OUTLINED_FUNCTION_20_19();
    v7(v6);
  }

  if (v13[3])
  {
    OUTLINED_FUNCTION_18_18();
    v8 = OUTLINED_FUNCTION_23_15();
    v10 = v9(v8);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_220E3B2DC(v13, &qword_27CF9F868, &unk_220FD84D0);
    v10 = 1;
  }

  return v10 & 1;
}

void *sub_220F8D5B4@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherMap.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_220F8D618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220F90264(qword_2812C7A68, type metadata accessor for WeatherMap, &protocol conformance descriptor for WeatherMap);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_220F8D6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220F90264(qword_2812C7A68, type metadata accessor for WeatherMap, &protocol conformance descriptor for WeatherMap);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_220F8D75C(uint64_t a1)
{
  sub_220F90264(qword_2812C7A68, type metadata accessor for WeatherMap, &protocol conformance descriptor for WeatherMap);
  sub_220FC1EA0();
  __break(1u);
}

id sub_220F8D7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = (v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier);
  *v17 = 0;
  v17[1] = 0;
  *(v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed) = 0;
  swift_unknownObjectWeakInit();
  *v17 = a1;
  v17[1] = a2;

  v18 = (v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_debugIdentifier);
  *v18 = a3;
  v18[1] = a4;
  *(v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_isPreferredForCachedInstance) = a5;
  v19 = (v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_makeMapViewController);
  *v19 = a6;
  v19[1] = a7;
  v20 = (v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_connectToMapViewController);
  *v20 = a8;
  v20[1] = a9;
  type metadata accessor for WeatherMapCachingViewController();
  OUTLINED_FUNCTION_10();
  return objc_msgSendSuper2(v21, v22);
}

void sub_220F8D8C8()
{
  v1 = (v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed) = 0;
  swift_unknownObjectWeakInit();
  sub_220FC3740();
  __break(1u);
}

double sub_220F8D96C(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    if (v6 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 parentViewController];
    if (v9)
    {
      v10 = v9;

      if (v10 == v2)
      {
        sub_220FC2EF0();
      }
    }
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_220FC2EE0();

    v13 = *&v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_connectToMapViewController];

    v13(v12);
  }

  return result;
}

void sub_220F8DA78(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_220F8D96C(Strong);
}

void sub_220F8DAE8(uint64_t a1)
{
  OUTLINED_FUNCTION_36_10();
  v22 = v2;
  if (!*&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8])
  {
    goto LABEL_29;
  }

  v21 = *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier];
  v3 = qword_2812C8898;
  v23 = *&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8];

  if (v3 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_6_30(&qword_2812C8898);
  }

  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v4 = qword_2812C88A0[0];
  v5 = sub_220F40C10(qword_2812C88A0[0]);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      goto LABEL_29;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D9CB30](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v7 = sub_220FC1380();
    if (v7)
    {

      v8 = sub_220FC1380();
      if (!v8 || (v9 = v8, v8, v9 != v1))
      {
        v10 = sub_220FC1380();
        if (v10)
        {
          v11 = v10[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed];

          if ((v11 & 1) == 0)
          {
            v12 = sub_220FC1380();
            if (v12)
            {
              v13 = v12;
              v15 = *(v12 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier);
              v14 = *(v12 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8);

              if (v14)
              {
                if (v15 == v21 && v14 == v23)
                {
                }

                else
                {
                  v17 = sub_220FC3940();

                  if ((v17 & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                if ((v22 & 1) == 0)
                {

                  goto LABEL_32;
                }

                v18 = sub_220FC1380();
                if (v18)
                {
                  v19 = v18;
                  Strong = swift_unknownObjectWeakLoadStrong();

                  if (Strong)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_26:
  }

LABEL_32:
  sub_220FC1380();

LABEL_29:
  OUTLINED_FUNCTION_37_8();
}

void sub_220F8DD28()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
LABEL_2:

    return;
  }

  sub_220F8DAE8(1);
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_isPreferredForCachedInstance) & 1) == 0)
    {
      v6 = Strong;
      v2 = swift_unknownObjectWeakLoadStrong();
      sub_220F8DA78(v2);
      sub_220F8DA78(0);
      Strong = v6;
    }

    goto LABEL_2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_makeMapViewController);

  v5 = v3(v4);

  sub_220F8DA78(v5);
}

void sub_220F8DE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_36_10();
  a25 = v27;
  a26 = v28;
  if (*&v26[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8])
  {
    if (qword_2812C8898 != -1)
    {
LABEL_18:
      OUTLINED_FUNCTION_6_30(&qword_2812C8898);
    }

    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    v29 = qword_2812C88A0[0];
    v30 = sub_220F40C10(qword_2812C88A0[0]);

    for (i = 0; ; ++i)
    {
      if (v30 == i)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F238, &unk_220FD5450);
        swift_allocObject();
        v33 = v26;
        v34 = sub_220FC1390();
        OUTLINED_FUNCTION_32_2(qword_2812C88A0, &a9);
        sub_220F4387C(0, qword_2812C88A0[0], v35);
        sub_220F43080(0, 0, v34);
        swift_endAccess();
        goto LABEL_15;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D9CB30](i, v29);
      }

      else
      {
        if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v32 = sub_220FC1380();

      if (v32)
      {

        if (v32 == v26)
        {
          break;
        }
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_37_8();
}

uint64_t sub_220F8DFA8(__n128 a1)
{
  if (qword_2812C8898 != -1)
  {
    OUTLINED_FUNCTION_6_30(&qword_2812C8898);
  }

  OUTLINED_FUNCTION_32_2(qword_2812C88A0, v6);
  sub_220F8F018(qword_2812C88A0, v1);
  v3 = v2;
  v4 = sub_220F40C10(qword_2812C88A0[0]);
  if (v4 < v3)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_220F43044(v3, v4);
    return swift_endAccess();
  }

  return result;
}

void sub_220F8E064()
{
  if ((v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v2 = [Strong parentViewController];
      if (v2 && (v3 = v2, v2, v3 == v0) && (sub_220F8DAE8(0), v5))
      {
        v6 = v5;
        v7 = v8;
        sub_220F8DA78(v8);

        v4 = v6;
      }

      else
      {
        v4 = v8;
      }
    }
  }
}

void sub_220F8E12C(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for WeatherMapCachingViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  if (!*&v1[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8])
  {
    sub_220F8DD28();
  }
}

void sub_220F8E280(char a1)
{
  v4 = type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3_45();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for WeatherMapCachingViewController();
  objc_msgSendSuper2(&v13, sel_viewWillDisappear_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong parentViewController];

    if (v9)
    {

      if (v9 == v1)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;

          OUTLINED_FUNCTION_10();
          swift_beginAccess();
          sub_220F8FF64();

          v12 = *(v2 + *(v4 + 88));
          sub_220F901C8();
          if (v12 == 1)
          {
            *(v1 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed) = 1;
          }
        }
      }
    }
  }
}