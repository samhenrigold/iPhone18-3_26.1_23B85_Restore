uint64_t sub_10044A404(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10044A454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10044A4B8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_10044A508(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 72) = a1;
  *(v8 + 80) = a6;
  return _swift_task_switch(sub_10044A530, 0, 0);
}

uint64_t sub_10044A530()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 14);
  v4 = v0[11];
  v3 = v0[12];
  v6 = *(v0 + 9);
  v5 = *(v0 + 10);
  v7 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 48);
  sub_10044A944();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1002D99B0(v5, (v0 + 2));
  v13 = [ObjCClassFromMetadata preferredFormat];
  static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(v10, v11, v1, v2, v13, v4, v3);
  v15 = v14;

  *(v6 + 56) = v15;
  v16 = *(v0 + 1);

  return v16();
}

uint64_t sub_10044A638()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10044A6A8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[11];
  v7 = v1[12];
  v8 = *(v1 + 13);
  v9 = *(v1 + 14);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000CB98;

  return sub_10044A508(a1, v6, v7, v4, v5, (v1 + 4), v8, v9);
}

unint64_t sub_10044A780()
{
  result = qword_1006F5380;
  if (!qword_1006F5380)
  {
    sub_100010324(&qword_1006F5378, &qword_1005A1B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5380);
  }

  return result;
}

uint64_t sub_10044A7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A854()
{

  return swift_deallocObject();
}

uint64_t sub_10044A88C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return sub_10000C500(a1, v4);
}

unint64_t sub_10044A944()
{
  result = qword_1006F5390;
  if (!qword_1006F5390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F5390);
  }

  return result;
}

void ProgressiveBlur.makeUIView(context:)(double a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  v6 = type metadata accessor for ProgressiveBlurView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a1;
  v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a3;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = 0x3FD3333333333333;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = v5;
  v8 = v5;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a3;
  *(v11 + 56) = 0x3FD3333333333333;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10044BC70;
  *(v17 + 24) = v11;
  aBlock[4] = sub_1002AA218;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D65E4;
  aBlock[3] = &unk_1006A3EC8;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a1 scale:1.0];

LABEL_6:
      v22.receiver = v7;
      v22.super_class = v6;
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlurView.__allocating_init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v10 = a2;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v11 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v11 setScale:1.0];
  [v11 setPreferredRange:2];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v11 format:{0.0, 0.0, 1.0, 1.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v13 + 32) = _Q0;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;
  *(v13 + 64) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10044BFC4;
  *(v19 + 24) = v13;
  aBlock[4] = sub_1002DCE34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D65E4;
  aBlock[3] = &unk_1006A3F40;
  v20 = _Block_copy(aBlock);
  v21 = v10;

  v22 = [v12 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v23 = [objc_opt_self() _effectWithVariableBlurRadius:v22 imageMask:a3 scale:1.0];

LABEL_6:
      v24.receiver = v9;
      v24.super_class = v4;
      objc_msgSendSuper2(&v24, "initWithEffect:", v23);

      return;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlur.updateUIView(_:context:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = a2;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = a4;
  ProgressiveBlurView.updateEffect()();
}

void sub_10044AFB8(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = *v1;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = v2;
  ProgressiveBlurView.updateEffect()();
}

uint64_t sub_10044AFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10044BEF4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10044B060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10044BEF4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10044B0C4(uint64_t a1)
{
  sub_10044BEF4();
  sub_10056F4D8();
  __break(1u);
}

double sub_10044B194(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = a4();
    }

    else
    {
      v5 = a5();
    }
  }

  else if (a1)
  {
    v5 = a3();
  }

  else
  {
    v5 = a2();
  }

  v6 = v5;
  swift_beginAccess();
  return *v6;
}

void ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v8 = a2;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a1;
  *(v11 + 56) = a4;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10044BFC4;
  *(v17 + 24) = v11;
  aBlock[4] = sub_1002DCE34;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D65E4;
  aBlock[3] = &unk_1006A3FB8;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a3 scale:1.0];

LABEL_6:
      v22.receiver = v4;
      v22.super_class = type metadata accessor for ProgressiveBlurView();
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall ProgressiveBlurView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ProgressiveBlurView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  ProgressiveBlurView.updateEffect()();
}

Swift::Void __swiftcall ProgressiveBlurView.updateEffect()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius];
  v10 = v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff];
  v12 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_5;
  }

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v13 setScale:1.0];
  [v13 setPreferredRange:2];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v13 format:{v2, v4, v6, v8}];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10044BFC4;
  *(v16 + 24) = v15;
  v20[4] = sub_1002DCE34;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1001D65E4;
  v20[3] = &unk_1006A4030;
  v17 = _Block_copy(v20);
  v12 = v12;

  v18 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    if (v18)
    {
      v19 = [objc_opt_self() _effectWithVariableBlurRadius:v18 imageMask:v9 scale:1.0];

LABEL_6:
      [v0 setEffect:v19];

      return;
    }

LABEL_5:

    v19 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_10044B8BC(void *a1, unsigned __int8 a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(CAGradientLayer) init];
  [v16 setBounds:{a4, a5, a6, a7}];
  [v16 setStartPoint:{sub_10044B194(a2, CGPoint.topCenter.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.bottomCenter.unsafeMutableAddressor)}];
  [v16 setEndPoint:{sub_10044B194(a2, CGPoint.bottomCenter.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.topCenter.unsafeMutableAddressor)}];
  sub_100009DCC(&qword_1006F06D0, &unk_1005A1D30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10057B500;
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent:a8];

  v21 = [v20 CGColor];
  _s3__C7CGColorCMa_0(0);
  v23 = v22;
  *(v17 + 56) = v22;
  *(v17 + 32) = v21;
  v24 = [v18 whiteColor];
  v25 = [v24 colorWithAlphaComponent:0.0];

  v26 = [v25 CGColor];
  *(v17 + 88) = v23;
  *(v17 + 64) = v26;
  isa = sub_100572D08().super.isa;

  [v16 setColors:isa];

  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10057B4F0;
  *(v28 + 32) = a3;
  sub_10044BF48();
  v29 = a3;
  v30 = sub_100572D08().super.isa;

  [v16 setInterpolations:v30];

  v31 = [a1 CGContext];
  [v16 renderInContext:v31];
}

uint64_t sub_10044BC38()
{

  return swift_deallocObject();
}

uint64_t sub_10044BC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ProgressiveBlurView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id ProgressiveBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressiveBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10044BD90()
{
  result = qword_1006F53B8;
  if (!qword_1006F53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F53B8);
  }

  return result;
}

unint64_t sub_10044BDE8()
{
  result = qword_1006F53C0;
  if (!qword_1006F53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F53C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressiveBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressiveBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_10044BEF4()
{
  result = qword_1006F53F0;
  if (!qword_1006F53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F53F0);
  }

  return result;
}

unint64_t sub_10044BF48()
{
  result = qword_1006F2E68;
  if (!qword_1006F2E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F2E68);
  }

  return result;
}

id sub_10044C190(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *&v6[v8] = [objc_allocWithZone(UIVisualEffectView) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *&v6[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v6[v10] = [objc_allocWithZone(CAShapeLayer) init];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v12 = sub_100572898();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  *&v6[v11] = v14;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v6[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_1006EEC78 != -1)
  {
    swift_once();
  }

  v17 = [objc_opt_self() effectForBlurEffect:qword_1006FE508];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];

  *&v6[v16] = v18;
  v19 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v6[v19] = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v20 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v6[v20] = [objc_allocWithZone(UIScrollView) init];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v6[v21] = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v42);
    v22 = v43;
    if (v43)
    {
      v23 = v44;
      v25 = v42[1];
      v24 = v42[2];
      v26 = v42[0];
    }

    else
    {
      v24 = a1[2];
      v22 = a1[3];
      v26 = *a1;
      v25 = a1[1];
      sub_10044F8B0(a1, v40);
      v23 = 76;
    }

    v29 = &v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v29 = v26;
    *(v29 + 1) = v25;
    *(v29 + 2) = v24;
    *(v29 + 3) = v22;
    *(v29 + 4) = v23;
  }

  else
  {
    v27 = &v6[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v28 = *(a1 + 1);
    *v27 = *a1;
    *(v27 + 1) = v28;
    *(v27 + 4) = a1[4];
    sub_10044F8B0(a1, v42);
  }

  v30 = type metadata accessor for QRCodeOverlayViewController();
  v41.receiver = v6;
  v41.super_class = v30;
  v31 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v32 = *(v31 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel);
  v33 = v31;
  v34 = v32;
  v35 = sub_100572898();

  [v34 setText:v35];

  v36 = *(v33 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel);
  v37 = sub_100572898();

  [v36 setText:v37];

  sub_100009DCC(qword_1006F1BE0, &unk_1005A1D40);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10057B510;
  *(v38 + 32) = sub_10056E2A8();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100573518();
  swift_unknownObjectRelease();

  sub_10044F98C(a1);

  return v33;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 3)
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] text];
    [v1 setTitle:v4];
  }

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 navigationItem];
  sub_1000D3B98(0, &qword_1006EFAD8, UIBarButtonItem_ptr);
  sub_1000D3B98(0, &qword_1006EFB60, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44.value.super.super.isa = sub_100573A88();
  v44.is_nil = 0;
  isa = sub_100573488(UIBarButtonSystemItemDone, v44, v45).super.super.isa;
  [v9 setLeftBarButtonItem:{isa, 0, 0, 0, sub_10044FA18, v10}];

  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"dismissAnimated"];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v41 = v12;
  [v13 addGestureRecognizer:v12];

  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v17 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 24];
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = v17;
  v19 = v17;
  v20 = v16;

  [*&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v19];
  v40 = v15;
  [*&v1[v15] setAlpha:0.0];
  v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setContentMode:1];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  sub_1000D3B98(0, &qword_1006F4A40, UIFont_ptr);
  v23 = v22;
  v24 = sub_1005738E8();
  [v23 setFont:v24];

  v25 = *&v1[v21];
  v26 = [v7 whiteColor];
  [v25 setTextColor:v26];

  [*&v1[v21] setTextAlignment:1];
  [*&v1[v21] setNumberOfLines:0];
  [*&v1[v21] setAlpha:0.0];
  [*&v1[v21] setAdjustsFontForContentSizeCategory:1];
  v27 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:UIFontTextStyleBody];
  [v30 setFont:v31];

  [*&v1[v27] setTextAlignment:1];
  [*&v1[v27] setNumberOfLines:0];
  [*&v1[v27] setAlpha:0.0];
  [*&v1[v27] setAdjustsFontForContentSizeCategory:1];
  v32 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer];
  v34 = [v7 blackColor];
  v35 = [v34 CGColor];

  [v33 setFillColor:v35];
  [*&v1[v32] setFillRule:kCAFillRuleNonZero];
  [*&v1[v32] setCompositingFilter:kCAFilterDestOut];
  if (*(v42 + 4) != 76)
  {
    v36 = [*&v1[v40] layer];
    [v36 addSublayer:*&v1[v32]];

    [*&v1[v40] addSubview:*&v1[v39]];
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addSubview:*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView]];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10044CC68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    QRCodeOverlayViewController.dismissAnimated()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v5 = aBlock - v4;
  v6 = type metadata accessor for QRCodeOverlayViewController();
  v45.receiver = v2;
  v45.super_class = v6;
  objc_msgSendSuper2(&v45, "viewIsAppearing:", a1);
  v7 = [objc_allocWithZone(UIView) init];
  v8 = [v2 traitCollection];
  [v8 userInterfaceIdiom];

  sub_100573928();
  v9 = sub_100573998();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  sub_1005739A8();
  v10 = [v7 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  [v7 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView]];
  v12 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = v7;
  v13 = v7;

  v14 = [v2 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 3)
  {
    v32 = objc_opt_self();
    v33 = [v32 whiteColor];
    [v13 setBackgroundColor:v33];

    v34 = [*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView] contentView];
    v35 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [v34 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView]];

    v36 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v2[v35] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView]];
    [*&v2[v36] addSubview:v13];
    [*&v2[v36] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel]];
    v37 = *&v2[v36];
    v38 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
    [v37 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView]];
    v39 = [*&v2[v38] contentView];
    [v39 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel]];

    v40 = *&v2[v11];
    v41 = [v32 blackColor];
    v42 = *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v41;
    v43 = v41;

    sub_10044F090();
    v30 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
    v31 = [v32 blackColor];
    [v30 setTintColor:v31];
    goto LABEL_6;
  }

  v16 = *&v2[v11];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v19;
  v21 = v19;

  sub_10044F090();
  v22 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
  v23 = [v17 labelColor];
  [v22 setTintColor:v23];

  v24 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_10044D288;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000376F0;
  aBlock[3] = &unk_1006A4190;
  v25 = _Block_copy(aBlock);
  v26 = [v24 initWithDynamicProvider:v25];
  _Block_release(v25);

  [v13 setBackgroundColor:v26];

  v27 = [v2 view];
  if (v27)
  {
    v28 = v27;
    [v27 addSubview:v13];

    v29 = [v2 view];
    if (v29)
    {
      v30 = v29;
      v31 = *&v2[v11];
      [v30 addSubview:v31];
LABEL_6:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10044D288(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager;
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {
LABEL_2:
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v12[4] = sub_10044FA38;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10007885C;
    v12[3] = &unk_1006A41E0;
    v6 = _Block_copy(v12);
    v7 = v1;

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
    return;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 windowScene];

      if (v11)
      {
        type metadata accessor for BrightnessManager();
        swift_allocObject();
        *&v1[v3] = BrightnessManager.init(windowScene:)(v11);
      }
    }

    goto LABEL_2;
  }

  __break(1u);
}

