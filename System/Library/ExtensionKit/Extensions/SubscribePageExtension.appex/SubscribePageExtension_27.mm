uint64_t sub_1002F99B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002F9A50()
{
  sub_10000C518(&unk_100939A90, qword_1007B3AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A79C0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100413A3C(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_10092E6D0, &unk_1007C3D30);
  result = swift_arrayDestroy();
  qword_100931BD8 = v1;
  return result;
}

Class sub_1002F9C50()
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AC000;
  sub_10014D2B8();
  *(v0 + 32) = sub_100753F94(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1057253870;
  *(v0 + 40) = [v1 initWithFloat:v2];
  result = sub_100753F94(1.0).super.super.isa;
  *(v0 + 48) = result;
  qword_100931BE8 = v0;
  return result;
}

void sub_1002F9CF0()
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AC000;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.32];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.16];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.0];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  qword_100931BF0 = v0;
}

Class sub_1002F9E94()
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B91A0;
  sub_10014D2B8();
  *(v0 + 32) = sub_100753F94(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1036831949;
  *(v0 + 40) = [v1 initWithFloat:v2];
  v3 = objc_allocWithZone(NSNumber);
  LODWORD(v4) = 1050141873;
  *(v0 + 48) = [v3 initWithFloat:v4];
  v5 = objc_allocWithZone(NSNumber);
  LODWORD(v6) = 0.5;
  *(v0 + 56) = [v5 initWithFloat:v6];
  result = sub_100753F94(1.0).super.super.isa;
  *(v0 + 64) = result;
  qword_100931C00 = v0;
  return result;
}

void sub_1002F9F74()
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B91A0;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.15];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.85];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  v11 = [v1 blackColor];
  v12 = [v11 CGColor];

  *(v0 + 56) = v12;
  v13 = [v1 blackColor];
  v14 = [v13 CGColor];

  *(v0 + 64) = v14;
  qword_100931C08 = v0;
}

char *sub_1002FA16C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = 1;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *&v4[v10] = [objc_allocWithZone(CAGradientLayer) init];
  v11 = [objc_opt_self() effectWithBlurRadius:50.0];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView;
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradient;
  *&v4[v14] = [objc_allocWithZone(CAGradientLayer) init];
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
  *v15 = 0;
  v15[8] = 1;
  v62.receiver = v4;
  v62.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  v16 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  [v16 setUserInteractionEnabled:0];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer] setAnchorPoint:{0.0, 0.0}];
  v19 = qword_1009208B0;
  v20 = *&v16[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_10014D2B8();
  isa = sub_100753294().super.isa;
  [v20 setLocations:isa];

  v22 = qword_1009208B8;
  v23 = *&v16[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_1001578EC(qword_100931C08);
  v24 = sub_100753294().super.isa;

  [v23 setColors:v24];

  v25 = qword_100920888;
  v26 = *&v16[v18];
  if (v25 != -1)
  {
    swift_once();
  }

  sub_10000C518(&qword_100939AA0, qword_1007C4530);
  v27 = sub_100752F34().super.isa;
  [v26 setActions:v27];

  v61 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView;
  v28 = [*&v16[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView] layer];
  [v28 setMask:*&v16[v18]];

  v29 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradient;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradient] setAnchorPoint:{0.0, 0.0}];
  v30 = *&v16[v29];
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007A7210;
  v32 = v30;
  *(v31 + 32) = sub_100753F94(0.0);
  *(v31 + 40) = sub_100753F94(1.0);
  v33 = sub_100753294().super.isa;

  [v32 setLocations:v33];

  v34 = *&v16[v29];
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007A6580;
  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 blackColor];
  v39 = [v38 colorWithAlphaComponent:0.5];

  v40 = [v39 CGColor];
  type metadata accessor for CGColor(0);
  v42 = v41;
  *(v35 + 56) = v41;
  *(v35 + 32) = v40;
  v43 = [v36 blackColor];
  v44 = [v43 colorWithAlphaComponent:0.25];

  v45 = [v44 CGColor];
  *(v35 + 88) = v42;
  *(v35 + 64) = v45;
  v46 = sub_100753294().super.isa;

  [v37 setColors:v46];

  v47 = *&v16[v29];
  v48 = sub_100752F34().super.isa;
  [v47 setActions:v48];

  v49 = [*&v16[v61] layer];
  [v49 addSublayer:*&v16[v29]];

  [v16 addSubview:*&v16[v61]];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient] setAnchorPoint:{0.0, 0.0}];
  v51 = qword_100920898;
  v52 = *&v16[v50];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_100753294().super.isa;
  [v52 setLocations:v53];

  v54 = qword_1009208A0;
  v55 = *&v16[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  sub_1001578EC(qword_100931BF0);
  v56 = sub_100753294().super.isa;

  [v55 setColors:v56];

  v57 = *&v16[v50];
  v58 = sub_100752F34().super.isa;
  [v57 setActions:v58];

  v59 = [v16 layer];
  [v59 addSublayer:*&v16[v50]];

  return v16;
}

id sub_1002FA994(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  [v1 bounds];
  Height = CGRectGetHeight(v16);
  if (qword_100920890 != -1)
  {
    swift_once();
  }

  v3 = Height * *&qword_100931BE0;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient];
  [v1 bounds];
  MinX = CGRectGetMinX(v17);
  [v1 bounds];
  MinY = CGRectGetMinY(v18);
  [v1 bounds];
  [v4 setFrame:{MinX, MinY, CGRectGetWidth(v19), v3}];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradientHeight + 8])
  {
    if (qword_1009208A8 != -1)
    {
      swift_once();
    }

    v7 = Height * *&qword_100931BF8;
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
  }

  [v1 bounds];
  v8 = CGRectGetMinX(v20);
  [v1 bounds];
  v9 = CGRectGetMaxY(v21) - v7;
  [v1 bounds];
  Width = CGRectGetWidth(v22);
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView];
  [v11 setFrame:{v8, v9, Width, v7}];
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer];
  [v11 bounds];
  [v12 setFrame:?];
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradient];
  [v11 bounds];
  return [v13 setFrame:?];
}

id sub_1002FABF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002FACB4()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect) = 1;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *(v0 + v2) = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradient;
  *(v0 + v6) = [objc_allocWithZone(CAGradientLayer) init];
  v7 = v0 + OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_bottomGradientHeight;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002FAE08()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  result = sub_100753DF4();
  qword_10097F858 = result;
  return result;
}

void sub_1002FAE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v8 = sub_1007497D4();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v11 = 0;
  v39 = _swiftEmptyArrayStorage;
  v32 = a4;
  v33 = v5;
  do
  {
    v12 = a1 + 40 + 16 * v11;
    v13 = v11;
    while (1)
    {
      if (v13 >= v10)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      v14 = sub_100753064();
      v15 = [objc_opt_self() _systemImageNamed:v14];

      if (v15)
      {
        break;
      }

LABEL_5:
      ++v13;
      v12 += 16;
      if (v11 == v10)
      {
        a4 = v32;
        v5 = v33;
        goto LABEL_18;
      }
    }

    if (qword_1009208C0 != -1)
    {
      swift_once();
    }

    v16 = [v15 imageWithTintColor:{qword_10097F858, v32, v33, v34, v35}];

    if (!v16)
    {
      goto LABEL_5;
    }

    sub_100753284();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v39 = v40;
    a4 = v32;
    v5 = v33;
  }

  while (v11 != v10);
LABEL_18:
  sub_100016C60(0, &qword_10092E500, NSAttributedString_ptr);

  v17 = [v5 traitCollection];
  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = NSFontAttributeName;
  v19 = NSFontAttributeName;
  v20 = [v5 font];
  *(inited + 64) = sub_10000C518(&qword_100923508, &qword_1007A6618);
  *(inited + 40) = v20;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_100168AA4(inited + 32);
  v21 = sub_100753874();
  v22 = objc_allocWithZone(NSAttributedString);
  v23 = sub_100753064();
  v24 = [v22 initWithString:v23];

  v25 = [objc_allocWithZone(NSMutableAttributedString) init];
  v27 = v36;
  v26 = v37;
  v28 = v38;
  (*(v37 + 16))(v36, a4, v38);
  v29 = (*(v26 + 88))(v27, v28);
  v30 = v21;
  v31 = v24;
  if (v29 == enum case for TertiaryIconPlacement.leading(_:) || (v30 = v24, v31 = v21, v29 == enum case for TertiaryIconPlacement.trailing(_:)))
  {

    [v25 appendAttributedString:v30];
    [v25 appendAttributedString:v31];
    [v5 setAttributedText:v25];
    [v5 setNeedsLayout];
  }

  else
  {
LABEL_23:
    sub_100754744();
    __break(1u);
  }
}

uint64_t sub_1002FB31C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750B04();
  sub_100039C50(v8, a3);
  sub_10000D0FC(v8, a3);
  if (qword_1009208C8 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_100931C70);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_100750B14();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1002FB524()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100931CD0);
  sub_10000D0FC(v4, qword_100931CD0);
  if (qword_1009208E0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100931CB8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002FB6F8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100931CE8);
  sub_10000D0FC(v4, qword_100931CE8);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

id sub_1002FB890(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1002FB8E8(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1002FB958(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for DetailCollectionViewCell(0);
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1002FBA0C(a5);
}

id sub_1002FB958(char a1)
{
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

id sub_1002FBA0C(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if (!v2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

char *sub_1002FBACC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v85 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v85);
  v86 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v14 - 8);
  v16 = &v81 - v15;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_previousTitleTextColor] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_previousSubtitleTextColor] = 0;
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageMarginRight];
  *v17 = 0;
  v17[8] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory(0);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDivider;
  v21 = type metadata accessor for DividerView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDividerInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showTopDivider] = 0;
  v23 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDividerInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showBottomDivider] = 0;
  v25 = &v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1009208C8 != -1)
  {
    swift_once();
  }

  v28 = sub_100750534();
  v29 = sub_10000D0FC(v28, qword_100931C70);
  v30 = *(v28 - 8);
  v84 = *(v30 + 16);
  v84(v16, v29, v28);
  v83 = *(v30 + 56);
  v83(v16, 0, 1, v28);
  v31 = enum case for DirectionalTextAlignment.none(_:);
  v82 = *(v12 + 104);
  v82(v87, enum case for DirectionalTextAlignment.none(_:), v11);
  v32 = sub_100745C84();
  v81 = v11;
  v33 = v32;
  v34 = objc_allocWithZone(v32);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_1009208E0 != -1)
  {
    swift_once();
  }

  v35 = sub_10000D0FC(v28, qword_100931CB8);
  v84(v16, v35, v28);
  v83(v16, 0, 1, v28);
  v82(v87, v31, v81);
  v36 = objc_allocWithZone(v33);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_subtitleLabel] = sub_100745C74();
  v37 = type metadata accessor for DetailCollectionViewCell(0);
  v88.receiver = v5;
  v88.super_class = v37;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = [v42 contentView];
  v44 = objc_opt_self();
  v45 = [v44 whiteColor];
  [v43 setBackgroundColor:v45];

  v46 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageView;
  v47 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageView];
  v48 = [v42 backgroundColor];

  sub_100743224();
  [*&v42[v46] setContentMode:1];
  v49 = [v42 contentView];
  [v49 addSubview:*&v42[v46]];

  v50 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel;
  [*&v42[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v51 = [v42 contentView];
  [v51 addSubview:*&v42[v50]];

  v52 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_subtitleLabel;
  v53 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_subtitleLabel];
  v54 = [v44 systemGrayColor];
  [v53 setTextColor:v54];

  v55 = [v42 contentView];
  [v55 addSubview:*&v42[v52]];

  v56 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDivider;
  v57 = qword_100920D78;
  v58 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDivider];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_10000D0FC(v85, qword_100980640);
  v60 = v86;
  sub_1001154F8(v59, v86);
  v61 = &v58[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  sub_10011555C(v60, v61);
  swift_endAccess();
  v62 = &v58[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v63 = *(v61 + 1);
  *v62 = *v61;
  *(v62 + 1) = v63;
  [v58 setNeedsLayout];
  [v58 setNeedsLayout];

  sub_1002FE2B0(v60);
  v64 = *&v42[v56];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v65 = v64;
  v66 = sub_100753DB4();
  [v65 setBackgroundColor:v66];

  [*&v42[v56] setHidden:1];
  v67 = [v42 contentView];
  [v67 addSubview:*&v42[v56]];

  v68 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDivider;
  v69 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDivider];
  sub_1001154F8(v59, v60);
  v70 = &v69[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  v71 = v69;
  sub_10011555C(v60, v70);
  swift_endAccess();
  v72 = &v71[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v73 = *(v70 + 1);
  *v72 = *v70;
  *(v72 + 1) = v73;
  [v71 setNeedsLayout];
  [v71 setNeedsLayout];

  sub_1002FE2B0(v60);
  v74 = *&v42[v68];
  v75 = sub_100753DB4();
  [v74 setBackgroundColor:v75];

  [*&v42[v68] setHidden:1];
  v76 = [v42 contentView];
  [v76 addSubview:*&v42[v68]];

  v77 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_backgroundSelectionView;
  v78 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_backgroundSelectionView];
  v79 = sub_100753EA4();
  [v78 setBackgroundColor:v79];

  [*&v42[v77] setOpaque:0];
  [*&v42[v77] setUserInteractionEnabled:0];
  if (v42[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_isSelectable] == 1)
  {
    [v42 setSelectedBackgroundView:*&v42[v77]];
  }

  return v42;
}

void sub_1002FC5E4()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailCollectionViewCell(0);
  v101.receiver = v0;
  v101.super_class = v6;
  objc_msgSendSuper2(&v101, "layoutSubviews");
  sub_1007477B4();
  v8 = v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryView;
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryView];
  if (v10)
  {
    v11 = [v10 isHidden] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_100743334();
  v13 = v12;
  if (v12)
  {
  }

  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_subtitleLabel];
  v15 = [v14 text];
  v16 = v15;
  if (v15)
  {
  }

  v17 = v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageMarginRight + 8];
  v98 = v16;
  if (v17)
  {
    v18 = 8.0;
    if (v13)
    {
LABEL_10:
      v19 = sub_100743334();
      if (!v19)
      {
        __break(1u);
        goto LABEL_53;
      }

      v20 = v19;
      [v19 size];
      v22 = v21;
      v24 = v23;

      sub_1007477B4();
      MinX = CGRectGetMinX(v102);
      sub_1007477B4();
      v26 = CGRectGetMidY(v103) + v24 * -0.5;
      sub_100743324();
      v104.origin.x = MinX;
      v104.origin.y = v26;
      v104.size.width = v22;
      v104.size.height = v24;
      v8 = v8 - (v18 + CGRectGetWidth(v104));
      v27 = &qword_100920000;
      if (!v11)
      {
        goto LABEL_25;
      }

LABEL_15:
      v28 = *&v1[v9];
      if (v28)
      {
        v29 = v28;
        sub_1007477B4();
        [v29 sizeThatFits:{v30, v31}];
        v33 = v32;
        v35 = v34;

        v36 = *&v1[v9];
        if (v36)
        {
          [v36 lastBaselineFromBottom];
          v38 = v37;
          sub_1007477B4();
          v39 = CGRectGetMaxX(v105) - v33;
          if (v98)
          {
            [v1 bounds];
            x = v106.origin.x;
            y = v106.origin.y;
            width = v106.size.width;
            v97 = v33;
            v43 = v35;
            v44 = v8;
            v45 = v39;
            v46 = v18;
            height = v106.size.height;
            CGRectGetMidX(v106);
            v107.origin.x = x;
            v107.origin.y = y;
            v107.size.width = width;
            v107.size.height = height;
            v18 = v46;
            v39 = v45;
            v8 = v44;
            v35 = v43;
            v33 = v97;
            v48 = CGRectGetMidY(v107) + v35 * -0.5;
          }

          else
          {
            sub_1007477B4();
            MinY = CGRectGetMinY(v108);
            if (v27[282] != -1)
            {
              swift_once();
            }

            v50 = sub_100750B04();
            sub_10000D0FC(v50, qword_100931C88);
            sub_1007502D4();
            sub_100750564();
            v52 = v51;
            (*(v100 + 8))(v5, v99);
            v48 = MinY + v52 - (v35 - v38);
          }

          sub_1007477B4();
          v53 = CGRectGetWidth(v109);
          if (v33 >= v53)
          {
            v33 = v53;
          }

          [*&v1[v9] setFrame:{v39, v48, v33, v35}];
          v110.origin.x = v39;
          v110.origin.y = v48;
          v110.size.width = v33;
          v110.size.height = v35;
          v8 = v8 - (CGRectGetWidth(v110) + 16.0);
          goto LABEL_25;
        }

LABEL_54:
        __break(1u);
        return;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageMarginRight];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  sub_100743324();
  v27 = &qword_100920000;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (v27[282] != -1)
  {
    swift_once();
  }

  v54 = sub_100750B04();
  sub_10000D0FC(v54, qword_100931C88);
  v55 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel];
  sub_1007502D4();
  v56 = [v55 traitCollection];
  sub_100750AD4();
  v58 = v57;

  [v55 firstBaselineFromTop];
  v60 = v59;
  v61 = *(v100 + 8);
  v100 += 8;
  v61(v5, v99);
  v62 = v58 - v60;
  sub_1007477B4();
  [v55 sizeThatFits:{v8, CGRectGetHeight(v111)}];
  v65 = v64;
  if (v63 >= v8)
  {
    v66 = v8;
  }

  else
  {
    v66 = v63;
  }

  if (v13)
  {
    sub_100743314();
    v67 = v18 + CGRectGetMaxX(v112);
  }

  else
  {
    sub_1007477B4();
    v67 = CGRectGetMinX(v113);
  }

  sub_1007477B4();
  [v55 setFrame:{v67, v62 + CGRectGetMinY(v114), v66, v65}];
  if (v98)
  {
    [v14 setHidden:0];
    if (qword_1009208E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v54, qword_100931CD0);
    sub_1007502D4();
    v68 = [v14 traitCollection];
    sub_100750AD4();
    v70 = v69;

    [v14 firstBaselineFromTop];
    v72 = v71;
    v61(v5, v99);
    v73 = v70 - v72;
    sub_1007477B4();
    [v14 sizeThatFits:{v8, CGRectGetHeight(v115)}];
    v75 = v74;
    v77 = v76;
    [v55 frame];
    v78 = CGRectGetMinX(v116);
    [v55 lastBaselineMaxY];
    [v14 setFrame:{v78, v73 + v79, v75, v77}];
  }

  else
  {
    [v14 setFrame:{0.0, 0.0, 0.0, 0.0}];
    [v14 setHidden:1];
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showTopDivider] == 1)
  {
    sub_1007477B4();
    v80 = CGRectGetMinX(v117);
    [v1 bounds];
    v81 = CGRectGetMinY(v118);
    sub_1007477B4();
    v82 = CGRectGetWidth(v119);
    if (qword_100920D68 != -1)
    {
      swift_once();
    }

    v83 = *&qword_100980620;
    v84 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDividerInsets];
    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDividerInsets + 32] & 1) == 0)
    {
      v85 = v84[3];
      v80 = v84[1];
      [v1 bounds];
      v82 = v86 - v80 - v85;
    }

    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDivider] setFrame:{v80, v81, v82, v83}];
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showBottomDivider] == 1)
  {
    sub_1007477B4();
    v87 = CGRectGetMinX(v120);
    [v1 bounds];
    MaxY = CGRectGetMaxY(v121);
    if (qword_100920D68 != -1)
    {
      v96 = MaxY;
      swift_once();
      MaxY = v96;
    }

    v89 = *&qword_100980620;
    v90 = MaxY - *&qword_100980620;
    sub_1007477B4();
    v91 = CGRectGetWidth(v122);
    v92 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDividerInsets];
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDividerInsets + 32])
    {
      v93 = v91;
    }

    else
    {
      v94 = v92[3];
      v87 = v92[1];
      [v1 bounds];
      v93 = v95 - v87 - v94;
    }

    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDivider] setFrame:{v87, v90, v93, v89}];
  }
}

