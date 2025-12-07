CGPath *sub_1000D106C()
{
  Mutable = CGPathCreateMutable();
  CGMutablePathRef.move(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGPathCloseSubpath(Mutable);
  CGMutablePathRef.move(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

CGPath *sub_1000D119C()
{
  Mutable = CGPathCreateMutable();
  CGMutablePathRef.move(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGPathCloseSubpath(Mutable);
  CGMutablePathRef.move(to:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGMutablePathRef.addLine(to:transform:)();
  CGMutablePathRef.addCurve(to:control1:control2:transform:)();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

uint64_t sub_1000D13DC()
{
  if (*(v0 + 144) == 1)
  {
    v5 = &_s19EyeShapeRoundedRectVN;
    v6 = &off_1001C4A18;
    swift_beginAccess();
    sub_100044554((v0 + 24));
    sub_100049F74(&v4, v0 + 24);
    swift_endAccess();
    v1 = &_s16PupilRoundedRectVN;
    v2 = &off_1001C4C00;
  }

  else
  {
    v5 = &_s14EyeShapeSquareVN;
    v6 = &off_1001C4A28;
    swift_beginAccess();
    sub_100044554((v0 + 24));
    sub_100049F74(&v4, v0 + 24);
    swift_endAccess();
    v1 = &_s11PupilSquareVN;
    v2 = &off_1001C4C10;
  }

  v5 = v1;
  v6 = v2;
  swift_beginAccess();
  sub_100044554((v0 + 64));
  sub_100049F74(&v4, v0 + 64);
  return swift_endAccess();
}

uint64_t sub_1000D14E4()
{
  *(v0 + 16) = 0x3FB999999999999ALL;
  *(v0 + 48) = &_s14EyeShapeSquareVN;
  *(v0 + 56) = &off_1001C4A28;
  *(v0 + 88) = &_s11PupilSquareVN;
  *(v0 + 96) = &off_1001C4C10;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 CGColor];

  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = v3;
  v4 = [v1 clearColor];
  v5 = [v4 CGColor];

  *(v0 + 128) = v5;
  *(v0 + 136) = [v1 whiteColor];
  *(v0 + 144) = 0;
  return v0;
}

uint64_t sub_1000D15F0()
{
  sub_100044554((v0 + 24));
  sub_100044554((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1000D1680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000D16BC(uint64_t a1, int a2)
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

uint64_t sub_1000D1704(uint64_t result, int a2, int a3)
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

unint64_t sub_1000D1760()
{
  result = qword_100200308;
  if (!qword_100200308)
  {
    type metadata accessor for AppleQRCodeConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200308);
  }

  return result;
}

uint64_t _s11Diagnostics12QRCodeUIViewV15qrConfiguration33_C7C14CBB962F1E7E5AB03E239F04C1D1LLAA05ApplebE0CvpfP_0(uint64_t a1)
{
  v2 = type metadata accessor for AppleQRCodeConfiguration();
  v3 = sub_1000D1760();

  return ObservedObject.init(wrappedValue:)(a1, v2, v3);
}

id QRCodeUIView.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for QRCodeView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = a3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setOpaque:{0, v8.receiver, v8.super_class}];
  [v6 setNeedsDisplay];

  return v6;
}

id QRCodeUIView.updateUIView(_:context:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&a1[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = a4;
  swift_retain_n();

  [a1 setNeedsDisplay];

  return [a1 setNeedsDisplay];
}

id sub_1000D1930()
{
  v1 = *(v0 + 8);
  v2 = type metadata accessor for QRCodeView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = v1;
  v6.receiver = v3;
  v6.super_class = v2;

  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setOpaque:{0, v6.receiver, v6.super_class}];
  [v4 setNeedsDisplay];

  return v4;
}

id sub_1000D19D8(char *a1)
{
  *&a1[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = *(v1 + 8);
  swift_retain_n();

  [a1 setNeedsDisplay];

  return [a1 setNeedsDisplay];
}

uint64_t sub_1000D1A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D1BB4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000D1AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D1BB4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000D1B24(uint64_t a1)
{
  sub_1000D1BB4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000D1B50()
{
  result = qword_100200310;
  if (!qword_100200310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200310);
  }

  return result;
}

unint64_t sub_1000D1BB4()
{
  result = qword_100200318;
  if (!qword_100200318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200318);
  }

  return result;
}

void sub_1000D1C0C(void *a1, CGFloat a2)
{
  v3 = v2;
  v41 = type metadata accessor for CGPathFillRule();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGAffineTransformMakeScale(&transform, a2, a2);
  Mutable = CGPathCreateMutable();
  v10 = *(v3 + 16);
  CGMutablePathRef.addPath(_:transform:)(v10, &transform);

  v45 = a1;
  v11 = a1[3];
  type metadata accessor for BoolMatrix();
  v42 = swift_allocObject();
  v12 = v11 * v11;
  if ((v11 * v11) >> 64 != (v11 * v11) >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12)
    {
      v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *&v13->hostAppBundleIdentifier[8] = v12;
      bzero(v13->remoteCardFilter, v11 * v11);
    }

    else
    {
      v13 = &_swiftEmptyArrayStorage;
    }

    v14 = v42;
    *(v42 + 16) = v11;
    *(v14 + 24) = v11;
    *(v14 + 32) = v13;

    v15 = v45[3];
    if (v15 < 0)
    {
      goto LABEL_48;
    }

    if (!v15)
    {
LABEL_35:

      return;
    }

    v16 = 0;
    v17 = 0;
    v40 = enum case for CGPathFillRule.winding(_:);
    v44 = (v6 + 104);
    v18 = (v6 + 8);
    v38 = v15;
    while (1)
    {
      v19 = v45[3];
      if (v19 < 0)
      {
        goto LABEL_43;
      }

      v39 = v17;
      if (v19)
      {
        break;
      }

LABEL_9:
      v17 = v39 + 1;
      v16 += v11;
      if (v39 + 1 == v38)
      {
        goto LABEL_35;
      }
    }

    v47 = 0;
    v48 = 0;
    v46 = 0x3FF0000000000000;
    v49 = 0x3FF0000000000000;
    v50 = 0;
    v51 = 0;
    if (v17 >= v11)
    {
      goto LABEL_44;
    }

    if ((v17 * v11) >> 64 == (v17 * v11) >> 63)
    {
      v20 = 0;
      v43 = *v44;
      while (1)
      {
        v21 = v11;
        v22 = v41;
        v43(v8, v40, v41);
        v23 = CGPathRef.contains(_:using:transform:)();
        (*v18)(v8, v22);
        if (v23)
        {
          v24 = 0;
          if (v21 == v20)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v25 = v45[2];
          if (v20 >= v25 || v39 >= v45[3])
          {
            goto LABEL_38;
          }

          v27 = v39 * v25;
          if ((v39 * v25) >> 64 != (v39 * v25) >> 63)
          {
            goto LABEL_39;
          }

          v28 = v27 + v20;
          if (__OFADD__(v27, v20))
          {
            goto LABEL_40;
          }

          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v29 = v45[4];
          if (v28 >= *(v29 + 16))
          {
            goto LABEL_42;
          }

          v24 = *(v29 + v28 + 32);
          if (v21 == v20)
          {
LABEL_36:
            __break(1u);
LABEL_37:
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
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            break;
          }
        }

        v11 = v21;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v16 < 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v13 = sub_10003B9AC(v13, v30, v31, v32, v33, v34, v35, v36);
          if (v16 < 0)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        if ((v16 + v20) >= *&v13->hostAppBundleIdentifier[8])
        {
          goto LABEL_37;
        }

        v13->remoteCardFilter[v16 + v20] = v24;
        *(v42 + 32) = v13;
        if (v19 == ++v20)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1000D1FDC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D2040()
{
  type metadata accessor for FargoQRCodeGenerator();
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_allocWithZone(CIContext) init];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() filterWithName:v2];

  *(v1 + 24) = v3;
  *(v0 + 16) = v1;
  type metadata accessor for BoolMatrix();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = &_swiftEmptyArrayStorage;
  *(v0 + 24) = v4;
  *(v0 + 32) = 3;
  return v0;
}

uint64_t sub_1000D2120(uint64_t a1, DARootViewController *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  type metadata accessor for FargoQRCodeGenerator();
  v8 = swift_allocObject();
  *(v8 + 16) = [objc_allocWithZone(CIContext) init];
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() filterWithName:v9];

  *(v8 + 24) = v10;
  *(v4 + 16) = v8;
  type metadata accessor for BoolMatrix();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &_swiftEmptyArrayStorage;
  *(v4 + 24) = v11;
  *(v4 + 32) = v5;

  sub_1000D6724(a1, a2);
  v13 = v12;

  a2, v14, v15, v16, v17, v18, v19, v20;
  if (v13)
  {
    *(v4 + 24) = v13;
  }

  return v4;
}

uint64_t sub_1000D225C()
{

  return swift_deallocClassInstance();
}

void sub_1000D22C0(CGContext *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v63 = a3;
  v62 = type metadata accessor for CGPathFillRule();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68.origin.x = a4;
  v68.origin.y = a5;
  v68.size.width = a6;
  v68.size.height = a7;
  Width = CGRectGetWidth(v68);
  v69.origin.x = a4;
  v69.origin.y = a5;
  v69.size.width = a6;
  v69.size.height = a7;
  Height = CGRectGetHeight(v69);
  if (Height >= Width)
  {
    v18 = Width;
  }

  else
  {
    v18 = Height;
  }

  v19 = (v18 - v18 / *(*(v7 + 3) + 24) * *(*(v7 + 3) + 24)) * 0.5;
  v20 = *(a2 + 128);
  CGContextSaveGState(a1);
  CGContextSetFillColorWithColor(a1, v20);
  v70.origin.x = v19;
  v70.origin.y = v19;
  v70.size.width = v18;
  v70.size.height = v18;
  CGContextFillRect(a1, v70);
  CGContextRestoreGState(a1);
  CGContextSaveGState(a1);
  v21 = objc_opt_self();
  v22 = [v21 bezierPathWithRoundedRect:v19 + 6.0 cornerRadius:{v19 + 6.0, v18 + -12.0, v18 + -12.0, 15.0}];
  v23 = [v22 CGPath];
  CGContextAddPath(a1, v23);

  v24 = [*(a2 + 136) CGColor];
  CGContextSetFillColorWithColor(a1, v24);

  CGContextDrawPath(a1, kCGPathFill);
  CGContextRestoreGState(a1);
  v25 = *(a2 + 112);
  if (v25)
  {
    v26 = [v25 CGColor];
    if (v26)
    {
      v27 = v26;
      CGContextSaveGState(a1);
      v71.origin.x = v19;
      v71.origin.y = v19;
      v71.size.width = v18;
      v71.size.height = v18;
      v72 = CGRectInset(v71, 6.0, 6.0);
      v28 = [v21 bezierPathWithRoundedRect:v72.origin.x cornerRadius:{v72.origin.y, v72.size.width, v72.size.height, 15.0}];
      CGContextSetLineWidth(a1, 6.0);
      v29 = [v28 CGPath];
      CGContextAddPath(a1, v29);

      CGContextSetStrokeColorWithColor(a1, v27);
      CGContextDrawPath(a1, kCGPathStroke);

      CGContextRestoreGState(a1);
    }
  }

  v59 = v7;
  v30 = sub_1000D06AC(0, a2, 0, v18 + -30.0, v18 + -30.0);
  CGContextSaveGState(a1);
  v31 = *(a2 + 104);
  CGContextSetFillColorWithColor(a1, v31);
  v60 = v30;
  CGContextAddPath(a1, v30);
  v64 = enum case for CGPathFillRule.winding(_:);
  v32 = v61;
  v34 = (v61 + 13);
  v33 = v61[13];
  v35 = v62;
  v33(v15);
  CGContextRef.fillPath(using:)();

  v36 = v32[1];
  v36(v15, v35);
  CGContextRestoreGState(a1);
  v37 = sub_1000D06AC(1, a2, 0, v18 + -30.0, v18 + -30.0);
  CGContextSaveGState(a1);
  v38 = *(a2 + 104);
  CGContextSetFillColorWithColor(a1, v38);
  v61 = v37;
  CGContextAddPath(a1, v37);
  (v33)(v15, v64, v35);
  CGContextRef.fillPath(using:)();

  v36(v15, v35);
  CGContextRestoreGState(a1);
  v39 = v63;
  v40 = sub_1000D06AC(2, a2, v63, v18 + -30.0, v18 + -30.0);
  CGContextSaveGState(a1);
  v41 = *(a2 + 104);
  CGContextSetFillColorWithColor(a1, v41);
  v59 = v40;
  CGContextAddPath(a1, v40);
  v58 = v33;
  v57 = v34;
  (v33)(v15, v64, v35);
  CGContextRef.fillPath(using:)();

  v36(v15, v35);
  CGContextRestoreGState(a1);
  if (v39)
  {

    CGContextSaveGState(a1);
    CGAffineTransformMakeScale(&t1, v18, v18);
    tx = t1.tx;
    ty = t1.ty;
    v56 = *&t1.a;
    v55 = *&t1.c;
    CGAffineTransformMakeScale(&t1, 1.0, -1.0);
    v44 = t1.tx;
    v45 = t1.ty;
    v54 = *&t1.a;
    v53 = *&t1.c;
    CGAffineTransformMakeTranslation(&t1, 0.0, 1.0);
    v46 = *&t1.a;
    v47 = *&t1.c;
    v48 = *&t1.tx;
    *&t1.a = v54;
    *&t1.c = v53;
    t1.tx = v44;
    t1.ty = v45;
    *&t2.a = v46;
    *&t2.c = v47;
    *&t2.tx = v48;
    CGAffineTransformConcat(&v65, &t1, &t2);
    t2 = v65;
    *&v65.c = v55;
    *&v65.a = v56;
    v65.tx = tx;
    v65.ty = ty;
    CGAffineTransformConcat(&t1, &t2, &v65);
    Mutable = CGPathCreateMutable();
    v50 = v39;
    v51 = *(v39 + 16);
    CGMutablePathRef.addPath(_:transform:)(v51, &t1);

    CGContextScaleCTM(a1, 1.0, -1.0);
    CGContextTranslateCTM(a1, v19, v19 - v18);
    CGContextAddPath(a1, Mutable);
    (v58)(v15, v64, v35);
    CGContextRef.clip(using:)();
    v36(v15, v35);
    v52 = *(v50 + 32);
    PathBoundingBox = CGPathGetPathBoundingBox(Mutable);
    CGRectInset(PathBoundingBox, *(v50 + 24), *(v50 + 24));
    CGContextRef.draw(_:in:byTiling:)();

    CGContextRestoreGState(a1);
  }
}

double CGPoint.rotated(around:byDegrees:)(double a1, double a2, double a3, double a4, double a5)
{
  v7 = sqrt((a4 - a1) * (a4 - a1) + (a5 - a2) * (a5 - a2));
  v8 = atan2(a5 - a2, a4 - a1);
  return v7 * __sincos_stret(a3 * 3.14159265 / 180.0 + v8).__cosval + a1;
}

id sub_1000D2AE8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AnalyticsManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

CGPathRef sub_1000D2B60()
{
  v1.origin.x = 30.0;
  v1.origin.y = 30.0;
  v1.size.width = 30.0;
  v1.size.height = 30.0;
  return CGPathCreateWithRect(v1, 0);
}

CGPathRef sub_1000D2B78()
{
  v1.origin.x = 30.0;
  v1.origin.y = 30.0;
  v1.size.width = 30.0;
  v1.size.height = 30.0;
  return CGPathCreateWithRoundedRect(v1, 4.0, 4.0, 0);
}

id QRCodeView.__allocating_init(qrConfiguration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = a1;
  v6.receiver = v3;
  v6.super_class = v1;

  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setOpaque:{0, v6.receiver, v6.super_class}];
  [v4 setNeedsDisplay];

  return v4;
}

id QRCodeView.init(qrConfiguration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for QRCodeView();

  v2 = objc_msgSendSuper2(&v4, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setOpaque:{0, v4.receiver, v4.super_class}];
  [v2 setNeedsDisplay];

  return v2;
}

Swift::Void __swiftcall QRCodeView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for QRCodeView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  [v0 setNeedsDisplay];
}

id QRCodeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id QRCodeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s11Diagnostics10QRCodeViewC4drawyySo6CGRectVF_0()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11Diagnostics10QRCodeView_qrConfiguration];
    if (v2)
    {
      v13 = v1;

      [v0 bounds];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = *(v2 + 48);
      v12 = *(v2 + 40);

      sub_1000D22C0(v13, v12, v11, v4, v6, v8, v10);
    }

    else
    {
    }
  }
}

