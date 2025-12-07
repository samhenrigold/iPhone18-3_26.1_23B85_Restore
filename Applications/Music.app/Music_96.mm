void sub_100A83888(void *a1, void *a2, void *a3, void *a4, void *a5, _OWORD *a6, double a7, double a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a7;
  *(v20 + 56) = a8;
  *(v20 + 64) = a9;
  *(v20 + 72) = a10;
  v21 = a6[1];
  *(v20 + 80) = *a6;
  *(v20 + 96) = v21;
  *(v20 + 112) = a6[2];
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100A86448;
  *(v22 + 24) = v20;
  v35[4] = sub_1001EC788;
  v35[5] = v22;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  v35[2] = sub_10006BD7C;
  v35[3] = &unk_1010DCFD8;
  v23 = _Block_copy(v35);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;

  v28 = [a1 imageWithActions:v23];
  _Block_release(v23);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    v29 = [v28 CGImage];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_allocWithZone(CIImage) initWithCGImage:v29];
      v32 = [v31 imageByClampingToExtent];
      v33 = [v32 imageByApplyingGaussianBlurWithSigma:20.0];
      [v31 extent];
      v34 = [v33 imageByCroppingToRect:?];
      [objc_allocWithZone(UIImage) initWithCIImage:v34];
    }

    else
    {
    }
  }
}

uint64_t sub_100A83B40(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v9 = type metadata accessor for CGPathFillRule();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 CGContext];
  v15 = [a6 colorWithAlphaComponent:0.55];
  v16 = [v15 CGColor];

  CGContextSetFillColorWithColor(v14, v16);
  Mutable = CGPathCreateMutable();
  CGMutablePathRef.addEllipse(in:transform:)();
  v18 = [a1 CGContext];
  CGContextAddPath(v18, Mutable);

  v19 = [a1 CGContext];
  (*(v10 + 104))(v13, enum case for CGPathFillRule.winding(_:), v9);
  CGContextRef.fillPath(using:)();

  return (*(v10 + 8))(v13, v9);
}

void sub_100A83D44(void *a1, void *a2, void *a3, void *a4, double a5, CGFloat a6)
{
  if (qword_1011A6AB8 != -1)
  {
    swift_once();
  }

  v12 = qword_101219DA8;
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBEE70;
  *(v13 + 32) = [a2 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  *(v13 + 56) = [a4 CGColor];
  *(v13 + 64) = [a3 CGColor];
  *(v13 + 72) = [a3 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1010C87C8);

  if (v15)
  {
    v16 = [a1 CGContext];
    v31.x = 0.0;
    v31.y = 0.0;
    v34.x = 0.0;
    v34.y = a6;
    CGContextDrawLinearGradient(v16, v15, v31, v34, 0);
  }

  v17 = [a1 CGContext];
  CGContextSaveGState(v17);

  v18 = a5 * 0.5;
  [a1 clipToRect:{v18, 0.0, v18, a6}];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBEE70;
  *(v19 + 32) = [a2 CGColor];
  *(v19 + 40) = [a2 CGColor];
  *(v19 + 48) = [a3 CGColor];
  *(v19 + 56) = [a4 CGColor];
  *(v19 + 64) = [a3 CGColor];
  *(v19 + 72) = [a3 CGColor];
  v20 = Array._bridgeToObjectiveC()().super.isa;

  v21 = CGGradientCreateWithColors(v12, v20, dbl_1010C8818);

  if (v21)
  {
    v22 = [a1 CGContext];
    v35.y = 0.0;
    v32.x = v18;
    v32.y = a6;
    v35.x = v18;
    CGContextDrawLinearGradient(v22, v21, v32, v35, 0);
  }

  v23 = [a1 CGContext];
  CGContextRestoreGState(v23);

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6D0;
  *(v24 + 32) = [a2 CGColor];
  v25 = [a2 colorWithAlphaComponent:0.0];
  v26 = [v25 CGColor];

  *(v24 + 40) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = CGGradientCreateWithColors(v12, v27, dbl_1010C8868);

  if (v28)
  {
    v29 = [a1 CGContext];
    v36.y = a6 * 0.5;
    v33.x = 0.0;
    v33.y = 0.0;
    v36.x = 0.0;
    CGContextDrawLinearGradient(v29, v28, v33, v36, 0);
  }
}

void sub_100A841DC(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a7 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  v15 = 0.0;
  [a1 fillRect:{0.0, 0.0, a4, a5}];
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100EBE270;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a3 CGColor];
  v17 = [a7 colorWithAlphaComponent:0.0];
  v18 = [v17 CGColor];

  *(v16 + 48) = v18;
  _s3__C7CGColorCMa_0(0);
  colors = Array._bridgeToObjectiveC()().super.isa;

  if (qword_1011A6AB8 != -1)
  {
    swift_once();
  }

  v19 = 0;
  v20 = qword_101219DA8;
  v21 = a4 / 9.0;
  while (1)
  {
    v22 = *(&off_1010C8878 + v19 + 32);
    v23 = CGGradientCreateWithColors(v20, colors, *(&off_1010C8B08 + v19 + 32) + 4);
    if (v23)
    {
      v24 = v23;
      v25 = v22 * a5;
      v26 = [a1 CGContext];
      CGContextSaveGState(v26);

      [a1 clipToRect:{v15, a5 - v25, v21, v25}];
      v27 = [a1 CGContext];
      v38.x = v15;
      v38.y = a5;
      v40.x = v15;
      v40.y = a5 - v25;
      CGContextDrawLinearGradient(v27, v24, v38, v40, 0);

      v28 = [a1 CGContext];
      CGContextRestoreGState(v28);
    }

    if (v19 == 64)
    {
      break;
    }

    v15 = v21 + v15;
    v19 += 8;
  }

  sub_10010FC20(&qword_1011AE400, &qword_100EF9AD0);
  swift_arrayDestroy();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBC6D0;
  *(v29 + 32) = [a7 CGColor];
  v30 = [a7 colorWithAlphaComponent:0.0];
  v31 = [v30 CGColor];

  *(v29 + 40) = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = CGGradientCreateWithColors(v20, isa, dbl_1010C8AF8);

  if (v33)
  {
    v34 = [a1 CGContext];
    v39.x = a4 * 0.145;
    v39.y = a5 * 0.23;
    v41.x = a4 * 0.145;
    v41.y = a5 * 0.23;
    CGContextDrawRadialGradient(v34, v33, v39, 0.0, v41, a4 * 0.3715, 0);

    v35 = v34;
  }

  else
  {
    v35 = colors;
  }
}