double sub_1002FCEF0(double a1, double a2)
{
  v3 = v2;
  v5 = sub_100750B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100754724();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_10000C518(&qword_100934360, qword_1007B92D0);
  __chkstk_darwin(v14 - 8);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = sub_100743334();
  v20 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel];
  v21 = [v20 text];
  if (v21)
  {
    v22 = v6;
    v23 = v21;
    v55 = sub_100753094();
    v66 = v24;

    v6 = v22;
  }

  else
  {
    v55 = 0;
    v66 = 0;
  }

  v61 = v6;
  (*(v6 + 56))(v18, 1, 1, v5);
  v67 = [v20 attributedText];
  v25 = [*&v3[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_subtitleLabel] text];
  if (v25)
  {
    v26 = v25;
    sub_100753094();
    v65 = v27;
  }

  else
  {
    v65 = 0;
  }

  v28 = v19;
  v29 = v3[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showBottomDivider];
  v59 = v3[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showTopDivider];
  v60 = v29;
  [v3 layoutMargins];
  if (v19)
  {
    v30 = v19;
    [v30 size];
    [v30 size];
  }

  v31 = [v3 traitCollection];
  v32 = qword_1009208C8;
  v58 = v31;
  if (v67)
  {
    v33 = v18;
    v34 = v67;
    if (v32 != -1)
    {
      swift_once();
    }

    v35 = sub_100750534();
    v36 = sub_10000D0FC(v35, qword_100931C70);
    v37 = *(v35 - 8);
    (*(v37 + 16))(v13, v36, v35);
    (*(v37 + 56))(v13, 0, 1, v35);
    v38 = sub_10074F3F4();
    v69 = v38;
    v70 = sub_1001FC0C4();
    v39 = sub_10000D134(v68);
    (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
    sub_10074FC74();
    sub_10000C620(v68);
    sub_10074CCA4();

    sub_10000C8CC(v13, &unk_100928A40, qword_1007A6630);
    v18 = v33;
    v28 = v19;
    v40 = v63;
    v41 = v61;
    v42 = v58;
  }

  else
  {
    v42 = v31;
    if (qword_1009208C8 != -1)
    {
      swift_once();
    }

    v43 = sub_100750534();
    sub_10000D0FC(v43, qword_100931C70);
    v44 = sub_10074F3F4();
    v69 = v44;
    v70 = sub_1001FC0C4();
    v45 = sub_10000D134(v68);
    (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
    sub_10074FC74();
    sub_10000C620(v68);
    sub_10074CCB4();
    v40 = v63;
    v41 = v61;
  }

  v57 = v28;
  v46 = v62;
  v47 = v64;
  if (qword_1009208D0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v5, qword_100931C88);
  sub_100750584();
  if (v65)
  {
    if (qword_1009208E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v5, qword_100931CD0);
    sub_1007502D4();
    sub_100750AD4();
    v48 = *(v46 + 8);
    v48(v10, v40);
    if (qword_1009208F0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v5, qword_100931CE8);
    sub_1007502D4();
    sub_100750AD4();
    v48(v10, v40);
  }

  else
  {
    sub_1002FE034(v18, v47);
    v49 = *(v41 + 48);
    if (v49(v47, 1, v5) == 1)
    {
      v50 = v56;
      if (qword_1009208D8 != -1)
      {
        swift_once();
      }

      v51 = sub_10000D0FC(v5, qword_100931CA0);
      (*(v41 + 16))(v50, v51, v5);
      v52 = v64;
      if (v49(v64, 1, v5) != 1)
      {
        sub_10000C8CC(v52, &qword_100934360, qword_1007B92D0);
      }
    }

    else
    {
      v50 = v56;
      (*(v41 + 32))(v56, v47, v5);
    }

    sub_1007502D4();
    v42 = v58;
    sub_100750AD4();
    (*(v46 + 8))(v10, v40);
    (*(v41 + 8))(v50, v5);
  }

  v53 = v57;
  if (v59)
  {
    if (qword_100920D68 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v60 && qword_100920D68 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_36:

  sub_10000C8CC(v18, &qword_100934360, qword_1007B92D0);
  return a1;
}

double sub_1002FDA50()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for DetailCollectionViewCell(0);
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, "prepareForReuse");
  sub_100743344();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_subtitleLabel];
  [v8 setText:0];
  v9 = type metadata accessor for Accessory(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_10010AA88(v4, &v1[v10]);
  swift_endAccess();
  v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction];
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction];
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction + 8];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_1000164A8(v12, v13);
  v14 = objc_opt_self();
  v15 = [v14 blackColor];
  [v7 setTextColor:v15];

  v16 = [v14 systemGrayColor];
  [v8 setTextColor:v16];

  v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showTopDivider] = 0;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDivider] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDividerInsets];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showBottomDivider] = 0;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDivider] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDividerInsets];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  return result;
}

id sub_1002FDD4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DetailCollectionViewCell(uint64_t a1)
{
  result = qword_100931D78;
  if (!qword_100931D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FDEEC(uint64_t a1)
{
  sub_1002FDFDC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002FDFDC(uint64_t a1)
{
  if (!qword_100928850)
  {
    type metadata accessor for Accessory(255);
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_100928850);
    }
  }
}

uint64_t sub_1002FE034(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100934360, qword_1007B92D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002FE0A4()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_previousTitleTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_previousSubtitleTextColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDivider;
  v5 = type metadata accessor for DividerView(0);
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_topDividerInsets;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showTopDivider) = 0;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDivider;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_bottomDividerInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_showBottomDivider) = 0;
  v9 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v10) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_disabled) = 0;
  v11 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_selectionHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24DetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002FE2B0(uint64_t a1)
{
  v2 = type metadata accessor for DividerView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002FE30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[23] = &type metadata for Double;
  v28[24] = &protocol witness table for Double;
  v28[19] = &protocol witness table for Double;
  v28[20] = 0x4049000000000000;
  v28[18] = &type metadata for Double;
  v28[14] = &protocol witness table for Double;
  v28[15] = 0x4024000000000000;
  v28[13] = &type metadata for Double;
  v28[10] = 0x4030000000000000;
  v28[8] = &type metadata for Double;
  v28[9] = &protocol witness table for Double;
  v28[5] = 0x402C000000000000;
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v18 = sub_10000D0FC(v6, qword_100980A80);
  v7 = *(v6 - 8);
  v17 = *(v7 + 16);
  v19 = v7 + 16;
  v17(v5, v18, v6);
  v16 = enum case for FontSource.useCase(_:);
  v15 = v3[13];
  v15(v5);
  v8 = sub_100750B04();
  v28[3] = v8;
  v28[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v28);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v9 = sub_10000D134(v25);
  v10 = v3[2];
  v10(v9, v5, v2);
  sub_100750B14();
  v11 = v3[1];
  v11(v5, v2);
  v17(v5, v18, v6);
  (v15)(v5, v16, v2);
  v26 = v8;
  v27 = &protocol witness table for StaticDimension;
  sub_10000D134(v25);
  v23 = v2;
  v24 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v22);
  v10(v12, v5, v2);
  sub_100750B14();
  v11(v5, v2);
  if (v20)
  {
    sub_1007537B4();
  }

  v24 = &protocol witness table for Double;
  v23 = &type metadata for Double;
  v22[0] = 0x4020000000000000;
  return sub_100747404();
}

char *sub_1002FE65C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100747424();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v5[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v5[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v14, qword_100980A68);
  (*(v15 + 16))(v17, v21, v14);
  v22 = [objc_opt_self() currentTraitCollection];
  sub_1002FE30C(v22, v13);

  v23 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView] = sub_1004AE6A0(v17, v13, 1, 0.0, 0.0, 0.0, 0.0);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  sub_1007539A4();
  [v24 setLayoutMargins:?];
  [v24 setHideStandardTitle:1];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView]];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A6580;
  *(v25 + 32) = sub_1007516F4();
  *(v25 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v25 + 48) = sub_100751564();
  *(v25 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v24;
}

void sub_1002FEA90()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_10092B0D0, qword_1007A99B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_100753CD4();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 floatingTabBarHeight];
  if (v10 == 0.0)
  {
    v11 = [v0 traitCollection];
    v12 = sub_1007537E4();

    if (v12)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = &v1[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset];
        if (v1[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset + 8])
        {
          v16 = [Strong view];
          if (v16)
          {
            v17 = v16;
            [v16 safeAreaInsets];
            v19 = v18;

            v20 = [v14 navigationController];
            if (v20)
            {
              v21 = v20;
              sub_1001A2960();
              v23 = v22;
            }

            else
            {

              v23 = 0.0;
            }

            *v15 = v19 - v23;
            *(v15 + 8) = 0;
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v24 = &v1[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset];
      if (v1[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset + 8])
      {
        v25 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v26 = sub_100753CB4();
        v27 = *(v26 - 8);
        (*(v27 + 104))(v4, v25, v26);
        (*(v27 + 56))(v4, 0, 1, v26);
        sub_100753CC4();
        sub_1002FF464(v4);
        sub_100753C94();
        v29 = v28;
        (*(v6 + 8))(v9, v5);
        *v24 = v29;
        v24[8] = 0;
      }
    }
  }

  else
  {

    [v0 floatingTabBarHeight];
  }
}

void sub_1002FEDE4()
{
  sub_1002FEA90();
  v1 = &OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize;
  if (v2 != 0.0)
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar;
  }

  v3 = &v0[*v1];
  if ((v3[2] & 1) != 0 || (v4 = *v3, [v0 bounds], v4 != CGRectGetWidth(v12)))
  {
    [v0 bounds];
    CGRectGetWidth(v13);
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView];
    [v0 layoutMargins];
    sub_100753BA4();
    [v5 sizeThatFits:?];
    v7 = v6;
    sub_1002FEA90();
    v9 = v7 + v8;
    [v0 bounds];
    Width = CGRectGetWidth(v14);
    v11 = &v0[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
    *v11 = Width;
    v11[1] = v9;
    *(v11 + 16) = 0;
  }
}

id sub_1002FF110(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100747424();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v21 = ObjectType;
  objc_msgSendSuper2(&v23, "traitCollectionDidChange:", a1, v7);
  if (a1)
  {
    v10 = [a1 layoutDirection];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 traitCollection];
  v12 = [v11 layoutDirection];

  if (!a1 || v10 != v12)
  {
    v13 = [v2 traitCollection];
    [v13 layoutDirection];

    sub_1007539B4();
    [v2 setLayoutMargins:?];
  }

  v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView];
  v15 = [v2 traitCollection];
  v16 = v21;
  sub_1002FE30C(v15, v9);

  v17 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v14[v17], v9, v5);
  swift_endAccess();
  [v14 setNeedsLayout];
  (*(v6 + 8))(v9, v5);
  v18 = &v2[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v2[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v22.receiver = v2;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, "invalidateIntrinsicContentSize");
}

uint64_t sub_1002FF464(uint64_t a1)
{
  v2 = sub_10000C518(&unk_10092B0D0, qword_1007A99B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002FF4CC(uint64_t result)
{
  v1 = result + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset;
  *v1 = 0;
  *(v1 + 8) = 1;
  return result;
}

uint64_t sub_1002FF4F8@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v85 = a2;
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v74 = &v68 - v9;
  v10 = sub_10000C518(&unk_100925330, &unk_1007A67B0);
  __chkstk_darwin(v10 - 8);
  v75 = &v68 - v11;
  v77 = sub_100744E64();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10074E984();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  __chkstk_darwin(v78);
  v84 = &v68 - v14;
  v15 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v24 - 8);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  if ((sub_100747B74() & 1) == 0)
  {
    v68 = v6;
    v69 = v4;
    v70 = v3;
    v71 = a1;
    sub_100747BB4();
    sub_10000C8CC(v17, &unk_10093D6E0, &unk_1007A6080);
    sub_100066578(v20, v23, &unk_10093D6E0, &unk_1007A6080);
    v40 = v81;
    v41 = v82;
    if ((*(v82 + 48))(v23, 1, v81) == 1)
    {
      sub_10000C8CC(v23, &unk_10093D6E0, &unk_1007A6080);
      v42 = 1;
    }

    else
    {
      swift_getKeyPath();
      sub_1007525B4();

      (*(v41 + 8))(v23, v40);
      v42 = 0;
    }

    v46 = v79;
    v45 = v80;
    v47 = v83;
    v48 = *(v83 + 56);
    v48(v31, v42, 1, v80);
    (*(v47 + 104))(v28, enum case for Shelf.ContentType.searchResultsContextCard(_:), v45);
    v48(v28, 0, 1, v45);
    v49 = *(v78 + 48);
    v50 = v84;
    sub_100028D40(v31, v84);
    sub_100028D40(v28, v50 + v49);
    v51 = *(v47 + 48);
    if (v51(v50, 1, v45) == 1)
    {
      sub_10000C8CC(v28, &unk_100933370, &unk_1007A8CE0);
      v52 = v84;
      sub_10000C8CC(v31, &unk_100933370, &unk_1007A8CE0);
      if (v51(v52 + v49, 1, v45) == 1)
      {
        sub_10000C8CC(v52, &unk_100933370, &unk_1007A8CE0);
        v53 = v85;
        goto LABEL_17;
      }
    }

    else
    {
      sub_100028D40(v50, v46);
      if (v51(v50 + v49, 1, v45) != 1)
      {
        v54 = v83;
        v55 = v73;
        (*(v83 + 32))(v73, v50 + v49, v45);
        sub_10013DFA4();
        v56 = v50;
        v57 = sub_100753014();
        v58 = *(v54 + 8);
        v58(v55, v45);
        sub_10000C8CC(v28, &unk_100933370, &unk_1007A8CE0);
        sub_10000C8CC(v31, &unk_100933370, &unk_1007A8CE0);
        v58(v46, v45);
        sub_10000C8CC(v56, &unk_100933370, &unk_1007A8CE0);
        v53 = v85;
        if ((v57 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_17:
        v59 = v74;
        sub_100747C04();
        swift_getKeyPath();
        v60 = v81;
        sub_1007525B4();

        (*(v82 + 8))(v59, v60);
        if (*(v86 + 16))
        {
          sub_10000C824(v86 + 32, v87);

          sub_10000C518(&qword_1009242A0, &qword_1007A6400);
          sub_10000C518(&qword_100923570, &qword_1007AAB70);
          v61 = swift_dynamicCast();
          v62 = v77;
          v63 = v76;
          v64 = v75;
          if (v61)
          {
            if (*(&v89 + 1))
            {
              sub_10000C888(&v88, *(&v89 + 1));
              v53 = v85;
              sub_10074A4F4();
              sub_10000C620(&v88);
              if ((*(v63 + 48))(v64, 1, v62) != 1)
              {
                v65 = v72;
                (*(v63 + 32))(v72, v64, v62);
                if (sub_100744E54())
                {
                  v66 = v68;
                  sub_100747B84();
                  v67 = sub_10014DEA0(v66, v65);
                  (*(v69 + 8))(v66, v70);
                  *(&v89 + 1) = &type metadata for CGFloat;
                  v90 = &protocol witness table for CGFloat;
                  *&v88 = -v67;
                  (*(v63 + 8))(v65, v62);
                  return sub_100012160(&v88, v53);
                }

                (*(v63 + 8))(v65, v62);
LABEL_27:
                *(&v89 + 1) = &type metadata for Double;
                v90 = &protocol witness table for Double;
                *&v88 = 0;
                return sub_100012160(&v88, v53);
              }

LABEL_26:
              sub_10000C8CC(v64, &unk_100925330, &unk_1007A67B0);
              goto LABEL_27;
            }
          }

          else
          {
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
          }
        }

        else
        {

          v88 = 0u;
          v89 = 0u;
          v90 = 0;
          v62 = v77;
          v63 = v76;
          v64 = v75;
        }

        sub_10000C8CC(&v88, &qword_100923578, &qword_1007A67F0);
        (*(v63 + 56))(v64, 1, 1, v62);
        goto LABEL_26;
      }

      sub_10000C8CC(v28, &unk_100933370, &unk_1007A8CE0);
      v52 = v84;
      sub_10000C8CC(v31, &unk_100933370, &unk_1007A8CE0);
      (*(v83 + 8))(v46, v45);
    }

    sub_10000C8CC(v52, &qword_10092C380, &unk_1007B0E90);
    v53 = v85;
    goto LABEL_27;
  }

  v32 = v85;
  sub_100747B84();
  sub_10074F594();
  v34 = v33;
  v35 = *(v4 + 8);
  v35(v6, v3);
  if (v34 <= 1.0)
  {
    sub_100747B84();
    sub_10074F5B4();
    v44 = v43;
    result = (v35)(v6, v3);
    v32[3] = &type metadata for CGFloat;
    v32[4] = &protocol witness table for CGFloat;
    *v32 = v44 * 0.5;
  }

  else
  {
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v36 = sub_100750B04();
    v37 = sub_10000D0FC(v36, qword_1009820C8);
    v32[3] = v36;
    v32[4] = &protocol witness table for StaticDimension;
    v38 = sub_10000D134(v32);
    return (*(*(v36 - 8) + 16))(v38, v37, v36);
  }

  return result;
}

uint64_t sub_100300098@<X0>(double *a1@<X8>)
{
  v59 = a1;
  v1 = sub_10074F704();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10000C518(&qword_100923580, &unk_1007B93C0);
  __chkstk_darwin(v55);
  v58 = &v48 - v3;
  v4 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v13 - 8);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  v17 = sub_10074E984();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v48 - v22;
  sub_100747C04();
  swift_getKeyPath();
  v53 = v19;
  sub_1007525B4();

  v24 = *(v21 + 8);
  v24(v23, v20);
  sub_100747BB4();
  sub_10000C8CC(v9, &unk_10093D6E0, &unk_1007A6080);
  sub_100066578(v6, v12, &unk_10093D6E0, &unk_1007A6080);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_10000C8CC(v12, &unk_10093D6E0, &unk_1007A6080);
    v25 = 1;
    v26 = v54;
  }

  else
  {
    swift_getKeyPath();
    v26 = v54;
    sub_1007525B4();

    v24(v12, v20);
    v25 = 0;
  }

  v28 = v56;
  v27 = v57;
  (*(v56 + 56))(v26, v25, 1, v57);
  v29 = *(v55 + 48);
  v30 = v58;
  (*(v28 + 32))(v58, v53, v27);
  sub_100066578(v26, v30 + v29, &unk_100933370, &unk_1007A8CE0);
  v31 = *(v28 + 88);
  v32 = v31(v30, v27);
  v33 = v32;
  if (v32 == enum case for Shelf.ContentType.searchResult(_:))
  {
    if ((*(v28 + 48))(v30 + v29, 1, v27) != 1)
    {
      v34 = v49;
      sub_100028D40(v30 + v29, v49);
      if (v31(v34, v27) == v33)
      {
        v35 = v50;
        sub_100747B84();
        sub_10074F5B4();
        v37 = v36;
        (*(v51 + 8))(v35, v52);
        v38 = v59;
        *(v59 + 3) = &type metadata for CGFloat;
        *(v38 + 4) = &protocol witness table for CGFloat;
        *v38 = v37;
LABEL_10:
        sub_10000C8CC(v30 + v29, &unk_100933370, &unk_1007A8CE0);
        return (*(v28 + 8))(v30, v27);
      }

      (*(v28 + 8))(v34, v27);
    }
  }

  else if (v32 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v39 = v50;
    sub_100747B84();
    sub_10074F5B4();
    v41 = v40;
    (*(v51 + 8))(v39, v52);
    v42 = v59;
    *(v59 + 3) = &type metadata for CGFloat;
    *(v42 + 4) = &protocol witness table for CGFloat;
    *v42 = v41 * 0.5;
    goto LABEL_10;
  }

  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v44 = sub_100750B04();
  v45 = sub_10000D0FC(v44, qword_1009820C8);
  v46 = v59;
  *(v59 + 3) = v44;
  v46[4] = &protocol witness table for StaticDimension;
  v47 = sub_10000D134(v46);
  (*(*(v44 - 8) + 16))(v47, v45, v44);
  return sub_10000C8CC(v30, &qword_100923580, &unk_1007B93C0);
}