uint64_t AppleQRCodeConfiguration.__allocating_init(utf8String:errorCorrection:style:roundedEye:)(uint64_t a1, DARootViewController *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v16 = swift_allocObject();
  AppleQRCodeConfiguration.init(utf8String:errorCorrection:style:roundedEye:)(a1, a2, a3, a4, a5, a6, a7, v8);
  return v16;
}

void AppleQRCodeConfiguration.init(utf8String:errorCorrection:style:roundedEye:)(uint64_t a1, DARootViewController *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v9 = v8;
  v10 = a7;
  *(v8 + 16) = 3;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0xE000000000000000;
  _s6DesignCMa();
  swift_allocObject();
  *(v8 + 40) = sub_1000D14E4();
  *(v8 + 48) = 0;
  type metadata accessor for AppleQRCode();
  swift_allocObject();
  *(v8 + 56) = sub_1000D2040();
  v17 = *(v8 + 32);
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;

  v17, v18, v19, v20, v21, v22, v23, v24;
  *(v9 + 16) = a3;
  swift_allocObject();

  *(v9 + 56) = sub_1000D2120(a1, a2, a3);

  v25 = *(v9 + 40);
  v26 = objc_allocWithZone(UIColor);

  v27 = [v26 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  v28 = [v27 CGColor];

  v29 = *(v25 + 104);
  *(v25 + 104) = v28;

  v30 = *(v9 + 40);

  v31 = sub_1000D6DA4(a4, a5, a6, v10);
  v33 = v32;
  v35 = v34;

  v36 = *(v30 + 112);
  *(v30 + 112) = v33;

  v37 = *(v9 + 40);

  v38 = sub_1000D6DA4(a4, a5, a6, v10);
  v40 = v39;

  v42 = *(v37 + 120);
  *(v37 + 120) = v40;

  v43 = *(v9 + 40);

  v44 = sub_1000D6DA4(a4, a5, a6, v10);
  v46 = v45;

  v48 = *(v43 + 136);
  *(v43 + 136) = v44;

  *(*(v9 + 40) + 144) = a8;

  sub_1000D13DC();

  v49 = [objc_opt_self() configurationWithPointSize:200.0];
  v50 = String._bridgeToObjectiveC()();
  v51 = [objc_opt_self() _systemImageNamed:v50 withConfiguration:v49];

  if (v51)
  {
    a2, v52, v53, v54, v55, v56, v57, v58;
    v59 = *(*(v9 + 40) + 120);
    if (v59)
    {
      v60 = *(*(v9 + 40) + 120);
    }

    else
    {
      v60 = [objc_opt_self() lightGrayColor];
      v59 = 0;
    }

    v61 = v59;
    v62.super.isa = UIImage.tinted(_:)(v60).super.isa;

    v63 = [(objc_class *)v62.super.isa CGImage];
    if (v63)
    {
      v64 = v63;
      v68.origin.x = 0.371;
      v68.origin.y = 0.35;
      v68.size.width = 0.24;
      v68.size.height = 0.28;
      v65 = CGPathCreateWithEllipseInRect(v68, 0);
      _s12LogoTemplateCMa();
      v66 = swift_allocObject();
      CGPathGetPathBoundingBox(v65);

      sub_1000D3594(a4, a5, a6, v10);
      v66[2] = v65;
      v66[3] = 0x4014000000000000;
      v66[4] = v64;
      *(v9 + 48) = v66;
    }

    else
    {

      sub_1000D3594(a4, a5, a6, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000D3594(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    a1 = a2;
  }

  else
  {
    a3 = a2;
  }
}

uint64_t AppleQRCodeConfiguration.deinit(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return v8;
}

uint64_t AppleQRCodeConfiguration.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall AppleQRCodeConfiguration.update(text:errorCorrection:)(Swift::String text, Diagnostics::ErrorCorrection errorCorrection)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v5 = *(v2 + 56);
  *(v5 + 32) = errorCorrection;

  sub_1000D6724(countAndFlagsBits, object);
  v7 = v6;

  if (v7)
  {
    *(v5 + 24) = v7;
  }
}

Swift::Void __swiftcall AppleQRCodeConfiguration.setHasChanged()()
{
  type metadata accessor for AppleQRCodeConfiguration();
  sub_1000D1760();
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_1000D3784@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppleQRCodeConfiguration();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

UIImage __swiftcall UIImage.tinted(_:)(UIColor a1)
{
  v2 = v1;
  [(objc_class *)v1 size];
  v5 = v4;
  v7 = v6;
  [(objc_class *)v1 size];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v8, v9}];
  v11 = swift_allocObject();
  v11[3].super.isa = 0;
  v11[4].super.isa = 0;
  v11[2].super.isa = v2;
  v11[5].super.isa = v5;
  v11[6].super.isa = v7;
  v11[7].super.isa = a1.super.isa;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000D3F2C;
  *(v12 + 24) = v11;
  v18[4] = sub_1000D3F40;
  v18[5] = v12;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000D3BAC;
  v18[3] = &unk_1001C4C70;
  v13 = _Block_copy(v18);
  v14 = v2;
  v15 = a1.super.isa;

  v16 = [v10 imageWithActions:v13];

  _Block_release(v13);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v16;
  }

  __break(1u);
  return result;
}

double UIImage.aspectRatio.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  return v2 / v3;
}

void UIImage.resize(to:)(double a1, double a2)
{
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000D639C;
  *(v7 + 24) = v6;
  v10[4] = sub_1000D63A0;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000D3BAC;
  v10[3] = &unk_1001C4CE8;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_1000D3BAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void UIImage.resizePreservingAspectRatio(targetSize:)(double a1, double a2)
{
  [v2 size];
  v6 = a1 / v5;
  [v2 size];
  if (a2 / v7 < v6)
  {
    v6 = a2 / v7;
  }

  [v2 size];
  v9 = v8 * v6;
  [v2 size];
  v11 = v6 * v10;
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v9, v11}];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000D3FB8;
  *(v14 + 24) = v13;
  v17[4] = sub_1000D63A0;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000D3BAC;
  v17[3] = &unk_1001C4D60;
  v15 = _Block_copy(v17);
  v16 = v2;

  [v12 imageWithActions:v15];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

void sub_1000D3DE0(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  c = [a1 CGContext];
  [a2 size];
  CGContextTranslateCTM(c, 0.0, v13);
  CGContextScaleCTM(c, 1.0, -1.0);
  v14 = [a2 CGImage];
  if (v14)
  {
    v15 = v14;
    v18.origin.x = a4;
    v18.origin.y = a5;
    v18.size.width = a6;
    v18.size.height = a7;
    CGContextClipToMask(c, v18, v14);
  }

  [a3 setFill];
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a6;
  v19.size.height = a7;
  CGContextFillRect(c, v19);
}

uint64_t sub_1000D3EEC()
{

  return _swift_deallocObject(v0, 64, 7, v1);
}

double sub_1000D3F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000D3F80()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

UIImage_optional __swiftcall UIImage.scaled(to:)(Swift::Int to)
{
  v3 = UIImagePNGRepresentation(v1);
  if (v3)
  {
    v5 = v3;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v10 = CGImageSourceCreateWithData(isa, 0);

    if (v10)
    {
      sub_10003C49C(&qword_1002006C8, &qword_100182D80);
      inited = swift_initStackObject();
      *(inited + 32) = kCGImageSourceCreateThumbnailWithTransform;
      *(inited + 16) = xmmword_10017EF10;
      *(inited + 40) = 1;
      *(inited + 64) = &type metadata for Bool;
      *(inited + 72) = kCGImageSourceCreateThumbnailFromImageIfAbsent;
      *(inited + 80) = 1;
      *(inited + 104) = &type metadata for Bool;
      *(inited + 112) = kCGImageSourceThumbnailMaxPixelSize;
      *(inited + 144) = &type metadata for Int;
      *(inited + 120) = to;
      v12 = kCGImageSourceCreateThumbnailWithTransform;
      v13 = kCGImageSourceCreateThumbnailFromImageIfAbsent;
      v14 = kCGImageSourceThumbnailMaxPixelSize;
      v15 = sub_1000D5D20(inited);
      swift_setDeallocating();
      sub_10003C49C(&qword_1002006D0, &qword_100182D88);
      swift_arrayDestroy();
      type metadata accessor for CFString(0);
      sub_1000D5FD8(&qword_1001FCA78, type metadata accessor for CFString, &unk_10017DB50);
      v16 = Dictionary._bridgeToObjectiveC()().super.isa;
      v15, v17, v18, v19, v20, v21, v22, v23;
      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v10, 0, v16);

      if (ThumbnailAtIndex)
      {
        v25 = [objc_allocWithZone(UIImage) initWithCGImage:ThumbnailAtIndex];

        sub_10005F18C(v6, v8);
        v3 = v25;
        goto LABEL_7;
      }
    }

    sub_10005F18C(v6, v8);
    v3 = 0;
  }

LABEL_7:
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

void UIImage.scale(by:)(double a1)
{
  [v1 size];
  v4 = v3 * a1;
  v6 = v5 * a1;

  UIImage.resize(to:)(v4, v6);
}

CGImage *UIImage.averageColor(inImageView:areaRect:)(void *a1, double a2, double a3, double a4, double a5)
{
  [v5 size];
  v12 = v11;
  [a1 frame];
  Width = CGRectGetWidth(v77);
  [v5 size];
  v15 = v14;
  [a1 frame];
  Height = CGRectGetHeight(v78);
  result = [v5 CGImage];
  if (result)
  {
    v18 = v12 / Width;
    if (v12 / Width <= v15 / Height)
    {
      v18 = v15 / Height;
    }

    v79.size.height = v18 * a5;
    v79.size.width = v18 * a4;
    v79.origin.y = v18 * a3;
    v79.origin.x = v18 * a2;
    v19 = result;
    v20 = CGImageCreateWithImageInRect(result, v79);

    if (v20)
    {
      v21 = [objc_allocWithZone(CIImage) initWithCGImage:v20];
      [v21 extent];
      v22 = CGRectGetWidth(v80);
      [v21 extent];
      v23 = [objc_allocWithZone(CIVector) initWithX:0.0 Y:0.0 Z:v22 W:CGRectGetHeight(v81)];
      sub_10003C49C(&qword_1001FDF48, &qword_10017FE00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC10;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v25;
      *(inited + 72) = sub_10003E110(0, &qword_1002006D8, CIImage_ptr);
      *(inited + 48) = v21;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v26;
      *(inited + 120) = sub_10003E110(0, &qword_1002006E0, CIVector_ptr);
      *(inited + 96) = v23;
      v27 = v21;
      v28 = v23;
      v29 = sub_1000D59EC(inited);
      swift_setDeallocating();
      sub_10003C49C(&qword_1001FDF58, &qword_10017FE08);
      swift_arrayDestroy();
      v30 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v29, v32, v33, v34, v35, v36, v37, v38;
      v39 = [objc_opt_self() filterWithName:v30 withInputParameters:isa];

      if (v39)
      {
        v40 = [v39 outputImage];
        if (v40)
        {
          v41 = v40;
          v76 = v28;
          v42 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v42 + 16) = 4;
          *(v42 + 32) = 0;
          v43 = (v42 + 32);
          sub_10003C49C(&qword_1002006E8, &qword_100182D90);
          result = swift_initStackObject();
          *(result + 1) = xmmword_10017EC00;
          *(result + 4) = kCIContextWorkingColorSpace;
          v44 = result + 32;
          if (!kCFNull)
          {
LABEL_21:
            __break(1u);
            return result;
          }

          v45 = result;
          type metadata accessor for CFNull(0);
          *(v45 + 8) = v46;
          *(v45 + 5) = kCFNull;
          v47 = kCIContextWorkingColorSpace;
          v48 = kCFNull;
          v49 = sub_1000D5E48(v45);
          swift_setDeallocating();
          sub_1000D5F70(v44);
          v50 = objc_allocWithZone(CIContext);
          type metadata accessor for CIContextOption(0);
          sub_1000D5FD8(&qword_1001FCB00, type metadata accessor for CIContextOption, &unk_10017DB0C);
          v51 = Dictionary._bridgeToObjectiveC()().super.isa;
          v49, v52, v53, v54, v55, v56, v57, v58;
          v59 = [v50 initWithOptions:v51];

          result = [v59 render:v41 toBitmap:v43 rowBytes:4 bounds:kCIFormatRGBA8 format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];
          v61 = *(v42 + 16);
          if (v61)
          {
            if (v61 != 1)
            {
              if (v61 >= 3)
              {
                if (v61 != 3)
                {
                  LOBYTE(v60) = *v43;
                  *&v62 = v60;
                  v63 = *&v62 / 255.0;
                  LOBYTE(v62) = *(v42 + 33);
                  *&v64 = v62;
                  v65 = *&v64 / 255.0;
                  LOBYTE(v64) = *(v42 + 34);
                  *&v66 = v64;
                  v67 = *&v66 / 255.0;
                  LOBYTE(v66) = *(v42 + 35);
                  v68 = [objc_allocWithZone(UIColor) initWithRed:v63 green:v65 blue:v67 alpha:v66 / 255.0];
                  v42, v69, v70, v71, v72, v73, v74, v75;

                  return v68;
                }

                goto LABEL_20;
              }

LABEL_19:
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_19;
        }
      }
    }

    return 0;
  }

  return result;
}

UIImage *UIImage.imageWithBorder(width:color:cornerRadius:)(void *a1, double a2, double a3)
{
  [v3 size];
  v8 = v7;
  [v3 size];
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  [v3 size];
  v12 = v11;
  [v3 size];
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, a2 + a2 + v10, a2 + a2 + v14}];
  [v15 setContentMode:4];
  [v15 setImage:v3];
  v16 = [v15 layer];
  [v16 setBorderWidth:a2];

  v17 = [v15 layer];
  [v17 setCornerRadius:a3];

  v18 = [v15 layer];
  v19 = [a1 CGColor];
  [v18 setBorderColor:v19];

  [v15 bounds];
  v21 = v20;
  v23 = v22;
  [v3 scale];
  v25 = v24;
  v31.width = v21;
  v31.height = v23;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v25);
  v26 = UIGraphicsGetCurrentContext();
  if (v26)
  {
    v27 = v26;
    v28 = [v15 layer];

    [v28 renderInContext:v27];
    v29 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return v29;
  }

  else
  {

    return v3;
  }
}