void sub_100A84628(void *a1, void *a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  if (qword_1011A6AB8 != -1)
  {
    swift_once();
  }

  v13 = qword_101219DA8;
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBEE70;
  *(v14 + 32) = [a2 CGColor];
  *(v14 + 40) = [a6 CGColor];
  *(v14 + 48) = [a7 CGColor];
  *(v14 + 56) = [a2 CGColor];
  *(v14 + 64) = [a6 CGColor];
  *(v14 + 72) = [a7 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = CGGradientCreateWithColors(v13, isa, dbl_1010C8B90);

  if (v16)
  {
    v17 = [a1 CGContext];
    v27.x = a3 * 0.5;
    v27.y = a4 * 0.5;
    CGContextDrawConicGradient(v17, v16, v27, -0.77562432);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBE270;
  *(v18 + 32) = [a2 CGColor];
  v19 = [a2 colorWithAlphaComponent:0.7];
  v20 = [v19 CGColor];

  *(v18 + 40) = v20;
  v21 = [a2 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v18 + 48) = v22;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = CGGradientCreateWithColors(v13, v23, dbl_1010C8BE0);

  if (v24)
  {
    v25 = [a1 CGContext];
    v29.y = a4 * 0.5;
    v28.x = 0.0;
    v28.y = 0.0;
    v29.x = 0.0;
    CGContextDrawLinearGradient(v25, v24, v28, v29, 0);
  }
}

void sub_100A84984(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  if (qword_1011A6AB8 != -1)
  {
    swift_once();
  }

  v12 = qword_101219DA8;
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBE270;
  *(v13 + 32) = [a7 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1010C8C18);

  if (v15)
  {
    v16 = [a1 CGContext];
    v35.x = 0.0;
    v35.y = 0.0;
    v38.x = 0.0;
    v38.y = a5;
    CGContextDrawLinearGradient(v16, v15, v35, v38, 0);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBE270;
  *(v18 + 32) = [a7 CGColor];
  *(v18 + 40) = [a7 CGColor];
  v19 = [a7 colorWithAlphaComponent:0.0];
  v20 = [v19 CGColor];

  *(v18 + 48) = v20;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  v22 = CGGradientCreateWithColors(DeviceRGB, v21, dbl_1010C8C50);

  if (v22)
  {
    v23 = [a1 CGContext];
    v36.x = a4 * 0.5;
    v36.y = a5 * 0.907407407;
    v39.y = a5 * 0.5;
    v39.x = a4 * 0.5;
    CGContextDrawRadialGradient(v23, v22, v36, a4 * 0.0185185185, v39, a4 * 0.472222222, 3u);
  }

  v24 = CGColorSpaceCreateDeviceRGB();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100EBDC10;
  *(v25 + 32) = [a2 CGColor];
  *(v25 + 40) = [a2 CGColor];
  v26 = [a7 colorWithAlphaComponent:0.0];
  v27 = [v26 CGColor];

  *(v25 + 48) = v27;
  v28 = [a7 colorWithAlphaComponent:0.0];
  v29 = [v28 CGColor];

  *(v25 + 56) = v29;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  v31 = CGGradientCreateWithColors(v24, v30, dbl_1010C8C88);

  if (v31)
  {
    v33 = [a1 CGContext];
    v37.x = a4 * 0.5;
    v37.y = a5 * 0.907407407;
    v40.y = a5 * 0.5;
    v40.x = a4 * 0.5;
    CGContextDrawRadialGradient(v33, v31, v37, a4 * 0.0185185185, v40, a4 * 0.472222222, 3u);
  }
}

void sub_100A84DF4(double a1, double a2, double a3, double a4)
{
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    [v10 drawInRect:{a1, a2, a3, a4}];
  }

  else
  {
    __break(1u);
  }
}

void sub_100A84F0C(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, void *a11, void *a12)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBDC10;
  *(v24 + 32) = [a2 CGColor];
  *(v24 + 40) = [a2 CGColor];
  *(v24 + 48) = [a3 CGColor];
  *(v24 + 56) = [a11 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = CGGradientCreateWithColors(DeviceRGB, isa, dbl_1010C8CC8);

  if (v26)
  {
    v27 = [a1 CGContext];
    v48.x = a4 * 0.324074074;
    v51.x = a4 * 0.724074074;
    v48.y = 0.0;
    v51.y = a5;
    CGContextDrawLinearGradient(v27, v26, v48, v51, 3u);
  }

  v28 = [a1 CGContext];
  CGContextSaveGState(v28);

  v29 = [a1 CGContext];
  CGContextTranslateCTM(v29, 0.0, a9);

  v30 = [a1 CGContext];
  CGContextScaleCTM(v30, 1.0, -1.0);

  v31 = [a1 CGContext];
  v32 = [a12 CGImage];
  if (v32)
  {
    v33 = v32;
    v54.origin.x = a6;
    v54.origin.y = a7;
    v54.size.width = a8;
    v54.size.height = a9;
    CGContextClipToMask(v31, v54, v32);

    v34 = CGColorSpaceCreateDeviceRGB();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100EBDC10;
    *(v35 + 32) = [a11 CGColor];
    *(v35 + 40) = [a3 CGColor];
    *(v35 + 48) = [a2 CGColor];
    *(v35 + 56) = [a2 CGColor];
    v36 = Array._bridgeToObjectiveC()().super.isa;

    v37 = CGGradientCreateWithColors(v34, v36, dbl_1010C8D08);

    if (v37)
    {
      v38 = [a1 CGContext];
      v49.y = 0.0;
      v52.x = 0.0;
      v49.x = a4;
      v52.y = a5;
      CGContextDrawLinearGradient(v38, v37, v49, v52, 0);
    }

    v39 = [a1 CGContext];
    CGContextRestoreGState(v39);

    v40 = CGColorSpaceCreateDeviceRGB();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100EBC6D0;
    *(v41 + 32) = [a2 CGColor];
    v42 = [a3 colorWithAlphaComponent:0.0];
    v43 = [v42 CGColor];

    *(v41 + 40) = v43;
    v44 = Array._bridgeToObjectiveC()().super.isa;

    v45 = CGGradientCreateWithColors(v40, v44, dbl_1010C8D48);

    if (v45)
    {
      v46 = [a1 CGContext];
      v53.y = a5 * 0.5;
      v50.x = 0.0;
      v50.y = 0.0;
      v53.x = 0.0;
      CGContextDrawLinearGradient(v46, v45, v50, v53, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100A853F0(void *a1, void *a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v13 = [a1 CGContext];
  CGContextSetBlendMode(v13, kCGBlendModeNormal);

  [a2 setFill];
  [a1 fillRect:{0.0, 0.0, a3, a4}];
  if (qword_1011A6AB8 != -1)
  {
    swift_once();
  }

  v14 = qword_101219DA8;
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EC3620;
  *(v15 + 32) = [a2 CGColor];
  *(v15 + 40) = [a2 CGColor];
  *(v15 + 48) = [a6 CGColor];
  v16 = [a7 colorWithAlphaComponent:0.9];
  v17 = [v16 CGColor];

  *(v15 + 56) = v17;
  *(v15 + 64) = [a7 CGColor];
  _s3__C7CGColorCMa_0(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = CGGradientCreateWithColors(v14, isa, dbl_1010C8D78);

  if (v19)
  {
    v20 = [a1 CGContext];
    v30.x = 0.0;
    v30.y = 0.0;
    v28.x = a3;
    v28.y = a4;
    CGContextDrawLinearGradient(v20, v19, v28, v30, 3u);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6D0;
  *(v21 + 32) = [a7 CGColor];
  v22 = [a7 colorWithAlphaComponent:0.0];
  v23 = [v22 CGColor];

  *(v21 + 40) = v23;
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = CGGradientCreateWithColors(v14, v24, dbl_1010C8DC0);

  if (v25)
  {
    v26 = [a1 CGContext];
    v31.y = a4 * 0.5;
    v29.x = 0.0;
    v29.y = 0.0;
    v31.x = 0.0;
    CGContextDrawLinearGradient(v26, v25, v29, v31, 3u);
  }
}

void sub_100A85754(void *a1, double a2, double a3)
{
  v6 = type metadata accessor for CGPathFillRule();
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 / 3.0;
  if (a2 / 3.0 == 0.0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v11 = a2 >= 0.0;
  if (v10 > 0.0)
  {
    v11 = a2 <= 0.0;
  }

  if (!v11)
  {
    v12 = 0;
    v13 = a3 / 3.0;
    v14 = a3 >= 0.0;
    if (a3 / 3.0 > 0.0)
    {
      v14 = a3 <= 0.0;
    }

    v28 = v14;
    v30 = enum case for CGPathFillRule.winding(_:);
    v15 = (v7 + 104);
    v16 = (v7 + 8);
    v27 = a2;
    while (1)
    {
      v19 = __OFADD__(v12, 1);
      v20 = v12 + 1;
      if (v19)
      {
        break;
      }

      if (v13 == 0.0)
      {
        goto LABEL_23;
      }

      v29 = v20;
      if (!v28)
      {
        v21 = 0;
        while (!__OFADD__(v21, 1))
        {
          v22 = (v21 + 1) * v13 + 0.0;
          Mutable = CGPathCreateMutable();
          v32 = 0;
          v33 = 0;
          v31 = 0x3FF0000000000000;
          v34 = 0x3FF0000000000000;
          v35 = 0;
          v36 = 0;
          CGMutablePathRef.addRoundedRect(in:cornerWidth:cornerHeight:transform:)();
          v24 = [a1 CGContext];
          CGContextAddPath(v24, Mutable);

          v25 = [a1 CGContext];
          (*v15)(v9, v30, v6);
          CGContextRef.fillPath(using:)();

          (*v16)(v9, v6);
          v26 = v22 <= a3;
          if (v13 > 0.0)
          {
            v26 = v22 >= a3;
          }

          ++v21;
          if (v26)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

LABEL_9:
      v12 = v29;
      v17 = v29 * v10 + 0.0;
      v18 = v17 <= v27;
      if (v10 > 0.0)
      {
        v18 = v17 >= v27;
      }

      if (v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_100A85A20(void *a1, int a2, uint64_t a3, uint64_t a4, id a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, void *a10, id *a11)
{
  [a5 setFill];
  [a1 fillRect:0 blendMode:{a6, a7, a8, a9}];
  v18 = [a1 CGContext];
  CGContextSaveGState(v18);

  v19 = [a1 CGContext];
  v20 = [a10 CGImage];
  if (v20)
  {
    v21 = v20;
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    CGContextClipToMask(v19, v24, v20);

    [*a11 drawInRect:0 blendMode:a6 alpha:{a7, a8, a9, 1.0}];
    v22 = [a1 CGContext];
    CGContextRestoreGState(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A85B90(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_100A85C84;

  return v5(v2 + 16);
}

uint64_t sub_100A85C84()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v3;
  v4 = *(v6 + 8);

  return v4();
}

void sub_100A85DA0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a6;
  *(v13 + 40) = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100A864C0;
  *(v14 + 24) = v13;
  v31 = sub_1001EC788;
  v32 = v14;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10006BD7C;
  v30 = &unk_1010DD230;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 imageWithActions:v15];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
    goto LABEL_5;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = a6;
  *(v17 + 88) = a7;
  *(v17 + 96) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100A864CC;
  *(v18 + 24) = v17;
  v31 = sub_1001EC788;
  v32 = v18;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10006BD7C;
  v30 = &unk_1010DD2A8;
  v19 = _Block_copy(&aBlock);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v16;

  [v12 imageWithActions:v19];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_100A860C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_100A81AA0(a1, a2, v6, v9, v10, v11, v12, v13, v7, v8);
}

unint64_t sub_100A861B8()
{
  result = qword_1011AE3D8;
  if (!qword_1011AE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE3D8);
  }

  return result;
}

uint64_t sub_100A86260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10002F3F4;

  return sub_100A82560(a1, v6, v7, v4, v5, v12, v8, v9, v10, v11);
}

uint64_t sub_100A86364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100A85B90(a1, v4);
}

uint64_t sub_100A864E8(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t Logger.playlistCovers.unsafeMutableAddressor()
{
  if (qword_1011A6AC0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.playlistCovers);
}

uint64_t PlaylistCovers.RecipeColors.description.getter(void *a1, void *a2, void *a3, void *a4)
{
  _StringGuts.grow(_:)(60);
  v8._object = 0x8000000100E61FB0;
  v8._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v8);
  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x32726F6C6F63202CLL;
  v14._object = 0xEA0000000000203ALL;
  String.append(_:)(v14);
  v15 = [a2 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x33726F6C6F63202CLL;
  v20._object = 0xEA0000000000203ALL;
  String.append(_:)(v20);
  v21 = [a3 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x34726F6C6F63202CLL;
  v26._object = 0xEA0000000000203ALL;
  String.append(_:)(v26);
  v27 = [a4 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  return 0;
}

uint64_t static PlaylistCovers.RecipeColors.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10095AD18();
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PlaylistCovers.RecipeColors.hash(into:)(uint64_t a1)
{
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int PlaylistCovers.RecipeColors.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100A869F4(uint64_t *a1, uint64_t *a2)
{
  sub_10095AD18();
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_100A86A94()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100A86B14(uint64_t a1)
{
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int sub_100A86B78(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static PlaylistCovers.recipeColorsForSource(_:)(uint64_t a1, __n128 a2)
{
  v2[17] = a1;
  v3 = type metadata accessor for Playlist.Entry.InternalItem();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Entry();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  sub_10010FC20(&unk_1011AA940, &unk_100EF2908);
  v2[24] = swift_task_alloc();
  v5 = type metadata accessor for Track();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = sub_10010FC20(&qword_1011A8800, &qword_100EEDF90);
  v2[31] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011A8810, &qword_100EEDFA0);
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = type metadata accessor for PlaylistCovers.Source(0);
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_100A86E90, 0, 0);
}

uint64_t sub_100A86E90()
{
  sub_100A8B7E4(*(v0 + 136), *(v0 + 288));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 288);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    *(v0 + 344) = *v2;
    v4 = *(v3 + 16);
    *(v0 + 352) = v4;
    if (!v4)
    {
LABEL_19:

      goto LABEL_20;
    }

    *(v0 + 404) = *(*(v0 + 176) + 80);
    *(v0 + 408) = enum case for Playlist.Entry.InternalItem.musicMovie(_:);
    *(v0 + 412) = enum case for Playlist.Entry.InternalItem.musicVideo(_:);
    *(v0 + 416) = enum case for Playlist.Entry.InternalItem.song(_:);
    *(v0 + 360) = 0;
    if (*(v3 + 16))
    {
      v5 = 0;
      do
      {
        (*(*(v0 + 176) + 16))(*(v0 + 184), v3 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v5, *(v0 + 168));
        v6 = Playlist.Entry.catalogID.getter();
        *(v0 + 368) = v7;
        if (v7)
        {
          v8 = v7;
          v9 = v6;
          v10 = *(v0 + 408);
          v12 = *(v0 + 152);
          v11 = *(v0 + 160);
          v13 = *(v0 + 144);
          Playlist.Entry.internalItem.getter();
          v14 = (*(v12 + 88))(v11, v13);
          if (v14 != v10)
          {
            v15 = *(v0 + 412);
            if (v14 == v15 || v14 == *(v0 + 416))
            {
              v63 = v14 == v15;
              (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
              Playlist.Entry.artwork.getter();
              v64 = swift_task_alloc();
              *(v0 + 376) = v64;
              *v64 = v0;
              v64[1] = sub_100A87A30;
              v59 = *(v0 + 192);
              v60 = v9;
              v61 = v8;
              v62 = v63;
              goto LABEL_33;
            }
          }

          v18 = *(v0 + 152);
          v17 = *(v0 + 160);
          v19 = *(v0 + 144);

          (*(v18 + 8))(v17, v19);
        }

        v20 = *(v0 + 352);
        v21 = *(v0 + 360) + 1;
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        if (v21 == v20)
        {
          goto LABEL_19;
        }

        v5 = *(v0 + 360) + 1;
        *(v0 + 360) = v5;
        v3 = *(v0 + 344);
      }

      while (v5 < *(v3 + 16));
    }

    __break(1u);
  }

  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);
  v26 = *(v0 + 240);
  (*(v23 + 32))(v22, v2, v24);
  (*(v23 + 16))(v25, v22, v24);
  *(v0 + 392) = *(v26 + 36);
  *(v0 + 296) = sub_100A8B848();
  dispatch thunk of Collection.startIndex.getter();
  *(v0 + 396) = enum case for Track.song(_:);
  *(v0 + 400) = enum case for Track.musicVideo(_:);
  v27 = *(v0 + 392);
  v28 = *(v0 + 248);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v28 + v27) == *(v0 + 128))
  {
LABEL_18:
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    sub_1000095E8(*(v0 + 248), &qword_1011A8800, &qword_100EEDF90);
    (*(v41 + 8))(v40, v42);
LABEL_20:
    if (qword_1011A6AA8 != -1)
    {
      swift_once();
    }

    v43 = unk_101219D70;
    v45 = qword_101219D78;
    v44 = unk_101219D80;
    v68 = qword_101219D68;
    v66 = v43;
    v46 = v45;
    v47 = v44;

    v48 = *(v0 + 8);

    return v48(v68, v66, v46, v47);
  }

  while (1)
  {
    v29 = *(v0 + 232);
    v67 = *(v0 + 224);
    v30 = *(v0 + 208);
    v65 = *(v0 + 200);
    v31 = dispatch thunk of Collection.subscript.read();
    v32 = *(v30 + 16);
    v32(v29);
    v31(v0 + 96, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v30 + 32))(v67, v29, v65);
    v33 = Track.catalogID.getter();
    v35 = v34;
    *(v0 + 304) = v34;
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    if (v35)
    {
      break;
    }

    v38 = *(v0 + 392);
    v39 = *(v0 + 248);
    (*(v37 + 8))(*(v0 + 224), v36);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v39 + v38) == *(v0 + 128))
    {
      goto LABEL_18;
    }
  }

  v50 = *(v0 + 400);
  v51 = *(v0 + 396);
  v52 = *(v0 + 216);
  v69 = v33;
  v53 = *(v0 + 200);
  (v32)(v52, *(v0 + 224), v36);
  v54 = (*(v37 + 88))(v52, v53);
  v56 = v54 != v51 && v54 == v50;
  v57 = *(v37 + 8);
  *(v0 + 312) = v57;
  *(v0 + 320) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v52, v53);
  Track.artwork.getter();
  v58 = swift_task_alloc();
  *(v0 + 328) = v58;
  *v58 = v0;
  v58[1] = sub_100A874DC;
  v59 = *(v0 + 192);
  v60 = v69;
  v61 = v35;
  v62 = v56;
LABEL_33:

  return sub_100A87ECC(v60, v61, v62, v59);
}

uint64_t sub_100A874DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v7 = v5[24];
  v6[42] = a1;

  sub_1000095E8(v7, &unk_1011AA940, &unk_100EF2908);

  return _swift_task_switch(sub_100A87634, 0, 0);
}

uint64_t sub_100A87634()
{
  v1 = *(v0 + 336);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 200));
  if (v1)
  {
    v37 = *(v0 + 32);
    v39 = *(v0 + 336);
    v36 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    sub_1000095E8(*(v0 + 248), &qword_1011A8800, &qword_100EEDF90);
    (*(v3 + 8))(v4, v5);
LABEL_9:

    v22 = *(v0 + 8);

    return v22(v39, v37, v36, v2);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 248);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v7 + v6) == *(v0 + 128))
  {
LABEL_6:
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    sub_1000095E8(*(v0 + 248), &qword_1011A8800, &qword_100EEDF90);
    (*(v17 + 8))(v16, v18);
    if (qword_1011A6AA8 != -1)
    {
      swift_once();
    }

    v19 = unk_101219D70;
    v20 = qword_101219D78;
    v21 = unk_101219D80;
    v39 = qword_101219D68;
    v37 = v19;
    v36 = v20;
    v2 = v21;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = *(v0 + 232);
    v40 = *(v0 + 224);
    v9 = *(v0 + 208);
    v35 = *(v0 + 200);
    v10 = dispatch thunk of Collection.subscript.read();
    v11 = *(v9 + 16);
    v11(v8);
    v10(v0 + 96, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v9 + 32))(v40, v8, v35);
    v12 = Track.catalogID.getter();
    *(v0 + 304) = v13;
    if (v13)
    {
      break;
    }

    v14 = *(v0 + 392);
    v15 = *(v0 + 248);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    dispatch thunk of Collection.endIndex.getter();
    if (*(v15 + v14) == *(v0 + 128))
    {
      goto LABEL_6;
    }
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 396);
  v26 = *(v0 + 208);
  v27 = *(v0 + 216);
  v28 = *(v0 + 200);
  v38 = v13;
  v41 = v12;
  (v11)(v27, *(v0 + 224), v28);
  v29 = (*(v26 + 88))(v27, v28);
  v31 = v29 != v25 && v29 == v24;
  v32 = *(v26 + 8);
  *(v0 + 312) = v32;
  *(v0 + 320) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v28);
  Track.artwork.getter();
  v33 = swift_task_alloc();
  *(v0 + 328) = v33;
  *v33 = v0;
  v33[1] = sub_100A874DC;
  v34 = *(v0 + 192);

  return sub_100A87ECC(v41, v38, v31, v34);
}

uint64_t sub_100A87A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[7] = v4;
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v7 = v5[24];
  v6[48] = a1;

  sub_1000095E8(v7, &unk_1011AA940, &unk_100EF2908);

  return _swift_task_switch(sub_100A87B88, 0, 0);
}

uint64_t sub_100A87B88()
{
  v1 = *(v0 + 384);
  if (!v1)
  {
    while (1)
    {
      v8 = *(v0 + 352);
      v9 = *(v0 + 360) + 1;
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      if (v9 == v8)
      {
        break;
      }

      v10 = *(v0 + 360) + 1;
      *(v0 + 360) = v10;
      v11 = *(v0 + 344);
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
LABEL_17:
        v27 = unk_101219D70;
        v28 = qword_101219D78;
        v29 = unk_101219D80;
        v1 = qword_101219D68;
        v33 = v27;
        v32 = v28;
        v31 = v29;
        goto LABEL_18;
      }

      (*(*(v0 + 176) + 16))(*(v0 + 184), v11 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v10, *(v0 + 168));
      v12 = Playlist.Entry.catalogID.getter();
      *(v0 + 368) = v13;
      if (v13)
      {
        v14 = v13;
        v15 = v12;
        v16 = *(v0 + 408);
        v18 = *(v0 + 152);
        v17 = *(v0 + 160);
        v19 = *(v0 + 144);
        Playlist.Entry.internalItem.getter();
        v20 = (*(v18 + 88))(v17, v19);
        if (v20 != v16)
        {
          v21 = *(v0 + 412);
          if (v20 == v21 || v20 == *(v0 + 416))
          {
            v23 = v20 == v21;
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
            Playlist.Entry.artwork.getter();
            v24 = swift_task_alloc();
            *(v0 + 376) = v24;
            *v24 = v0;
            v24[1] = sub_100A87A30;
            v25 = *(v0 + 192);

            return sub_100A87ECC(v15, v14, v23, v25);
          }
        }

        v6 = *(v0 + 152);
        v5 = *(v0 + 160);
        v7 = *(v0 + 144);

        (*(v6 + 8))(v5, v7);
      }
    }

    if (qword_1011A6AA8 != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 72);
  v31 = *(v0 + 88);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v2 + 8))(v3, v4);
LABEL_18:

  v30 = *(v0 + 8);

  return v30(v1, v33, v32, v31);
}

uint64_t sub_100A87ECC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 256) = a3;
  *(v4 + 16) = a1;
  sub_10010FC20(&unk_1011AA940, &unk_100EF2908);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = type metadata accessor for Artwork();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100A87FE4, 0, 0);
}

uint64_t sub_100A87FE4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_100A8B9E0(*(v0 + 32), v3);
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  *(v0 + 96) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 48), &unk_1011AA940, &unk_100EF2908);
LABEL_16:
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_100A8842C;
    v16 = *(v0 + 40);
    v17 = *(v0 + 256);
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    return sub_100A88944(v16, v18, v19, v17);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  v5 = Artwork.backgroundColor.getter();
  *(v0 + 104) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    goto LABEL_16;
  }

  v6 = v5;
  v7 = Artwork.primaryTextColor.getter();
  *(v0 + 112) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v8 = v7;
  v9 = Artwork.secondaryTextColor.getter();
  *(v0 + 120) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v10 = v9;
  v11 = Artwork.tertiaryTextColor.getter();
  *(v0 + 128) = v11;
  if (!v11)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

    goto LABEL_14;
  }

  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_100A88244;

  return sub_100A8BE68(v6, v8, v10, v12);
}

uint64_t sub_100A88244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  return _swift_task_switch(sub_100A88348, 0, 0);
}

uint64_t sub_100A88348()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_100A8842C()
{

  return _swift_task_switch(sub_100A88528, 0, 0);
}

uint64_t sub_100A88528()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  if ((*(v0 + 88))(v2, 1, v1) == 1)
  {
    sub_1000095E8(v2, &unk_1011AA940, &unk_100EF2908);
LABEL_16:

    v13 = *(v0 + 8);

    return v13(0, 0, 0, 0);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 72), v2, v1);
  v3 = Artwork.backgroundColor.getter();
  *(v0 + 184) = v3;
  if (!v3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_16;
  }

  v4 = v3;
  v5 = Artwork.primaryTextColor.getter();
  *(v0 + 192) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v6 = v5;
  v7 = Artwork.secondaryTextColor.getter();
  *(v0 + 200) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v8 = v7;
  v9 = Artwork.tertiaryTextColor.getter();
  *(v0 + 208) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    goto LABEL_14;
  }

  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_100A8875C;

  return sub_100A8BE68(v4, v6, v8, v10);
}