id sub_1003007A0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension28TabPlaceholderViewController_storeTab;
  v6 = sub_100742A34();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  v10 = sub_1002D7360(v9);
  if (v10)
  {
    v11 = v10;
    [v8 setTabBarItem:v10];
    v12 = [v8 title];
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = [v8 title];
    if (v13)
    {
      v14 = v13;
      v15 = sub_100753094();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
LABEL_7:
        v19 = [v11 title];
        if (v19)
        {
          v20 = v19;
          sub_100753094();
        }

        else
        {
          sub_100742A24();
          if (!v22)
          {
            v23 = 0;
            goto LABEL_15;
          }
        }

        v23 = sub_100753064();

LABEL_15:
        [v8 setTitle:v23];
      }
    }
  }

  else
  {
    sub_100742A24();
    if (v21)
    {
      v11 = sub_100753064();
    }

    else
    {
      v11 = 0;
    }

    [v8 setTitle:v11];
  }

  result = [v8 view];
  if (result)
  {
    v25 = result;
    v26 = [objc_opt_self() systemBackgroundColor];
    [v25 setBackgroundColor:v26];

    (*(v7 + 8))(a1, v6);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100300A8C(uint64_t a1)
{
  v74 = a1;
  v67 = sub_10000C518(&unk_100932480, &unk_1007A9900);
  __chkstk_darwin(v67);
  v68 = &v65 - v1;
  v2 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v2 - 8);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v65 - v5;
  __chkstk_darwin(v6);
  v71 = &v65 - v7;
  v8 = sub_100741264();
  v9 = *(v8 - 8);
  v72 = v8;
  v73 = v9;
  __chkstk_darwin(v8);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v65 - v12;
  v13 = sub_10000C518(&qword_100931E10, &unk_1007B9480);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v16 = sub_10000C518(&unk_100925750, &unk_1007A7C60);
  __chkstk_darwin(v16 - 8);
  v18 = &v65 - v17;
  v19 = type metadata accessor for FlowDestination(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v65 - v24;
  __chkstk_darwin(v26);
  v28 = &v65 - v27;
  __chkstk_darwin(v29);
  v31 = &v65 - v30;
  sub_1002D7CA4(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v32 = &unk_100925750;
    v33 = &unk_1007A7C60;
    v34 = v18;
LABEL_27:
    sub_10000C8CC(v34, v32, v33);
    v42 = 0;
    return v42 & 1;
  }

  sub_100068B98(v18, v31);
  v35 = &v15[*(v13 + 48)];
  sub_100068C18(v31, v15);
  sub_100068C18(v74, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_100068C18(v15, v25);

        v44 = sub_10000C518(&unk_100932490, &qword_1007A9910);
        v45 = *(v44 + 48);
        if (swift_getEnumCaseMultiPayload() == 8)
        {

          v46 = *(v44 + 48);
          v47 = v71;
          sub_1000498A8(&v25[v45], v71);
          v48 = v35 + v46;
          v49 = v70;
          sub_1000498A8(v48, v70);
          v50 = v68;
          v51 = *(v67 + 48);
          sub_1000497C4(v47, v68);
          sub_1000497C4(v49, v50 + v51);
          v52 = v72;
          v53 = *(v73 + 48);
          if (v53(v50, 1, v72) == 1)
          {
            sub_10000C8CC(v49, &unk_100923970, &qword_1007A6B90);
            sub_10000C8CC(v47, &unk_100923970, &qword_1007A6B90);
            sub_1000AC948(v31);
            if (v53(v50 + v51, 1, v52) == 1)
            {
              sub_10000C8CC(v50, &unk_100923970, &qword_1007A6B90);
              v42 = 1;
              goto LABEL_33;
            }
          }

          else
          {
            v61 = v65;
            sub_1000497C4(v50, v65);
            if (v53(v50 + v51, 1, v52) != 1)
            {
              v62 = v73;
              v63 = v69;
              (*(v73 + 32))(v69, v50 + v51, v52);
              sub_100301538();
              v42 = sub_100753014();
              v64 = *(v62 + 8);
              v64(v63, v52);
              sub_10000C8CC(v70, &unk_100923970, &qword_1007A6B90);
              sub_10000C8CC(v71, &unk_100923970, &qword_1007A6B90);
              sub_1000AC948(v31);
              v64(v61, v52);
              sub_10000C8CC(v50, &unk_100923970, &qword_1007A6B90);
              goto LABEL_33;
            }

            sub_10000C8CC(v70, &unk_100923970, &qword_1007A6B90);
            sub_10000C8CC(v71, &unk_100923970, &qword_1007A6B90);
            sub_1000AC948(v31);
            (*(v73 + 8))(v61, v52);
          }

          sub_10000C8CC(v50, &unk_100932480, &unk_1007A9900);
          v42 = 0;
          goto LABEL_33;
        }

        sub_1000AC948(v31);
        sub_10000C8CC(&v25[v45], &unk_100923970, &qword_1007A6B90);
LABEL_26:
        v32 = &qword_100931E10;
        v33 = &unk_1007B9480;
        v34 = v15;
        goto LABEL_27;
      }

LABEL_22:
      sub_1000AC948(v31);
      goto LABEL_26;
    }

    sub_1000AC948(v31);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_26;
    }

    sub_1000AC948(v35);
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 13:
        sub_1000AC948(v31);
        sub_100068C18(v15, v22);

        v54 = sub_10000C518(&qword_100938EC0, qword_1007B9490);
        v55 = *(v54 + 48);
        if (swift_getEnumCaseMultiPayload() != 13)
        {
          v59 = sub_100744BE4();
          (*(*(v59 - 8) + 8))(&v22[v55], v59);
          goto LABEL_26;
        }

        v56 = *(v54 + 48);
        v57 = sub_100744BE4();
        v58 = *(*(v57 - 8) + 8);
        v58(v35 + v56, v57);
        v58(&v22[v55], v57);
        break;
      case 44:
        sub_1000AC948(v31);
        if (swift_getEnumCaseMultiPayload() != 44)
        {
          goto LABEL_26;
        }

        break;
      case 20:
        sub_100068C18(v15, v28);
        if (swift_getEnumCaseMultiPayload() == 20)
        {
          v37 = v72;
          v38 = v73;
          v39 = *(v73 + 32);
          v40 = v69;
          v39(v69, v28, v72);
          v41 = v66;
          v39(v66, v35, v37);
          v42 = sub_100741214();
          v43 = *(v38 + 8);
          v43(v41, v37);
          v43(v40, v37);
          sub_1000AC948(v31);
LABEL_33:
          sub_1000AC948(v15);
          return v42 & 1;
        }

        sub_1000AC948(v31);
        (*(v73 + 8))(v28, v72);
        goto LABEL_26;
      default:
        goto LABEL_22;
    }
  }

  sub_1000AC948(v15);
  v42 = 1;
  return v42 & 1;
}

uint64_t type metadata accessor for TabPlaceholderViewController(uint64_t a1)
{
  result = qword_100931E00;
  if (!qword_100931E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100301480(uint64_t a1)
{
  result = sub_100742A34();
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

unint64_t sub_100301538()
{
  result = qword_100926240;
  if (!qword_100926240)
  {
    sub_100741264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926240);
  }

  return result;
}

id sub_100301898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArtworkCollectionViewCell(uint64_t a1)
{
  result = qword_100931E48;
  if (!qword_100931E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100301970(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100301A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013ABB0(a1, a2, a3, WitnessTable);
}

void sub_100301AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

unint64_t sub_100301B24(uint64_t a1)
{
  result = sub_100301B4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100301B4C()
{
  result = qword_100931E58;
  if (!qword_100931E58)
  {
    type metadata accessor for ArtworkCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100931E58);
  }

  return result;
}

void sub_100301BA4()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel);
  if (v4)
  {
    v5 = [v4 attributedText];
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + v3);
      if (v7)
      {
        v8 = v7;
        v9 = [v1 tintColor];
        if (v9)
        {
          v10 = v9;
          v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
          v12 = [v6 length];
          v13 = swift_allocObject();
          *(v13 + 16) = v11;
          *(v13 + 24) = v10;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1000CF72C;
          *(v14 + 24) = v13;
          v18[4] = sub_1000CF744;
          v18[5] = v14;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1107296256;
          v18[2] = sub_1001529B4;
          v18[3] = &unk_100870DE8;
          v15 = _Block_copy(v18);
          v16 = v11;
          v17 = v10;

          [v6 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v12 usingBlock:{0x100000, v15}];

          _Block_release(v15);
          LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

          if ((v17 & 1) == 0)
          {
            [v8 setAttributedText:v16];

            goto LABEL_7;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_7:
    }
  }
}

uint64_t type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(uint64_t a1)
{
  result = qword_100931E88;
  if (!qword_100931E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100301F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_100743384(v8, v4);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_100743384(v9, v5);
  sub_1007433C4();
  sub_10004D658();
  sub_100744274();
  sub_100744274();
}

void sub_100302024(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100741C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  sub_10000C824(a1, v29);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100741D54();
  if (swift_dynamicCast())
  {
    v27 = a2;
    v13 = v28;
    v14 = qword_100921960;
    v15 = *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView);
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_100741E54();
    sub_10000D0FC(v16, qword_100982740);
    sub_100741DB4();
    v18 = v17;
    v20 = v19;
    v26 = [v3 backgroundColor];
    sub_100741D34();
    v21 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v7 + 24))(&v15[v21], v12, v6);
    swift_endAccess();
    v25 = *(v7 + 16);
    v25(v9, &v15[v21], v6);
    sub_100275D50(v9);
    v22 = *(v7 + 8);
    v22(v9, v6);
    v22(v12, v6);
    v23 = v26;
    [v15 setBackgroundColor:v26];
    sub_1006C2A3C(v18, v20, v13, v15, v27);
    v25(v12, &v15[v21], v6);
    sub_100275D50(v12);
    v22(v12, v6);
    [v15 setNeedsLayout];
  }
}

uint64_t sub_100302334()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100302384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_10030239C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100748FE4();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  v10 = sub_100743B04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_100931EB8) = 0;
  *(v2 + qword_100931EC0) = 0;
  *(v2 + qword_100931EC8) = 0;
  *(v2 + qword_100931ED0) = 0;
  *(v2 + qword_100931ED8) = 0;

  v14 = sub_1004686EC(a1, a2);
  v14[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  v17 = sub_10074F3E4();
  v38[3] = v17;
  v38[4] = sub_100305264(&qword_100926D40, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v18 = sub_10000D134(v38);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_10074FC74();
  sub_10000C620(v38);
  if (v17)
  {
    v19 = [v15 navigationItem];
    sub_10074DED4();
    if (v20)
    {
      v21 = sub_100753064();
    }

    else
    {
      v21 = 0;
    }

    [v19 setTitle:v21];

LABEL_12:
    goto LABEL_13;
  }

  (*(v11 + 104))(v13, enum case for SystemImage.listBullet(_:), v10);
  v22 = sub_100743AE4();
  (*(v11 + 8))(v13, v10);
  v23 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v22 style:0 target:v15 action:"toggleDisplayStyleWithAction:"];

  v24 = qword_100931EB8;
  v25 = *&v15[qword_100931EB8];
  *&v15[qword_100931EB8] = v23;

  v26 = [v15 navigationItem];
  v27 = *&v15[v24];
  [v26 setRightBarButtonItem:v27];

  v28 = *&v15[v24];
  if (v28)
  {
    v33 = a2;
    v21 = v28;
    sub_10074DE54();
    (*(v35 + 104))(v7, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v5);
    sub_100305264(&qword_100925B98, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
    sub_100753274();
    sub_100753274();
    if (v38[0] == v36 && v38[1] == v37)
    {
      v29 = v7;
      v30 = 1;
    }

    else
    {
      v29 = v7;
      v30 = sub_100754754();
    }

    v31 = *(v35 + 8);
    v31(v29, v5);
    v31(v34, v5);

    [v21 setSelected:v30 & 1];
    goto LABEL_12;
  }

LABEL_13:

  return v15;
}

id sub_1003028CC()
{
  v1 = qword_100931EC0;
  v2 = *(v0 + qword_100931EC0);
  if (v2)
  {
    v3 = *(v0 + qword_100931EC0);
  }

  else
  {
    v4 = sub_100304FB8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_10030292C()
{
  v0 = sub_1007541F4();
  sub_100039C50(v0, qword_100931EA0);
  sub_10000D0FC(v0, qword_100931EA0);
  sub_1007541A4();
  v1 = sub_100753064();
  v2 = [objc_opt_self() systemImageNamed:v1];

  sub_100754194();
  v3 = [objc_opt_self() configurationWithScale:1];
  sub_100754024();
  sub_100754094();
  sub_1007540D4();
  return result;
}

void sub_100302A14(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10074B974();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v11 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10074B964();
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setHidden:*&v1[v3] != 0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100302B54(void *a1)
{
  v2 = *&v1[qword_100931EC8];
  *&v1[qword_100931EC8] = a1;
  if (a1)
  {
    v5 = v2;
    v3 = a1;
    [v1 presentViewController:v3 animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  if (!v2)
  {
    return;
  }

  v5 = v2;
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v3 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_3;
  }

LABEL_4:
}

void sub_100302C1C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[qword_100931ED0];
    if (!v3 || (v4 = a1, type metadata accessor for PageFacetsViewController(0), v5 = v4, v6 = v3, LOBYTE(v4) = sub_100753FC4(), v5, v6, (v4 & 1) == 0))
    {
      v7 = *&v2[qword_100931EC8];
      *&v2[qword_100931EC8] = 0;
      if (v7)
      {
        v8 = [v7 presentingViewController];
        if (v8)
        {
          v9 = v8;
          [v8 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }

  v10 = *&v2[qword_100931ED0];
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_delegate + 8] = &off_100870E20;
    swift_unknownObjectWeakAssign();
    v11 = objc_allocWithZone(UINavigationController);
    v12 = v10;
    v13 = [v11 initWithRootViewController:v12];
    v14 = [v13 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    [v13 setModalPresentationStyle:7];
    v17 = [v13 presentationController];
    if (v17)
    {
      v18 = v17;
      [v17 setDelegate:v2];
    }

    [v13 setPreferredContentSize:{450.0, 450.0}];
    v19 = [v13 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1003028CC();
      [v20 setSourceView:v21];
    }

    v22 = [v13 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setPermittedArrowDirections:1];
    }

    v24 = [v13 popoverPresentationController];

    if (v24)
    {
      v25 = sub_1003028CC();
      v26 = [v25 titleLabel];

      if (v26)
      {
        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v34;
        v36 = v32;
        v37 = v30;
        v38 = v28;
      }

      else
      {
        [*&v2[qword_100931EC0] bounds];
      }

      MidX = CGRectGetMidX(*&v38);
      [*&v2[qword_100931EC0] bounds];
      [v24 setSourceRect:{MidX, CGRectGetMaxY(v46), 10.0, 10.0}];
    }

    v44 = *&v2[qword_100931EC8];
    *&v2[qword_100931EC8] = v13;
    v43 = v13;
    [v2 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v39 = *&v2[qword_100931EC8];
    *&v2[qword_100931EC8] = 0;
    if (!v39)
    {
      return;
    }

    v44 = v39;
    v40 = [v39 presentingViewController];
    if (v40)
    {
      v41 = v40;
      [v40 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_10030305C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 titleView];

  v4 = sub_1003028CC();
  v5 = v4;
  if (v3)
  {
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v6 = sub_100753FC4();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = qword_100931EC0;
  [*&v1[qword_100931EC0] setAlpha:0.0];
  v8 = [v1 navigationItem];
  [v8 setTitleView:*&v1[v7]];

  v9 = [v1 navigationItem];
  v10 = [v9 navigationBar];

  if (v10)
  {
    [v10 layoutIfNeeded];
  }

LABEL_7:
  v11 = qword_100931EC0;
  v12 = qword_100931ED8;
  v13 = 0.0;
  if (v1[qword_100931ED8])
  {
    v13 = 1.0;
  }

  [*&v1[qword_100931EC0] setAlpha:v13];
  v14 = *&v1[v11];
  v15 = v1[v12];

  return [v14 setUserInteractionEnabled:v15];
}

void sub_1003031FC()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = sub_1003028CC();
  sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_100753FF4();
  [v1 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_100305798, v2}];
}

void sub_1003032F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100303348();
  }
}

void sub_100303348()
{
  v1 = v0;
  sub_10074DEB4();
  v2 = sub_10074DE34();
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v4 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v5 = sub_1003E80B4(v2, 1, v3);

  v7 = *(v1 + qword_100931ED0);
  *(v1 + qword_100931ED0) = v5;
  v6 = v5;
  sub_100302C1C(v7);
}

void sub_100303420(void *a1)
{
  v1 = a1;
  sub_1003031FC();
}

double sub_100303468(id a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {

    return result;
  }

  v10 = sub_100754754();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    v12 = sub_1003028CC();
    [v12 sizeToFit];

    [*&v1[qword_100931EC0] setNeedsLayout];
  }

  return result;
}

void sub_1003035CC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100303468(a3);
}

uint64_t sub_100303638()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000C518(&unk_10093EC70, &unk_1007B9670);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - v2;
  v3 = sub_10000C518(&qword_1009324C0, &unk_1007BE6D0);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v22 - v4;
  v25 = sub_10000C518(&unk_1009324C8, &qword_1007B9680);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  sub_100359498();
  v8 = *(v0 + qword_10097EE08);
  sub_10074DE94();
  v9 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v10 = sub_100753774();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v10;
  sub_10000C518(&qword_1009324D8, &qword_1007B9688);
  sub_10002DDC8(&unk_1009324E0, &qword_1009324D8, &qword_1007B9688, &protocol conformance descriptor for SyncEvent<A>);
  v30 = v0;
  sub_100752584();
  v11 = v8;

  (*(v5 + 8))(v7, v25);
  sub_10000C620(v31);
  sub_10074DE34();
  sub_100748394();

  v12 = sub_100753774();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v12;
  v25 = sub_10000C518(&unk_10093EC80, &qword_1007B2D10);
  sub_10002DDC8(&unk_1009324F0, &unk_10093EC80, &qword_1007B2D10, &protocol conformance descriptor for AsyncEvent<A>);
  v13 = v27;
  sub_100752584();

  v14 = v29;
  v15 = *(v28 + 8);
  v15(v13, v29);
  sub_10000C620(v31);
  v28 = v11;
  sub_10074DE34();
  sub_1007483A4();

  v16 = sub_100753774();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v16;
  sub_100752584();

  v15(v13, v14);
  sub_10000C620(v31);
  v17 = sub_10074F3E4();
  v32 = v17;
  v33 = sub_100305264(&qword_100926D40, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v18 = sub_10000D134(v31);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = sub_10074FC74();
  result = sub_10000C620(v31);
  if (v17)
  {
    sub_10074DE34();
    sub_100748344();

    v20 = sub_100753774();
    v32 = v9;
    v33 = &protocol witness table for OS_dispatch_queue;
    v31[0] = v20;
    sub_10000C518(&unk_10093EC90, &qword_1007BE6E0);
    sub_10002DDC8(&unk_100932500, &unk_10093EC90, &qword_1007BE6E0, &protocol conformance descriptor for SyncEvent<A>);
    v21 = v22;
    sub_100752584();

    (*(v23 + 8))(v21, v24);
    return sub_10000C620(v31);
  }

  return result;
}

void sub_100303C1C(uint64_t a1)
{
  v2 = sub_10074DE84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100932518, qword_1007B9690);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  sub_100016B4C(a1, &v20 - v7, &qword_100932518, qword_1007B9690);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = sub_10074DE64();
    v13 = v12;
    v14 = sub_10074DE74();
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for EmptyStateView(0));
    sub_100421C68(v11, v13, v14, v16);
    v18 = objc_allocWithZone(sub_1007495D4());
    v19 = sub_1007495C4();
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  sub_100302A14(v10);
}

void (*sub_100303E18(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100305758;
}

void (*sub_100303E7C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10030573C;
}

id (*sub_100303EE0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003057B0;
}

void sub_100303F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100932478, &unk_1007B9658);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_10000C518(&qword_100932510, &qword_1007BE6B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = sub_10074F3E4();
  v23[3] = v10;
  v23[4] = sub_100305264(&qword_100926D40, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v11 = sub_10000D134(v23);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v10);
  LOBYTE(v10) = sub_10074FC74();
  sub_10000C620(v23);
  if (v10)
  {
    sub_100304658();
  }

  else
  {
    sub_100748364();
    v12 = sub_100742F84();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_10000C8CC(v9, &qword_100932510, &qword_1007BE6B0);
      v14 = 0;
    }

    else
    {
      v15 = sub_100742E64();
      (*(v13 + 8))(v9, v12);
      v16 = *(v15 + 16);

      v14 = v16 != 0;
    }

    *(a2 + qword_100931ED8) = v14;
    sub_10030305C();
    v17 = sub_1003028CC();
    sub_1007483E4();
    v18 = sub_100748374();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v6, a1, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    sub_100748334();
    sub_10000C8CC(v6, &qword_100932478, &unk_1007B9658);
    v20 = sub_100753064();

    [v17 setTitle:v20 forState:0];

    v21 = qword_100931EC0;
    [*(a2 + qword_100931EC0) sizeToFit];
    [*(a2 + v21) setNeedsLayout];
  }
}