double sub_10044D528(char *a1)
{
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] setAlpha:1.0];
  v2 = *&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    if (qword_1006EEC80 != -1)
    {
      swift_once();
    }

    v5 = &qword_1006FE510;
  }

  else
  {
    if (qword_1006EEC78 != -1)
    {
      swift_once();
    }

    v5 = &qword_1006FE508;
  }

  [v2 setEffect:*v5];

  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {

    BrightnessManager.increaseBrightnessIfNeeded()();
  }

  return result;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v224.receiver = v0;
  v224.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v224, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v1 view];
  v5 = v4;
  if (v3 != 3)
  {
    if (!v4)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    [v4 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    if (qword_1006EEC38 != -1)
    {
      swift_once();
    }

    v56 = *&qword_1006FE4C8;
    if (qword_1006EEC40 != -1)
    {
      swift_once();
    }

    v57 = *&qword_1006FE4D0;
    v58 = v56 + *&qword_1006FE4D0;
    v59 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v227 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v228 = v59;
    v229 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    sub_10044F8B0(&v227, &v223);
    if (qword_1006EEC50 != -1)
    {
      swift_once();
    }

    v60 = *&qword_1006FE4E0;
    v244.origin.x = v49;
    v244.origin.y = v51;
    v244.size.width = v53;
    v244.size.height = v55;
    Width = CGRectGetWidth(v244);
    v245.origin.x = v49;
    v245.origin.y = v51;
    v245.size.width = v53;
    v245.size.height = v55;
    Height = CGRectGetHeight(v245);
    if (Height >= Width)
    {
      Height = Width;
    }

    v63 = Height - (v58 + v58);
    if (v63 >= v60)
    {
      v64 = v60;
    }

    else
    {
      v64 = v63;
    }

    v65 = [v1 traitCollection];
    [v65 displayScale];
    v67 = v66;

    v68 = QRCode.dotAdjustedWidth(with:scale:)(v64, v67);
    sub_10044F98C(&v227);
    v246.origin.x = v49;
    v246.origin.y = v51;
    v246.size.width = v53;
    v246.size.height = v55;
    v69 = CGRectGetWidth(v246);
    v70 = [v1 view];
    if (!v70)
    {
      goto LABEL_57;
    }

    v71 = v70;
    [v70 safeAreaInsets];
    v73 = v72;

    v74 = [v1 view];
    if (!v74)
    {
LABEL_58:
      __break(1u);
      return;
    }

    v75 = v74;
    v222 = v68;
    v76 = v57 + v57 + v68;
    [v74 safeAreaInsets];

    v77 = sub_1002DCE0C(v49, v51, v53, v55, v73, (v69 - v76) * 0.5);
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v217 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v80, v82}];
    v218 = v84;
    v86 = v85;
    v87 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v81, v83}];
    v221 = v89;
    if (qword_1006EEC60 != -1)
    {
      v212 = v88;
      swift_once();
      v88 = v212;
    }

    v214 = v76 + *&qword_1006FE4F0;
    v90 = v86 + v76 + *&qword_1006FE4F0;
    if (qword_1006EEC68 != -1)
    {
      v213 = v88;
      swift_once();
      v88 = v213;
    }

    v219 = v86;
    v220 = v88;
    v216 = *&qword_1006FE4F8;
    v91 = v88 + v90 + *&qword_1006FE4F8;
    if (qword_1006EEC70 != -1)
    {
      swift_once();
    }

    v92 = *&qword_1006FE500;
    v93 = v91 + v92 + v92;
    v247.origin.x = v77;
    v247.origin.y = v79;
    v247.size.width = v81;
    v247.size.height = v83;
    v94 = CGRectGetWidth(v247);
    v95 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v77, v79, v81, v83}];
    [*&v1[v95] setContentSize:{v94, v93}];
    v248.origin.x = v77;
    v248.origin.y = v79;
    v248.size.width = v81;
    v248.size.height = v83;
    v96 = CGRectGetHeight(v248);
    v97 = *&v1[v95];
    v98 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v99 = v97;
    if (v96 >= v93)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = v92;
    }

    sub_100573838(0.0, v100, v94, v93);
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    [v98 setFrame:{v102, v104, v106, v108}];
    v109 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v113 = v112;
    v114 = v110;
    v115 = v111;
    v116 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v117 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v215 = v118;
    if (v117)
    {
      v119 = *&v1[v109];
      v120 = v117;
      v121 = v119;
      sub_100573838(0.0, 0.0, v76, v76);
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v129 = v128;

      [v120 setFrame:{v123, v125, v127, v129}];
      v130 = *&v1[v116];
      v131 = v115 - v214;
      v132 = v214 + v114;
      v133 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v130)
      {
        v134 = v133;
        [v130 bounds];
LABEL_44:
        v135 = v87;
        v136 = [v1 traitCollection];
        [v136 displayScale];

        sub_100573848();
        [v134 setFrame:*&v222];

        v137 = *&v1[v217];
        v249.origin.x = v113;
        v249.origin.y = v132;
        v249.size.width = v215;
        v249.size.height = v131;
        MinY = CGRectGetMinY(v249);
        v139 = *&v1[v109];
        sub_100573838(0.0, MinY, v218, v219);
        v141 = v140;
        v143 = v142;
        v145 = v144;
        v147 = v146;

        [v137 setFrame:{v141, v143, v145, v147}];
        v148 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v149 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v250.origin.x = v113;
        v250.origin.y = v219 + v216 + v132;
        v250.size.width = v215;
        v250.size.height = v131 - (v219 + v216);
        v150 = CGRectGetMinY(v250);
        v151 = *&v1[v109];
        sub_100573838(0.0, v150, v221, v220);
        v153 = v152;
        v155 = v154;
        v157 = v156;
        v159 = v158;

        [v149 setFrame:{v153, v155, v157, v159}];
        v160 = *&v1[v148];
        v33 = *&v1[v135];
        [v160 bounds];
        goto LABEL_45;
      }
    }

    else
    {
      v131 = v111 - v214;
      v132 = v214 + v110;
      v133 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v134 = v133;
    goto LABEL_44;
  }

  if (!v4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = [v4 safeAreaLayoutGuide];

  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (qword_1006EEC30 != -1)
  {
    swift_once();
  }

  v15 = *&qword_1006FE4C0;
  if (qword_1006EEC48 != -1)
  {
    swift_once();
  }

  v16 = *&qword_1006FE4D8;
  v17 = v15 + *&qword_1006FE4D8;
  v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v227 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v228 = v18;
  v229 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  sub_10044F8B0(&v227, &v223);
  if (qword_1006EEC50 != -1)
  {
    swift_once();
  }

  v19 = *&qword_1006FE4E0;
  v242.origin.x = v8;
  v242.origin.y = v10;
  v242.size.width = v12;
  v242.size.height = v14;
  v20 = CGRectGetWidth(v242);
  v243.origin.x = v8;
  v243.origin.y = v10;
  v243.size.width = v12;
  v243.size.height = v14;
  v21 = CGRectGetHeight(v243);
  if (v21 >= v20)
  {
    v21 = v20;
  }

  v22 = v21 - (v17 + v17);
  if (v22 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v1 traitCollection];
  [v24 displayScale];
  v26 = v25;

  v27 = QRCode.dotAdjustedWidth(with:scale:)(v23, v26);
  sub_10044F98C(&v227);
  v28 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v30 = [v1 traitCollection];
  [v30 displayScale];

  sub_100573848();
  [v29 setFrame:*&v27];

  v31 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v31)
  {
    v32 = *&v1[v28];
    v33 = v31;
    [v32 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    v43 = NSDirectionalEdgeInsets.init(edge:length:)(v42, v16);
    v47 = CGRect.outset(by:for:)(0, v43, v44, v45, v46, v35, v37, v39, v41);
LABEL_45:
    [v33 setFrame:v47];
  }

  v161 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v162 = [v1 view];
  if (!v162)
  {
    __break(1u);
    goto LABEL_55;
  }

  v163 = v162;
  [v162 bounds];
  v165 = v164;
  v167 = v166;
  v169 = v168;
  v171 = v170;

  [v161 setFrame:{v165, v167, v169, v171}];
  v172 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v173 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v174 = CGRectGetWidth(v251) * 0.3;
    if (qword_1006EEC58 != -1)
    {
      swift_once();
    }

    v175 = *&qword_1006FE4E8;
    if (*&qword_1006FE4E8 < v174)
    {
      v174 = *&qword_1006FE4E8;
    }

    v176 = *&v1[v173];
    sub_100573838(0.0, 0.0, v174, v174);
    v178 = v177;
    v180 = v179;
    v182 = v181;
    v184 = v183;

    v185 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v178, v180, v182, v184}];
    CGAffineTransformMakeScale(&v223, v174 / v175, v174 / v175);
    a = v223.a;
    b = v223.b;
    c = v223.c;
    d = v223.d;
    tx = v223.tx;
    ty = v223.ty;
    v192 = *(v172 + 1);
    v225[0] = *v172;
    v225[1] = v192;
    v226 = *(v172 + 4);
    sub_100009DCC(&qword_1006F5470, &qword_1005A1D50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100596F80;
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v230.x = 12.0;
    v230.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v230, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v231.x = 12.0;
    v231.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v231, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v232.y = 6.0;
    v232.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v232, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v233.y = 0.0;
    v233.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v233, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v234.y = 0.0;
    v234.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v234, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v235.x = 85.0;
    v235.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v235, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v236.x = 36.0;
    v236.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v236, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v237.x = 36.0;
    v237.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v237, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v238.x = 0.0;
    v238.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v238, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v239.x = 0.0;
    v239.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v239, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v240.x = 12.0;
    v240.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v240, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v241.x = 12.0;
    v241.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v241, &v223);
    v194 = *&v1[v185];
    sub_10044F8B0(v225, &v223);
    [v194 frame];
    v196 = v195;
    v198 = v197;
    v200 = v199;
    v202 = v201;
    [*&v1[v173] bounds];
    v207 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v196, v198, v200, v202, v203, v204, v205, v206);
    sub_10044F98C(v225);
    swift_setDeallocating();
    v208 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v207];
    v209 = *&v1[v208];
    v210 = *&v1[v173];
    v211 = v209;
    [v210 bounds];
    [v211 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_10044FA40;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10007885C;
  v11 = &unk_1006A4230;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_10044FA80;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10044E8C8;
  v11 = &unk_1006A4280;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

double sub_10044E7EC(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

double sub_10044E8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

char *sub_10044EAD4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100582550;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  sub_1000D3B98(0, qword_1006F06E0, NSLayoutConstraint_ptr);
  isa = sub_100572D08().super.isa;

  [v19 activateConstraints:isa];

  sub_1000D3B98(0, &unk_1006F5FE0, UITraitCollection_ptr);
  sub_100573648();
  v35[3] = v14;
  v35[0] = v18;
  sub_1005739C8();
  swift_unknownObjectRelease();

  sub_100010474(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_1000D3B98(0, &qword_1006F5478, CATransaction_ptr);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(sub_10044FA98);
}

void sub_10044EF5C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void sub_10044F090()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id sub_10044F2BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = sub_10056F198();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v13 = a4;

  [*&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v13];

  if ((a3 & 1) == 0)
  {
    v14 = sub_100573438();
    v15 = sub_10056F9D8();
    sub_10056DE58(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();
    v16 = j__swift_release(a2);
    (*(v8 + 8))(v10, v7, v16);
    a2 = v21[1];
  }

  if (a2)
  {
    sub_1000D3B98(0, &qword_1006F2E60, UIColor_ptr);

    v17 = sub_100573A08();
    v18 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v17;
    v19 = v17;

    sub_10044F090();
  }

  return v11;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = sub_10056F198();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    v15 = sub_100573438();
    v16 = sub_10056F9D8();
    sub_10056DE58(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();
    v17 = j__swift_release(a3);
    (*(v10 + 8))(v12, v9, v17);
    a3 = v21[1];
  }

  if (a3)
  {
    sub_1000D3B98(0, &qword_1006F2E60, UIColor_ptr);

    v18 = sub_100573A08();
    v19 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v18;
    v20 = v18;

    sub_10044F090();
  }
}

uint64_t sub_10044F7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10044FEDC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10044F824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10044FEDC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10044F888(uint64_t a1)
{
  sub_10044FEDC();
  sub_10056F4D8();
  __break(1u);
}

void sub_10044F930(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10044F9E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10044FA20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10044FA48()
{

  return swift_deallocObject();
}

unint64_t sub_10044FAAC()
{
  result = qword_1006F5480;
  if (!qword_1006F5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5480);
  }

  return result;
}

uint64_t sub_10044FB0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10044FB54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10044FBA4()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = sub_100572898();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_1006EEC78 != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:qword_1006FE508];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  sub_1005740F8();
  __break(1u);
}

void sub_10044FE04()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  sub_1005740F8();
  __break(1u);
}

unint64_t sub_10044FEDC()
{
  result = qword_1006F54E0;
  if (!qword_1006F54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F54E0);
  }

  return result;
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570678();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = sub_100009DCC(&qword_1006F54E8, &qword_1005A1F38);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = sub_100009DCC(&qword_1006F54F0, &qword_1005A1F40);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(sub_100009DCC(&qword_1006F54F8, &unk_1005A1F48) + 36));
  *v23 = sub_100450100;
  v23[1] = v18;
  sub_100450104(v26, v25);
  return sub_10045013C(v3, v25);
}

uint64_t sub_100450174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570678();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = sub_100009DCC(&qword_1006F54E8, &qword_1005A1F38);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = sub_100009DCC(&qword_1006F54F0, &qword_1005A1F40);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(sub_100009DCC(&qword_1006F54F8, &unk_1005A1F48) + 36));
  *v22 = sub_100453734;
  v22[1] = v17;
  sub_100450104(v34, v24);
  return sub_10045013C(&v25, v24);
}

id Radiosity.UIView.__allocating_init(content:isRadiosityEnabled:specs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(a1, v5, a3);
}

uint64_t sub_1004503AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100450428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1004504A4(uint64_t a1)
{
  swift_getWitnessTable();
  sub_10056F4D8();
  __break(1u);
}

void sub_1004504F4(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[qword_1006F5518]];
      [v1 addSubview:*&v1[qword_1006F5520]];
    }

    else
    {
      [*&v1[qword_1006F5518] removeFromSuperview];
      [*&v1[qword_1006F5520] removeFromSuperview];
    }
  }
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1004504F4(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1004506DC;
}