uint64_t sub_100A8875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = a3;
  v5[31] = a4;

  return _swift_task_switch(sub_100A88860, 0, 0);
}

uint64_t sub_100A88860()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_100A88944(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 288) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v5 = sub_10010FC20(&qword_1011A91D8, &qword_100EEF9D8);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  sub_10010FC20(&qword_1011A88A0, &qword_100EEF9E0);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011A91E0, &qword_100EEF9E8);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = sub_10010FC20(&qword_1011A91E8, &qword_100EEF9F0);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011A9180, &qword_100EEF908);
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  sub_10010FC20(&qword_1011A8898, &qword_100EEF910);
  *(v4 + 176) = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011A9188, &qword_100EEF918);
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  v10 = sub_10010FC20(&qword_1011A9190, &qword_100EEF920);
  *(v4 + 208) = v10;
  *(v4 + 216) = *(v10 - 8);
  *(v4 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100A88C90, 0, 0);
}

uint64_t sub_100A88C90()
{
  v20 = v0;
  if (qword_1011A6AC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 232) = sub_1000060E4(v1, static Logger.playlistCovers);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    if (v4)
    {
      v6 = 0x697620636973756DLL;
    }

    else
    {
      v6 = 1735290739;
    }

    if (v4)
    {
      v7 = 0xEB000000006F6564;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v8 = sub_100010678(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = MusicItemID.description.getter();
    v11 = sub_100010678(v9, v10, &v19);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Media API request for %s with catalogID=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  if (*(v0 + 288) == 1)
  {
    swift_getKeyPath();
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 240) = type metadata accessor for MusicVideo();
    sub_100A8CB98(&qword_1011A9198, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_100A89068;
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    *(v0 + 264) = type metadata accessor for Song();
    sub_100A8CB98(&qword_1011A91F0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = sub_100A893D4;
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
  }

  return MusicCatalogResourceRequest.response()(v15, v16);
}

uint64_t sub_100A89068()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100A89740;
  }

  else
  {
    v2 = sub_100A8917C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A8917C()
{
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  MusicCatalogResourceResponse.items.getter();
  sub_100916F64(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = v0[22];
    v11 = v0[6];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v8 + 8))(v7, v9);
    sub_1000095E8(v10, &qword_1011A8898, &qword_100EEF910);
    v12 = type metadata accessor for Artwork();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[23];
    v19 = v0[24];
    v20 = v0[22];
    MusicVideo.artwork.getter();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100A893D4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100A899EC;
  }

  else
  {
    v2 = sub_100A894E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A894E8()
{
  v1 = v0[33];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  MusicCatalogResourceResponse.items.getter();
  sub_100916F94(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[12];
    v11 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    sub_1000095E8(v10, &qword_1011A88A0, &qword_100EEF9E0);
    v12 = type metadata accessor for Artwork();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[33];
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    Song.artwork.getter();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100A89740()
{
  v21 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  if (v3)
  {
    v19 = v0[28];
    v18 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = MusicItemID.description.getter();
    v12 = sub_100010678(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch music video from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_1000095E8(v8, &qword_1011A9120, &qword_100EEF840);

    sub_10000959C(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = type metadata accessor for Artwork();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100A899EC()
{
  v21 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  if (v3)
  {
    v19 = v0[18];
    v18 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = MusicItemID.description.getter();
    v12 = sub_100010678(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch song from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_1000095E8(v8, &qword_1011A9120, &qword_100EEF840);

    sub_10000959C(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = type metadata accessor for Artwork();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100A89C98()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.playlistCovers);
  sub_1000060E4(v0, static Logger.playlistCovers);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.playlistCovers.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6AC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.playlistCovers);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_100A89DC4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100AA5050(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_100A89F8C(v4);
  *a1 = v2;
}

void sub_100A89E30(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100AA5050(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_10010FC20(&qword_1011AE4C8, &qword_100EF9BE0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v7 + 4);
    v18[1] = v6;
    sub_100A8A128(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_100A89F8C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
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
        sub_10010FC20(&qword_1011AE4C8, &qword_100EF9BE0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100A8A6B8(v7, v8, a1, v4);
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
    sub_100A8A094(0, v2, 1, a1);
  }
}

uint64_t sub_100A8A094(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 32 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 - 24);
      v13 = *(v11 - 16) < v9;
      if (v8 != v12)
      {
        v13 = v8 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v11;
      v15 = *(v11 + 24);
      v16 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v16;
      *(v11 - 24) = v8;
      *(v11 - 16) = v9;
      *(v11 - 8) = v15;
      *(v11 - 32) = v14;
      v11 -= 32;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100A8A128(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_100AA5014(v8);
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100A8AC74((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10089C854(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v38 = *(v8 + 3);
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      v8 = sub_10089C854((v38 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v5 + 32];
    *v41 = v9;
    *(v41 + 1) = v7;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[16 * v39];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[16 * v39];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[16 * v5 - 16];
        v80 = *v79;
        v81 = &v40[16 * v5];
        v82 = *(v81 + 1);
        sub_100A8AC74((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v8 + 2);
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        memmove(&v40[16 * v5], v81 + 16, 16 * (v83 - 1 - v5));
        *(v8 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[16 * v39];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 16) >= v31)
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *v33;
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 16) = v31;
    *(v33 - 8) = v34;
    *(v33 - 32) = v35;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_100A8A6B8(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v10 = sub_100AA5014(v10);
    }

    v92 = *(v10 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v10[16 * v92];
        v94 = *&v10[16 * v92 + 24];
        sub_100A8AE78((*a3 + 32 * v93), (*a3 + 32 * *&v10[16 * v92 + 16]), (*a3 + 32 * v94), v5);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v94 < v93)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100AA5014(v10);
        }

        if (v92 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v95 = &v10[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_100AA4F88(v92 - 1);
        v92 = *(v10 + 2);
        if (v92 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = 32 * v11;
      v16 = *a3 + 32 * v11;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16) < v14;
      if (v13 != v17)
      {
        v18 = v13 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 80);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = v14 >= *v20;
        if (v21 != v13)
        {
          v23 = v21 >= v13;
        }

        ++v19;
        v20 += 4;
        v14 = v22;
        v13 = v21;
        if (v18 == v23)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v24 = 0;
        v25 = 32 * v9;
        v26 = v11;
        do
        {
          if (v26 != v9 + v24 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v27 = (v32 + v15);
            v28 = v32 + v25;
            v29 = *v27;
            v30 = v27[1];
            v31 = *(v28 - 16);
            *v27 = *(v28 - 32);
            v27[1] = v31;
            *(v28 - 32) = v29;
            *(v28 - 16) = v30;
          }

          ++v26;
          --v24;
          v25 -= 32;
          v15 += 32;
        }

        while (v26 < v9 + v24);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10089C854(0, *(v10 + 2) + 1, 1, v10);
    }

    v5 = *(v10 + 2);
    v47 = *(v10 + 3);
    v48 = v5 + 1;
    if (v5 >= v47 >> 1)
    {
      v10 = sub_10089C854((v47 > 1), v5 + 1, 1, v10);
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v5];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_63:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_77:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_84:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v90 = *&v10[16 * v89 + 32];
        v5 = *&v10[16 * v51 + 40];
        sub_100A8AE78((*a3 + 32 * v90), (*a3 + 32 * *&v10[16 * v51 + 32]), (*a3 + 32 * v5), v50);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v5 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100AA5014(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        sub_100AA4F88(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 32 * v9;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 32 * v9;
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = *(v40 - 24);
    v42 = *(v40 - 16) < v38;
    if (v37 != v41)
    {
      v42 = v37 < v41;
    }

    if (!v42)
    {
LABEL_33:
      ++v9;
      v34 += 32;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    v43 = *v40;
    v44 = *(v40 + 24);
    v45 = *(v40 - 16);
    *v40 = *(v40 - 32);
    *(v40 + 16) = v45;
    *(v40 - 24) = v37;
    *(v40 - 16) = v38;
    *(v40 - 8) = v44;
    *(v40 - 32) = v43;
    v40 -= 32;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
    }
  }

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
}

uint64_t sub_100A8AC74(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_100A8AE78(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[1];
      v19 = v4[1];
      v20 = v4[2] < v6[2];
      if (v18 != v19)
      {
        v20 = v18 < v19;
      }

      if (v20)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_26:
    v5 -= 4;
    do
    {
      v21 = v5 + 4;
      v22 = *(v14 - 3);
      v23 = *(v6 - 3);
      v24 = *(v6 - 2) < *(v14 - 2);
      if (v22 != v23)
      {
        v24 = v22 < v23;
      }

      if (v24)
      {
        v27 = v6 - 4;
        if (v21 != v6)
        {
          v28 = *(v6 - 1);
          *v5 = *v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 4, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v25 = v14 - 4;
      if (v21 != v14)
      {
        v26 = *(v14 - 1);
        *v5 = *v25;
        *(v5 + 1) = v26;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v25 > v4);
    v14 = v25;
  }

LABEL_39:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v29 >> 5));
  }

  return 1;
}

uint64_t _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0()
{
  v0 = UIColor.rgba.getter();
  v2 = v1;
  v4 = v3;
  sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBE260;
  v6 = lround(v0 * 255.0);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = lround(v2 * 255.0);
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  v8 = lround(v4 * 255.0);
  *(v5 + 136) = &type metadata for Int;
  *(v5 + 144) = &protocol witness table for Int;
  *(v5 + 112) = v8;

  return String.init(format:_:)();
}

uint64_t _s9MusicCore14PlaylistCoversO6SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8810, &qword_100EEDFA0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  type metadata accessor for PlaylistCovers.Source(0);
  __chkstk_darwin();
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v20 - v10;
  sub_10010FC20(&qword_1011AE4D0, &qword_100EF9C38);
  __chkstk_darwin();
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_100A8B7E4(a1, &v20 - v12);
  sub_100A8B7E4(a2, &v13[v15]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100A8B7E4(v13, v9);
    v16 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = sub_10095D18C(v16, *&v13[v15]);

LABEL_9:
      sub_100A8CB3C(v13);
      return v17 & 1;
    }
  }

  else
  {
    sub_100A8B7E4(v13, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      type metadata accessor for Track();
      sub_100A8CB98(&qword_1011AE4D8, &type metadata accessor for Track, &protocol conformance descriptor for Track);
      v17 = static MusicItemCollection<>.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v11, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v11, v4);
  }

  sub_1000095E8(v13, &qword_1011AE4D0, &qword_100EF9C38);
  v17 = 0;
  return v17 & 1;
}

id _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for NSScanner.NumberRepresentation();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSScanner);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithString:v9];

  (*(v5 + 104))(v7, enum case for NSScanner.NumberRepresentation.hexadecimal(_:), v4);
  v11 = NSScanner.scanUInt64(representation:)();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if (qword_1011A6AC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, static Logger.playlistCovers);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_100010678(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to decode hexadecimal string representation=%{public}s as UInt64.", v18, 0xCu);
      sub_10000959C(v19);
    }

    return 0;
  }

  else if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(UIColor) initWithRed:BYTE2(v11) / 255.0 green:BYTE1(v11) / 255.0 blue:v11 / 255.0 alpha:1.0];

    return v20;
  }

  return result;
}

uint64_t type metadata accessor for PlaylistCovers.Source(uint64_t a1)
{
  result = qword_1011AE480;
  if (!qword_1011AE480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A8B7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCovers.Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100A8B848()
{
  result = qword_1011A8818;
  if (!qword_1011A8818)
  {
    sub_1001109D0(&qword_1011A8810, &qword_100EEDFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8818);
  }

  return result;
}

unint64_t sub_100A8B8B0()
{
  result = qword_1011AE408;
  if (!qword_1011AE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE408);
  }

  return result;
}

void sub_100A8B904(uint64_t a1)
{
  sub_10005BCEC(319);
  if (v1 <= 0x3F)
  {
    sub_100A8B978(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100A8B978(uint64_t a1)
{
  if (!qword_1011AE498)
  {
    type metadata accessor for Playlist.Entry();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1011AE498);
    }
  }
}

uint64_t sub_100A8B9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011AA940, &unk_100EF2908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100A8BA50(char *a1)
{
  v40 = a1;

  sub_100A89DC4(&v40);
  v1 = v40;
  v2 = *(v40 + 16);
  if (v2)
  {
    v3 = (v40 + 48);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if (*v3 < 0.5)
      {
        v38 = *v3;
        v36 = *(v3 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10089A010(0, *(v4 + 2) + 1, 1);
          v4 = v40;
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v38;
        if (v6 >= v5 >> 1)
        {
          sub_10089A010((v5 > 1), v6 + 1, 1);
          v7 = v38;
          v4 = v40;
        }

        *(v4 + 2) = v6 + 1;
        v8 = &v4[32 * v6];
        *(v8 + 2) = v36;
        *(v8 + 3) = v7;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v40 = v4;

  sub_100A89E30(&v40);

  v10 = v40;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v40 + 16);
    v14 = _swiftEmptyArrayStorage;
    while (v12 < *(v1 + 16))
    {
      v20 = (v1 + 32 + 32 * v12);
      v21 = *v20;
      v22 = v20[1];
      if (v13)
      {
        v23 = *(v10 + 2);
        v24 = (v10 + 32);
        v25 = v13;
        while (v23)
        {
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, *v24), vceqq_f64(v22, v24[1])))))
          {
            goto LABEL_16;
          }

          --v23;
          v24 += 2;
          if (!--v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v37 = v22;
      v39 = v21;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v14;
      if ((v26 & 1) == 0)
      {
        sub_10089A010(0, *(v14 + 2) + 1, 1);
        v14 = v40;
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      v18 = v37;
      v17 = v39;
      if (v16 >= v15 >> 1)
      {
        sub_10089A010((v15 > 1), v16 + 1, 1);
        v18 = v37;
        v17 = v39;
        v14 = v40;
      }

      *(v14 + 2) = v16 + 1;
      v19 = &v14[32 * v16];
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
LABEL_16:
      if (++v12 == v11)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_27:
  v40 = v14;
  sub_1008A6918(v10);
  v27 = v40;
  v28 = *(v40 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_36;
  }

  v40 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v29 = (v27 + 56);
  do
  {
    [objc_allocWithZone(UIColor) initWithHue:*(v29 - 3) saturation:*(v29 - 2) brightness:*(v29 - 1) alpha:*v29];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v29 += 4;
    --v28;
  }

  while (v28);

  v30 = v40;
  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v31 != 3)
  {
    v32 = *(v30 + 40);
    v33 = *(v30 + 48);
    v34 = *(v30 + 56);
    *(v30 + 32);
    v32;
    v33;
    v35 = v34;
LABEL_36:

    return;
  }

LABEL_44:
  __break(1u);

  __break(1u);
}

uint64_t sub_100A8BE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100A8BE8C, 0, 0);
}

uint64_t sub_100A8BE8C()
{
  v125 = v0;
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = [objc_allocWithZone(UIColor) initWithCGColor:v0[2]];
  v118 = UIColor.hsba.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIColor) initWithCGColor:v4];
  v120 = UIColor.hsba.getter();
  v14 = v13;
  v16 = v15;

  v17 = [objc_allocWithZone(UIColor) initWithCGColor:v3];
  v119 = UIColor.hsba.getter();
  v19 = v18;
  v21 = v20;

  v22 = [objc_allocWithZone(UIColor) initWithCGColor:v2];
  v115 = UIColor.hsba.getter();
  v116 = v23;
  v25 = v24;

  v121 = v7;
  if (v7 > 0.05 && v9 > 0.2)
  {
    if (v16 < 0.3)
    {
      if (v21 >= 0.3)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

    if (v16 <= 0.3)
    {
LABEL_53:
      v59 = v14 + 0.2;
      v60 = v16 + 0.1;
      v61 = 1.0;
      if (v59 > 1.0)
      {
LABEL_54:
        if (v60 <= v61)
        {
          v62 = v19 + 0.1;
          v59 = 1.0;
          if (v62 <= 1.0)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v62 = v19 + 0.1;
        v60 = 1.0;
        v59 = v61;
        if (v62 <= 1.0)
        {
LABEL_64:
          v61 = v21 + 0.2;
          if (v21 + 0.2 > 1.0)
          {
            v61 = 1.0;
          }

          goto LABEL_66;
        }

LABEL_63:
        v62 = 1.0;
        goto LABEL_64;
      }

      if (v60 > 1.0)
      {
        v61 = v59;
        goto LABEL_59;
      }

      v62 = v19 + 0.1;
LABEL_62:
      if (v62 <= v61)
      {
        v67 = v21 + 0.2;
        if (v67 <= v61)
        {
          v66 = v25 + 0.2;
          v63 = 1.0;
          v64 = v9;
          if (v66 <= 1.0)
          {
            v65 = v116 + 0.6;
            if (v116 + 0.6 <= 1.0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v61 = v67;
LABEL_68:
          v65 = v116 + 0.6;
          v66 = v63;
          v67 = v61;
          if (v116 + 0.6 <= 1.0)
          {
LABEL_70:
            sub_10010FC20(&qword_1011A7BD8, &qword_100EEC0C0);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_100EBEF50;
            *(v68 + 32) = v118;
            *(v68 + 40) = v121;
            *(v68 + 48) = v64;
            *(v68 + 56) = v11;
            *(v68 + 64) = v120;
            *(v68 + 72) = v59;
            *(v68 + 80) = v60;
            *(v68 + 88) = 0x3FF0000000000000;
            *(v68 + 96) = v119;
            *(v68 + 104) = v62;
            *(v68 + 112) = v67;
            *(v68 + 120) = 0x3FF0000000000000;
            *(v68 + 128) = v115;
            *(v68 + 136) = v66;
            *(v68 + 144) = v65;
            *(v68 + 152) = 0x3FF0000000000000;
            sub_100A8BA50(v68);
            v70 = v69;
            v72 = v71;
            v74 = v73;
            v76 = v75;

            if (qword_1011A6AC0 != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            sub_1000060E4(v77, static Logger.playlistCovers);
            v39 = v70;
            v40 = v72;
            v41 = v74;
            v42 = v76;
            v43 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v43, v78))
            {
              goto LABEL_97;
            }

            v45 = swift_slowAlloc();
            v122 = v78;
            v46 = swift_slowAlloc();
            v124 = v46;
            *v45 = 136446210;
            v79 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
            v81 = sub_100010678(v79, v80, &v124);

            *(v45 + 4) = v81;
            v50 = "Using recipe 3 colors=%{public}s";
            goto LABEL_74;
          }

LABEL_69:
          v65 = 1.0;
          goto LABEL_70;
        }

LABEL_66:
        v63 = v25 + 0.2;
        v64 = v9;
        if (v63 > 1.0)
        {
          v63 = 1.0;
        }

        goto LABEL_68;
      }

      goto LABEL_63;
    }

LABEL_21:
    if (v21 > 0.3)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

  if (v14 > 0.05 && v16 > 0.2)
  {
    if (v16 >= 0.3)
    {
LABEL_17:
      if (v16 <= 0.3 || v21 <= 0.3)
      {
        goto LABEL_53;
      }

LABEL_22:
      v26 = v19 + 0.4;
      if (v14 + 0.1 <= 1.0)
      {
        v27 = v14 + 0.1;
      }

      else
      {
        v27 = 1.0;
      }

      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      if (v25 + -0.2 < 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v25 + -0.2;
      }

      sub_10010FC20(&qword_1011A7BD8, &qword_100EEC0C0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100EBEF50;
      *(v29 + 32) = v118;
      *(v29 + 40) = v7;
      *(v29 + 48) = v9;
      *(v29 + 56) = v11;
      *(v29 + 64) = v120;
      *(v29 + 72) = v27;
      *(v29 + 80) = v16;
      *(v29 + 88) = 0x3FF0000000000000;
      *(v29 + 96) = v119;
      *(v29 + 104) = v26;
      *(v29 + 112) = v21;
      *(v29 + 120) = 0x3FF0000000000000;
      *(v29 + 128) = v115;
      *(v29 + 136) = v28;
      *(v29 + 144) = v116;
      *(v29 + 152) = 0x3FF0000000000000;
      sub_100A8BA50(v29);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      if (qword_1011A6AC0 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000060E4(v38, static Logger.playlistCovers);
      v39 = v31;
      v40 = v33;
      v41 = v35;
      v42 = v37;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_97;
      }

      v45 = swift_slowAlloc();
      v122 = v44;
      v46 = swift_slowAlloc();
      v124 = v46;
      *v45 = 136446210;
      v47 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
      v49 = sub_100010678(v47, v48, &v124);

      *(v45 + 4) = v49;
      v50 = "Using recipe 2 colors=%{public}s";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v43, v122, v50, v45, 0xCu);
      sub_10000959C(v46);
LABEL_96:

LABEL_97:

      goto LABEL_98;
    }

    if (v21 < 0.3)
    {
LABEL_38:
      v117 = v9;
      v51 = v14 + 0.3;
      v52 = v16 + 0.2;
      v53 = 1.0;
      if (v14 + 0.3 <= 1.0)
      {
        v54 = v119;
        if (v52 <= 1.0)
        {
          v55 = v121 + 0.5;
          v56 = v117 + 0.2;
          v57 = 1.0;
          v114 = v11;
          if (v121 + 0.5 <= 1.0)
          {
            if (v56 <= 1.0)
            {
              v58 = v118;
              v93 = -0.5;
              if (v119 >= 0.5)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }

            v58 = v118;
            goto LABEL_87;
          }

          v58 = v118;
          v55 = 1.0;
          if (v56 > 1.0)
          {
            goto LABEL_87;
          }

LABEL_86:
          v57 = v56;
          goto LABEL_87;
        }
      }

      else
      {
        v51 = 1.0;
        v54 = v119;
        if (v52 <= 1.0)
        {
          v53 = v16 + 0.2;
        }
      }

      v55 = v121 + 0.5;
      v56 = v117 + 0.2;
      v57 = 1.0;
      v114 = v11;
      if (v121 + 0.5 <= 1.0)
      {
        if (v56 <= 1.0)
        {
          v58 = v118;
          v93 = -0.5;
          v52 = v53;
          if (v54 >= 0.5)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v58 = v118;
        v52 = v53;
        goto LABEL_87;
      }

      v58 = v118;
      v52 = v53;
      v55 = 1.0;
      if (v56 > 1.0)
      {
LABEL_87:
        v93 = -0.5;
        v56 = v57;
        if (v54 >= 0.5)
        {
LABEL_89:
          v94 = v54 + v93;
          if (v21 + 0.8 <= 1.0)
          {
            v95 = v21 + 0.8;
          }

          else
          {
            v95 = 1.0;
          }

          sub_10010FC20(&qword_1011A7BD8, &qword_100EEC0C0);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_100EBEF50;
          *(v96 + 32) = v58;
          *(v96 + 40) = v121;
          *(v96 + 48) = v117;
          *(v96 + 56) = v114;
          *(v96 + 64) = v120;
          *(v96 + 72) = v51;
          *(v96 + 80) = v52;
          *(v96 + 88) = 0x3FF0000000000000;
          *(v96 + 96) = v58;
          *(v96 + 104) = v55;
          *(v96 + 112) = v56;
          *(v96 + 120) = 0x3FF0000000000000;
          *(v96 + 128) = v94;
          *(v96 + 136) = v19;
          *(v96 + 144) = v95;
          *(v96 + 152) = 0x3FF0000000000000;
          sub_100A8BA50(v96);
          v98 = v97;
          v100 = v99;
          v102 = v101;
          v104 = v103;

          if (qword_1011A6AC0 != -1)
          {
            swift_once();
          }

          v105 = type metadata accessor for Logger();
          sub_1000060E4(v105, static Logger.playlistCovers);
          v39 = v98;
          v40 = v100;
          v41 = v102;
          v42 = v104;
          v43 = Logger.logObject.getter();
          v106 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v43, v106))
          {
            goto LABEL_97;
          }

          v107 = swift_slowAlloc();
          v123 = v1;
          v124 = swift_slowAlloc();
          v108 = v124;
          *v107 = 136446210;
          v109 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
          v111 = sub_100010678(v109, v110, &v124);

          *(v107 + 4) = v111;
          _os_log_impl(&_mh_execute_header, v43, v106, "Using recipe 1 colors=%{public}s", v107, 0xCu);
          sub_10000959C(v108);
          v1 = v123;
          goto LABEL_96;
        }

LABEL_88:
        v93 = 0.5;
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (v16 > 0.3)
    {
LABEL_48:
      if (v21 > 0.3)
      {
        goto LABEL_22;
      }
    }

LABEL_49:
    v59 = v14 + 0.2;
    v60 = v16 + 0.1;
    v61 = 1.0;
    if (v59 > 1.0)
    {
      goto LABEL_54;
    }

    v62 = v19 + 0.1;
    if (v60 > 1.0)
    {
      v60 = 1.0;
      if (v62 <= 1.0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v19 > 0.05 && v21 > 0.2)
  {
    if (v16 >= 0.3)
    {
      if (v16 > 0.3)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }

LABEL_37:
    if (v21 < 0.3)
    {
      goto LABEL_38;
    }

LABEL_47:
    if (v16 <= 0.3)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (v25 > 0.05 && v116 > 0.2)
  {
    if (v16 >= 0.3)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (qword_1011A6AC0 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  sub_1000060E4(v82, static Logger.playlistCovers);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v124 = v86;
    *v85 = 136446210;
    if (qword_1011A6AB0 != -1)
    {
      swift_once();
    }

    v87 = PlaylistCovers.RecipeColors.description.getter(qword_101219D88, qword_101219D90, qword_101219D98, qword_101219DA0);
    v89 = sub_100010678(v87, v88, &v124);

    *(v85 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "Using black and white colors=%{public}s", v85, 0xCu);
    sub_10000959C(v86);
  }

  if (qword_1011A6AB0 != -1)
  {
    swift_once();
  }

  v90 = qword_101219D90;
  v92 = qword_101219D98;
  v91 = qword_101219DA0;
  v39 = qword_101219D88;
  v40 = v90;
  v41 = v92;
  v42 = v91;
LABEL_98:
  v112 = v1[1];

  return v112(v39, v40, v41, v42);
}

uint64_t sub_100A8CB3C(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCovers.Source(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A8CB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall PresentationSource.present(_:)(MusicCore::Alert *a1)
{
  v2 = v1;
  v4 = sub_10093F41C(&a1->title.value._countAndFlagsBits, 0, 1);
  style = a1->style;
  v6 = *(v2 + 80);
  v19 = v4;
  if (v6)
  {
    v7 = *(v2 + 88);
    v8 = qword_1011A6AC8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_1011AE4E0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Deferring presentation…", v12, 2u);
    }

    v13 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_100A8F4C0;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A90460;
    aBlock[3] = &unk_1010DD500;
    v14 = _Block_copy(aBlock);
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_10012B7A8(v2, aBlock);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10012B828(aBlock, v16 + 24);
    *(v16 + 120) = v19;
    *(v16 + 128) = style;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v19;
    v6(v2, v18, sub_1008D9BB8, v16);
    sub_100020438(v6, v7);
  }

  else
  {
    sub_100A8D9A0(v4, style, 1, 0, 0);
  }
}

void *PresentationSource.present(_:internalOnly:)(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100A918E4(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      sub_10000954C(v8, v9);
      (*(v7 + 8))(a1, a2 & 1, v6, v7);
      return sub_10000959C(v8);
    }

    else
    {
      return sub_1000095E8(v8, &qword_1011A86F0, &qword_100EEDD10);
    }
  }

  return result;
}

void PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v11 = *(v5 + 80);
  if (v11)
  {
    v12 = *(v5 + 88);
    v13 = qword_1011A6AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_1011AE4E0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Deferring presentation…", v17, 2u);
    }

    v18 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_100A8F4C0;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A90460;
    aBlock[3] = &unk_1010DD550;
    v19 = _Block_copy(aBlock);
    v20 = [v18 initWithTimeout:v19 interruptionHandler:10.0];
    _Block_release(v19);

    sub_10012B7A8(v6, aBlock);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    sub_10012B828(aBlock, v21 + 24);
    *(v21 + 120) = a1;
    *(v21 + 128) = a2 & 1;
    *(v21 + 129) = a3 & 1;
    *(v21 + 136) = a4;
    *(v21 + 144) = a5;
    v22 = v20;
    v23 = a1;
    sub_100030444(a4, a5);
    v11(v6, v23, sub_1008D9CA4, v21);
    sub_100020438(v11, v12);
  }

  else
  {
    v24 = (a2 & 1);
    v25 = (a3 & 1);

    sub_100A8D9A0(a1, v24, v25, a4, a5);
  }
}

__n128 PresentationSource.Position.init(source:permittedArrowDirections:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

Swift::Void __swiftcall PresentationSource.Position.configure(_:)(UIViewController a1)
{
  v2 = [(objc_class *)a1.super.super.isa popoverPresentationController];
  if (v2)
  {
    v3 = *v1;
    v8 = v2;
    if (*(v1 + 40))
    {
      if (*(v1 + 40) == 1)
      {
        [v2 setBarButtonItem:v3];
      }

      else
      {
        [v2 setSourceItem:v3];
      }
    }

    else
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 32);
      v7 = *(v1 + 8);
      v6 = *(v1 + 16);
      [v2 setSourceView:v3];
      [v8 setSourceRect:{v7, v6, v5, v4}];
      sub_100A904B4(v1);
    }

    [v8 setPermittedArrowDirections:*(v1 + 48)];
  }
}

__n128 PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *(a7 + 24) = v14;
  result = *(a2 + 32);
  *(a7 + 40) = result;
  *(a7 + 56) = *(a2 + 48);
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

void PresentationSource.viewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PresentationSource.viewController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100A8D444;
}

void sub_100A8D444(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

void PresentationSource.windowScene.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      [v3 windowScene];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PresentationSource.configurationHandler.getter()
{
  v1 = *(v0 + 64);
  sub_100030444(v1, *(v0 + 72));
  return v1;
}

uint64_t PresentationSource.configurationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PresentationSource.presentationDeferral.getter()
{
  v1 = *(v0 + 80);
  sub_100030444(v1, *(v0 + 88));
  return v1;
}

uint64_t PresentationSource.presentationDeferral.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100020438(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double static PresentationSource.topmost(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 presentedViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      while (1)
      {
        v5 = v4;
        if (([v4 canPresentViewControllers] & 1) == 0)
        {
          break;
        }

        v4 = [v5 presentedViewController];
        v6 = v5;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v5 = v6;
    }

LABEL_9:

    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *&result = 255;
    *(a1 + 48) = xmmword_100EBCEF0;
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void *static PresentationSource.topmostPresentedViewController(in:options:)(uint64_t a1, char a2)
{
  v3 = UIWindowScene.rootViewController.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = v5;
      if ((a2 & 1) != 0 && ![v5 canPresentViewControllers])
      {

        v4 = v7;
        goto LABEL_11;
      }

      v5 = [v7 presentedViewController];
      v6 = v7;
    }

    while (v5);
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

LABEL_11:

  return v6;
}

__n128 PresentationSource.init(viewController:position:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  swift_unknownObjectWeakAssign();

  v6 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v6;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = *(a2 + 48);
  return result;
}

id static PresentationSource.topmostPresentedViewController(from:options:)(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if ((a2 & 1) != 0 && ([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v3;
}

double PresentationSource.init(windowScene:position:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = UIWindowScene.rootViewController.getter();

  if (v6)
  {
    swift_unknownObjectWeakInit();
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    v7 = *(a2 + 16);
    *(a3 + 8) = *a2;
    *(a3 + 24) = v7;
    v8 = *(a2 + 32);
    *(a3 + 40) = v8;
    *(a3 + 56) = *(a2 + 48);
  }

  else
  {
    sub_1000095E8(a2, &qword_1011AE500, &qword_100EF9C50);
    *&v8 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
  }

  return *&v8;
}

void sub_100A8D9A0(void *a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v214 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002705C();
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v231 = v6;
    LODWORD(v229) = a2;
    v230 = a3;
    a3 = Strong;
    v18 = [a3 presentedViewController];
    a2 = a3;
    if (v18)
    {
      v19 = a3;
      do
      {
        a2 = v18;

        v18 = [a2 presentedViewController];
        v19 = a2;
      }

      while (v18);
    }

    v20 = [a2 transitionCoordinator];
    if (v20)
    {
      v6 = v20;
      if (qword_1011A6AC8 == -1)
      {
LABEL_8:
        v21 = type metadata accessor for Logger();
        sub_1000060E4(v21, qword_1011AE4E0);
        v22 = a1;
        swift_unknownObjectRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v226 = v23;
          v26 = v25;
          v227 = swift_slowAlloc();
          *&v239 = v227;
          *v26 = 136446466;
          v27 = v22;
          v228 = v22;
          v28 = v27;
          v29 = [v27 description];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          LODWORD(v225) = v24;
          v31 = a3;
          v32 = a5;
          v33 = v30;
          v34 = a4;
          v36 = v35;

          v37 = v33;
          a5 = v32;
          a3 = v31;
          v38 = sub_100010678(v37, v36, &v239);
          a4 = v34;

          *(v26 + 4) = v38;
          *(v26 + 12) = 2082;
          *&aBlock = v6;
          swift_unknownObjectRetain();
          sub_10010FC20(&qword_1011AE598, &unk_100EFA0B0);
          v39 = String.init<A>(describing:)();
          v41 = sub_100010678(v39, v40, &v239);
          v22 = v228;

          *(v26 + 14) = v41;
          v42 = v226;
          _os_log_impl(&_mh_execute_header, v226, v225, "Attempted to present %{public}s, but needs to wait for the ongoing transition %{public}s to complete first", v26, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_10012B7A8(v231, &v239);
        v75 = swift_allocObject();
        *(v75 + 16) = v6;
        *(v75 + 24) = v22;
        sub_10012B828(&v239, v75 + 32);
        *(v75 + 128) = v229 & 1;
        *(v75 + 129) = v230 & 1;
        *(v75 + 136) = a4;
        *(v75 + 144) = a5;
        *&v234 = sub_100A90A00;
        *(&v234 + 1) = v75;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v233 = sub_1007E9F28;
        *(&v233 + 1) = &unk_1010DD820;
        v76 = _Block_copy(&aBlock);
        v77 = v22;
        swift_unknownObjectRetain();
        sub_100030444(a4, a5);

        [v6 animateAlongsideTransition:0 completion:v76];
        _Block_release(v76);

        swift_unknownObjectRelease();
        return;
      }

LABEL_103:
      swift_once();
      goto LABEL_8;
    }

    if ([a2 canPresentViewControllers])
    {
      v56 = a2;
      [a1 setPlayActivityFeatureNameSourceViewController:v56];
      v57 = _s27WeakViewControllerReferenceCMa();
      v58 = objc_allocWithZone(v57);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v238.receiver = v58;
      v238.super_class = v57;
      v59 = objc_msgSendSuper2(&v238, "init");
      if (qword_1011A6970 != -1)
      {
        swift_once();
      }

      v228 = a4;
      objc_setAssociatedObject(a1, qword_1011AAE10, v59, 1);
      v227 = v56;

      v60 = v231;
      v61 = v231[8];
      if (v61)
      {
        v61(a1);
      }

      v223 = a5;
      v218 = [a1 modalPresentationStyle];
      objc_opt_self();
      v222 = swift_dynamicCastObjCClass();
      v62 = a1;
      v64 = v60[1];
      v63 = v60[2];
      v66 = v60[3];
      v65 = v60[4];
      v68 = v60[5];
      v67 = v60[6];
      v69 = v60[7];
      objc_opt_self();
      v70 = v62;
      v71 = swift_dynamicCastObjCClass();
      v225 = v64;
      v224 = v66;
      v231 = v65;
      v72 = v65;
      v73 = v68;
      v226 = v69;
      sub_100590A28(v64, v63, v66, v72, v68, v67);
      if (v71)
      {
        v74 = [v71 preferredStyle] == 0;
      }

      else
      {
        v74 = 0;
      }

      v104 = v67;
      v105 = v227;
      v221 = v70;
      v106 = v63;
      if (v67 == 0xFF && !v222)
      {
        v107 = v221;
        if ([v221 modalPresentationStyle] == 7)
        {
          v108 = [v107 popoverPresentationController];
          if (v108)
          {
            v109 = v108;
            v219 = a3;
            if (qword_1011A6AC8 != -1)
            {
              swift_once();
            }

            v110 = type metadata accessor for Logger();
            sub_1000060E4(v110, qword_1011AE4E0);
            v111 = Logger.logObject.getter();
            v112 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
            }

            v114 = [v109 sourceItem];
            if (v114)
            {
              v115 = v114;
              swift_unknownObjectRetain();
              v116 = Logger.logObject.getter();
              v117 = static os_log_type_t.default.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v220 = swift_slowAlloc();
                *&v239 = v220;
                *v118 = 136446210;
                *&aBlock = v115;
                swift_unknownObjectRetain();
                sub_10010FC20(&qword_1011AE590, "o\n");
                v119 = String.init<A>(describing:)();
                v222 = v106;
                v121 = sub_100010678(v119, v120, &v239);
                v217 = v109;
                v122 = v117;
                v123 = v121;

                *(v118 + 4) = v123;
                _os_log_impl(&_mh_execute_header, v116, v122, "Using sourceItem=%{public}s as the position", v118, 0xCu);
                sub_10000959C(v220);

                sub_100A909EC(v225, v222, v224, v231, v73, v104);
              }

              else
              {
                sub_100A909EC(v225, v106, v224, v231, v73, v104);
              }

              v106 = 0;
              v224 = 0;
              v231 = 0;
              v73 = 0;
              v226 = 15;
              v104 = 2;
              v225 = v115;
              a3 = v219;
            }

            else
            {
              v124 = [v109 sourceView];
              a3 = v219;
              if (v124)
              {
                v125 = v124;
                v222 = v106;
                v126 = v124;
                v127 = Logger.logObject.getter();
                v128 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v127, v128))
                {
                  v129 = swift_slowAlloc();
                  v217 = v129;
                  v220 = swift_slowAlloc();
                  *&v239 = v220;
                  *v129 = 136446210;
                  v130 = v126;
                  v131 = [v130 description];
                  v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v216 = v127;
                  v133 = v132;
                  v215 = v128;
                  v135 = v134;

                  a3 = v219;
                  v136 = sub_100010678(v133, v135, &v239);

                  v137 = v217;
                  *(v217 + 4) = v136;
                  v138 = v216;
                  _os_log_impl(&_mh_execute_header, v216, v215, "Using sourceView=%{public}s as the position", v137, 0xCu);
                  sub_10000959C(v220);
                }

                else
                {
                }

                [v109 sourceRect];
                v143 = v142;
                v145 = v144;
                v147 = v146;
                v149 = v148;
                sub_100A909EC(v225, v222, v224, v231, v73, v104);

                v104 = 0;
                v106 = v143;
                v224 = v145;
                v231 = v147;
                v73 = v149;
                v226 = 15;
                v225 = v125;
              }

              else
              {
                v139 = Logger.logObject.getter();
                v140 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v222 = v106;
                  *v141 = 0;
                  v106 = v222;
                }
              }
            }
          }
        }
      }

      v150 = [v105 view];
      if (!v150)
      {
        __break(1u);
        return;
      }

      v151 = v150;
      v152 = [v150 window];

      v222 = v106;
      v220 = v73;
      v153 = v221;
      if (v152 && (v154 = [v152 traitCollection], v152, v155 = objc_msgSend(v154, "horizontalSizeClass"), v154, v155 == 2) && (v229 & 1) != 0)
      {
        if (v104 == 0xFF)
        {
          LOBYTE(v156) = [v153 modalPresentationStyle] == 7;
          goto LABEL_71;
        }

        v156 = 1;
      }

      else
      {
        v156 = 0;
        if (v104 == 0xFF)
        {
          goto LABEL_71;
        }
      }

      *&v239 = v225;
      *(&v239 + 1) = v106;
      *&v240 = v224;
      *(&v240 + 1) = v231;
      *&v241 = v73;
      BYTE8(v241) = v104;
      v242 = v226;
      if (PresentationSource.Position.canPresent(from:)(v105))
      {
        if ((v156 | v74))
        {
          v219 = a3;
          if (qword_1011A6AC8 != -1)
          {
            swift_once();
          }

          v157 = type metadata accessor for Logger();
          v158 = sub_1000060E4(v157, qword_1011AE4E0);
          v159 = v153;
          v229 = v158;
          v160 = Logger.logObject.getter();
          v161 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            *&aBlock = v218;
            *v162 = 136446210;
            v163 = v159;
            v164 = [v163 description];
            v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v167 = v166;

            v168 = sub_100010678(v165, v167, &aBlock);

            *(v162 + 4) = v168;
            v106 = v222;
            sub_10000959C(v218);
          }

          v169 = v228;
          v170 = v219;
          v171 = v224;
          v172 = v225;
          [v159 setModalPresentationStyle:7];
          v173 = [v159 popoverPresentationController];
          if (v173)
          {
            v218 = v159;

            v174 = v172;
            v175 = v172;
            v176 = v231;
            v177 = v220;
            sub_100590A28(v174, v106, v171, v231, v220, v104);
            sub_100590A04(v175, v106, v171, v176, v177, v104);
            v178 = Logger.logObject.getter();
            v179 = static os_log_type_t.default.getter();
            v229 = v104;
            v180 = v178;
            v181 = v179;
            sub_100A909EC(v175, v106, v171, v176, v177, v104);
            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v237 = v183;
              *v182 = 136446210;
              aBlock = v239;
              v233 = v240;
              v234 = v241;
              v235 = v242;
              LOBYTE(v104) = v229;
              sub_100590A04(v175, v106, v224, v176, v177, v229);
              v184 = String.init<A>(describing:)();
              v186 = sub_100010678(v184, v185, &v237);
              v106 = v222;

              *(v182 + 4) = v186;
              _os_log_impl(&_mh_execute_header, v180, v181, "Configuring viewController with popover position=%{public}s", v182, 0xCu);
              sub_10000959C(v183);
              v171 = v224;
              v169 = v228;

              v170 = v219;
            }

            else
            {

              LOBYTE(v104) = v229;
            }

            v201 = v218;
            v236 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate_0;
            v202 = swift_dynamicCastObjCProtocolConditional();
            v172 = v225;
            v153 = v221;
            if (v202)
            {
              v203 = v202;
              v204 = v201;
              v205 = [v204 presentationController];
              if (v205)
              {
                v206 = v205;
                [v205 setDelegate:v203];

                v106 = v222;
              }
            }

            v207 = [v201 popoverPresentationController];
            if (v207)
            {
              v208 = v207;
              v209 = v231;
              if (v104)
              {
                if (v104 == 1)
                {
                  [v207 setBarButtonItem:v172];
                }

                else
                {
                  [v207 setSourceItem:v172];
                }
              }

              else
              {
                v211 = v220;
                v212 = v220;
                [v207 setSourceView:v225];
                [v208 setSourceRect:{*&v106, *&v171, *&v209, *&v212}];
                v213 = v211;
                v172 = v225;
                v210 = sub_100A909EC(v225, v106, v171, v209, v213, v104);
              }

              [v208 setPermittedArrowDirections:{v226, v210}];

              sub_100A909EC(v172, v106, v171, v231, v220, v104);
            }

            else
            {
              sub_100A909EC(v172, v106, v171, v231, v220, v104);
            }
          }

          goto LABEL_84;
        }

        LOBYTE(v156) = 0;
      }

LABEL_71:
      objc_opt_self();
      v187 = swift_dynamicCastObjCClass();
      if (v187)
      {
        [v187 setAllowsCustomPresentationStyle:1];
        v188 = 2;
      }

      else
      {
        v188 = v218;
        if (v218 == -2)
        {
          v189 = [v105 traitCollection];
          [v189 horizontalSizeClass];
        }

        else if (((v218 == 7) & v156) == 1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v188 = 3;
          }

          else
          {
            v188 = 7;
          }
        }
      }

      v190 = a3;
      if (qword_1011A6AC8 != -1)
      {
        swift_once();
      }

      v191 = type metadata accessor for Logger();
      sub_1000060E4(v191, qword_1011AE4E0);
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&aBlock = v195;
        *v194 = 136446210;
        v237 = v188;
        type metadata accessor for UIModalPresentationStyle(0);
        v196 = String.init<A>(describing:)();
        v198 = sub_100010678(v196, v197, &aBlock);

        *(v194 + 4) = v198;
        _os_log_impl(&_mh_execute_header, v192, v193, "Presenting viewController with style=%{public}s", v194, 0xCu);
        sub_10000959C(v195);
        v106 = v222;
      }

      v169 = v228;
      v170 = v190;
      v171 = v224;
      [v153 setModalPresentationStyle:v188];
      v172 = v225;
LABEL_84:
      if (v169)
      {
        *&v234 = v169;
        *(&v234 + 1) = v223;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v233 = sub_10002BC98;
        *(&v233 + 1) = &unk_1010DD7D0;
        v199 = _Block_copy(&aBlock);
        v106 = v222;
      }

      else
      {
        v199 = 0;
      }

      v200 = v227;
      [v227 presentViewController:v153 animated:v230 & 1 completion:v199];

      _Block_release(v199);
      sub_100A909EC(v172, v106, v171, v231, v220, v104);
      return;
    }

    if (qword_1011A6AC8 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_1000060E4(v78, qword_1011AE4E0);
    v79 = a1;
    v80 = a2;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v219 = a3;
      v84 = v83;
      *&v239 = swift_slowAlloc();
      *v84 = 136446466;
      v85 = v79;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v228 = a4;
      v88 = v87;
      v223 = a5;
      v90 = v89;

      v91 = sub_100010678(v88, v90, &v239);

      *(v84 + 4) = v91;
      *(v84 + 12) = 2082;
      v92 = v80;
      v93 = [v92 description];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = v94;
      a4 = v228;
      v98 = sub_100010678(v97, v96, &v239);
      a5 = v223;

      *(v84 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v81, v82, "Attempted to present %{public}s, but need to dismiss %{public}s first", v84, 0x16u);
      swift_arrayDestroy();

      a3 = v219;
    }

    sub_10012B7A8(v231, &v239);
    v99 = swift_allocObject();
    *(v99 + 16) = v80;
    *(v99 + 24) = v79;
    sub_10012B828(&v239, v99 + 32);
    *(v99 + 128) = v229 & 1;
    v100 = v230 & 1;
    *(v99 + 129) = v100;
    *(v99 + 136) = a4;
    *(v99 + 144) = a5;
    *&v234 = sub_100A909D4;
    *(&v234 + 1) = v99;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v233 = sub_10002BC98;
    *(&v233 + 1) = &unk_1010DD7A8;
    v101 = _Block_copy(&aBlock);
    v102 = v79;
    sub_100030444(a4, a5);
    v103 = v80;

    [v103 dismissViewControllerAnimated:v100 completion:v101];
    _Block_release(v101);
  }

  else
  {
    if (qword_1011A6AC8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000060E4(v43, qword_1011AE4E0);
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v239 = v48;
      *v47 = 136446210;
      v49 = v44;
      v50 = [v49 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = a4;
      v54 = v53;

      v55 = sub_100010678(v51, v54, &v239);
      a4 = v52;

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to present viewController=%{public}s but there is no viewController to present onto.", v47, 0xCu);
      sub_10000959C(v48);
    }

    if (a4)
    {
      a4();
    }
  }
}

void sub_100A8F4C0()
{
  if (qword_1011A6AC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_1011AE4E0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void sub_100A8F5A8(void *a1, uint64_t a2, void *a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (qword_1011A6AC8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_1011AE4E0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Presenting after deferral…", v16, 2u);
  }

  [a1 disarm];
  sub_100A8D9A0(a3, (a4 & 1), (a5 & 1), a6, a7);
}

void sub_100A8F6E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6, void (*a7)(void), uint64_t a8)
{
  if (qword_1011A6AC8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, qword_1011AE4E0);
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  v41 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v40 = a7;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    swift_unknownObjectRetain();
    sub_10010FC20(&qword_1011AE598, &unk_100EFA0B0);
    v17 = String.init<A>(describing:)();
    v19 = sub_100010678(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = v13;
    v21 = [v20 description];
    v22 = a8;
    v23 = a4;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = v24;
    a4 = v23;
    a8 = v22;
    v28 = sub_100010678(v27, v26, aBlock);

    *(v16 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "TransitionCoordinator %{public}s completed ongoing animations. Now attemptying to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a7 = v40;
  }

  v29 = *(a4 + 80);
  if (v29)
  {
    v30 = *(a4 + 88);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Deferring presentation…", v33, 2u);
    }

    v34 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_100A8F4C0;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A90460;
    aBlock[3] = &unk_1010DD848;
    v35 = _Block_copy(aBlock);
    v36 = [v34 initWithTimeout:v35 interruptionHandler:10.0];
    _Block_release(v35);

    sub_10012B7A8(a4, aBlock);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    sub_10012B828(aBlock, v37 + 24);
    *(v37 + 120) = v41;
    *(v37 + 128) = a5 & 1;
    *(v37 + 129) = a6 & 1;
    *(v37 + 136) = a7;
    *(v37 + 144) = a8;
    v38 = v41;
    v39 = v36;
    sub_100030444(a7, a8);
    v29(a4, v38, sub_1008D9CA4, v37);
    sub_100020438(v29, v30);
  }

  else
  {
    sub_100A8D9A0(v41, (a5 & 1), (a6 & 1), a7, a8);
  }
}

void sub_100A8FB0C(void *a1, void *a2, uint64_t a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (qword_1011A6AC8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, qword_1011AE4E0);
  v12 = a1;
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v42 = a6;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    v17 = v12;
    v18 = [v17 description];
    v41 = a3;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_100010678(v19, v21, aBlock);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v25;
    a3 = v41;
    v29 = sub_100010678(v28, v27, aBlock);

    *(v16 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "Dismissed %{public}s, now attempting to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a6 = v42;
  }

  v30 = *(a3 + 80);
  if (v30)
  {
    v31 = *(a3 + 88);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Deferring presentation…", v34, 2u);
    }

    v35 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_100A8F4C0;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A90460;
    aBlock[3] = &unk_1010DD898;
    v36 = _Block_copy(aBlock);
    v37 = [v35 initWithTimeout:v36 interruptionHandler:10.0];
    _Block_release(v36);

    sub_10012B7A8(a3, aBlock);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    sub_10012B828(aBlock, v38 + 24);
    *(v38 + 120) = v13;
    *(v38 + 128) = a4 & 1;
    *(v38 + 129) = a5 & 1;
    *(v38 + 136) = a6;
    *(v38 + 144) = a7;
    v39 = v13;
    v40 = v37;
    sub_100030444(a6, a7);
    v30(a3, v39, sub_1008D9CA4, v38);
    sub_100020438(v30, v31);
  }

  else
  {
    sub_100A8D9A0(v13, (a4 & 1), (a5 & 1), a6, a7);
  }
}

Swift::Bool __swiftcall PresentationSource.Position.canPresent(from:)(UIViewController from)
{
  if (!*(v1 + 40))
  {
    v6 = [*v1 window];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_15;
  }

  if (*(v1 + 40) != 1)
  {
    swift_unknownObjectRetain();
    v6 = [(objc_class *)from.super.super.isa view];
    if (v6)
    {
      v8 = v6;
      swift_getObjectType();
      UIPopoverPresentationControllerSourceItem.frame(in:)();

      if ((v21 & 1) != 0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectEqualToRect(v20, v23)))
      {
        sub_100A904B4(v1);
LABEL_14:
        LOBYTE(v6) = 0;
        return v6;
      }

      v6 = [(objc_class *)from.super.super.isa view];
      if (v6)
      {
        v10 = v6;
        [v6 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v22.origin.x = v12;
        v22.origin.y = v14;
        v22.size.width = v16;
        v22.size.height = v18;
        LOBYTE(v10) = CGRectIntersectsRect(v22, v20);
        sub_100A904B4(v1);
        LOBYTE(v6) = v10;
        return v6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v6;
  }

  v2 = *v1;
  v3 = [v2 customView];
  if (!v3 || (v4 = v3, v5 = [v3 window], v4, !v5))
  {
    v9 = [v2 customView];
    sub_100A904B4(v1);
    if (v9)
    {

      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v6) = 1;
    return v6;
  }

  sub_100A904B4(v1);
  LOBYTE(v6) = 1;
  return v6;
}

void *PresentationSource.Position.init(view:rect:permittedArrowDirections:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (result)
  {
    if (a2[2])
    {
      v5 = a4;

      v4 = 0uLL;
      a4 = v5;
      result = 0;
      a3 = 0;
      v6 = 255;
      v7 = 0uLL;
    }

    else
    {
      v6 = 0;
      v4 = *a2;
      v7 = a2[1];
    }
  }

  else
  {
    a3 = 0;
    v6 = 255;
    v7 = 0uLL;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 24) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PresentationSource.Position.init(sourceItem:permittedArrowDirections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 2;
  if (!result)
  {
    v3 = 255;
  }

  *a3 = result;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  if (result)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a3 + 40) = v3;
  *(a3 + 48) = v4;
  return result;
}

uint64_t sub_100A9022C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AE4E0);
  sub_1000060E4(v0, qword_1011AE4E0);
  return Logger.init(subsystem:category:)();
}

void UIWindowScene.presentationSource.getter(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 255;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t sub_100A90330(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A903C8, v4, v3);
}

uint64_t sub_100A903C8()
{
  v1 = *(v0 + 16);

  v2 = sub_10093F41C(v1, 0, 1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v1 + 32), 1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

double sub_100A90460(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_100A904E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AE500, &qword_100EF9C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A90554(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AE500, &qword_100EF9C50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100A90638()
{
  result = qword_1011AE508;
  if (!qword_1011AE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE508);
  }

  return result;
}

unint64_t sub_100A90690()
{
  result = qword_1011AE510;
  if (!qword_1011AE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE510);
  }

  return result;
}

unint64_t sub_100A906E8()
{
  result = qword_1011AE518;
  if (!qword_1011AE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE518);
  }

  return result;
}

unint64_t sub_100A90740()
{
  result = qword_1011AE520;
  if (!qword_1011AE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE520);
  }

  return result;
}

uint64_t sub_100A90794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_100A907F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_100A9086C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100A908B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100A90914(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100A9095C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

double sub_100A909EC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_10012B804(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v16[0] = a6;
  v16[1] = a7;
  v8 = *a1;
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v16 - v11;
  View.modifier<A>(_:)();
  type metadata accessor for PresentedViewState(0, *(v8 + 80), v13, v14);
  v16[2] = a5;
  v16[3] = v16[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  View.environmentObject<A>(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t PresentedViewState.isPresented.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t PresentedViewState.isPresented.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100A90CF8@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void (*PresentedViewState.isPresented.modify(uint64_t *a1))(void *a1)
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
  __chkstk_darwin();
  v3[4] = swift_getKeyPath();
  __chkstk_darwin();
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return sub_10012FF30;
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC720, &qword_100EFA120);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
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
  *v3 = v1;
  v5 = sub_10010FC20(&qword_1011AC720, &qword_100EFA120);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  PresentedViewState.$isPresented.getter();
  return sub_100A91120;
}

void sub_100A91120(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9[-v4];
  v6 = qword_1011AE5A0;
  v7 = *(v1 + 80);
  v9[15] = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

void PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  v11 = *(v5 - 8);
  (*(v11 + 16))(&v13 - v9, a1, v5, v8);
  (*(v11 + 56))(v10, 0, 1, v5);
  v12 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v12, v10, v6);
  swift_endAccess();
  if (a2)
  {
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  else
  {
    PresentedViewState.isPresented.setter(1);
  }
}

uint64_t *PresentedViewState.deinit()
{
  v1 = qword_1011AE5A0;
  v2 = sub_10010FC20(&qword_1011ABBB8, &qword_100EFD0C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

void sub_100A91758(uint64_t a1)
{
  sub_100008E80();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_100A91828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v9);
  (*(a4 + 8))(v9, a2, a3, a4);
  return sub_100543D10(v9);
}

void sub_100A918E4(uint64_t a1@<X8>)
{
  if (![v1 isViewLoaded])
  {
    v7 = [v1 parentViewController];
    if (v7)
    {
      v8 = v7;
      sub_100A918E4(a1);
      goto LABEL_8;
    }

LABEL_12:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v8 = v3;
  v4 = [v3 window];
  if (!v4 || (v5 = v4, v6 = [v4 windowScene], v5, !v6))
  {

    goto LABEL_12;
  }

  UIWindowScene.noticePresenting.getter(a1);

LABEL_8:
}

uint64_t PresentedViewState<A>.present(_:)(__int128 *a1)
{
  v3 = *a1;
  *(v2 + 104) = a1[1];
  v4 = a1[3];
  *(v2 + 120) = a1[2];
  *(v2 + 136) = v4;
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  *(v2 + 152) = *(a1 + 8);
  *(v2 + 88) = v3;
  type metadata accessor for MainActor();
  *(v2 + 272) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A91AB8, v6, v5);
}

uint64_t sub_100A91AB8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  v3 = v1 + *(*v1 + 96);
  swift_beginAccess();
  *(v0 + 16) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 80) = *(v3 + 64);
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  sub_10053A574(v2, v0 + 160);
  *v3 = *(v0 + 88);
  v7 = *(v0 + 120);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  *(v3 + 64) = *(v0 + 152);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  sub_1000095E8(v0 + 16, &qword_1011A9570, &qword_100EF47C0);
  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *(v0 + 160) = 1;

  static Published.subscript.setter();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100A91C44(__int128 *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return PresentedViewState<A>.present(_:)(a1);
}

void (*UIWindowScene.noticePresenting.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 80) = v1;
  UIWindowScene.noticePresenting.getter(v3);
  return sub_100A91D54;
}

void sub_100A91D54(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10002FAA8(*a1, v2 + 40);
    UIWindowScene.noticePresenting.setter(v2 + 40);
    sub_1000095E8(v2, &qword_1011A86F0, &qword_100EEDD10);
  }

  else
  {
    UIWindowScene.noticePresenting.setter(*a1);
  }

  free(v2);
}

uint64_t sub_100A91DCC(uint64_t a1)
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PresentedViewState<A>.present(_:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_100A91F9C, v5, v4);
}

uint64_t sub_100A91F9C()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000954C(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100A920C8;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_100A920C8()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_100A921E8, v3, v2);
}

uint64_t sub_100A921E8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100028B08(v0[8]);
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v5 + 32))(v4, v0[8], v6);
    (*(v5 + 16))(v8, v4, v6);
    (*(v5 + 56))(v8, 0, 1, v6);
    v9 = *(*v7 + 96);
    swift_beginAccess();
    sub_10003CB98(v8, v7 + v9);
    swift_endAccess();
    static Animation.default.getter();
    withAnimation<A>(_:_:)();

    (*(v5 + 8))(v4, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100A923CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_100A92464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v29 = a1;
  v30 = sub_10010FC20(&qword_1011AE650, &qword_100EFA398);
  __chkstk_darwin();
  v28 = &v25 - v6;
  v7 = sub_10010FC20(&qword_1011AE658, &qword_100EFA3A0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*a3 + 96);
  swift_beginAccess();
  sub_10093F768(a3 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100028B08(v12);
    v18 = sub_10010FC20(&qword_1011AE660, &qword_100EFA3A8);
    (*(*(v18 - 8) + 16))(v28, v29, v18);
    swift_storeEnumTagMultiPayload();
    v19 = sub_100020674(&qword_1011AE668, &qword_1011AE660, &qword_100EFA3A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v31 = v18;
    v32 = v19;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_10010FC20(&qword_1011AE638, &qword_100EFA2D0);
    v26 = v7;
    sub_100020674(&qword_1011AE640, &qword_1011AE638, &qword_100EFA2D0, &protocol conformance descriptor for PresentedViewState<A>);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v25 = a4;
    v27 = v13;
    v23 = sub_10010FC20(&qword_1011AE660, &qword_100EFA3A8);
    v24 = sub_100020674(&qword_1011AE668, &qword_1011AE660, &qword_100EFA3A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v21 = v16;
    View.sharingPicker(isPresented:item:subject:message:)();

    v22 = v26;
    (*(v8 + 16))(v28, v10, v26);
    swift_storeEnumTagMultiPayload();
    v31 = v23;
    v32 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v8 + 8))(v10, v22);
    return (*(v14 + 8))(v21, v27);
  }
}

void sub_100A9299C(_BYTE *a2@<X8>)
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100A92A38(char *a1, uint64_t *a2)
{
  type metadata accessor for URL();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double View.shareSheetPresenting(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_10010FC20(&qword_1011AE638, &qword_100EFA2D0);
  sub_100020674(&qword_1011AE640, &qword_1011AE638, &qword_100EFA2D0, &protocol conformance descriptor for PresentedViewState<A>);
  ObservedObject.init(wrappedValue:)();
  View.modifier<A>(_:)();

  return result;
}

unint64_t sub_100A92BA4()
{
  result = qword_1011AE648;
  if (!qword_1011AE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE648);
  }

  return result;
}

unint64_t sub_100A92C24()
{
  result = qword_1011AE670;
  if (!qword_1011AE670)
  {
    sub_1001109D0(&qword_1011AE678, &unk_100EFA430);
    sub_1001109D0(&qword_1011AE660, &qword_100EFA3A8);
    sub_100020674(&qword_1011AE668, &qword_1011AE660, &qword_100EFA3A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE670);
  }

  return result;
}

unint64_t static LibraryModelRequest.label.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(27);

  swift_getMetatypeMetadata();
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  swift_getMetatypeMetadata();
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000014;
}

void *LibraryModelRequest.section.getter()
{
  v1 = *(v0 + 8);
  sub_100A92E44(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  return v1;
}

double sub_100A92E44(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    v6 = a1;
    v7 = a2;
  }

  return result;
}

void LibraryModelRequest.section.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100A92EF0(*(v4 + 8), *(v4 + 16));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
}

double sub_100A92EF0(void *a1, void *a2)
{
  if (a2)
  {
  }

  return result;
}

void *LibraryModelRequest.item.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  v4 = v2;

  return v1;
}

void LibraryModelRequest.item.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
}

uint64_t LibraryModelRequest.filter.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void LibraryModelRequest.filter.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 80) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
}