void UIImage.stroked(with:thickness:quality:)(UIColor a1, long double a2, double a3)
{
  v7 = [v3 CGImage];
  if (v7)
  {
    v8 = v7;
    v9.super.isa = UIImage.tinted(_:)(a1).super.isa;
    v10 = [(objc_class *)v9.super.isa CGImage];
    if (!v10)
    {
      v35;

      return;
    }

    v11 = v10;
    v12 = fabs(a3);
    if (a3 == 0.0)
    {
      v13 = 10.0;
    }

    else
    {
      v13 = v12;
    }

    [v35 size];
    v15 = v14;
    [v35 size];
    v39.size.height = v16;
    v39.origin.x = a2;
    v39.origin.y = a2;
    v39.size.width = v15;
    CGRectIntegral(v39);
    [v35 size];
    v18 = a2 + a2 + v17;
    [v35 size];
    v20 = a2 + a2 + v19;
    [v35 scale];
    v22 = v21;
    v38.width = v18;
    v38.height = v20;
    UIGraphicsBeginImageContextWithOptions(v38, 0, v22);
    v23 = UIGraphicsGetCurrentContext();
    if (!v23)
    {
      v35;

      return;
    }

    v24 = v23;
    CGContextTranslateCTM(v23, 0.0, v20);
    CGContextScaleCTM(v24, 1.0, -1.0);
    CGContextSetInterpolationQuality(v24, kCGInterpolationHigh);
    if (v13 == 0.0)
    {
      goto LABEL_21;
    }

    if (v13 > 0.0)
    {
      v25 = 0;
      v26 = 0.0;
      v27 = sqrt(a2 * a2);
      while (!__OFADD__(v25, 1))
      {
        v28 = (v25 + 1) * v13 + 0.0;
        v29 = atan2(0.0, a2);
        v30 = __sincos_stret(v26 * 3.14159265 / 180.0 + v29);
        v31 = v27 * v30.__cosval + 0.0;
        v32 = v27 * v30.__sinval + 0.0;
        CGAffineTransformMakeTranslation(&transform, v31, v32);
        CGContextConcatCTM(v24, &transform);
        CGContextRef.draw(_:in:byTiling:)();
        CGAffineTransformMakeTranslation(&transform, -v31, -v32);
        CGContextConcatCTM(v24, &transform);
        ++v25;
        v26 = v28;
        if (v28 >= 360.0)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

LABEL_12:
    CGContextRef.draw(_:in:byTiling:)();
    if (!UIGraphicsGetImageFromCurrentImageContext())
    {
      v33 = v35;
    }

    UIGraphicsEndImageContext();
  }

  else
  {

    v34 = v35;
  }
}

DARootViewController *sub_1000D4D64(DARootViewController *result, int64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10003C49C(&qword_100200738, &qword_100182DF0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *&v14->hostAppBundleIdentifier[8] = v12;
    *v14->responder = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v14->remoteCardFilter;
  v17 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || remoteCardFilter >= &v17[24 * v12])
    {
      memmove(remoteCardFilter, v17, 24 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(remoteCardFilter, v17, 24 * v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

DARootViewController *sub_1000D4ECC(DARootViewController *result, int64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10003C49C(&qword_100201290, &qword_10017FDD8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *&v14->hostAppBundleIdentifier[8] = v12;
    *v14->responder = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v14->remoteCardFilter;
  v18 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || remoteCardFilter >= &v18[16 * v12])
    {
      memmove(remoteCardFilter, v18, 16 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

DARootViewController *sub_1000D4FD8(DARootViewController *result, int64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10003C49C(&qword_1001FE6C8, &qword_100180670);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *&v14->hostAppBundleIdentifier[8] = v12;
    *v14->responder = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v14->remoteCardFilter;
  v18 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || remoteCardFilter >= &v18[16 * v12])
    {
      memmove(remoteCardFilter, v18, 16 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

DARootViewController *sub_1000D5134(DARootViewController *result, int64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10003C49C(&qword_1001FFB30, qword_100182348);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *&v14->hostAppBundleIdentifier[8] = v12;
    *v14->responder = 2 * v15 - 64;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v14->remoteCardFilter;
  v17 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || remoteCardFilter >= &v17[v12])
    {
      memmove(remoteCardFilter, v17, v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(remoteCardFilter, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

DARootViewController *sub_1000D5228(DARootViewController *result, int64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100105A70();
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *&v14->hostAppBundleIdentifier[8] = v12;
    *v14->responder = 2 * (v16 >> 3);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  remoteCardFilter = v14->remoteCardFilter;
  v18 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || remoteCardFilter >= &v18[8 * v12])
    {
      memmove(remoteCardFilter, v18, 8 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(remoteCardFilter, v18, 8 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

DARootViewController *sub_1000D5350(DARootViewController *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10003C49C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *&v17->hostAppBundleIdentifier[8] = v12;
  *v17->responder = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = (a4 + v26);
  if (v9)
  {
    if (v17 < a4 || v17 + v26 >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

DARootViewController *sub_1000D5550(DARootViewController *result, const char *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = (v12 >> 1);
    if ((v12 >> 1) < a2)
    {
      if ((v13 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v13 = (v12 & 0xFFFFFFFFFFFFFFFELL);
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10003C49C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    *&v16->hostAppBundleIdentifier[8] = v14;
    *v16->responder = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16->remoteCardFilter >= a4 + 32 + 40 * v14)
    {
      memmove(v16->remoteCardFilter, (a4 + 32), 40 * v14);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    sub_10003C49C(a7, a8);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v16;
}

unint64_t sub_1000D5698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_1002025A0, &qword_100182DC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100064AFC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000D57AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200700, &qword_100182DB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, v13, &qword_1001FE6C0, &unk_100180660);
      result = sub_100064B74(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100049EFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1000D58E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200730, &qword_100182DE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100064AFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000D59EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100201F00, &qword_100185000);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v13, &qword_1001FDF58, &qword_10017FE08);
      v5 = v13;
      v6 = v14;
      result = sub_100064AFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100049EFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1000D5B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_1002025D0, &qword_100182DE0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100064AFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000D5C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200728, &qword_100182DD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_100064AFC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1000D5D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200748, &qword_100182E00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v11, &qword_1002006D0, &qword_100182D88);
      v5 = v11;
      result = sub_100064E14(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100049EFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000D5E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200740, &qword_100182DF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v11, &qword_1002006F0, &qword_100182D98);
      v5 = v11;
      result = sub_100068EBC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100049EFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_1000D5F70(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1002006F0, &qword_100182D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D5FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000D6020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200710, &qword_100182DC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v11, &qword_100200718, &unk_100186380);
      v5 = v11;
      result = sub_100068EBC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100049EFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000D6148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200750, &qword_100182E08);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v11, &qword_100200758, &qword_100182E10);
      v5 = v11;
      result = sub_100068EBC();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100049EFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void *sub_1000D6270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10003C49C(&qword_100200708, &qword_100182DB8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100068EB8();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100068EB8();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1000D63A4(uint64_t a1, double a2)
{
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  type metadata accessor for BoolMatrix();
  v6 = swift_allocObject();
  if ((v5 * v5) >> 64 != (v5 * v5) >> 63)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v5 * v5 != *&v4->hostAppBundleIdentifier[8])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = v6;
  v6[2] = v5;
  v6[3] = v5;
  v6[4] = v4;

  if (v5 < 0)
  {
LABEL_31:
    __break(1u);
    return;
  }

  if (v5)
  {
    v8 = 0;
    v9 = v5 * a2;
    while (1)
    {
      v10 = v8 - v5 / 2;
      v11 = v10 * v10;
      if ((v10 * v10) >> 64 != (v10 * v10) >> 63)
      {
        break;
      }

      v12 = 0;
      v13 = v8 + 1;
      v14 = v8 * v5;
      v15 = (v8 * v5) >> 64 != (v8 * v5) >> 63;
      v16 = v5 / -2;
      do
      {
        v17 = v16 * v16;
        if ((v16 * v16) >> 64 != (v16 * v16) >> 63)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v18 = __OFADD__(v11, v17);
        v19 = v11 + v17;
        if (v18)
        {
          goto LABEL_24;
        }

        if (sqrt(v19) <= v9)
        {
          if (v15)
          {
            goto LABEL_25;
          }

          v20 = v14 + v12;
          if (__OFADD__(v14, v12))
          {
            goto LABEL_26;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v20 & 0x8000000000000000) != 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v4 = sub_10003B9AC(v4, v21, v22, v23, v24, v25, v26, v27);
            if ((v20 & 0x8000000000000000) != 0)
            {
LABEL_21:
              __break(1u);
              return;
            }
          }

          if (v20 >= *&v4->hostAppBundleIdentifier[8])
          {
            goto LABEL_27;
          }

          v4->remoteCardFilter[v20] = 0;
          v7[4] = v4;
        }

        ++v12;
        ++v16;
      }

      while (v5 != v12);
      v8 = v13;
      if (v13 == v5)
      {
        return;
      }
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }
}

uint64_t sub_1000D6560(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

Swift::Int sub_1000D65E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  0xE100000000000000, v0, v1, v2, v3, v4, v5, v6;
  return Hasher._finalize()();
}

void sub_1000D6640(uint64_t a1)
{
  String.hash(into:)();

  0xE100000000000000, v1, v2, v3, v4, v5, v6, v7;
}

Swift::Int sub_1000D6680(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  0xE100000000000000, v1, v2, v3, v4, v5, v6, v7;
  return Hasher._finalize()();
}

unint64_t sub_1000D66D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11Diagnostics15ErrorCorrectionO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1000D6724(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 != 15)
  {
    v10 = *(v2 + 24);
    if (!v10 || (isa = Data._bridgeToObjectiveC()().super.isa, v12 = String._bridgeToObjectiveC()(), [v10 setValue:isa forKey:v12], isa, v12, v13 = String._bridgeToObjectiveC()(), 0xE100000000000000, v14, v15, v16, v17, v18, v19, v20, v21 = String._bridgeToObjectiveC()(), objc_msgSend(v10, "setValue:forKey:", v13, v21), v13, v21, (v22 = objc_msgSend(v10, "outputImage")) == 0))
    {
      sub_1000882D4(v7, v9);
      return;
    }

    v23 = v22;
    v24 = *(v2 + 16);
    [v22 extent];
    v25 = [v24 createCGImage:v23 fromRect:?];
    if (!v25)
    {
      sub_1000882D4(v7, v9);

      return;
    }

    v26 = v25;
    Width = CGImageGetWidth(v25);
    Height = CGImageGetHeight(v26);
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v30 = Width * Height;
    if ((Width * Height) >> 64 == (Width * Height) >> 63)
    {
      if ((v30 & 0x8000000000000000) == 0)
      {
        v31 = DeviceGray;
        v32 = &_swiftEmptyArrayStorage;
        if (v30)
        {
          v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *&v33->hostAppBundleIdentifier[8] = v30;
          bzero(v33->remoteCardFilter, Width * Height);
        }

        else
        {
          v33 = &_swiftEmptyArrayStorage;
        }

        v34 = sub_1000D6C60(v33->remoteCardFilter, Width, Height, Width, v31);
        if (v34)
        {
          v42 = v34;
          CGContextRef.draw(_:in:byTiling:)();
        }

        v43 = *&v33->hostAppBundleIdentifier[8];
        if (v43)
        {
          v57 = v31;
          v58 = v26;
          v59 = Width;
          v60 = v23;
          v61 = &_swiftEmptyArrayStorage;
          sub_1000B7C5C(0, v43, 0);
          v32 = v61;
          v51 = *&v61->hostAppBundleIdentifier[8];
          v52 = 32;
          do
          {
            v53 = *(&v33->super.super.super.super.isa + v52);
            v61 = v32;
            v54 = *v32->responder;
            if (v51 >= v54 >> 1)
            {
              sub_1000B7C5C((v54 > 1), v51 + 1, 1);
              v32 = v61;
            }

            *&v32->hostAppBundleIdentifier[8] = v51 + 1;
            v32->remoteCardFilter[v51] = v53 == 0;
            ++v52;
            ++v51;
            --v43;
          }

          while (v43);
          v33, v44, v45, v46, v47, v48, v49, v50;
          Width = v59;
          v23 = v60;
          v31 = v57;
          v26 = v58;
        }

        else
        {
          v33, v35, v36, v37, v38, v39, v40, v41;
        }

        type metadata accessor for BoolMatrix();
        v55 = swift_allocObject();
        sub_1000882D4(v7, v9);

        v55[2] = 0;
        v55[3] = 0;
        v55[4] = &_swiftEmptyArrayStorage;
        if ((Width * Width) >> 64 == (Width * Width) >> 63)
        {
          if (Width * Width == *&v32->hostAppBundleIdentifier[8])
          {
            v55[2] = Width;
            v55[3] = Width;
            v55[4] = v32;

            return;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_1000D6B48()
{

  return swift_deallocClassInstance();
}

unint64_t _s11Diagnostics15ErrorCorrectionO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BDD48, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D6BD8()
{
  result = qword_100200858;
  if (!qword_100200858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200858);
  }

  return result;
}

uint64_t sub_1000D6CB8(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_1000D6CD4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000D6CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000D6D30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000D6D78(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

id sub_1000D6DA4(unint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if (!a4)
  {
    v10 = objc_opt_self();
    a1;
    a2;
    return [v10 whiteColor];
  }

  if (a4 == 1)
  {
    v6 = a1;
    a2;
    v7 = a3;
    return v6;
  }

  v11 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 1 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.992156863 green:0.57254902 blue:0.117647059 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
LABEL_28:
    v14 = v13;
    v12;
    return v14;
  }

  if (a1 == 2 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.988235294 green:0.223529412 blue:0.207843137 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 3 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.674509804 green:0.11372549 blue:0.184313725 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 4 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.788235294 blue:0.152941176 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 5 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.321568627 green:0.839215686 blue:0.411764706 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 6 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.0352941176 green:0.501960784 blue:0.984313725 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 7 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.360784314 green:0.788235294 blue:0.968627451 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [objc_allocWithZone(UIColor) initWithRed:0.333333333 green:0.333333333 blue:0.333333333 alpha:1.0];
  return [objc_opt_self() whiteColor];
}

uint64_t sub_1000D71E8(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_10003C52C(*(v8 + 40), *(v8 + 48));

  return swift_deallocClassInstance();
}

DARootViewController *sub_1000D724C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 48);
  if (!*(a1 + 48))
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v4;
    *(v17 + 32) = v2;
    type metadata accessor for AlertAction();
    v18 = swift_allocObject();
    v18[2] = 0xD000000000000017;
    v18[3] = 0x800000010018C890;
    v18[4] = 2;
    v18[5] = sub_1000D7818;
    v18[6] = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = v5;
    v20 = swift_allocObject();
    v20[2] = 0x4C45434E4143;
    v20[3] = 0xE600000000000000;
    v20[4] = 1;
    v20[5] = sub_1000BA268;
    v20[6] = v19;
    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10017ED90;
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    sub_10003E418(v1, v4);
    sub_10003E418(v3, v5);
    return v21;
  }

  v7 = a1[5];
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      if (!(v4 | v1 | v2 | v3 | v5 | v7))
      {
        sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_10017EBF0;
        type metadata accessor for AlertAction();
        v9 = swift_allocObject();
        result = v8;
        *(v9 + 16) = 0xD000000000000026;
        *(v9 + 24) = 0x8000000100189150;
        v11 = sub_1000D71D8;
        goto LABEL_22;
      }

      if (v2 == 1 && !(v4 | v1 | v3 | v5 | v7))
      {
        sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_10017EBF0;
        type metadata accessor for AlertAction();
        v9 = swift_allocObject();
        result = v8;
        strcpy((v9 + 16), "OPEN_SETTINGS");
        *(v9 + 30) = -4864;
        v11 = sub_1000D71E0;
LABEL_22:
        *(v9 + 32) = 0;
        *(v9 + 40) = v11;
        goto LABEL_23;
      }
    }

    sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10017EBF0;
    type metadata accessor for AlertAction();
    v9 = swift_allocObject();
    result = v8;
    *(v9 + 16) = 19279;
    *(v9 + 24) = 0xE200000000000000;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
LABEL_23:
    *(v9 + 48) = 0;
    *(v8 + 32) = v9;
    return result;
  }

  if (v4)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v3;
    type metadata accessor for AlertAction();
    v13 = swift_allocObject();
    v13[2] = 0x545345545F444E45;
    v13[3] = 0xEB00000000474E49;
    v13[4] = 2;
    v13[5] = sub_10003D960;
    v13[6] = v12;
    sub_10003E418(v4, v3);
    sub_10003E418(v4, v3);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10003C52C(v4, v3);
  }

  if (v5)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v7;
    type metadata accessor for AlertAction();
    v15 = swift_allocObject();
    v15[2] = 0x59524F54534948;
    v15[3] = 0xE700000000000000;
    v15[4] = 0;
    v15[5] = sub_1000D78B8;
    v15[6] = v14;
    sub_10003E418(v5, v7);
    sub_10003E418(v5, v7);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10003C52C(v5, v7);
  }

  type metadata accessor for AlertAction();
  v16 = swift_allocObject();
  v16[2] = 0x4C45434E4143;
  v16[3] = 0xE600000000000000;
  v16[4] = 1;
  v16[5] = 0;
  v16[6] = 0;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000D77D8()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

void sub_1000D7818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  sub_1000F6FF8(v2);
}

uint64_t sub_1000D7868(uint64_t a1, __n128 a2)
{
  if (*(v2 + 16))
  {
  }

  return _swift_deallocObject(v2, a1, 7, a2);
}

uint64_t sub_1000D78BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200AA8, &qword_100183140);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7A40, 0, 0);
}

uint64_t sub_1000D7A40()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[3];
    NWActorSystem.makeInvocationEncoder()();
    v0[2] = v1;
    type metadata accessor for TargetDevicePeerConnection(0);

    RemoteCallArgument.init(label:name:value:)();
    sub_1000DBFA0(&qword_100200AB0, type metadata accessor for TargetDevicePeerConnection, &unk_100183B98);
    sub_1000DBFA0(&qword_100200AB8, type metadata accessor for TargetDevicePeerConnection, &unk_100183B70);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v2 = sub_10003C49C(&qword_100201C30, &unk_100183150);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      v4 = v0[13];
      v5 = v0[11];
      v6 = v0[12];
      (*(v0[9] + 8))(v0[10], v0[8]);
      (*(v6 + 8))(v4, v5);

      v7 = v0[1];

      return v7();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v11 = swift_task_alloc();
      v0[14] = v11;
      v12 = type metadata accessor for AssessorDevicePeerConnection(0);
      v13 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
      *v11 = v0;
      v11[1] = sub_1000D7DD4;
      v14 = v0[13];
      v15 = v0[7];
      v16 = v0[4];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v16, v15, v14, v2, v12, v2, v13, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_1000D7EE8;
    v10 = v0[3];

    return sub_1000D82B4(v10);
  }
}

uint64_t sub_1000D7DD4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000D8038;
  }

  else
  {
    v2 = sub_1000DC0D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D7EE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000D8038()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D8118(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = *v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1000DC0D0;

  return sub_1000D78BC(v6);
}

uint64_t sub_1000D82B4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1000D82D4, v1, 0);
}

uint64_t sub_1000D82D4()
{
  v9 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001ELL, 0x8000000100190B70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Assessor] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  type metadata accessor for AssessorDevicePeerConnection(0);
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
  DistributedActor<>.peer.getter();
  if (v0[5])
  {
    sub_1000442A0(v0 + 2, v0[5]);
    dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();
    sub_100044554(v0 + 2);
  }

  else
  {
    sub_10003DD84((v0 + 2), &qword_100200C18, &unk_1001835A0);
  }

  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  sub_100053678(v0[7]);
  v6 = v0[1];

  return v6();
}

uint64_t type metadata accessor for AssessorDevicePeerConnection(uint64_t a1)
{
  result = qword_100200B08;
  if (!qword_100200B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000D8590(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  if (byte_10020A378)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10003DAAC(v5, qword_10020A510);
    v20 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v20, v6, "[Assessor] target device has completed the flow, ignoring connection loss", v7, 2u);
    }

    v8 = v20;
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10003DAAC(v10, qword_10020A510);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      if (a1)
      {
        swift_errorRetain();
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      *(v13 + 4) = v15;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "[Assessor] connection has been interrupted: %@", v13, 0xCu);
      sub_10003DD84(v14, &qword_1001FF0C0, &unk_10017ED00);
    }

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_1000539D8(0, 0, v4, &unk_1001835B8, v18);
  }

  return result;
}

uint64_t sub_1000D88C0()
{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D8958, v2, v1);
}

uint64_t sub_1000D8958()
{

  *(v0 + 32) = sub_1000B95A8(sub_100070534, 0);

  return _swift_task_switch(sub_100070428, 0, 0);
}

uint64_t sub_1000D89E0()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8AFC, 0, 0);
}

uint64_t sub_1000D8AFC()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection(0);
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000D8E14, v4, 0);
  }
}

uint64_t sub_1000D8D00()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000DC0D4;
  }

  else
  {
    v2 = sub_1000DC0CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D8E14()
{
  sub_1000DB3B8(0x29286E69676562, 0xE700000000000000, &DeviceAssessmentPeerDeviceSession.beginSession());

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D8EB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000D89E0();
}

uint64_t sub_1000D8F84()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D90A0, 0, 0);
}