void sub_1004506DC(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void sub_10045071C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  sub_100450F00(v5);
  sub_100451578();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100452664(v8);
  sub_100450104(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  sub_100452834(a1);

  return sub_100452908(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  sub_100450104(v4, (v4 + 32));
  return sub_100450910;
}

void sub_100450910(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    sub_100450104((v2 + 8), (v2 + 40));
    sub_100452834(v2 + 8);
    sub_100452908((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    sub_100452834(v2 + 16);
    v11 = (v2 + 16);
  }

  sub_100452908(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_1006EEC88 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = swift_isaMask & *v4;
  *(v4 + direct field offset for Radiosity.UIView.content) = a1;
  v10 = (v4 + direct field offset for Radiosity.UIView.specs);
  v11 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v11;
  v12 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v12;
  v13 = *(a3 + 16);
  *v10 = *a3;
  v10[1] = v13;
  v14 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v14;
  *(v4 + direct field offset for Radiosity.UIView.isRadiosityEnabled) = a2;
  if (*(a3 + 72))
  {
    v15 = objc_allocWithZone(UIView);
    v16 = a1;
    sub_100450104(a3, v35);
    v17 = [v15 init];
  }

  else
  {
    v18 = objc_allocWithZone(_UIPortalView);
    v19 = a1;
    sub_100450104(a3, v35);
    v17 = [v18 initWithSourceView:v19];
  }

  v20 = v17;
  *(v4 + qword_1006F5518) = v17;
  v21 = objc_allocWithZone(_UIPortalView);
  v22 = a1;
  v23 = v20;
  v24 = [v21 initWithSourceView:v22];
  *(v4 + qword_1006F5520) = v24;
  v27 = type metadata accessor for Radiosity.UIView(0, *(v9 + 80), v25, v26);
  v34.receiver = v4;
  v34.super_class = v27;
  v28 = v24;
  v29 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v29 addSubview:{v22, v34.receiver, v34.super_class}];
  if (a2)
  {
    [v29 addSubview:v23];
    [v29 addSubview:v28];
  }

  [v29 bounds];
  [v22 setFrame:?];
  [v22 setAutoresizingMask:18];

  sub_100450F00(0);
  sub_100451578();
  v30 = [v29 traitCollection];
  v31 = [v30 userInterfaceStyle];

  sub_100451A7C(v31);
  sub_100009DCC(qword_1006F1BE0, &unk_1005A1D40);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10057B510;
  *(v32 + 32) = sub_10056E238();
  *(v32 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1005739D8();

  swift_unknownObjectRelease();

  sub_100452908(a3);

  return v29;
}

double sub_100450DE0(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v3 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v2) + 0x50), v0, v1);
  v4.receiver = v2;
  v4.super_class = v3;
  objc_msgSendSuper2(&v4, "layoutSubviews");
  sub_100450F00(0);
  sub_100451578();
}

void sub_100450EA4(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void sub_100450EEC(uint64_t a1)
{
  v2 = *(v1 + qword_1006F5518);
  *(v1 + qword_1006F5518) = a1;
}

void sub_100450F00(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[qword_1006F5518] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[qword_1006F5518];
    *&v2[qword_1006F5518] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  sub_100450104(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  sub_100452908(&v50);
  v23 = *&v2[qword_1006F5518];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[qword_1006F5518] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[qword_1006F5518] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[qword_1006F5518] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[qword_1006F5518] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = sub_1004536F8(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    sub_100452C2C(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[qword_1006F5518] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    sub_1004536F8(&v56, v48);
    v44 = sub_100451404(v42, v43, v2);
    sub_100452C2C(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id sub_100451404(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, *(v18 + 8));
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void sub_100451578()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v46 = *(v2 + 4);
  v47 = v3;
  v4 = *(v2 + 7);
  v48 = *(v2 + 6);
  v49 = v4;
  v5 = *(v2 + 1);
  v42 = *v2;
  v43 = v5;
  v6 = *(v2 + 3);
  v44 = *(v2 + 2);
  v45 = v6;
  sub_100450104(&v42, &rect[3]);
  [v1 bounds];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  *&rect[3] = v42;
  *&rect[5] = v43;
  *&rect[7] = v44;
  v51 = CGRectApplyAffineTransform(v50, &rect[3]);
  v11 = v51.origin.x;
  rect[0] = *&v51.origin.x;
  rect[2] = *&v51.origin.y;
  v12 = v51.size.width;
  v13 = v51.size.height;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v51));
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v14 = CGRectGetWidth(v52);
  v53.origin.x = v11;
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v53)) * 0.5;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v16 = CGRectGetHeight(v54);
  *&v55.origin.x = rect[0];
  *&v55.origin.y = rect[2];
  v55.size.width = v12;
  v55.size.height = v13;
  v17 = CGRectGetHeight(v55);
  sub_100452908(&v42);
  v18 = *&v1[qword_1006F5520];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  sub_100009DCC(&qword_1006F06D0, &unk_1005A1D30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057B500;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = sub_100573038().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = sub_1004536AC();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = sub_100573038().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = sub_100572E68().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = sub_100572D08().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void sub_100451A7C(uint64_t a1)
{
  sub_100451578();
  v3 = [*(v1 + qword_1006F5518) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + qword_1006F5520) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100451BEC(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  sub_100452908(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = sub_1000E672C(v7, v6);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  sub_1000F3E14(*(v1 + 72), *(v1 + 80));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Radiosity.Specs.radiosity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_100570668();
  LOBYTE(v5) = v14[0];
  *(&v5 + 1) = *(&v14[0] + 1);
  sub_100450104(a1, v14);
  sub_100570328();
  v14[6] = v12;
  v14[7] = v13;
  v14[8] = v5;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v14[0] = v6;
  v14[1] = v7;
  return sub_100452BE0(v14);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  sub_100450104(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 sub_100451FF4()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_1006FE530 = v5;
  qword_1006FE540 = *&tx;
  unk_1006FE548 = *&ty;
  dword_1006FE550 = 1050253722;
  qword_1006FE558 = v3;
  unk_1006FE560 = 0x402E000000000000;
  qword_1006FE568 = 0;
  unk_1006FE570 = 0;
  qword_1006FE578 = sub_1004520F4;
  unk_1006FE580 = 0;
  qword_1006FE588 = sub_10045211C;
  unk_1006FE590 = 0;
  qword_1006FE598 = 0x4040000000000000;
  return result;
}

float sub_1004520F4(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_1005A2324[a1];
  }
}

double sub_10045211C(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_1005A2330[a1];
  }
}

__n128 sub_100452164()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_1006FE5B0 = v5;
  qword_1006FE5C0 = *&tx;
  unk_1006FE5C8 = *&ty;
  dword_1006FE5D0 = 1053609165;
  qword_1006FE5D8 = v3;
  unk_1006FE5E0 = 0x402E000000000000;
  qword_1006FE5E8 = 0;
  unk_1006FE5F0 = 0;
  qword_1006FE5F8 = variable initialization expression of VerticalToggleSlider._maxValue;
  unk_1006FE600 = 0;
  qword_1006FE608 = sub_100452260;
  unk_1006FE610 = 0;
  qword_1006FE618 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (qword_1006EEC90 != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t sub_1004522DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_100450104(a2, v5);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    sub_100450104(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    sub_100450104(v5, v19);
    sub_100452C2C(&v28);
    v10 = sub_100452C20;
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id sub_10045244C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  sub_1005733C8();
  v19 = [v13 bezierPathWithRoundedRect:sub_1002DCE0C(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  sub_1005734B8();

  v21 = [v19 CGPath];
  sub_1005734B8();

  return v15;
}

_BYTE *sub_100452608(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 sub_100452664@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id sub_1004526CC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10056EBA8();
  v11 = type metadata accessor for Radiosity.UIView(0, v8, v9, v10);
  (*(v5 + 16))(v7, v2, v4);
  v12 = sub_10056EB78();
  v13 = *(v3 + 36);
  LOBYTE(v3) = *(v2 + *(v3 + 40));
  v14 = *(v2 + v13 + 80);
  v21[4] = *(v2 + v13 + 64);
  v21[5] = v14;
  v15 = *(v2 + v13 + 112);
  v21[6] = *(v2 + v13 + 96);
  v21[7] = v15;
  v16 = *(v2 + v13 + 16);
  v21[0] = *(v2 + v13);
  v21[1] = v16;
  v17 = *(v2 + v13 + 48);
  v21[2] = *(v2 + v13 + 32);
  v21[3] = v17;
  sub_100450104(v21, v20);
  v18 = objc_allocWithZone(v11);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v12, v3, v21);
}

double sub_100452834(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  sub_100450104(v14, v13);
  sub_100450104(a1, v13);
  sub_100452908(v21);
  sub_10045071C(v14);
  sub_100452908(v14);
  return result;
}

void sub_100452964(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin();
  (*(v7 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  sub_10056EB98();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v14[4] = v8[4];
  v14[5] = v9;
  v10 = v8[7];
  v14[6] = v8[6];
  v14[7] = v10;
  v11 = v8[1];
  v14[0] = *v8;
  v14[1] = v11;
  v12 = v8[3];
  v14[2] = v8[2];
  v14[3] = v12;
  sub_100450104(v14, v13);
  sub_100452834(v14);
  sub_100452908(v14);
  Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void sub_100452AF8(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  sub_100451A7C(v2);
}

uint64_t sub_100452C88(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100452CA0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100452CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100452D14(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_100452DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100452E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100452EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100452EF0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100452F48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100452F98(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_100452FEC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_100453030()
{
  result = qword_1006F55A8;
  if (!qword_1006F55A8)
  {
    sub_100010324(&qword_1006F54F8, &unk_1005A1F48);
    sub_100010BC0(&qword_1006F55B0, &qword_1006F54E8, &qword_1005A1F38, &unk_1005A22C8);
    sub_100010BC0(&qword_1006F55B8, &qword_1006F55C0, &qword_1005A21B0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F55A8);
  }

  return result;
}

uint64_t sub_100453114(void *a1)
{
  sub_10056ECA8();
  sub_100453178();
  return swift_getWitnessTable();
}

unint64_t sub_100453178()
{
  result = qword_1006F55C8[0];
  if (!qword_1006F55C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006F55C8);
  }

  return result;
}

uint64_t sub_1004531CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100453254(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1004533A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t sub_1004535F4()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1004536AC()
{
  result = qword_1006F06D8;
  if (!qword_1006F06D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F06D8);
  }

  return result;
}

uint64_t sub_100453738(uint64_t a1)
{
  sub_10056E698();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_10056EED8();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

double sub_1004538C4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100453948(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t Reactions.StackView.Model.reaction.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

void (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F5660, &qword_1005A2398);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100009DCC(&qword_1006F5658, &qword_1005A2390);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
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
  v5 = sub_100009DCC(&qword_1006F5660, &qword_1005A2398);
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

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006F5658, &qword_1005A2390);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

void sub_100453E28(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v3;
}

uint64_t sub_100453EAC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t Reactions.StackView.Model.count.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

void (*Reactions.StackView.Model.count.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F5678, &qword_1005A23F0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100009DCC(&qword_1006F5670, &qword_1005A23E8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
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
  v5 = sub_100009DCC(&qword_1006F5678, &qword_1005A23F0);
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

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006F5670, &qword_1005A23E8);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

void sub_100454370(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v3;
}

uint64_t sub_1004543F4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_10056E488();
}

uint64_t Reactions.StackView.Model.userImage.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

void (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F5688, &qword_1005A2440);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
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
  v5 = sub_100009DCC(&qword_1006F5688, &qword_1005A2440);
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

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  sub_10056E448();
  swift_endAccess();
  return sub_10028A66C;
}

void (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028A32C;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F5698, &qword_1005A2490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
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
  v5 = sub_100009DCC(&qword_1006F5698, &qword_1005A2490);
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

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

uint64_t sub_100454CA0(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

void (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_10056E468();
  return sub_10028B698;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F5698, &qword_1005A2490);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
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
  v5 = sub_100009DCC(&qword_1006F5698, &qword_1005A2490);
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

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  sub_10056E448();
  swift_endAccess();
  return sub_10028B69C;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  v5 = *(v26 - 8);
  __chkstk_darwin();
  v7 = v24 - v6;
  v25 = sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  v8 = *(v25 - 8);
  __chkstk_darwin();
  v10 = v24 - v9;
  v11 = sub_100009DCC(&qword_1006F5658, &qword_1005A2390);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
  sub_10056E438();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_100009DCC(&qword_1006EF6A0, &qword_100598E18);
  sub_10056E438();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_10056E438();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_10056E438();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  sub_10056E438();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_10056E438();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_10056E488();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  v6 = *(v26 - 8);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = sub_100009DCC(&qword_1006F5658, &qword_1005A2390);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = sub_100009DCC(&qword_1006F5C90, &qword_1005A1830);
  sub_10056E438();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  sub_100009DCC(&qword_1006EF6A0, &qword_100598E18);
  sub_10056E438();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  sub_10056E438();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  sub_10056E438();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  sub_10056E438();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  sub_10056E438();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_10056E488();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_100009DCC(&qword_1006F5658, &qword_1005A2390);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_100009DCC(&qword_1006F5670, &qword_1005A23E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = sub_100009DCC(&qword_1006F5658, &qword_1005A2390);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = sub_100009DCC(&qword_1006F5670, &qword_1005A23E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = sub_100009DCC(&qword_1006F3B20, &qword_10059F780);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_100455B70@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = sub_10056E408();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model(uint64_t a1)
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1004593C4(&qword_1006F56A8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return sub_10056EA78();
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1004593C4(&qword_1006F56A8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return sub_10056EA88();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Reactions.StackView(0);
  v6 = v5[6];
  *(a3 + v6) = swift_getKeyPath();
  sub_100009DCC(&qword_1006F2D40, &qword_1005973F8);
  swift_storeEnumTagMultiPayload();
  v7 = v5[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDA0, &unk_10059C170);
  swift_storeEnumTagMultiPayload();
  v8 = v5[8];
  *(a3 + v8) = swift_getKeyPath();
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  sub_1004593C4(&qword_1006F56A8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
  *a3 = sub_10056EA78();
  *(a3 + 8) = v9;
  result = *a2;
  v11 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v11;
  *(a3 + 48) = *(a2 + 32);
  return result;
}

void Reactions.StackView.body.getter(uint64_t a1@<X8>)
{
  v106 = a1;
  sub_100009DCC(&qword_1006F56B0, &qword_1005A2570);
  __chkstk_darwin();
  v92 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = (&v83 - v3);
  v96 = *(type metadata accessor for Reactions.StackView(0) - 8);
  __chkstk_darwin();
  v97 = v4;
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(&qword_1006F56B8, &qword_1005A2578);
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin();
  v100 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v83 - v7;
  sub_100009DCC(&qword_1006EF998, &qword_100599528);
  __chkstk_darwin();
  v9 = &v83 - v8;
  v91 = sub_10056EBD8();
  v10 = *(v91 - 8);
  __chkstk_darwin();
  v12 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100570A78();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v95 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v15;
  v16 = __chkstk_darwin();
  v17 = *(v14 + 104);
  v105 = &v83 - v18;
  v17(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v19 = v107;
  v20 = *(v1 + 16);
  if (v20 < v107)
  {
    v19 = *(v1 + 16);
  }

  v21 = __OFSUB__(v19, 1);
  v22 = v19 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v90 = v1;
    v88 = *(v1 + 48);
    v23 = *(v1 + 24);
    v24 = *(v1 + 32);
    v25 = *(v1 + 40);
    KeyPath = v22;
    v85 = v12;
    v87 = v20;
    sub_1003BE970(v12);
    v103 = v14;
    v86 = *(v10 + 16);
    v26 = v12;
    v27 = v91;
    (v86)(v9, v26, v91);
    v104 = v13;
    v84 = *(v10 + 56);
    v84(v9, 0, 1, v27);
    v28 = sub_100573798();
    v29 = objc_opt_self();
    v30 = [v29 traitCollectionWithPreferredContentSizeCategory:v28];
    v31 = objc_opt_self();
    v32 = [v31 defaultMetrics];
    [v32 scaledValueForValue:v30 compatibleWithTraitCollection:v23];
    v34 = v33;

    v35 = v9;
    v36 = v9;
    v37 = v85;
    (v86)(v35, v85, v27);
    v38 = v103;
    v39 = v106;
    v84(v36, 0, 1, v27);
    v40 = v104;
    v41 = sub_100573798();
    v42 = [v29 traitCollectionWithPreferredContentSizeCategory:v41];
    v43 = [v31 defaultMetrics];
    [v43 scaledValueForValue:v42 compatibleWithTraitCollection:v25];
    v45 = v44;

    (*(v10 + 8))(v37, v27);
    v46 = v87;
    *&v110 = v87;
    *(&v110 + 1) = v34;
    *&v111 = v24;
    *(&v111 + 1) = v45;
    LODWORD(v42) = v88;
    v112 = v88;
    *v39 = sub_10056F218();
    *(v39 + 8) = v24 - v34;
    *(v39 + 16) = 0;
    v86 = (v39 + *(sub_100009DCC(&qword_1006F56C0, &unk_1005A2580) + 44));
    if (v42)
    {
      v47 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v47 = v46;
    }

    v91 = v47;
    *&v107 = 0;
    *(&v107 + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v48 = v90;
    v49 = v98;
    sub_1004582B4(v90, v98);
    v50 = v95;
    v51 = v105;
    (*(v38 + 16))(v95, v105, v40);
    v52 = (*(v96 + 80) + 49) & ~*(v96 + 80);
    v53 = (v97 + *(v38 + 80) + v52) & ~*(v38 + 80);
    v54 = swift_allocObject();
    v55 = v111;
    *(v54 + 16) = v110;
    *(v54 + 32) = v55;
    *(v54 + 48) = v112;
    sub_1004585B4(v49, v54 + v52);
    (*(v38 + 32))(v54 + v53, v50, v40);
    sub_100009DCC(&qword_1006F56C8, &qword_1005A25A8);
    sub_100009DCC(&qword_1006F56D0, &qword_1005A25B0);
    sub_100458700();
    sub_100458864();
    v56 = v99;
    sub_1005708B8();
    v57 = sub_1005709E8();
    v58 = v93;
    *v93 = v57;
    *(v58 + 8) = v59;
    v60 = sub_100009DCC(&qword_1006F5710, &qword_1005A25C8);
    sub_100457410(&v110, v48, v51, v58 + *(v60 + 44));
    v62 = v101;
    v61 = v102;
    v63 = *(v101 + 16);
    v64 = v100;
    v63(v100, v56, v102);
    v65 = v92;
    sub_10000CC8C(v58, v92, &qword_1006F56B0, &qword_1005A2570);
    v66 = v86;
    *v86 = 0;
    *(v66 + 8) = 1;
    v67 = sub_100009DCC(&qword_1006F5718, &qword_1005A25D0);
    v63(v66 + *(v67 + 48), v64, v61);
    sub_10000CC8C(v65, v66 + *(v67 + 64), &qword_1006F56B0, &qword_1005A2570);
    sub_10001036C(v58, &qword_1006F56B0, &qword_1005A2570);
    v68 = *(v62 + 8);
    v68(v56, v61);
    sub_10001036C(v65, &qword_1006F56B0, &qword_1005A2570);
    v68(v64, v61);
    if (!__OFADD__(v91, 1))
    {
      Int.seconds.getter(v91 + 1);
      sub_1005709E8();
      sub_10056E888();
      v69 = sub_100009DCC(&qword_1006F5720, &qword_1005A25D8);
      v70 = v106;
      v71 = (v106 + *(v69 + 36));
      v72 = v108;
      *v71 = v107;
      v71[1] = v72;
      v71[2] = v109;
      v73 = sub_10056FA38();
      sub_10056E598();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = v70 + *(sub_100009DCC(&qword_1006F5728, &qword_1005A25E0) + 36);
      *v82 = v73;
      *(v82 + 8) = v75;
      *(v82 + 16) = v77;
      *(v82 + 24) = v79;
      *(v82 + 32) = v81;
      *(v82 + 40) = 0;
      (*(v103 + 8))(v105, v104);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100456924@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v6 = sub_10056ECD8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009DCC(&qword_1006F5A00, &qword_1005A2760);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v21 - v14;
  *a4 = sub_1005709E8();
  a4[1] = v16;
  v17 = sub_100009DCC(&qword_1006F5AA8, &qword_1005A2808);
  sub_100456BF0(a2, v22, a4 + *(v17 + 44));
  sub_100570B48();
  sub_10056ECE8();
  sub_100570A58();
  v18 = sub_1004593C4(&qword_1006F5A48, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  sub_10056E658();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 16))(v13, v15, v10);
  v23 = v6;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_10056E8F8();
  (*(v11 + 8))(v15, v10);
  result = sub_100009DCC(&qword_1006F56D0, &qword_1005A25B0);
  *(a4 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_100456BF0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v43 = a4;
  v4 = sub_100009DCC(&qword_1006F5AB0, &qword_1005A2810) - 8;
  __chkstk_darwin();
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = sub_100009DCC(&qword_1006F5A10, &qword_1005A2770) - 8;
  __chkstk_darwin();
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v38 = sub_1005704B8();
  sub_1005709E8();
  sub_10056E888();
  v37 = v44[1];
  LODWORD(v36) = v45;
  v12 = v46;
  v35 = v47;
  v34 = v48;
  v33 = v49;
  v13 = sub_1005704D8();
  v14 = &v11[*(v8 + 44)];
  v15 = *(sub_100009DCC(&qword_1006F5A18, &qword_1005A2778) + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = sub_100570A78();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  *(v14 + *(sub_100009DCC(&qword_1006F5A20, &qword_1005A2780) + 56)) = 256;
  v19 = v37;
  *v11 = v38;
  *(v11 + 1) = v19;
  v11[16] = v36;
  *(v11 + 3) = v12;
  v11[32] = v35;
  v20 = v33;
  *(v11 + 5) = v34;
  *(v11 + 6) = v20;
  v38 = sub_1005704B8();
  sub_1005709E8();
  sub_10056E888();
  v21 = v50;
  LOBYTE(v12) = v51;
  v22 = v52;
  LOBYTE(v16) = v53;
  v37 = v54;
  v36 = v55;
  sub_100457058(v44);
  v23 = v44[0];
  v24 = &v7[*(v4 + 44)];
  v25 = sub_100009DCC(&qword_1006F5A28, &qword_1005A27B8);
  (*(v18 + 16))(v24 + *(v25 + 36), v41, v17);
  *v24 = v23;
  *(v24 + *(sub_100009DCC(&qword_1006F5A30, &qword_1005A27C0) + 56)) = 256;
  v26 = v39;
  *v7 = v38;
  *(v7 + 1) = v21;
  v7[16] = v12;
  *(v7 + 3) = v22;
  v7[32] = v16;
  v27 = v36;
  *(v7 + 5) = v37;
  *(v7 + 6) = v27;
  sub_10000CC8C(v11, v26, &qword_1006F5A10, &qword_1005A2770);
  v28 = v42;
  sub_10000CC8C(v7, v42, &qword_1006F5AB0, &qword_1005A2810);
  v29 = v43;
  sub_10000CC8C(v26, v43, &qword_1006F5A10, &qword_1005A2770);
  v30 = sub_100009DCC(&qword_1006F5AB8, &qword_1005A2818);
  sub_10000CC8C(v28, v29 + *(v30 + 48), &qword_1006F5AB0, &qword_1005A2810);
  sub_10001036C(v7, &qword_1006F5AB0, &qword_1005A2810);
  sub_10001036C(v11, &qword_1006F5A10, &qword_1005A2770);
  sub_10001036C(v28, &qword_1006F5AB0, &qword_1005A2810);
  return sub_10001036C(v26, &qword_1006F5A10, &qword_1005A2770);
}

uint64_t sub_100457058@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_100009DCC(&qword_1006F5A50, &qword_1005A27D8) - 8;
  __chkstk_darwin();
  v21 = &v20 - v4;
  v5 = sub_10056F318();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10056E698();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Reactions.StackView(0);
  sub_1003BEDF0(v12);
  sub_1003BEDA0(v8);
  v13 = *(v3 + 56);
  v14 = v10;
  v15 = v21;
  (*(v14 + 32))(v21, v12, v9);
  (*(v6 + 32))(v15 + v13, v8, v5);
  v16 = (*(v14 + 88))(v15, v9);
  if (v16 == enum case for ColorScheme.light(_:))
  {
    if ((*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
    {
      v17 = [objc_opt_self() secondarySystemFillColor];
      v23 = sub_100570528();
LABEL_7:
      *v22 = sub_10056E898();
      return (*(v14 + 8))(v15, v9);
    }
  }

  else if (v16 == enum case for ColorScheme.dark(_:) && (*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v23) = sub_10056F6D8();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v23) = sub_10056F6B8();
  }

  else
  {
    v19 = [objc_opt_self() secondarySystemFillColor];
    v23 = sub_100570528();
  }

  *v22 = sub_10056E898();
  return sub_10001036C(v15, &qword_1006F5A50, &qword_1005A27D8);
}

uint64_t sub_100457410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a2;
  v86 = a3;
  v80 = a1;
  v89 = a4;
  v76 = sub_10056ECD8();
  v73 = *(v76 - 8);
  __chkstk_darwin();
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006F5A00, &qword_1005A2760);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v8;
  v9 = sub_100570558();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin();
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2E90, &qword_10059D000);
  __chkstk_darwin();
  v83 = &v66 - v11;
  v84 = sub_100009DCC(&qword_1006F5A08, &qword_1005A2768) - 8;
  __chkstk_darwin();
  v88 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v66 - v13;
  v15 = sub_100009DCC(&qword_1006F5A10, &qword_1005A2770) - 8;
  __chkstk_darwin();
  v90 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v66 - v17;
  v87 = sub_1005704B8();
  v19 = *(a1 + 8);
  sub_1005709E8();
  sub_10056E888();
  v20 = v118;
  LODWORD(v82) = v119;
  v81 = v120;
  LODWORD(v79) = v121;
  v77 = v123;
  *&v78 = v122;
  v21 = sub_1005704D8();
  v22 = &v18[*(v15 + 44)];
  v23 = *(sub_100009DCC(&qword_1006F5A18, &qword_1005A2778) + 36);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_100570A78();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  *(v22 + *(sub_100009DCC(&qword_1006F5A20, &qword_1005A2780) + 56)) = 256;
  *v18 = v87;
  *(v18 + 1) = v20;
  v18[16] = v82;
  *(v18 + 3) = v81;
  v18[32] = v79;
  v27 = v77;
  *(v18 + 5) = v78;
  *(v18 + 6) = v27;
  v87 = v18;
  sub_100457F58(&v124);
  v81 = *(&v126 + 1);
  v82 = v126;
  LOBYTE(v22) = v127;
  v28 = sub_10056FB38();
  v78 = v125;
  v79 = v124;
  v29 = v83;
  (*(*(v28 - 8) + 56))(v83, 1, 1, v28);
  v30 = sub_10056FBA8();
  sub_10001036C(v29, &qword_1006F2E90, &qword_10059D000);
  KeyPath = swift_getKeyPath();
  LOBYTE(v124) = v22;
  sub_1005709E8();
  v83 = v19;
  sub_10056E888();
  sub_100457058(&v124);
  v32 = v124;
  v33 = &v14[*(v84 + 44)];
  v34 = sub_100009DCC(&qword_1006F5A28, &qword_1005A27B8);
  (*(v26 + 16))(&v33[*(v34 + 36)], v86, v25);
  *v33 = v32;
  *&v33[*(sub_100009DCC(&qword_1006F5A30, &qword_1005A27C0) + 56)] = 256;
  v35 = v78;
  *v14 = v79;
  *(v14 + 1) = v35;
  v36 = v81;
  *(v14 + 4) = v82;
  *(v14 + 5) = v36;
  v14[48] = v22;
  *(v14 + 7) = KeyPath;
  *(v14 + 8) = v30;
  v37 = v134[1];
  *(v14 + 72) = v134[0];
  *(v14 + 88) = v37;
  v38 = v14;
  *(v14 + 104) = v134[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v39 = v124;
  if (!v124)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v124 != 1)
  {

LABEL_5:
    sub_1004593A4(&v124);
    goto LABEL_6;
  }

  v40 = v39;
  sub_100570538();
  v42 = v67;
  v41 = v68;
  v43 = v69;
  (*(v68 + 104))(v67, enum case for Image.ResizingMode.stretch(_:), v69);
  v86 = sub_1005705D8();

  (*(v41 + 8))(v42, v43);
  v44 = sub_1005709E8();
  v84 = v45;
  v85 = v44;
  sub_1005704A8();
  v82 = sub_1005704E8();

  sub_100570B48();
  v46 = v70;
  sub_10056ECE8();
  sub_100570A58();
  v47 = sub_1004593C4(&qword_1006F5A48, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  v48 = v72;
  v49 = v76;
  sub_10056E658();

  (*(v73 + 8))(v46, v49);
  v50 = v74;
  v51 = v75;
  (*(v74 + 16))(v71, v48, v75);
  *&v124 = v49;
  *(&v124 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  v52 = sub_10056E8F8();
  (*(v50 + 8))(v48, v51);
  sub_1005709E8();
  sub_10056E888();

  *(v117 + 8) = v101;
  v111 = v86;
  LOWORD(v112) = 257;
  *(&v112 + 1) = v85;
  *&v113 = v84;
  *(&v113 + 1) = v82;
  *&v114 = 0x3FE0000000000000;
  BYTE8(v114) = 0;
  v115 = 0uLL;
  LOBYTE(v116) = 2;
  *(&v116 + 1) = 0x3FF0000000000000;
  *&v117[0] = v52;
  *(&v117[1] + 8) = v102;
  *(&v117[2] + 8) = v103;
  v53.location = &v111;
  CFRange.init(_:)(v53);
  v130 = v117[0];
  v131 = v117[1];
  v132 = v117[2];
  v133 = *&v117[3];
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v129 = v116;
  v124 = v111;
  v125 = v112;
LABEL_6:
  v54 = v87;
  v55 = v90;
  sub_10000CC8C(v87, v90, &qword_1006F5A10, &qword_1005A2770);
  v56 = v88;
  sub_10000CC8C(v38, v88, &qword_1006F5A08, &qword_1005A2768);
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v93 = v126;
  v94 = v127;
  v95 = v128;
  v96 = v129;
  v91 = v124;
  v92 = v125;
  v57 = v55;
  v58 = v89;
  sub_10000CC8C(v57, v89, &qword_1006F5A10, &qword_1005A2770);
  v59 = sub_100009DCC(&qword_1006F5A38, &qword_1005A27C8);
  sub_10000CC8C(v56, v58 + *(v59 + 48), &qword_1006F5A08, &qword_1005A2768);
  v60 = v58 + *(v59 + 64);
  v107 = v97;
  v108 = v98;
  v109 = v99;
  v110 = v100;
  v105 = v95;
  v106 = v96;
  v103 = v93;
  v104 = v94;
  v101 = v91;
  v102 = v92;
  sub_10000CC8C(&v101, &v111, &qword_1006F5A40, &qword_1005A27D0);
  sub_10001036C(v38, &qword_1006F5A08, &qword_1005A2768);
  sub_10001036C(v54, &qword_1006F5A10, &qword_1005A2770);
  v61 = v108;
  *(v60 + 96) = v107;
  *(v60 + 112) = v61;
  *(v60 + 128) = v109;
  *(v60 + 144) = v110;
  v62 = v104;
  *(v60 + 32) = v103;
  *(v60 + 48) = v62;
  v63 = v106;
  *(v60 + 64) = v105;
  *(v60 + 80) = v63;
  v64 = v102;
  *v60 = v101;
  *(v60 + 16) = v64;
  v117[0] = v97;
  v117[1] = v98;
  v117[2] = v99;
  *&v117[3] = v100;
  v113 = v93;
  v114 = v94;
  v115 = v95;
  v116 = v96;
  v111 = v91;
  v112 = v92;
  sub_10001036C(&v111, &qword_1006F5A40, &qword_1005A27D0);
  sub_10001036C(v56, &qword_1006F5A08, &qword_1005A2768);
  return sub_10001036C(v90, &qword_1006F5A10, &qword_1005A2770);
}

double sub_100457F58@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10056ECD8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v27 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (*(&v35 + 1))
  {
    sub_10037AD68();
    v9 = sub_10056FF28();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = sub_100570A58();
    sub_100570B48();
    sub_10056ECE8();
    (*(v4 + 16))(v6, v8, v3);
    sub_1004593C4(&qword_1006F5A48, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
    v17 = sub_10056E8F8();
    (*(v4 + 8))(v8, v3);
    v28 = v9;
    v29 = v11;
    v30 = v13 & 1;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = 0;
  }

  else
  {
    v18 = sub_100570578();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    if (v35 == 1)
    {
      v19 = sub_1005704F8();
    }

    else
    {
      v19 = sub_100570458();
    }

    v20 = v19;
    v21 = sub_10056FC08();
    KeyPath = swift_getKeyPath();
    v28 = v18;
    v29 = v20;
    v30 = KeyPath;
    v31 = v21;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  sub_100009DCC(&qword_1006F5A58, &qword_1005A27E0);
  sub_100009DCC(&qword_1006F5A60, &qword_1005A27E8);
  sub_10045940C();
  sub_1004594F0();
  sub_10056F5B8();
  result = *&v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  *a2 = v35;
  *(a2 + 16) = v24;
  *(a2 + 32) = v25;
  *(a2 + 48) = v26;
  return result;
}

uint64_t Reactions.StackView.Specs.init(maxItemCount:platterLength:stackSpacing:fontSize:sizingMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_1004582B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100458318()
{
  v1 = type metadata accessor for Reactions.StackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = sub_100570A78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[6];
  sub_100009DCC(&qword_1006F2D40, &qword_1005973F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10056E698();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_100009DCC(&unk_1006EEDA0, &unk_10059C170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10056F318();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10056EBD8();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v15 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1004585B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reactions.StackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100458618@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Reactions.StackView(0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_100570A78() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100456924(v1 + v4, v7, a1);
}

unint64_t sub_100458700()
{
  result = qword_1006F56D8;
  if (!qword_1006F56D8)
  {
    sub_100010324(&qword_1006F56C8, &qword_1005A25A8);
    sub_100458784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F56D8);
  }

  return result;
}

unint64_t sub_100458784()
{
  result = qword_1006F56E0;
  if (!qword_1006F56E0)
  {
    sub_100010324(&qword_1006F56E8, &qword_1005A25B8);
    sub_100458810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F56E0);
  }

  return result;
}

unint64_t sub_100458810()
{
  result = qword_1006F56F0;
  if (!qword_1006F56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F56F0);
  }

  return result;
}

unint64_t sub_100458864()
{
  result = qword_1006F56F8;
  if (!qword_1006F56F8)
  {
    sub_100010324(&qword_1006F56D0, &qword_1005A25B0);
    sub_100010BC0(&qword_1006F5700, &qword_1006F5708, &qword_1005A25C0, &protocol conformance descriptor for ZStack<A>);
    sub_100010BC0(&qword_1006F43F8, &qword_1006F4400, &unk_1005A0220, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F56F8);
  }

  return result;
}

unint64_t sub_100458968()
{
  result = qword_1006F5730;
  if (!qword_1006F5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5730);
  }

  return result;
}

uint64_t sub_100458A00(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100009DCC(&qword_1006F2AA0, &qword_10059E0C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100009DCC(&qword_1006F16D0, &qword_10059C4E8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100009DCC(&qword_1006F1108, &qword_10059BDF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_100458BA4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100009DCC(&qword_1006F2AA0, &qword_10059E0C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100009DCC(&qword_1006F16D0, &qword_10059C4E8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100009DCC(&qword_1006F1108, &qword_10059BDF0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

void sub_100458D34(uint64_t a1)
{
  sub_100458E44(319);
  if (v1 <= 0x3F)
  {
    sub_100458ED8(319, &qword_1006F2B18, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_100458ED8(319, &unk_1006F1748, &type metadata accessor for ColorSchemeContrast);
      if (v3 <= 0x3F)
      {
        sub_100458ED8(319, &qword_1006F2780, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100458E44(uint64_t a1)
{
  if (!qword_1006F57A0)
  {
    type metadata accessor for Reactions.StackView.Model(255);
    sub_1004593C4(&qword_1006F56A8, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
    v1 = sub_10056EAA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1006F57A0);
    }
  }
}

void sub_100458ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10056E6D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100458F34(uint64_t a1)
{
  sub_1002CA904(319, &qword_1006F5818, &qword_1006F5C90, &qword_1005A1830);
  if (v1 <= 0x3F)
  {
    sub_1004590D0(319, &unk_1006F5820, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_1002CA904(319, &unk_1006F3C60, &qword_1006EF6A0, &qword_100598E18);
      if (v3 <= 0x3F)
      {
        sub_1004590D0(319, &qword_1006F2398, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004590D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10056E4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10045911C(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100459160(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1004591CC()
{
  result = qword_1006F59D0;
  if (!qword_1006F59D0)
  {
    sub_100010324(&qword_1006F59D8, &qword_1005A2750);
    sub_100459258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F59D0);
  }

  return result;
}

unint64_t sub_100459258()
{
  result = qword_1006F59E0;
  if (!qword_1006F59E0)
  {
    sub_100010324(&qword_1006F5728, &qword_1005A25E0);
    sub_1004592E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F59E0);
  }

  return result;
}

unint64_t sub_1004592E4()
{
  result = qword_1006F59E8;
  if (!qword_1006F59E8)
  {
    sub_100010324(&qword_1006F5720, &qword_1005A25D8);
    sub_100010BC0(&qword_1006F59F0, &qword_1006F59F8, &qword_1005A2758, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F59E8);
  }

  return result;
}

double sub_1004593A4(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1004593C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10045940C()
{
  result = qword_1006F5A68;
  if (!qword_1006F5A68)
  {
    sub_100010324(&qword_1006F5A58, &qword_1005A27E0);
    sub_100010BC0(&qword_1006F5A70, &qword_1006F5A78, &qword_1005A27F0, &protocol conformance descriptor for _AnimationView<A>);
    sub_100010BC0(&qword_1006F43F8, &qword_1006F4400, &unk_1005A0220, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5A68);
  }

  return result;
}

unint64_t sub_1004594F0()
{
  result = qword_1006F5A80;
  if (!qword_1006F5A80)
  {
    sub_100010324(&qword_1006F5A60, &qword_1005A27E8);
    sub_1004595A8();
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268, &qword_10059D060, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5A80);
  }

  return result;
}

unint64_t sub_1004595A8()
{
  result = qword_1006F5A88;
  if (!qword_1006F5A88)
  {
    sub_100010324(&qword_1006F5A90, &qword_1005A27F8);
    sub_100010BC0(&qword_1006F5A98, &qword_1006F5AA0, &qword_1005A2800, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5A88);
  }

  return result;
}

id sub_100459748(uint64_t a1, uint64_t a2)
{
  sub_10045DA30(a1, v15);
  v5 = v16;
  if (v16)
  {
    sub_10000C8CC(v15, v16);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_100574478();
    (*(v6 + 8))(v9, v5);
    sub_100010474(v15);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for SliderView.PanGestureRecognizer();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithTarget:action:", v10, a2);
  swift_unknownObjectRelease();
  sub_100374094(a1);
  return v12;
}

uint64_t *SliderView.Specs.barHeight.unsafeMutableAddressor()
{
  if (qword_1006EEC98 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.barHeight;
}

uint64_t *SliderView.Specs.expandedBarHeight.unsafeMutableAddressor()
{
  if (qword_1006EECA0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.expandedBarHeight;
}

CGFloat sub_100459A68()
{
  CGAffineTransformMakeScale(&v1, 1.05, 1.05);
  result = v1.a;
  *static SliderView.Specs.expandedTransform = v1;
  return result;
}

char *SliderView.Specs.expandedTransform.unsafeMutableAddressor()
{
  if (qword_1006EECA8 != -1)
  {
    swift_once();
  }

  return static SliderView.Specs.expandedTransform;
}

double static SliderView.Specs.expandedTransform.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1006EECA8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *&static SliderView.Specs.expandedTransform[16];
  *a1 = *static SliderView.Specs.expandedTransform;
  a1[1] = v1;
  result = *&static SliderView.Specs.expandedTransform[32];
  a1[2] = *&static SliderView.Specs.expandedTransform[32];
  return result;
}

uint64_t *SliderView.Specs.stretchLimit.unsafeMutableAddressor()
{
  if (qword_1006EECB0 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.stretchLimit;
}

uint64_t *SliderView.Specs.escapeHeight.unsafeMutableAddressor()
{
  if (qword_1006EECB8 != -1)
  {
    swift_once();
  }

  return &static SliderView.Specs.escapeHeight;
}

id sub_100459CA0()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1006FE680 = result;
  return result;
}

double sub_100459CF4()
{
  v0 = Int.seconds.getter(1);
  result = v0 / Int.seconds.getter(100);
  qword_1006FE688 = *&result;
  return result;
}

id SliderView.panRecognizer.getter(__n128 a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer;
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for SliderView.PanGestureRecognizer()) initWithTarget:v1 action:"panGestureRecognized:"];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void SliderView.panRecognizer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = a1;
}

void (*SliderView.panRecognizer.modify(id *a1, __n128 a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = SliderView.panRecognizer.getter(a2);
  return sub_100459E34;
}

void sub_100459E34(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = v2;
}

id SliderView.trackLayoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackLayoutGuide.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SliderView.elapsedTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.elapsedTrackColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

uint64_t (*SliderView.elapsedTrackColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_10045A144;
}

void sub_10045A144(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6))
    {
      v7 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
      swift_beginAccess();
      v8 = v3[9];
    }

    else
    {
      v8 = v3[9];
      v7 = (v8 + v3[10]);
    }

    [v5 setBackgroundColor:*v7];
    v9 = *(v8 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v8 + v10)];
  }

  free(v3);
}

id SliderView.remainingTrackColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.remainingTrackColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v9 = (v1 + v8);
  swift_beginAccess();
  [v6 setBackgroundColor:*v9];
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v1 + v3)];
}

uint64_t (*SliderView.remainingTrackColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_10045A420;
}

void sub_10045A420(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
    if (!*(v4 + v6))
    {
      v7 = &OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
    }

    v8 = *v7;
    v10 = v3[9];
    v9 = v3[10];
    swift_beginAccess();
    [v5 setBackgroundColor:*(v10 + v8)];
    [*(v10 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack) setBackgroundColor:*(v10 + v9)];
  }

  free(v3);
}

id SliderView.trackingColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SliderView.trackingColor.setter(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
  v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if ((*(v1 + v7) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
    swift_beginAccess();
  }

  [v6 setBackgroundColor:*v3];
  v8 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
  v9 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v8 setBackgroundColor:*(v1 + v9)];
}

uint64_t (*SliderView.trackingColor.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  *(v3 + 72) = v1;
  *(v3 + 80) = v4;
  swift_beginAccess();
  return sub_10045A6F8;
}

void sub_10045A6F8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = *(v4 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack);
    v6 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (*(v4 + v6) == 1)
    {
      v7 = v3[9];
      v8 = (v7 + v3[10]);
    }

    else
    {
      v8 = (v3[9] + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor);
      swift_beginAccess();
      v7 = v3[9];
    }

    [v5 setBackgroundColor:*v8];
    v9 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack);
    v10 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
    swift_beginAccess();
    [v9 setBackgroundColor:*(v7 + v10)];
  }

  free(v3);
}

double SliderView.value.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SliderView.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = SliderView.panRecognizer.getter(v4);
  [v5 setEnabled:*(v1 + v3)];
}

uint64_t (*SliderView.isEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_10045A980;
}

void sub_10045A980(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = SliderView.panRecognizer.getter(v4);
    [v7 setEnabled:*(v5 + v6)];
  }

  free(v3);
}

uint64_t SliderView.isTracking.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SliderView.transitionStartValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  swift_beginAccess();
  return *v1;
}

void SliderView.transitionStartValue.setter(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = *&a1;
  *(v5 + 8) = a2 & 1;
  if (v7)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v6 == *&a1)
  {
    return;
  }

  sub_10045D1E8();
  if ((v5[1] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v8)
    {
      v9 = *v5;
      v10 = v8;
      [v2 bounds];
      [v10 setConstant:v9 * CGRectGetWidth(v11)];
    }
  }
}

void (*SliderView.transitionStartValue.modify(uint64_t *a1))(uint64_t *a1, char a2, __n128 a3)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_10045ABFC;
}

void sub_10045ABFC(uint64_t *a1, char a2, __n128 a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(v4 + 32);
  if (a2)
  {
    SliderView.transitionStartValue.setter(*&v5, v6);
    goto LABEL_3;
  }

  v7 = *(v4 + 40) + *(v4 + 48);
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = v5;
  *(v7 + 8) = v6;
  if (v9)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (v8 == v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v11 = *(v4 + 40) + *(v4 + 48);
  sub_10045D1E8();
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *(v4 + 40);
    v13 = *&v12[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
    if (v13)
    {
      v14 = *&v12[*(v4 + 48)];
      v15 = v13;
      [v12 bounds];
      [v15 setConstant:v14 * CGRectGetWidth(v17)];
    }
  }

LABEL_3:

  free(v4);
}

uint64_t sub_10045ADB8(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_10045AE40(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id SliderView.semanticContentAttribute.getter(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SliderView();
  return objc_msgSendSuper2(&v4, "semanticContentAttribute");
}

id SliderView.semanticContentAttribute.setter(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v5, "setSemanticContentAttribute:", a1);
  return [*&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v2, "semanticContentAttribute")}];
}

char *sub_10045B07C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100573948();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v15 = &v95 - v14;
  v16 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v17 = [objc_allocWithZone(UIStackView) init];
  v18 = UIView.forAutolayout.getter();

  *&v5[v16] = v18;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v20 = [objc_allocWithZone(UIView) init];
  v21 = UIView.forAutolayout.getter();

  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v23 = [objc_allocWithZone(UIView) init];
  v24 = UIView.forAutolayout.getter();

  *&v5[v22] = v24;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = 0;
  v25 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *&v5[v25] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v26 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  *v27 = 0u;
  v27[1] = 0u;
  *&v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer] = 0;
  v28 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *&v5[v28] = [objc_allocWithZone(UILayoutGuide) init];
  v29 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v30 = objc_opt_self();
  *&v5[v29] = [v30 whiteColor];
  v31 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *&v5[v31] = [v30 systemFillColor];
  v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_1006EE9F0 != -1)
  {
    swift_once();
  }

  v33 = static UIColor.MusicTint.normal;
  *&v5[v32] = static UIColor.MusicTint.normal;
  v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *&v5[v34] = Int.seconds.getter(0);
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled] = 1;
  v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking] = 0;
  v35 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  *v36 = 0;
  v36[1] = 0;
  v37 = &v5[OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler];
  *v37 = 0;
  v37[1] = 0;
  v38 = type metadata accessor for SliderView();
  v96.receiver = v5;
  v96.super_class = v38;
  v39 = v33;
  v40 = objc_msgSendSuper2(&v96, "initWithFrame:", a1, a2, a3, a4);
  v42 = SliderView.panRecognizer.getter(v41);
  [v42 _setRequiresSystemGesturesToFail:0];

  v43 = *&v40[OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer];
  v44 = v40;
  [v44 addGestureRecognizer:v43];
  v45 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  swift_beginAccess();
  [v44 addLayoutGuide:*&v44[v45]];
  [v44 setExclusiveTouch:1];
  v46 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v47 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  [*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack]];
  [*&v44[v46] addArrangedSubview:*&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack]];
  [*&v44[v46] setAxis:0];
  v48 = qword_1006EEC98;
  v49 = *&v44[v46];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = *&static SliderView.Specs.barHeight;
  *v13 = *&static SliderView.Specs.barHeight * 0.5;
  *(v13 + 8) = 1;
  (*(v11 + 104))(v13, enum case for UIView.Corner.Radius.value(_:), v10);
  sub_100573368();
  sub_100573958();
  v51 = sub_100573998();
  (*(*(v51 - 8) + 56))(v15, 0, 1, v51);
  sub_1005739A8();

  v52 = [*&v44[v46] layer];
  [v52 setMasksToBounds:1];

  [v44 addSubview:*&v44[v46]];
  v53 = [*&v44[v47] widthAnchor];
  v54 = [v53 constraintEqualToConstant:0.0];

  v55 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint;
  v56 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint] = v54;

  v57 = [*&v44[v46] heightAnchor];
  v58 = [v57 constraintEqualToConstant:v50];

  v59 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint;
  v60 = *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  *&v44[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint] = v58;

  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  result = swift_allocObject();
  *(result + 1) = xmmword_100596F90;
  v62 = *&v44[v55];
  if (v62)
  {
    v63 = result;
    *(result + 4) = v62;
    v64 = *&v44[v59];
    if (v64)
    {
      v95 = objc_opt_self();
      v63[5] = v64;
      v65 = *&v44[v46];
      v66 = v62;
      v67 = v64;
      v68 = [v65 leadingAnchor];
      v69 = [v44 leadingAnchor];

      v70 = [v68 constraintEqualToAnchor:v69];
      v63[6] = v70;
      v71 = [*&v44[v46] trailingAnchor];
      v72 = [v44 trailingAnchor];

      v73 = [v71 constraintEqualToAnchor:v72];
      v63[7] = v73;
      v74 = [*&v44[v46] topAnchor];
      v75 = [v44 topAnchor];

      v76 = [v74 constraintEqualToAnchor:v75];
      v63[8] = v76;
      v77 = [*&v44[v46] bottomAnchor];
      v78 = [v44 bottomAnchor];

      v79 = [v77 constraintEqualToAnchor:v78];
      v63[9] = v79;
      v80 = [*&v44[v46] centerYAnchor];
      v81 = [v44 centerYAnchor];

      v82 = [v80 constraintEqualToAnchor:v81];
      v63[10] = v82;
      v83 = [*&v44[v45] leadingAnchor];
      v84 = [v44 leadingAnchor];

      v85 = [v83 constraintEqualToAnchor:v84];
      v63[11] = v85;
      v86 = [*&v44[v45] trailingAnchor];
      v87 = [v44 trailingAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      v63[12] = v88;
      v89 = [*&v44[v45] centerYAnchor];
      v90 = [v44 centerYAnchor];

      v91 = [v89 constraintEqualToAnchor:v90];
      v63[13] = v91;
      v92 = [*&v44[v45] heightAnchor];
      v93 = [v92 constraintEqualToConstant:v50];

      v63[14] = v93;
      sub_1000D3B98(0, qword_1006F06E0, NSLayoutConstraint_ptr);
      isa = sub_100572D08().super.isa;

      [v95 activateConstraints:isa];

      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SliderView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SliderView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v1 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds];
  if (!CGRectEqualToRect(v11, *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds]))
  {
    v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v12);
      v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
      swift_beginAccess();
      [v3 setConstant:Width * *&v0[v5]];

      [v0 bounds];
      *v1 = v6;
      *(v1 + 1) = v7;
      *(v1 + 2) = v8;
      *(v1 + 3) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

void SliderView.setValue(_:animated:)(char a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v4 != *&v2[v5])
  {
    v6 = *&v2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (v6)
    {
      v7 = v6;
      [v2 bounds];
      [v7 setConstant:v4 * CGRectGetWidth(v16)];

      sub_10045CA9C();
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v4;
      if (a1)
      {
        v9 = vabdd_f64(*&v2[v5], v4) * 0.25;
        if (v9 > 0.1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0.1;
        }

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_10045D5F8;
        *(v12 + 24) = v8;
        aBlock[4] = sub_1000E23F0;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10007885C;
        aBlock[3] = &unk_1006A49F0;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 animateWithDuration:4 delay:v13 options:0 animations:v10 completion:0.0];

        _Block_release(v13);
      }

      else
      {
        *&v2[v5] = v4;
        [v2 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10045BE74(void *a1)
{
  v3 = [a1 state];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v34 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v34] != 1)
      {
        return;
      }

      v35 = swift_allocObject();
      *(v35 + 16) = v1;
      v1[v34] = 0;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = v1;
      *(v36 + 32) = sub_10045DB24;
      *(v36 + 40) = v35;
      v26 = objc_opt_self();
      v55 = sub_10045DE90;
      v56 = v36;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v27 = &unk_1006A4B98;
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      if (v1[v23] != 1)
      {
        return;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = v1;
      v1[v23] = 0;
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = v1;
      *(v25 + 32) = sub_10045DB08;
      *(v25 + 40) = v24;
      v26 = objc_opt_self();
      v55 = sub_10045DB14;
      v56 = v25;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v27 = &unk_1006A4B20;
    }

    v53 = sub_10007885C;
    v54 = v27;
    v37 = _Block_copy(&aBlock);
    v38 = v1;

    [v26 _animateUsingSpringWithDuration:2 delay:v37 options:0 mass:1.0 stiffness:0.0 damping:2.0 initialVelocity:500.0 animations:40.0 completion:0.0];
    goto LABEL_39;
  }

  if (v3 == 1)
  {
    v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint];
    if (!v28)
    {
      goto LABEL_54;
    }

    [v28 constant];
    v29 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
    *v29 = v30;
    v29[8] = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    v32 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
    swift_beginAccess();
    if (v1[v32] == 1)
    {
      v33 = v1;

      return;
    }

    v1[v32] = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = 1;
    *(v39 + 24) = v1;
    *(v39 + 32) = sub_10045DB44;
    *(v39 + 40) = v31;
    v40 = objc_opt_self();
    v55 = sub_10045DE90;
    v56 = v39;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10007885C;
    v54 = &unk_1006A4C10;
    v37 = _Block_copy(&aBlock);
    v41 = v1;

    [v40 _animateUsingSpringWithDuration:2 delay:v37 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:288.0 animations:26.5 completion:0.0];
LABEL_39:

    _Block_release(v37);
    return;
  }

  if (v3 != 2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (v1[v4] != 1 || (v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth + 8] & 1) != 0)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth];
  [a1 translationInView:v1];
  v6 = v8.n128_f64[0];
  v8.n128_f64[0] = fabs(v7);
  if (qword_1006EECB8 != -1)
  {
    v50 = v8.n128_u64[0];
    swift_once();
    v8.n128_u64[0] = v50;
  }

  if (v8.n128_f64[0] >= *&static SliderView.Specs.escapeHeight)
  {
    v42 = SliderView.panRecognizer.getter(v8);
    [v42 setState:4];

    return;
  }

  v9 = [v1 effectiveUserInterfaceLayoutDirection];
  v10 = -v6;
  if (v9 != 1)
  {
    v10 = v6;
  }

  v11 = v5 + v10;
  [v1 bounds];
  Width = CGRectGetWidth(v58);
  if (Width >= v11)
  {
    Width = v11;
  }

  if (Width < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = Width;
  }

  v14 = v1;
  [v1 bounds];
  v15 = v13 / CGRectGetWidth(v59);
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v57 = 14;
  v17 = sub_1003930B8();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17) & 1) == 0)
  {
    v22 = 0;
    v18 = v14;
    goto LABEL_43;
  }

  v18 = v1;
  v19 = &v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
  swift_beginAccess();
  if ((v19[1] & 1) == 0)
  {
    v20 = *v19;
    if (qword_1006EECC8 != -1)
    {
      swift_once();
    }

    v21 = v20 + *&qword_1006FE688;
    if (v20 - *&qword_1006FE688 <= v20 + *&qword_1006FE688)
    {
      if (v20 - *&qword_1006FE688 <= v16)
      {
        v22 = v16 <= v21;
        if (v16 <= v21)
        {
          v16 = v20;
        }

        goto LABEL_43;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

LABEL_27:
  v22 = 0;
LABEL_43:
  v43 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  if (v16 != *&v18[v43])
  {
    v44 = v16 == 1.0;
    if (v16 == 0.0)
    {
      v44 = 1;
    }

    if (v44 || v22)
    {
      [*&v18[OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator] impactOccurred];
    }
  }

  SliderView.setValue(_:animated:)(0, v16);
  v45 = v14;
  v46 = &v14[OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler];
  swift_beginAccess();
  v47 = *v46;
  if (*v46)
  {
    v48 = *(v46 + 1);
    v49 = *&v45[v43];

    v47(1, v49);
    sub_1000F3E14(v47, v48);
  }
}

void sub_10045C588(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_1000F3E14(v2, v3);
  }
}

void sub_10045C5FC(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    v7 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
    swift_beginAccess();
    v8 = *(a1 + v7);

    v5(a2 & 1, v8);
    sub_1000F3E14(v5, v6);
  }
}

void sub_10045C71C(char a1, _BYTE *a2, void (*a3)(id))
{
  v6 = sub_100573948();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint];
  if ((a1 & 1) == 0)
  {
    if (v12)
    {
      v16 = qword_1006EEC98;
      v14 = v12;
      if (v16 != -1)
      {
        swift_once();
      }

      v15 = &static SliderView.Specs.barHeight;
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
    return;
  }

  if (!v12)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = qword_1006EECA0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = &static SliderView.Specs.expandedBarHeight;
LABEL_10:
  v17 = *v15;
  [v14 setConstant:*v15];

  *v9 = v17 * 0.5;
  *(v9 + 8) = 1;
  (*(v7 + 104))(v9, enum case for UIView.Corner.Radius.value(_:), v6);
  sub_100573368();
  sub_100573958();
  v18 = sub_100573998();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_1005739A8();
  v19 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
  if (v19)
  {
    v20 = 0.0;
    if (a1)
    {
      v20 = 1.0;
    }

    v19 = [v19 setAlpha:v20];
  }

  if (a3)
  {
    a3(v19);
  }

  v21 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack];
  v22 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  if (a2[v22] == 1)
  {
    v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  }

  else
  {
    v23 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  }

  v24 = &a2[v23];
  swift_beginAccess();
  [v21 setBackgroundColor:*v24];
  v25 = *&a2[OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack];
  v26 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  swift_beginAccess();
  [v25 setBackgroundColor:*&a2[v26]];
  sub_10045CA9C();
  [a2 layoutIfNeeded];
}

void sub_10045CA9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint);
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v1;
  [v2 constant];
  v5 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint);
  if (!v5)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v4 * 0.5;
  [v5 constant];
  v9 = v8;
  [*(v0 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView) frame];
  Width = CGRectGetWidth(v24);
  v11 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v6 * 0.5 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{1.57079633, 4.71238898}];
  v12 = v11;
  v13 = Width - v7;
  if (v9 <= Width - v7)
  {
    [v11 addLineToPoint:{v9, 0.0}];
    [v12 addLineToPoint:{v9, v6}];
  }

  else if (v9 >= Width)
  {
    [v11 addLineToPoint:{Width - v7, 0.0}];
    [v12 addArcWithCenter:1 radius:Width - v7 startAngle:v6 * 0.5 endAngle:v6 * 0.5 clockwise:{4.71238898, 1.57079633}];
  }

  else
  {
    v14 = v7 - (Width - v9);
    v15 = 1.57079633 - acos(v14 / v7);
    v16 = sqrt(v7 * v7 - v14 * v14);
    v17 = v16 + v16;
    [v12 addLineToPoint:{v13, 0.0}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{4.71238898, (v15 + 4.71238898)}];
    [v12 currentPoint];
    v19 = v18;
    [v12 currentPoint];
    [v12 addLineToPoint:{v19, v17 + v20}];
    [v12 addArcWithCenter:1 radius:v13 startAngle:v7 endAngle:v7 clockwise:{(1.57079633 - v15), 1.57079633}];
  }

  [v12 closePath];
  v21 = [v3 layer];
  v22 = [v12 CGPath];
  [v21 setShadowPath:v22];
}

Swift::Void __swiftcall SliderView.addGlowIfNeeded()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow;
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow])
  {
    v2 = [objc_allocWithZone(UIView) init];
    v3 = v0;
    v4 = UIView.forAutolayout.getter();

    v5 = [v4 layer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setShadowColor:v7];
    v8 = [v4 layer];
    [v8 setShadowOpacity:0.0];

    v9 = [v4 layer];
    [v9 setShadowOffset:{0.0, 0.0}];

    v10 = [v4 layer];
    [v10 setShadowRadius:4.0];

    v11 = *&v3[v1];
    *&v3[v1] = v4;
    v12 = v4;

    [v3 addSubview:v12];
    sub_10045CA9C();
    sub_1000D3B98(0, &qword_1006F6130, UIView_ptr);
    if (qword_1006EECC0 != -1)
    {
      swift_once();
    }

    v13 = qword_1006FE680;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v15 = v12;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v13, 0, sub_10045D830, v14, 0, 0, 0.65, 0.0);
  }
}

Swift::Void __swiftcall SliderView.removeGlowIfNeeded()()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow];
  if (v1)
  {
    sub_1000D3B98(0, &qword_1006F6130, UIView_ptr);
    v2 = qword_1006EECC0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_1006FE680;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v3;
    v8 = v0;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_10045D890, v5, sub_10045D8B0, v6, 0.65, 0.0);
  }
}

void sub_10045D184(void *a1, float a2)
{
  v4 = [a1 layer];
  *&v3 = a2;
  [v4 setShadowOpacity:v3];
}

void sub_10045D1E8()
{
  v1 = v0;
  v2 = sub_1003930B8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = &v0[OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue];
    swift_beginAccess();
    v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark;
    v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark];
    if (v3[1])
    {
      [v5 removeFromSuperview];
      v6 = *&v1[v4];
      *&v1[v4] = 0;

      isa = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = 0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v8 = *v3;
      v9 = [objc_allocWithZone(UIView) init];
      v10 = UIView.forAutolayout.getter();

      v11 = [objc_opt_self() blackColor];
      [v10 setBackgroundColor:v11];

      v12 = [v10 layer];
      [v12 setCompositingFilter:kCAFilterDestOut];

      v13 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
      swift_beginAccess();
      v14 = 0.0;
      if (v1[v13])
      {
        v14 = 1.0;
      }

      [v10 setAlpha:v14];
      [v1 addSubview:v10];
      v15 = *&v1[v4];
      *&v1[v4] = v10;
      v16 = v10;

      v17 = [v16 leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView];
      v19 = [v18 leadingAnchor];
      [v1 bounds];
      v20 = [v17 constraintEqualToAnchor:v19 constant:v8 * CGRectGetWidth(v32)];

      v21 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint;
      v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint];
      *&v1[OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint] = v20;

      sub_100009DCC(&qword_1006F3B50, &qword_100599780);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100582490;
      v24 = [v16 widthAnchor];
      v25 = [v24 constraintEqualToConstant:2.0];

      *(v23 + 32) = v25;
      v26 = [v16 heightAnchor];
      v27 = [v18 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v23 + 40) = v28;
      v29 = *&v1[v21];
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = objc_opt_self();
      *(v23 + 48) = v29;
      sub_1000D3B98(0, qword_1006F06E0, NSLayoutConstraint_ptr);
      v31 = v29;
      isa = sub_100572D08().super.isa;

      [v30 activateConstraints:isa];
    }
  }
}