uint64_t sub_1003042B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  sub_100752764();
  sub_100752D34();
  sub_1003C0E00(a1, 1, v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_1003043C8(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10030538C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1003053CC;
}

unint64_t sub_100304458@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  a1[3] = &type metadata for ArcadeSeeAllGamesPageGridProvider;
  result = sub_100305300();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1003044B0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArcadeSeeAllGamesPageShelfLayoutSectionProvider;
  result = sub_1003052AC();
  *(a1 + 32) = result;
  return result;
}

void sub_1003044E4(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009324A0, &qword_1007B9668);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  sub_10041F2A8(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v6 = v7[1];
    sub_10074B0F4();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_100304658()
{
  v1 = v0;
  v2 = sub_100748FE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074DE34();
  sub_10074DE54();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  v9 = sub_1000A62FC(v6, v5, sub_1003053D4, v7);

  (*(v3 + 8))(v5, v2);
  sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
  v10 = [(objc_class *)v9 image];
  v11 = v9;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v15.value.super.isa = v10;
  v15.is_nil = 0;
  v16.value.super.super.isa = v9;
  isa = sub_100753644(v18, v15, v16, v17).super.super.isa;
  v13 = [v8 navigationItem];
  [v13 setRightBarButtonItem:isa];
}

void sub_100304834(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003053F8();
}

void sub_100304894(void *a1)
{
  v1 = a1;
  sub_10074DEC4();
  sub_100302B54(0);
}

uint64_t sub_1003048F4(uint64_t a1)
{
  v2 = sub_100741264();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100932480, &unk_1007A9900);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100068C18(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1000AC948(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000C518(&unk_100932490, &qword_1007A9910);
  sub_1000498A8(&v9[*(v19 + 48)], v18);
  sub_1007492E4();
  v20 = *(v4 + 48);
  sub_100016B4C(v15, v6, &unk_100923970, &qword_1007A6B90);
  sub_100016B4C(v18, &v6[v20], &unk_100923970, &qword_1007A6B90);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016B4C(v6, v12, &unk_100923970, &qword_1007A6B90);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100305264(&qword_100926240, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = v21;
      v23 = sub_100753014();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
      sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
      v27(v12, v2);
      sub_10000C8CC(v6, &unk_100923970, &qword_1007A6B90);
      return v23 & 1;
    }

    sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000C8CC(v15, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(v18, &unk_100923970, &qword_1007A6B90);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000C8CC(v6, &unk_100932480, &unk_1007A9900);
    goto LABEL_9;
  }

  sub_10000C8CC(v6, &unk_100923970, &qword_1007A6B90);
  v23 = 1;
  return v23 & 1;
}

void sub_100304DB0()
{
  v1 = *(v0 + qword_100931ED0);
}

void sub_100304E10(uint64_t a1)
{
  v2 = *(a1 + qword_100931ED0);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController(uint64_t a1)
{
  result = qword_100931F08;
  if (!qword_100931F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100304F24()
{
  sub_10074DEC4();
  v1 = *(v0 + qword_100931ED0);
  *(v0 + qword_100931ED0) = 0;
  sub_100302C1C(v1);
}

id sub_100304FB8()
{
  v0 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10000C518(&qword_100932478, &unk_1007B9658);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() buttonWithType:1];
  sub_1007483E4();
  v7 = sub_100748374();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_100748334();
  sub_10000C8CC(v5, &qword_100932478, &unk_1007B9658);
  v8 = sub_100753064();

  [v6 setTitle:v8 forState:0];

  if (qword_1009208F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1007541F4();
  v10 = sub_10000D0FC(v9, qword_100931EA0);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v2, v10, v9);
  (*(v11 + 56))(v2, 0, 1, v9);
  sub_100754224();
  v12 = v6;
  [v12 setAlpha:0.0];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  [v12 setPointerInteractionEnabled:1];
  return v12;
}

uint64_t sub_100305264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003052AC()
{
  result = qword_1009324A8;
  if (!qword_1009324A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009324A8);
  }

  return result;
}

unint64_t sub_100305300()
{
  result = qword_1009324B0;
  if (!qword_1009324B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009324B0);
  }

  return result;
}

uint64_t sub_100305354()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100305394()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1003053F8()
{
  v1 = v0;
  v2 = sub_100748FE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17[-1] - v7;
  sub_10074DEA4();
  sub_10074DE54();
  (*(v3 + 104))(v5, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v2);
  sub_100305264(&qword_100925B98, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_100753274();
  sub_100753274();
  if (v17[0] == v17[5] && v17[1] == v17[6])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100754754();
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  v11 = sub_10074F3E4();
  v17[3] = v11;
  v17[4] = sub_100305264(&qword_100926D40, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v12 = sub_10000D134(v17);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v11);
  LOBYTE(v11) = sub_10074FC74();
  sub_10000C620(v17);
  if (v11)
  {
    sub_100304658();
  }

  else
  {
    v13 = [v1 navigationItem];
    v14 = [v13 rightBarButtonItem];

    [v14 setSelected:v9 & 1];
  }

  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v15 = v17[0];
  if (v9)
  {
    sub_10074B0D4();
  }

  else
  {
    sub_10074B104();
  }
}

uint64_t sub_100305760()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003057B4@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009817B8);
  v7 = *(v5 - 8);
  v22 = *(v7 + 16);
  v21 = v7 + 16;
  v22(v4, v6, v5);
  v8 = v2[13];
  v20 = enum case for FontSource.useCase(_:);
  v19 = v8;
  v8(v4);
  v9 = sub_100750B04();
  v30[3] = v9;
  v30[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v30);
  v28 = v1;
  v29 = &protocol witness table for FontSource;
  v10 = sub_10000D134(v27);
  v11 = v2[2];
  v11(v10, v4, v1);
  sub_100750B14();
  v12 = v2[1];
  v12(v4, v1);
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v5, qword_1009817D0);
  v22(v4, v13, v5);
  v19(v4, v20, v1);
  v28 = v9;
  v29 = &protocol witness table for StaticDimension;
  sub_10000D134(v27);
  v25 = v1;
  v26 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v24);
  v11(v14, v4, v1);
  sub_100750B14();
  v12(v4, v1);
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v5, qword_100981848);
  v22(v4, v15, v5);
  v19(v4, v20, v1);
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_10000D134(v24);
  v23[3] = v1;
  v23[4] = &protocol witness table for FontSource;
  v16 = sub_10000D134(v23);
  v11(v16, v4, v1);
  sub_100750B14();
  v12(v4, v1);
  return sub_10074AB64();
}

void sub_100305C68(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v6 = *a3;
  v7 = [v6 colorWithAlphaComponent:0.8];

  *a4 = v7;
}

char *sub_100305D2C(double a1, double a2, double a3, double a4)
{
  v9 = sub_100743584();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v11 - 8);
  v99 = v93 - v12;
  v13 = sub_100750534();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v106 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074AB44();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = v93 - v20;
  v21 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v21 - 8);
  v23 = v93 - v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v25 = sub_1007469A4();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  v98 = sub_1007433C4();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v108 = v4;
  *&v4[v26] = v27;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v13, qword_1009817B8);
  v30 = v14 + 16;
  v105 = *(v14 + 16);
  v105(v23, v29, v13);
  v97 = v14;
  v31 = v14 + 56;
  v104 = *(v14 + 56);
  v104(v23, 0, 1, v13);
  v32 = enum case for DirectionalTextAlignment.leading(_:);
  v96 = v17;
  v103 = *(v17 + 104);
  v103(v109, enum case for DirectionalTextAlignment.leading(_:), v16);
  v33 = sub_100745C84();
  v107 = v16;
  v34 = v33;
  v35 = objc_allocWithZone(v33);
  *&v108[v28] = sub_100745C74();
  v36 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v13, qword_1009817D0);
  v105(v23, v37, v13);
  v104(v23, 0, 1, v13);
  v103(v109, v32, v107);
  v38 = objc_allocWithZone(v34);
  *&v108[v36] = sub_100745C74();
  v94 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  v93[2] = v31;
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v39 = sub_10000D0FC(v13, qword_100981848);
  v40 = v105;
  v41 = v106;
  v105(v106, v39, v13);
  v42 = v107;
  v43 = v13;
  v93[0] = v13;
  v44 = v103;
  v103(v109, v32, v107);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v45[qword_100941490] = UIContentSizeCategoryExtraExtraExtraLarge;
  v40(v23, v41, v43);
  v93[1] = v30;
  v46 = v104;
  v104(v23, 0, 1, v43);
  v47 = v95;
  v44(v95, enum case for DirectionalTextAlignment.none(_:), v42);
  v48 = UIContentSizeCategoryExtraExtraExtraLarge;
  v49 = sub_100745C74();
  v50 = v106;
  v51 = v93[0];
  v40(v23, v106, v93[0]);
  v46(v23, 0, 1, v51);
  v52 = v49;
  sub_100745BA4();
  v53 = v50;
  sub_100745B84();
  [v52 setNumberOfLines:0];
  v54 = v96;
  v55 = v109;
  v56 = v107;
  (*(v96 + 16))(v47, v109, v107);
  sub_100745BF4();

  (*(v54 + 8))(v55, v56);
  (*(v97 + 8))(v53, v51);
  v57 = v108;
  *&v108[v94] = v52;
  *&v57[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_pageTraits] = 0;
  v58 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  v110.receiver = v57;
  v110.super_class = v58;
  v59 = objc_msgSendSuper2(&v110, "initWithFrame:", a1, a2, a3, a4);
  [v59 setClipsToBounds:0];
  v60 = [v59 contentView];
  [v60 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v61 = [v59 contentView];
  [v61 setClipsToBounds:0];

  v62 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  [*&v59[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView] setContentMode:2];
  v63 = qword_100920480;
  v64 = *&v59[v62];
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = sub_10074F0C4();
  v66 = sub_10000D0FC(v65, qword_10097E140);
  v67 = *(v65 - 8);
  v68 = v99;
  (*(v67 + 16))(v99, v66, v65);
  (*(v67 + 56))(v68, 0, 1, v65);
  sub_100743374();

  v69 = *&v59[v62];
  v71 = v100;
  v70 = v101;
  v72 = v102;
  (*(v101 + 104))(v100, enum case for CornerStyle.arc(_:), v102);
  v73 = v69;
  sub_1007433B4();

  (*(v70 + 8))(v71, v72);
  v74 = *&v59[v62];
  sub_100743234();
  sub_100746E64();

  v75 = *&v59[v62];
  sub_100743244();
  sub_100746E74();

  v76 = [v59 contentView];
  [v76 addSubview:*&v59[v62]];

  v77 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  v78 = qword_100920910;
  v79 = *&v59[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
  if (v78 != -1)
  {
    swift_once();
  }

  [v79 setTextColor:qword_10097F8D0];

  v80 = [v59 contentView];
  [v80 addSubview:*&v59[v77]];

  v81 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  v82 = qword_100920918;
  v83 = *&v59[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_10097F8D8;
  [v83 setTextColor:qword_10097F8D8];

  v85 = [v59 contentView];
  [v85 addSubview:*&v59[v81]];

  v86 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  [*&v59[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel] setTextColor:v84];
  v87 = [v59 contentView];
  [v87 addSubview:*&v59[v86]];

  v88 = objc_opt_self();
  v89 = [v88 clearColor];
  [v59 setBackgroundColor:v89];

  v90 = [v59 contentView];
  v91 = [v88 clearColor];
  [v90 setBackgroundColor:v91];

  return v59;
}

id sub_100306938()
{
  v1 = v0;
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074AB74();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10074AB94();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  v37.receiver = v1;
  v37.super_class = v15;
  result = objc_msgSendSuper2(&v37, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v27 = v3;
    v28 = v2;
    swift_unknownObjectRetain();
    [v1 bounds];
    CGRectGetWidth(v38);
    [v1 bounds];
    CGRectGetHeight(v39);
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v17 = sub_100750B04();
    sub_10000D0FC(v17, qword_1009820C8);
    sub_1007502D4();
    sub_100750564();
    (*(v12 + 8))(v14, v11);
    sub_1003057B4(v8);
    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView];
    v35 = sub_1007433C4();
    v36 = &protocol witness table for UIView;
    v34 = v18;
    v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
    v32 = sub_100745C84();
    v33 = &protocol witness table for UILabel;
    v31[9] = &protocol witness table for UILabel;
    v31[10] = v19;
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
    v31[8] = v32;
    v31[5] = v20;
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel];
    v31[4] = &protocol witness table for UILabel;
    v31[3] = v32;
    v31[0] = v21;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_10074AB84();
    sub_10074AB54();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v5, v28);
    return (*(v29 + 8))(v10, v30);
  }

  return result;
}

id sub_100306DB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_100743344();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel] setText:0];
}