uint64_t sub_1000D90A0()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection(0);
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000D92A4, v4, 0);
  }
}

uint64_t sub_1000D92A4()
{
  sub_1000DB3B8(0x29287972746572, 0xE700000000000000, &DeviceAssessmentPeerDeviceSession.retrySession());

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D9380()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D949C, 0, 0);
}

uint64_t sub_1000D949C()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection(0);
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000D96A0, v4, 0);
  }
}

uint64_t sub_1000D96A0()
{
  sub_1000DB3B8(0x29286C65636E6163, 0xE800000000000000, &DeviceAssessmentPeerDeviceSession.terminateSession());

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D977C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200AC0, &qword_1001832C0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9900, 0, 0);
}

uint64_t sub_1000D9900()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[3];
    NWActorSystem.makeInvocationEncoder()();
    v0[2] = v1;

    sub_10003C49C(&qword_100200AC8, &qword_1001832C8);
    RemoteCallArgument.init(label:name:value:)();
    sub_1000DBBA8(&qword_100200AD0, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    sub_1000DBBA8(&qword_100200AD8, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v2)
    {
      v4 = v0[12];
      v3 = v0[13];
      v5 = v0[11];
      (*(v0[9] + 8))(v0[10], v0[8]);
      (*(v4 + 8))(v3, v5);

      v6 = v0[1];

      return v6();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v9 = swift_task_alloc();
      v0[14] = v9;
      v10 = type metadata accessor for AssessorDevicePeerConnection(0);
      v11 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
      *v9 = v0;
      v9[1] = sub_1000D9C24;
      v12 = v0[13];
      v13 = v0[7];
      v14 = v0[4];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v14, v13, v12, &type metadata for Never, v10, &type metadata for Never, v11, &protocol witness table for Never);
    }
  }

  else
  {
    v8 = v0[4];

    return _swift_task_switch(sub_1000D9E18, v8, 0);
  }
}

uint64_t sub_1000D9C24()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000D9E9C;
  }

  else
  {
    v2 = sub_1000D9D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D9D38()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D9E18()
{
  sub_1000DB998(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D9E9C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D9F78()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA094, 0, 0);
}

uint64_t sub_1000DA094()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection(0);
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
      *v5 = v0;
      v5[1] = sub_1000DA298;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000DA458, v4, 0);
  }
}

uint64_t sub_1000DA298()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000DA500;
  }

  else
  {
    v2 = sub_1000DA3AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DA3AC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DA458()
{
  sub_1000DB3B8(0x4365726170657270, 0xEF29286172656D61, &DeviceAssessmentPeerDeviceSession.prepareCamera());

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DA500()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DA5F4()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA710, 0, 0);
}

uint64_t sub_1000DA710()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection(0);
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000DA914, v4, 0);
  }
}

uint64_t sub_1000DA914()
{
  sub_1000DB224();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DA98C()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_id;
  if ((is_remote & 1) == 0)
  {
    type metadata accessor for NWActorSystem();
    sub_1000DBFA0(&qword_100200C00, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
    dispatch thunk of DistributedActorSystem.resignID(_:)();
  }

  v3 = type metadata accessor for NWActorID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000DAAC8(uint64_t a1)
{
  v8 = type metadata accessor for NWActorID();
  v3 = *(v8 - 8);
  __chkstk_darwin(v8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_actorSystem;
  *(v1 + OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_actorSystem) = a1;
  type metadata accessor for AssessorDevicePeerConnection(0);
  v9 = a1;
  type metadata accessor for NWActorSystem();
  sub_1000DBFA0(&qword_100200C00, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_id, v5, v8);
  v9 = *(v1 + v6);

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  return v1;
}

double sub_1000DACB4@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_actorSystem);

  return result;
}

uint64_t sub_1000DACC8(uint64_t a1, uint64_t a2)
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for AssessorDevicePeerConnection(0);
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v2;
}

uint64_t sub_1000DAD1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for AssessorDevicePeerConnection(0);
  type metadata accessor for NWActorSystem();
  sub_1000DBFA0(&qword_100200C00, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v4 && !result)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_id;
    v10 = type metadata accessor for NWActorID();
    (*(*(v10 - 8) + 16))(v8 + v9, a1, v10);
    *(v8 + OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_actorSystem) = v6;

    return v8;
  }

  return result;
}

Swift::Int sub_1000DAE4C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for AssessorDevicePeerConnection(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DAEAC(uint64_t a1)
{
  type metadata accessor for AssessorDevicePeerConnection(0);
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_1000DAF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for AssessorDevicePeerConnection(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DAF84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000DB000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for AssessorDevicePeerConnection(0);
  v5 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_1000DB08C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AssessorDevicePeerConnection(0);
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
  sub_1000DBFA0(&qword_100200C08, &type metadata accessor for NWActorID, &protocol conformance descriptor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000DB15C(uint64_t a1)
{
  type metadata accessor for AssessorDevicePeerConnection(0);
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection, &unk_100183540);
  sub_1000DBFA0(&qword_100200C10, &type metadata accessor for NWActorID, &protocol conformance descriptor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

double sub_1000DB224()
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10003DAAC(v0, qword_10020A510);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100056B7C(0xD000000000000015, 0x8000000100190B30, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "[Assessor] %s", v3, 0xCu);
    sub_100044554(v4);
  }

  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  DeviceAssessmentPeerDeviceSession.assessmentCompleted()();

  return result;
}

double sub_1000DB3B8(uint64_t a1, DARootViewController *a2, void (*a3)(uint64_t))
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10003DAAC(v6, qword_10020A510);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100056B7C(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "[Assessor] %s", v9, 0xCu);
    sub_100044554(v10);
  }

  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  a3(v11);

  return result;
}

uint64_t sub_1000DB55C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000D8F84();
}

uint64_t sub_1000DB5F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000D9380();
}

uint64_t sub_1000DB684(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = *v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1000DB820;

  return sub_1000D977C(v6);
}

uint64_t sub_1000DB820()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

double sub_1000DB998(DARootViewController *a1)
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  a1, v5, v6, v7, v8, v9, v10, v11;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100056B7C(0xD000000000000012, 0x8000000100190B50, &v25);
    *(v12 + 12) = 2080;
    v13 = Dictionary.description.getter();
    v15 = v14;
    v16 = sub_100056B7C(v13, v14, &v25);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Assessor] %s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  DeviceAssessmentPeerDeviceSession.deviceAttitude(_:)(a1);

  return result;
}

uint64_t sub_1000DBBA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(&qword_100200AC8, &qword_1001832C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DBC18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_1000D9F78();
}

uint64_t sub_1000DBCAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DA5F4();
}

uint64_t sub_1000DBD48(uint64_t a1)
{
  result = type metadata accessor for NWActorID();
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

uint64_t sub_1000DBFA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DBFE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000DC020()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_1000D88A4();
}

uint64_t sub_1000DC0DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  v2[8] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200C20, &qword_1001835D8);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000DC29C, 0, 0);
}

uint64_t sub_1000DC29C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[8];
    v2 = v0[2];
    NWActorSystem.makeInvocationEncoder()();
    sub_10003DD14(v2, v1);
    RemoteCallArgument.init(label:name:value:)();
    sub_1000E26C4(&qword_100200C28, &qword_100200C30, &protocol conformance descriptor for AssessmentError, &protocol conformance descriptor for <A> A?);
    sub_1000E26C4(&qword_100200C38, &qword_100200C40, &protocol conformance descriptor for AssessmentError, &protocol conformance descriptor for <A> A?);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      v5 = v0[13];
      v4 = v0[14];
      v6 = v0[12];
      (*(v0[10] + 8))(v0[11], v0[9]);
      (*(v5 + 8))(v4, v6);

      v7 = v0[1];

      return v7();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v10 = swift_task_alloc();
      v0[15] = v10;
      v11 = type metadata accessor for TargetDevicePeerConnection(0);
      v12 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v10 = v0;
      v10[1] = sub_1000DC5C8;
      v13 = v0[14];
      v14 = v0[6];
      v15 = v0[3];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v15, v14, v13, &type metadata for Never, v11, &type metadata for Never, v12, &protocol witness table for Never);
    }
  }

  else
  {
    v9 = v0[3];

    return _swift_task_switch(sub_1000DC7C8, v9, 0);
  }
}

uint64_t sub_1000DC5C8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000DC860;
  }

  else
  {
    v2 = sub_1000DC6DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DC6DC()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000DC7C8()
{
  sub_1000E2310(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC860()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DC94C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1000DC0D0;

  return sub_1000DC0DC(v4);
}

uint64_t sub_1000DCAE4()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCC00, 0, 0);
}

uint64_t sub_1000DCC00()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection(0);
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000DF8F0();
  }
}

uint64_t sub_1000DCE34()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCF50, 0, 0);
}

uint64_t sub_1000DCF50()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection(0);
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000DFBB8();
  }
}

uint64_t sub_1000DD184()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD2A0, 0, 0);
}

uint64_t sub_1000DD2A0()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection(0);
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000DFE80();
  }
}

uint64_t sub_1000DD4D4()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD5F0, 0, 0);
}

uint64_t sub_1000DD5F0()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection(0);
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v5 = v0;
      v5[1] = sub_1000DA298;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000DD824;

    return sub_1000E05E4();
  }
}

uint64_t sub_1000DD824()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000DD954()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DDA70, 0, 0);
}

uint64_t sub_1000DDA70()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection(0);
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000E08AC();
  }
}

uint64_t sub_1000DDCA4()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DDDC0, 0, 0);
}