uint64_t sub_10045D5C0()
{

  return swift_deallocObject();
}

id sub_10045D5F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *&v1[v3] = v2;
  return [v1 layoutIfNeeded];
}

id sub_10045D674(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10045D7E0()
{

  return swift_deallocObject();
}

uint64_t sub_10045D818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10045D858()
{

  return swift_deallocObject();
}

void sub_10045D8B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
}

double sub_10045D8C8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_10045D920(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_10045D974(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_10045D9CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_10045DA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F6190, &unk_100599090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10045DAA0()
{
  result = qword_1006F5BC8;
  if (!qword_1006F5BC8)
  {
    sub_1000D3B98(255, &qword_1006F5BC0, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5BC8);
  }

  return result;
}

uint64_t sub_10045DB64()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_10045DBAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrack;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = UIView.forAutolayout.getter();

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMark) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_timeMarkOffsetConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackGlow) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackHeightConstraint) = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_feedbackGenerator;
  *(v1 + v11) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  v12 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_startingWidth;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_lastSeenBounds);
  *v13 = 0u;
  v13[1] = 0u;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView____lazy_storage___panRecognizer) = 0;
  v14 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackLayoutGuide;
  *(v1 + v14) = [objc_allocWithZone(UILayoutGuide) init];
  v15 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_elapsedTrackColor;
  v16 = objc_opt_self();
  *(v1 + v15) = [v16 whiteColor];
  v17 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_remainingTrackColor;
  *(v1 + v17) = [v16 systemFillColor];
  v18 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_trackingColor;
  if (qword_1006EE9F0 != -1)
  {
    swift_once();
  }

  *(v1 + v18) = static UIColor.MusicTint.normal;
  v19 = OBJC_IVAR____TtC11MusicCoreUI10SliderView_value;
  *(v1 + v19) = Int.seconds.getter(0);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_isTracking) = 0;
  v20 = v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_transitionStartValue;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_valueChangedHandler);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + OBJC_IVAR____TtC11MusicCoreUI10SliderView_cancelledHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_1005740F8();
  __break(1u);
}