uint64_t LibraryModelRequest.itemRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t LibraryModelRequest.label.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

void LibraryModelRequest.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

double LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, __int128 a13, __int128 a14, char a15, uint64_t a16, uint64_t a17)
{
  v25[160] = a12 & 1;
  v25[152] = a15 & 1;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  *&v29 = a7;
  *(&v29 + 1) = a8;
  v30 = a10;
  *&v31 = a11;
  BYTE8(v31) = a12 & 1;
  v32 = a13;
  v33 = a14;
  LOBYTE(v34) = a15 & 1;
  *(&v34 + 1) = 0;
  v35 = 0;
  v36[0] = a1;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v36[4] = a5;
  v36[5] = a6;
  v36[6] = a7;
  v36[7] = a8;
  v37 = a10;
  v38 = a11;
  v39 = a12 & 1;
  v40 = a13;
  v41 = a14;
  v42 = a15 & 1;
  v43 = 0;
  v44 = 0;
  v18 = type metadata accessor for LibraryModelRequest(0, a16, a17, a4);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v25, &v26, v18);
  (*(v19 + 8))(v36, v18);
  v20 = v33;
  *(a9 + 96) = v32;
  *(a9 + 112) = v20;
  *(a9 + 128) = v34;
  *(a9 + 144) = v35;
  v21 = v29;
  *(a9 + 32) = v28;
  *(a9 + 48) = v21;
  v22 = v31;
  *(a9 + 64) = v30;
  *(a9 + 80) = v22;
  result = *&v26;
  v24 = v27;
  *a9 = v26;
  *(a9 + 16) = v24;
  return result;
}