id sub_100306E9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EditorialStoryCardCollectionViewCell(uint64_t a1)
{
  result = qword_100932548;
  if (!qword_100932548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100306FB4(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100307070()
{
  v1 = sub_100750534();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10074AB44();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v13 = sub_1007469A4();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  sub_1007433C4();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v62 = v0;
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v1, qword_1009817B8);
  v18 = v2 + 16;
  v59 = *(v2 + 16);
  v59(v11, v17, v1);
  v57 = v2;
  v20 = *(v2 + 56);
  v19 = v2 + 56;
  v60 = v20;
  v20(v11, 0, 1, v1);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v56 = v4;
  v23 = *(v4 + 104);
  v22 = v4 + 104;
  v58 = v23;
  v23(v8, enum case for DirectionalTextAlignment.leading(_:), v63);
  v24 = sub_100745C84();
  v25 = objc_allocWithZone(v24);
  *(v62 + v16) = sub_100745C74();
  v26 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v1, qword_1009817D0);
  v59(v11, v27, v1);
  v54 = v19;
  v60(v11, 0, 1, v1);
  v51 = v22;
  v58(v8, v21, v63);
  v28 = objc_allocWithZone(v24);
  *(v62 + v26) = sub_100745C74();
  v53 = OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v1, qword_100981848);
  v30 = v61;
  v31 = v59;
  v59(v61, v29, v1);
  v32 = v8;
  v52 = v8;
  v33 = v63;
  v34 = v58;
  v58(v32, v21, v63);
  v35 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v35[qword_100941490] = UIContentSizeCategoryExtraExtraExtraLarge;
  v31(v11, v30, v1);
  v36 = v1;
  v49 = v1;
  v50 = v18;
  v37 = v60;
  v60(v11, 0, 1, v36);
  v38 = v55;
  v34(v55, enum case for DirectionalTextAlignment.none(_:), v33);
  v39 = UIContentSizeCategoryExtraExtraExtraLarge;
  v40 = sub_100745C74();
  v41 = v61;
  v42 = v49;
  v31(v11, v61, v49);
  v37(v11, 0, 1, v42);
  v43 = v40;
  sub_100745BA4();
  sub_100745B84();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v52;
  v46 = v63;
  (*(v56 + 16))(v38, v52, v63);
  sub_100745BF4();

  (*(v44 + 8))(v45, v46);
  (*(v57 + 8))(v41, v42);
  v47 = v62;
  *(v62 + v53) = v43;
  *(v47 + OBJC_IVAR____TtC22SubscribePageExtension36EditorialStoryCardCollectionViewCell_pageTraits) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1003076F4@<X0>(void (*a1)(uint64_t, uint64_t, __n128)@<X0>, void *a2@<X8>)
{
  v141 = a2;
  v124 = sub_10000C518(&qword_100932568, qword_1007B97E8);
  __chkstk_darwin(v124);
  v125 = &v119 - v3;
  v4 = sub_10000C518(&qword_1009245B0, &qword_1007A7AA0);
  __chkstk_darwin(v4 - 8);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v119 - v7;
  __chkstk_darwin(v8);
  v131 = &v119 - v9;
  v10 = sub_1007457B4();
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  __chkstk_darwin(v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v119 - v14;
  v140 = sub_10000C518(&qword_100923580, &unk_1007B93C0);
  __chkstk_darwin(v140);
  v144 = &v119 - v15;
  v16 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v16 - 8);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v119 - v19;
  __chkstk_darwin(v20);
  v129 = &v119 - v21;
  __chkstk_darwin(v22);
  v126 = &v119 - v23;
  __chkstk_darwin(v24);
  v145 = &v119 - v25;
  v26 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v26 - 8);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = (&v119 - v29);
  __chkstk_darwin(v30);
  v32 = &v119 - v31;
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v119 - v38;
  v40 = sub_10074E984();
  v41 = *(v40 - 8);
  v146 = v40;
  v147 = v41;
  __chkstk_darwin(v40);
  v127 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  sub_100747C04();
  swift_getKeyPath();
  v143 = v45;
  sub_1007525B4();

  v46 = *(v37 + 8);
  v132 = v39;
  v47 = v39;
  v48 = v139;
  (v46)(v47, v36);
  v49 = a1;
  v50 = v36;
  v134 = v49;
  sub_100747BB4();
  sub_10000C8CC(v32, &unk_10093D6E0, &unk_1007A6080);
  v142 = v35;
  sub_100016B4C(v35, v48, &unk_10093D6E0, &unk_1007A6080);
  v51 = *(v37 + 48);
  v122 = v37 + 48;
  v52 = v51(v48, 1, v50);
  v136 = v37 + 8;
  if (v52 == 1)
  {
    sub_10000C8CC(v48, &unk_10093D6E0, &unk_1007A6080);
    v53 = 1;
    v54 = v145;
  }

  else
  {
    swift_getKeyPath();
    v54 = v145;
    sub_1007525B4();

    (v46)(v48, v50);
    v53 = 0;
  }

  v55 = v146;
  v56 = v147;
  (*(v147 + 56))(v54, v53, 1, v146);
  v57 = *(v140 + 48);
  v58 = v144;
  (*(v56 + 16))(v144, v143, v55);
  v59 = v57;
  sub_100016B4C(v54, &v58[v57], &unk_100933370, &unk_1007A8CE0);
  v60 = *(v56 + 88);
  v61 = v60(v58, v55);
  if (v61 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v62 = v132;
    sub_100747C04();
    swift_getKeyPath();
    v63 = v135;
    sub_1007525B4();

    v134 = v46;
    (v46)(v62, v50);
    v64 = v138;
    v65 = v133;
    v66 = v60;
    v67 = v137;
    (*(v138 + 104))(v133, enum case for ShelfBackground.editorsChoice(_:), v137);
    v68 = sub_1007457A4();
    v69 = *(v64 + 8);
    v69(v65, v67);
    v70 = v67;
    v60 = v66;
    v69(v63, v70);
    v71 = v144;
    if (v68)
    {
      v72 = v141;
      v141[3] = &type metadata for CGFloat;
      v72[4] = &protocol witness table for CGFloat;
      *v72 = 0x403C000000000000;
LABEL_7:
      sub_10000C8CC(v145, &unk_100933370, &unk_1007A8CE0);
      sub_10000C8CC(v142, &unk_10093D6E0, &unk_1007A6080);
      v73 = v146;
      v74 = *(v147 + 8);
      v74(v143, v146);
LABEL_8:
      sub_10000C8CC(v71 + v59, &unk_100933370, &unk_1007A8CE0);
      return (v74)(v71, v73);
    }

LABEL_17:
    v83 = v146;
    v82 = v147;
    if ((*(v147 + 48))(v71 + v59, 1, v146) != 1)
    {
      v84 = v130;
      sub_100016B4C(v71 + v59, v130, &unk_100933370, &unk_1007A8CE0);
      v85 = v60(v84, v83);
      if (v85 == v140)
      {
        v86 = v123;
        sub_100016B4C(v142, v123, &unk_10093D6E0, &unk_1007A6080);
        if (v139(v86, 1, v50) == 1)
        {
          sub_10000C8CC(v86, &unk_10093D6E0, &unk_1007A6080);
          v87 = 1;
          v88 = v137;
          v89 = v131;
        }

        else
        {
          swift_getKeyPath();
          v89 = v131;
          sub_1007525B4();

          (v134)(v86, v50);
          v87 = 0;
          v88 = v137;
        }

        v97 = v128;
        v98 = v138;
        v99 = *(v138 + 56);
        v99(v89, v87, 1, v88);
        (*(v98 + 104))(v97, enum case for ShelfBackground.editorsChoice(_:), v88);
        v99(v97, 0, 1, v88);
        v100 = *(v124 + 48);
        v101 = v89;
        v102 = v125;
        sub_100016B4C(v101, v125, &qword_1009245B0, &qword_1007A7AA0);
        sub_100016B4C(v97, v102 + v100, &qword_1009245B0, &qword_1007A7AA0);
        v103 = *(v98 + 48);
        if (v103(v102, 1, v88) == 1)
        {
          sub_10000C8CC(v97, &qword_1009245B0, &qword_1007A7AA0);
          sub_10000C8CC(v131, &qword_1009245B0, &qword_1007A7AA0);
          if (v103(v102 + v100, 1, v88) == 1)
          {
            sub_10000C8CC(v102, &qword_1009245B0, &qword_1007A7AA0);
LABEL_44:
            if (qword_100921738 != -1)
            {
              swift_once();
            }

            v115 = sub_100750B04();
            v116 = sub_10000D0FC(v115, qword_100982128);
            v117 = v141;
            v141[3] = v115;
            v117[4] = &protocol witness table for StaticDimension;
            v118 = sub_10000D134(v117);
            (*(*(v115 - 8) + 16))(v118, v116, v115);
            goto LABEL_7;
          }
        }

        else
        {
          v104 = v131;
          v105 = v120;
          sub_100016B4C(v102, v120, &qword_1009245B0, &qword_1007A7AA0);
          if (v103(v102 + v100, 1, v88) != 1)
          {
            v111 = v138;
            v112 = v102 + v100;
            v113 = v135;
            (*(v138 + 32))(v135, v112, v88);
            sub_10030B48C(&qword_100940610, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
            LODWORD(v144) = sub_100753014();
            v114 = *(v111 + 8);
            v114(v113, v88);
            sub_10000C8CC(v128, &qword_1009245B0, &qword_1007A7AA0);
            sub_10000C8CC(v104, &qword_1009245B0, &qword_1007A7AA0);
            v114(v105, v88);
            sub_10000C8CC(v102, &qword_1009245B0, &qword_1007A7AA0);
            v83 = v146;
            v82 = v147;
            if (v144)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }

          sub_10000C8CC(v128, &qword_1009245B0, &qword_1007A7AA0);
          sub_10000C8CC(v104, &qword_1009245B0, &qword_1007A7AA0);
          (*(v138 + 8))(v105, v88);
        }

        sub_10000C8CC(v102, &qword_100932568, qword_1007B97E8);
        v83 = v146;
        v82 = v147;
      }

      else
      {
        v82 = v147;
        (*(v147 + 8))(v84, v83);
      }
    }

LABEL_38:
    v106 = v141;
    v141[3] = &type metadata for Double;
    v106[4] = &protocol witness table for Double;
    *v106 = 0;
    sub_10000C8CC(v145, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(v142, &unk_10093D6E0, &unk_1007A6080);
    (*(v82 + 8))(v143, v83);
    return sub_10000C8CC(v71, &qword_100923580, &unk_1007B93C0);
  }

  if (v61 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    v73 = v146;
    v76 = v147;
    v77 = *(v147 + 48);
    v71 = v144;
    if (v77(&v144[v59], 1, v146) != 1)
    {
      v78 = v126;
      sub_100016B4C(v71 + v59, v126, &unk_100933370, &unk_1007A8CE0);
      if (v60(v78, v73) == enum case for Shelf.ContentType.smallLockup(_:))
      {
        v79 = v141;
        v141[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
        sub_10000C8CC(v145, &unk_100933370, &unk_1007A8CE0);
        sub_10000C8CC(v142, &unk_10093D6E0, &unk_1007A6080);
        v74 = *(v76 + 8);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v78, v73);
    }

    v90 = v145;
    v91 = v129;
    sub_100016B4C(v145, v129, &unk_100933370, &unk_1007A8CE0);
    if (v77(v91, 1, v73) == 1)
    {
      sub_10000C8CC(v91, &unk_100933370, &unk_1007A8CE0);
      v81 = v73;
    }

    else
    {
      v92 = v127;
      (*(v76 + 32))(v127, v91, v73);
      v81 = v73;
      if (qword_100920CD0 != -1)
      {
        swift_once();
      }

      if (sub_1002A5418(v92, qword_1009804B0))
      {
        if (qword_100921720 != -1)
        {
          swift_once();
        }

        v93 = sub_100750B04();
        v94 = sub_10000D0FC(v93, qword_1009820E0);
        v95 = v141;
        v141[3] = v93;
        v95[4] = &protocol witness table for StaticDimension;
        v96 = sub_10000D134(v95);
        (*(*(v93 - 8) + 16))(v96, v94, v93);
        v74 = *(v76 + 8);
        v73 = v146;
        v74(v127, v146);
        sub_10000C8CC(v90, &unk_100933370, &unk_1007A8CE0);
        sub_10000C8CC(v142, &unk_10093D6E0, &unk_1007A6080);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v92, v73);
    }
  }

  else
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v134 = v46;
    v71 = v144;
    if (v61 != enum case for Shelf.ContentType.productPageLink(_:) || (*(v147 + 48))(&v144[v57], 1, v146) == 1)
    {
      goto LABEL_17;
    }

    v80 = v121;
    sub_100016B4C(v71 + v57, v121, &unk_100933370, &unk_1007A8CE0);
    v81 = v146;
    if (v60(v80, v146) != enum case for Shelf.ContentType.annotation(_:))
    {
      (*(v147 + 8))(v80, v81);
      goto LABEL_17;
    }
  }

  sub_10000C8CC(v71 + v59, &unk_100933370, &unk_1007A8CE0);
  v107 = *(v147 + 8);
  v107(v71, v81);
  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v108 = sub_100750B04();
  sub_10000D0FC(v108, qword_1009820F8);
  sub_100750AE4();
  v109 = v141;
  v141[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v110;
  sub_10000C8CC(v145, &unk_100933370, &unk_1007A8CE0);
  sub_10000C8CC(v142, &unk_10093D6E0, &unk_1007A6080);
  return (v107)(v143, v81);
}

uint64_t sub_1003088FC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v164 = a2;
  v3 = sub_1007457B4();
  v156 = *(v3 - 8);
  v157 = v3;
  __chkstk_darwin(v3);
  v155 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v159 = &v142 - v6;
  v7 = sub_10074F704();
  v150 = *(v7 - 8);
  v151 = v7;
  __chkstk_darwin(v7);
  v149 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_10000C518(&qword_100923580, &unk_1007B93C0);
  __chkstk_darwin(v163);
  v167 = &v142 - v9;
  v10 = sub_10074E984();
  v11 = *(v10 - 8);
  v165 = v10;
  v166 = v11;
  __chkstk_darwin(v10);
  v162 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v154 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v142 - v17;
  v19 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v19 - 8);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v142 - v23;
  __chkstk_darwin(v25);
  v27 = &v142 - v26;
  v28 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v28 - 8);
  v143 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v142 = &v142 - v31;
  __chkstk_darwin(v32);
  v145 = &v142 - v33;
  __chkstk_darwin(v34);
  v148 = &v142 - v35;
  __chkstk_darwin(v36);
  v152 = &v142 - v37;
  __chkstk_darwin(v38);
  v161 = &v142 - v39;
  __chkstk_darwin(v40);
  v160 = &v142 - v41;
  __chkstk_darwin(v42);
  v158 = &v142 - v43;
  __chkstk_darwin(v44);
  v153 = &v142 - v45;
  __chkstk_darwin(v46);
  v147 = &v142 - v47;
  __chkstk_darwin(v48);
  v146 = &v142 - v49;
  __chkstk_darwin(v50);
  v144 = &v142 - v51;
  __chkstk_darwin(v52);
  v54 = &v142 - v53;
  v168 = a1;
  sub_100747BB4();
  sub_10000C8CC(v24, &unk_10093D6E0, &unk_1007A6080);
  sub_100028CD0(v21, v27);
  if ((*(v14 + 48))(v27, 1, v13) == 1)
  {
    sub_10000C8CC(v27, &unk_10093D6E0, &unk_1007A6080);
    v55 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    (*(v14 + 8))(v27, v13);
    v55 = 0;
  }

  v56 = v166;
  v57 = v54;
  v58 = v54;
  v59 = v165;
  (*(v166 + 56))(v57, v55, 1, v165);
  sub_100747C04();
  swift_getKeyPath();
  v60 = v162;
  sub_1007525B4();

  v61 = *(v14 + 8);
  v61(v18, v13);
  v62 = v167;
  v63 = v60;
  v64 = *(v163 + 48);
  (*(v56 + 32))(v167, v63, v59);
  v163 = v58;
  sub_100016B4C(v58, &v62[v64], &unk_100933370, &unk_1007A8CE0);
  v65 = *(v56 + 88);
  v66 = v65(v62, v59);
  if (v66 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.annotation(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v71 = v160;
      sub_100016B4C(&v62[v64], v160, &unk_100933370, &unk_1007A8CE0);
      v72 = v65(v71, v59);
      v161 = v71;
      if (v72 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        if (qword_100921728 != -1)
        {
          swift_once();
        }

        v73 = sub_100750B04();
        sub_10000D0FC(v73, qword_1009820F8);
        sub_100750AE4();
        v74 = v164;
        *(v164 + 3) = &type metadata for CGFloat;
        *(v74 + 4) = &protocol witness table for CGFloat;
        *v74 = v75;
        goto LABEL_22;
      }

      goto LABEL_84;
    }

LABEL_85:
    if (qword_100921738 != -1)
    {
      swift_once();
    }

    v138 = sub_100750B04();
    v139 = sub_10000D0FC(v138, qword_100982128);
    v140 = v164;
    *(v164 + 3) = v138;
    v140[4] = &protocol witness table for StaticDimension;
    v141 = sub_10000D134(v140);
    (*(*(v138 - 8) + 16))(v141, v139, v138);
    sub_10000C8CC(v163, &unk_100933370, &unk_1007A8CE0);
    v69 = &qword_100923580;
    v70 = &unk_1007B93C0;
    v68 = v62;
    return sub_10000C8CC(v68, v69, v70);
  }

  if (v66 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v76 = v158;
    sub_100016B4C(&v62[v64], v158, &unk_100933370, &unk_1007A8CE0);
    v77 = v65(v76, v59);
    v161 = v76;
    if (v77 == enum case for Shelf.ContentType.productMediaItem(_:))
    {
      goto LABEL_16;
    }

LABEL_84:
    (*(v56 + 8))(v161, v59);
    goto LABEL_85;
  }

  if (v66 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    goto LABEL_21;
  }

  v87 = enum case for Shelf.ContentType.editorsChoice(_:);
  if (v66 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v88 = v154;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v61(v88, v13);
    v90 = v155;
    v89 = v156;
    v91 = v157;
    (*(v156 + 104))(v155, enum case for ShelfBackground.editorsChoice(_:), v157);
    v92 = v159;
    v93 = sub_1007457A4();
    v94 = *(v89 + 8);
    v94(v90, v91);
    v94(v92, v91);
    if ((v93 & 1) == 0)
    {
      goto LABEL_85;
    }

    v95 = v164;
    *(v164 + 3) = &type metadata for CGFloat;
    *(v95 + 4) = &protocol witness table for CGFloat;
    *v95 = 30.0;
    goto LABEL_22;
  }

  if (v66 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v96 = v153;
      sub_100016B4C(&v62[v64], v153, &unk_100933370, &unk_1007A8CE0);
      v97 = v65(v96, v59);
      if (v97 == enum case for Shelf.ContentType.ribbonFlow(_:) || v97 == enum case for Shelf.ContentType.productRatings(_:))
      {
        sub_10000C8CC(&v62[v64], &unk_100933370, &unk_1007A8CE0);
        (*(v56 + 8))(v62, v59);
        if (qword_100921738 != -1)
        {
          swift_once();
        }

        v78 = sub_100750B04();
        v79 = v78;
        v80 = qword_100982128;
        goto LABEL_19;
      }

      (*(v56 + 8))(v96, v59);
    }

LABEL_16:
    sub_10000C8CC(&v62[v64], &unk_100933370, &unk_1007A8CE0);
    (*(v56 + 8))(v62, v59);
    if (qword_100921720 != -1)
    {
      swift_once();
    }

    v78 = sub_100750B04();
    v79 = v78;
    v80 = qword_1009820E0;
LABEL_19:
    v81 = sub_10000D0FC(v78, v80);
    v82 = v164;
    *(v164 + 3) = v79;
    v82[4] = &protocol witness table for StaticDimension;
    v83 = sub_10000D134(v82);
    (*(*(v79 - 8) + 16))(v83, v81, v79);
    v69 = &unk_100933370;
    v70 = &unk_1007A8CE0;
    v68 = v163;
    return sub_10000C8CC(v68, v69, v70);
  }

  if (v66 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_21:
    v84 = sub_1007457D4();
    v85 = v164;
    *(v164 + 3) = v84;
    v85[4] = sub_10030B48C(&qword_10092C838, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_10000D134(v85);
    sub_1007457C4();
    goto LABEL_22;
  }

  v98 = enum case for Shelf.ContentType.productReview(_:);
  if (v66 == enum case for Shelf.ContentType.productReview(_:))
  {
    v99 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v100 = v152;
    sub_100016B4C(&v62[v64], v152, &unk_100933370, &unk_1007A8CE0);
    v101 = v65(v100, v59);
    if (v101 == v99)
    {
      v102 = v149;
      sub_100747B84();
      sub_10074F634();
      v104 = v103;
      (*(v150 + 8))(v102, v151);
      v105 = v164;
      *(v164 + 3) = &type metadata for CGFloat;
      *(v105 + 4) = &protocol witness table for CGFloat;
      *v105 = v104;
      goto LABEL_22;
    }

    if (v101 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      goto LABEL_21;
    }

    v161 = v100;
    if (v101 != enum case for Shelf.ContentType.linkableText(_:))
    {
      goto LABEL_84;
    }

    v116 = v164;
    *(v164 + 3) = &type metadata for Double;
    *(v116 + 4) = &protocol witness table for Double;
    *v116 = 0.0;
LABEL_22:
    sub_10000C8CC(v163, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(&v62[v64], &unk_100933370, &unk_1007A8CE0);
    return (*(v56 + 8))(v62, v59);
  }

  v106 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v66 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v106 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v107 = v161;
    sub_100016B4C(&v62[v64], v161, &unk_100933370, &unk_1007A8CE0);
    v108 = v65(v107, v59);
    if (v108 == v98)
    {
      if (qword_100921728 != -1)
      {
        swift_once();
      }

      v109 = sub_100750B04();
      v110 = v109;
      v111 = qword_1009820F8;
LABEL_53:
      v113 = sub_10000D0FC(v109, v111);
      v114 = v164;
      *(v164 + 3) = v110;
      v114[4] = &protocol witness table for StaticDimension;
      v115 = sub_10000D134(v114);
      (*(*(v110 - 8) + 16))(v115, v113, v110);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  if (v66 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v112 = v148;
    sub_100016B4C(&v62[v64], v148, &unk_100933370, &unk_1007A8CE0);
    v108 = v65(v112, v59);
    v161 = v112;
LABEL_49:
    if (v108 != v106)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (qword_100921730 != -1)
    {
      swift_once();
    }

    v109 = sub_100750B04();
    v110 = v109;
    v111 = qword_100982110;
    goto LABEL_53;
  }

  if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v117 = v147;
    sub_100016B4C(&v62[v64], v147, &unk_100933370, &unk_1007A8CE0);
    v118 = v65(v117, v59);
    v161 = v117;
    if (v118 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v66 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v119 = v146;
    sub_100016B4C(&v62[v64], v146, &unk_100933370, &unk_1007A8CE0);
    v120 = v65(v119, v59);
    v161 = v119;
    if (v120 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v121 = v145;
    sub_100016B4C(&v62[v64], v145, &unk_100933370, &unk_1007A8CE0);
    v122 = v65(v121, v59);
    v161 = v121;
    if (v122 != v87)
    {
      goto LABEL_84;
    }

    goto LABEL_21;
  }

  v123 = v64;
  if (v66 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v130 = v66;
    v131 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v66 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      v56 = v166;
      v62 = v167;
      v59 = v165;
      if ((*(v166 + 48))(&v167[v64], 1, v165) == 1)
      {
        goto LABEL_85;
      }

      v132 = v143;
      sub_100016B4C(&v62[v64], v143, &unk_100933370, &unk_1007A8CE0);
      v133 = v65(v132, v59);
      v161 = v132;
      if (v133 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v56 = v166;
      v62 = v167;
      v59 = v165;
      if (v66 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v166 + 48))(&v167[v64], 1, v165) == 1)
      {
        goto LABEL_85;
      }

      v136 = v142;
      sub_100016B4C(&v62[v64], v142, &unk_100933370, &unk_1007A8CE0);
      v137 = v65(v136, v59);
      if (v137 != v131)
      {
        v161 = v142;
        if (v137 != v130)
        {
          goto LABEL_84;
        }
      }
    }

    sub_10000C8CC(&v62[v64], &unk_100933370, &unk_1007A8CE0);
    (*(v56 + 8))(v62, v59);
    v134 = sub_1007457D4();
    v135 = v164;
    *(v164 + 3) = v134;
    v135[4] = sub_10030B48C(&qword_10092C838, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_10000D134(v135);
    sub_1007457C4();
    goto LABEL_6;
  }

  v56 = v166;
  v62 = v167;
  v59 = v165;
  if ((*(v166 + 48))(&v167[v64], 1, v165) == 1)
  {
LABEL_5:
    sub_10000C8CC(&v62[v64], &unk_100933370, &unk_1007A8CE0);
    (*(v56 + 8))(v62, v59);
    v67 = v164;
    *(v164 + 3) = &type metadata for Double;
    *(v67 + 4) = &protocol witness table for Double;
    *v67 = 0.0;
LABEL_6:
    v68 = v163;
    v69 = &unk_100933370;
    v70 = &unk_1007A8CE0;
    return sub_10000C8CC(v68, v69, v70);
  }

  v124 = v144;
  sub_100016B4C(&v62[v123], v144, &unk_100933370, &unk_1007A8CE0);
  if (v65(v124, v59) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v59 = v165;
    v56 = v166;
    (*(v166 + 8))(v144, v165);
    v62 = v167;
    v64 = v123;
    goto LABEL_5;
  }

  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v125 = sub_100750B04();
  v126 = sub_10000D0FC(v125, qword_1009820F8);
  v127 = v164;
  *(v164 + 3) = v125;
  v127[4] = &protocol witness table for StaticDimension;
  v128 = sub_10000D134(v127);
  (*(*(v125 - 8) + 16))(v128, v126, v125);
  sub_10000C8CC(v163, &unk_100933370, &unk_1007A8CE0);
  v129 = v167;
  sub_10000C8CC(&v167[v123], &unk_100933370, &unk_1007A8CE0);
  return (*(v166 + 8))(v129, v165);
}

uint64_t sub_100309FAC@<X0>(uint64_t *a1@<X8>)
{
  v148 = a1;
  v1 = sub_1007457B4();
  v142 = *(v1 - 8);
  v143 = v1;
  __chkstk_darwin(v1);
  v141 = &v131 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v140 = &v131 - v4;
  v147 = sub_10000C518(&qword_100923580, &unk_1007B93C0);
  __chkstk_darwin(v147);
  v151 = &v131 - v5;
  v6 = sub_10074E984();
  v7 = *(v6 - 8);
  v149 = v6;
  v150 = v7;
  __chkstk_darwin(v6);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v145 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v131 - v14;
  v16 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v16 - 8);
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v131 - v20;
  __chkstk_darwin(v22);
  v24 = &v131 - v23;
  v25 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v25 - 8);
  v132 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v131 = &v131 - v28;
  __chkstk_darwin(v29);
  v139 = &v131 - v30;
  __chkstk_darwin(v31);
  v136 = &v131 - v32;
  __chkstk_darwin(v33);
  v146 = &v131 - v34;
  __chkstk_darwin(v35);
  v137 = &v131 - v36;
  __chkstk_darwin(v37);
  v144 = &v131 - v38;
  __chkstk_darwin(v39);
  v138 = &v131 - v40;
  __chkstk_darwin(v41);
  v135 = &v131 - v42;
  __chkstk_darwin(v43);
  v134 = &v131 - v44;
  __chkstk_darwin(v45);
  v133 = &v131 - v46;
  __chkstk_darwin(v47);
  v49 = &v131 - v48;
  sub_100747BB4();
  sub_10000C8CC(v21, &unk_10093D6E0, &unk_1007A6080);
  sub_100028CD0(v18, v24);
  if ((*(v11 + 48))(v24, 1, v10) == 1)
  {
    sub_10000C8CC(v24, &unk_10093D6E0, &unk_1007A6080);
    v50 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1007525B4();

    (*(v11 + 8))(v24, v10);
    v50 = 0;
  }

  v51 = v149;
  v52 = v150;
  (*(v150 + 56))(v49, v50, 1, v149);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v53 = v49;
  v54 = *(v11 + 8);
  v55 = v15;
  v56 = v51;
  v54(v55, v10);
  v57 = *(v52 + 32);
  v58 = v151;
  v59 = v9;
  v60 = v52;
  v61 = *(v147 + 48);
  v57(v151, v59, v56);
  v147 = v53;
  sub_100016B4C(v53, &v58[v61], &unk_100933370, &unk_1007A8CE0);
  v62 = *(v60 + 88);
  v63 = v62(v58, v56);
  if (v63 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_5:
    sub_10000C8CC(&v58[v61], &unk_100933370, &unk_1007A8CE0);
    (*(v60 + 8))(v58, v56);
    if (qword_100921720 != -1)
    {
      swift_once();
    }

    v64 = sub_100750B04();
    v65 = v64;
    v66 = qword_1009820E0;
LABEL_12:
    v67 = sub_10000D0FC(v64, v66);
    v68 = v148;
    v148[3] = v65;
    v68[4] = &protocol witness table for StaticDimension;
    v69 = sub_10000D134(v68);
    (*(*(v65 - 8) + 16))(v69, v67, v65);
    v70 = &unk_100933370;
    v71 = &unk_1007A8CE0;
    v72 = v147;
    return sub_10000C8CC(v72, v70, v71);
  }

  if (v63 == enum case for Shelf.ContentType.annotation(_:))
  {
LABEL_9:
    sub_10000C8CC(&v58[v61], &unk_100933370, &unk_1007A8CE0);
    (*(v60 + 8))(v58, v56);
    if (qword_100921728 != -1)
    {
      swift_once();
    }

    v64 = sub_100750B04();
    v65 = v64;
    v66 = qword_1009820F8;
    goto LABEL_12;
  }

  if (v63 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v74 = v144;
      sub_100016B4C(&v58[v61], v144, &unk_100933370, &unk_1007A8CE0);
      v75 = v62(v74, v56);
      v146 = v74;
      if (v75 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (qword_100921738 != -1)
    {
      swift_once();
    }

    v107 = sub_100750B04();
    v108 = sub_10000D0FC(v107, qword_100982128);
    v109 = v148;
    v148[3] = v107;
    v109[4] = &protocol witness table for StaticDimension;
    v110 = sub_10000D134(v109);
    (*(*(v107 - 8) + 16))(v110, v108, v107);
    sub_10000C8CC(v147, &unk_100933370, &unk_1007A8CE0);
    v70 = &qword_100923580;
    v71 = &unk_1007B93C0;
    v72 = v58;
    return sub_10000C8CC(v72, v70, v71);
  }

  if (v63 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v76 = v139;
    sub_100016B4C(&v58[v61], v139, &unk_100933370, &unk_1007A8CE0);
    v77 = v62(v76, v56);
    v146 = v76;
    if (v77 == enum case for Shelf.ContentType.productReview(_:))
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

  if (v63 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_100747C04();
    swift_getKeyPath();
    v79 = v61;
    v80 = v140;
    v81 = v145;
    sub_1007525B4();

    v54(v81, v10);
    v83 = v141;
    v82 = v142;
    v84 = v143;
    (*(v142 + 104))(v141, enum case for ShelfBackground.editorsChoice(_:), v143);
    v85 = sub_1007457A4();
    v86 = *(v82 + 8);
    v86(v83, v84);
    v86(v80, v84);
    if ((v85 & 1) == 0)
    {
      goto LABEL_53;
    }

    v87 = v147;
    v88 = v148;
    v148[3] = &type metadata for CGFloat;
    v88[4] = &protocol witness table for CGFloat;
    *v88 = 0x403E000000000000;
    sub_10000C8CC(v87, &unk_100933370, &unk_1007A8CE0);
    v89 = &v58[v79];
    goto LABEL_35;
  }

  if (v63 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_5;
    }

    v90 = v138;
    sub_100016B4C(&v58[v61], v138, &unk_100933370, &unk_1007A8CE0);
    if (v62(v90, v56) != enum case for Shelf.ContentType.productRatings(_:))
    {
      (*(v60 + 8))(v90, v56);
      goto LABEL_5;
    }

    if (qword_100921738 != -1)
    {
      swift_once();
    }

    v91 = sub_100750B04();
    v92 = v91;
    v93 = qword_100982128;
    goto LABEL_31;
  }

  if (v63 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_33:
    v97 = sub_1007457D4();
    v98 = v148;
    v148[3] = v97;
    v98[4] = sub_10030B48C(&qword_10092C838, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_10000D134(v98);
    sub_1007457C4();
    goto LABEL_34;
  }

  v99 = enum case for Shelf.ContentType.productReview(_:);
  if (v63 == enum case for Shelf.ContentType.productReview(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v100 = v146;
    sub_100016B4C(&v58[v61], v146, &unk_100933370, &unk_1007A8CE0);
    v101 = v62(v100, v56);
    if (v101 != enum case for Shelf.ContentType.productReviewAction(_:))
    {
      if (v101 == enum case for Shelf.ContentType.linkableText(_:))
      {
LABEL_21:
        v78 = v148;
        v148[3] = &type metadata for Double;
        v78[4] = &protocol witness table for Double;
        *v78 = 0;
LABEL_34:
        sub_10000C8CC(v147, &unk_100933370, &unk_1007A8CE0);
        v89 = &v58[v61];
LABEL_35:
        sub_10000C8CC(v89, &unk_100933370, &unk_1007A8CE0);
        return (*(v60 + 8))(v58, v56);
      }

LABEL_52:
      (*(v60 + 8))(v146, v56);
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v102 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v63 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v103 = v137;
      sub_100016B4C(&v58[v61], v137, &unk_100933370, &unk_1007A8CE0);
      v104 = v62(v103, v56);
      v146 = v103;
      if (v104 == v99)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v63 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v105 = v136;
    sub_100016B4C(&v58[v61], v136, &unk_100933370, &unk_1007A8CE0);
    v106 = v62(v105, v56);
    v146 = v105;
    if (v106 != v102)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if (v63 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_57;
  }

  if (v63 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v112 = v135;
    sub_100016B4C(&v58[v61], v135, &unk_100933370, &unk_1007A8CE0);
    v113 = v62(v112, v56);
    v146 = v112;
    if (v113 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (qword_100921730 != -1)
    {
      swift_once();
    }

    v91 = sub_100750B04();
    v92 = v91;
    v93 = qword_100982110;
LABEL_31:
    v94 = sub_10000D0FC(v91, v93);
    v95 = v148;
    v148[3] = v92;
    v95[4] = &protocol witness table for StaticDimension;
    v96 = sub_10000D134(v95);
    (*(*(v92 - 8) + 16))(v96, v94, v92);
    goto LABEL_34;
  }

  if (v63 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v114 = v134;
    sub_100016B4C(&v58[v61], v134, &unk_100933370, &unk_1007A8CE0);
    v115 = v62(v114, v56);
    v146 = v114;
    if (v115 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (v63 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v123 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v63 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v124 = v132;
      sub_100016B4C(&v58[v61], v132, &unk_100933370, &unk_1007A8CE0);
      v125 = v62(v124, v56);
      v146 = v124;
      if (v125 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v128 = v63;
      if (v63 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v129 = v131;
      sub_100016B4C(&v58[v61], v131, &unk_100933370, &unk_1007A8CE0);
      v130 = v62(v129, v56);
      if (v130 != v123)
      {
        v146 = v131;
        if (v130 != v128)
        {
          goto LABEL_52;
        }
      }
    }

    sub_10000C8CC(&v58[v61], &unk_100933370, &unk_1007A8CE0);
    (*(v60 + 8))(v58, v56);
    v126 = sub_1007457D4();
    v127 = v148;
    v148[3] = v126;
    v127[4] = sub_10030B48C(&qword_10092C838, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
    sub_10000D134(v127);
    sub_1007457C4();
LABEL_58:
    v72 = v147;
    v70 = &unk_100933370;
    v71 = &unk_1007A8CE0;
    return sub_10000C8CC(v72, v70, v71);
  }

  if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
  {
LABEL_57:
    sub_10000C8CC(&v58[v61], &unk_100933370, &unk_1007A8CE0);
    (*(v60 + 8))(v58, v56);
    v111 = v148;
    v148[3] = &type metadata for Double;
    v111[4] = &protocol witness table for Double;
    *v111 = 0;
    goto LABEL_58;
  }

  v116 = &v58[v61];
  v117 = v133;
  sub_100016B4C(v116, v133, &unk_100933370, &unk_1007A8CE0);
  if (v62(v117, v56) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v56 = v149;
    v60 = v150;
    (*(v150 + 8))(v133, v149);
    v58 = v151;
    goto LABEL_57;
  }

  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v118 = sub_100750B04();
  v119 = sub_10000D0FC(v118, qword_1009820F8);
  v120 = v148;
  v148[3] = v118;
  v120[4] = &protocol witness table for StaticDimension;
  v121 = sub_10000D134(v120);
  (*(*(v118 - 8) + 16))(v121, v119, v118);
  sub_10000C8CC(v147, &unk_100933370, &unk_1007A8CE0);
  v122 = v151;
  sub_10000C8CC(&v151[v61], &unk_100933370, &unk_1007A8CE0);
  return (*(v150 + 8))(v122, v149);
}

uint64_t sub_10030B3B8@<X0>(void (*a1)(uint64_t, uint64_t, __n128)@<X0>, void *a2@<X8>)
{
  v4 = sub_100747B94();
  sub_1007537D4();

  return sub_1003076F4(a1, a2);
}

uint64_t sub_10030B404@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_100747B94();
  v5 = sub_1007537D4();

  if (v5)
  {

    return sub_1003088FC(a1, a2);
  }

  else
  {

    return sub_100309FAC(a2);
  }
}

uint64_t sub_10030B48C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10030B4F0()
{
  v36 = sub_100748B44();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100748B54();
  sub_100039C50(v5, qword_10097F910);
  v33 = sub_10000D0FC(v5, qword_10097F910);
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_10097F928);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v4, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v2 + 13;
  v32 = v2[13];
  v32(v4, enum case for FontSource.useCase(_:), v1);
  v31 = sub_100750B04();
  v50[3] = v31;
  v50[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v50);
  v48 = v1;
  v49 = &protocol witness table for FontSource;
  v13 = sub_10000D134(&v47);
  v30 = v2[2];
  v30(v13, v4, v1);
  sub_100750B14();
  v14 = v2[1];
  v28 = v2 + 1;
  v29 = v14;
  v14(v4, v1);
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v6, qword_10097F940);
  v24 = v9;
  v25 = v10;
  v9(v4, v15, v6);
  v16 = v32;
  v32(v4, v11, v1);
  v27 = v12;
  v17 = v31;
  v48 = v31;
  v49 = &protocol witness table for StaticDimension;
  sub_10000D134(&v47);
  v26 = v11;
  v45 = v1;
  v46 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v44);
  v19 = v30;
  v30(v18, v4, v1);
  sub_100750B14();
  v20 = v29;
  v29(v4, v1);
  v45 = &type metadata for Double;
  v46 = &protocol witness table for Double;
  v44[0] = 0x4034000000000000;
  v24(v4, v15, v6);
  v16(v4, v26, v1);
  v43[3] = v17;
  v43[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v43);
  v41 = v1;
  v42 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v40);
  v19(v21, v4, v1);
  sub_100750B14();
  v20(v4, v1);
  v42 = &protocol witness table for Double;
  v41 = &type metadata for Double;
  v40[0] = 0x4080E00000000000;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  (*(v34 + 104))(v35, enum case for EditorialQuoteLayout.Metrics.Alignment.leading(_:), v36);
  return sub_100748B34();
}

char *sub_10030BABC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v16 = sub_1007469A4();
  v17 = *(*(v16 - 8) + 56);
  v46 = v4;
  v17(&v4[v15], 1, 1, v16);
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_10097F928);
  v20 = *(v18 - 8);
  v43 = *(v20 + 16);
  v43(v14, v19, v18);
  v42 = *(v20 + 56);
  v42(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v10 + 104);
  v22(v45, enum case for DirectionalTextAlignment.none(_:), v9);
  v23 = sub_100745C84();
  v41 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v46[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_quoteLabel] = sub_100745C74();
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v18, qword_10097F940);
  v43(v14, v26, v18);
  v42(v14, 0, 1, v18);
  v22(v45, v21, v41);
  v27 = objc_allocWithZone(v24);
  v28 = sub_100745C74();
  v29 = v46;
  *&v46[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel] = v28;
  v47.receiver = v29;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v32 = [v30 contentView];
  [v32 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_quoteLabel]];

  v33 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel;
  v34 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemGrayColor];
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v33]];

  v39 = v30;
  sub_10030C5B8(v39, v39);

  return v39;
}