uint64_t SymbolButton.CustomView.init(view:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, int64x2_t a3@<Q0>, int64x2_t a4@<Q1>)
{
  a3.i64[0] = 0;
  *a2 = result;
  a4.i64[0] = result;
  v4 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(a4, a3)).i64[0], 0);
  v5 = vandq_s8(*&UIEdgeInsetsZero.bottom, v4);
  v6 = 0x3FF0000000000000;
  *(a2 + 8) = vandq_s8(*&UIEdgeInsetsZero.top, v4);
  if (!result)
  {
    v6 = 0;
  }

  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  return result;
}

BOOL sub_10045DEE8(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100574678();
  v4 = qword_1005A30F8[a1];
  sub_100574688(v4);
  v5 = sub_1005746C8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_1005A30F8[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_10045DFC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100571FD8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100473924(&qword_1006F2E00, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator), v7 = sub_100572738(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100473924(&qword_1006F2E08, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v15 = sub_1005727E8();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10045E1E0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_100574678();
    sub_100574688(a1 & 1);
    v5 = sub_1005746C8();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t SymbolButton.updateConfigurationIfNeeded(_:animation:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, int a5)
{
  v6 = v5;
  v81 = a5;
  v82 = a4;
  v80 = a2;
  v79 = sub_10056E1F8();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F5250, &unk_1005A1100);
  __chkstk_darwin();
  v11 = &v74 - v10;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CC8C(a1, v11, &qword_1006F5250, &unk_1005A1100);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100473854(&v6[v17], v15, type metadata accessor for SymbolButton.Configuration);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10001036C(v11, &qword_1006F5250, &unk_1005A1100);
    }
  }

  else
  {
    sub_1004738BC(v11, v15, type metadata accessor for SymbolButton.Configuration);
  }

  v18 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  if (v6[v18])
  {
    sub_100374684(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
    *(v15 + 200) = xmmword_100582400;
    *(v15 + 27) = 0;
    *(v15 + 28) = 0;
  }

  v19 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  v20 = &selRef_avatarImageForContacts_scope_;
  if ((v6[v19] & 1) != 0 || *&v15[*(v12 + 68)] != 0.0)
  {
    [v6 state];
    v21 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
    swift_beginAccess();
    v22 = v6[v21];
    v83 = v12;
    v76 = v18;
    if (v22 & 1) != 0 || (v23 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted, swift_beginAccess(), (v6[v23]) || (v24 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected, swift_beginAccess(), v6[v24] == 1))
    {
      if ((v6[v18] & 1) == 0)
      {
        v74 = v21;
        v75 = a3;
        if (qword_1006EED08 != -1)
        {
          swift_once();
        }

        v26 = static SymbolButton.Background.normal;
        v25 = qword_1006FE748;
        v28 = qword_1006FE750;
        v27 = qword_1006FE758;
        v29 = *(v15 + 25);
        v30 = *(v15 + 26);
        v32 = *(v15 + 27);
        v31 = *(v15 + 28);

        v33 = v25;
        sub_100374684(v29, v30, v32, v31);
        *(v15 + 25) = v26;
        *(v15 + 26) = v25;
        *(v15 + 27) = v28;
        *(v15 + 28) = v27;
        a3 = v75;
        v12 = v83;
        v20 = &selRef_avatarImageForContacts_scope_;
        v21 = v74;
      }

      v34 = [v6 v20[82]];
      v35 = [v34 userInterfaceIdiom];

      if (v35 == 6)
      {
        v36 = objc_opt_self();
        v37 = [v36 labelColor];

        *(v15 + 14) = v37;
        v12 = v83;
        v38 = [v36 labelColor];

        *(v15 + 22) = v38;
      }

      *&v15[*(v12 + 68)] = 0x3FF0000000000000;
      v18 = v76;
    }

    if (([v6 state] & 2) != 0 && v6[v21] == 1)
    {
      *&v15[*(v12 + 68)] = 0x3FD0000000000000;
    }

    if ([v6 state])
    {
      v39 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
      swift_beginAccess();
      v40 = v83;
      if (v6[v39] == 1)
      {
        if ((v6[v18] & 1) == 0)
        {
          v75 = a3;
          if (qword_1006EED10 != -1)
          {
            swift_once();
          }

          v41 = static SymbolButton.Background.highlighted;
          v42 = qword_1006FE768;
          v43 = qword_1006FE778;
          v74 = qword_1006FE770;
          v44 = *(v15 + 25);
          v45 = *(v15 + 26);
          v46 = *(v15 + 27);
          v47 = *(v15 + 28);

          v48 = v42;
          sub_100374684(v44, v45, v46, v47);
          *(v15 + 25) = v41;
          *(v15 + 26) = v42;
          *(v15 + 27) = v74;
          *(v15 + 28) = v43;
          a3 = v75;
          v40 = v83;
          v20 = &selRef_avatarImageForContacts_scope_;
        }

        v49 = *(v40 + 68);
        *&v15[v49] = 0x3FE0000000000000;
        v50 = [v6 v20[82]];
        v51 = [v50 userInterfaceIdiom];

        v52 = v51 == 6;
        v18 = v76;
        if (v52)
        {
          v53 = objc_opt_self();
          v54 = [v53 labelColor];

          *(v15 + 14) = v54;
          v55 = [v53 labelColor];

          *(v15 + 22) = v55;
          *&v15[v49] = 0x3FF0000000000000;
          if ([v6 showsMenuAsPrimaryAction])
          {
            if ([v6 isContextMenuInteractionEnabled])
            {
              v75 = v55;
              v56 = v54;
              if ((v6[v18] & 1) == 0)
              {
                sub_100374684(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
                *(v15 + 25) = 0x3FF0000000000000;
                *(v15 + 26) = 0;
                *(v15 + 27) = 0;
                *(v15 + 28) = 0;
              }

              v57 = [v53 blackColor];

              *(v15 + 14) = v57;
              v58 = [v53 blackColor];

              *(v15 + 22) = v58;
            }
          }
        }
      }
    }

    if (([v6 state] & 4) != 0)
    {
      v59 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
      swift_beginAccess();
      v60 = v6[v59];
      v61 = v83;
      if (v60 == 1)
      {
        if ((v6[v18] & 1) == 0)
        {
          sub_100374684(*(v15 + 25), *(v15 + 26), *(v15 + 27), *(v15 + 28));
          *(v15 + 25) = 0x3FF0000000000000;
          *(v15 + 26) = 0;
          *(v15 + 27) = 0;
          *(v15 + 28) = 0;
        }

        v62 = *(v61 + 68);
        *&v15[v62] = 0x3FF0000000000000;
        v63 = [v6 v20[82]];
        v64 = [v63 userInterfaceIdiom];

        if (v64 == 6)
        {
          v65 = objc_opt_self();
          v66 = [v65 blackColor];

          *(v15 + 14) = v66;
          v67 = [v65 blackColor];

          *(v15 + 22) = v67;
        }

        else if ([v6 state])
        {
          *&v15[v62] = 0x3FE0000000000000;
        }
      }
    }
  }

  v68 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v69 = *v68;
  if (*v68)
  {
    v70 = *(v68 + 1);

    v71 = [v6 v20[82]];
    v72 = v77;
    sub_10056E1D8();
    [v6 isEnabled];
    sub_10056E188();
    [v6 isSelected];
    sub_10056E1A8();
    [v6 isHighlighted];
    sub_10056E1C8();
    v69(v72, v15);
    sub_1000F3E14(v69, v70);
    (*(v78 + 8))(v72, v79);
  }

  SymbolButton.setConfiguration(_:animation:updates:)(v15, v80, a3, v82, v81 & 1, _swiftEmptyArrayStorage);
  return sub_1004716CC(v15, type metadata accessor for SymbolButton.Configuration);
}

__n128 static SymbolButton.Material.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v6 = 0uLL;
  v7 = 0;
  v8 = 2;
  v9 = 0uLL;
  a1(&v6);
  v3 = v7;
  v4 = v8;
  result = v9;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

double static SymbolButton.Symbol.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v13 = 0uLL;
  v17 = 0;
  *&v16[7] = 0;
  *&v10 = 0;
  *(&v10 + 1) = UIFontTextStyleSubheadline;
  *&v11 = 0;
  BYTE8(v11) = 1;
  v12 = xmmword_100596FA0;
  v14[0] = -1;
  *&v14[16] = 0;
  *&v14[24] = 0x3FF0000000000000;
  *&v14[1] = *v16;
  v15 = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v9);
  v5 = *v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 96) = *&v14[16];
  *(a2 + 112) = v15;
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  v8 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v8;
  return result;
}