void LibraryModelRequest.mediaPlayerRequest()(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011AE680, &unk_100EFA440);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = v1[6];
  v21 = v1[7];
  v22 = v1[8];
  v23 = *(v1 + 18);
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[5];
  v14 = *v1;
  v15 = v1[1];
  v5 = v4;
  WitnessTable = swift_getWitnessTable();
  sub_100A93F04(v5, a1, WitnessTable);
  [v5 setMediaLibrary:{*v1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  isa = 0;
  if (*(v2 + 2) && *(v2 + 4))
  {
    sub_100009F78(0, &unk_1011AAC90, MPIdentifierSet_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setAllowedSectionIdentifiers:isa];

  v8 = *(v2 + 8);
  if (v8)
  {
    sub_100009F78(0, &unk_1011AAC90, MPIdentifierSet_ptr);
    v8 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setAllowedItemIdentifiers:v8];

  v9 = *(v2 + 9);
  if (v9)
  {
    sub_100009F78(0, &qword_1011A9F50, MPModelObject_ptr);
    v9 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v5 setScopedContainers:v9];

  v10 = *(v2 + 13);
  if (*(v2 + 88))
  {
    v11 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  else
  {
    v11 = v2 + 5;
  }

  [v5 setFilteringOptions:*v11];
  if (v10)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v5 setFilterText:v12];

  if ((v2[8] & 1) == 0)
  {
    if (__OFSUB__(*(v2 + 15), *(v2 + 14)))
    {
      __break(1u);
      return;
    }

    [v5 setContentRange:?];
  }

  if (*(v2 + 18))
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v5 setLabel:v13];
}

uint64_t UIView.Border.thickness.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a8)
      {
        if (a3 == a7 && a4 == a8)
        {
          return 1;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL static LibraryModelRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_100A92E44(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
    sub_100A92E44(v4, v5, v6, v7);
    sub_100A92EF0(v4, v5);
    sub_100A92EF0(v8, v9);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  sub_100A92E44(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_100A92E44(v4, v5, v6, v7);
  v18 = static LibraryContentConfiguration.__derived_struct_equals(_:_:)(v4, v5, v6, v7, v8, v9, v11, v10);

  sub_100A92EF0(v4, v5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((static LibraryContentConfiguration.__derived_struct_equals(_:_:)(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = sub_10095D178(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    if (!*(a2 + 128))
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if ((*(a2 + 128) & 1) == 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
LABEL_21:
    v16 = *(a1 + 144);
    v17 = *(a2 + 144);
    if (v16)
    {
      return v17 && (*(a1 + 136) == *(a2 + 136) && v16 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    return !v17;
  }

  return result;
}

uint64_t static LibraryContentConfiguration.__derived_struct_equals(_:_:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011AE688, MPModelKind_ptr);
    v14 = a5;
    v15 = a1;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  sub_100009F78(0, &qword_1011AAEA0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (a3)
    {
      if (!a7)
      {
        return 0;
      }

      v17 = sub_10095CEE8(a3, a7);

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a7)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {

        v18 = sub_10095CEFC(a4, a8);

        if (v18)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

double sub_100A93A18@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_100A92E44(v2, v3, v4, v5);
}

double sub_100A93A2C@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v2;
  v7 = v3;

  return result;
}

uint64_t LibraryContentConfiguration<>.init()()
{
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6B0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return 0;
}

uint64_t sub_100A93BC0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100A93BFC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100A93C38(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100A93C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100A93CB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100A93CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100A93CFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A93D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100A93DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100A93DE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100A93E40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100A93EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_100A93F04(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v46 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v46 - v12;
  v14 = __chkstk_darwin();
  v16 = &v46 - v15;
  v17 = *(a3 + 56);
  v55 = v3;
  v58 = a2;
  v48 = v17;
  (v17)(a2, a3, v14);
  v18 = *(v8 - 8);
  v57 = *(v18 + 48);
  v19 = v57(v16, 1, v8);
  v51 = v9;
  v49 = v10;
  if (v19 == 1)
  {
    (*(v10 + 8))(v16, v9);
    v20 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = (*(AssociatedConformanceWitness + 24))(v8, AssociatedConformanceWitness);
    (*(v18 + 8))(v16, v8);
  }

  [v59 setSectionKind:v20];

  v22 = v48;
  v48(v58, a3);
  v23 = v57(v13, 1, v8);
  v24 = v50;
  if (v23 == 1)
  {
    v25 = 0;
    v26 = v49;
    v27 = v51;
  }

  else
  {
    v28 = swift_getAssociatedConformanceWitness();
    v25 = (*(v28 + 32))(v8, v28);
    v26 = v18;
    v27 = v8;
  }

  (*(v26 + 8))(v13, v27);
  [v59 setSectionProperties:v25];

  v22(v58, a3);
  if (v57(v24, 1, v8) == 1)
  {
    (*(v49 + 8))(v24, v51);
  }

  else
  {
    v29 = swift_getAssociatedConformanceWitness();
    v30 = (*(v29 + 56))(v8, v29);
    (*(v18 + 8))(v24, v8);
    if (v30)
    {
      sub_100009F78(0, &qword_1011A9F40, NSSortDescriptor_ptr);
      v31.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_12;
    }
  }

  v31.super.isa = 0;
LABEL_12:
  [v59 setSectionSortDescriptors:v31.super.isa];

  v57 = *(a3 + 64);
  v32 = v52;
  v33 = v58;
  (v57)(v58, a3);
  v34 = AssociatedTypeWitness;
  v35 = swift_getAssociatedConformanceWitness();
  v36 = v35[3](v34, v35);
  v47 = a3;
  v54 = *(v54 + 8);
  (v54)(v32, v34);
  v37 = v59;
  [v59 setItemKind:v36];

  v38 = a3;
  v39 = v57;
  (v57)(v33, v38);
  v40 = v35[4](v34, v35);
  v41 = v32;
  v42 = v54;
  (v54)(v41, v34);
  [v37 setItemProperties:v40];

  v43 = v53;
  v39(v33, v47);
  v44 = v35[7](v34, v35);
  v42(v43, v34);
  if (v44)
  {
    sub_100009F78(0, &qword_1011A9F40, NSSortDescriptor_ptr);
    v45.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v45.super.isa = 0;
  }

  [v59 setItemSortDescriptors:v45.super.isa];
}

double sub_100A945D0@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = *(a4 + 16);
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  WitnessTable = swift_getWitnessTable();
  ModelRequest.perform(_:_:)(sub_100A94C64, v9, a4, WitnessTable, x8_0);

  return result;
}

void ModelRequest.perform(_:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = *(a4 + 72);

  v12 = v11(a3, a4);
  v16[4] = sub_100A94C58;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000B378;
  v16[3] = &unk_1010DDB98;
  v13 = _Block_copy(v16);
  v14 = v12;

  v15 = [v14 newOperationWithResponseHandler:v13];
  _Block_release(v13);

  if (qword_1011A6AD8 != -1)
  {
    swift_once();
  }

  [(objc_class *)ModelRequestQueue.super.isa addOperation:v15];
  a5[3] = sub_100009F78(0, &qword_1011AE8E0, NSOperation_ptr);
  a5[4] = &protocol witness table for NSOperation;

  *a5 = v15;
}

id static MPPropertySet.sectionTitle.getter()
{
  sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6B0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return v3;
}

id sub_100A948F4()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  [v0 setMaxConcurrentOperationCount:4];
  result = [v0 setQualityOfService:33];
  ModelRequestQueue.super.isa = v0;
  return result;
}

NSOperationQueue *ModelRequestQueue.unsafeMutableAddressor()
{
  if (qword_1011A6AD8 != -1)
  {
    swift_once();
  }

  return &ModelRequestQueue;
}

double sub_100A949E4(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (!a1)
  {
    if (!a2)
    {
      sub_100A94CAC();
      v10 = swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_errorRetain();
LABEL_8:
      v17 = 0;
      v18 = 1;
      goto LABEL_9;
    }

LABEL_7:
    sub_100A94CAC();
    v10 = swift_allocError();
    *v20 = v7;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_errorRetain();
    swift_errorRetain();
    v7 = 0;
    goto LABEL_8;
  }

  swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCastUnknownClass();
  if (!v9)
  {
    if (!v7)
    {
      v28 = a1;
      v22 = sub_10010FC20(&qword_1011AE8E8, &unk_100EFA770);
      WitnessTable = swift_getWitnessTable();
      v24 = sub_1009A90F8(&v28, v22, WitnessTable);
      v26 = v25;
      sub_100A94CAC();
      v10 = swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      v18 = 1;
      *(v27 + 16) = 1;
      swift_errorRetain();
      v7 = 0;
      v17 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = v9;
  sub_10010FC20(&unk_1011A9FB0, &unk_100EF1D50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6B0;
  v12 = MPModelResponseDidInvalidateNotification;
  UIScreen.Dimensions.size.getter();
  *(v11 + 56) = &type metadata for NotificationTrigger;
  *(v11 + 64) = &protocol witness table for NotificationTrigger;
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v15 = a1;
  v16 = v12;
  v7 = BindingRequestResponseInvalidation.init(triggers:)(v11);
  v17 = sub_100A94D0C();
  v18 = 0;
LABEL_9:
  a3(v10, v18, v7, v17);
  sub_100A94D00(v10, v18);
  sub_100A94D00(v10, v18);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_100A94C64(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v7 = a1;
  v8 = a2 & 1;
  return v5(&v7, a3, a4);
}

unint64_t sub_100A94CAC()
{
  result = qword_1011AE8F0;
  if (!qword_1011AE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AE8F0);
  }

  return result;
}

void sub_100A94D00(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_100A94D0C()
{
  result = qword_1011ABAF8;
  if (!qword_1011ABAF8)
  {
    type metadata accessor for BindingRequestResponseInvalidation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAF8);
  }

  return result;
}

uint64_t sub_100A94D64(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t static Request.label.getter(uint64_t a1)
{
  swift_getMetatypeMetadata();

  return _typeName(_:qualified:)();
}

double Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = *(a5 + 32);

  v11(a1, sub_100A9525C, v10, a4, a5);

  return result;
}

uint64_t sub_100A94E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6;
  swift_getAssociatedTypeWitness();
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  v16 = type metadata accessor for Result();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v30 - v19;
  sub_10002705C();
  v31 = static OS_dispatch_queue.main.getter();
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v15;
  *(v22 + 3) = a7;
  v23 = v33;
  *(v22 + 4) = v32;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v24 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  aBlock[4] = sub_100A95CAC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010DDD30;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100024794();
  sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
  sub_100024900();
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v39 + 8))(v11, v27);
  return (*(v37 + 8))(v14, v38);
}

uint64_t Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  v5[7] = type metadata accessor for Result();
  sub_1001109D0(&qword_1011AE8F8, &qword_100EFA860);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100A9537C, 0, 0);
}

uint64_t sub_100A9537C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100A95478;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x8000000100E62020, sub_100A95858, v3, v6);
}

uint64_t sub_100A95478()
{

  return _swift_task_switch(sub_100A95590, 0, 0);
}

uint64_t sub_100A95590()
{
  v1 = (v0[9] + *(v0[8] + 48));
  v2 = *v1;
  v3 = v1[1];
  (*(*(v0[7] - 8) + 32))(v0[2], v0[9]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_100A95644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  type metadata accessor for Result();
  sub_1001109D0(&qword_1011AE8F8, &qword_100EFA860);
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for CheckedContinuation();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 32))(v18, a3, sub_100A95B0C, v15, a4, a5);

  return sub_100A95C44(v18);
}

uint64_t sub_100A95864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  v9 = type metadata accessor for Result();
  sub_1001109D0(&qword_1011AE8F8, &qword_100EFA860);
  swift_getTupleTypeMetadata2();
  v10 = __chkstk_darwin();
  v13 = (&v15 + *(v12 + 48) - v11);
  (*(*(v9 - 8) + 16))(&v15 - v11, a1, v9, v10);
  *v13 = a2;
  v13[1] = a3;
  type metadata accessor for CheckedContinuation();
  swift_unknownObjectRetain();
  return CheckedContinuation.resume(returning:)();
}

uint64_t Array<A>.cancel()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.forEach(_:)();
}

uint64_t sub_100A95B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  swift_getAssociatedTypeWitness();
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  type metadata accessor for Result();
  sub_1001109D0(&qword_1011AE8F8, &qword_100EFA860);
  swift_getTupleTypeMetadata2();
  v9 = *(type metadata accessor for CheckedContinuation() - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100A95864(a1, a2, a3, v10, v7, v8);
}

uint64_t sub_100A95C44(uint64_t a1)
{
  v2 = sub_10010FC20(qword_1011AE900, &unk_100EFA900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A95CAC()
{
  swift_getAssociatedTypeWitness();
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  v1 = *(type metadata accessor for Result() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 32))(v0 + v2, *v3, v3[1]);
}

uint64_t sub_100A95D88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v4);
  }

  (*(*(a1[3] - 8) + 32))(a2, v4, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t *RequestResponse.Controller.__allocating_init(request:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v7 = sub_10003AF5C(a1, v4, v5, v6);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t property wrapper backing initializer of RequestResponse.Controller.revision(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  return sub_10003BE8C(&v3, v1);
}

void sub_100A95F28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v19 - v8;
  v10 = *(v3 + 96);
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v1 + v10, v4);
  v19[1] = *(*(v3 + 88) + 8);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v9, v4);
  if ((v12 & 1) == 0)
  {
    v19[0] = v7;
    RequestResponse.Controller.revision.getter();
    sub_10003BC8C();

    v14 = *(*v2 + 176);
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (v15)
    {
      v11(v9, (v15 + *(*v15 + 96)), v4);
      v16 = v2 + v10;
      v17 = v19[0];
      v11(v19[0], v16, v4);

      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v17, v4);
      v13(v9, v4);
      if ((v18 & 1) == 0)
      {
        sub_10003BC8C();
      }
    }

    sub_100A96260();
  }
}