uint64_t sub_10030C05C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_100750354();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748B54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100748B74();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();

  if (qword_100920920 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v6, qword_10097F910);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_quoteLabel];
  v28 = sub_100745C84();
  v29 = &protocol witness table for UIView;
  v26 = &protocol witness table for UIView;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_100748B64();
  sub_100748B24();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10030C3C0(uint64_t a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (!a1)
  {
    return sub_10030C5B8(v2, v2);
  }

  if ((sub_1007537F4() ^ v5))
  {
    return sub_10030C5B8(v2, v2);
  }

  v6 = [v2 traitCollection];
  v7 = sub_1007537D4() & 1;

  result = sub_1007537D4();
  if ((result & 1) != v7)
  {
    return sub_10030C5B8(v2, v2);
  }

  return result;
}

uint64_t type metadata accessor for EditorialQuoteCollectionViewCell(uint64_t a1)
{
  result = qword_1009325A8;
  if (!qword_1009325A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10030C5B8(void *a1, uint64_t a2)
{
  v4 = sub_10074AB44();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = sub_1007537D4();

  if (v10)
  {
    v11 = enum case for DirectionalTextAlignment.leading(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_100745BF4();
    v12(v8, v11, v4);
    return sub_100745BF4();
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_quoteLabel) setTextAlignment:1];
    v14 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_attributionLabel);

    return [v14 setTextAlignment:1];
  }
}

void *sub_10030C758(uint64_t a1, uint64_t a2, __n128 a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_100754624();

    if (v4)
    {
      sub_100016C60(0, &qword_10092B280, UIImage_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1004126C0(a1, a3);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_10030C848(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v7 = sub_100750B04();
  v8 = sub_10000D0FC(v7, qword_1009820B0);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_10000D134(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

char *sub_10030C948(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform] = 0;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_flowLayout;
  v12 = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork] = _swiftEmptyArrayStorage;
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = [objc_allocWithZone(UICollectionView) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView] = v14;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView;
  [*&v15[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v18 = *&v15[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [*&v15[v17] setAllowsSelection:1];
  [*&v15[v17] setAlwaysBounceHorizontal:1];
  [*&v15[v17] setShowsHorizontalScrollIndicator:0];
  [*&v15[v17] setDataSource:v15];
  v22 = *&v15[v17];
  [v22 setDelegate:v15];

  v23 = *&v15[v17];
  type metadata accessor for ScreenshotCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v23;
  sub_1007539D4();
  v26 = sub_100753064();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v26];

  v27 = [v15 contentView];
  [v27 addSubview:*&v15[v17]];

  return v15;
}

id sub_10030CCF8()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  v68.receiver = v0;
  v68.super_class = v6;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v64 = v9;
  v65 = v8;
  v62 = v11;
  v63 = v10;

  v67 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v12)
  {
    v17 = v12;
    [v17 frame];
    v14 = v18;
    v15 = v19;
    if (qword_100920950 != -1)
    {
      swift_once();
    }

    v20 = qword_10097F978;
    sub_10000C888(qword_10097F960, qword_10097F978);
    sub_100536120(v20);
    sub_100750564();
    v16 = v21;

    (*(v3 + 8))(v5, v2);
  }

  v22 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView];
  v24 = 0.0;
  v25 = 0.0;
  if (v23)
  {
    v26 = v23;
    [v26 frame];
    v13 = v27;
    v24 = v28;
    if (qword_100920948 != -1)
    {
      swift_once();
    }

    v29 = qword_100932628;
    sub_10000C888(qword_100932610, qword_100932628);
    sub_100536120(v29);
    sub_100750564();
    v25 = v30;

    (*(v3 + 8))(v5, v2);
  }

  if (qword_100920938 != -1)
  {
    swift_once();
  }

  v61 = v13;
  v66 = v14;
  v31 = qword_1009325D8;
  sub_10000C888(qword_1009325C0, qword_1009325D8);
  sub_100536120(v31);
  sub_100750564();
  v33 = v32;
  v34 = *(v3 + 8);
  v34(v5, v2);
  if (qword_100920940 != -1)
  {
    swift_once();
  }

  v35 = qword_100932600;
  sub_10000C888(qword_1009325E8, qword_100932600);
  sub_100536120(v35);
  sub_100750564();
  v37 = v36;
  v34(v5, v2);
  v59 = v15;
  v60 = v16;
  v58 = v15 + v16 + v24 + v25 + v33 + v37;
  v38 = v65;
  v69.origin.x = v65;
  v53 = v25;
  v39 = v24;
  v56 = v24;
  v41 = v63;
  v40 = v64;
  v69.origin.y = v64;
  v69.size.width = v63;
  v42 = v62;
  v69.size.height = v62;
  MinX = CGRectGetMinX(v69);
  v55 = MinX;
  v70.origin.x = v38;
  v70.origin.y = v40;
  v70.size.width = v41;
  v70.size.height = v42;
  v44 = v33 + CGRectGetMinY(v70);
  v57 = v44;
  v71.origin.x = v38;
  v71.origin.y = v40;
  v71.size.width = v41;
  v71.size.height = v42;
  v54 = CGRectGetMinX(v71);
  v72.origin.x = MinX;
  v72.origin.y = v44;
  v45 = v61;
  v72.size.width = v61;
  v72.size.height = v39;
  v46 = v53 + CGRectGetMaxY(v72);
  v73.origin.x = v38;
  v73.origin.y = v40;
  v73.size.width = v41;
  v73.size.height = v42;
  Width = CGRectGetWidth(v73);
  v74.origin.x = v38;
  v74.origin.y = v40;
  v74.size.width = v41;
  v74.size.height = v42;
  v48 = CGRectGetHeight(v74) - v58;
  v75.origin.x = v38;
  v75.origin.y = v40;
  v75.size.width = v41;
  v75.size.height = v42;
  v49 = CGRectGetMinX(v75);
  v50 = v54;
  v76.origin.x = v54;
  v76.origin.y = v46;
  v76.size.width = Width;
  v76.size.height = v48;
  v51 = v60 + CGRectGetMaxY(v76);
  [*&v1[v22] setFrame:{v55, v57, v45, v56}];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView] setFrame:{v50, v46, Width, v48}];
  return [*&v1[v67] setFrame:{v49, v51, v66, v59}];
}

void sub_10030D2C8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView];
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

  [v0 setNeedsLayout];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;

  v8 = *&v0[v7];
  if (v8)
  {
    *(v8 + 32) = &off_100870F68;
    swift_unknownObjectWeakAssign();
  }
}

BOOL sub_10030D404()
{
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform))
  {
    return 0;
  }

  v1 = sub_1007444C4();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_100754664();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    v6 = sub_10074F114();

    ++v4;
  }

  while ((v6 & 1) == 0);

  return v5;
}

uint64_t sub_10030D550(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell(0);
  sub_1007539D4();
  v4 = sub_100753064();

  isa = sub_100741704().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_10028864C();

  return v7;
}

void sub_10030DAE4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler + 8);

    v5 = sub_100741774();
    v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v6 + 8 * v5 + 32);

LABEL_6:
        v8 = sub_100741774();
        v3(v7, v8);
        sub_1000164A8(v3, v4);

        goto LABEL_7;
      }

      __break(1u);
      return;
    }

    v7 = sub_100754574();

    goto LABEL_6;
  }

LABEL_7:
  isa = sub_100741704().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];
}