__n128 static SymbolButton.Title.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v7 = 0uLL;
  v8.n128_u64[0] = UIFontTextStyleSubheadline;
  v8.n128_f64[1] = UIFontWeightSemibold;
  v9 = 0uLL;
  v10 = 0x3FF0000000000000uLL;
  LOBYTE(v11) = 0;
  *(&v11 + 1) = 0;
  v4 = UIFontTextStyleSubheadline;
  a1(&v7);
  v5 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v5;
  *(a2 + 64) = v11;
  result = v8;
  *a2 = v7;
  *(a2 + 16) = result;
  return result;
}

uint64_t static SymbolButton.Background.with(_:)(void (*a1)(uint64_t *))
{
  v2 = 0x3FF0000000000000;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  a1(&v2);
  return v3;
}

char *SymbolButton.__allocating_init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_10046FD74(a1, a2, a3);
  sub_1000F3E14(a2, a3);
  return v8;
}

char *SymbolButton.init(configuration:handler:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10046FD74(a1, a2, a3);
  sub_1000F3E14(a2, a3);
  return v5;
}

void sub_10045EF6C(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v2 = &v5[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler];
      swift_beginAccess();
      v3 = *v2;
      if (*v2)
      {
        v4 = *(v2 + 1);

        v3();

        sub_1000F3E14(v3, v4);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_10001036C(v8, &qword_1006F6190, &unk_100599090);
  }
}