uint64_t RequestResponse.Controller.revision.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100A96260()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }
}

uint64_t RequestResponse.Controller.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t RequestResponse.Controller.request.setter(uint64_t a1)
{
  v3 = *v1;
  sub_100A9A9D8(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*RequestResponse.Controller.request.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 96);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_100A9654C;
}

void sub_100A9654C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_100A9A9D8(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_100A9A9D8(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_100A96628@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

double sub_100A96654(void *a1)
{

  sub_100A9A8A8(v1);

  return result;
}

double sub_100A96698(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = RequestResponse.Controller.revision.getter();
  v6 = *(v5 + *(*v5 + 112));

  v8 = *(a1 + *(*a1 + 112));
  if (v6 != v8)
  {
    v9 = RequestResponse.Controller.revision.getter();
    v10 = *(v9 + *(*v9 + 112));

    if (v8 >= v10)
    {
      if (qword_1011A6AE0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000060E4(v26, qword_101219DD0);
      swift_retain_n();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349312;
        v30 = RequestResponse.Controller.revision.getter();
        v31 = *(v30 + *(*v30 + 112));

        *(v29 + 4) = v31;

        *(v29 + 12) = 2050;
        *(v29 + 14) = v8;

        _os_log_impl(&_mh_execute_header, v27, v28, "Attempted to apply a revision which ID (%{public}ld) is older than the previous revision's (%{public}ld).", v29, 0x16u);
      }

      else
      {
      }

      sub_100A9A8A8(v32);
    }

    else
    {
      v11 = *(*v2 + 184);
      v12 = *(v2 + v11);
      if (v12)
      {
        v13 = *(v12 + *(*v12 + 112));

        v14 = RequestResponse.Controller.revision.getter();

        v15 = *(v14 + *(*v14 + 112));

        if (v15 >= v13)
        {
          *(v2 + v11) = 0;
        }
      }

      v16 = *(*v2 + 176);
      swift_beginAccess();
      v17 = *(v2 + v16);
      if (v17)
      {
        v18 = *(v17 + *(*v17 + 112));

        v19 = RequestResponse.Controller.revision.getter();

        v20 = *(v19 + *(*v19 + 112));

        if (v20 >= v18)
        {
          *(v2 + v16) = 0;
        }
      }

      v21 = RequestResponse.Controller.revision.getter();
      sub_100A96F94(v21);
      v22 = *(*v21 + 112);
      swift_beginAccess();
      v24 = *(v4 + 80);
      v23 = *(v4 + 88);
      type metadata accessor for RequestResponse.Revision(255, v24, v23, v25);
      swift_getFunctionTypeMetadata2();
      type metadata accessor for Array();
      Dictionary.subscript.getter();
      swift_endAccess();
      if (v60)
      {
        v61[0] = v60;
        __chkstk_darwin();
        swift_getWitnessTable();
        Sequence.forEach(_:)();
      }

      swift_beginAccess();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      v33 = RequestResponse.Controller.revision.getter();
      v34 = *(v33 + *(*v33 + 120) + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 40))(ObjectType, v34);
      swift_unknownObjectRelease();
      if (v36)
      {
        if (qword_1011A6AE0 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_1000060E4(v37, qword_101219DD0);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v59 = v22;
          v41 = swift_slowAlloc();
          v61[0] = v41;
          *v40 = 136446210;
          v42 = (*(v23 + 24))(v24, v23);
          v44 = sub_100010678(v42, v43, v61);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "╭ %{public}s", v40, 0xCu);
          sub_10000959C(v41);
          v22 = v59;
        }

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "╞ 🔄 Invalid", v47, 2u);
        }

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134349056;
          *(v50 + 4) = *(v21 + v22);

          _os_log_impl(&_mh_execute_header, v48, v49, "╰ RevisionID=%{public}ld", v50, 0xCu);
        }

        else
        {
        }

        sub_100A96260();
      }

      else
      {
        v51 = RequestResponse.Controller.revision.getter();
        v52 = *(v51 + *(*v51 + 112));

        v53 = RequestResponse.Controller.revision.getter();
        v54 = *(v53 + *(*v53 + 120) + 8);
        swift_unknownObjectRetain();

        v55 = swift_getObjectType();
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v57[2] = v24;
        v57[3] = v23;
        v57[4] = v56;
        v57[5] = v52;
        v58 = *(v54 + 24);

        v58(sub_100A9AF24, v57, v55, v54);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_100A96F94(uint64_t a1)
{
  v3 = v1 + *(*v1 + 128);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    v4(v1, a1);
    sub_100020438(v4, v5);
  }
}