id sub_10030DDF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotShelfCollectionViewCell(uint64_t a1)
{
  result = qword_100932668;
  if (!qword_100932668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030DF74(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10030E050(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v99 = a6;
  v101 = a3;
  v100 = a2;
  v94 = sub_100754724();
  v9 = *(v94 - 8);
  __chkstk_darwin(v94);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = sub_1007428D4();
  v97 = *(ObjectType - 8);
  __chkstk_darwin(ObjectType);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1007504F4();
  v95 = *(v102 - 8);
  __chkstk_darwin(v102);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v89 - v17;
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  __chkstk_darwin(v22);
  v24 = &v89 - v23;
  v25 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v25 - 8);
  v96 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1 >> 62;
  v93 = v9;
  v92 = v11;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_76:
    v105 = sub_100754664();
  }

  else
  {
    v105 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v104 = a1;
  v103 = a1 & 0xC000000000000001;
  do
  {
    a1 = v29;
    if (v105 == v29)
    {
      break;
    }

    if (v103)
    {
      sub_100754574();
      if (__OFADD__(a1, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(a1, 1))
      {
        goto LABEL_12;
      }
    }

    v30 = sub_10074F114();

    v29 = a1 + 1;
  }

  while ((v30 & 1) == 0);
  sub_100743864();
  sub_1002898DC(v100, v96, v31);
  if (v27)
  {
    v32 = sub_100754664();
  }

  else
  {
    v32 = *(v28 + 16);
  }

  v91 = a5;
  v90 = a4;
  if (v32 < 1)
  {
    sub_1007444B4();
    v46 = v97;
    v47 = ObjectType;
    v48 = (*(v97 + 88))(v13, ObjectType);
    v27 = v15;
    a1 = v18;
    v34 = v95;
    if (v48 != enum case for AppPlatform.phone(_:) && v48 != enum case for AppPlatform.pad(_:) && v48 != enum case for AppPlatform.messages(_:))
    {
      if (v48 == enum case for AppPlatform.watch(_:))
      {
        if (qword_100920770 == -1)
        {
LABEL_46:
          v50 = v102;
          v51 = sub_10000D0FC(v102, qword_10097ECE0);
          (*(v34 + 16))(a1, v51, v50);
          goto LABEL_38;
        }

LABEL_78:
        swift_once();
        goto LABEL_46;
      }

      if (v48 != enum case for AppPlatform.tv(_:) && v48 != enum case for AppPlatform.mac(_:))
      {
        sub_100750504();
        (*(v46 + 8))(v13, v47);
LABEL_38:
        v49 = v101;
        if (sub_1007444C4() & 1) != 0 && (sub_100750444())
        {
          if (sub_100750444())
          {
            (*(v34 + 16))(v27, a1, v102);
          }

          else
          {
            sub_100750484();
          }
        }

        else
        {
          (*(v34 + 16))(v27, a1, v102);
          sub_100750444();
        }

        swift_getObjectType();
        v52 = [v49 traitCollection];
        sub_1007537B4();

        [v49 pageMarginInsets];
        [v49 pageMarginInsets];
        PageTraitEnvironment.pageColumnMargin.getter();
        v53 = [v49 traitCollection];
        sub_1007537B4();

        sub_1007504C4();
        sub_1007504C4();
        v37 = v54;
        v55 = *(v34 + 8);
        v56 = v102;
        v55(v27, v102);
        v55(a1, v56);
        goto LABEL_49;
      }
    }

    sub_100750504();
    goto LABEL_38;
  }

  v33 = v95;
  v34 = v105;
  if (!v105)
  {
    v37 = 0.0;
    goto LABEL_49;
  }

  if (v105 < 1)
  {
    __break(1u);
    goto LABEL_78;
  }

  ObjectType = swift_getObjectType();
  v35 = 0;
  v97 = v33 + 16;
  v36 = (v33 + 8);
  v37 = 0.0;
  do
  {
    if (v103)
    {
      sub_100754574();
    }

    else
    {
    }

    v43 = v101;
    v44 = sub_1007444C4();
    sub_10074F2A4();
    sub_100750504();
    if (v34 == a1 || (v44 & 1) == 0)
    {
      (*v97)(v21, v24, v102);
      sub_100750444();
    }

    else if (sub_100750444())
    {
      (*v97)(v21, v24, v102);
    }

    else
    {
      sub_100750484();
    }

    v45 = [v43 traitCollection];
    sub_1007537B4();

    [v43 pageMarginInsets];
    [v43 pageMarginInsets];
    PageTraitEnvironment.pageColumnMargin.getter();
    ++v35;
    v38 = [v43 traitCollection];
    sub_1007537B4();

    sub_1007504C4();
    sub_1007504C4();
    v40 = v39;

    v41 = *v36;
    v42 = v102;
    (*v36)(v21, v102);
    v41(v24, v42);
    if (v40 > v37)
    {
      v37 = v40;
    }

    v34 = v105;
  }

  while (v105 != v35);
LABEL_49:
  sub_10000C518(&unk_10092F780, &qword_1007A6320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = v37;
  v106 = inited;
  v58 = v90;
  v59 = v94;
  v60 = v93;
  v61 = v92;
  v62 = v91;
  if (v90 >= COERCE_DOUBLE(1))
  {
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_1007A6580;
    *(v63 + 32) = v58;
    if (qword_100920948 != -1)
    {
      swift_once();
    }

    v64 = qword_100932628;
    sub_10000C888(qword_100932610, qword_100932628);
    sub_100536120(v64);
    sub_100750564();
    v66 = v65;
    (*(v60 + 8))(v61, v59);
    *(v63 + 40) = v66;
    sub_10049FD08(v63);
  }

  if (v62 >= COERCE_DOUBLE(1))
  {
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_1007A6580;
    *(v67 + 32) = v62;
    if (qword_100920950 != -1)
    {
      swift_once();
    }

    v68 = qword_10097F978;
    sub_10000C888(qword_10097F960, qword_10097F978);
    sub_100536120(v68);
    sub_100750564();
    v70 = v69;
    (*(v60 + 8))(v61, v59);
    *(v67 + 40) = v70;
    sub_10049FD08(v67);
  }

  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_1007A6580;
  if (qword_100920938 != -1)
  {
    swift_once();
  }

  v72 = qword_1009325D8;
  sub_10000C888(qword_1009325C0, qword_1009325D8);
  sub_100536120(v72);
  v73 = v101;
  sub_100750564();
  v75 = v74;
  v76 = *(v60 + 8);
  v76(v61, v59);
  *(v71 + 32) = v75;
  if (qword_100920940 != -1)
  {
    swift_once();
  }

  v77 = qword_100932600;
  sub_10000C888(qword_1009325E8, qword_100932600);
  sub_100536120(v77);
  sub_100750564();
  v79 = v78;
  v76(v61, v59);
  *(v71 + 40) = v79;
  sub_10049FD08(v71);
  [v73 pageMarginInsets];
  v80 = *(v106 + 16);
  if (v80)
  {
    if (v80 <= 3)
    {
      v81 = 0;
      v82 = 0.0;
LABEL_68:
      v85 = v80 - v81;
      v86 = (v106 + 8 * v81 + 32);
      do
      {
        v87 = *v86++;
        v82 = v82 + v87;
        --v85;
      }

      while (v85);
      goto LABEL_70;
    }

    v81 = v80 & 0x7FFFFFFFFFFFFFFCLL;
    v83 = (v106 + 48);
    v82 = 0.0;
    v84 = v80 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v82 = v82 + *(v83 - 2) + *(v83 - 1) + *v83 + v83[1];
      v83 += 4;
      v84 -= 4;
    }

    while (v84);
    if (v80 != v81)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  sub_100024440(v96);

  return v99;
}

void sub_10030EF04(uint64_t a1)
{
  v2 = v1;
  sub_10000C824(a1, v27);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100743864();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_10041434C(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_100870F68;
      swift_unknownObjectWeakAssign();
      *&v2[v3] = v4;

      v5 = *&v2[v3];
      if (v5)
      {
        *(v5 + 32) = &off_100870F68;
        swift_unknownObjectWeakAssign();
      }

      v6 = sub_100743854();
      if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform] || (, v7 = sub_1007444C4(), , (v7 & 1) == 0))
      {
LABEL_20:
        v11 = 0;
        goto LABEL_21;
      }

      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
        goto LABEL_41;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
      {
        v10 = 0;
        do
        {
          v11 = i != v10;
          if (i == v10)
          {
            break;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            sub_100754574();
            if (__OFADD__(v10, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v10 >= *(v8 + 16))
            {
              goto LABEL_40;
            }

            if (__OFADD__(v10, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v12 = sub_10074F114();

          ++v10;
        }

        while ((v12 & 1) == 0);
LABEL_21:

        v13 = [v2 traitCollection];
        sub_1007537B4();

        if (!*&v2[v3])
        {
          break;
        }

        v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork];

        v16 = sub_1004C7000(v15, v11);
        v17 = v16;
        v26 = v14;
        v25 = *(v14 + 16);
        if (!v25)
        {
LABEL_35:

          return;
        }

        v18 = 0;
        v8 = v16 & 0xFFFFFFFFFFFFFF8;
        v19 = (v26 + 48);
        v23 = v16 & 0xC000000000000001;
        v24 = v16 >> 62;
        while (v18 < *(v26 + 16))
        {
          v3 = *(v19 - 2);
          v20 = *(v19 - 1);
          v21 = *v19;
          if (v24)
          {
            if (v18 == sub_100754664())
            {
              goto LABEL_35;
            }
          }

          else if (v18 == *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          if (v23)
          {

            sub_100754574();
          }

          else
          {
            if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }
          }

          v2 = v18 + 1;
          v28 = 0;
          memset(v27, 0, sizeof(v27));
          v22 = swift_allocObject();
          swift_weakInit();
          v6 = swift_allocObject();
          *(v6 + 16) = v11;
          *(v6 + 24) = v22;
          *(v6 + 32) = v3;
          *(v6 + 40) = v20;
          *(v6 + 48) = v21;
          *(v6 + 56) = v18;

          sub_1007441F4();

          sub_10000C8CC(v27, &unk_1009276E0, &unk_1007A5C70);

          v19 += 3;
          v18 = v2;
          if (v25 == v2)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        ;
      }
    }
  }
}

void sub_10030F340()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_flowLayout;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork) = _swiftEmptyArrayStorage;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_10030F478(objc_class *a1, uint64_t a2)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView);
  sub_10000C518(&qword_1009253E0, &qword_1007A6970);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A6580;
  *(v10 + 32) = 0;
  *(v10 + 40) = a2;
  sub_1007416F4();
  isa = sub_100741704().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    type metadata accessor for ScreenshotCollectionViewCell(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(*(v13 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v15 = sub_100743334();
      v17 = v15;
      if (v15)
      {
      }

      v19.is_nil = v17 == 0;
      v19.value.super.isa = a1;
      sub_100743384(v19, v16);
    }

    else
    {
      v14 = v12;
    }
  }
}

uint64_t sub_10030F630()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10030F668()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10030F6A8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
    if (!sub_100754664())
    {
      goto LABEL_4;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_100754664();
}

void sub_10030F750(void *a1)
{
  v2 = v1;
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform))
  {
    return;
  }

  [a1 frame];
  if (v15 <= 0.0 || v14 <= 0.0)
  {

    return;
  }

  sub_100743864();

  sub_1002898DC(v16, v13, v17);

  v18 = sub_100741774();
  v19 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
  v30 = v5;
  if ((v19 & 0xC000000000000001) == 0)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v18 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_100754574();
LABEL_8:
  sub_10074F2A4();
  sub_100750504();

  v20 = sub_10030D404();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits;
  v22 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits);
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v20;
  swift_unknownObjectRetain();

  v24 = *(v2 + v21);
  if (!v24)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v24 pageContainerSize];
  v25 = v30;
  if (v23)
  {
    if (sub_100750444())
    {
      (*(v25 + 16))(v7, v10, v4);
    }

    else
    {
      sub_100750484();
    }
  }

  else
  {
    (*(v30 + 16))(v7, v10, v4);
    sub_100750444();
  }

  swift_getObjectType();
  v26 = [v22 traitCollection];
  sub_1007537B4();

  [v22 pageMarginInsets];
  [v22 pageMarginInsets];
  PageTraitEnvironment.pageColumnMargin.getter();
  v27 = [v22 traitCollection];
  sub_1007537B4();

  sub_1007504C4();
  sub_1007504C4();

  swift_unknownObjectRelease();
  v28 = *(v30 + 8);
  v28(v7, v4);
  v28(v10, v4);
  sub_100024440(v13);
}

void sub_10030FBEC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v3 = swift_dynamicCastClassUnconditional();
  v4 = sub_100741774();
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_100754574();

    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * v4 + 32);

LABEL_5:
  v7 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
  *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_10028864C();

  v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher);
  if (v8)
  {
    swift_beginAccess();
    v9 = *(v8 + 16);

    v11 = sub_10030C758(v6, v9, v10);

    if (v11)
    {
      v12 = *(*(v3 + v7) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v13 = v11;
      v14 = v12;
      v15 = sub_100743334();

      if (v15 && (sub_100016C60(0, &qword_10092B280, UIImage_ptr), v16 = v13, v17 = sub_100753FC4(), v16, v15, (v17 & 1) != 0))
      {
      }

      else
      {
        v18 = *(*(v3 + v7) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
        v19 = sub_100743334();
        v21 = v19;
        if (v19)
        {
        }

        v23.is_nil = v21 == 0;
        v23.value.super.isa = v11;
        sub_100743384(v23, v20);
      }
    }
  }
}

void sub_10030FE60(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

double sub_10030FF64(uint64_t a1, double a2, double a3)
{
  sub_10000C888(v3, v3[3]);
  sub_100751254();
  return ceil(v4);
}

uint64_t sub_10030FFD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100310018(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double sub_1003100EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration])
  {
    swift_unknownObjectWeakAssign();

    sub_1003101B4();
  }

  *&v1[v3] = a1;

  if (a1)
  {
    sub_1003104E8();
    swift_unknownObjectWeakAssign();
    sub_1003101B4();
    [v1 setNeedsLayout];
  }

  return result;
}

void sub_1003101B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v0 + 40);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;

    swift_beginAccess();
    v8 = 0;
    v9 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_10:
      v11 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
      v12 = *(*(v3 + 48) + v11);
      v13 = *(*(v3 + 56) + v11);
      v14 = *&v2[v7];
      if (v14 >> 62)
      {
        v15 = sub_100754664();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if ((v12 & 0x8000000000000000) == 0 && v12 < v15)
      {
        swift_beginAccess();
        v16 = *&v2[v7];
        if ((v16 & 0xC000000000000001) != 0)
        {
          v22 = v13;
          v19 = sub_100754574();
        }

        else
        {
          if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v17 = *(v16 + 8 * v12 + 32);
          v18 = v13;
          v19 = v17;
        }

        v20 = v19;
        swift_endAccess();
        v21 = v13;
        sub_100743344();
        [v2 setNeedsDisplay];
      }
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1003103A4(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    v8 = sub_100754664();
    if ((a2 & 0x8000000000000000) != 0)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((a2 & 0x8000000000000000) != 0)
    {
      return;
    }
  }

  if (v8 > a2)
  {
    swift_beginAccess();
    v9 = *&v3[v6];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_100754574();
    }

    else
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 8 * a2 + 32);
    }

    v11 = v10;
    swift_endAccess();
    v12 = a1;
    sub_100743344();
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_1003104A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_1003104E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10074F0C4();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    v6 = sub_100754664();
    v7 = &off_100932000;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &off_100932000;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v34 = v2;
  v35 = v4;

  v8 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = sub_100754574();
    }

    else
    {
      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v39 = v9;
    swift_beginAccess();
    sub_10000C518(&qword_10092A198, &qword_1007AE7B8);
    sub_1007512D4();
    swift_endAccess();
  }

  while (v6 != v8);

  v2 = v34;
  v4 = v35;
  v7 = &off_100932000;
LABEL_10:
  *&v1[v4] = _swiftEmptyArrayStorage;

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration];
  if (!v11)
  {
    return;
  }

  v12 = *(v11 + 24);
  if (v12 < 0)
  {
LABEL_30:
    __break(1u);
    return;
  }

  if (v12)
  {
    v13 = v7[208];
    v34 = v2 + 2;
    v35 = v13;
    v33 = (v2 + 1);

    do
    {
      while (1)
      {
        __chkstk_darwin(v14);
        v15 = ObjectType;
        *(&v32 - 2) = v11;
        *(&v32 - 1) = v15;
        swift_beginAccess();
        sub_10000C518(&qword_10092A198, &qword_1007AE7B8);
        sub_1007512B4();
        swift_endAccess();
        v16 = v39;
        if (*(v11 + 24) == 3)
        {
          v17 = qword_10097E260;
          if (qword_1009204E0 != -1)
          {
            swift_once();
            v17 = qword_10097E260;
          }
        }

        else
        {
          v17 = qword_10097E248;
          if (qword_1009204D8 != -1)
          {
            swift_once();
            v17 = qword_10097E248;
          }
        }

        v18 = v38;
        v19 = sub_10000D0FC(v38, v17);
        (*v34)(v37, v19, v18);
        v20 = v16;
        v21 = [v20 layer];
        sub_10074F0B4();
        [v21 setShadowOffset:?];

        v22 = [v20 layer];
        v23 = sub_10074F0A4();
        v24 = [v23 CGColor];

        [v22 setShadowColor:v24];
        v25 = [v20 layer];
        sub_10074F084();
        [v25 setShadowRadius:?];

        v26 = [v20 layer];
        LODWORD(v27) = 1.0;
        [v26 setShadowOpacity:v27];

        [v20 setClipsToBounds:0];
        swift_beginAccess();
        v28 = v20;
        sub_100753284();
        if (*((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        swift_endAccess();
        v29 = [v28 superview];

        if (v29)
        {
          sub_100016C60(0, &qword_100922300, UIView_ptr);
          v30 = v1;
          v31 = sub_100753FC4();

          if (v31)
          {
            break;
          }
        }

        [v1 addSubview:v28];

        v14 = (*v33)(v37, v38);
        if (!--v12)
        {
          goto LABEL_25;
        }
      }

      (*v33)(v37, v38);

      --v12;
    }

    while (v12);
LABEL_25:
  }
}

void sub_100310D28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_1007433C4();
  if (v3 == 1)
  {
    v4 = sub_1007431B4();
  }

  else
  {
    v4 = sub_1007431D4();
  }

  v5 = v4;
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  sub_100753E34();
  sub_100743224();
  v6 = v5;
  sub_100743234();
  sub_100746E64();
  sub_100743244();
  sub_100746E74();

  *a2 = v6;
}

void sub_100310DD8()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration];
  if (v2 && *(v2 + 24) >= 1)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v4 = *&v1[v3];
    v5 = v4 >> 62 ? sub_100754664() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == *(v2 + 24))
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        sub_100016C60(0, &qword_100922300, UIView_ptr);

        v7 = sub_100754654();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_100754764();
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v7 = v6;
      }

      if (v1[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory] == 7)
      {
        v8 = 5;
      }

      else
      {
        v8 = v1[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory];
      }

      sub_1007477B4();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v1 traitCollection];
      sub_10003E858(v17, v7, v8, v10, v12, v14, v16);
    }
  }
}

void sub_10031100C(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration);
  if (v4 && *(v4 + 24) >= 1)
  {
    v8 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = v9 >> 62 ? sub_100754664() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 == *(v4 + 24))
    {
      v11 = *(v3 + v8);
      if (v11 >> 62)
      {
        sub_100016C60(0, &qword_100922300, UIView_ptr);

        v12 = sub_100754654();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_100754764();
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v12 = v11;
      }

      if (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory) == 7)
      {
        v13 = 5;
      }

      else
      {
        v13 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory);
      }

      sub_10003E988(a1, v12, v13, a2, a3);
    }
  }
}