uint64_t sub_1000DDDC0()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection(0);
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000E0F14();
  }
}

uint64_t sub_1000DDFF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  v2[8] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200C20, &qword_1001835D8);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000DE1B4, 0, 0);
}

uint64_t sub_1000DE1B4()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[8];
    v2 = v0[2];
    NWActorSystem.makeInvocationEncoder()();
    sub_10003DD14(v2, v1);
    RemoteCallArgument.init(label:name:value:)();
    sub_1000E26C4(&qword_100200C28, &qword_100200C30, &protocol conformance descriptor for AssessmentError, &protocol conformance descriptor for <A> A?);
    sub_1000E26C4(&qword_100200C38, &qword_100200C40, &protocol conformance descriptor for AssessmentError, &protocol conformance descriptor for <A> A?);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      v4 = v0[13];
      (*(v0[10] + 8))(v0[11], v0[9]);
      (*(v4 + 8))(v0[14], v0[12]);

      v5 = v0[1];

      return v5();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v9 = swift_task_alloc();
      v0[15] = v9;
      v10 = type metadata accessor for TargetDevicePeerConnection(0);
      v11 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v9 = v0;
      v9[1] = sub_1000DE514;
      v12 = v0[14];
      v13 = v0[6];
      v14 = v0[3];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v14, v13, v12, &type metadata for Never, v10, &type metadata for Never, v11, &protocol witness table for Never);
    }
  }

  else
  {
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_1000DE628;
    v8 = v0[2];

    return sub_1000E12B8(v8);
  }
}

uint64_t sub_1000DE514()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000DE798;
  }

  else
  {
    v2 = sub_1000DC6DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DE628()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000DE798()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DE880()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DE99C, 0, 0);
}

uint64_t sub_1000DE99C()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection(0);
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000E1710();
  }
}

uint64_t sub_1000DEBD0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200C48, &qword_1001839E8);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000DED54, 0, 0);
}

uint64_t sub_1000DED54()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[3];
    NWActorSystem.makeInvocationEncoder()();
    v0[2] = v1;
    type metadata accessor for AssessorDevicePeerConnection(0);

    RemoteCallArgument.init(label:name:value:)();
    sub_1000E3458(&qword_100200C50, type metadata accessor for AssessorDevicePeerConnection, &unk_100183518);
    sub_1000E3458(&qword_100200C58, type metadata accessor for AssessorDevicePeerConnection, &unk_1001834F0);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v2 = sub_10003C49C(&qword_100201C30, &unk_100183150);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      v4 = v0[13];
      v5 = v0[11];
      v6 = v0[12];
      (*(v0[9] + 8))(v0[10], v0[8]);
      (*(v6 + 8))(v4, v5);

      v7 = v0[1];

      return v7();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v11 = swift_task_alloc();
      v0[14] = v11;
      v12 = type metadata accessor for TargetDevicePeerConnection(0);
      v13 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
      *v11 = v0;
      v11[1] = sub_1000DF0E8;
      v14 = v0[13];
      v15 = v0[7];
      v16 = v0[4];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v16, v15, v14, v2, v12, v2, v13, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_1000D7EE8;
    v10 = v0[3];

    return sub_1000DF1FC(v10);
  }
}

uint64_t sub_1000DF0E8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000D8038;
  }

  else
  {
    v2 = sub_1000D9D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DF1FC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000DF298, v1, 0);
}

uint64_t sub_1000DF298()
{
  v15 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000020, 0x8000000100190BF0, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  type metadata accessor for TargetDevicePeerConnection(0);
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
  DistributedActor<>.peer.getter();
  if (v0[5])
  {
    sub_1000442A0(v0 + 2, v0[5]);
    dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();
    sub_100044554(v0 + 2);
  }

  else
  {
    sub_10003DD84((v0 + 2), &qword_100200C18, &unk_1001835A0);
  }

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v7 = qword_10020A5F8;
  *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection) = v0[7];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = v7;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1000539D8(0, 0, v6, &unk_100183C20, v11);

  v12 = v0[1];

  return v12();
}

double sub_1000DF5DC(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  if (byte_10020A618)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10003DAAC(v5, qword_10020A510);
    v20 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v20, v6, "[Target] helper device has completed the flow, ignoring connection loss", v7, 2u);
    }

    v8 = v20;
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10003DAAC(v10, qword_10020A510);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      if (a1)
      {
        swift_errorRetain();
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      *(v13 + 4) = v15;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "[Target] connection has been interrupted: %@", v13, 0xCu);
      sub_10003DD84(v14, &qword_1001FF0C0, &unk_10017ED00);
    }

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_1000539D8(0, 0, v4, &unk_100183C30, v18);
  }

  return result;
}

uint64_t sub_1000DF90C()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001ALL, 0x8000000100190D20, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000DFA88, 0, 0);
}

uint64_t sub_1000DFA88()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DFB1C, v2, v1);
}

uint64_t sub_1000DFB1C()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  sub_100139118();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DFBD4()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001BLL, 0x8000000100190D00, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000DFD50, 0, 0);
}

uint64_t sub_1000DFD50()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DFDE4, v2, v1);
}

uint64_t sub_1000DFDE4()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  sub_100139120();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DFE80()
{
  *(v1 + 16) = v0;
  sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DFF1C, v0, 0);
}

uint64_t sub_1000DFF1C()
{
  v14 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001ALL, 0x8000000100190CE0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = v0[3];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  v10 = sub_1000539D8(0, 0, v6, &unk_100183C40, v9);
  v0[4] = v10;
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_1000E0180;

  return Task<>.value.getter(v11, v10, &type metadata for () + 8);
}

uint64_t sub_1000E0180()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000E02AC, v1, 0);
}

uint64_t sub_1000E02AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E030C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000E03A0, v2, v1);
}

uint64_t sub_1000E03A0()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000E0464;

  return sub_100139344();
}

uint64_t sub_1000E0464()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_1000E0584, v3, v2);
}

uint64_t sub_1000E0584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E0600()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000022, 0x8000000100190CB0, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E077C, 0, 0);
}

uint64_t sub_1000E077C()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E0810, v2, v1);
}

uint64_t sub_1000E0810()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  sub_1001396D0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E08AC()
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000E09C4, v0, 0);
}

uint64_t sub_1000E09C4()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001ALL, 0x8000000100190C90, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E0B40, 0, 0);
}

uint64_t sub_1000E0B40()
{
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E0BD4, v2, v1);
}

uint64_t sub_1000E0BD4()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v16 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  byte_10020A540 = 0;
  sub_100057B68();
  v6 = static OS_dispatch_queue.main.getter();
  v0[6] = sub_1000F2784;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100031FA8;
  v0[5] = &unk_1001C5010;
  v7 = _Block_copy(v0 + 2);
  static DispatchQoS.unspecified.getter();
  v0[8] = &_swiftEmptyArrayStorage;
  sub_1000E3458(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v16);
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v8 = qword_10020A368;
  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting) != 2)
  {
    _AXSClassicInvertColorsSetEnabled();
  }

  v9 = *(v8 + OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting);
  if (v9 != 2)
  {
    v10 = [objc_opt_self() sharedInstance];
    [v10 setEnableVoiceOverCaptions:v9 & 1];
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v11 = qword_10020A388;
  v12 = objc_allocWithZone(type metadata accessor for CosmeticAssessmentBackCaptureViewController());
  v13 = sub_100081C5C();
  [v11 pushViewController:v13 animated:1];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000E0F30()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001DLL, 0x8000000100190C70, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E10AC, 0, 0);
}

uint64_t sub_1000E10AC()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E1140, v2, v1);
}

uint64_t sub_1000E1140()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A388;
  v2 = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton] = 0;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100190C40);
  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v5, v7, v8, v9, v10, v11, v12, v13;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v14 = objc_msgSendSuper2(v0 + 1, "initWithSpinnerText:", v6);

  [v1 pushViewController:v14 animated:1];
  super_class = v0->super_class;

  return super_class();
}

uint64_t sub_1000E12B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1358, v1, 0);
}

uint64_t sub_1000E1358()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001FLL, 0x8000000100190C20, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E14D4, 0, 0);
}

uint64_t sub_1000E14D4()
{
  type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E1568, v2, v1);
}

uint64_t sub_1000E1568()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A5F8;
  if (qword_1001FC848 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_10003DAAC(v0[6], qword_10020A600);
  swift_beginAccess();
  sub_1000E3324(v2, v3);
  swift_endAccess();
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v5 = qword_10020A388;
  sub_10003DD14(v0[5], v4);
  v6 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice);
  v7 = objc_allocWithZone(type metadata accessor for AssessmentIssueFoundViewController(0));
  v8 = sub_1000468A8(v4, v6);
  [v5 pushViewController:v8 animated:1];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E172C()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0x5274736575716572, 0xEE00292879727465, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E18B0, 0, 0);
}

uint64_t sub_1000E18B0()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E1944, v2, v1);
}

uint64_t sub_1000E1944()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v1)
  {
    [v1 setResultCode:-3];
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A388;
  type metadata accessor for LoadingViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 pushViewController:v3 animated:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E1A78()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_id;
  if ((is_remote & 1) == 0)
  {
    type metadata accessor for NWActorSystem();
    sub_1000E3458(&qword_100200C00, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
    dispatch thunk of DistributedActorSystem.resignID(_:)();
  }

  v3 = type metadata accessor for NWActorID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000E1BB4(uint64_t a1)
{
  v8 = type metadata accessor for NWActorID();
  v3 = *(v8 - 8);
  __chkstk_darwin(v8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_actorSystem;
  *(v1 + OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_actorSystem) = a1;
  type metadata accessor for TargetDevicePeerConnection(0);
  v9 = a1;
  type metadata accessor for NWActorSystem();
  sub_1000E3458(&qword_100200C00, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_id, v5, v8);
  v9 = *(v1 + v6);

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  return v1;
}

double sub_1000E1DA0@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_actorSystem);

  return result;
}

uint64_t sub_1000E1DB4(uint64_t a1, uint64_t a2)
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for TargetDevicePeerConnection(0);
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v2;
}

uint64_t sub_1000E1E08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for TargetDevicePeerConnection(0);
  type metadata accessor for NWActorSystem();
  sub_1000E3458(&qword_100200C00, &type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v4 && !result)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_id;
    v10 = type metadata accessor for NWActorID();
    (*(*(v10 - 8) + 16))(v8 + v9, a1, v10);
    *(v8 + OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_actorSystem) = v6;

    return v8;
  }

  return result;
}

Swift::Int sub_1000E1F38(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for TargetDevicePeerConnection(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E1F98(uint64_t a1)
{
  type metadata accessor for TargetDevicePeerConnection(0);
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_1000E2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for TargetDevicePeerConnection(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E2070@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000E20EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for TargetDevicePeerConnection(0);
  v5 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_1000E2178@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TargetDevicePeerConnection(0);
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
  sub_1000E3458(&qword_100200C08, &type metadata accessor for NWActorID, &protocol conformance descriptor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000E2248(uint64_t a1)
{
  type metadata accessor for TargetDevicePeerConnection(0);
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection, &unk_100183BC0);
  sub_1000E3458(&qword_100200C10, &type metadata accessor for NWActorID, &protocol conformance descriptor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

void sub_1000E2310(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10003DAAC(v8, qword_10020A510);
  sub_10003DD14(a1, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v18 = a1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100056B7C(0x65286873696E6966, 0xEE00293A726F7272, &v19);
    *(v11 + 12) = 2112;
    sub_10003DD14(v7, v4);
    v14 = type metadata accessor for AssessmentError();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v4, 1, v14) == 1)
    {
      sub_10003DD84(v4, &qword_1001FCE98, &unk_10017F0E0);
      sub_10003DD84(v7, &qword_1001FCE98, &unk_10017F0E0);
      v16 = 0;
    }

    else
    {
      sub_1000E3458(&qword_1001FD870, &type metadata accessor for AssessmentError, &protocol conformance descriptor for AssessmentError);
      swift_allocError();
      (*(v15 + 32))(v17, v4, v14);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      sub_10003DD84(v7, &qword_1001FCE98, &unk_10017F0E0);
    }

    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Target] %s error: %@", v11, 0x16u);
    sub_10003DD84(v12, &qword_1001FF0C0, &unk_10017ED00);

    sub_100044554(v13);

    a1 = v18;
  }

  else
  {

    sub_10003DD84(v7, &qword_1001FCE98, &unk_10017F0E0);
  }

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  sub_10013752C(a1);
}

uint64_t sub_1000E26C4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(&qword_1001FCE98, &unk_10017F0E0);
    sub_1000E3458(a2, &type metadata accessor for AssessmentError, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TargetDevicePeerConnection(uint64_t a1)
{
  result = qword_100200C88;
  if (!qword_100200C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E27AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DCAE4();
}

uint64_t sub_1000E2840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DCE34();
}

uint64_t sub_1000E28D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DD184();
}

uint64_t sub_1000E2968()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_1000DD4D4();
}

uint64_t sub_1000E29FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DD954();
}

uint64_t sub_1000E2A90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DDCA4();
}

uint64_t sub_1000E2B24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1000DB820;

  return sub_1000DDFF4(v4);
}

uint64_t sub_1000E2CBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DE880();
}

uint64_t sub_1000E2D50(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = *v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1000DB820;

  return sub_1000DEBD0(v6);
}

uint64_t sub_1000E2EF4(uint64_t a1)
{
  result = type metadata accessor for NWActorID();
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

uint64_t sub_1000E314C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_1000E318C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000494BC;

  return sub_10013A9D0();
}

uint64_t sub_1000E3240()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000E3278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000D88A4();
}

uint64_t sub_1000E3324(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FCE98, &unk_10017F0E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1000E3394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000E33AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_1000E030C();
}