double sub_100A97024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = RequestResponse.Controller.revision.getter();
    v13 = *(v12 + *(*v12 + 112));

    if (v13 == a4)
    {
      if (qword_1011A6AE0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000060E4(v14, qword_101219DD0);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v39[0] = v18;
        *v17 = 136446210;
        v19 = (*(a6 + 24))(a5, a6);
        v21 = sub_100010678(v19, v20, v39);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "╭ %{public}s", v17, 0xCu);
        sub_10000959C(v18);
      }

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "╞ 🔄 Invalidated", v24, 2u);
      }

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134349056;
        *(v27 + 4) = a4;
        _os_log_impl(&_mh_execute_header, v25, v26, "╞ RevisionID=%{public}ld", v27, 0xCu);
      }

      swift_unknownObjectRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39[0] = v31;
        *v30 = 136446210;
        swift_getObjectType();
        v32 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
        v34 = sub_100010678(v32, v33, v39);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "╰ Invalidator=%{public}s", v30, 0xCu);
        sub_10000959C(v31);
      }

      v35 = v11 + *(*v11 + 136);
      swift_beginAccess();
      v36 = *v35;
      if (*v35)
      {
        v37 = *(v35 + 8);

        v38 = RequestResponse.Controller.revision.getter();
        v36(v11, v38);
        sub_100020438(v36, v37);
      }

      sub_100A96260();
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.$revision.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for RequestResponse.Revision(255, *(v1 + 80), *(v1 + 88), v2);
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t RequestResponse.Controller.willReloadRequest.getter()
{
  v1 = (v0 + *(*v0 + 112));
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.willReloadRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6, v7);
}