id SymbolButton._monochromaticTreatment.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolButton(0);
  return objc_msgSendSuper2(&v2, "_monochromaticTreatment");
}

void SymbolButton._monochromaticTreatment.setter(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SymbolButton(0);
  objc_msgSendSuper2(&v5, "_setMonochromaticTreatment:", a1);
  v3 = sub_100467B00();
  [v3 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];

  v4 = sub_100467988();
  [v4 _setMonochromaticTreatment:{objc_msgSend(v1, "_monochromaticTreatment")}];
}

uint64_t SymbolButton.debugLabel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double SymbolButton.debugLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t SymbolButton.configurationProvider.setter(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006F5250, &unk_1005A1100);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = (v2 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  sub_1000E672C(a1, a2);
  sub_1000F3E14(v8, v9);
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
  sub_1000F3E14(a1, a2);
  return sub_10001036C(v6, &qword_1006F5250, &unk_1005A1100);
}

uint64_t (*SymbolButton.configurationProvider.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100009DCC(&qword_1006F5250, &unk_1005A1100) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 32) = v6;
  swift_beginAccess();
  return sub_10045F5DC;
}

void sub_10045F5DC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_10001036C(v4, &qword_1006F5250, &unk_1005A1100);
  }

  free(v4);

  free(v3);
}

uint64_t SymbolButton.configurationState.getter()
{
  v1 = [v0 traitCollection];
  sub_10056E1D8();
  [v0 isEnabled];
  sub_10056E188();
  [v0 isSelected];
  sub_10056E1A8();
  [v0 isHighlighted];
  return sub_10056E1C8();
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenHighlighted.modify(uint64_t *a1))(void ***a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100009DCC(&qword_1006F5250, &unk_1005A1100) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHighlighted;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1004741DC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenSelected.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10045F940(char a1, uint64_t *a2)
{
  v5 = a1 & 1;
  sub_100009DCC(&qword_1006F5250, &unk_1005A1100);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  v9 = *(v2 + v8);
  *(v2 + v8) = a1;
  if (v9 != v5)
  {
    v10 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v7, 0, 0, 0, 1);
    sub_10001036C(v7, &qword_1006F5250, &unk_1005A1100);
  }
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenSelected.modify(uint64_t *a1))(void ***a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100009DCC(&qword_1006F5250, &unk_1005A1100) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenSelected;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1004741DC;
}

void sub_10045FB38(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = (*a1)[3];
  v4 = *(*a1 + 48);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = v1[4];
    v7 = type metadata accessor for SymbolButton.Configuration(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v6, 0, 0, 0, 1);
    sub_10001036C(v6, &qword_1006F5250, &unk_1005A1100);
  }

  free(v1[4]);

  free(v1);
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenDisabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenDisabled.modify(uint64_t *a1))(void ***a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100009DCC(&qword_1006F5250, &unk_1005A1100) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenDisabled;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1004741DC;
}

uint64_t SymbolButton.automaticallyAdjustsAlphaWhenHidden.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.automaticallyAdjustsAlphaWhenHidden.modify(uint64_t *a1))(void ***a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100009DCC(&qword_1006F5250, &unk_1005A1100) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_automaticallyAdjustsAlphaWhenHidden;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_1004741DC;
}

uint64_t SymbolButton.prefersSolariumTreatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SymbolButton.prefersSolariumTreatment.modify(uint64_t *a1))(void ***)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_100009DCC(&qword_1006F5250, &unk_1005A1100) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_prefersSolariumTreatment;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  *(v4 + 48) = *(v1 + v7);
  return sub_10045FF78;
}

uint64_t SymbolButton.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  return sub_100473854(v1 + v3, a1, type metadata accessor for SymbolButton.Configuration);
}

void (*SymbolButton.configuration.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 32) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 32) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 40) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100473854(v1 + v8, v7, type metadata accessor for SymbolButton.Configuration);
  return sub_10046014C;
}

void sub_10046014C(uint64_t a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    sub_100473854(*(*a1 + 40), v4, type metadata accessor for SymbolButton.Configuration);
    SymbolButton.setConfiguration(_:animation:updates:)(v4, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_1004716CC(v4, type metadata accessor for SymbolButton.Configuration);
  }

  else
  {
    SymbolButton.setConfiguration(_:animation:updates:)(*(*a1 + 40), 0, 0, 0, 1, _swiftEmptyArrayStorage);
  }

  sub_1004716CC(v5, type metadata accessor for SymbolButton.Configuration);
  free(v5);
  free(v4);

  free(v3);
}

uint64_t *SymbolButton.Background.normal.unsafeMutableAddressor()
{
  if (qword_1006EED08 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.normal;
}

uint64_t *SymbolButton.Background.highlighted.unsafeMutableAddressor()
{
  if (qword_1006EED10 != -1)
  {
    swift_once();
  }

  return &static SymbolButton.Background.highlighted;
}

uint64_t SymbolButton.Update.alongside.getter()
{
  v1 = *v0;
  sub_1000E672C(*v0, v0[1]);
  return v1;
}

uint64_t SymbolButton.Update.alongside.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3E14(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolButton.Update.completion.getter()
{
  v1 = *(v0 + 32);
  sub_1000E672C(v1, *(v0 + 40));
  return v1;
}

uint64_t SymbolButton.Update.completion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3E14(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SymbolButton.Update.init(alongside:animationOptions:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolButton.setConfiguration(_:animation:updates:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v172 = a6;
  LODWORD(v171) = a5;
  v165 = a4;
  v163 = a3;
  v169 = *&a2;
  ObjectType = swift_getObjectType();
  v175 = sub_100009DCC(&qword_1006EF6A8, &qword_100598E20);
  __chkstk_darwin();
  v9 = &v159 - v8;
  v10 = sub_10056CAE8();
  v173 = *(v10 - 8);
  v174 = v10;
  __chkstk_darwin();
  v12 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v166 = *(v13 - 8);
  __chkstk_darwin();
  v176 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v170 = &v159 - v15;
  __chkstk_darwin();
  v168 = &v159 - v16;
  __chkstk_darwin();
  v18 = &v159 - v17;
  v167 = v19;
  __chkstk_darwin();
  v21 = &v159 - v20;
  v22 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100473854(v6 + v22, v21, type metadata accessor for SymbolButton.Configuration);
  v23 = a1;
  v24 = _s11MusicCoreUI12SymbolButtonC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v21);
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    goto LABEL_62;
  }

  sub_100473854(v23, v18, type metadata accessor for SymbolButton.Configuration);
  swift_beginAccess();
  v160 = v18;
  v161 = v6;
  sub_100470BE8(v18, v6 + v22);
  swift_endAccess();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v162 = sub_10056CAB8();
  v177 = v27;
  v173[1](v12, v174);
  v28 = *(v13 + 36);
  v29 = *(v175 + 12);
  v175 = v21;
  sub_10000CC8C(&v21[v28], v9, &qword_1006F5C30, &qword_100598A70);
  sub_10000CC8C(v23 + v28, &v9[v29], &qword_1006F5C30, &qword_100598A70);
  v30 = sub_100573998();
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v9, 1, v30);
  v33 = v31(&v9[v29], 1, v30);
  v34 = v23;
  if (v32 == 1)
  {
    if (v33 != 1)
    {
      sub_10001036C(&v9[v29], &qword_1006F5C30, &qword_100598A70);
LABEL_6:
      sub_10001036C(v9, &qword_1006F5C30, &qword_100598A70);
      v35 = v161;
      *(v161 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_isClippingInvalidated) = 1;
      v36 = v177;
      goto LABEL_8;
    }
  }

  else if (v33 == 1)
  {
    goto LABEL_6;
  }

  sub_10001036C(v9, &qword_1006EF6A8, &qword_100598E20);
  v36 = v177;
  v35 = v161;
LABEL_8:
  v173 = v13;
  [v35 invalidateIntrinsicContentSize];
  [v35 accessibilityUpdateSymbolButton];
  v37 = *(v34 + 8);
  v178 = v34;
  if (v37)
  {
    v38 = *(v34 + 16);
    v39 = sub_100572898();
    v40 = objc_opt_self();
    v41 = [v40 _systemImageNamed:v39];

    if (!v41)
    {
      v42 = sub_100572898();
      v41 = [v40 imageNamed:v42 inBundle:v38];
    }
  }

  else
  {
    v41 = 0;
  }

  [v35 setLargeContentImage:v41];

  v43 = [v35 window];
  if (!v43 || (v43, (v171 & 1) != 0) || (v44 = v169, v169 <= 0.0))
  {
    v57 = v178;
    if (qword_1006EE9E8 != -1)
    {
      swift_once();
    }

    v58 = sub_10056DF88();
    v59 = sub_10000C49C(v58, qword_1006FE138);
    v60 = v176;
    sub_100473854(v57, v176, type metadata accessor for SymbolButton.Configuration);
    v61 = v35;

    v62 = sub_10056DF68();
    v63 = sub_100573418();

    v64 = os_log_type_enabled(v62, v63);
    v174 = v59;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&aBlock = v171;
      *v65 = 136446722;
      v66 = &v61[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      v67 = v66[1];
      if (v67)
      {
        v68 = *v66;
        v69 = v67;
      }

      else
      {
        v70 = v61;
        v71 = [v70 description];
        v68 = sub_1005728D8();
        v69 = v72;

        v60 = v176;
      }

      v73 = sub_10037A2AC(v68, v69, &aBlock);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2082;
      *(v65 + 14) = sub_10037A2AC(v162, v36, &aBlock);
      *(v65 + 22) = 2082;
      v74 = SymbolButton.Configuration.description.getter();
      v76 = v75;
      sub_1004716CC(v60, type metadata accessor for SymbolButton.Configuration);
      v77 = sub_10037A2AC(v74, v76, &aBlock);

      *(v65 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v62, v63, "[%{public}s] UpdateID=%{public}s — Applying new configuration=%{public}s", v65, 0x20u);
      swift_arrayDestroy();

      v57 = v178;
    }

    else
    {

      sub_1004716CC(v60, type metadata accessor for SymbolButton.Configuration);
    }

    sub_100468EDC(v57);
    v78 = *(v172 + 16);
    v21 = v175;
    if (v78)
    {
      v79 = (v172 + 72);
      while (1)
      {
        v80 = *(v79 - 5);
        v81 = *(v79 - 4);
        v82 = *(v79 - 1);
        v83 = *v79;
        v84 = *v79;
        if (v80)
        {
          break;
        }

        sub_1000E672C(v82, v84);
        if (v82)
        {
          goto LABEL_35;
        }

LABEL_30:
        v79 += 6;
        sub_1000F3E14(v80, v81);
        if (!--v78)
        {
          goto LABEL_36;
        }
      }

      sub_1000E672C(v82, v84);
      sub_1000E672C(v80, v81);
      v80(v61);
      if (!v82)
      {
        goto LABEL_30;
      }

LABEL_35:
      v82(v61);
      sub_1000F3E14(v82, v83);
      goto LABEL_30;
    }

LABEL_36:
    v85 = *(v21 + 5);
    v192[4] = *(v21 + 4);
    v192[5] = v85;
    v192[6] = *(v21 + 6);
    v193 = *(v21 + 14);
    v86 = *(v21 + 1);
    v192[0] = *v21;
    v192[1] = v86;
    v87 = *(v21 + 3);
    v192[2] = *(v21 + 2);
    v192[3] = v87;
    v88 = v178;
    v89 = *v178;
    v90 = *(v178 + 16);
    v91 = *(v178 + 48);
    v196 = *(v178 + 32);
    v197 = v91;
    aBlock = v89;
    v195 = v90;
    v92 = *(v178 + 64);
    v93 = *(v178 + 80);
    v94 = *(v178 + 96);
    v201 = *(v178 + 112);
    v199 = v93;
    v200 = v94;
    v198 = v92;
    if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v192, &aBlock))
    {
      goto LABEL_48;
    }

    v95 = *(v21 + 15);
    v96 = *(v21 + 16);
    v97 = *(v21 + 152);
    v181 = *(v21 + 136);
    v182 = v97;
    v183 = *(v21 + 168);
    v98 = v21[184];
    v180[0] = v95;
    v180[1] = v96;
    v184 = v98;
    *v185 = *(v21 + 185);
    v99 = *(v21 + 24);
    v100 = *(v88 + 120);
    v101 = *(v88 + 128);
    v102 = *(v88 + 152);
    v187 = *(v88 + 136);
    v188 = v102;
    v189 = *(v88 + 168);
    v103 = *(v88 + 184);
    *&v185[7] = v99;
    v186[0] = v100;
    v186[1] = v101;
    v190 = v103;
    *v191 = *(v88 + 185);
    *&v191[7] = *(v88 + 192);
    if (sub_1004706B0(v180, v186))
    {
      goto LABEL_48;
    }

    if (v101)
    {
      if ((((*&v96 != 0) & (v98 ^ 1) ^ v103) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (((*&v96 != 0) & (v98 ^ 1)) != 0)
    {
      goto LABEL_48;
    }

    v104 = *(v173 + 10);
    v105 = *&v21[v104];
    v106 = *(v88 + v104);
    if (v105)
    {
      if (v105 != v106)
      {
        goto LABEL_48;
      }

LABEL_47:
      if ((*&v21[*(v173 + 11) + 16] == 1) == (*(v88 + *(v173 + 11) + 16) == 1))
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (!v106)
    {
      goto LABEL_47;
    }

LABEL_48:
    [v61 setNeedsLayout];
LABEL_49:
    v107 = v61;

    v108 = sub_10056DF68();
    v109 = sub_100573418();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v179[0] = swift_slowAlloc();
      *v110 = 136446466;
      v111 = &v107[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
      swift_beginAccess();
      if (v111[1])
      {
        v112 = *v111;
        v113 = v111[1];
      }

      else
      {
        v114 = [v107 description];
        v112 = sub_1005728D8();
        v113 = v115;
      }

      v116 = sub_10037A2AC(v112, v113, v179);

      *(v110 + 4) = v116;
      *(v110 + 12) = 2082;
      v117 = sub_10037A2AC(v162, v177, v179);

      *(v110 + 14) = v117;
      _os_log_impl(&_mh_execute_header, v108, v109, "[%{public}s] UpdateID=%{public}s — Updated ✅", v110, 0x16u);
      swift_arrayDestroy();

      v25 = 0;
      v26 = 0;
      v21 = v175;
    }

    else
    {

      v25 = 0;
      v26 = 0;
    }

    goto LABEL_62;
  }

  v45 = v178;
  if (qword_1006EE9E8 != -1)
  {
    swift_once();
  }

  v46 = sub_10056DF88();
  sub_10000C49C(v46, qword_1006FE138);
  v47 = v168;
  sub_100473854(v45, v168, type metadata accessor for SymbolButton.Configuration);
  v48 = v35;

  v49 = sub_10056DF68();
  LODWORD(v50) = sub_100573418();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    *&aBlock = v176;
    *v51 = 136446722;
    v52 = &v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_debugLabel];
    swift_beginAccess();
    v53 = v52[1];
    v54 = v170;
    if (v53)
    {
      v55 = *v52;
      v56 = v53;
    }

    else
    {
      v118 = v48;
      v119 = [v118 description];
      LODWORD(v174) = v50;
      v50 = v119;
      v55 = sub_1005728D8();
      v56 = v120;

      v47 = v168;
      LOBYTE(v50) = v174;
    }

    v121 = sub_10037A2AC(v55, v56, &aBlock);

    *(v51 + 4) = v121;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_10037A2AC(v162, v36, &aBlock);
    *(v51 + 22) = 2082;
    v122 = SymbolButton.Configuration.description.getter();
    v123 = v47;
    v125 = v124;
    sub_1004716CC(v123, type metadata accessor for SymbolButton.Configuration);
    v126 = sub_10037A2AC(v122, v125, &aBlock);

    *(v51 + 24) = v126;
    _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}s] UpdateID=%{public}s — Animating to new configuration=%{public}s", v51, 0x20u);
    swift_arrayDestroy();

    v45 = v178;
  }

  else
  {

    sub_1004716CC(v47, type metadata accessor for SymbolButton.Configuration);
    v54 = v170;
  }

  v127 = *&v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount];
  v128 = v127 + 1;
  v129 = v160;
  if (__OFADD__(v127, 1))
  {
    __break(1u);
  }

  else
  {
    *&v48[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_pendingAnimatedChangesCount] = v128;
    if (v128 != v127)
    {
      sub_100469954();
    }

    v130 = swift_allocObject();
    v171 = v130;
    *(v130 + 16) = _swiftEmptyArrayStorage;
    v174 = v130 + 16;
    v176 = objc_opt_self();
    v173 = v48;
    v21 = v175;
    sub_100473854(v175, v129, type metadata accessor for SymbolButton.Configuration);
    sub_100473854(v45, v54, type metadata accessor for SymbolButton.Configuration);
    v131 = *(v166 + 80);
    v132 = (v131 + 16) & ~v131;
    v166 = v167 + v131;
    v133 = (v167 + v131 + v132) & ~v131;
    v167 += 7;
    v168 = v131;
    v134 = (v167 + v133) & 0xFFFFFFFFFFFFFFF8;
    v135 = swift_allocObject();
    sub_1004738BC(v129, v135 + v132, type metadata accessor for SymbolButton.Configuration);
    sub_1004738BC(v54, v135 + v133, type metadata accessor for SymbolButton.Configuration);
    v137 = v173;
    v136 = v174;
    *(v135 + v134) = v173;
    *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v136;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_100471004;
    *(v138 + 24) = v135;
    v174 = v135;
    *&v196 = sub_1000E23F0;
    *(&v196 + 1) = v138;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v169 = COERCE_DOUBLE(&v195);
    *&v195 = sub_1001D41F8;
    *(&v195 + 1) = &unk_1006A4CB0;
    v139 = _Block_copy(&aBlock);
    v173 = v137;

    [v176 performWithoutAnimation:v139];
    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if ((v139 & 1) == 0)
    {
      v140 = *&v163;
      v141 = v168;
      v142 = ~v168;
      v143 = v160;
      sub_100473854(v178, v160, type metadata accessor for SymbolButton.Configuration);
      sub_100473854(v21, v170, type metadata accessor for SymbolButton.Configuration);
      v144 = (v141 + 24) & v142;
      v145 = (v166 + v144) & v142;
      v146 = (v167 + v145) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      v148 = v173;
      *(v147 + 16) = v173;
      sub_1004738BC(v143, v147 + v144, type metadata accessor for SymbolButton.Configuration);
      sub_1004738BC(v170, v147 + v145, type metadata accessor for SymbolButton.Configuration);
      v149 = v171;
      v150 = v172;
      *(v147 + v146) = v171;
      *(v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      *&v196 = sub_100471468;
      *(&v196 + 1) = v147;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_10007885C;
      *(&v195 + 1) = &unk_1006A4D00;
      v151 = _Block_copy(&aBlock);
      v152 = v148;

      v153 = swift_allocObject();
      v153[2] = v149;
      v153[3] = v152;
      v154 = v162;
      v153[4] = v150;
      v153[5] = v154;
      v155 = ObjectType;
      v153[6] = v177;
      v153[7] = v155;
      *&v196 = sub_100471564;
      *(&v196 + 1) = v153;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v195 = sub_10044E8C8;
      *(&v195 + 1) = &unk_1006A4D50;
      v156 = _Block_copy(&aBlock);
      v157 = v152;

      [v176 animateKeyframesWithDuration:v165 delay:v151 options:v156 animations:v44 completion:v140];
      _Block_release(v156);
      _Block_release(v151);

      v25 = sub_100471004;
      v26 = v174;
LABEL_62:
      v158 = v26;
      sub_1004716CC(v21, type metadata accessor for SymbolButton.Configuration);
      sub_1000F3E14(v25, v158);
      return;
    }
  }

  __break(1u);
}