uint64_t type metadata accessor for MultiAppFallbackIconView(uint64_t a1)
{
  result = qword_1009326B0;
  if (!qword_1009326B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100311334(uint64_t a1)
{
  sub_1003113E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003113E8(uint64_t a1)
{
  if (!qword_1009326C0)
  {
    sub_10000C724(&qword_10092DE18, qword_1007B2570);
    sub_100311458();
    v1 = sub_1007512F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1009326C0);
    }
  }
}

unint64_t sub_100311458()
{
  result = qword_10092DE20;
  if (!qword_10092DE20)
  {
    sub_10000C724(&qword_10092DE18, qword_1007B2570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092DE20);
  }

  return result;
}

void sub_10031150C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v15 - 8);
  v62 = &v55 - v16;
  v17 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v17 - 8);
  v19 = &v55 - v18;
  v20 = sub_10074F314();
  __chkstk_darwin(v20 - 8);
  v63 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100741EA4();
  v23 = sub_100741E94();
  if (v23)
  {
    v59 = v14;

    v24 = sub_10074EF24();
    v60 = a1;
    if (v24)
    {
      v56 = v8;
      v57 = v11;
      v61 = v23;
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v25 = sub_100747064();
      sub_10000D0FC(v25, qword_10097E3A8);
      sub_100746F34();
      v58 = v2;
      v26 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView];
      v27 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      [*(v26 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView) contentMode];
      sub_10074F374();
      v28 = *(v26 + v27);
      sub_10074F324();
      sub_100743364();
      [v28 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();

      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v29 = *(v26 + v27);
      sub_1007433C4();
      sub_10004D658();
      v30 = v29;
      sub_100744204();

      v11 = v57;
      v3 = v58;
      v23 = v61;
      v8 = v56;
    }

    v31 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_lockupView];
    v32 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
    v33 = sub_100742E24();
    v34 = a2;
    v35 = v62;
    (*(*(v33 - 8) + 56))(v62, 1, 1, v33);
    v36 = sub_100745E94();
    v37 = v59;
    (*(*(v36 - 8) + 56))(v59, 1, 1, v36);
    v38 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    v39 = sub_10074F8B4();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_100656038(v23, v31, v19, v34, 0, 0, v35, v37, v8, v11);
    sub_10000C8CC(v8, &unk_100925520, &unk_1007A8120);
    v31[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v31 setNeedsLayout];

    sub_10000C8CC(v11, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v37, &unk_1009259A0, &unk_1007B0610);
    v40 = v35;
    a2 = v34;
    sub_10000C8CC(v40, &unk_100925530, &unk_1007A8130);
    sub_10000C8CC(v19, &unk_100925540, &qword_1007A8140);
  }

  if (v22)
  {

    if (sub_10074EF24())
    {
      v61 = v23;
      v62 = a2;
      v41 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
      v42 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
      [*(v41 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView) contentMode];
      sub_10074F374();
      v43 = *(v41 + v42);
      sub_10074F324();
      sub_100743364();
      [v43 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();

      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v44 = *(v41 + v42);
      sub_1007433C4();
      sub_10004D658();
      v45 = v44;
      sub_100744204();
    }

    else
    {
    }

    v47 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel];

    sub_10074EF34();
    v49 = v48;

    if (v49)
    {
      v46 = sub_100753064();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v47 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_titleLabel];
  }

  [v47 setText:v46];

  v50 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel];
  sub_100741E84();
  if (v51)
  {
    v52 = sub_100753064();
  }

  else
  {
    v52 = 0;
  }

  [v50 setText:v52];

  v53 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallPaidOfferView_messageLabel];
  v64._object = 0x8000000100776FF0;
  v64._countAndFlagsBits = 0xD000000000000030;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_1007458B4(v64, v65);
  v54 = sub_100753064();

  [v53 setText:v54];

  [v3 setNeedsLayout];
}

id sub_100311F20()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppPromotionView(uint64_t a1)
{
  result = qword_1009327C0;
  if (!qword_1009327C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003120C0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100313CA0(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v8 = v7;
    v9 = sub_100753FC4();

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
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_10031225C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1003122C0;
}

void sub_1003122C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1005D0028();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1005D0028();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1003123E8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1007477B4();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView];
    sub_1007477B4();
    v3 = v2;
    v5 = v4;
    sub_1000CBC6C(v15);
    sub_1000CD7E4(v0, v15, v3, v5);
    sub_1000CD59C(v15);
    sub_1007477B4();
    CGRectGetMinX(v18);
    sub_1007477B4();
    CGRectGetMinY(v19);
    sub_1007477B4();
    sub_100753B24();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v9 = v0;
      v10 = sub_100753FC4();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_1007477B4();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_1007477B4();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_1007477B4();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_100312790(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer];
  if ((sub_100753FC4() & 1) == 0)
  {
    return;
  }

  v62 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView];
  v15 = [v62 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  v18 = v2;
  v61[1] = v17;
  LOBYTE(v17) = sub_100753FC4();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v24 = [v62 superview];
    if (!v24)
    {
      return;
    }

    v25 = v24;
    v26 = v18;
    v27 = sub_100753FC4();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0x3FF0000000000000;
    v68 = sub_100313DD0;
    v69 = v29;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_1000CF7B0;
    v67 = &unk_100871160;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v31;
    v68 = sub_100313DE8;
    v69 = v32;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_1008711B0;
LABEL_30:
    v66 = sub_100144DD8;
    v67 = v33;
    v59 = _Block_copy(&aBlock);
    v60 = v31;

    [v28 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v30 options:v59 animations:0.0 completion:1.0];
    _Block_release(v59);
    _Block_release(v30);
    return;
  }

  if (v19 == 1)
  {
    v34 = v62;
    [a1 locationInView:v62];
    v35 = v18 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation;
    *v35 = v36;
    *(v35 + 1) = v37;
    v35[16] = 0;
    v38 = [v34 superview];
    if (!v38)
    {
      return;
    }

    v39 = v38;
    v40 = v18;
    v41 = sub_100753FC4();

    if ((v41 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = 0x3FEEB851EB851EB8;
    v68 = sub_100313DD0;
    v69 = v42;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_1000CF7B0;
    v67 = &unk_100871200;
    v30 = _Block_copy(&aBlock);
    v31 = v40;

    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    *(v43 + 24) = v31;
    v68 = sub_100313DE8;
    v69 = v43;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_100871250;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v62];
    v46 = (v18 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation + 16))
    {
      *v46 = v44;
      v46[1] = v45;
      *(v46 + 16) = 0;
    }

    else
    {
      v47 = sqrt((v45 - v46[1]) * (v45 - v46[1]) + (v44 - *v46) * (v44 - *v46));
      [v14 allowableMovement];
      if (v48 < v47)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_1001E899C(v18 + v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_100933090;
    v22 = &unk_1007B1B00;
    v23 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1007455C4();
    v67 = ObjectType;
    aBlock = v18;
    v49 = v18;
    sub_10074EC54();

    sub_1007455B4();
    v50 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();

    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v6, 1, v50) != 1)
    {
      sub_1007455C4();
      v52 = sub_1007455B4();
      sub_1003C0E00(aBlock, 1, v52, v6);

      (*(v11 + 8))(v13, v10);

      (*(v51 + 8))(v6, v50);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100923960;
    v22 = &qword_1007A6240;
    v23 = v6;
  }

  sub_10000C8CC(v23, v21, v22);
LABEL_27:
  v53 = [v62 superview];
  if (v53)
  {
    v54 = v53;
    v55 = v18;
    v56 = sub_100753FC4();

    if (v56)
    {
      v28 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = 0x3FF0000000000000;
      v68 = sub_100313D20;
      v69 = v57;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_1000CF7B0;
      v67 = &unk_1008710C0;
      v30 = _Block_copy(&aBlock);
      v31 = v55;

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = v31;
      v68 = sub_100313D44;
      v69 = v58;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v33 = &unk_100871110;
      goto LABEL_30;
    }
  }
}

id sub_100313178(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

BOOL sub_1003131D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if ((sub_100753FC4() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView)];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    return 0;
  }

  [a2 locationInView:v2];
  v16 = v15;
  v18 = v17;
  v19 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v26.x = v16;
  v26.y = v18;
  if (CGRectContainsPoint(v28, v26))
  {
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();

      if (v20)
      {
        return 0;
      }
    }

    v21 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
    swift_beginAccess();
    sub_1001E899C(&v3[v21], v7);
    v22 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    v23 = (*(*(v22 - 8) + 48))(v7, 1, v22) != 1;
    sub_10000C8CC(v7, &qword_100933090, &unk_1007B1B00);
    return v23;
  }

  else
  {

    return 0;
  }
}

void sub_1003134A8(uint64_t a1)
{
  sub_1001E5A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100313578(uint64_t **a1))()
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
  v2[4] = sub_10031225C(v2);
  return sub_1000181A8;
}

double sub_1003135FC(uint64_t a1)
{
  [*(*v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v3);
  sub_1007477B4();
  CGRectGetHeight(v4);
  sub_1007477B4();
  CGRectGetWidth(v5);
  return 0.0;
}

CGFloat sub_100313674(uint64_t a1)
{
  v2 = *v1;
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v4);
  sub_1007477B4();
  CGRectGetHeight(v5);
  [v2 bounds];
  return CGRectGetWidth(v6) * 0.5;
}

uint64_t sub_100313720()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100313CA0(&unk_1009327E0, type metadata accessor for AppPromotionView, &unk_1007B9B68);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100313794(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100313CA0(&unk_1009327E0, type metadata accessor for AppPromotionView, &unk_1007B9B68);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100313820(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100313CA0(&unk_1009327E0, type metadata accessor for AppPromotionView, &unk_1007B9B68);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1003138DC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView);
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

char *sub_100313A5C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  v3 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView] = [objc_allocWithZone(type metadata accessor for AppPromotionCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer] = v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView]];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView]];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v12] setMinimumPressDuration:0.1];
  [*&v10[v12] setDelegate:v10];
  [*&v10[v11] addGestureRecognizer:*&v10[v12]];

  return v10;
}

uint64_t sub_100313CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100313CE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100313D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100313D48()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100313D80()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

void sub_100313E54(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for RuleResultsViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v2 = [objc_allocWithZone(UITextView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v5 setFrame:{v9, v11, v13, v15}];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&v1[v3])
  {
    v17 = v16;
    [v16 addSubview:?];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100313FD8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RuleResultsViewController();
  objc_msgSendSuper2(&v9, "viewDidAppear:", v3 & 1);
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100753064();
    [v5 setText:v6];

    sub_100744494();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = sub_1000A7FA0();

    v8[3] = v7;
    v8[4] = &protocol witness table for OS_dispatch_queue;
    v8[0] = sub_100753774();
    sub_100752D64();

    sub_10000C620(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_10031417C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = [v6 text];
      if (!v7)
      {
LABEL_11:
        __break(1u);
        return;
      }

      v8 = v7;
      sub_100753094();

      v15 = *(v2 + 16);
      if (v15)
      {
        v9 = 0;
        v10 = (v2 + 40);
        while (v9 < *(v2 + 16))
        {
          ++v9;
          v11 = v2;
          v13 = *(v10 - 1);
          v12 = *v10;

          v16._countAndFlagsBits = v13;
          v16._object = v12;
          sub_1007531B4(v16);

          sub_100753234();
          sub_1007531A4();

          v2 = v11;

          v10 += 2;
          if (v15 == v9)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_11;
      }

LABEL_8:
      v14 = sub_100753064();

      [v6 setText:v14];
    }
  }
}

void sub_100314354(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      swift_getErrorValue();
      sub_1007547C4();
      v6 = sub_100753064();

      [v5 setText:v6];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1003144DC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RuleResultsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100314590()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100314624()
{
  *&v72 = sub_10000C518(&qword_100932848, &qword_1007B9C50);
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v63 - v0;
  v1 = sub_100750B04();
  v71 = *(v1 - 8);
  __chkstk_darwin(v1);
  v83 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v63 - v4;
  v82 = sub_100750BD4();
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750954();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v9;
  v77 = sub_100750E94();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = sub_100750534();
  v75 = *(v20 - 8);
  v76 = v20;
  __chkstk_darwin(v20);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074F704();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745794();
  sub_1003151FC(&qword_100932850, &type metadata accessor for ProductPageLink, &protocol conformance descriptor for ProductPageLink);
  result = sub_1007468B4();
  v27 = v85[0];
  if (v85[0])
  {
    v64 = v1;
    swift_getKeyPath();
    sub_100746914();

    v28 = v85[0];
    v73 = v27;
    sub_100745774();
    if (v29)
    {
      v30 = sub_100743AD4();

      v31 = v30;
      [v31 size];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
      sub_100753B64();
    }

    if (qword_100920E10 != -1)
    {
      swift_once();
    }

    v32 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
    sub_10000D0FC(v32, qword_100980760);
    sub_100743454();
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v23 + 8))(v25, v22);
    if (sub_1007537E4())
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_100921148 != -1)
      {
        swift_once();
      }

      v38 = qword_100981110;
    }

    else
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_100921140 != -1)
      {
        swift_once();
      }

      v38 = qword_1009810F8;
    }

    v39 = sub_10000D0FC(v33, v38);
    (*(v36 + 16))(v37, v39, v33);
    sub_100750E84();
    sub_100750E54();
    v42 = *(v35 + 8);
    v40 = v35 + 8;
    v41 = v42;
    v42(v11, v34);
    if (qword_100920E18 != -1)
    {
      swift_once();
    }

    v43 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
    sub_10000D0FC(v43, qword_100980778);
    sub_100743454();
    sub_100750E74();
    v41(v14, v34);
    v44 = v41;
    v63 = v41;
    v45 = v68;
    sub_100750E64();
    v44(v17, v34);
    v46 = v69;
    sub_100750944();
    sub_100750E04();
    v84 = v40;
    sub_10000C888(v85, v85[3]);
    sub_1007509B4();
    sub_100750924();
    sub_10000C620(v85);
    sub_100750E44();
    sub_1007508D4();
    sub_100750E24();
    sub_1007508B4();
    sub_100750E34();
    sub_1007508C4();
    sub_100750E14();
    sub_1007508A4();
    sub_100745784();
    (*(v78 + 16))(v65, v46, v79);
    sub_100750BB4();
    sub_100750BE4();
    v47 = v66;
    sub_1004E2578(v66);
    v48 = v72;
    sub_100743454();
    v49 = *(v67 + 8);
    v49(v47, v48);
    sub_1004E2584(v47);
    sub_100743454();
    v49(v47, v48);
    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v50 = swift_allocObject();
    v72 = xmmword_1007A5CF0;
    *(v50 + 16) = xmmword_1007A5CF0;
    *(v50 + 32) = v28;
    v51 = v28;
    v52 = sub_100751044();
    sub_100750404();

    v53 = swift_allocObject();
    *(v53 + 16) = v72;
    *(v53 + 32) = v51;
    v54 = v51;
    v55 = sub_100751044();
    v56 = v81;
    v57 = v64;
    sub_100750544();

    v58 = swift_allocObject();
    *(v58 + 16) = v72;
    *(v58 + 32) = v54;
    v59 = v54;
    v60 = sub_100751044();
    v61 = v83;
    sub_100750544();

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

uint64_t sub_1003151FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10031524C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_100315534(&qword_100932E70, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_100315534(&qword_100932E78, type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider, &unk_1007C3820);

  return v2;
}

unint64_t sub_10031534C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AccessibilityDetailsShelfLayoutSpacingProvider;
  result = sub_1003154E0();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_100315380@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  swift_allocObject();
  v3 = sub_100744584();
  a1[3] = &type metadata for AccessibilityDetailsPageGridProvider;
  result = sub_10031548C();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for AccessibilityDetailsViewController(uint64_t a1)
{
  result = qword_100932880;
  if (!qword_100932880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10031548C()
{
  result = qword_100932E60;
  if (!qword_100932E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100932E60);
  }

  return result;
}

unint64_t sub_1003154E0()
{
  result = qword_100932E68;
  if (!qword_100932E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100932E68);
  }

  return result;
}

uint64_t sub_100315534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10031557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = sub_100747C14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v11 + 8);
  v17(v15, v10);
  swift_beginAccess();
  v18 = *(v4 + 16);
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_100412148(v32);
  if ((v20 & 1) == 0)
  {

LABEL_5:
    sub_100016994(v32);
    (*(v7 + 16))(v9, v16, v6);
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(0);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v17;
    v22 = OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
    v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    (*(v7 + 32))(v21 + OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v9, v6);
    swift_unknownObjectWeakAssign();
    *(v21 + OBJC_IVAR____TtC22SubscribePageExtension42InteractiveSectionBackgroundScrollObserver_objectGraph) = v30;

    v24 = v28;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v24, v10);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_100673D84(v21, v32, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v31;
    swift_endAccess();
    sub_100016994(v32);
    return v21;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  sub_100016994(v32);

  return v21;
}

double sub_100315964(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel];
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
  v9 = sub_100753094();
  v11 = v10;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_100754754();

    if (v13)
    {
      return result;
    }

LABEL_10:
    a2 = sub_100753064();
LABEL_12:
    [v5 setText:a2];

    v14 = [v5 text];
    if (v14)
    {
      v15 = v14;
      sub_100753094();
    }

    v16 = sub_100753114();

    [v5 setHidden:v16 & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_100315B18()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10097F9F8);
  sub_10000D0FC(v0, qword_10097F9F8);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100315C7C(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v29 = a1;
  sub_100746F84();
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980A68);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_100750B04();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_100750B14();
  v25 = v3[1];
  v25(v5, v2);
  sub_100746FB4();
  if (qword_100920F28 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v6, qword_100980AC8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_100750B14();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_100747044();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v32);
  v15(v18, v5, v2);
  sub_100750B14();
  v16(v5, v2);
  sub_100746FC4();
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_10000D0FC(v24, qword_1009809C0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v32);
  v28(v21, v5, v2);
  sub_100750B14();
  v16(v5, v2);
  sub_100747054();
  return sub_100746FA4();
}

char *sub_100316170(double a1, double a2, double a3, double a4)
{
  v29[1] = swift_getObjectType();
  v9 = sub_100743584();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView;
  type metadata accessor for StoryCardMediaView(0);
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror] = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer;
  v15 = type metadata accessor for TodayCardInfoLayerView(0);
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton] = 0;
  v16 = type metadata accessor for StoryCardCollectionViewCell(0);
  v31.receiver = v4;
  v31.super_class = v16;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer;
  [v20 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer]];

  *&v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0x4034000000000000;
  (*(v10 + 104))(v12, enum case for CornerStyle.continuous(_:), v9);
  if (v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v22 = 3;
  }

  else
  {
    v22 = -1;
  }

  sub_10072118C(v12, v22, 20.0);
  (*(v10 + 8))(v12, v9);
  v23 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v23)
  {
    v24 = v23;
    [v24 _setContinuousCornerRadius:20.0];
    v25 = [v24 layer];
    [v25 setMaskedCorners:sub_1007535E4()];
  }

  v30.receiver = *&v17[v21];
  v30.super_class = v15;
  objc_msgSendSuper2(&v30, "_setContinuousCornerRadius:", 20.0);
  sub_10056880C();
  [v17 setAccessibilityIgnoresInvertColors:1];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007A5A00;
  *(v26 + 32) = sub_1007519E4();
  *(v26 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  sub_100016C60(0, &qword_1009239F8, UITraitCollection_ptr);
  sub_100753844();
  sub_100753D44();
  swift_unknownObjectRelease();

  sub_1005F4144();
  v27 = *(*&v17[v19] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView);
  sub_100526D00(v17, &off_1008712B8);

  return v17;
}

void sub_1003165E4(char a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground) == (a1 & 1))
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground))
  {
    v3 = 3;
  }

  else
  {
    v3 = -1;
  }

  v4 = v1;
  sub_100721364(v3);
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
  if (*(v4 + v2) == 1)
  {
    if (!v5)
    {
      return;
    }

    v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
    v7 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring);
    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring) = 1;
    if (v7)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();
    v22 = v5;
    sub_1004A901C(Strong);
    swift_unknownObjectWeakAssign();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if (v9)
      {
        type metadata accessor for VideoView(0);
        v12 = v9;
        v13 = sub_100753FC4();

        if (v13)
        {

          v14 = Strong;
          v9 = v12;
LABEL_28:

          v21 = v9;
          goto LABEL_29;
        }
      }

      else
      {
      }

LABEL_24:
      sub_1004A9648();

      v14 = Strong;
      goto LABEL_28;
    }

    if (v9)
    {
      goto LABEL_24;
    }

    v9 = Strong;
LABEL_27:
    v14 = v22;
    goto LABEL_28;
  }

  if (!v5)
  {
    return;
  }

  v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView];
  v16 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring);
  *(v15 + OBJC_IVAR____TtC22SubscribePageExtension24RevealingVideoMirrorView_isMirroring) = 0;
  if (v16 != 1)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  v22 = v5;
  sub_1004A901C(0);
  swift_unknownObjectWeakAssign();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    if (v9)
    {
      type metadata accessor for VideoView(0);
      v19 = v9;
      v20 = sub_100753FC4();

      if (v20)
      {
        v9 = v19;
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_26:
    sub_1004A9648();
    goto LABEL_27;
  }

  if (v9)
  {
    goto LABEL_26;
  }

  v21 = v22;
LABEL_29:
}