uint64_t RequestResponse.Controller.willApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.willApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6, v7);
}

uint64_t RequestResponse.Controller.didApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.didApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6, v7);
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.getter()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6, v7);
}

void sub_100A97A0C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(*v2 + 144);
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v5 = RequestResponse.Controller.revision.getter();
    v6 = *(v5 + *(*v5 + 120) + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 40))(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(*v2 + 176);
      swift_beginAccess();
      if (!*(v2 + v9) || (, v10 = RequestResponse.Revision.isValid.getter(), , !v10))
      {
        sub_100A96260();
      }
    }
  }
}

BOOL RequestResponse.Revision.isValid.getter()
{
  v1 = *(v0 + *(*v0 + 120) + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return (v1 & 1) == 0;
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

void RequestResponse.Controller.isAutomaticReloadingEnabled.setter(char a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_100A97A0C(v4);
}

void (*RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*v1 + 144);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_100A97D14;
}

double sub_100A97D2C(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  if (*(v1 + v3) & 1) == 0 && (a1)
  {
    v5 = *(v1 + *(*v1 + 184));
    if (v5)
    {
      v6 = *(*v5 + 112);
      v7 = *(v5 + v6);

      v8 = RequestResponse.Controller.revision.getter();
      v9 = *(v8 + *(*v8 + 112));

      if (v9 < v7)
      {
        if (qword_1011A6AE0 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_1000060E4(v10, qword_101219DD0);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "╭ ⏰ RRC resumed, applying pending revision", v13, 2u);
        }

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134349056;
          *(v16 + 4) = *(v5 + v6);

          _os_log_impl(&_mh_execute_header, v14, v15, "╞ RevisionID=%{public}ld", v16, 0xCu);
        }

        else
        {
        }

        sub_100A97F6C(v5);
      }
    }
  }

  return result;
}

void sub_100A97F6C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MSVBlockGuard);
  v17[4] = sub_100A99E24;
  v17[5] = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100A90460;
  v17[3] = &unk_1010DE130;
  v5 = _Block_copy(v17);
  v6 = [v4 initWithTimeout:v5 interruptionHandler:10.0];
  _Block_release(v5);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = a1;
  v8 = v2 + *(*v2 + 120);
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v11 = v6;
    sub_100030444(v9, v10);
    if (qword_1011A6AE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_101219DD0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "╞ 🫸 calling willApplyRevision; Waiting for client to accept it.", v15, 2u);
    }

    v9(v2, a1, sub_100A9AED0, v7);

    sub_100020438(v9, v10);
  }

  else
  {

    v16 = v6;
    sub_100A99F0C(v16, v2, a1);
  }
}

uint64_t RequestResponse.Controller.isPaused.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

double RequestResponse.Controller.isPaused.setter(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_100A97D2C(v4);
}

void (*RequestResponse.Controller.isPaused.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*v1 + 152);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_100A98354;
}

void sub_100A9836C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

void RequestResponse.Controller.setNeedsReload(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v8 - 8);
  __chkstk_darwin();
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v43 - v14;
  if (a1)
  {
    v16 = swift_allocObject();
    v16[2] = v12;
    v17 = *(v7 + 88);
    v16[3] = v17;
    v16[4] = a1;
    v16[5] = a2;
    aBlock[6] = sub_100A9AB38;
    aBlock[7] = v16;
    swift_beginAccess();
    type metadata accessor for RequestResponse.Revision(255, v12, v17, v18);
    swift_getFunctionTypeMetadata2();
    type metadata accessor for Array();

    Array.append(_:)();
    swift_endAccess();
    v6 = *v3;
  }

  v19 = *(v6 + 192);
  if ((*(v3 + v19) & 1) == 0)
  {
    *(v3 + v19) = 1;
    v20 = *(*v3 + 176);
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21)
    {
      v44 = v8;
      v22 = *(*v3 + 96);
      swift_beginAccess();
      (*(v13 + 16))(v15, v3 + v22, v12);
      v23 = *(*v21 + 96);
      v24 = *(v7 + 88);
      v25 = *(v24 + 40);

      LOBYTE(v23) = v25(v21 + v23, v12, v24);
      (*(v13 + 8))(v15, v12);
      if (v23)
      {
        if (qword_1011A6AE0 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_1000060E4(v26, qword_101219DD0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v29 = 136446210;
          v30 = (*(v24 + 24))(v12, v24);
          v32 = sub_100010678(v30, v31, aBlock);

          *(v29 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "╭ %{public}s", v29, 0xCu);
          sub_10000959C(v43);
        }

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "╞ 🛑 Cancelled", v35, 2u);
        }

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134349056;
          *(v38 + 4) = *(v21 + *(*v21 + 112));

          _os_log_impl(&_mh_execute_header, v36, v37, "╰ RevisionID=%{public}ld", v38, 0xCu);
        }

        else
        {
        }

        v39 = *(v21 + *(*v21 + 112));
        swift_beginAccess();
        sub_100A00A90(&v49, v39);
        swift_endAccess();
        sub_10003BC8C();
      }

      v8 = v44;
    }

    sub_10002705C();
    v40 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100A9AB34;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010DDD58;
    v41 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000297E8(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
    sub_100024900();
    v42 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);

    (*(v48 + 8))(v42, v8);
    (*(v45 + 8))(v11, v47);
  }
}

void sub_100A98B88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v61 - v8;
  v11 = *(v10 + 192);
  if (*(v1 + v11) != 1)
  {
    return;
  }

  *(v1 + v11) = 0;
  v12 = *(*v1 + 176);
  swift_beginAccess();
  v64 = v12;
  v13 = *(v2 + v12);
  if (v13 || (v13 = *(v2 + *(*v2 + 184))) != 0)
  {
    v14 = *(v13 + *(*v13 + 112));
    v15 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v59 = RequestResponse.Controller.revision.getter();
    v60 = *(v59 + *(*v59 + 112));

    v15 = v60 + 1;
    if (!__OFADD__(v60, 1))
    {
LABEL_5:
      v62 = v7;
      v16 = *(*v2 + 96);
      swift_beginAccess();
      v63 = v5;
      v61[0] = v5[2];
      v61[1] = v5 + 2;
      (v61[0])(v9, v2 + v16, v4);
      v17 = *(*v2 + 160);
      swift_beginAccess();
      v72[0] = *(v2 + v17);
      v68 = v9;
      v69 = v15;
      *&v70 = v15;
      swift_beginAccess();
      v65 = *(v3 + 88);
      v66 = v4;
      type metadata accessor for RequestResponse.Revision(255, v4, v65, v18);
      swift_getFunctionTypeMetadata2();
      type metadata accessor for Array();
      type metadata accessor for Dictionary();

      v7 = v68;
      Dictionary.subscript.setter();
      swift_endAccess();
      *(v2 + v17) = static Array._allocateUninitialized(_:)();

      v19 = v2 + *(*v2 + 112);
      swift_beginAccess();
      v20 = *v19;
      if (*v19)
      {
        v21 = *(v19 + 8);

        v20(v2, v7);
        sub_100020438(v20, v21);
      }

      swift_checkMetadataState();
      swift_allocObject();
      v5 = sub_10003B910(v69, v7);
      *(v2 + v64) = v5;

      if (qword_1011A6AE0 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_8:
  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_101219DD0);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v67 = v5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v73[0] = v27;
    *v26 = 136446210;
    v28 = (*(v65 + 24))();
    v30 = sub_100010678(v28, v29, v73);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "╭ %{public}s", v26, 0xCu);
    sub_10000959C(v27);

    v7 = v68;
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "╞ 🕺Performing", v33, 2u);
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v34, v35, "╞ RevisionID=%{public}ld", v36, 0xCu);
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v73[0] = v40;
    *v39 = 136446210;
    swift_beginAccess();
    (v61[0])(v62, v7, v66);
    v41 = String.init<A>(describing:)();
    v43 = sub_100010678(v41, v42, v73);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "╰ Request=%{public}s", v39, 0xCu);
    sub_10000959C(v40);
  }

  v44 = v69;
  swift_beginAccess();
  v45 = RequestResponse.Controller.revision.getter();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v47[2] = v67;
  v47[3] = v46;
  v47[4] = v44;
  v48 = v65;
  v49 = v7;
  v50 = *(v65 + 32);

  v51 = v66;
  v50(v73, v45, sub_100A9ADE0, v47, v66, v48);

  sub_100A9ADEC(v73, &v70);
  if (v71)
  {
    sub_100059A8C(&v70, v72);
    v52 = v64;
    swift_beginAccess();
    v53 = *(v2 + v52);
    v54 = v63;
    if (v53)
    {
      swift_endAccess();
      v56 = v68;
      if (*(v53 + *(*v53 + 112)) == v69)
      {
        type metadata accessor for RequestResponse.Controller.TaskInvalidator(0, v51, v65, v55);
        sub_100008FE4(v72, &v70);
        v57 = swift_allocObject();
        *(v57 + 56) = 0;
        *(v57 + 64) = 0;
        *(v57 + 72) = 0;
        sub_100059A8C(&v70, v57 + 16);
        WitnessTable = swift_getWitnessTable();

        sub_100A9AE5C(v57, WitnessTable);
      }

      sub_10000959C(v72);
      sub_100A95C44(v73);
      (v54[1])(v56, v51);
    }

    else
    {
      sub_10000959C(v72);
      sub_100A95C44(v73);
      swift_endAccess();

      (v54[1])(v68, v51);
    }
  }

  else
  {
    sub_100A95C44(v73);

    sub_100A95C44(&v70);
    (v63[1])(v49, v51);
  }
}

uint64_t sub_100A994F8(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_100059A8C(a1, v2 + 16);
  return v2;
}

uint64_t sub_100A99544(uint64_t result)
{
  if (*(v1 + 56) == 1 && (result & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
    sub_10000954C((v1 + 16), v2);
    return (*(v3 + 8))(v2, v3);
  }

  return result;
}

uint64_t sub_100A995A8(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_100A99544(v2);
}

uint64_t sub_100A995B8()
{
  sub_10000959C(v0 + 2);
  sub_100020438(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_100A995F8()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_100030444(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_100A99648(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_100020438(v5, v6);
}

uint64_t (*sub_100A996F8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_100A99724;
}

double sub_100A99758(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a4 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  v13 = type metadata accessor for Result();
  (*(*(v13 - 8) + 24))(&a4[v12], a1, v13);
  swift_endAccess();
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    type metadata accessor for GenericRequestResponseInvalidation();
    v14 = swift_allocObject();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 16) = 0x636972656E6547;
    *(v14 + 24) = 0xE700000000000000;
    a3 = sub_1000297E8(qword_1011AEA88, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  }

  swift_unknownObjectRetain();
  sub_100A9AE5C(v14, a3);
  swift_unknownObjectRelease();
  sub_10002705C();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a4;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A9AEC4, v15);

  return result;
}

double sub_100A99980(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1011A6AE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101219DD0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35[0] = v13;
      *v12 = 136446210;
      v14 = (*(*(v5 + 88) + 24))(*(v5 + 80));
      v16 = sub_100010678(v14, v15, v35);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "╭ %{public}s", v12, 0xCu);
      sub_10000959C(v13);
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "╞ ✅ Finished Loading", v19, 2u);
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v20, v21, "╞ RevisionID=%{public}ld", v22, 0xCu);
    }

    v23 = *(a3 + *(*a3 + 112));
    swift_beginAccess();
    sub_1009940DC(v23);
    v25 = v24;
    swift_endAccess();
    if (v25)
    {
      v26 = *(*v8 + 152);
      swift_beginAccess();
      if (*(v8 + v26) != 1)
      {
        v33 = RequestResponse.Controller.revision.getter();
        v34 = *(v33 + *(*v33 + 112));

        if (v34 < v23)
        {
          sub_100A97F6C(a3);
        }

        goto LABEL_24;
      }

      v27 = *(*v8 + 184);
      v28 = *(v8 + v27);
      if (v28)
      {
        if (*(v28 + *(*v28 + 112)) >= a2)
        {
          goto LABEL_24;
        }
      }

      else if (a2 <= 0)
      {
LABEL_24:

        return result;
      }

      *(v8 + v27) = a3;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "╰ 💤 Set as Pending; RRC is Paused";
        goto LABEL_22;
      }
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "╰ ⏭ Skipping revision; Cancelled";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);
      }
    }
  }

  return result;
}