void sub_1004616BC(uint64_t *a1, __int128 *a2, char *a3, char **a4)
{
  v4 = a3;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 6);
  v174 = *(a1 + 5);
  v175 = v9;
  v176 = a1[14];
  v10 = *(a1 + 2);
  v170 = *(a1 + 1);
  v171 = v10;
  v11 = *(a1 + 4);
  v172 = *(a1 + 3);
  v173 = v11;
  v169[0] = v7;
  v169[1] = v8;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v177[2] = a2[2];
  v177[3] = v14;
  v177[0] = v12;
  v177[1] = v13;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v178 = *(a2 + 14);
  v177[5] = v16;
  v177[6] = v17;
  v177[4] = v15;
  if (_s11MusicCoreUI12SymbolButtonC0D0V21hasSignificantChanges4from2toSbAESg_AItFZ_0(v169, v177))
  {
    v18 = sub_100467988();
    v19 = a2[5];
    v166[4] = a2[4];
    v166[5] = v19;
    v167 = a2[6];
    v168 = *(a2 + 14);
    v20 = a2[1];
    v166[0] = *a2;
    v166[1] = v20;
    v21 = a2[3];
    v166[2] = a2[2];
    v166[3] = v21;
    v22 = type metadata accessor for SymbolButton.ImageView();
    v156.receiver = objc_allocWithZone(v22);
    v156.super_class = v22;
    v23 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
    [v23 setContentMode:4];
    sub_10046B480(v166);
    v24 = [v18 preferredSymbolConfiguration];
    [v23 setPreferredSymbolConfiguration:v24];

    [v18 frame];
    [v23 setFrame:?];

    v25 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView;
    v26 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView];
    *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___imageView] = v23;
    v27 = v23;

    [v27 setAlpha:0.0];
    v28 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v29 = *&a3[v25];
    if (([v29 isDescendantOfView:v28] & 1) == 0)
    {
      [v28 addSubview:v29];
    }

    if (!v8 && *(&v166[0] + 1))
    {
      [a3 setNeedsLayout];
      [a3 layoutIfNeeded];
    }

    v30 = *(&v167 + 1);
    v31 = *&a3[v25];
    v32 = *a4;
    v33 = v31;
    v34 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_100474DE0(0, *(v32 + 2) + 1, 1, v32);
      *a4 = v32;
    }

    v37 = *(v32 + 2);
    v36 = *(v32 + 3);
    v4 = a3;
    if (v37 >= v36 >> 1)
    {
      *a4 = sub_100474DE0((v36 > 1), v37 + 1, 1, v32);
    }

    v38 = *a4;
    *(v38 + 2) = v37 + 1;
    v39 = &v38[88 * v37];
    *(v39 + 4) = v31;
    *(v39 + 5) = v30;
    *(v39 + 6) = 0;
    *(v39 + 7) = 0;
    *(v39 + 8) = 0;
    *(v39 + 9) = v34;
    *(v39 + 5) = xmmword_100582400;
    *(v39 + 12) = 0;
    *(v39 + 13) = 0;
    v39[112] = 0;
  }

  v40 = *(a1 + 17);
  v41 = *(a1 + 21);
  v164[2] = *(a1 + 19);
  v164[3] = v41;
  v42 = *(a1 + 23);
  v164[0] = *(a1 + 15);
  v164[1] = v40;
  v43 = *(a2 + 136);
  v44 = *(a2 + 168);
  v165[2] = *(a2 + 152);
  v165[3] = v44;
  v165[4] = *(a2 + 184);
  v45 = *(a2 + 120);
  v165[1] = v43;
  v164[4] = v42;
  v165[0] = v45;
  if (sub_1004706B0(v164, v165))
  {
    v46 = sub_100467B00();
    v47 = *(a2 + 136);
    v48 = *(a2 + 168);
    v161[2] = *(a2 + 152);
    v162 = v48;
    v163 = *(a2 + 184);
    v161[0] = *(a2 + 120);
    v161[1] = v47;
    v49 = objc_allocWithZone(type metadata accessor for SymbolButton.Label());
    sub_1004715E4(v161, v160);
    v50 = sub_10046B6C4(v161);
    v51 = [v46 font];
    [v50 setFont:v51];

    v52 = v50;
    v53 = v46;
    [v53 frame];
    [v52 setFrame:?];

    v54 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel;
    v55 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton____lazy_storage___titleLabel] = v52;
    v56 = v52;

    [v56 setAlpha:0.0];
    v57 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    v58 = *&v4[v54];
    if (([v58 isDescendantOfView:v57] & 1) == 0)
    {
      [v57 addSubview:v58];
    }

    v59 = v162;
    v60 = *&v4[v54];
    v61 = *(a1 + 17);
    v62 = *(a1 + 21);
    v159[2] = *(a1 + 19);
    v159[3] = v62;
    v63 = *(a1 + 23);
    v159[0] = *(a1 + 15);
    v159[1] = v61;
    v64 = *(a2 + 136);
    v65 = *(a2 + 168);
    v160[2] = *(a2 + 152);
    v160[3] = v65;
    v160[4] = *(a2 + 184);
    v66 = *(a2 + 120);
    v160[1] = v64;
    v159[4] = v63;
    v160[0] = v66;
    v67 = v60;
    v68 = sub_100471778(v159, v160);
    v69 = *a4;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v69;
    if ((v70 & 1) == 0)
    {
      v69 = sub_100474DE0(0, *(v69 + 2) + 1, 1, v69);
      *a4 = v69;
    }

    v72 = *(v69 + 2);
    v71 = *(v69 + 3);
    v4 = a3;
    if (v72 >= v71 >> 1)
    {
      *a4 = sub_100474DE0((v71 > 1), v72 + 1, 1, v69);
    }

    v73 = *a4;
    *(v73 + 2) = v72 + 1;
    v74 = &v73[88 * v72];
    *(v74 + 4) = v60;
    *(v74 + 5) = v59;
    *(v74 + 6) = 0;
    *(v74 + 7) = 0;
    *(v74 + 8) = 0;
    *(v74 + 9) = v53;
    *(v74 + 5) = xmmword_100582400;
    *(v74 + 12) = 0;
    *(v74 + 13) = 0;
    v74[112] = v68;
  }

  v75 = type metadata accessor for SymbolButton.Configuration(0);
  v76 = *(v75 + 40);
  v77 = *(a1 + v76);
  v78 = a2 + v76;
  v79 = *(a2 + v76);
  if (v77)
  {
    if (v77 == v79)
    {
      goto LABEL_47;
    }

    if (!v79)
    {
      v153 = v75;
      v80 = 0;
      v151 = 1;
      goto LABEL_26;
    }
  }

  else if (!v79)
  {
    goto LABEL_47;
  }

  v153 = v75;
  v81 = v79;
  v151 = 0;
  v80 = v79;
LABEL_26:
  v82 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView;
  v83 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView];
  *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_customView] = v80;
  v84 = v80;

  v85 = a3;
  if (v80)
  {
    v86 = *&a3[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_backgroundView];
    if ([v86 isDescendantOfView:v86])
    {
      [v86 insertSubview:v84 aboveSubview:v86];
    }

    else
    {

      if (([v84 isDescendantOfView:v86] & 1) == 0)
      {
        [v86 addSubview:v84];
      }
    }

    v85 = a3;
    sub_100467DEC();
  }

  v87 = *&v85[v82];
  if (v87)
  {
    [v87 setAlpha:0.0];
  }

  sub_100467DEC();
  [*&v85[v82] layoutIfNeeded];
  if ((v151 & 1) == 0)
  {
    v89 = v79;
    if (v79)
    {
      v88 = *(v78 + 5);
      if (v77)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v88 = 0;
      if (v77)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    v91 = 0;
    goto LABEL_42;
  }

  v79 = 0;
  v88 = 0;
  if (!v77)
  {
    goto LABEL_41;
  }

LABEL_39:
  v90 = v77;
  v91 = 1;
LABEL_42:
  v92 = *a4;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v92;
  if ((v93 & 1) == 0)
  {
    v92 = sub_100474DE0(0, *(v92 + 2) + 1, 1, v92);
    *a4 = v92;
  }

  v95 = *(v92 + 2);
  v94 = *(v92 + 3);
  if (v95 >= v94 >> 1)
  {
    v92 = sub_100474DE0((v94 > 1), v95 + 1, 1, v92);
    *a4 = v92;
  }

  *(v92 + 2) = v95 + 1;
  v96 = &v92[88 * v95];
  *(v96 + 4) = v79;
  *(v96 + 5) = v88;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = 0;
  *(v96 + 9) = v77;
  *(v96 + 10) = 0;
  *(v96 + 11) = v91;
  *(v96 + 12) = 0;
  *(v96 + 13) = 0;
  v96[112] = 0;
  v4 = a3;
  v75 = v153;
LABEL_47:
  v97 = *(v75 + 44);
  v98 = *(a1 + v97 + 16);
  v99 = (a2 + v97);
  v100 = v99[2];
  if (v98 == 1)
  {
    if (v100 == 1)
    {
      return;
    }

    v105 = *v99;
    v104 = v99[1];
    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v106 = type metadata accessor for SymbolButton.BadgeView();
    v107 = objc_allocWithZone(v106);
    v152 = OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView;
    v108 = objc_allocWithZone(UIView);
    if (v102)
    {
      v109 = v102;
      sub_10047169C(v105, v104, v100);
      v110 = v105;
      v111 = [v108 init];
      v112 = objc_opt_self();
      v113 = [v112 blackColor];
      [v111 setBackgroundColor:v113];

      v114 = [v111 layer];
      [v114 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v111;
      v115 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v115 = v110;
      v115[1] = v104;
      v115[2] = v100;
      v158.receiver = v107;
      v158.super_class = v106;
      v116 = v100;
      v117 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v118 = v116;
      if (!v100)
      {
        v118 = [v112 tintColor];
      }

      v119 = v116;
      [v117 setBackgroundColor:v118];

      [v117 setAlpha:*&v104];
      [*(v117 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v104];
      sub_10046BE00();
      v120 = v110;
    }

    else
    {
      v150 = v100;
      v121 = [v108 init];
      v122 = v105;
      v123 = v121;
      v124 = objc_opt_self();
      v125 = [v124 blackColor];
      [v123 setBackgroundColor:v125];

      v126 = [v123 layer];
      [v126 setCompositingFilter:kCAFilterDestOut];

      *&v107[v152] = v123;
      v127 = &v107[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_configuration];
      *v127 = v122;
      v127[1] = v104;
      v127[2] = v100;
      v157.receiver = v107;
      v157.super_class = v106;
      v128 = v150;
      v117 = objc_msgSendSuper2(&v157, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      v129 = v128;
      if (!v100)
      {
        v129 = [v124 tintColor];
      }

      v130 = v128;
      [v117 setBackgroundColor:v129];

      [v117 setAlpha:*&v104];
      [*(v117 + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A939BadgeView_punchOutView) setAlpha:*&v104];
      sub_10046BE00();
      sub_10037EC3C(v122, v104, v100);
      v120 = v122;
    }

    v131 = *v101;
    *v101 = v117;
    v132 = v117;
    sub_100467C08(v131);

    if (*v101)
    {
      [*v101 setAlpha:0.0];
      if (*v101)
      {
        v133 = *v101;
        v134 = [a3 traitCollection];
        v135 = [v134 userInterfaceIdiom];

        if (v135 == 6)
        {
          v136 = 12.0;
        }

        else
        {
          v136 = 8.0;
        }

        [a3 bounds];
        MaxX = CGRectGetMaxX(v179);
        v180.origin.x = 0.0;
        v180.origin.y = 0.0;
        v180.size.width = v136;
        v180.size.height = v136;
        v138 = MaxX - CGRectGetWidth(v180) + 1.0;
        [a3 bounds];
        [v133 setFrame:{v138, CGRectGetMinY(v181) + -1.0, v136, v136}];
      }
    }

    sub_10037EC3C(v120, v104, v100);
    v98 = 1;
  }

  else
  {
    if (v100 != 1)
    {
      return;
    }

    v101 = &v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    v102 = *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView];
    *&v4[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_badgeView] = 0;
    v103 = v102;
    sub_100467C08(v102);

    v104 = 0;
  }

  v139 = *v101;
  if (*v101)
  {
    v140 = v104;
  }

  else
  {
    v140 = 0;
  }

  if (*v101)
  {
    v141 = v98 != 1;
  }

  else
  {
    v141 = 0;
  }

  v142 = *a4;
  v143 = v139;
  v144 = v102;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v142;
  if ((v145 & 1) == 0)
  {
    v142 = sub_100474DE0(0, *(v142 + 2) + 1, 1, v142);
    *a4 = v142;
  }

  v147 = *(v142 + 2);
  v146 = *(v142 + 3);
  if (v147 >= v146 >> 1)
  {
    *a4 = sub_100474DE0((v146 > 1), v147 + 1, 1, v142);
  }

  v148 = *a4;
  *(v148 + 2) = v147 + 1;
  v149 = &v148[88 * v147];
  *(v149 + 4) = v139;
  *(v149 + 5) = v140;
  *(v149 + 6) = v141;
  *(v149 + 7) = 0;
  *(v149 + 8) = 0;
  *(v149 + 9) = v102;
  *(v149 + 10) = 0;
  *(v149 + 11) = v102 != 0;
  *(v149 + 12) = 0;
  *(v149 + 13) = 0;
  v149[112] = 0;
}