uint64_t sub_1000E3458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000E34B8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView;
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView);
LABEL_6:
    v14 = v3;
    return v4;
  }

  v5 = v1;
  v6 = *(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    LOBYTE(v15) = v6;
    v16 = result;
    v9 = objc_allocWithZone(sub_10003C49C(&qword_100200E10, &unk_100183CA8));
    v10 = v8;
    v11 = UIHostingController.init(rootView:)();
    result = [v11 view];
    if (result)
    {
      v12 = result;

      v13 = *(v5 + v2);
      *(v5 + v2) = v12;
      v4 = v12;

      v3 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000E35AC(uint64_t a1, DARootViewController *a2, char a3, __n128 a4)
{
  ObjectType = swift_getObjectType();
  v9 = [objc_allocWithZone(VPPresenterView) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1001FC6E8 != -1)
  {
    swift_once();
  }

  if (!os_variant_has_internal_content() || (v10 = [objc_opt_self() standardUserDefaults], v11 = String._bridgeToObjectiveC()(), v12 = objc_msgSend(v10, "BOOLForKey:", v11), v10, v11, v13 = v9, (v12 & 1) == 0))
  {
    v13 = [v9 layer];

    [v13 setDisableUpdateMask:272];
  }

  *&v4[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView] = v9;
  *&v4[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshInterval] = 0x4010000000000000;
  v14 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_targetManager;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v15 = qword_10020A5F8;
  *&v4[v14] = qword_10020A5F8;
  *&v4[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance] = 0;
  v16 = &v4[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_sessionID];
  *v16 = a1;
  v16[1] = a2;
  v4[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle] = a3 & 1;
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v17 = v15;

  v18 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v19 = [v18 navigationController];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 navigationBar];

    v22 = [v21 standardAppearance];
    v23 = [v22 copy];
  }

  else
  {
    v23 = 0;
  }

  v24 = *&v18[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance];
  *&v18[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance] = v23;

  v25 = [v18 navigationController];
  if (v25 && (v26 = v25, v27 = [v25 navigationBar], v26, v28 = objc_msgSend(v27, "scrollEdgeAppearance"), v27, v28))
  {
    v29 = [v28 copy];
  }

  else
  {
    v29 = 0;
  }

  v30 = *&v18[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance];
  *&v18[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance] = v29;

  v31 = [v18 view];
  if (v31)
  {
    v32 = v31;
    [v31 setAccessibilityIgnoresInvertColors:1];

    v33 = [v18 view];
    if (v33)
    {
      a2, v34, v35, v36, v37, v38, v39, v40;
      [v33 setAccessibilityElementsHidden:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E39C4()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle);
    v5 = objc_allocWithZone(UIColor);
    if (v4)
    {
      v6 = 0.117647059;
    }

    else
    {
      v6 = 0.960784314;
    }

    v7 = [v5 initWithRed:v6 green:v6 blue:v6 alpha:1.0];
    [v3 setBackgroundColor:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E3B04(__n128 a1)
{
  v53.receiver = v1;
  v53.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v53, "viewDidLoad");
  v2 = [v1 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden:1 animated:0];
  }

  v5 = sub_1000E34B8(v3);
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  v7 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView;
  [*&v1[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = *&v1[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView];
  [v8 addSubview:v10];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  [v11 addSubview:*&v1[v7]];

  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10017EDB0;
  v14 = [v10 topAnchor];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v13 + 32) = v18;
  v19 = [v10 leadingAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v13 + 40) = v23;
  v24 = [v1 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v10 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v13 + 48) = v28;
  v29 = [v1 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v10 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v13 + 56) = v33;
  v34 = [*&v1[v7] centerXAnchor];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  v37 = [v35 centerXAnchor];

  v38 = [v34 constraintEqualToAnchor:v37];
  *(v13 + 64) = v38;
  v39 = [*&v1[v7] centerYAnchor];
  v40 = [v1 view];
  if (v40)
  {
    v41 = v40;
    v42 = objc_opt_self();
    v43 = [v41 centerYAnchor];

    v44 = [v39 constraintEqualToAnchor:v43];
    *(v13 + 72) = v44;
    sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v13, v46, v47, v48, v49, v50, v51, v52;
    [v42 activateConstraints:isa];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1000E4064(char a1, __n128 a2)
{
  v3 = v2;
  v36.receiver = v3;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, "viewDidAppear:", a1 & 1);
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v5 = qword_10020A368;
  v6 = OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState;
  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState) == 2)
  {
    *(v5 + v6) = SBSIsReachabilityEnabled() != 0;
  }

  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v8 = qword_10020A4F8;
  *(v7 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  *(v7 + 64) = sub_1000516BC();
  *(v7 + 32) = v8;
  v9 = v8;
  v10 = static OS_os_log.default.getter();
  v11 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Disabling Reachability", 22, 2, &_mh_execute_header, v10, v11, v7);
  v7, v12, v13, v14, v15, v16, v17, v18;

  v19 = SBSSetReachabilityEnabled();
  sub_1000E4560(v19);
  sub_1000E46A8();
  if (*(v3 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle))
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    0xE400000000000000, v28, v29, v30, v31, v32, v33, v34;
    if (v27)
    {
      v35 = 6;
    }

    else
    {
      v35 = 5;
    }
  }

  else
  {
    0xE500000000000000, v20, v21, v22, v23, v24, v25, v26;
    v35 = 6;
  }

  sub_1000EBDFC(v35);
}

void sub_1000E42B4(char a1, __n128 a2)
{
  v25.receiver = v2;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewWillDisappear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationBar];

      [v8 setStandardAppearance:v5];
    }
  }

  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 navigationBar];

    v12 = *&v2[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance];
    [v11 setScrollEdgeAppearance:v12];
  }

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState) != 2)
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v14 = qword_10020A4F8;
    *(v13 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    *(v13 + 64) = sub_1000516BC();
    *(v13 + 32) = v14;
    v15 = v14;
    v16 = static OS_os_log.default.getter();
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Reverting Reachability state", 28, 2, &_mh_execute_header, v16, v17, v13);
    v13, v18, v19, v20, v21, v22, v23, v24;

    SBSSetReachabilityEnabled();
  }
}

id sub_1000E4560(uint64_t a1)
{
  v2 = sub_1000E34B8(a1);
  v3 = [v2 isHidden];

  if (v3)
  {
    result = [v1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = v1[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle];
    v7 = objc_allocWithZone(UIColor);
    if (v6)
    {
      v8 = 0.117647059;
    }

    else
    {
      v8 = 0.960784314;
    }

    v9 = [v7 initWithRed:v8 green:v8 blue:v8 alpha:1.0];
    [v5 setBackgroundColor:v9];

    [*&v1[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView] setHidden:0];
  }

  sub_1000E48C4();
  v11 = v10;
  v12 = *&v1[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView];
  v13 = String._bridgeToObjectiveC()();
  v11, v14, v15, v16, v17, v18, v19, v20;
  [v12 setVerificationCode:v13];

  return [v12 start];
}

void sub_1000E46A8()
{
  v1 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer);
  if (v2)
  {
    v3 = v2;
    if ([v3 isValid])
    {
      v4 = *(v0 + v1);
      if (v4)
      {
        v5 = v4;
        [v5 invalidate];
      }

      v3 = *(v0 + v1);
      *(v0 + v1) = 0;
    }
  }

  v6 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:"updateWatermarkPayload" selector:0 userInfo:1 repeats:4.0];
  v7 = *(v0 + v1);
  *(v0 + v1) = v6;
}

void sub_1000E4774()
{
  v1 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  [*(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView) stop];

  sub_1000E47E8();
}

void sub_1000E47E8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = v0[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle];
    v4 = objc_opt_self();
    v5 = &selRef_blackColor;
    if (!v3)
    {
      v5 = &selRef_whiteColor;
    }

    v6 = [v4 *v5];
    [v2 setBackgroundColor:v6];

    v8 = sub_1000E34B8(v7);
    [v8 setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E48C4()
{
  v1 = v0;
  v2 = type metadata accessor for SHA256();
  v58 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v60 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  round(fmod(v15, 1000.0));
  (*(v12 + 8))(v14, v11);
  v16 = *(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_sessionID + 8);
  v63 = *(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_sessionID);
  v64 = v16;

  v17._countAndFlagsBits = 95;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle))
  {
    v18 = 1802658148;
  }

  else
  {
    v18 = 0x746867696CLL;
  }

  if (*(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v18);
  v19, v21, v22, v23, v24, v25, v26, v27;
  v28._countAndFlagsBits = 95;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = Double.description.getter();
  object = v29._object;
  String.append(_:)(v29);
  object, v31, v32, v33, v34, v35, v36, v37;
  v38 = v64;
  static String.Encoding.utf8.getter();
  v39 = String.data(using:allowLossyConversion:)();
  v41 = v40;
  result = (*(v8 + 8))(v10, v7);
  if (v41 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v38, v43, v44, v45, v46, v47, v48, v49;
    sub_1000E5158(&qword_100200E00, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10005FC70(v39, v41);
    sub_1000E4F78(v39, v41, v4);
    sub_1000882D4(v39, v41);
    v50 = v59;
    dispatch thunk of HashFunction.finalize()();
    (*(v58 + 8))(v4, v2);
    v65 = v5;
    v66 = sub_1000E5158(&qword_100200E08, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v51 = sub_10005BAD0(&v63);
    v52 = v60;
    (*(v60 + 16))(v51, v50, v5);
    sub_1000442A0(&v63, v65);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v53 = v61;
    v54 = v62;
    sub_100044554(&v63);
    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    sub_10005F18C(v53, v54);
    v56 = sub_1000882D4(v39, v41);
    (*(v52 + 8))(v50, v5, v56);
    return countAndFlagsBits;
  }

  return result;
}

id sub_1000E4E7C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000E4F78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_1000E5158(&qword_100200E00, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000E51A0(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1000E51A0(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_1000E5158(&qword_100200E00, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000E5158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E51A0(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000E5158(&qword_100200E00, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *sub_1000E5280@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000E5520(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000E55D8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000E5654(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000E5314()
{
  v1 = [objc_allocWithZone(VPPresenterView) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1001FC6E8 != -1)
  {
    swift_once();
  }

  if (!os_variant_has_internal_content() || (v2 = [objc_opt_self() standardUserDefaults], v3 = String._bridgeToObjectiveC()(), v4 = objc_msgSend(v2, "BOOLForKey:", v3), v2, v3, v5 = v1, (v4 & 1) == 0))
  {
    v5 = [v1 layer];

    [v5 setDisableUpdateMask:272];
  }

  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView) = v1;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshInterval) = 0x4010000000000000;
  v6 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_targetManager;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  *(v0 + v6) = qword_10020A5F8;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E5520(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000E55D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000E5654(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1000E572C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000AF424();
  v5 = static OS_os_log.disabled.getter();
  if (qword_1001FC7B8 != -1)
  {
    swift_once();
  }

  if (byte_100200E18 == 1)
  {
    v6 = OS_os_log.init(subsystem:category:)();

    v5 = v6;
  }

  *a4 = v5;
}

uint64_t sub_1000E57EC()
{
  result = sub_1000E5810();
  byte_100200E18 = result & 1;
  return result;
}

uint64_t sub_1000E5810()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(v1);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return has_internal_content;
  }
}

id sub_1000E59C0()
{
  v0[OBJC_IVAR____TtC11Diagnostics23NoSessionViewController__showingDeviceInformation] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics23NoSessionViewController__deviceInformationView] = 0;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100191030);
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v2, v4, v5, v6, v7, v8, v9, v10;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000017, 0x8000000100191050);
  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v21 = String._bridgeToObjectiveC()();
  v24.receiver = v0;
  v24.super_class = type metadata accessor for NoSessionViewController();
  v22 = objc_msgSendSuper2(&v24, "initWithTitle:detailText:symbolName:contentLayout:", v3, v13, v21, 2);

  return v22;
}

void sub_1000E5AE8()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for NoSessionViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  [v0 setModalPresentationStyle:2];
  v2 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010018C890);
  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;
  [v2 setTitle:v5 forState:0];

  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  v14 = v2;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v14 addAction:v15 forControlEvents:{64, 0, 0, 0, sub_1000E6378, v13}];

  v16 = [v1 buttonTray];
  [v16 addButton:v14];

  if ([objc_opt_self() isCheckerBoardActive])
  {
    [v1 setupInfoButton];
  }
}

void sub_1000E5CD0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_100088E48(0, a2);
  }

  else
  {

    sub_1000F6FF8(9);
  }
}

uint64_t sub_1000E5DD4(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for NoSessionViewController();
  v32.receiver = v1;
  v32.super_class = v15;
  objc_msgSendSuper2(&v32, "viewDidAppear:", a1 & 1);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if ((v18 & 1) != 0 || (v19 = [objc_msgSend(objc_opt_self() "currentPlatform")], result = swift_unknownObjectRelease(), v19))
  {
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v25 = v6;
    v26 = v8;
    v27 = *(v9 + 8);
    v27(v11, v8);
    aBlock[4] = sub_1000E6204;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C5098;
    v22 = _Block_copy(aBlock);
    v23 = v28;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    v24 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v22);

    (*(v4 + 8))(v24, v3);
    (*(v30 + 8))(v23, v25);
    return (v27)(v14, v26);
  }

  return result;
}

id sub_1000E62C0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NoSessionViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1000E6328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000E6340()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_1000E6380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v21 = a1;
  v22 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057B68();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  v17 = v22;
  v16[2] = v21;
  v16[3] = v17;
  v18 = v24;
  v16[4] = v23;
  v16[5] = v18;
  aBlock[4] = sub_1000E9380;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5250;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v25);

  return result;
}

void sub_1000E66D8(uint64_t a1, DARootViewController *a2)
{
  v4 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  if ([objc_opt_self() isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0x6C6172656E6567;
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, v7, v8, isUniquelyReferenced_nonNull_native);
    v8, v10, v11, v12, v13, v14, v15, v16;
    off_100200F00 = v43;
    swift_endAccess();
    sub_100036678(2);
  }

  else
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v17 = qword_10020A4F8;
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Checking AST 2 activity", 23, 2, &_mh_execute_header, v17, v18, &_swiftEmptyArrayStorage);
    v19 = qword_10020A508;
    if (qword_10020A508)
    {
      v20 = qword_10020A500;

      if (sub_1000E6AB8(762733924, 0xE400000000000000, v20, v19))
      {
        v28 = type metadata accessor for TaskPriority();
        (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
        v29 = swift_allocObject();
        v29[2] = 0;
        v29[3] = 0;
        v29[4] = v20;
        v29[5] = v19;
        v29[6] = sub_100036678;
        v29[7] = 0;
        sub_1000539D8(0, 0, v6, &unk_100183D40, v29);

        return;
      }

      v19, v21, v22, v23, v24, v25, v26, v27;
    }

    v30 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
    v31 = qword_10020A508;
    if (qword_10020A508)
    {

      v32 = String._bridgeToObjectiveC()();
      v31, v33, v34, v35, v36, v37, v38, v39;
    }

    else
    {
      v32 = 0;
    }

    v40 = swift_allocObject();
    v40[2] = a1;
    v40[3] = a2;
    v40[4] = sub_100036678;
    v40[5] = 0;
    aBlock[4] = sub_1000E961C;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E73D8;
    aBlock[3] = &unk_1001C5480;
    v41 = _Block_copy(aBlock);

    [v30 checkAvailabilityWithTicketNumber:v32 timeout:0 exitWhenDone:v41 completion:30.0];
    _Block_release(v41);
  }
}

uint64_t sub_1000E6AB8(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4)
{

  v11 = String.Iterator.next()();
  object = v11.value._object;
  if (v11.value._object)
  {
    countAndFlagsBits = v11.value._countAndFlagsBits;
    v13 = v11.value._object;
    do
    {
      v43 = String.Iterator.next()();
      if (!v43.value._object)
      {
        v13, 0, v37, v38, v39, v40, v41, v42;
        a4, v66, v67, v68, v69, v70, v71, v72;
        a2, v73, v74, v75, v76, v77, v78, v79;
        return 1;
      }

      if (countAndFlagsBits == v43.value._countAndFlagsBits && v13 == v43.value._object)
      {
        v13, v43.value._object, v43.value._countAndFlagsBits, v38, v39, v40, v41, v42;
        v43.value._object, v44, v45, v46, v47, v48, v49, v50;
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13, v15, v16, v17, v18, v19, v20, v21;
        v43.value._object, v22, v23, v24, v25, v26, v27, v28;
        if ((v14 & 1) == 0)
        {
          a4, v29, v30, v31, v32, v33, v34, v35;
          v65 = a2;
LABEL_14:
          v65, v58, v59, v60, v61, v62, v63, v64;
          return 0;
        }
      }

      v36 = String.Iterator.next()();
      object = v36.value._object;
      countAndFlagsBits = v36.value._countAndFlagsBits;
      v13 = v36.value._object;
    }

    while (v36.value._object);
  }

  a4, object, v5, v6, v7, v8, v9, v10;
  v51 = String.Iterator.next()().value._object;
  a2, v51, v52, v53, v54, v55, v56, v57;
  if (v51)
  {
    v65 = v51;
    goto LABEL_14;
  }

  return 1;
}

double sub_1000E6C28(uint64_t a1, DARootViewController *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v8 = qword_10020A4F8;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Checking for session availability", 33, 2, &_mh_execute_header, v8, v9, &_swiftEmptyArrayStorage);

  sub_1000E851C(a1, a2, a1, a2, a3, a4);
  a2, v10, v11, v12, v13, v14, v15, v16;

  return result;
}

uint64_t sub_1000E6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000E6D38, 0, 0);
}

uint64_t sub_1000E6D38()
{
  type metadata accessor for TimberLorryDevelopmentConnection(0);
  swift_allocObject();
  v0[6] = sub_10005EEA4();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000E6DF0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_10005D144(v3, v2);
}

uint64_t sub_1000E6DF0(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1000E6F8C;
  }

  else
  {

    *(v4 + 72) = a1 & 1;
    v5 = sub_1000E6F24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E6F24()
{
  (*(v0 + 32))(*(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E6F8C()
{

  v1 = static os_log_type_t.error.getter();
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A4F8;
  if (os_log_type_enabled(qword_10020A4F8, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Failed to get TimberLorry development case status: %@", v3, 0xCu);
    sub_100082D10(v4);
  }

  (*(v0 + 32))(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000E70FC(char a1, id a2, uint64_t a3, uint64_t a4, DARootViewController *a5, uint64_t (*a6)(uint64_t))
{
  if (a5 && !qword_10020A508 && (v20 = a1, v21 = [a2 deviceSerialNumber], static String._unconditionallyBridgeFromObjectiveC(_:)(), v23 = v22, v21, sub_100079A64(), v24 = StringProtocol.caseInsensitiveCompare<A>(_:)(), v23, v25, v26, v27, v28, v29, v30, v31, a1 = v20, v24))
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(0, a4, a5, isUniquelyReferenced_nonNull_native);
    off_100200F00 = v34;
    swift_endAccess();
    v9 = 0;
  }

  else
  {
    if (a1)
    {
      v9 = sub_1000E7354();
    }

    else
    {
      v9 = 0;
    }

    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a5)
    {
      v10 = a5;
    }

    else
    {
      a4 = 0x6C6172656E6567;
      v10 = 0xE700000000000000;
    }

    swift_beginAccess();

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v33 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(v9, a4, v10, v11);
    v10, v12, v13, v14, v15, v16, v17, v18;
    off_100200F00 = v33;
    swift_endAccess();
  }

  return a6(v9);
}

unint64_t sub_1000E7354()
{
  if ([v0 sessionType])
  {
    v1 = [v0 sessionType];
    if (v1 >= 7)
    {
      return 0;
    }

    else
    {
      return 0x1010101020300uLL >> (8 * v1);
    }
  }

  else if ([v0 isGuidedSessionType])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1000E73D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a3;
  v8 = a4;
  v7(a2, v9, a4);
}

void sub_1000E746C(uint64_t a1, DARootViewController *a2, void *a3)
{
  v6 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  a3;
  if ([v10 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v11 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v11 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v11, isUniquelyReferenced_nonNull_native);
    v11, v13, v14, v15, v16, v17, v18, v19;
    off_100200F00 = v46;
    swift_endAccess();
    sub_1000371BC(2);
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v20 = qword_10020A4F8;
  v21 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Checking AST 2 activity", 23, 2, &_mh_execute_header, v20, v21, &_swiftEmptyArrayStorage);
  v22 = qword_10020A508;
  if (qword_10020A508)
  {
    v23 = qword_10020A500;

    if (sub_1000E6AB8(762733924, 0xE400000000000000, v23, v22))
    {
      v31 = type metadata accessor for TaskPriority();
      (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v23;
      v32[5] = v22;
      v32[6] = sub_1000E93E0;
      v32[7] = v9;

      sub_1000539D8(0, 0, v8, &unk_100183D48, v32);

LABEL_13:

      return;
    }

    v22, v24, v25, v26, v27, v28, v29, v30;
  }

  v33 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  v34 = qword_10020A508;
  if (qword_10020A508)
  {

    v35 = String._bridgeToObjectiveC()();
    v34, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    v35 = 0;
  }

  v43 = swift_allocObject();
  v43[2] = a1;
  v43[3] = a2;
  v43[4] = sub_1000E93E0;
  v43[5] = v9;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C5520;
  v44 = _Block_copy(aBlock);

  [v33 checkAvailabilityWithTicketNumber:v35 timeout:0 exitWhenDone:v44 completion:30.0];
  _Block_release(v44);
}

void sub_1000E78B0(uint64_t a1, DARootViewController *a2, void *a3, void *a4)
{
  v8 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = objc_opt_self();
  swift_unknownObjectRetain();
  if ([v12 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v13 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v13 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v13, isUniquelyReferenced_nonNull_native);
    v13, v15, v16, v17, v18, v19, v20, v21;
    off_100200F00 = v48;
    swift_endAccess();
    sub_10010523C(2u, a3, a4);
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v22 = qword_10020A4F8;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Checking AST 2 activity", 23, 2, &_mh_execute_header, v22, v23, &_swiftEmptyArrayStorage);
  v24 = qword_10020A508;
  if (qword_10020A508)
  {
    v25 = qword_10020A500;

    if (sub_1000E6AB8(762733924, 0xE400000000000000, v25, v24))
    {
      v33 = type metadata accessor for TaskPriority();
      (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v25;
      v34[5] = v24;
      v34[6] = sub_1000E93D0;
      v34[7] = v11;

      sub_1000539D8(0, 0, v10, &unk_100183D30, v34);

LABEL_13:

      return;
    }

    v24, v26, v27, v28, v29, v30, v31, v32;
  }

  v35 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  v36 = qword_10020A508;
  if (qword_10020A508)
  {

    v37 = String._bridgeToObjectiveC()();
    v36, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    v37 = 0;
  }

  v45 = swift_allocObject();
  v45[2] = a1;
  v45[3] = a2;
  v45[4] = sub_1000E93D0;
  v45[5] = v11;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C5368;
  v46 = _Block_copy(aBlock);

  [v35 checkAvailabilityWithTicketNumber:v37 timeout:0 exitWhenDone:v46 completion:30.0];
  _Block_release(v46);
}

void sub_1000E7D04(uint64_t a1, DARootViewController *a2, void *a3)
{
  v6 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  v11 = a3;
  if ([v10 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v12 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v12, isUniquelyReferenced_nonNull_native);
    v12, v14, v15, v16, v17, v18, v19, v20;
    off_100200F00 = v47;
    swift_endAccess();
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v21 = qword_10020A4F8;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Checking AST 2 activity", 23, 2, &_mh_execute_header, v21, v22, &_swiftEmptyArrayStorage);
  v23 = qword_10020A508;
  if (qword_10020A508)
  {
    v24 = qword_10020A500;

    if (sub_1000E6AB8(762733924, 0xE400000000000000, v24, v23))
    {
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v24;
      v33[5] = v23;
      v33[6] = sub_1000E93D8;
      v33[7] = v9;

      sub_1000539D8(0, 0, v8, &unk_100183D38, v33);

LABEL_13:

      return;
    }

    v23, v25, v26, v27, v28, v29, v30, v31;
  }

  v34 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  v35 = qword_10020A508;
  if (qword_10020A508)
  {

    v36 = String._bridgeToObjectiveC()();
    v35, v37, v38, v39, v40, v41, v42, v43;
  }

  else
  {
    v36 = 0;
  }

  v44 = swift_allocObject();
  v44[2] = a1;
  v44[3] = a2;
  v44[4] = sub_1000E93D8;
  v44[5] = v9;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C5408;
  v45 = _Block_copy(aBlock);

  [v34 checkAvailabilityWithTicketNumber:v36 timeout:0 exitWhenDone:v45 completion:30.0];
  _Block_release(v45);
}

uint64_t sub_1000E8138(uint64_t a1, uint64_t a2, DARootViewController *a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1001FC7C0 != -1)
  {
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  if (a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0x6C6172656E6567;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = off_100200F00;
  off_100200F00 = 0x8000000000000000;
  sub_100142160(a1, v7, v8, isUniquelyReferenced_nonNull_native);
  v8, v10, v11, v12, v13, v14, v15, v16;
  off_100200F00 = v19;
  swift_endAccess();
  return a4(a1);
}

double sub_1000E8258(uint64_t a1, uint64_t a2, DARootViewController *a3, uint64_t (*a4)(uint64_t), __n128 a5)
{
  if ((a1 - 1) > 1u)
  {
    if (qword_1001FC7E8 != -1)
    {
      swift_once();
    }

    if (SessionManager.currentSession.getter())
    {
      Session.status.getter();
      v19 = SessionStatus.rawValue.getter();
      if (v19 == SessionStatus.rawValue.getter())
      {
        v20 = 0;
      }

      else
      {
        if (qword_1001FC7C0 != -1)
        {
          swift_once();
        }

        if (a3)
        {
          v21 = a2;
        }

        else
        {
          v21 = 0x6C6172656E6567;
        }

        if (a3)
        {
          v22 = a3;
        }

        else
        {
          v22 = 0xE700000000000000;
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = off_100200F00;
        off_100200F00 = 0x8000000000000000;
        v20 = 3;
        sub_100142160(3, v21, v22, isUniquelyReferenced_nonNull_native);
        v22, v24, v25, v26, v27, v28, v29, v30;
        off_100200F00 = v32;
        swift_endAccess();
      }

      sub_1000E8138(v20, a2, a3, a4);
    }

    else
    {

      sub_1000E8138(0, a2, a3, a4);
    }
  }

  else
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a3)
    {
      v9 = a3;
    }

    else
    {
      a2 = 0x6C6172656E6567;
      v9 = 0xE700000000000000;
    }

    swift_beginAccess();

    v10 = swift_isUniquelyReferenced_nonNull_native();
    v31 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(a1, a2, v9, v10);
    v9, v11, v12, v13, v14, v15, v16, v17;
    off_100200F00 = v31;
    swift_endAccess();
    a4(a1);
  }

  return result;
}

void sub_1000E851C(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v12 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v16 = objc_opt_self();

  if ([v16 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v17 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v17 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v17, isUniquelyReferenced_nonNull_native);
    v17, v19, v20, v21, v22, v23, v24, v25;
    off_100200F00 = v53;
    swift_endAccess();
    sub_1000E8258(2, a3, a4, a5, v26);
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v27 = qword_10020A4F8;
  v28 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Checking AST 2 activity", 23, 2, &_mh_execute_header, v27, v28, &_swiftEmptyArrayStorage);
  v29 = qword_10020A508;
  if (qword_10020A508)
  {
    v30 = qword_10020A500;

    if (sub_1000E6AB8(762733924, 0xE400000000000000, v30, v29))
    {
      v38 = type metadata accessor for TaskPriority();
      (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v30;
      v39[5] = v29;
      v39[6] = sub_1000E938C;
      v39[7] = v15;

      sub_1000539D8(0, 0, v14, &unk_100183D20, v39);

LABEL_13:

      return;
    }

    v29, v31, v32, v33, v34, v35, v36, v37;
  }

  v40 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  v41 = qword_10020A508;
  if (qword_10020A508)
  {

    v42 = String._bridgeToObjectiveC()();
    v41, v43, v44, v45, v46, v47, v48, v49;
  }

  else
  {
    v42 = 0;
  }

  v50 = swift_allocObject();
  v50[2] = a1;
  v50[3] = a2;
  v50[4] = sub_1000E938C;
  v50[5] = v15;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C52C8;
  v51 = _Block_copy(aBlock);

  [v40 checkAvailabilityWithTicketNumber:v42 timeout:0 exitWhenDone:v51 completion:30.0];
  _Block_release(v51);
}

void sub_1000E8994(uint64_t a1, DARootViewController *a2, void *a3)
{
  v6 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  v11 = a3;
  if ([v10 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v12 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v12, isUniquelyReferenced_nonNull_native);
    v12, v14, v15, v16, v17, v18, v19, v20;
    off_100200F00 = v47;
    swift_endAccess();
    sub_1000F64F4(2u, v11);
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v21 = qword_10020A4F8;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Checking AST 2 activity", 23, 2, &_mh_execute_header, v21, v22, &_swiftEmptyArrayStorage);
  v23 = qword_10020A508;
  if (qword_10020A508)
  {
    v24 = qword_10020A500;

    if (sub_1000E6AB8(762733924, 0xE400000000000000, v24, v23))
    {
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v24;
      v33[5] = v23;
      v33[6] = sub_1000E9370;
      v33[7] = v9;

      sub_1000539D8(0, 0, v8, &unk_100183D18, v33);

LABEL_13:

      return;
    }

    v23, v25, v26, v27, v28, v29, v30, v31;
  }

  v34 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  v35 = qword_10020A508;
  if (qword_10020A508)
  {

    v36 = String._bridgeToObjectiveC()();
    v35, v37, v38, v39, v40, v41, v42, v43;
  }

  else
  {
    v36 = 0;
  }

  v44 = swift_allocObject();
  v44[2] = a1;
  v44[3] = a2;
  v44[4] = sub_1000E9370;
  v44[5] = v9;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C51D8;
  v45 = _Block_copy(aBlock);

  [v34 checkAvailabilityWithTicketNumber:v36 timeout:0 exitWhenDone:v45 completion:30.0];
  _Block_release(v45);
}

void sub_1000E8DD8(uint64_t a1, DARootViewController *a2, void *a3)
{
  v6 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  v11 = a3;
  if ([v10 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v12 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v12, isUniquelyReferenced_nonNull_native);
    v12, v14, v15, v16, v17, v18, v19, v20;
    off_100200F00 = v47;
    swift_endAccess();
    *(*&v11[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager] + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) = 1;
    sub_100151130();
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v21 = qword_10020A4F8;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Checking AST 2 activity", 23, 2, &_mh_execute_header, v21, v22, &_swiftEmptyArrayStorage);
  v23 = qword_10020A508;
  if (qword_10020A508)
  {
    v24 = qword_10020A500;

    if (sub_1000E6AB8(762733924, 0xE400000000000000, v24, v23))
    {
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v24;
      v33[5] = v23;
      v33[6] = sub_1000E9270;
      v33[7] = v9;

      sub_1000539D8(0, 0, v8, &unk_100183D10, v33);

LABEL_13:

      return;
    }

    v23, v25, v26, v27, v28, v29, v30, v31;
  }

  v34 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  v35 = qword_10020A508;
  if (qword_10020A508)
  {

    v36 = String._bridgeToObjectiveC()();
    v35, v37, v38, v39, v40, v41, v42, v43;
  }

  else
  {
    v36 = 0;
  }

  v44 = swift_allocObject();
  v44[2] = a1;
  v44[3] = a2;
  v44[4] = sub_1000E9270;
  v44[5] = v9;
  aBlock[4] = sub_1000E9278;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C5138;
  v45 = _Block_copy(aBlock);

  [v34 checkAvailabilityWithTicketNumber:v36 timeout:0 exitWhenDone:v45 completion:30.0];
  _Block_release(v45);
}

uint64_t sub_1000E9238()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_1000E9284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000E929C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000494BC;

  return sub_1000E6D14(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000E9398()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1000E93E8(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 48, 7, v9);
}

uint64_t sub_1000E9428()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 64, 7, v8);
}

uint64_t sub_1000E9470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003DEC8;

  return sub_1000E6D14(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1000E9568()
{
  result = qword_100200F10;
  if (!qword_100200F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200F10);
  }

  return result;
}

id sub_1000E9708(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseStackView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000E9760(double a1, double a2, double a3)
{
  v4 = v3;
  v10 = *(v3 + 16);
  v8 = (v3 + 16);
  v9 = v10;
  if (*(v10 + 16) == 10)
  {
    sub_10003D33C(0, 1);
    v9 = *v8;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000D4D64(0, *&v9->hostAppBundleIdentifier[8] + 1, 1, v9, v12, v13, v14, v15);
    *v8 = v9;
  }

  v17 = *&v9->hostAppBundleIdentifier[8];
  v16 = *v9->responder;
  if (v17 >= v16 >> 1)
  {
    v9 = sub_1000D4D64((v16 > 1), v17 + 1, 1, v9, v12, v13, v14, v15);
  }

  *&v9->hostAppBundleIdentifier[8] = v17 + 1;
  v18 = v9 + 3 * v17;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  *v8 = v9;
  if (v17 != 9)
  {
    return 2;
  }

  __asm { FMOV            V1.2D, #10.0 }

  v24 = vmovn_s64(vcgtq_f64(vdivq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(*v9->remoteCardFilter, 0), *&v9->$__lazy_storage_$_enhancedLoggingCompletedNavigationController[7]), *&v9[1].hostAppBundleIdentifier[8]), *&v9[1].remoteCardFilter[8]), *&v9[2].super.super.super.super.isa), *v9[2].responder), *&v9[2].remoteCardFilter[16]), *v9[3].hostAppBundleIdentifier), *v9[3].remoteCardFilter), *&v9[3].$__lazy_storage_$_enhancedLoggingCompletedNavigationController[7]), _Q1), vdupq_n_s64(0x3F847AE147AE147BuLL)));
  if ((v24.i32[0] | v24.i32[1]))
  {
    v25 = (v4 + 24);
    if (*(v4 + 24))
    {
      goto LABEL_13;
    }

LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v25 = (v4 + 24);
  if ((*&v9->remoteCardFilter[16] + 0.0 + *v9[1].hostAppBundleIdentifier + *v9[1].remoteCardFilter + *&v9[1].$__lazy_storage_$_enhancedLoggingCompletedNavigationController[7] + *&v9[2].hostAppBundleIdentifier[8] + *&v9[2].remoteCardFilter[8] + *&v9[3].super.super.super.super.isa + *v9[3].responder + *&v9[3].remoteCardFilter[16] + *v9[4].hostAppBundleIdentifier) / 10.0 <= 0.01)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 2;
  }

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  result = 0;
LABEL_17:
  *v25 = result;
  return result;
}

uint64_t sub_1000E997C(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UserAccelerationBuffer.UserAcceleration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UserAccelerationBuffer.UserAcceleration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_1000E9D04(void *a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for CardStackView();
  if (UIFocusEnvironment.contains(_:)())
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v8 = qword_10020A4F8;
    v9 = static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)("Attempted to add a view that already exists elsewhere in the stack", 66, 2, &_mh_execute_header, v8, v9, &_swiftEmptyArrayStorage);
  }

  else
  {
    [a1 setClipsToBounds:1];
    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
    type metadata accessor for CardStackSubviewContainer();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v10[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] = a3 & 1;
    v11 = *&v10[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
    *&v10[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView] = a1;
    v12 = a1;
    sub_100135EA4(v11);
    sub_10013630C();

    sub_1000EADFC(v10, a2);
    v16.receiver = v3;
    v16.super_class = v7;
    objc_msgSendSuper2(&v16, "insertArrangedSubview:atIndex:", v10, a2);
    v13 = *&v3[OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler];
    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler + 8];

      v13(v15);
      sub_10003C52C(v13, v14);
    }
  }
}

void sub_1000E9EE4(void *a1, char a2)
{
  v3 = [v2 arrangedSubviews];
  v90 = sub_1000EB998();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_31;
  }

  v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v88 = v2;
  if (!v12)
  {
LABEL_32:
    v4, v5, v6, v7, v8, v9, v10, v11;
    goto LABEL_33;
  }

LABEL_3:
  v13 = 0;
  v14 = v4 & 0xC000000000000001;
  v91 = (v4 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v14)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= v91[2])
      {
        goto LABEL_30;
      }

      v15 = *(v4 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v12 = _CocoaArrayWrapper.endIndex.getter();
      v88 = v2;
      if (!v12)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

    type metadata accessor for CardStackSubviewContainer();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v2 = *(v18 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
      if (v2)
      {
        v19 = v16;
        v20 = v4;
        v21 = v14;
        v22 = v12;
        v23 = v2;
        v24 = a1;
        v2 = static NSObject.== infix(_:_:)();

        v12 = v22;
        v14 = v21;
        v4 = v20;

        if (v2)
        {
          break;
        }
      }
    }

    ++v13;
    if (v17 == v12)
    {
      goto LABEL_32;
    }
  }

  v32 = v24;
  v20, v25, v26, v27, v28, v29, v30, v31;
  v33 = swift_dynamicCastClass();
  v34 = v19;
  if (!v33)
  {
    goto LABEL_41;
  }

  v35 = v33;
  v36 = v88;
  v37 = [v88 arrangedSubviews];
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v38 >> 62)
  {
    v46 = _CocoaArrayWrapper.endIndex.getter();
    if (!v46)
    {
      goto LABEL_39;
    }

LABEL_17:
    v86 = v34;
    v92 = v35;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v46 < 0)
    {
      __break(1u);
      return;
    }

    v47 = v46;
    v48 = 0;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v57 = *(v38 + 8 * v48 + 32);
      }

      v49 = v57;
      v58 = [objc_allocWithZone(UIView) init];
      v59 = swift_dynamicCastClass();
      if (v59)
      {
        v60 = *(v59 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
        v60;

        if (!v60)
        {
          goto LABEL_21;
        }

        v49 = v58;
      }

LABEL_21:
      ++v48;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v47 == v48)
      {
        v38, v50, v51, v52, v53, v54, v55, v56;
        v35 = v92;
        v36 = v88;
        v34 = v86;
        goto LABEL_40;
      }
    }
  }

  v46 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
    goto LABEL_17;
  }

LABEL_39:
  v38, v39, v40, v41, v42, v43, v44, v45;
LABEL_40:
  v72 = sub_100150864(v32, &_swiftEmptyArrayStorage);
  v74 = v73;
  &_swiftEmptyArrayStorage, v73, v75, v76, v77, v78, v79, v80;
  if (v74)
  {
LABEL_41:

LABEL_33:
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v61 = qword_10020A4F8;
    v62 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_10017EC00;
    *(v63 + 56) = v90;
    *(v63 + 64) = sub_1000EBAC0();
    *(v63 + 32) = a1;
    v64 = a1;
    os_log(_:dso:log:type:_:)("Arranged subviews does not contain view: %@, cannot perform remove", 66, 2, &_mh_execute_header, v61, v62, v63);

    v63, v65, v66, v67, v68, v69, v70, v71;
  }

  else
  {
    v93 = [objc_allocWithZone(UIView) init];
    [(DARootViewController *)v93 setClipsToBounds:1];
    [(DARootViewController *)v93 setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = swift_allocObject();
    *(v81 + 2) = v36;
    *(v81 + 3) = v35;
    *(v81 + 4) = v72;
    v82 = &v35[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
    v83 = *&v35[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
    v84 = *&v35[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion + 8];
    *v82 = sub_1000EBB9C;
    v82[1] = v81;
    v85 = v34;
    v36;
    sub_10003C52C(v83, v84);
    sub_1000EA498(v93, v32, a2 & 1);
  }
}

double sub_1000EA430(uint64_t a1, char *a2, unint64_t a3)
{
  sub_1000EB558(a2, a3);
  [a2 removeFromSuperview];
  v4 = &a2[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  v5 = *&a2[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  v6 = *&a2[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion + 8];
  *v4 = 0;
  *(v4 + 1) = 0;

  return sub_10003C52C(v5, v6);
}

void sub_1000EA498(DARootViewController *a1, void *a2, int a3)
{
  v162 = a3;
  v166 = a2;
  v163 = a1;
  v4 = [v3 arrangedSubviews];
  v167 = sub_1000EB998();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_33:
    v5, v6, v7, v8, v9, v10, v11, v12;
    goto LABEL_34;
  }

LABEL_3:
  v14 = 0;
  v15 = v5 & 0xC000000000000001;
  v16 = v5 & 0xFFFFFFFFFFFFFF8;
  v165 = v5;
  while (1)
  {
    if (v15)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v16 + 16))
      {
        goto LABEL_31;
      }

      v17 = *(v5 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_33;
      }

      goto LABEL_3;
    }

    v168 = type metadata accessor for CardStackSubviewContainer();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
      if (v21)
      {
        v22 = v18;
        v23 = v16;
        v24 = v15;
        v25 = v13;
        v26 = v21;
        v27 = v166;
        v28 = static NSObject.== infix(_:_:)();

        v13 = v25;
        v15 = v24;
        v16 = v23;
        v5 = v165;

        if (v28)
        {
          break;
        }
      }
    }

    ++v14;
    if (v19 == v13)
    {
      goto LABEL_33;
    }
  }

  v36 = v27;
  v165, v29, v30, v31, v32, v33, v34, v35;
  v37 = v168;
  v38 = swift_dynamicCastClass();
  if (!v38)
  {

    goto LABEL_34;
  }

  v165 = v22;
  v161 = v38;
  v39 = [v164 arrangedSubviews];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = v40;
  if (v40 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
    v50 = v36;
    if (!v49)
    {
      goto LABEL_40;
    }

LABEL_17:
    v169 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

    v51 = v40;
    v52 = 0;
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v61 = *&v51->remoteCardFilter[8 * v52];
      }

      v53 = v61;
      v62 = [objc_allocWithZone(UIView) init];
      v63 = swift_dynamicCastClass();
      if (v63)
      {
        v64 = *(v63 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
        v64;

        if (!v64)
        {
          v51 = v48;
          goto LABEL_21;
        }

        v53 = v62;
        v51 = v48;
      }

LABEL_21:
      ++v52;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = *&v169->hostAppBundleIdentifier[8];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v49 == v52)
      {
        v51, v54, v55, v56, v57, v58, v59, v60;
        v65 = v169;
        goto LABEL_41;
      }
    }
  }

  v49 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = v36;
  if (v49)
  {
    goto LABEL_17;
  }

LABEL_40:
  v40, v41, v42, v43, v44, v45, v46, v47;
  v65 = &_swiftEmptyArrayStorage;
LABEL_41:
  v14 = sub_100150864(v50, v65);
  v79 = v78;
  v65, v78, v80, v81, v82, v83, v84, v85;
  v48 = v165;
  if ((v79 & 1) == 0)
  {
    v86 = [v164 arrangedSubviews];
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v37 >> 62))
    {
      v94 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v94)
      {
LABEL_45:
        v48 = v14;
        v169 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v94 & 0x8000000000000000) == 0)
        {
          v95 = 0;
          while (1)
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v103 = *(v37 + 8 * v95 + 32);
            }

            v104 = v103;
            v105 = [objc_allocWithZone(UIView) init];
            v106 = swift_dynamicCastClass();
            if (v106)
            {
              v107 = *(v106 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
              v107;

              if (!v107)
              {
                goto LABEL_48;
              }

              v104 = v105;
            }

LABEL_48:
            ++v95;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (v94 == v95)
            {
              v37, v96, v97, v98, v99, v100, v101, v102;
              v109 = v169;
              v14 = v48;
              v48 = v165;
              goto LABEL_59;
            }
          }
        }

        __break(1u);
        goto LABEL_78;
      }

LABEL_58:
      v37, v87, v88, v89, v90, v91, v92, v93;
      v109 = &_swiftEmptyArrayStorage;
LABEL_59:
      v13 = v163;
      v169 = v163;
      __chkstk_darwin(v108);
      v160[2] = &v169;
      v110 = sub_1000785D4(sub_1000EBB18, v160, v109);
      v109, v111, v112, v113, v114, v115, v116, v117;
      if ((v110 & 1) == 0)
      {
        [v13 setClipsToBounds:1];
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        v145 = v161;
        v161[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] = v162 & 1;
        v146 = *&v145[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
        *&v145[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView] = v13;
        v147 = v13;
        sub_100135EA4(v146);
        sub_10013630C();

        v148 = v164;
        sub_1000EB558(v145, v14);
        sub_1000EADFC(v145, v14);
        [v148 layoutIfNeeded];
        v149 = *&v148[OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler];
        if (v149)
        {
          v150 = *&v148[OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler + 8];

          v149(v151);
          sub_10003C52C(v149, v150);
        }

        return;
      }

      if (qword_1001FC7B0 == -1)
      {
LABEL_61:
        v118 = qword_10020A4F8;
        v119 = static os_log_type_t.error.getter();
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v120 = swift_allocObject();
        *&v120->hostAppBundleIdentifier[8] = xmmword_10017EC10;
        *&v120->$__lazy_storage_$_enhancedLoggingCompletedNavigationController[7] = v167;
        v120[1].super.super.super.super.isa = sub_1000EBAC0();
        *v120->remoteCardFilter = v13;
        v121 = v13;
        v122 = [v164 arrangedSubviews];
        v123 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v123 >> 62)
        {
          v131 = _CocoaArrayWrapper.endIndex.getter();
          if (v131)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v131 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v131)
          {
LABEL_63:
            v165 = v120;
            LODWORD(v166) = v119;
            v167 = v118;
            v169 = &_swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            if (v131 < 0)
            {
              __break(1u);
              return;
            }

            v132 = 0;
            while (1)
            {
              if ((v123 & 0xC000000000000001) != 0)
              {
                v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v140 = *(v123 + 8 * v132 + 32);
              }

              v141 = v140;
              v142 = [objc_allocWithZone(UIView) init];
              v143 = swift_dynamicCastClass();
              if (v143)
              {
                v144 = *(v143 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
                v144;

                if (!v144)
                {
                  goto LABEL_66;
                }

                v141 = v142;
              }

LABEL_66:
              ++v132;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              if (v131 == v132)
              {
                v123, v133, v134, v135, v136, v137, v138, v139;
                v152 = v169;
                v118 = v167;
                v119 = v166;
                v120 = v165;
                goto LABEL_81;
              }
            }
          }
        }

        v123, v124, v125, v126, v127, v128, v129, v130;
        v152 = &_swiftEmptyArrayStorage;
LABEL_81:
        *v120[1].remoteCardFilter = sub_10003C49C(&qword_100201048, &qword_100183EB8);
        *&v120[1].remoteCardFilter[8] = sub_1000EBB38();
        *v120[1].hostAppBundleIdentifier = v152;
        os_log(_:dso:log:type:_:)("Attempted to swap in a view (%@) that already exists elsewhere in the stack: %@", 79, 2, &_mh_execute_header, v118, v119, v120);

        v120, v153, v154, v155, v156, v157, v158, v159;
        return;
      }

LABEL_78:
      swift_once();
      goto LABEL_61;
    }

LABEL_57:
    v94 = _CocoaArrayWrapper.endIndex.getter();
    if (v94)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_34:
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v66 = qword_10020A4F8;
  v67 = static os_log_type_t.error.getter();
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_10017EC00;
  *(v68 + 56) = v167;
  *(v68 + 64) = sub_1000EBAC0();
  v69 = v166;
  *(v68 + 32) = v166;
  v70 = v69;
  os_log(_:dso:log:type:_:)("Arranged subviews does not contain view: %@, cannot perform swap", 64, 2, &_mh_execute_header, v66, v67, v68);

  v68, v71, v72, v73, v74, v75, v76, v77;
}