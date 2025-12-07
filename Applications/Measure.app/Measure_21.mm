uint64_t sub_1001B87B0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  aBlock[4] = sub_1001B8C60;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_1004723B8;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1001B8A94()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure12DeleteButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v4 = 0x80000001004021D0;
  v5 = 0xD000000000000014;

  Log.default(_:isPrivate:)(*&v5, 0);
}

unint64_t sub_1001B8B60()
{
  result = qword_1004AF158;
  if (!qword_1004AF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF158);
  }

  return result;
}

unint64_t sub_1001B8BB4()
{
  result = qword_1004AF160;
  if (!qword_1004AF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF160);
  }

  return result;
}

uint64_t sub_1001B8C08()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1001B8C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1001B8C90()
{
  v1 = sub_1001BA310();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromParent];
  }

LABEL_10:

  *(v0 + qword_1004AF270) = _swiftEmptyArrayStorage;
}

void sub_1001B8D80(uint64_t a1, CGFloat a2, CGFloat a3, double a4)
{
  v5 = v4;
  sub_1001BA20C(&v16);
  v15 = v16;
  v17.x = a2;
  v17.y = a3;
  v10 = CGPointApplyAffineTransform(v17, &v15);
  v11 = [objc_opt_self() shapeNodeWithCircleOfRadius:a4];
  [v11 setFillColor:a1];
  v12 = *(v5 + qword_1004AF278);
  if (v12)
  {
    v13 = v11;
    [v12 addChild:v13];
    [v13 setPosition:{v10.x, v10.y}];

    *&v15.a = sub_1001BA310();
    v14 = v13;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v15.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v15.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    *(v5 + qword_1004AF270) = v15.a;
  }

  else
  {
    __break(1u);
  }
}

void sub_1001B8F04()
{
  v1 = v0 + qword_1004AF198;
  if (*(v0 + qword_1004AF198 + 32))
  {
    v2 = qword_1004AF190;
    [*(v0 + qword_1004AF190) position];
    if (qword_1004A06D8 != -1)
    {
      swift_once();
    }

    static CGPoint.+ infix(_:_:)();
    if (qword_1004A06E8 != -1)
    {
      swift_once();
    }

    static CGPoint.+ infix(_:_:)();
    [*(v0 + v2) position];
    static CGPoint.+ infix(_:_:)();
    static CGPoint.+ infix(_:_:)();
    CGRect.init(p1:p2:)();
    *v1 = v3;
    *(v1 + 8) = v4;
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    *(v1 + 32) = 0;
  }
}

void sub_1001B906C()
{
  v1 = v0 + qword_1004AF1A0;
  if (*(v0 + qword_1004AF1A0 + 32))
  {
    v2 = qword_1004AF190;
    [*(v0 + qword_1004AF190) position];
    if (qword_1004A06D8 != -1)
    {
      swift_once();
    }

    static CGPoint.+ infix(_:_:)();
    if (qword_1004A06E8 != -1)
    {
      swift_once();
    }

    static CGPoint.+ infix(_:_:)();
    [*(v0 + v2) position];
    static CGPoint.+ infix(_:_:)();
    static CGPoint.+ infix(_:_:)();
    CGRect.init(p1:p2:)();
    *v1 = v3;
    *(v1 + 8) = v4;
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    *(v1 + 32) = 0;
  }
}

id sub_1001B91DC(uint64_t *a1, double (*a2)(void))
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
    v8 = v7;
    v10 = v9;
    v12 = v11;
    if (qword_1004A06E8 != -1)
    {
      swift_once();
    }

    v13 = [objc_opt_self() bezierPathWithRoundedRect:v6 cornerRadius:{v8, v10, v12, *&qword_1004D5278 * 0.5}];
    v14 = [v13 CGPath];

    v15 = *(v2 + v3);
    *(v2 + v3) = v14;
    v5 = v14;

    v4 = 0;
  }

  v16 = v4;
  return v5;
}

id sub_1001B9300(uint64_t a1)
{
  v2 = [objc_allocWithZone(SKShapeNode) init];
  [v2 setLineWidth:0.0];
  v3 = sub_1001B91DC(&qword_1004AF1A8, sub_1001B8F04);
  [v2 setPath:v3];

  v4 = *(a1 + qword_1004AF168);
  sub_1001B8F04();
  Width = CGRectGetWidth(v14);
  Height = CGRectGetHeight(*(a1 + qword_1004AF198));
  v6.f64[0] = Width;
  v6.f64[1] = Height;
  v7 = COERCE_DOUBLE(vcvt_f32_f64(v6));
  v8 = objc_allocWithZone(SKUniform);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithName:v9 vectorFloat2:v7];

  [v4 addUniform:v10];
  [v2 setFillShader:v4];
  v11 = [objc_opt_self() whiteColor];
  [v2 setFillColor:v11];

  return v2;
}

id sub_1001B94A0()
{
  v1 = qword_1004AF1C0;
  v2 = *(v0 + qword_1004AF1C0);
  if (v2)
  {
    v3 = *(v0 + qword_1004AF1C0);
  }

  else
  {
    sub_1001B9500();
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1001B9500()
{
  v0 = [objc_allocWithZone(SKEffectNode) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() filterWithName:v1];

  if (v2)
  {
    [v2 setDefaults];
    v3 = v2;
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v5 = String._bridgeToObjectiveC()();
    [v3 setValue:isa forKey:v5];

    [v0 setFilter:v3];
    [v0 setShouldEnableEffects:1];
  }

  else
  {
    __break(1u);
  }
}

id sub_1001B9634(uint64_t a1)
{
  v2 = [objc_allocWithZone(SKShapeNode) init];
  [v2 setLineWidth:0.0];
  v3 = sub_1001B91DC(&qword_1004AF1B0, sub_1001B906C);
  [v2 setPath:v3];

  v4 = *(a1 + qword_1004AF170);
  sub_1001B906C();
  Width = CGRectGetWidth(v14);
  Height = CGRectGetHeight(*(a1 + qword_1004AF1A0));
  v6.f64[0] = Width;
  v6.f64[1] = Height;
  v7 = COERCE_DOUBLE(vcvt_f32_f64(v6));
  v8 = objc_allocWithZone(SKUniform);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithName:v9 vectorFloat2:v7];

  [v4 addUniform:v10];
  [v2 setFillShader:v4];
  v11 = [objc_opt_self() whiteColor];
  [v2 setFillColor:v11];

  return v2;
}

void sub_1001B97D4()
{
  v0 = [objc_allocWithZone(SKEffectNode) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() filterWithName:v1];

  if (v2)
  {
    [v2 setDefaults];
    v3 = v2;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = String._bridgeToObjectiveC()();
    [v3 setValue:isa forKey:v5];

    [v0 setFilter:v3];
    [v0 setShouldEnableEffects:1];
    v6 = v0;
    v7 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
    [v7 zPosition];
    v9 = v8;

    [v6 setZPosition:v9];
  }

  else
  {
    __break(1u);
  }
}

id sub_1001B9978()
{
  v0 = [objc_allocWithZone(SKShapeNode) init];
  [v0 setLineCap:1];
  if (qword_1004A06E8 != -1)
  {
    swift_once();
  }

  [v0 setLineWidth:*&qword_1004D5278];
  v1 = [objc_opt_self() darkGrayColor];
  [v0 setStrokeColor:v1];

  v2 = sub_1001B91DC(&qword_1004AF1A8, sub_1001B8F04);
  [v0 setPath:v2];

  v3 = v0;
  [v3 setBlendMode:3];
  v4 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
  [v4 zPosition];
  v6 = v5;

  [v3 setZPosition:v6 + -2.0];
  return v3;
}

id sub_1001B9B10()
{
  v1 = qword_1004AF1E0;
  v2 = *(v0 + qword_1004AF1E0);
  if (v2)
  {
    v3 = *(v0 + qword_1004AF1E0);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() labelNodeWithText:v4];

    v6 = objc_allocWithZone(NSAttributedString);
    v7 = v5;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 initWithString:v8];

    [v7 setAttributedText:v9];
    [v7 setHorizontalAlignmentMode:2];

    v10 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1001B9C24()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() labelNodeWithText:v0];

  v2 = objc_allocWithZone(NSAttributedString);
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 initWithString:v4];

  [v3 setAttributedText:v5];
  v6 = sub_1001B9B10();
  [v6 zPosition];
  v8 = v7;

  [v3 setZPosition:v8 + -1.0];
  [v3 setHorizontalAlignmentMode:2];

  return v3;
}

id sub_1001B9D44(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_1001B9DA8()
{
  v0 = [objc_allocWithZone(SKEffectNode) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() filterWithName:v1];

  if (v2)
  {
    [v2 setDefaults];
    v3 = v2;
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v5 = String._bridgeToObjectiveC()();
    [v3 setValue:isa forKey:v5];

    [v0 setFilter:v3];
    [v0 setShouldEnableEffects:1];
    v6 = v0;
    v7 = sub_1001B9B10();
    [v7 zPosition];
    v9 = v8;

    [v6 setZPosition:v9 + -1.0];
  }

  else
  {
    __break(1u);
  }
}

id sub_1001B9F38(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(SKNode) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void sub_1001B9FA8(uint64_t a1)
{
  v2 = sub_1001B9B10();
  v3 = (a1 + qword_1004AF208);
  v4 = *(a1 + qword_1004AF208);
  v5 = *(a1 + qword_1004AF208 + 8);
  v7 = *(a1 + qword_1004AF208 + 16);
  v6 = *(a1 + qword_1004AF208 + 24);
  v8 = *(a1 + qword_1004AF208 + 32);

  v9 = v7;
  v10 = v6;
  v11 = sub_1001C0658(v4, v5, v9, v6);

  [v2 setAttributedText:v11];

  v12 = sub_1001B9D44(&qword_1004AF1E8, sub_1001B9C24);
  v13 = *v3;
  v14 = v3[1];
  v15 = v3[2];
  v16 = v3[3];
  v17 = v3[4];
  v18 = v17;

  v19 = v15;
  v20 = v16;
  v21 = sub_1001C0658(v13, v14, v19, v17);

  [v12 setAttributedText:v21];
}

void sub_1001BA11C(uint64_t a2@<X8>)
{
  v4 = (v2 + qword_1004AF220);
  if ((*(v2 + qword_1004AF220 + 48) & 1) == 0)
  {
    v8 = *(v4 + 4);
    v7 = *(v4 + 5);
    v10 = *v4;
    v9 = v4[1];
    goto LABEL_6;
  }

  v5 = *MeasureCore.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v6 = *(v5 + 112);
  if (v6)
  {
    swift_beginAccess();
    if (*(v6 + 192))
    {

      ADProcessor.transformer.getter();

      ADTransformer.viewToAD.getter();
      v8 = v13;
      v7 = v14;

      v10 = v11;
      v9 = v12;
      *v4 = v11;
      v4[1] = v12;
      *(v4 + 4) = v13;
      *(v4 + 5) = v14;
      *(v4 + 48) = 0;
LABEL_6:
      *a2 = v10;
      *(a2 + 16) = v9;
      *(a2 + 32) = v8;
      *(a2 + 40) = v7;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

CGAffineTransform *sub_1001BA20C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + qword_1004AF230);
  if (*(v1 + qword_1004AF230 + 48))
  {
    CGAffineTransformMakeScale(&t1, 1.0, -1.0);
    tx = t1.tx;
    ty = t1.ty;
    v14 = *&t1.c;
    v15 = *&t1.a;
    [*(v1 + qword_1004AF180) frame];
    Height = CGRectGetHeight(v19);
    CGAffineTransformMakeTranslation(&t1, 0.0, Height);
    v7 = *&t1.a;
    v8 = *&t1.c;
    v9 = *&t1.tx;
    *&t1.a = v15;
    *&t1.c = v14;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v7;
    *&t2.c = v8;
    *&t2.tx = v9;
    CGAffineTransformConcat(&v16, &t1, &t2);
    t1 = v16;
    result = CGAffineTransformInvert(&t2, &t1);
    v12 = *&t2.a;
    v11 = *&t2.c;
    v13 = *&t2.tx;
    *v3 = *&t2.a;
    v3[1] = v11;
    v3[2] = v13;
    *(v3 + 48) = 0;
  }

  else
  {
    v11 = v3[1];
    v13 = v3[2];
    v12 = *v3;
  }

  *a1 = v12;
  a1[1] = v11;
  a1[2] = v13;
  return result;
}

double *sub_1001BA310()
{
  if (*(v0 + qword_1004AF270))
  {
    v1 = *(v0 + qword_1004AF270);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + qword_1004AF270) = _swiftEmptyArrayStorage;
  }

  return v1;
}

id sub_1001BA358(void *a1)
{
  v2 = v1;
  v64 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1004AF168;
  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 shaderWithFileNamed:v10];

  *&v2[v9] = v12;
  v13 = qword_1004AF170;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v11 shaderWithFileNamed:v14];

  *&v2[v13] = v15;
  v16 = &v2[qword_1004AF178];
  *v16 = 0xD000000000000012;
  v16[1] = 0x800000010040D1B0;
  v17 = qword_1004AF188;
  *&v2[v17] = [objc_allocWithZone(SKNode) init];
  v18 = qword_1004AF190;
  *&v2[v18] = [objc_allocWithZone(SKNode) init];
  v19 = &v2[qword_1004AF198];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  v20 = &v2[qword_1004AF1A0];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  *&v2[qword_1004AF1A8] = 0;
  *&v2[qword_1004AF1B0] = 0;
  *&v2[qword_1004AF1B8] = 0;
  *&v2[qword_1004AF1C0] = 0;
  *&v2[qword_1004AF1C8] = 0;
  *&v2[qword_1004AF1D0] = 0;
  *&v2[qword_1004AF1D8] = 0;
  *&v2[qword_1004AF1E0] = 0;
  *&v2[qword_1004AF1E8] = 0;
  *&v2[qword_1004AF1F0] = 0;
  *&v2[qword_1004AF1F8] = 0;
  *&v2[qword_1004AF200] = 0;
  v21 = &v2[qword_1004AF208];
  if (qword_1004A06A0 != -1)
  {
    swift_once();
  }

  v22 = qword_1004D5218;
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 whiteColor];
  v26 = [v23 darkGrayColor];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v21[2] = v24;
  v21[3] = v25;
  v21[4] = v26;
  v2[qword_1004AF210] = 0;
  v27 = qword_1004AF218;
  LOBYTE(aBlock[0]) = 0;
  sub_10000F974(&qword_1004A3FA8, &qword_1003D8280);
  swift_allocObject();
  *&v2[v27] = Synchronized.init(wrappedValue:)();
  v28 = &v2[qword_1004AF220];
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *v28 = 0u;
  v28[48] = 1;
  v29 = &v2[qword_1004AF228];
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *v29 = 0u;
  v29[48] = 1;
  v30 = &v2[qword_1004AF230];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 2) = 0u;
  v30[48] = 1;
  v31 = qword_1004AF238;
  KeyPath = swift_getKeyPath();
  v33 = sub_10000F974(qword_1004AB020, &qword_1003E2BB0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v34 = qword_1004D5058;
  v35 = *(v33 + 272);
  swift_retain_n();
  *&v2[v31] = v35(KeyPath, v34);
  v36 = qword_1004AF240;
  v37 = swift_getKeyPath();
  v38 = *(sub_10000F974(&qword_1004A8770, &qword_1003DCD10) + 272);

  *&v2[v36] = v38(v37, v34);
  v39 = qword_1004AF248;
  v40 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  v41 = swift_getKeyPath();
  v42 = *(v40 + 272);

  *&v2[v39] = v42(v41, v34);
  v43 = qword_1004AF250;
  v44 = swift_getKeyPath();
  v45 = sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0);
  *&v2[v43] = (*(v45 + 272))(v44, v34);
  v46 = qword_1004AF258;
  v47 = swift_getKeyPath();
  v48 = sub_10000F974(&unk_1004A3F40, &qword_1003D74C0);
  *&v2[v46] = (*(v48 + 272))(v47, v34);
  v49 = qword_1004AF260;
  LOBYTE(aBlock[0]) = 0;
  swift_allocObject();
  *&v2[v49] = Synchronized.init(wrappedValue:)();
  v50 = &v2[qword_1004AF268];
  *v50 = 0;
  v50[1] = 0;
  *&v2[qword_1004AF270] = 0;
  v51 = qword_1004AF278;
  *&v2[qword_1004AF278] = 0;
  v52 = &v2[qword_1004AF280];
  *v52 = 0;
  v52[1] = 0xE000000000000000;
  v53 = v64;
  *&v2[qword_1004AF180] = v64;
  v54 = v53;
  v55 = [v54 overlaySKScene];
  v56 = *&v2[v51];
  *&v2[v51] = v55;

  v72.receiver = v2;
  v72.super_class = ObjectType;
  v57 = objc_msgSendSuper2(&v72, "init");
  v58 = Contexts.UIKit.init()();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  aBlock[4] = sub_1001C05A8;
  aBlock[5] = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_1004724B8;
  v60 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  sub_1001C19A4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  v61 = v69;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v60);

  (*(v68 + 8))(v5, v61);
  (*(v66 + 8))(v8, v67);

  return v57;
}

void sub_1001BABD4()
{
  v1 = *(v0 + qword_1004AF278);
  if (v1)
  {
    v2 = qword_1004AF188;
    v3 = *(v0 + qword_1004AF188);
    v29 = v1;
    [v29 addChild:v3];
    v4 = qword_1004AF190;
    [*(v0 + v2) addChild:*(v0 + qword_1004AF190)];
    v5 = sub_1001B9F38(&qword_1004AF1F8);
    v6 = sub_1001B9B10();
    [v5 addChild:v6];

    v7 = qword_1004AF1F8;
    [*(v0 + v4) addChild:*(v0 + qword_1004AF1F8)];
    v8 = qword_1004A06D0;
    v9 = *(v0 + qword_1004AF1E0);
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = *&qword_1004D5250;
    v11 = *&qword_1004D5258;
    [v9 setPosition:{*&qword_1004D5250, *&qword_1004D5258}];

    v12 = *(v0 + v7);
    v13 = qword_1004A06C8;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = xmmword_1004D5240;
    [v14 setPosition:xmmword_1004D5240];

    v16 = sub_1001B9D44(&qword_1004AF1D0, sub_1001B97D4);
    v17 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
    [v16 addChild:v17];

    [*(v0 + v4) addChild:*(v0 + qword_1004AF1D0)];
    v18 = *(v0 + v4);
    v19 = sub_1001B94A0();
    [v18 addChild:v19];

    v20 = *(v0 + qword_1004AF1C0);
    v21 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
    [v20 addChild:v21];

    v22 = sub_1001B9F38(&qword_1004AF200);
    v23 = sub_1001B9D44(&qword_1004AF1E8, sub_1001B9C24);
    [v22 addChild:v23];

    v24 = sub_1001B9D44(&qword_1004AF1F0, sub_1001B9DA8);
    v25 = qword_1004AF200;
    [v24 addChild:*(v0 + qword_1004AF200)];

    v26 = qword_1004AF1F0;
    v27 = *(v0 + qword_1004AF1F0);
    v28 = sub_1001B9D44(&qword_1004AF1D8, sub_1001B9978);
    [v27 addChild:v28];

    [*(v0 + v4) addChild:*(v0 + v26)];
    [*(v0 + qword_1004AF1E8) setPosition:{v10, v11}];
    [*(v0 + v25) setPosition:v15];
  }
}

void sub_1001BAFF0()
{
  v1 = v0;
  v2 = qword_1004AF168;
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 shaderWithFileNamed:v3];

  *(v1 + v2) = v5;
  v6 = qword_1004AF170;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v4 shaderWithFileNamed:v7];

  *(v1 + v6) = v8;
  v9 = (v1 + qword_1004AF178);
  *v9 = 0xD000000000000012;
  v9[1] = 0x800000010040D1B0;
  v10 = qword_1004AF188;
  *(v1 + v10) = [objc_allocWithZone(SKNode) init];
  v11 = qword_1004AF190;
  *(v1 + v11) = [objc_allocWithZone(SKNode) init];
  v12 = v1 + qword_1004AF198;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 1;
  v13 = v1 + qword_1004AF1A0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 1;
  *(v1 + qword_1004AF1A8) = 0;
  *(v1 + qword_1004AF1B0) = 0;
  *(v1 + qword_1004AF1B8) = 0;
  *(v1 + qword_1004AF1C0) = 0;
  *(v1 + qword_1004AF1C8) = 0;
  *(v1 + qword_1004AF1D0) = 0;
  *(v1 + qword_1004AF1D8) = 0;
  *(v1 + qword_1004AF1E0) = 0;
  *(v1 + qword_1004AF1E8) = 0;
  *(v1 + qword_1004AF1F0) = 0;
  *(v1 + qword_1004AF1F8) = 0;
  *(v1 + qword_1004AF200) = 0;
  v14 = (v1 + qword_1004AF208);
  if (qword_1004A06A0 != -1)
  {
    swift_once();
  }

  v15 = qword_1004D5218;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 whiteColor];
  v19 = [v16 darkGrayColor];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v14[2] = v17;
  v14[3] = v18;
  v14[4] = v19;
  *(v1 + qword_1004AF210) = 0;
  v20 = qword_1004AF218;
  sub_10000F974(&qword_1004A3FA8, &qword_1003D8280);
  swift_allocObject();
  *(v1 + v20) = Synchronized.init(wrappedValue:)();
  v21 = v1 + qword_1004AF220;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  *(v21 + 48) = 1;
  v22 = v1 + qword_1004AF228;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *v22 = 0u;
  *(v22 + 48) = 1;
  v23 = v1 + qword_1004AF230;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 1;
  v24 = qword_1004AF238;
  KeyPath = swift_getKeyPath();
  v26 = sub_10000F974(qword_1004AB020, &qword_1003E2BB0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v27 = qword_1004D5058;
  v28 = *(v26 + 272);
  swift_retain_n();
  *(v1 + v24) = v28(KeyPath, v27);
  v29 = qword_1004AF240;
  v30 = swift_getKeyPath();
  v31 = *(sub_10000F974(&qword_1004A8770, &qword_1003DCD10) + 272);

  *(v1 + v29) = v31(v30, v27);
  v32 = qword_1004AF248;
  v33 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  v34 = swift_getKeyPath();
  v35 = *(v33 + 272);

  *(v1 + v32) = v35(v34, v27);
  v36 = qword_1004AF250;
  v37 = swift_getKeyPath();
  v38 = sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0);
  *(v1 + v36) = (*(v38 + 272))(v37, v27);
  v39 = qword_1004AF258;
  v40 = swift_getKeyPath();
  v41 = sub_10000F974(&unk_1004A3F40, &qword_1003D74C0);
  *(v1 + v39) = (*(v41 + 272))(v40, v27);
  v42 = qword_1004AF260;
  swift_allocObject();
  *(v1 + v42) = Synchronized.init(wrappedValue:)();
  v43 = (v1 + qword_1004AF268);
  *v43 = 0;
  v43[1] = 0;
  *(v1 + qword_1004AF270) = 0;
  *(v1 + qword_1004AF278) = 0;
  v44 = (v1 + qword_1004AF280);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1001BB5B8()
{

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_1001BB61C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = qword_1004AF190;
  v4 = *(a2 + qword_1004AF190);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 actionForKey:v5];

  if (v6)
  {
  }

  Synchronized.wrappedValue.getter();

  if ((v6 != 0) != v12)
  {
    v7 = *(a2 + v3);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 actionForKey:v8];

    if (v9)
    {
    }

    v12 = v9 != 0;

    Synchronized.wrappedValue.setter();
  }

  v10 = sub_10008D4F0();
  if (v10)
  {
    v11 = v10;
    sub_1001BB7DC();
    sub_1001BBB2C();

    Synchronized.wrappedValue.getter();

    if (v12)
    {
      sub_1001BC3B0(v11);
    }
  }
}

void sub_1001BB7DC()
{
  v1 = v0;
  v2 = *(**(v0 + qword_1004AF238) + 144);

  v2(__src, v3);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  if ((__dst[30] & 1) == 0)
  {

    StateValue.wrappedValue.getter();

    memcpy(__src, v21, 0x200uLL);
    v4 = sub_10008D4F0();
    sub_100013C4C(__src);
    if (v4)
    {

      v5 = *(**(v1 + qword_1004AF258) + 144);

      v5(v21, v6);

      if ((v21[96] & 1) == 0)
      {
        v7 = -COERCE_FLOAT(vdupq_n_s64(*(v21 + 88)).i32[2]);
        v8 = (v7 - *Float.piDiv2.unsafeMutableAddressor());
        if (qword_1004A06E8 != -1)
        {
          swift_once();
        }

        v9 = *&qword_1004D5278 + 1.0;
        CGAffineTransformMakeRotation(v21, v8);
        v24.x = 0.0;
        v24.y = v9;
        CGPointApplyAffineTransform(v24, v21);
        type metadata accessor for MeasureCamera();

        StateValue.wrappedValue.getter();

        memcpy(v20, v21, sizeof(v20));
        sub_100013C4C(v20);

        StateValue.wrappedValue.getter();

        memcpy(v21, v19, sizeof(v21));
        sub_100013C4C(v21);
        static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
        CGPoint.init(_:)();
        static CGPoint.- infix(_:_:)();
        v11 = v10;
        v13 = v12;
        v14 = objc_opt_self();
        sub_1001BA20C(v19);
        v25.x = v11;
        v25.y = v13;
        v15 = CGPointApplyAffineTransform(v25, v19);
        v16 = [v14 moveTo:v15.x duration:{v15.y, 0.0}];
        v17 = qword_1004AF188;
        [*(v1 + qword_1004AF188) runAction:v16];
        v18 = [v14 rotateToAngle:v8 duration:0.0];
        [*(v1 + v17) runAction:v18];
      }
    }
  }
}

void sub_1001BBB2C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10000F974(&qword_1004A97C0, &qword_1003DD438);
  v59 = *(v2 - 8);
  v3 = *(v59 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v55 - v6;
  v8 = qword_1004AF238;
  v9 = *(**&v0[qword_1004AF238] + 144);

  v9(v60, v10);

  memcpy(v61, v60, 0x213uLL);
  sub_10006BE28(v61);
  if ((v61[114] & 1) == 0)
  {
    v11 = *&v61[113];
    v12 = *(**&v0[v8] + 144);

    v12(v60, v13);

    if (v60[31]._countAndFlagsBits)
    {
      countAndFlagsBits = v60[31]._countAndFlagsBits;
      object = v60[30]._object;
      v14 = qword_1004AF240;
      v15 = *(**&v0[qword_1004AF240] + 144);

      v15(v60, v16);

      if ((v60[4]._countAndFlagsBits & 1) == 0)
      {
        v17 = *(**&v0[v14] + 144);

        v17(v60, v18);

        if (v60[4]._countAndFlagsBits)
        {
          __break(1u);
          goto LABEL_30;
        }

        simd_float4x4.position.getter();
      }

      v19 = *(**&v0[v14] + 144);

      v19(v60, v20);

      if ((v60[9]._object & 1) != 0 || (v21 = *(**&v0[v14] + 144), v22 = , v21(v60, v22), , (v60[9]._object & 1) == 0))
      {
        v23 = *(**&v0[qword_1004AF250] + 144);

        v23(v24);

        v25 = sub_1000983B8();
        sub_1001C0858(v25, &v60[0]._countAndFlagsBits, v11);

        v26 = String._bridgeToObjectiveC()();

        [v1 set_accessibilitySpeakableHeight:v26];

        if ((v1[qword_1004AF210] & 1) != 0 || (v56 = qword_1004AF210, (v27 = sub_1001BCE74()) == 0))
        {
LABEL_27:

          return;
        }

        v55[0] = v27;
        if (qword_1004A0288 != -1)
        {
          swift_once();
        }

        v55[2] = *algn_1004D4DA8;
        v55[3] = qword_1004D4DA0;
        v55[1] = qword_1004D4DB0;
        v60[0]._countAndFlagsBits = 0;
        v60[0]._object = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        v28._object = 0x800000010040D1D0;
        v28._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v28);
        Float.write<A>(to:)();
        v29._countAndFlagsBits = 0xD000000000000016;
        v29._object = 0x800000010040D1F0;
        String.append(_:)(v29);
        Float.write<A>(to:)();
        v30._countAndFlagsBits = 0xD000000000000017;
        v30._object = 0x800000010040D210;
        String.append(_:)(v30);
        Float.write<A>(to:)();
        v31._countAndFlagsBits = 46;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);
        Log.default(_:isPrivate:)(v60[0], 0);

        sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1003D56B0;
        *(v32 + 32) = v1;
        sub_1001C19A4(&qword_1004AF518, type metadata accessor for PersonHeightView, &unk_1003E2B38);
        v33 = v1;
        MeasurementEvent.init(name:results:)();
        if (qword_1004A0180 != -1)
        {
          swift_once();
        }

        if (qword_1004D4AD0)
        {
          v34 = *(qword_1004D4AD0 + qword_1004D4F68);
          if (v34)
          {
            sub_1001C1658(v7, v4);
            v35 = (*(v59 + 80) + 16) & ~*(v59 + 80);
            v59 = swift_allocObject();
            sub_1001C1810(v4, v59 + v35);
            v36 = v34 + OBJC_IVAR____TtC7Measure15ResultsReporter_report;
            swift_beginAccess();
            v37 = *(type metadata accessor for Report(0) + 20);
            v38 = *(v36 + v37);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v36 + v37) = v38;
            v40 = v33;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v38 = sub_100068090(0, *(v38 + 2) + 1, 1, v38);
              *(v36 + v37) = v38;
            }

            v42 = *(v38 + 2);
            v41 = *(v38 + 3);
            if (v42 >= v41 >> 1)
            {
              v38 = sub_100068090((v41 > 1), v42 + 1, 1, v38);
            }

            *(v38 + 2) = v42 + 1;
            v43 = &v38[2 * v42];
            v44 = v59;
            *(v43 + 4) = sub_1001C1880;
            *(v43 + 5) = v44;
            *(v36 + v37) = v38;
            swift_endAccess();
            sub_1000CC5E0();

            v33 = v40;
          }

          v45 = *&v33[qword_1004AF190];
          v46 = String._bridgeToObjectiveC()();
          v47 = v55[0];
          [v45 runAction:v55[0] withKey:v46];

          [v33 toggleViewVisibilityWithIsVisible:1];
          sub_100018F04(v7, &qword_1004A97C0, &qword_1003DD438);
          v48 = object;
          v1[v56] = 1;
          v49 = &v33[qword_1004AF268];
          v50 = countAndFlagsBits;
          *v49 = v48;
          *(v49 + 1) = v50;
          goto LABEL_27;
        }

LABEL_31:
        __break(1u);
        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  v51 = qword_1004AF210;
  if (v1[qword_1004AF210] == 1)
  {
    v52 = &v1[qword_1004AF268];
    v53 = *&v1[qword_1004AF268 + 8];
    if (v53)
    {
      v54 = *v52;

      [v1 toggleViewVisibilityWithIsVisible:0];
      v1[v51] = 0;
      if (qword_1004A0350 != -1)
      {
        swift_once();
      }

      sub_100127DE4(v54, v53);

      *v52 = 0;
      v52[1] = 0;
      goto LABEL_27;
    }
  }
}

void sub_1001BC3B0(void *a1)
{
  v2 = v1;
  v4 = [a1 segmentationBuffer];
  if (!v4)
  {
    return;
  }

  v97 = v4;
  v5 = [a1 sceneDepth];
  if (!v5 || (v6 = v5, v96 = [v5 depthMap], v6, !v96))
  {
    v10 = v97;
LABEL_8:

    return;
  }

  v7 = *(v1 + qword_1004AF278);
  if (!v7)
  {

    v10 = v96;
    goto LABEL_8;
  }

  v8 = *(**(v1 + qword_1004AF238) + 144);

  v9 = v7;
  v8(__src);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  if (__dst[30])
  {
  }

  else
  {
    LODWORD(v11) = __dst[29];
    v93 = __dst[29];
    CVPixelBufferLockBaseAddress(v97, 1uLL);
    Width = CVPixelBufferGetWidth(v97);
    BaseAddress = CVPixelBufferGetBaseAddress(v97);
    CVPixelBufferLockBaseAddress(v96, 1uLL);
    v95 = CVPixelBufferGetBaseAddress(v96);
    v13 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
    v14 = &selRef_runAction_completion_;
    [v13 convertPoint:v9 toNode:{-35.0, 0.0}];
    v16 = v15;
    v18 = v17;

    sub_1001BA20C(v105);
    *__src = v105[0];
    *&__src[16] = v105[1];
    *&__src[32] = v105[2];
    CGAffineTransformInvert(v102, __src);
    *__src = *v102;
    *&__src[16] = *&v102[16];
    *&__src[32] = *&v102[32];
    v107.x = v16;
    v107.y = v18;
    CGPointApplyAffineTransform(v107, __src);
    v90 = qword_1004AF1B8;
    v19 = qword_1004A06D8;
    v20 = *(v2 + qword_1004AF1B8);
    if (v19 != -1)
    {
LABEL_82:
      swift_once();
    }

    [v20 *(v14 + 2880)];
    v22 = v21;
    v24 = v23;

    v25 = *(v2 + qword_1004AF230 + 16);
    *__src = *(v2 + qword_1004AF230);
    *&__src[16] = v25;
    *&__src[32] = *(v2 + qword_1004AF230 + 32);
    CGAffineTransformInvert(v102, __src);
    *__src = *v102;
    *&__src[16] = *&v102[16];
    *&__src[32] = *&v102[32];
    v108.x = v22;
    v108.y = v24;
    v26 = CGPointApplyAffineTransform(v108, __src);
    static CGPoint.- infix(_:_:)();
    v28 = v27;
    v30 = v29;
    CGPoint.normalized()();
    v32 = v31;
    v34 = v33;
    v35 = Float.piDiv2.unsafeMutableAddressor();
    CGAffineTransformMakeRotation(__src, *v35);
    v109.x = v32;
    v109.y = v34;
    v36 = CGPointApplyAffineTransform(v109, __src);
    if (qword_1004A0850 != -1)
    {
      swift_once();
    }

    v91 = v9;
    v37 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
    if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
    {
LABEL_84:
      __break(1u);
    }

    else
    {
      Height = CGRectGetHeight(*(v37 + 48));
      v99 = Width / Height;
      y = v26.y;
      x = v26.x;
      v94 = sub_1001C133C(v28, v30);
      LODWORD(v39) = v11;
      *(&v39 + 1) = *(&v93 + 1) + -0.175;
      *(&v39 + 1) = DWORD2(v93);
      v93 = v39;
      type metadata accessor for MeasureCamera();

      StateValue.wrappedValue.getter();

      memcpy(v102, __src, sizeof(v102));
      sub_100013C4C(v102);

      StateValue.wrappedValue.getter();

      memcpy(__src, v101, 0x200uLL);
      sub_100013C4C(__src);
      static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
      CGPoint.init(_:)();
      v40 = Width;
      Width = -1;
      v41 = 0.0;
      v9 = 0x7FEFFFFFFFFFFFFFLL;
      LODWORD(v11) = 0;
      v14 = 0x4068000000000000;
      v42 = 0.0;
      do
      {
        CGPoint.divide(by:)();
        static CGPoint.+ infix(_:_:)();
        v44 = v43;
        v46 = v45;
        v20 = v2;
        sub_1001BA11C(v101);
        v100 = *v101;
        v110.x = v44;
        v110.y = v46;
        v47 = CGPointApplyAffineTransform(v110, &v100);
        v48 = round(v47.x) + round(v47.y) * v40;
        if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if (v48 <= -9.22337204e18)
        {
          goto LABEL_75;
        }

        if (v48 >= 9.22337204e18)
        {
          goto LABEL_76;
        }

        if (v47.x >= 0.0 && v47.x < 256.0 && v47.y >= 0.0 && v47.y < 192.0)
        {
          v42 = v42 + v95[v48];
          v41 = v41 + 1.0;
        }

        CGPoint.divide(by:)();
        static CGPoint.+ infix(_:_:)();
        v52 = v51;
        v54 = v53;
        v20 = v2;
        sub_1001BA11C(v101);
        v100 = *v101;
        v111.x = v52;
        v111.y = v54;
        v55 = CGPointApplyAffineTransform(v111, &v100);
        v56 = round(v55.x) + round(v55.y) * v40;
        if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_74;
        }

        if (v56 <= -9.22337204e18)
        {
          goto LABEL_75;
        }

        if (v56 >= 9.22337204e18)
        {
          goto LABEL_76;
        }

        if (v55.x >= 0.0 && v55.x < 256.0 && v55.y >= 0.0 && v55.y < 192.0)
        {
          v42 = v42 + v95[v56];
          v41 = v41 + 1.0;
        }

        CGPoint.divide(by:)();
        static CGPoint.+ infix(_:_:)();
        v60 = v59;
        v62 = v61;
        v20 = v2;
        sub_1001BA11C(v101);
        v100 = *v101;
        v112.x = v60;
        v112.y = v62;
        v63 = CGPointApplyAffineTransform(v112, &v100);
        v64 = round(v63.x) + round(v63.y) * v40;
        if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_74;
        }

        if (v64 <= -9.22337204e18)
        {
          goto LABEL_75;
        }

        if (v64 >= 9.22337204e18)
        {
          goto LABEL_76;
        }

        if (v63.x >= 0.0 && v63.x < 256.0 && v63.y >= 0.0 && v63.y < 192.0)
        {
          v42 = v42 + v95[v64];
          v41 = v41 + 1.0;
        }

        ++Width;
      }

      while (Width != 2);
      v65 = v94;
      v92 = *(v94 + 2);
      if (v92)
      {
        v14 = 0;
        v66 = (v2 + qword_1004AF220);
        *&v93 = v94 + 4;
        Width = 0x43E0000000000000;
        v67 = v42 / v41;
        while (v14 < *(v65 + 2))
        {
          v68 = sub_1001BEF20(v36.x, v36.y, v99, *(v93 + 16 * v14), *(v93 + 16 * v14 + 8));
          v20 = v68;
          v11 = *(v68 + 2);
          if (v11)
          {
            v69 = 0;
            v9 = (v68 + 5);
            while (v69 < *(v20 + 2))
            {
              if (*(v37 + 80))
              {
                __break(1u);
                goto LABEL_84;
              }

              v71 = *(v9 - 8);
              v70 = *v9;
              v113.x = v71;
              v113.y = *v9;
              if (!CGRectContainsPoint(*(v37 + 48), v113))
              {
                goto LABEL_56;
              }

              v72 = v66[1];
              *&v100.a = *v66;
              *&v100.c = v72;
              *&v100.tx = v66[2];
              v73 = v71;
              *&v72 = v70;
              v74 = CGPointApplyAffineTransform(*(&v72 - 8), &v100);
              v75 = round(v74.x) + round(v74.y) * v40;
              if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_78;
              }

              if (v75 <= -9.22337204e18)
              {
                goto LABEL_79;
              }

              if (v75 >= 9.22337204e18)
              {
                goto LABEL_80;
              }

              if (BaseAddress[v75] >= 2u && vabds_f32(v95[v75], v67) < 0.2)
              {

                goto LABEL_70;
              }

              ++v69;
              v9 += 16;
              if (v11 == v69)
              {
                goto LABEL_56;
              }
            }

            goto LABEL_77;
          }

LABEL_56:
          ++v14;

          v65 = v94;
          if (v14 == v92)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_81;
      }

LABEL_70:

      static CGPoint.distance(_:_:)();
      if (qword_1004A06E0 != -1)
      {
        v87 = v76;
        swift_once();
        v76 = v87;
      }

      v77 = *&qword_1004D5270;
      v78 = (v76 / v77);
      v79 = [*(v2 + v90) fillColor];
      UIColor.rgba.getter();
      v81 = v80;
      v82 = *(v2 + v90);
      UIColor.rgba.getter();
      v84 = v83;
      UIColor.rgba.getter();
      v86 = [objc_allocWithZone(UIColor) initWithRed:v84 green:(v81 + v78) * 0.5 blue:v85 alpha:1.0];
      [v82 setFillColor:v86];

      CVPixelBufferUnlockBaseAddress(v96, 1uLL);
      CVPixelBufferUnlockBaseAddress(v97, 1uLL);
    }
  }
}

id sub_1001BCE74()
{
  v1 = qword_1004AF238;
  v2 = *(**&v0[qword_1004AF238] + 144);

  v2(__src, v3);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  if (__dst[60])
  {
    return 0;
  }

  v4 = *(**&v0[v1] + 144);

  v4(v130, v5);

  memcpy(__src, v130, 0x213uLL);
  sub_10006BE28(__src);
  if (__src[57])
  {
    return 0;
  }

  v7 = HIDWORD(__src[56]);
  type metadata accessor for MeasureCamera();

  StateValue.wrappedValue.getter();

  memcpy(v127, v130, sizeof(v127));
  sub_100013C4C(v127);

  StateValue.wrappedValue.getter();

  memcpy(v128, v130, sizeof(v128));
  sub_100013C4C(v128);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  CGPoint.init(_:)();

  StateValue.wrappedValue.getter();

  memcpy(v129, v130, sizeof(v129));
  sub_100013C4C(v129);

  StateValue.wrappedValue.getter();

  memcpy(v130, aBlock, 0x200uLL);
  sub_100013C4C(v130);
  static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
  CGPoint.init(_:)();
  static CGPoint.- infix(_:_:)();
  v8 = -CGPoint.length()();
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1001C1908;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_100472530;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  v125 = [v9 customActionWithDuration:v11 actionBlock:0.0];
  _Block_release(v11);
  v122 = [v9 moveTo:0.0 duration:{v8, 0.0}];
  v118 = [v9 fadeAlphaTo:0.0 duration:0.0];
  v120 = [v9 moveTo:0.0 duration:{0.0, 1.4}];
  aBlock[4] = sub_1001BE158;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BE174;
  aBlock[3] = &unk_100472558;
  v13 = _Block_copy(aBlock);
  [v120 setTimingFunction:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  aBlock[4] = sub_1001C1910;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_1004725A8;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  v124 = [v9 customActionWithDuration:v15 actionBlock:0.0];
  _Block_release(v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1001C1950;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_1004725F8;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  v115 = [v9 customActionWithDuration:v18 actionBlock:1.4];
  _Block_release(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  aBlock[4] = sub_1001C195C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_100472648;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  v107 = [v9 customActionWithDuration:v21 actionBlock:0.0];
  _Block_release(v21);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  aBlock[4] = sub_1001C1964;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_100472698;
  v24 = _Block_copy(aBlock);
  v25 = v22;

  v111 = [v9 customActionWithDuration:v24 actionBlock:0.0];
  _Block_release(v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  aBlock[4] = sub_1001C196C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_1004726E8;
  v27 = _Block_copy(aBlock);
  v28 = v25;

  v109 = [v9 customActionWithDuration:v27 actionBlock:0.0];
  _Block_release(v27);
  v102 = [v9 waitForDuration:0.05];
  v100 = [v9 fadeInWithDuration:0.4];
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  aBlock[4] = sub_1001C1974;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_100472738;
  v30 = _Block_copy(aBlock);
  v31 = v28;

  v117 = [v9 customActionWithDuration:v30 actionBlock:0.4];
  _Block_release(v30);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  aBlock[4] = sub_1001C197C;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_100472788;
  v33 = _Block_copy(aBlock);
  v34 = v31;

  v113 = [v9 customActionWithDuration:v33 actionBlock:0.4];
  _Block_release(v33);
  aBlock[4] = sub_1001BEB14;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BE174;
  aBlock[3] = &unk_1004727B0;
  v35 = _Block_copy(aBlock);
  [v113 setTimingFunction:v35];
  _Block_release(v35);
  v104 = [v9 waitForDuration:0.37];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  aBlock[4] = sub_1001C1984;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_100472800;
  v37 = _Block_copy(aBlock);
  v38 = v34;

  v97 = [v9 customActionWithDuration:v37 actionBlock:0.25];
  _Block_release(v37);
  v94 = [v9 waitForDuration:0.1];
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  aBlock[4] = sub_1001C198C;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_100472850;
  v40 = _Block_copy(aBlock);
  v41 = v38;

  v90 = [v9 customActionWithDuration:v40 actionBlock:0.11];
  _Block_release(v40);
  v88 = [v9 waitForDuration:0.07];
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  aBlock[4] = sub_1001C1994;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D1C58;
  aBlock[3] = &unk_1004728A0;
  v43 = _Block_copy(aBlock);
  v44 = v41;

  v45 = [v9 customActionWithDuration:v43 actionBlock:0.08];
  _Block_release(v43);
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1003D7BB0;
  *(v46 + 32) = v111;
  *(v46 + 40) = v109;
  *(v46 + 48) = v107;
  *(v46 + 56) = v118;
  *(v46 + 64) = v125;
  sub_100018630(0, &unk_1004AF520, SKAction_ptr);
  v112 = v111;
  v110 = v109;
  v108 = v107;
  v119 = v118;
  v106 = v125;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v96 = [v9 group:isa];

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1003D6280;
  *(v48 + 32) = v120;
  *(v48 + 40) = v115;
  v121 = v120;
  v116 = v115;
  v49 = Array._bridgeToObjectiveC()().super.isa;

  v50 = [v9 group:v49];

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1003D6280;
  *(v51 + 32) = v122;
  *(v51 + 40) = v50;
  v123 = v122;
  v99 = v50;
  v52 = Array._bridgeToObjectiveC()().super.isa;

  v53 = [v9 sequence:v52];

  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1003D6280;
  *(v54 + 32) = v102;
  *(v54 + 40) = v100;
  v103 = v102;
  v101 = v100;
  v55 = Array._bridgeToObjectiveC()().super.isa;

  v56 = [v9 sequence:v55];

  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1003D6280;
  *(v57 + 32) = v53;
  *(v57 + 40) = v56;
  v93 = v53;
  v92 = v56;
  v58 = Array._bridgeToObjectiveC()().super.isa;

  v59 = [v9 group:v58];

  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1003D6240;
  *(v60 + 32) = v94;
  *(v60 + 40) = v90;
  *(v60 + 48) = v88;
  *(v60 + 56) = v45;
  v95 = v94;
  v91 = v90;
  v89 = v88;
  v87 = v45;
  v61 = Array._bridgeToObjectiveC()().super.isa;

  v62 = [v9 sequence:v61];

  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1003D6280;
  *(v63 + 32) = v97;
  *(v63 + 40) = v62;
  v98 = v97;
  v86 = v62;
  v64 = Array._bridgeToObjectiveC()().super.isa;

  v65 = [v9 group:v64];

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1003D6280;
  *(v66 + 32) = v104;
  *(v66 + 40) = v65;
  v105 = v104;
  v85 = v65;
  v67 = Array._bridgeToObjectiveC()().super.isa;

  v68 = [v9 sequence:v67];

  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1003D6280;
  *(v69 + 32) = v113;
  *(v69 + 40) = v117;
  v114 = v113;
  v70 = v117;
  v71 = Array._bridgeToObjectiveC()().super.isa;

  v72 = [v9 group:v71];

  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1003D6280;
  *(v73 + 32) = v72;
  *(v73 + 40) = v68;
  v74 = v72;
  v75 = v68;
  v76 = Array._bridgeToObjectiveC()().super.isa;

  v77 = [v9 group:v76];

  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1003D6240;
  *(v78 + 32) = v96;
  *(v78 + 40) = v59;
  *(v78 + 48) = v77;
  *(v78 + 56) = v124;
  v79 = v96;
  v80 = v59;
  v81 = v77;
  v82 = v124;
  v83 = Array._bridgeToObjectiveC()().super.isa;

  v84 = [v9 sequence:v83];

  return v84;
}

double sub_1001BE108(uint64_t a1, uint64_t a2)
{

  Synchronized.wrappedValue.setter();

  return result;
}

float sub_1001BE174(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v5 = v3(v4, a2);

  return v5;
}

void sub_1001BE1C4(uint64_t a1, uint64_t a2)
{

  Synchronized.wrappedValue.setter();

  v3 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
  v4 = [v3 fillColor];

  v5 = *(a2 + qword_1004AF1B8);
  UIColor.rgba.getter();
  v7 = v6;
  UIColor.rgba.getter();
  v9 = [objc_allocWithZone(UIColor) initWithRed:v7 green:0.0 blue:v8 alpha:1.0];
  [v5 setFillColor:v9];

  v10 = *(**(a2 + qword_1004AF238) + 200);

  v12 = v10(v11);

  (*(*v12 + 280))(sub_1001C1BC4, 0);
}

void sub_1001BE37C(double a1, float a2, uint64_t a3, char *a4)
{
  v6 = *(**&a4[qword_1004AF250] + 144);

  v6(v7);

  v8 = sub_1000983B8();
  sub_1001C0858(v8, &v18, a2);
  v9 = v18;
  v10 = v19;

  v11 = &a4[qword_1004AF208];
  *v11 = v9;
  *(v11 + 1) = v10;

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v22 = sub_1001C199C;
  v23 = v13;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100041180;
  v21 = &unk_1004728F0;
  v14 = _Block_copy(&v18);
  v15 = a4;

  v16 = [v12 runBlock:v14];
  _Block_release(v14);
  v17 = sub_1001B9B10();
  [v17 runAction:v16];
}

void sub_1001BE540()
{
  v0 = sub_1001B9F38(&qword_1004AF1F8);
  if (qword_1004A06B0 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1004D5228;
  [v0 setScale:*&qword_1004D5228];

  v2 = sub_1001B9F38(&qword_1004AF200);
  [v2 setScale:v1];
}

void sub_1001BE608()
{
  v0 = sub_1001B94A0();
  v1 = [v0 filter];

  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v3];

  v4 = sub_1001B9D44(&qword_1004AF1D0, sub_1001B97D4);
  v5 = [v4 filter];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v5 setValue:v6 forKey:v7];
}

void sub_1001BE760(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
  v4 = [v3 fillColor];

  v5 = *(a2 + qword_1004AF1B8);
  UIColor.rgba.getter();
  v7 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:1.0 blue:v6 alpha:1.0];
  [v5 setFillColor:v7];

  v8 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
  v9 = [v8 fillColor];

  v10 = *(a2 + qword_1004AF1C8);
  UIColor.rgba.getter();
  v12 = v11;
  UIColor.rgba.getter();
  v14 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:v12 blue:v13 alpha:1.0];
  [v10 setFillColor:v14];
}

void sub_1001BE914()
{
  v0 = sub_1001B94A0();
  v1 = [v0 filter];

  if (v1)
  {
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v3 = String._bridgeToObjectiveC()();
    [v1 setValue:isa forKey:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001BE9F0(double a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = (v4 / -0.4) + 1.0;
  v6 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
  v7 = [v6 fillColor];

  v8 = *(a3 + qword_1004AF1B8);
  UIColor.rgba.getter();
  v10 = v9;
  UIColor.rgba.getter();
  v12 = [objc_allocWithZone(UIColor) initWithRed:v5 green:v10 blue:v11 alpha:1.0];
  [v8 setFillColor:v12];
}

void sub_1001BEB1C(double a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = v4 * 4.0;
  v6 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
  v7 = [v6 fillColor];

  v8 = *(a3 + qword_1004AF1C8);
  UIColor.rgba.getter();
  v10 = v9;
  UIColor.rgba.getter();
  v12 = [objc_allocWithZone(UIColor) initWithRed:v5 green:v10 blue:v11 alpha:1.0];
  [v8 setFillColor:v12];

  v13 = sub_1001B9D44(&qword_1004AF1D0, sub_1001B97D4);
  v14 = [v13 filter];

  if (v14)
  {
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v14 setValue:isa forKey:v16];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001BECD8(double a1)
{
  if (qword_1004A06B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *&qword_1004D5228;
  if (qword_1004A06B8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = v1 + (*&qword_1004D5230 - v1) * a1 / 0.11;
  v3 = sub_1001B9F38(&qword_1004AF1F8);
  [v3 setScale:v2];

  v6 = sub_1001B9F38(&qword_1004AF200);
  [v6 setScale:v2];
}

void sub_1001BEDFC(double a1)
{
  if (qword_1004A06B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *&qword_1004D5230;
  if (qword_1004A06C0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = v1 + (v1 - *&qword_1004D5238) * a1 / -0.08;
  v3 = sub_1001B9F38(&qword_1004AF1F8);
  [v3 setScale:v2];

  v6 = sub_1001B9F38(&qword_1004AF200);
  [v6 setScale:v2];
}

double *sub_1001BEF20(double a1, double a2, float a3, double a4, double a5)
{
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v6 = v5;
  v8 = v7;
  v9 = sub_100067A00(0, 1, 1, _swiftEmptyArrayStorage);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100067A00((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v12;
  v13 = &v9[2 * v11];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v16 = *(v9 + 3);
  v17 = v11 + 2;
  if ((v11 + 2) > (v16 >> 1))
  {
    v34 = v14;
    v35 = v15;
    v36 = sub_100067A00((v16 > 1), v11 + 2, 1, v9);
    v15 = v35;
    v14 = v34;
    v9 = v36;
  }

  *(v9 + 2) = v17;
  v18 = &v9[2 * v12];
  *(v18 + 4) = v14;
  *(v18 + 5) = v15;
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v21 = *(v9 + 3);
  v22 = v11 + 3;
  if ((v11 + 3) > (v21 >> 1))
  {
    v37 = v19;
    v38 = v20;
    v39 = sub_100067A00((v21 > 1), v11 + 3, 1, v9);
    v20 = v38;
    v19 = v37;
    v9 = v39;
  }

  *(v9 + 2) = v22;
  v23 = &v9[2 * v17];
  *(v23 + 4) = v19;
  *(v23 + 5) = v20;
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v26 = *(v9 + 3);
  v27 = v11 + 4;
  if ((v11 + 4) > (v26 >> 1))
  {
    v40 = v24;
    v41 = v25;
    v42 = sub_100067A00((v26 > 1), v11 + 4, 1, v9);
    v25 = v41;
    v24 = v40;
    v9 = v42;
  }

  *(v9 + 2) = v27;
  v28 = &v9[2 * v22];
  *(v28 + 4) = v24;
  *(v28 + 5) = v25;
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.add(_:)();
  v31 = *(v9 + 3);
  if ((v11 + 5) > (v31 >> 1))
  {
    v43 = v29;
    v44 = v30;
    v45 = sub_100067A00((v31 > 1), v11 + 5, 1, v9);
    v30 = v44;
    v29 = v43;
    v9 = v45;
  }

  *(v9 + 2) = v11 + 5;
  v32 = &v9[2 * v27];
  *(v32 + 4) = v29;
  *(v32 + 5) = v30;
  return v9;
}

id sub_1001BF210(uint64_t a1)
{

  v1 = String._bridgeToObjectiveC()();

  return v1;
}

double sub_1001BF270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (a1 + qword_1004AF280);
  *v5 = v4;
  v5[1] = v6;

  return result;
}

id sub_1001BF2C0(char a1)
{
  v3 = *(v1 + qword_1004AF188);
  v4 = "setHidden:";
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    [v3 setHidden:1];
    v7 = *(**(v1 + qword_1004AF238) + 200);

    v9 = v1;
    v10 = v7(v8);

    (*(*v10 + 280))(sub_1001C1BC4, 0);

    v11 = sub_1001B9F38(&qword_1004AF1F8);
    [v11 removeAllActions];

    v12 = sub_1001B9B10();
    [v12 removeAllActions];

    v13 = sub_1001B9D44(&qword_1004AF1C8, sub_1001B9634);
    [v13 removeAllActions];

    v14 = sub_1001B9D44(&qword_1004AF1B8, sub_1001B9300);
    [v14 removeAllActions];

    v3 = *(v9 + qword_1004AF190);
    v4 = "removeAllActions";
  }

  return [v3 v4];
}

void sub_1001BF4A8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001BF2C0(a3);
}

double sub_1001BF52C()
{

  v1 = *(v0 + qword_1004AF208 + 24);
  v2 = *(v0 + qword_1004AF208 + 32);

  return result;
}

double sub_1001BF760(uint64_t a1)
{

  v2 = *(a1 + qword_1004AF208 + 24);
  v3 = *(a1 + qword_1004AF208 + 32);

  return result;
}

uint64_t type metadata accessor for PersonHeightView(uint64_t a1)
{
  result = qword_1004AF2B0;
  if (!qword_1004AF2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001BFAC4(uint64_t a1, int a2)
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

uint64_t sub_1001BFB0C(uint64_t result, int a2, int a3)
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

uint64_t sub_1001BFB64(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001003FDD20;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001003FDD20;
  }

  else
  {
    v6 = 0x80000001003FDD40;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65486E6F73726550;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000074686769;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x80000001003FDD40;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x65486E6F73726550;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000074686769;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001BFC44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001BFCF4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1001BFD90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001BFE3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C1B14(*a1);
  *a2 = result;
  return result;
}

void sub_1001BFE6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000074686769;
  v4 = 0xD000000000000010;
  v5 = 0x80000001003FDD20;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000001003FDD40;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65486E6F73726550;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1001BFED8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65486E6F73726550;
  }
}

unint64_t sub_1001BFF40@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001C1B14(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001BFF68(uint64_t a1)
{
  v2 = sub_1001C0604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BFFA4(uint64_t a1)
{
  v2 = sub_1001C0604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BFFE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_10000F974(&qword_1004AF508, &qword_1003E2C60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000FEBC(a1, a1[3]);
  sub_1001C0604();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((a2 & 0x100000000) != 0 || (v15 = 0, KeyedEncodingContainer.encode(_:forKey:)(), !v4))
  {
    if ((a3 & 0x100000000) != 0 || (v16 = 1, KeyedEncodingContainer.encode(_:forKey:)(), !v4))
    {
      if ((v14 & 0x100000000) == 0)
      {
        v17 = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
      }
    }
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1001C01E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1001C14C8(*v1);
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5 & 1;
  *(a1 + 16) = v6;
  *(a1 + 20) = v7 & 1;
  return result;
}

uint64_t sub_1001C0238(float a1)
{
  v1 = sub_10000F974(&qword_1004A9BF0, &qword_1003E2ED0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = objc_opt_self();
  v9 = [v8 meters];
  sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  v10 = [v8 inches];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v4, v1);
  result = (v13)(v7, v1);
  v15 = v12;
  v16 = ceilf(v15);
  v17 = v16 / 12.0;
  if (COERCE_INT(fabs(v16 / 12.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v17 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 >= 9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = 12 * v17;
  if ((v17 * 12) >> 64 != v18 >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = roundf(v16 - v18);
  return v19 < 10.0 || v19 == 12.0;
}

unint64_t sub_1001C047C()
{
  result = qword_1004AF4E0;
  if (!qword_1004AF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF4E0);
  }

  return result;
}

double sub_1001C04D0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 80);

  return result;
}

double sub_1001C04E0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 96);

  return result;
}

double sub_1001C04F0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 216);

  return result;
}

double sub_1001C0500@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 216);

  return result;
}

double sub_1001C0510@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 184);

  return result;
}

double sub_1001C0520@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 184);

  return result;
}

double sub_1001C0530@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 80);

  return result;
}

double sub_1001C0540@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 160);

  return result;
}

double sub_1001C0550@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 160);

  return result;
}

double sub_1001C0560@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 96);

  return result;
}

uint64_t sub_1001C0570()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1001C05A8()
{
  v1 = *(v0 + 16);
  sub_1001BABD4();

  return [v1 toggleViewVisibilityWithIsVisible:0];
}

double sub_1001C05EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1001C0604()
{
  result = qword_1004AF510;
  if (!qword_1004AF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF510);
  }

  return result;
}

id sub_1001C0658(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_10000F974(&qword_1004A7288, &qword_1003DAD28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5360;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_100018630(0, &qword_1004A7290, UIFont_ptr);
  *(inited + 40) = a3;
  v7 = NSFontAttributeName;
  v8 = a3;
  sub_100199F34(inited);
  swift_setDeallocating();
  sub_100018F04(inited + 32, &qword_1004A7298, &qword_1003DAD30);
  if (a4)
  {
    v19 = sub_100018630(0, &qword_1004A2930, UIColor_ptr);
    *&v18 = a4;
    sub_1000C0FAC(&v18, v17);
    v9 = NSForegroundColorAttributeName;
    v10 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000BBA8C(v17, v9, isUniquelyReferenced_nonNull_native);
  }

  v12 = objc_allocWithZone(NSAttributedString);
  v13 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1001C19A4(&qword_1004A72A0, type metadata accessor for Key, &unk_1003D5004);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = [v12 initWithString:v13 attributes:isa];

  return v15;
}

void sub_1001C0858(uint64_t a1@<X0>, uint64_t *a2@<X8>, float a4@<S1>)
{
  v7 = sub_10000F974(&qword_1004A9BF0, &qword_1003E2ED0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v104 - v12;
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = *(Defaults.measurementBias.unsafeMutableAddressor() + 8);

  v16 = String._bridgeToObjectiveC()();

  [v14 floatForKey:v16];

  v113 = a2;
  if (a1 == 1)
  {
    v17 = objc_opt_self();
    v18 = [v17 meters];
    sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    v19 = [v17 centimeters];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v21 = v20;
    v22 = *(v8 + 8);
    v22(v10, v7);
    v22(v13, v7);
    v23 = v21;
    v24 = ceilf(v23);
    *&v112 = Float.description.getter();
    if (qword_1004A02F0 != -1)
    {
      swift_once();
    }

    v25 = qword_1004D4EB8;
    v26 = objc_allocWithZone(NSDecimalNumber);
    *&v27 = v24;
    v28 = [v26 initWithFloat:v27];
    v29 = [v25 stringFromNumber:v28];

    if (v29)
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = objc_opt_self();
      v34 = [v33 mainBundle];
      v114._object = 0xE000000000000000;
      v35._countAndFlagsBits = 0x6D63204025;
      v35._object = 0xE500000000000000;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v114._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v114);

      sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
      v37 = swift_allocObject();
      v111 = xmmword_1003D5360;
      *(v37 + 16) = xmmword_1003D5360;
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_1000192D0();
      *(v37 + 32) = v30;
      *(v37 + 40) = v32;
      v38 = String.init(format:_:)();
      v40 = v39;

      v41 = [v33 mainBundle];
      v115._object = 0xE000000000000000;
      v42._countAndFlagsBits = 0x69746E6563204025;
      v42._object = 0xEE0073726574656DLL;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v115._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v115);

      v44 = swift_allocObject();
      *(v44 + 16) = v111;
      *(v44 + 56) = &type metadata for Float;
      *(v44 + 64) = &protocol witness table for Float;
      *(v44 + 32) = v24;
      v45 = static String.localizedStringWithFormat(_:_:)();
      v47 = v46;

      v48 = String._bridgeToObjectiveC()();

      [v48 floatValue];
      v50 = v49;

      v51 = 1;
LABEL_27:
      v103 = v113;
      *v113 = v38;
      v103[1] = v40;
      v103[2] = v45;
      v103[3] = v47;
      *(v103 + 8) = v50;
      *(v103 + 36) = v51;
      return;
    }

    goto LABEL_36;
  }

  if (!a1)
  {
    v52 = objc_opt_self();
    v53 = [v52 meters];
    sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    v54 = [v52 inches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v56 = v55;
    v58 = *(v8 + 8);
    v57 = v8 + 8;
    v58(v10, v7);
    v58(v13, v7);
    v59 = v56;
    v60 = ceilf(v59);
    v61 = v60 / 12.0;
    if (COERCE_INT(fabs(v60 / 12.0)) > 2139095039)
    {
      __break(1u);
    }

    else if (v61 > -9.2234e18)
    {
      if (v61 < 9.2234e18)
      {
        v62 = 12 * v61;
        if ((v61 * 12) >> 64 == v62 >> 63)
        {
          v63 = roundf(v60 - v62);
          if (v63 == 12.0)
          {
            *&v56 = 0.0;
          }

          else
          {
            *&v56 = v63;
          }

          if (v63 == 12.0)
          {
            v15 = v61 + 1;
          }

          else
          {
            v15 = v61;
          }

          LOBYTE(v54) = sub_1001C0238(a4);
          sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
          v64 = swift_allocObject();
          v112 = xmmword_1003D5360;
          *(v64 + 16) = xmmword_1003D5360;
          *(v64 + 56) = &type metadata for Int;
          *(v64 + 64) = &protocol witness table for Int;
          *(v64 + 32) = v15;
          *&v111 = String.init(format:_:)();
          v57 = v65;
          if (qword_1004A02F0 == -1)
          {
LABEL_18:
            v66 = qword_1004D4EB8;
            v67 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v15];
            v68 = [v66 stringFromNumber:v67];

            if (!v68)
            {
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v110 = v70;

            if (((*&v56 >= 10.0) & v54) != 0)
            {
              v71 = *&v56 + -10.0;
            }

            else
            {
              v71 = *&v56;
            }

            v72 = swift_allocObject();
            *(v72 + 16) = v112;
            if ((LODWORD(v71) & 0x7FFFFFFFu) > 0x7F7FFFFF)
            {
              __break(1u);
            }

            else if (v71 > -9.2234e18)
            {
              if (v71 < 9.2234e18)
              {
                v105 = v69;
                v109 = v57;
                *&v112 = v15;
                *(v72 + 56) = &type metadata for Int;
                *(v72 + 64) = &protocol witness table for Int;
                v106 = v71;
                *(v72 + 32) = v71;
                v107 = String.init(format:_:)();
                v108 = v73;
                v74 = objc_allocWithZone(NSDecimalNumber);
                *&v75 = v71;
                v76 = [v74 initWithFloat:v75];
                v77 = [v66 stringFromNumber:v76];

                if (v77)
                {
                  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v80 = v79;

                  v81 = objc_opt_self();
                  v82 = [v81 mainBundle];
                  v116._object = 0xE000000000000000;
                  v83._countAndFlagsBits = 0x20B280E240243125;
                  v83._object = 0xAFB380E240243225;
                  v84.value._countAndFlagsBits = 0xD000000000000014;
                  v84.value._object = 0x8000000100407540;
                  v85._countAndFlagsBits = 0;
                  v85._object = 0xE000000000000000;
                  v116._countAndFlagsBits = 0;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v116);

                  v86 = swift_allocObject();
                  v104 = xmmword_1003D5730;
                  *(v86 + 16) = xmmword_1003D5730;
                  *(v86 + 56) = &type metadata for String;
                  v87 = sub_1000192D0();
                  v88 = v110;
                  *(v86 + 32) = v105;
                  *(v86 + 40) = v88;
                  *(v86 + 96) = &type metadata for String;
                  *(v86 + 104) = v87;
                  *(v86 + 64) = v87;
                  *(v86 + 72) = v78;
                  *(v86 + 80) = v80;
                  v38 = String.init(format:_:)();
                  v40 = v89;

                  v90 = [v81 mainBundle];
                  v117._object = 0xE000000000000000;
                  v91._object = 0x8000000100407560;
                  v91._countAndFlagsBits = 0xD000000000000011;
                  v92._countAndFlagsBits = 0;
                  v92._object = 0xE000000000000000;
                  v117._countAndFlagsBits = 0;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, v117);

                  v93 = swift_allocObject();
                  *(v93 + 16) = v104;
                  *(v93 + 56) = &type metadata for Int;
                  *(v93 + 32) = v112;
                  *(v93 + 96) = &type metadata for Int;
                  *(v93 + 104) = &protocol witness table for Int;
                  v94 = v106;
                  *(v93 + 64) = &protocol witness table for Int;
                  *(v93 + 72) = v94;
                  v45 = static String.localizedStringWithFormat(_:_:)();
                  v47 = v95;

                  v96 = String._bridgeToObjectiveC()();

                  [v96 floatValue];
                  v98 = v97;

                  v99 = v98 * 12.0;
                  v100 = String._bridgeToObjectiveC()();

                  [v100 floatValue];
                  v102 = v101;

                  v50 = v99 + v102;
                  v51 = 2;
                  goto LABEL_27;
                }

                goto LABEL_38;
              }

              goto LABEL_35;
            }

            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_32:
          swift_once();
          goto LABEL_18;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_39:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_1001C133C(double a1, double a2)
{
  CGPoint.multiply(by:)();
  CGPoint.divide(by:)();
  CGPoint.subtract(_:)();
  v3 = v2;
  v5 = v4;
  v6 = sub_100067A00(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100067A00((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[2 * v8];
  *(v9 + 4) = v3;
  *(v9 + 5) = v5;
  for (i = 1; i != 101; ++i)
  {
    CGPoint.multiply(by:)();
    CGPoint.divide(by:)();
    CGPoint.subtract(_:)();
    v14 = *(v6 + 2);
    v13 = *(v6 + 3);
    if (v14 >= v13 >> 1)
    {
      v16 = v11;
      v17 = v12;
      v18 = sub_100067A00((v13 > 1), v14 + 1, 1, v6);
      v12 = v17;
      v11 = v16;
      v6 = v18;
    }

    *(v6 + 2) = v14 + 1;
    v15 = &v6[2 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
  }

  return v6;
}

unint64_t sub_1001C14C8(char *a1)
{
  v2 = qword_1004AF238;
  v3 = *(**&a1[qword_1004AF238] + 144);

  v3(__src, v4);

  memcpy(__dst, __src, 0x213uLL);
  sub_10006BE28(__dst);
  v5 = __dst[113];
  v6 = __dst[114];
  v7 = *(**&a1[v2] + 144);

  v7(v12, v8);

  memcpy(__src, v12, 0x213uLL);
  sub_10006BE28(__src);
  v9 = *(**&a1[qword_1004AF240] + 144);

  v9(v12, v10);

  return v5 | (v6 << 32);
}

uint64_t sub_1001C1658(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A97C0, &qword_1003DD438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C16C8()
{
  v1 = (sub_10000F974(&qword_1004A97C0, &qword_1003DD438) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[11];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001C1810(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A97C0, &qword_1003DD438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C1918()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001C19A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001C1A10()
{
  result = qword_1004AF528;
  if (!qword_1004AF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF528);
  }

  return result;
}

unint64_t sub_1001C1A68()
{
  result = qword_1004AF530;
  if (!qword_1004AF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF530);
  }

  return result;
}

unint64_t sub_1001C1AC0()
{
  result = qword_1004AF538;
  if (!qword_1004AF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF538);
  }

  return result;
}

unint64_t sub_1001C1B14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100465710, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1001C1D20()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if ((v1 & 1) == 0)
  {
    v56 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
    v57 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle);
    v58 = objc_opt_self();
    v59 = v57;
    v60 = [v58 preferredFontForTextStyle:UIFontTextStyleBody];
    v61 = [v60 fontDescriptor];

    v62 = [v61 fontDescriptorWithSymbolicTraits:2];
    if (v62)
    {
      v63 = [v58 fontWithDescriptor:v62 size:0.0];

      [v59 setFont:v63];
      v86 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
      v64 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels);
      v65 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints;
      swift_beginAccess();
      v66 = *&v64[v65];
      v88 = v56;
      if (v66 >> 62)
      {
        goto LABEL_38;
      }

      for (i = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v64 = v64;

        if (i)
        {
          v68 = 0;
          while (1)
          {
            if ((v66 & 0xC000000000000001) != 0)
            {
              v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_35;
              }

              v69 = *(v66 + 8 * v68 + 32);
            }

            v70 = v69;
            v71 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              break;
            }

            [v69 setConstant:0.0];

            ++v68;
            if (v71 == i)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

        else
        {
LABEL_22:

          v72 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
          v73 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels);
          v74 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints;
          swift_beginAccess();
          v66 = *&v73[v74];
          v84 = v72;
          if (v66 >> 62)
          {
            v75 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v75 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v64 = v73;

          if (!v75)
          {
LABEL_33:

            v80 = [v0 contentView];
            [v80 addSubview:*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView)];

            v81 = [v0 contentView];
            [v81 addSubview:*&v88[v0]];

            v82 = [v0 contentView];
            [v82 addSubview:*(v0 + v86)];

            v83 = [v0 contentView];
            [v83 addSubview:*(v0 + v84)];

            return;
          }

          v76 = 0;
          while (1)
          {
            if ((v66 & 0xC000000000000001) != 0)
            {
              v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v76 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v77 = *(v66 + 8 * v76 + 32);
            }

            v78 = v77;
            v79 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              break;
            }

            [v77 setConstant:0.0];

            ++v76;
            if (v79 == v75)
            {
              goto LABEL_33;
            }
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }
    }

    goto LABEL_41;
  }

  v3 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  v4 = *(*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle) + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 preferredFontForTextStyle:UIFontTextStyleBody];
  v8 = [v7 fontDescriptor];

  v9 = [v8 fontDescriptorWithSymbolicTraits:2];
  if (!v9)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = [v5 fontWithDescriptor:v9 size:0.0];

  [v6 setFont:v10];
  v85 = v3;
  v11 = *(*(v0 + v3) + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 labelColor];
  [v13 setTextColor:v14];

  v15 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  v16 = *(*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v17 = [v5 preferredFontForTextStyle:UIFontTextStyleBody];
  v18 = [v17 fontDescriptor];

  v19 = [v18 fontDescriptorWithSymbolicTraits:2];
  if (!v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v20 = [v5 fontWithDescriptor:v19 size:0.0];

  [v16 setFont:v20];
  v21 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v22 = [v5 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v21 setFont:v22];

  v23 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v24 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v25 = [v24 fontDescriptor];

  v26 = [v25 fontDescriptorWithSymbolicTraits:2];
  if (!v26)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = [v5 fontWithDescriptor:v26 size:0.0];

  [v23 setFont:v27];
  v28 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v29 = [v12 secondaryLabelColor];
  [v28 setTextColor:v29];

  v30 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v31 = [v12 labelColor];
  [v30 setTextColor:v31];

  v32 = *(*(v0 + v15) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v33 = [v12 secondaryLabelColor];
  [v32 setTextColor:v33];

  v34 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  v35 = *(*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v36 = [v5 preferredFontForTextStyle:UIFontTextStyleBody];
  v37 = [v36 fontDescriptor];

  v38 = [v37 fontDescriptorWithSymbolicTraits:2];
  if (!v38)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = [v5 fontWithDescriptor:v38 size:0.0];

  [v35 setFont:v39];
  v40 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v41 = [v5 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v40 setFont:v41];

  v42 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v43 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v44 = [v43 fontDescriptor];

  v45 = [v44 fontDescriptorWithSymbolicTraits:2];
  if (!v45)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v46 = [v5 fontWithDescriptor:v45 size:0.0];

  [v42 setFont:v46];
  v47 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v48 = [v12 secondaryLabelColor];
  [v47 setTextColor:v48];

  v49 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v50 = [v12 labelColor];
  [v49 setTextColor:v50];

  v51 = *(*(v0 + v34) + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v52 = [v12 secondaryLabelColor];
  [v51 setTextColor:v52];

  v53 = [v0 contentView];
  [v53 addSubview:*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView)];

  v54 = [v0 contentView];
  [v54 addSubview:*(v0 + v85)];

  v55 = [v0 contentView];
  [v55 addSubview:*(v0 + v15)];

  v87 = [v0 contentView];
  [v87 addSubview:*(v0 + v34)];
}

void sub_1001C2918()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if ((v1 & 1) == 0)
  {
    v61 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
    [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle) setTranslatesAutoresizingMaskIntoConstraints:0];
    v62 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
    [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView) setTranslatesAutoresizingMaskIntoConstraints:0];
    v63 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
    v118 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
    [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels) setTranslatesAutoresizingMaskIntoConstraints:0];
    v64 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
    v123 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
    [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels) setTranslatesAutoresizingMaskIntoConstraints:0];
    v65 = [*(v0 + v63) topAnchor];
    v66 = [*(v0 + v61) bottomAnchor];
    v120 = [v65 constraintEqualToAnchor:v66 constant:16.0];

    LODWORD(v67) = 1148813312;
    [v120 setPriority:v67];
    v68 = [*(v0 + v64) bottomAnchor];
    v69 = [v0 contentView];
    v70 = [v69 bottomAnchor];

    v71 = [v68 constraintEqualToAnchor:v70 constant:-16.0];
    v126 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor;
    v72 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor);
    *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor) = v71;

    sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1003E2E30;
    v74 = [*(v0 + v62) leadingAnchor];
    v75 = [v0 contentView];
    v76 = [v75 leadingAnchor];

    v77 = [v74 constraintEqualToAnchor:v76 constant:16.0];
    *(v73 + 32) = v77;
    v78 = [*(v0 + v62) topAnchor];
    v79 = [v0 contentView];
    v80 = [v79 topAnchor];

    v81 = [v78 constraintEqualToAnchor:v80 constant:16.0];
    *(v73 + 40) = v81;
    v82 = [*(v0 + v62) widthAnchor];
    v83 = [v82 constraintEqualToConstant:56.0];

    *(v73 + 48) = v83;
    v84 = [*(v0 + v62) heightAnchor];
    v85 = [*(v0 + v62) widthAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];

    *(v73 + 56) = v86;
    v87 = [*(v0 + v61) leadingAnchor];
    v88 = [*(v0 + v62) trailingAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:16.0];

    *(v73 + 64) = v89;
    v90 = [*(v0 + v61) topAnchor];
    v91 = [v0 contentView];
    v92 = [v91 topAnchor];

    v93 = [v90 constraintEqualToAnchor:v92 constant:12.0];
    *(v73 + 72) = v93;
    v94 = [*(v0 + v61) trailingAnchor];
    v95 = [*(*(v0 + v118) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels) leadingAnchor];
    v96 = [v94 constraintEqualToAnchor:v95 constant:-16.0];

    *(v73 + 80) = v96;
    v97 = [*(v0 + v118) leadingAnchor];
    v98 = [*(v0 + v62) trailingAnchor];
    v99 = [v97 constraintEqualToAnchor:v98 constant:16.0];

    *(v73 + 88) = v99;
    *(v73 + 96) = v120;
    v100 = *(v0 + v118);
    v121 = v120;
    v101 = [v100 trailingAnchor];
    v102 = [v0 contentView];
    v103 = [v102 trailingAnchor];

    v104 = [v101 constraintEqualToAnchor:v103];
    *(v73 + 104) = v104;
    v105 = [*(v0 + v123) leadingAnchor];
    v106 = [*(v0 + v62) trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106 constant:16.0];

    *(v73 + 112) = v107;
    v108 = [*(v0 + v123) topAnchor];
    v109 = [*(v0 + v118) bottomAnchor];
    v110 = [v108 constraintEqualToAnchor:v109 constant:16.0];

    *(v73 + 120) = v110;
    v111 = [*(v0 + v123) trailingAnchor];
    v112 = [v0 contentView];
    v113 = [v112 trailingAnchor];

    v114 = [v111 constraintEqualToAnchor:v113];
    *(v73 + 128) = v114;
    v115 = *&v126[v0];
    if (v115)
    {
      v116 = objc_opt_self();
      *(v73 + 136) = v115;
      sub_100022180();
      v117 = v115;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v116 activateConstraints:isa];

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v3 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle) setTranslatesAutoresizingMaskIntoConstraints:0];
  v119 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  v122 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel) setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [*(v0 + v5) bottomAnchor];
  v7 = [v0 contentView];
  v8 = [v7 bottomAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:-16.0];
  v124 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor;
  v10 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor);
  *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor) = v9;

  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003E2E30;
  v12 = [*(v0 + v3) leadingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:16.0];
  *(v11 + 32) = v15;
  v16 = [*(v0 + v3) topAnchor];
  v17 = [v0 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v11 + 40) = v19;
  v20 = [*(v0 + v3) widthAnchor];
  v21 = [v20 constraintEqualToConstant:56.0];

  *(v11 + 48) = v21;
  v22 = [*(v0 + v3) heightAnchor];
  v23 = [*(v0 + v3) widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v11 + 56) = v24;
  v25 = [*(v0 + v4) leadingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:16.0];
  *(v11 + 64) = v28;
  v29 = [*(v0 + v4) topAnchor];
  v30 = [*(v0 + v3) bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];

  *(v11 + 72) = v31;
  v32 = [*(v0 + v4) trailingAnchor];
  v33 = [v0 contentView];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v11 + 80) = v35;
  v36 = [*(v0 + v119) leadingAnchor];
  v37 = [v0 contentView];
  v38 = [v37 leadingAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:16.0];
  *(v11 + 88) = v39;
  v40 = [*(v0 + v119) topAnchor];
  v41 = [*(v0 + v4) bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:20.0];

  *(v11 + 96) = v42;
  v43 = [*(v0 + v119) trailingAnchor];
  v44 = [v0 contentView];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v11 + 104) = v46;
  v47 = [*(v0 + v122) leadingAnchor];
  v48 = [v0 contentView];
  v49 = [v48 leadingAnchor];

  v50 = [v47 constraintEqualToAnchor:v49 constant:16.0];
  *(v11 + 112) = v50;
  v51 = [*(v0 + v122) topAnchor];
  v52 = [*(v0 + v119) bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:20.0];

  *(v11 + 120) = v53;
  v54 = [*(v0 + v122) trailingAnchor];
  v55 = [v0 contentView];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor:v56];
  *(v11 + 128) = v57;
  v58 = *&v124[v0];
  if (!v58)
  {
    __break(1u);
    goto LABEL_10;
  }

  v59 = objc_opt_self();
  *(v11 + 136) = v58;
  sub_100022180();
  v60 = v58;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v59 activateConstraints:isa];
LABEL_6:
}

void sub_1001C3848()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels);
  v2 = *&v1[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits];
  v3 = v1;
  [v2 setSelectedRange:{0, 0}];
  v4 = *&v3[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels];
  [*(*(v4 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  [*(*(v4 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];

  v5 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels);
  v6 = *&v5[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits];
  v7 = v5;
  [v6 setSelectedRange:{0, 0}];
  v8 = *&v7[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels];
  [*(*(v8 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  [*(*(v8 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];

  [*(*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle) + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label) setSelectedRange:{0, 0}];
  v9 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel);
  v10 = *&v9[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
  v11 = v9;
  [v10 setSelectedRange:{0, 0}];
  [*&v11[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel] setSelectedRange:{0, 0}];
  [*&v11[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel] setSelectedRange:{0, 0}];

  v12 = *(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel);
  v13 = *&v12[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
  v14 = v12;
  [v13 setSelectedRange:{0, 0}];
  [*&v14[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel] setSelectedRange:{0, 0}];
  [*&v14[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel] setSelectedRange:{0, 0}];
}

id sub_1001C3AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
  type metadata accessor for SketchSurfaceHistory();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
  v9 = type metadata accessor for MeasureTableViewCellCommonContentView();
  *&v3[v8] = [objc_allocWithZone(v9) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
  *&v3[v10] = [objc_allocWithZone(v9) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for AccessibilitySingleStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  v13 = type metadata accessor for AccessibilityTripleStack();
  *&v3[v12] = [objc_allocWithZone(v13) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  *&v3[v14] = [objc_allocWithZone(v13) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor] = 0;
  if (a3)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for BaseRectangleHistoryCell();
  v16 = objc_msgSendSuper2(&v19, "initWithStyle:reuseIdentifier:", a1, v15);

  v17 = v16;
  sub_1001C1D20();
  sub_1001C2918();

  return v17;
}

id sub_1001C3D14(void *a1)
{
  v3 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
  type metadata accessor for SketchSurfaceHistory();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
  v6 = type metadata accessor for MeasureTableViewCellCommonContentView();
  *&v1[v5] = [objc_allocWithZone(v6) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
  *&v1[v7] = [objc_allocWithZone(v6) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for AccessibilitySingleStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  v10 = type metadata accessor for AccessibilityTripleStack();
  *&v1[v9] = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  *&v1[v11] = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_bottomContentAnchor] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for BaseRectangleHistoryCell();
  v12 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    sub_1001C1D20();
    sub_1001C2918();
  }

  return v13;
}

void sub_1001C3EFC()
{
  v1 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView) removeFromSuperview];
  v2 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle) removeFromSuperview];
  v3 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels) removeFromSuperview];
  v4 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels) removeFromSuperview];
  v5 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle) removeFromSuperview];
  v6 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel) removeFromSuperview];
  v7 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel;
  [*(v0 + OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel) removeFromSuperview];
  type metadata accessor for SketchSurfaceHistory();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = *(v0 + v1);
  *(v0 + v1) = v8;

  v10 = [objc_allocWithZone(UILabel) init];
  v11 = *(v0 + v2);
  *(v0 + v2) = v10;

  v12 = type metadata accessor for MeasureTableViewCellCommonContentView();
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = *(v0 + v3);
  *(v0 + v3) = v13;

  v15 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = *(v0 + v4);
  *(v0 + v4) = v15;

  v17 = [objc_allocWithZone(type metadata accessor for AccessibilitySingleStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = *(v0 + v5);
  *(v0 + v5) = v17;

  v19 = type metadata accessor for AccessibilityTripleStack();
  v20 = [objc_allocWithZone(v19) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = *(v0 + v6);
  *(v0 + v6) = v20;

  v22 = [objc_allocWithZone(v19) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = *(v0 + v7);
  *(v0 + v7) = v22;

  sub_1001C1D20();

  sub_1001C2918();
}

id sub_1001C4160(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseRectangleHistoryCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001C4378(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TransformLayerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001C43D0()
{
  result = qword_1004AF600;
  if (!qword_1004AF600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AF600);
  }

  return result;
}

void sub_1001C441C(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_totalCountLabel);
  v4 = a1[7];
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A6C61746F54;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);

  v7 = String._bridgeToObjectiveC()();

  [v3 setText:v7];

  v8 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_adCountLabel);
  v9 = *a1;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 2128928;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1003D5360;
    *(v12 + 56) = &type metadata for Float;
    *(v12 + 64) = &protocol witness table for Float;
    *(v12 + 32) = (v9 * 100.0) / v4;
    v13 = String.init(format:_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v13);

  v17._countAndFlagsBits = 540689473;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);

  v18 = String._bridgeToObjectiveC()();

  [v8 setText:v18];

  v19 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_arkitCountLabel);
  v20 = a1[1];
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 2128928;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1003D5360;
    *(v23 + 56) = &type metadata for Float;
    *(v23 + 64) = &protocol witness table for Float;
    *(v23 + 32) = (v20 * 100.0) / v4;
    v24 = String.init(format:_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v24);

  v28._countAndFlagsBits = 0x203A74694B5241;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);

  v29 = String._bridgeToObjectiveC()();

  [v19 setText:v29];

  v30 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_localCountLabel);
  v31 = a1[2];
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 2128928;
  v33._object = 0xE300000000000000;
  String.append(_:)(v33);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1003D5360;
    *(v34 + 56) = &type metadata for Float;
    *(v34 + 64) = &protocol witness table for Float;
    *(v34 + 32) = (v31 * 100.0) / v4;
    v35 = String.init(format:_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  v38 = v37;
  String.append(_:)(*&v35);

  v39._countAndFlagsBits = 0x203A6C61636F4CLL;
  v39._object = 0xE700000000000000;
  String.append(_:)(v39);

  v40 = String._bridgeToObjectiveC()();

  [v30 setText:v40];

  v41 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_patchCountLabel);
  v42 = a1[3];
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 2128928;
  v44._object = 0xE300000000000000;
  String.append(_:)(v44);
  v45 = 0xE000000000000000;
  if (v4)
  {
    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1003D5360;
    *(v46 + 56) = &type metadata for Float;
    *(v46 + 64) = &protocol witness table for Float;
    *(v46 + 32) = (v42 * 100.0) / v4;
    v47 = String.init(format:_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v50 = v49;
  String.append(_:)(*&v47);

  v51._countAndFlagsBits = 0x203A6863746150;
  v51._object = 0xE700000000000000;
  String.append(_:)(v51);

  v52 = String._bridgeToObjectiveC()();

  [v41 setText:v52];

  v53 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_fallbackCountLabel);
  _StringGuts.grow(_:)(17);

  v54 = a1[5];
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 2128928;
  v56._object = 0xE300000000000000;
  String.append(_:)(v56);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1003D5360;
    *(v57 + 56) = &type metadata for Float;
    *(v57 + 64) = &protocol witness table for Float;
    *(v57 + 32) = (v54 * 100.0) / v4;
    v58 = String.init(format:_:)();
    v45 = v59;
  }

  else
  {
    v58 = 0;
  }

  v60 = v45;
  String.append(_:)(*&v58);

  v61._countAndFlagsBits = 0x6B6361626C6C6146;
  v61._object = 0xEA0000000000203ALL;
  String.append(_:)(v61);

  v62 = String._bridgeToObjectiveC()();

  [v53 setText:v62];

  v63 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_inferredCountLabel);
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v65 = a1[4];
  v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v66);

  v67._countAndFlagsBits = 2128928;
  v67._object = 0xE300000000000000;
  String.append(_:)(v67);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1003D5360;
    *(v68 + 56) = &type metadata for Float;
    *(v68 + 64) = &protocol witness table for Float;
    *(v68 + 32) = (v65 * 100.0) / v4;
    v69 = String.init(format:_:)();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0xE000000000000000;
  }

  v72 = v71;
  String.append(_:)(*&v69);

  v73._countAndFlagsBits = 0x6465727265666E49;
  v73._object = 0xEA0000000000203ALL;
  String.append(_:)(v73);

  v74 = String._bridgeToObjectiveC()();

  [v63 setText:v74];

  v75 = *(v1 + OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_prevCountLabel);
  _StringGuts.grow(_:)(17);

  v76 = a1[6];
  v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v77);

  v78._countAndFlagsBits = 2128928;
  v78._object = 0xE300000000000000;
  String.append(_:)(v78);
  if (v4)
  {
    sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1003D5360;
    *(v79 + 56) = &type metadata for Float;
    *(v79 + 64) = &protocol witness table for Float;
    *(v79 + 32) = (v76 * 100.0) / v4;
    v80 = String.init(format:_:)();
    v64 = v81;
  }

  else
  {
    v80 = 0;
  }

  v82 = v64;
  String.append(_:)(*&v80);

  v83._countAndFlagsBits = 0x73756F6976657250;
  v83._object = 0xEA0000000000203ALL;
  String.append(_:)(v83);

  v84 = String._bridgeToObjectiveC()();

  [v75 setText:v84];

  sub_1001C562C();
}

UIColor sub_1001C4EE8()
{
  sub_100018630(0, &qword_1004A2930, UIColor_ptr);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_1004AF608 = result.super.isa;
  return result;
}

char *sub_1001C4F3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_maxWidth] = 0;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  if (qword_1004A0840 != -1)
  {
    swift_once();
  }

  v10 = qword_1004AF608;
  [v9 setTextColor:qword_1004AF608];
  [v9 setTextAlignment:0];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:12.0];
  [v9 setFont:v12];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_totalCountLabel] = v9;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v13 setTextColor:v10];
  [v13 setTextAlignment:0];
  v14 = [v11 systemFontOfSize:12.0];
  [v13 setFont:v14];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_adCountLabel] = v13;
  v15 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v15 setTextColor:v10];
  [v15 setTextAlignment:0];
  v16 = [v11 systemFontOfSize:12.0];
  [v15 setFont:v16];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_arkitCountLabel] = v15;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v17 setTextColor:v10];
  [v17 setTextAlignment:0];
  v18 = [v11 systemFontOfSize:12.0];
  [v17 setFont:v18];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_localCountLabel] = v17;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v19 setTextColor:v10];
  [v19 setTextAlignment:0];
  v20 = [v11 systemFontOfSize:12.0];
  [v19 setFont:v20];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_patchCountLabel] = v19;
  v21 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v21 setTextColor:v10];
  [v21 setTextAlignment:0];
  v22 = [v11 systemFontOfSize:12.0];
  [v21 setFont:v22];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_fallbackCountLabel] = v21;
  v23 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v23 setTextColor:v10];
  [v23 setTextAlignment:0];
  v24 = [v11 systemFontOfSize:12.0];
  [v23 setFont:v24];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_inferredCountLabel] = v23;
  v25 = [objc_allocWithZone(UILabel) initWithFrame:{a1, a2, a3, a4}];
  [v25 setTextColor:v10];
  [v25 setTextAlignment:0];
  v26 = [v11 systemFontOfSize:12.0];
  [v25 setFont:v26];

  *&v4[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_prevCountLabel] = v25;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_totalCountLabel];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_adCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_localCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_arkitCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_patchCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_inferredCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_fallbackCountLabel]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_prevCountLabel]];
  v30 = [v29 layer];
  LODWORD(v31) = 1.0;
  [v30 setShadowOpacity:v31];

  v32 = [v29 layer];
  [v32 setShadowOffset:{0.0, 0.0}];

  [v29 setUserInteractionEnabled:0];
  return v29;
}

void sub_1001C562C()
{
  v1 = v0;
  v2 = [v0 superview];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v1 subviews];
  v54 = sub_100018630(0, &qword_1004A7550, UIView_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [v16 sizeToFit];

      ++v15;
      if (v18 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v19 = [v1 subviews];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v22 = 0;
    v23 = 0.0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v24 frame];
      v28 = v27;

      v23 = v23 + v28;
      ++v22;
      if (v26 == j)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v23 = 0.0;
LABEL_30:

  v29 = OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_maxWidth;
  v30 = *&v1[OBJC_IVAR____TtC7Measure23PlaneSelectionStatsView_maxWidth];
  v31 = [v1 subviews];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_42;
    }
  }

  sub_1000A2530(0, v33 & ~(v33 >> 63), 0);
  if (v33 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  for (k = 0; k != v33; ++k)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v35 = *(v32 + 8 * k + 32);
    }

    v36 = v35;
    [v35 frame];
    v38 = v37;

    v40 = _swiftEmptyArrayStorage[2];
    v39 = _swiftEmptyArrayStorage[3];
    if (*&v40 >= *&v39 >> 1)
    {
      sub_1000A2530((*&v39 > 1uLL), *&v40 + 1, 1);
    }

    *&_swiftEmptyArrayStorage[2] = *&v40 + 1;
    _swiftEmptyArrayStorage[*&v40 + 4] = v38;
  }

LABEL_42:

  *&v41 = COERCE_DOUBLE(sub_10004FEFC(_swiftEmptyArrayStorage));
  v43 = v42;

  v44 = *&v41;
  if (v43)
  {
    v44 = 0.0;
  }

  if (v44 >= v30)
  {
    if ((~*&v44 & 0x7FF0000000000000) != 0)
    {
      v30 = v44;
    }

    else if ((*&v44 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v30 = v44;
    }
  }

  *&v1[v29] = v30;
  v56.origin.x = v5;
  v56.origin.y = v7;
  v56.size.width = v9;
  v56.size.height = v11;
  [v1 setFrame:{0.0, CGRectGetMidY(v56) + v23 * -0.5, *&v1[v29], v23}];
  v45 = [v1 subviews];
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v46 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
    if (v47)
    {
LABEL_52:
      if (v47 >= 1)
      {
        v48 = 0;
        v49 = 0.0;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v50 = *(v46 + 8 * v48 + 32);
          }

          v51 = v50;
          ++v48;
          [v50 frame];
          [v51 setFrame:?];
          [v51 frame];
          v53 = v52;

          v49 = v49 + v53;
        }

        while (v47 != v48);
        goto LABEL_59;
      }

LABEL_63:
      __break(1u);
      return;
    }
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_52;
    }
  }

LABEL_59:
}

id sub_1001C5C98(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v10 = &v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms];
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  v10[6] = a8;
  v10[7] = a9;
  simd_float4x4.position.getter();
  SCNVector3.init(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  type metadata accessor for SCNVector3(0);
  v18 = v17;
  v40 = v17;
  v37 = v12;
  v38 = v14;
  v39 = v16;
  sub_1001C7C44(&v37, 0x3050656E696CLL, 0xE600000000000000, &selRef_setValue_forKeyPath_);
  sub_100018F04(&v37, &unk_1004A6970, &unk_1003D5710);
  simd_float4x4.position.getter();
  SCNVector3.init(_:)();
  v40 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  sub_1001C7C44(&v37, 0x3150656E696CLL, 0xE600000000000000, &selRef_setValue_forKeyPath_);
  result = sub_100018F04(&v37, &unk_1004A6970, &unk_1003D5710);
  if (v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldRenderNumbers] == 1)
  {
    if (v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldHide])
    {
      v23 = 1;
    }

    else
    {
      sub_1001C822C(result);
    }

    v24 = [v9 setHidden:{v23 & 1, *&a2, *&a3, *&a4, *&a5}];
    return sub_1001C6D64(v24, v26, v28, v30, v32, a6, a7, a8, a9);
  }

  return result;
}

void sub_1001C5E40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

double sub_1001C5E8C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  v29 = *(v11 - 8);
  *&result = __chkstk_darwin(a1).n128_u64[0];
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString) == v16 && *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString + 8) == v12;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v23 = sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100038BFC(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v24 = v3;
    v25 = v6;
    v27 = v11;
    sub_10000F974(&qword_1004ABEE0, &qword_1003DB8B0);
    v26 = v4;
    sub_100038C44(&qword_1004A4030, &qword_1004ABEE0, &qword_1003DB8B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v28 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
    v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001C8F00;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_100472A68;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_100038C44(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0);
    v21 = v25;
    v22 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v26 + 8))(v21, v22);
    (*(v29 + 8))(v15, v27);
  }

  return result;
}

void sub_1001C638C(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v41 = v5;
    v42 = v2;
    v43 = v1;
    v39 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isMaterialAActive;
    v40 = v6;
    if (*(Strong + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isMaterialAActive) == 1)
    {
      v38 = [*(Strong + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB) diffuse];
      v11 = *&v10[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
      v12 = *&v10[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString + 8];
      v13 = qword_1004A04E8;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = qword_1004AD940;
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v12;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1001C9300;
      *(v16 + 24) = v15;
      v48 = sub_1001C9304;
      v49 = v16;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v17 = &v46;
      v46 = sub_1001C5E40;
      v47 = &unk_100472BA8;
      v18 = _Block_copy(&aBlock);

      v19 = [v14 imageWithActions:v18];
      _Block_release(v18);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v21 = v38;
        [v38 setContents:v19];

        sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
        v22 = static OS_dispatch_queue.main.getter();
        v23 = swift_allocObject();
        *(v23 + 16) = v10;
        v48 = sub_1001C8FD4;
        v49 = v23;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v24 = &unk_100472BF8;
LABEL_10:
        v46 = sub_100041180;
        v47 = v24;
        v34 = _Block_copy(&aBlock);
        v35 = v10;

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100038BFC(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
        sub_100038C44(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0);
        v36 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v34);

        (*(v42 + 8))(v4, v36);
        (*(v40 + 8))(v8, v41);
        v10[v39] = (v10[v39] & 1) == 0;

        return;
      }

      __break(1u);
    }

    else
    {
      v38 = [*(Strong + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA) diffuse];
      v17 = *&v10[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
      v12 = *&v10[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString + 8];
      v25 = qword_1004A04E8;

      if (v25 == -1)
      {
LABEL_8:
        v26 = qword_1004AD940;
        v27 = swift_allocObject();
        *(v27 + 16) = v17;
        *(v27 + 24) = v12;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_10018CAEC;
        *(v28 + 24) = v27;
        v48 = sub_1001C8F20;
        v49 = v28;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_1001C5E40;
        v47 = &unk_100472AE0;
        v29 = _Block_copy(&aBlock);

        v30 = [v26 imageWithActions:v29];
        _Block_release(v29);
        v31 = swift_isEscapingClosureAtFileLocation();

        if (v31)
        {
          __break(1u);
          return;
        }

        v32 = v38;
        [v38 setContents:v30];

        sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
        v22 = static OS_dispatch_queue.main.getter();
        v33 = swift_allocObject();
        *(v33 + 16) = v10;
        v48 = sub_1001C8F80;
        v49 = v33;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v24 = &unk_100472B30;
        goto LABEL_10;
      }
    }

    swift_once();
    goto LABEL_8;
  }
}

void sub_1001C6AD8(unsigned __int8 a1)
{
  if (v1[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation] == a1)
  {
    return;
  }

  v2 = v1;
  [v1 simdTransform];
  v7.n128_f64[0] = sub_100077814(v4, v5, v6);
  v24 = v7;
  sub_10018D338(a1, v7);
  v9 = vnegq_f32(v8);
  v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
  v11 = vrev64q_s32(v8);
  v11.i32[0] = v9.i32[1];
  v11.i32[3] = v9.i32[2];
  v25 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v24.f32, 1), vextq_s8(v10, v10, 8uLL), v24.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v8, v24, 3), v11, v24, 2));
  v12 = Float.piDiv2.unsafeMutableAddressor();
  v13 = __sincosf_stret(*v12 * -0.5);
  v14 = vmulq_n_f32(xmmword_1003D8A60, v13.__sinval);
  v14.i32[3] = LODWORD(v13.__cosval);
  v15 = vnegq_f32(v14);
  v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
  v17 = vrev64q_s32(v14);
  v17.i32[0] = v15.i32[1];
  v17.i32[3] = v15.i32[2];
  v18 = *&v1[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number];
  [v18 setSimdOrientation:{*vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, v25, 3), v17, v25, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v14, v15, 8uLL), *v25.f32, 1), vextq_s8(v16, v16, 8uLL), v25.f32[0])).i64}];
  sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
  SCNBoundingVolume.boundingBox.getter();
  v19 = v28;
  v20 = (*&v27 + *(&v28 + 1)) * 0.5;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a1 != 2)
  {
LABEL_6:
    v19 = v26;
  }

LABEL_7:
  v26 = 1065353216;
  v28 = 0;
  v27 = 0;
  v29 = 1065353216;
  v30 = 0;
  v31 = 0;
  v32 = 1065353216;
  v33 = v19;
  v34 = v20;
  v35 = 0x3F80000000000000;
  [v18 setPivot:{&v26, *&v25}];
  if (((a1 - 1) & 0xFD) != 0)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = [*&v2[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA] diffuse];
  v26 = 1065353216;
  v28 = 0;
  v27 = 0;
  v29 = 1056964608;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  v34 = v21;
  v35 = 0x3F80000000000000;
  [v22 setContentsTransform:&v26];

  v23 = [*&v2[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB] diffuse];
  v26 = 1065353216;
  v28 = 0;
  v27 = 0;
  v29 = 1056964608;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  v34 = v21;
  v35 = 0x3F80000000000000;
  [v23 setContentsTransform:&v26];
}

id sub_1001C6D64(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v10 = v9;
  simd_float4x4.position.getter();
  v49 = v11;
  simd_float4x4.position.getter();
  v13 = vsubq_f32(v49, v12);
  v14 = vmulq_f32(v13, v13);
  v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  [v9 simdTransform];
  v51 = v17;
  v52 = v16;
  v50 = v18;
  v19 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation;
  sub_10018D338(v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation], v16);
  v53 = v20;
  v21 = *Float.piDiv2.unsafeMutableAddressor();
  simd_float4x4.position.getter();
  v48 = v22;
  simd_float4x4.position.getter();
  v24 = vsubq_f32(v48, v23);
  v25 = vmulq_f32(v24, v24);
  v26 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
  v27 = *(**&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__unitState] + 144);

  v27(v28);

  v29 = sub_1000983B8();
  v31 = sub_1001C84B4(v29, v26);
  if (v15 > 0.00000011921)
  {
    v32 = &v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
    v33 = *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
    *v32 = v31;
    v32[1] = v30;
    sub_1001C5E8C(v33);
  }

  v34 = *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number];
  v35 = v10[v19];
  sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
  SCNBoundingVolume.boundingBox.getter();
  v36 = v57;
  if (v35 <= 1)
  {
    if (!v35)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v35 != 2)
  {
LABEL_9:
    v36 = v55;
  }

LABEL_10:
  v37 = (*&v56 + *(&v57 + 1)) * 0.5;
  *v38.i64 = sub_100077814(v52, v51, v50);
  v39 = vnegq_f32(v53);
  v40 = vtrn2q_s32(v53, vtrn1q_s32(v53, v39));
  v41 = vrev64q_s32(v53);
  v41.i32[0] = v39.i32[1];
  v41.i32[3] = v39.i32[2];
  v54 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v53, v39, 8uLL), *v38.f32, 1), vextq_s8(v40, v40, 8uLL), v38.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v53, v38, 3), v41, v38, 2));
  v42 = __sincosf_stret(v21 * -0.5);
  v43 = vmulq_n_f32(xmmword_1003D8A60, v42.__sinval);
  v43.i32[3] = LODWORD(v42.__cosval);
  v44 = vnegq_f32(v43);
  v45 = vtrn2q_s32(v43, vtrn1q_s32(v43, v44));
  v46 = vrev64q_s32(v43);
  v46.i32[0] = v44.i32[1];
  v46.i32[3] = v44.i32[2];
  v54.i64[0] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v43, v44, 8uLL), *v54.f32, 1), vextq_s8(v45, v45, 8uLL), v54.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v43, v54, 3), v46, v54, 2)).u64[0];
  v55 = 1065353216;
  v57 = 0;
  v56 = 0;
  v58 = 1065353216;
  v59 = 0;
  v60 = 0;
  v61 = 1065353216;
  v62 = v36;
  v63 = v37;
  v64 = 0x3F80000000000000;
  [v34 setPivot:{&v55, *&v48}];
  [v34 setSimdOrientation:*v54.i64];
  return [v34 setSimdPosition:0.0];
}

char *sub_1001C70CC(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v8[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isMaterialAActive] = 1;
  v11 = sub_10018C1EC(9);
  [v11 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
  if (swift_dynamicCast())
  {
    v12 = v52;
  }

  else
  {
    v12 = [objc_allocWithZone(SCNMaterial) init];
  }

  v13 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA;
  *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA] = v12;
  v14 = sub_10018C1EC(9);
  [v14 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v15 = v52;
  }

  else
  {
    v15 = [objc_allocWithZone(SCNMaterial) init];
  }

  *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB] = v15;
  v16 = &v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__unitState;
  KeyPath = swift_getKeyPath();
  v19 = sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v20 = qword_1004D5058;
  v21 = *(v19 + 272);
  swift_retain_n();
  *&v9[v17] = v21(KeyPath, v20);
  v22 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__orientationState;
  v23 = swift_getKeyPath();
  v24 = sub_10000F974(&unk_1004A4910, &unk_1003D8AC0);
  *&v9[v22] = (*(v24 + 272))(v23, v20);
  v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation] = 2;
  v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldHide] = 1;
  v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isOcclusionInitialized] = 0;
  v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldRenderNumbers] = 0;
  v25 = &v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = a5;
  v25[5] = a6;
  v25[6] = a7;
  v25[7] = a8;
  v26 = [objc_opt_self() planeWithWidth:400.0 height:125.0];
  v27 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_plane;
  *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_plane] = v26;
  [v26 setFirstMaterial:*&v9[v13]];
  v28 = [objc_opt_self() nodeWithGeometry:*&v9[v27]];
  *&v9[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number] = v28;
  v51.receiver = v9;
  v51.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v51, "init");
  [v29 setHidden:1];
  sub_1001C6D64([v29 addChildNode:*&v29[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number]], a1, a2, a3, a4, a5, a6, a7, a8);
  if (((v29[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation] - 1) & 0xFD) != 0)
  {
    v30 = 0.5;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = [*&v29[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA] diffuse];
  *v42 = 1065353216;
  v43 = 0;
  *&v42[4] = 0;
  v44 = 1056964608;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v48 = 0;
  v49 = v30;
  v50 = 0x3F80000000000000;
  [v31 setContentsTransform:v42];

  v32 = [*&v29[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB] diffuse];
  *v42 = 1065353216;
  v43 = 0;
  *&v42[4] = 0;
  v44 = 1056964608;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v48 = 0;
  v49 = v30;
  v50 = 0x3F80000000000000;
  [v32 setContentsTransform:v42];

  v45 = &type metadata for CGFloat;
  *v42 = 0x3FF0000000000000;
  sub_1001C7C44(v42, 0x6D754E646E457369, 0xEB00000000726562, &selRef_setValue_forKeyPath_);
  sub_100018F04(v42, &unk_1004A6970, &unk_1003D5710);
  if (qword_1004A0418 != -1)
  {
    swift_once();
  }

  v45 = &type metadata for Float;
  *v42 = dword_1004D4FD4;
  sub_1001C7C44(v42, 0xD000000000000012, 0x80000001004004A0, &selRef_setValue_forKeyPath_);

  sub_100018F04(v42, &unk_1004A6970, &unk_1003D5710);
  return v29;
}

uint64_t sub_1001C7664()
{
  if (![objc_opt_self() jasperAvailable] || (v1 = objc_opt_self(), v2 = objc_msgSend(v1, "standardUserDefaults"), v3 = objc_msgSend(v2, "isLineOcclusionEnabled"), v2, !v3) || (v4 = *MeasureCore.shared.unsafeMutableAddressor(), swift_beginAccess(), (v5 = *(v4 + 112)) == 0))
  {
    v46[3] = &type metadata for CGFloat;
    v46[0] = 0;
    sub_1001C7C44(v46, 0xD000000000000010, 0x80000001004005E0, &selRef_setValue_forKeyPath_);
    return sub_100018F04(v46, &unk_1004A6970, &unk_1003D5710);
  }

  v6 = v0;
  v7 = qword_1004A0638;

  if (v7 != -1)
  {
    swift_once();
  }

  UIColor.rgba.getter();
  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  result = swift_beginAccess();
  if (!*(v5 + 192))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  ADProcessor.transformer.getter();

  Transformer.clipToCameraNormalized.getter();

  simd_float3x3.copy(from:)();
  v9 = [v1 standardUserDefaults];
  v10 = [v9 isLineOcclusionEnabled];

  v11 = 0.0;
  if (v10)
  {
    v11 = 1.0;
  }

  v42 = &type metadata for CGFloat;
  v39 = *&v11;
  sub_1001C7C44(&v39, 0xD000000000000010, 0x80000001004005E0, &selRef_setValue_forKeyPath_);
  sub_100018F04(&v39, &unk_1004A6970, &unk_1003D5710);
  SCNVector4.init(_:_:_:_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  type metadata accessor for SCNVector4(0);
  v42 = v20;
  v39 = __PAIR64__(v15, v13);
  v40 = v17;
  v41 = v19;
  sub_1001C7C44(&v39, 0x646564756C63636FLL, 0xED0000726F6C6F43, &selRef_setValue_forKeyPath_);
  sub_100018F04(&v39, &unk_1004A6970, &unk_1003D5710);
  v42 = &type metadata for CGFloat;
  v39 = 0x3FB99999A0000000;
  sub_1001C7C44(&v39, 0x636E6172656C6F74, 0xE900000000000065, &selRef_setValue_forKeyPath_);
  sub_100018F04(&v39, &unk_1004A6970, &unk_1003D5710);
  SCNVector3.init(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  type metadata accessor for SCNVector3(0);
  v28 = v27;
  v42 = v27;
  v39 = __PAIR64__(v24, v22);
  v40 = v26;
  sub_1001C7C44(&v39, 0xD000000000000012, 0x8000000100400600, &selRef_setValue_forKey_);
  sub_100018F04(&v39, &unk_1004A6970, &unk_1003D5710);
  SCNVector3.init(_:)();
  v42 = v28;
  v39 = __PAIR64__(v30, v29);
  v40 = v31;
  sub_1001C7C44(&v39, 0xD000000000000012, 0x8000000100400620, &selRef_setValue_forKey_);
  sub_100018F04(&v39, &unk_1004A6970, &unk_1003D5710);
  SCNVector3.init(_:)();
  v42 = v28;
  v39 = __PAIR64__(v33, v32);
  v40 = v34;
  sub_1001C7C44(&v39, 0xD000000000000012, 0x8000000100400640, &selRef_setValue_forKey_);
  result = sub_100018F04(&v39, &unk_1004A6970, &unk_1003D5710);
  v35 = *(v5 + 192);
  if (!v35)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  if (*(v35 + 242) == 1)
  {
    swift_beginAccess();
    v36 = *(v35 + 256);
    swift_unknownObjectRetain();
  }

  else
  {

    v36 = ADProcessor.outputDepthTexture.getter();
  }

  v39 = v36;
  swift_unknownObjectRetain_n();
  sub_10000F974(&unk_1004A4980, &unk_1003D8AD0);
  v37 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v38 = [objc_opt_self() materialPropertyWithContents:v37];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v42 = sub_100018630(0, &unk_1004AF730, SCNMaterialProperty_ptr);
  v39 = v38;
  sub_1001C7C44(&v39, 0x7275747865546461, 0xE900000000000065, &selRef_setValue_forKey_);

  swift_unknownObjectRelease();
  result = sub_100018F04(&v39, &unk_1004A6970, &unk_1003D5710);
  *(v6 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isOcclusionInitialized) = 1;
  return result;
}

void sub_1001C7C44(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA);
  sub_10002D2A0(a1, v28);
  v8 = v29;
  if (v29)
  {
    v9 = sub_10000FEBC(v28, v29);
    v27[1] = v27;
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = a4;
    v14 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v14, v11);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    v16 = v14;
    a4 = v13;
    (*(v10 + 8))(v16, v8);
    sub_10000FF00(v28);
  }

  else
  {
    v15 = 0;
  }

  v17 = String._bridgeToObjectiveC()();
  [v7 *a4];
  swift_unknownObjectRelease();

  v18 = *(v4 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB);
  sub_10002D2A0(a1, v28);
  v19 = v29;
  if (v29)
  {
    v20 = sub_10000FEBC(v28, v29);
    v21 = *(v19 - 8);
    v22 = __chkstk_darwin(v20);
    v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v21 + 8))(v24, v19);
    sub_10000FF00(v28);
  }

  else
  {
    v25 = 0;
  }

  v26 = String._bridgeToObjectiveC()();
  [v18 *a4];
  swift_unknownObjectRelease();
}

void sub_1001C7F24()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__orientationState) + 144);

  v1(&v5, v2);

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v3 = *Float.piDiv2.unsafeMutableAddressor();
      SIMD3<>.forward.unsafeMutableAddressor();
      v4 = 0.5;
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_3;
      }

      v3 = *Float.piDiv2.unsafeMutableAddressor();
      SIMD3<>.forward.unsafeMutableAddressor();
      v4 = -0.5;
    }

    __sincosf_stret(v3 * v4);
  }

  else
  {
    if (v5 != 2)
    {
LABEL_3:
      vmulq_f32(*SIMD3<>.forward.unsafeMutableAddressor(), 0);
      return;
    }

    SIMD3<>.forward.unsafeMutableAddressor();
  }
}

void sub_1001C803C(uint64_t a1)
{
  sub_1001C6D64(a1, *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms), *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms + 16), *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms + 32), *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms + 48), *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms + 64), *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms + 80), *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms + 96), *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_endTransforms + 112));
  sub_1001C7F24();
  v23 = v2;
  type metadata accessor for MeasureCamera();
  simd_float4x4.position.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
  v3 = vmulq_f32(v23, xmmword_1003D68A0);
  v4 = vnegq_f32(v3);
  v5 = vtrn2q_s32(v3, vtrn1q_s32(v3, v4));
  v21 = vextq_s8(v3, v4, 8uLL);
  v22 = vextq_s8(v5, v5, 8uLL);
  v7 = vrev64q_s32(v3);
  v7.i32[0] = v4.i32[1];
  v7.i32[3] = v4.i32[2];
  v19 = v7;
  v8 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v21, *v6.f32, 1), v22, v6.f32[0]), v7, v6, 2);
  v9 = vnegq_f32(v8);
  v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
  v11 = vrev64q_s32(v8);
  v11.i32[0] = v9.i32[1];
  v11.i32[3] = v9.i32[2];
  v20 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, v23, 3), v11, v23, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v23.f32, 1), vextq_s8(v10, v10, 8uLL), v23.f32[0]));
  simd_float4x4.position.getter();
  static ComputedCameraProperties.shared.getter();
  static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
  v13 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v21, *v12.f32, 1), v22, v12.f32[0]), v19, v12, 2);
  v14 = vnegq_f32(v13);
  v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
  v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v23.f32, 1), vextq_s8(v15, v15, 8uLL), v23.f32[0]);
  v17 = vrev64q_s32(v13);
  v17.i32[0] = v14.i32[1];
  v17.i32[3] = v14.i32[2];
  if (vmovn_s32(vcgtq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, v23, 3), v17, v23, 2), v16), v20)).u8[0])
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  sub_1001C6AD8(v18);
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation) = v18;
}

void sub_1001C822C(uint64_t a1)
{
  simd_float4x4.position.getter();
  v9 = v1;
  simd_float4x4.position.getter();
  v3 = vsubq_f32(v9, v2);
  v4 = vmulq_f32(v3, v3);
  v5 = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  if (qword_1004A0410 != -1)
  {
    swift_once();
  }

  v6 = v5 - *&dword_1004D4FD0;
  if (qword_1004A0408 != -1)
  {
    swift_once();
  }

  v7 = floorf(v6 / *&dword_1004D4FCC);
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < 9.2234e18)
  {
    if (qword_1004A0440 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  swift_once();
LABEL_9:
  if (!qword_1004D4FF0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 == 0x8000000000000000 && qword_1004D4FF0 == -1)
  {
    goto LABEL_20;
  }
}

uint64_t sub_1001C84B4(uint64_t a1, float a2)
{
  v5 = sub_10000F974(&qword_1004A9BF0, &qword_1003E2ED0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v84 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  Defaults.measurementBias.unsafeMutableAddressor();

  v13 = String._bridgeToObjectiveC()();

  [v12 floatForKey:v13];

  if (a1 == 1)
  {
    v14 = a2;
    v15 = 1;
LABEL_9:
    sub_10010DE20(v15, 0, 0, &v87[0]._countAndFlagsBits, v14);
    countAndFlagsBits = v87[0]._countAndFlagsBits;
    v88 = v87[1];
    sub_100018F04(&v88, &qword_1004A72C0, &qword_1003DAD40);
    return countAndFlagsBits;
  }

  if (!a1)
  {
    v16 = objc_opt_self();
    v17 = [v16 meters];
    sub_100018630(0, &qword_1004A9BF8, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    v18 = [v16 inches];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v20 = v19;
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v11, v5);
    v22 = v20;
    if (v22 <= 12.0 || v22 >= 36.0)
    {
      v14 = a2;
      v15 = 0;
      goto LABEL_9;
    }

    v26 = roundf(v22 + v22) * 0.5;
    v27 = floorf(v26);
    if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v27 > -9.2234e18)
    {
      if (v27 < 9.2234e18)
      {
        v28 = floorf(v22 / 12.0);
        if ((LODWORD(v28) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          if (v28 > -9.2234e18)
          {
            if (v28 < 9.2234e18)
            {
              v2 = v28;
              v29 = 12 * v28;
              if ((v28 * 12) >> 64 == v29 >> 63)
              {
                *&v20 = v22 - v29;
                v30 = roundf(*&v20);
                if (v30 == 12.0)
                {
                  a2 = 0.0;
                }

                else
                {
                  a2 = v30;
                }

                if (qword_1004A02F0 == -1)
                {
LABEL_22:
                  v31 = qword_1004D4EB8;
                  v32 = objc_allocWithZone(NSDecimalNumber);
                  *&v33 = a2;
                  v34 = [v32 initWithFloat:v33];
                  v35 = [v31 stringFromNumber:v34];

                  if (v35)
                  {
                    v36 = floorf(*&v20);
                    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v39 = v38;

                    v40 = objc_allocWithZone(NSDecimalNumber);
                    *&v41 = v36;
                    v42 = [v40 initWithFloat:v41];
                    v43 = [v31 stringFromNumber:v42];

                    if (v43)
                    {
                      v44 = v26 - v27;
                      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v47 = v46;

                      v48 = roundf(v26);
                      v86 = v2;
                      if (v44 <= 0.00000011921 || v48 >= 36.0)
                      {
                        v53 = [objc_opt_self() mainBundle];
                        v90._object = 0xE000000000000000;
                        v54._countAndFlagsBits = 0x9D80E24025;
                        v54._object = 0xA500000000000000;
                        v55._countAndFlagsBits = 0;
                        v55._object = 0xE000000000000000;
                        v90._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v53, v55, v90);

                        sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
                        v56 = swift_allocObject();
                        *(v56 + 16) = xmmword_1003D5360;
                        *(v56 + 56) = &type metadata for String;
                        *(v56 + 64) = sub_1000192D0();
                        *(v56 + 32) = v37;
                        *(v56 + 40) = v39;

                        countAndFlagsBits = String.init(format:_:)();
                        v58 = v57;
                      }

                      else
                      {
                        v49 = [objc_opt_self() mainBundle];
                        v89._object = 0xE000000000000000;
                        v50._countAndFlagsBits = 0x9D80E2BDC24025;
                        v50._object = 0xA700000000000000;
                        v51._countAndFlagsBits = 0;
                        v51._object = 0xE000000000000000;
                        v89._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v89);

                        sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
                        v52 = swift_allocObject();
                        *(v52 + 16) = xmmword_1003D5360;
                        *(v52 + 56) = &type metadata for String;
                        *(v52 + 64) = sub_1000192D0();
                        if (v36 <= 0.0)
                        {
                          *(v52 + 32) = 0;
                          *(v52 + 40) = 0xE000000000000000;
                        }

                        else
                        {
                          *(v52 + 32) = v45;
                          *(v52 + 40) = v47;
                        }

                        countAndFlagsBits = String.init(format:_:)();
                        v58 = v59;
                        v2 = v86;
                      }

                      v60 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:v2];
                      v61 = [v31 stringFromNumber:v60];

                      if (v61)
                      {

                        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v64 = v63;

                        v65 = objc_opt_self();
                        v66 = [v65 mainBundle];
                        v91._object = 0xE000000000000000;
                        v67._countAndFlagsBits = 0xB280E240243125;
                        v85 = "bserver";
                        v68.value._object = 0x8000000100407540;
                        v67._object = 0xA700000000000000;
                        v68.value._countAndFlagsBits = 0xD000000000000014;
                        v69._countAndFlagsBits = 0;
                        v69._object = 0xE000000000000000;
                        v91._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v66, v69, v91);

                        sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
                        v70 = swift_allocObject();
                        *(v70 + 16) = xmmword_1003D5360;
                        *(v70 + 56) = &type metadata for String;
                        v71 = sub_1000192D0();
                        *(v70 + 64) = v71;
                        *(v70 + 32) = v62;
                        *(v70 + 40) = v64;
                        v72 = String.init(format:_:)();
                        v74 = v73;

                        if (a2 <= 0.0)
                        {
                          if (v86 < 1)
                          {

                            if (v44 <= 0.00000011921)
                            {

                              v80 = [v65 mainBundle];
                              v93._object = 0xE000000000000000;
                              v81._countAndFlagsBits = 0x9D80E2BDC2203CLL;
                              v81._object = 0xA700000000000000;
                              v82._countAndFlagsBits = 0;
                              v82._object = 0xE000000000000000;
                              v93._countAndFlagsBits = 0;
                              v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v81, 0, v80, v82, v93);

                              v87[0] = v83;
                              return String.init<A>(_:)();
                            }

                            return countAndFlagsBits;
                          }

                          if (v44 <= 0.00000011921)
                          {

                            return v72;
                          }
                        }

                        else if (v86 <= 0)
                        {

                          return countAndFlagsBits;
                        }

                        v75 = [v65 mainBundle];
                        v92._object = 0xE000000000000000;
                        v76._countAndFlagsBits = 0x2432252040243125;
                        v77.value._object = (v85 | 0x8000000000000000);
                        v76._object = 0xE900000000000040;
                        v77.value._countAndFlagsBits = 0xD000000000000014;
                        v78._countAndFlagsBits = 0;
                        v78._object = 0xE000000000000000;
                        v92._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v92);

                        v79 = swift_allocObject();
                        *(v79 + 16) = xmmword_1003D5730;
                        *(v79 + 56) = &type metadata for String;
                        *(v79 + 64) = v71;
                        *(v79 + 32) = v72;
                        *(v79 + 40) = v74;
                        *(v79 + 96) = &type metadata for String;
                        *(v79 + 104) = v71;
                        *(v79 + 72) = countAndFlagsBits;
                        *(v79 + 80) = v58;
                        countAndFlagsBits = String.init(format:_:)();

                        return countAndFlagsBits;
                      }

                      goto LABEL_51;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
LABEL_51:
                  __break(1u);
                  goto LABEL_52;
                }

LABEL_48:
                swift_once();
                goto LABEL_22;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_52:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C8EC8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

double sub_1001C8F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001C8F48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C8F8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1001C9010()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isMaterialAActive) = 1;
  v2 = sub_10018C1EC(9);
  [v2 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
  if (swift_dynamicCast())
  {
    v3 = v15;
  }

  else
  {
    v3 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialA) = v3;
  v4 = sub_10018C1EC(9);
  [v4 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v5 = v15;
  }

  else
  {
    v5 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_materialB) = v5;
  v6 = (v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_currentString);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__unitState;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A72E0, &qword_1003DCDF0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);
  swift_retain_n();
  *(v1 + v7) = v11(KeyPath, v10);
  v12 = OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber__orientationState;
  v13 = swift_getKeyPath();
  v14 = sub_10000F974(&unk_1004A4910, &unk_1003D8AC0);
  *(v1 + v12) = (*(v14 + 272))(v13, v10);
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_lastNumbersOrientation) = 2;
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldHide) = 1;
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isOcclusionInitialized) = 0;
  *(v1 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldRenderNumbers) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001C9308()
{
  sub_10000F974(&qword_1004AF740, &qword_1003E2F30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1003D5360;
  sub_10000F974(&qword_1004AF748, &qword_1003E2F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5730;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey;
  *(inited + 40) = 6;
  *(inited + 48) = UIFontFeatureSelectorIdentifierKey;
  *(inited + 56) = 0;
  v3 = UIFontFeatureTypeIdentifierKey;
  v4 = UIFontFeatureSelectorIdentifierKey;
  v5 = sub_100199D50(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AF750, &qword_1003E2F40);
  swift_arrayDestroy();
  *(v1 + 32) = v5;
  sub_10000F974(&qword_1004AF758, &qword_1003E2F48);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1003D5360;
  *(v6 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  *(v6 + 40) = v1;
  v7 = UIFontDescriptorFeatureSettingsAttribute;
  v8 = sub_100199E3C(v6);
  swift_setDeallocating();
  sub_1001C9538(v6 + 32);
  sub_100193B14(v8);
  type metadata accessor for AttributeName(0);
  sub_10019FEDC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100193B14(v8);

  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v0 fontDescriptorByAddingAttributes:v10];

  return v11;
}

uint64_t sub_1001C9538(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AF760, &qword_1003E2F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001C95B8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1001C9E48(a2, a3, a4);
  v9 = v8;
  v10 = v8 >> 62;
  if (a1)
  {
    v26 = a4;
    if (v10)
    {
      goto LABEL_47;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (i)
      {
        v12 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v13 = *(v9 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if ((*((swift_isaMask & *v13) + 0xD0))() == 3)
          {
            goto LABEL_40;
          }

          ++v12;
          if (v15 == i)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:

        v20 = sub_1001C9E48(v6, v5, v26);
        v9 = v20;
        if (v20 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          if (!v21)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v21)
          {
            goto LABEL_49;
          }
        }

        v5 = v9 & 0xC000000000000001;
        v6 = v9 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v17 = __OFSUB__(v21--, 1);
          if (v17)
          {
            break;
          }

          if (v5)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            if (v21 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v23 = *(v9 + 32 + 8 * v21);
          }

          v14 = v23;
          type metadata accessor for WorldLine();
          if (swift_dynamicCastClass())
          {
            v22 = vdupq_n_s64((*((swift_isaMask & *v14) + 0xD0))());
            if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_100464FB8, v22), vceqq_s64(unk_100464FC8, v22)))))
            {
              goto LABEL_40;
            }
          }

          else
          {
            type metadata accessor for WorldRectangle();
            if (swift_dynamicCastClass())
            {
              v24 = (*((swift_isaMask & *v14) + 0xD0))();
              if (v24 == 5 || v24 == 9)
              {
                goto LABEL_40;
              }
            }
          }

          if (!v21)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }
  }

  if (!v10)
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_49:

    return 0;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_49;
  }

LABEL_16:
  v17 = __OFSUB__(v16, 1);
  result = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_53;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_53:
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
    v14 = v19;
LABEL_40:

    return v14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v9 + 8 * result + 32);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

BOOL sub_1001C98F0(void *a1, void *a2, void *a3)
{

  sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
  sub_10000F974(&qword_1004A1650, &unk_1003D5980);
  swift_dynamicCast();
  v3 = v24;
  if (v24 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((*((swift_isaMask & *v6) + 0xD0))() == 1)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_14:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *&_swiftEmptyArrayStorage[2];
    }

    if (v9)
    {
      v10 = 0;
      goto LABEL_43;
    }

    sub_10000F974(&qword_1004A28B0, &qword_1003D7068);
    swift_dynamicCast();
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        break;
      }

      goto LABEL_21;
    }

    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      break;
    }

LABEL_21:
    v11 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v12 = *&_swiftEmptyArrayStorage[v11 + 4];
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((*((swift_isaMask & *v12) + 0xD0))() == 1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v11;
      if (v14 == v3)
      {
        goto LABEL_39;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_39:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *&_swiftEmptyArrayStorage[2];
  }

  v10 = v15 == 0;
LABEL_43:
  v16 = [objc_opt_self() jasperAvailable] ^ 1;
  result = v16 & v10;
  if ((v16 & 1) == 0 && v10)
  {

    sub_10000F974(&qword_1004A3DA0, &unk_1003E1E60);
    swift_dynamicCast();
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_60;
    }

    for (j = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v19 = 0;
      while (1)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v20 = *&_swiftEmptyArrayStorage[v19 + 4];
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if ((*((swift_isaMask & *v20) + 0xD0))())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v19;
        if (v22 == j)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      ;
    }

LABEL_61:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *&_swiftEmptyArrayStorage[2];
    }

    return v23 == 0;
  }

  return result;
}

unint64_t sub_1001C9E48(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
  sub_10000F974(&qword_1004A1650, &unk_1003D5980);
  swift_dynamicCast();
  if (v8 >> 62)
  {
    type metadata accessor for MeasureObject();

    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MeasureObject();
    v4 = v8;
  }

  sub_10000F974(&qword_1004A28B0, &qword_1003D7068);
  swift_dynamicCast();
  if (v8 >> 62)
  {
    type metadata accessor for MeasureObject();

    v5 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MeasureObject();
    v5 = v8;
  }

  sub_100103C70(v5);
  if ([objc_opt_self() jasperAvailable])
  {

    sub_10000F974(&qword_1004A3DA0, &unk_1003E1E60);
    swift_dynamicCast();
    if (v4 >> 62)
    {
      type metadata accessor for MeasureObject();

      v6 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for MeasureObject();
      v6 = v4;
    }

    sub_100103C70(v6);
  }

  return v4;
}

id sub_1001CA0D4()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D5420 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1001CA154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001C9E48(a2, a3, a4);
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_20:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v7 = 0;
    v19 = v5 & 0xC000000000000001;
    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = v5 + 32;
LABEL_5:
    if (v19)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_18;
      }

      v5 = *(v9 + 8 * v7);
    }

    v10 = v5;
    if (!__OFADD__(v7++, 1))
    {
      break;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v16 = v5;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v16;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v12 = (*((swift_isaMask & *v5) + 0xD0))();
  v13 = *(a1 + 16);
  v14 = (a1 + 32);
  do
  {
    if (!v13)
    {

      if (v7 != v6)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }

    v15 = *v14++;
    --v13;
  }

  while (v15 != v12);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = specialized ContiguousArray._endMutation()();
  if (v7 != v6)
  {
    goto LABEL_5;
  }

LABEL_15:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_24:
    v17 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_23;
  }

LABEL_21:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v17 = *&_swiftEmptyArrayStorage[2];
LABEL_23:

  return v17 != 0;
}

id sub_1001CA33C@<X0>(void *a1@<X8>)
{
  if (qword_1004A0848 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D5420;
  *a1 = qword_1004D5420;

  return v2;
}

uint64_t sub_1001CA3AC(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_10007B068(*a1, *a2) & 1) == 0 || (sub_10007B068(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_10007B068(v3, v5);
}

unint64_t sub_1001CA42C(uint64_t a1)
{
  result = sub_1001CA454();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001CA454()
{
  result = qword_1004AF790[0];
  if (!qword_1004AF790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004AF790);
  }

  return result;
}

uint64_t sub_1001CA4E0()
{
  sub_10000F974(&qword_1004A1650, &unk_1003D5980);
  sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
  swift_dynamicCast();
  sub_10000F974(&qword_1004A28B0, &qword_1003D7068);
  swift_dynamicCast();
  sub_10000F974(&qword_1004A3DA0, &unk_1003E1E60);
  swift_dynamicCast();
  return v1;
}

uint64_t sub_1001CA5D4(uint64_t a1)
{
  type metadata accessor for WorldLine();
  if (swift_dynamicCastClass() || (type metadata accessor for WorldRectangle(), swift_dynamicCastClass()) || (type metadata accessor for WorldPerson(), swift_dynamicCastClass()))
  {

    return swift_getKeyPath();
  }

  else
  {
    _StringGuts.grow(_:)(30);

    swift_getObjectType();
    v2._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v2);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double sub_1001CA708@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 8);

  return result;
}

void sub_1001CA714(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
}

double sub_1001CA758@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void sub_1001CA764(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
}

uint64_t sub_1001CA7B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t UIInterfaceOrientation.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x7469617274726F70;
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  result = 0x70616373646E616CLL;
  if (a1 != 4 && a1 != 3)
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1001CA940()
{
  result = [objc_allocWithZone(type metadata accessor for UIKitContext()) init];
  qword_1004D5428 = result;
  return result;
}

void sub_1001CA970()
{
  v8 = 0;
  v1 = *&v0[OBJC_IVAR____TtC7Measure12UIKitContext_contextQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001CBAAC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_100089BB8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DC708;
  aBlock[3] = &unk_100472F70;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (v8)
  {

    return;
  }

  __break(1u);
}

void sub_1001CAB04()
{
  v8 = 0;
  v1 = *&v0[OBJC_IVAR____TtC7Measure12UIKitContext_contextQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1001CBA90;
  *(v3 + 24) = v2;
  aBlock[4] = sub_100031688;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DC708;
  aBlock[3] = &unk_100472EF8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (v8)
  {

    return;
  }

  __break(1u);
}

double sub_1001CAC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = v18;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = v19;
  v15 = _Block_copy(aBlock);
  v16 = v4;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);

  return result;
}

id sub_1001CAEB8()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = &v0[OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits];
  v16 = 1;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  v7[80] = 1;
  v12 = OBJC_IVAR____TtC7Measure12UIKitContext_contextQueue;
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v8 = xmmword_1004D4B58;

  v15 = v8;
  v9._object = 0x800000010040D5C0;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC7Measure12UIKitContext__observationMap] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC7Measure12UIKitContext__valueMap] = _swiftEmptyDictionarySingleton;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

Swift::Int sub_1001CB1FC()
{
  Hasher.init(_seed:)();
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001CB270(uint64_t a1)
{
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int sub_1001CB2D4()
{
  Hasher.init(_seed:)();
  type metadata accessor for AnyKeyPath();
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001CB344(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for AnyKeyPath();
  if ((static AnyKeyPath.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100018630(0, &qword_1004AE0D0, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1001CB3C4(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1001CBB40;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100472FC0;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

id sub_1001CB660(uint64_t a1, id a2)
{
  [a2 center];
  v5 = v4;
  v7 = v6;
  [a2 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = [a2 bounds];
  v17 = a1 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  *v17 = v5;
  *(v17 + 8) = v7;
  *(v17 + 16) = v9;
  *(v17 + 24) = v11;
  *(v17 + 32) = v13;
  *(v17 + 40) = v15;
  *(v17 + 48) = v18;
  *(v17 + 56) = v19;
  *(v17 + 64) = v20;
  *(v17 + 72) = v21;
  *(v17 + 80) = 0;
  return result;
}

uint64_t KeyPath.description.getter()
{
  v0 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    sub_10000F974(&unk_1004AFC50, &qword_1003E34F0);
    v9 = String.init<A>(describing:)();
    v4._countAndFlagsBits = 15917;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    v5 = v2;
    v6 = v3;
  }

  else
  {
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    sub_10000F974(&unk_1004AFC50, &qword_1003E34F0);
    v9 = String.init<A>(describing:)();
    v7._countAndFlagsBits = 15917;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    v5 = String.init<A>(describing:)();
  }

  String.append(_:)(*&v5);

  return v9;
}

__n128 sub_1001CB8B8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001CB8D4(uint64_t a1, int a2)
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

uint64_t sub_1001CB8F4(uint64_t result, int a2, int a3)
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

unint64_t sub_1001CB948()
{
  result = qword_1004AF860;
  if (!qword_1004AF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF860);
  }

  return result;
}

double sub_1001CB9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001CB9C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001CBA10(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);

  return result;
}

uint64_t sub_1001CBA58()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001CBAB8(void *a1)
{
  **(v1 + 16) = *(*(v1 + 24) + *a1);

  return result;
}

uint64_t sub_1001CBB00()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001CBDEC()
{
  result = qword_1004AF8B8;
  if (!qword_1004AF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF8B8);
  }

  return result;
}

double sub_1001CBE40()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure10UndoButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v4._object = 0x800000010040CBA0;
  v4._countAndFlagsBits = 0xD000000000000013;
  Log.default(_:isPrivate:)(v4, 0);
  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  result = *(v5 + 8) + 1.0;
  *(v5 + 8) = result;
  return result;
}

uint64_t sub_1001CBF70()
{
  v1 = sub_10000F974(&qword_1004A2D60, &unk_1003DEA40);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  [v0 bounds];
  CGRect.center.getter();
  [v0 bounds];
  CGRect.init(centerPoint:size:)();
  v13 = [objc_opt_self() bezierPathWithOvalInRect:{v9, v10, v11, v12}];
  [v8 setVisiblePath:v13];

  sub_100040E00();
  *v7 = [objc_allocWithZone(UITargetedPreview) initWithView:v0 parameters:v8];
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v14 = type metadata accessor for UIPointerShape();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = UIPointerStyle.init(effect:shape:)();

  return v15;
}

void sub_1001CC1D8()
{
  _StringGuts.grow(_:)(40);
  if (qword_1004A01C0 != -1)
  {
    swift_once();
  }

  v0._object = 0x800000010040D690;
  v0._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v0);
  v1 = String._bridgeToObjectiveC()();

  qword_1004D5430 = v1;
}

void sub_1001CC2AC(void *a1)
{
  v1 = qword_1004AF8C8;
  qword_1004AF8C8 = a1;
  v5 = a1;

  v2 = [v5 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    if ((byte_1004AF8C0 & 1) == 0)
    {
      v3 = 1;
      goto LABEL_8;
    }
  }

  else if (byte_1004AF8C0)
  {
    v3 = 0;
LABEL_8:
    byte_1004AF8C0 = v3;
    v4 = [objc_opt_self() defaultCenter];
    if (qword_1004A0858 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_1004D5430 object:0];
  }
}

void sub_1001CC5CC(char a1, double a2)
{
  v5 = 1.0;
  if ((a1 & 1) == 0)
  {
    v6 = *&v2[qword_1004AF980];
    v5 = 0.0;
    if (v6)
    {
      [v6 setAlpha:0.0];
    }
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = a1 & 1;
  v8 = objc_allocWithZone(UIViewPropertyAnimator);
  v12[4] = sub_10001B41C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100041180;
  v12[3] = &unk_100473230;
  v9 = _Block_copy(v12);
  v10 = v2;

  v11 = [v8 initWithDuration:v9 dampingRatio:a2 animations:1.0];
  _Block_release(v9);
  [v11 setInterruptible:0];
  [v11 startAnimation];
}

id sub_1001CC738()
{
  v1 = qword_1004AF900;
  v2 = *(v0 + qword_1004AF900);
  if (v2)
  {
    v3 = *(v0 + qword_1004AF900);
  }

  else
  {
    type metadata accessor for OverlayMetalView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001CC7B0()
{
  v1 = qword_1004AF908;
  v2 = *(v0 + qword_1004AF908);
  if (v2)
  {
    v3 = *(v0 + qword_1004AF908);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(NonRotatingARSCNView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v5 setAutoresizingMask:36];
    [v5 setLockedOrientation:*effectiveStatusBarOrientation.unsafeMutableAddressor()];
    v6 = v5;
    [v6 setAutomaticallyOccludesVirtualContent:0];
    v7 = [objc_allocWithZone(SCNScene) init];
    [v6 setScene:v7];

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    v8 = [v6 sceneRenderingQueue];
    v9 = *(&xmmword_1004D4AE8 + 1);
    *(&xmmword_1004D4AE8 + 1) = v8;

    if ([objc_opt_self() jasperAvailable])
    {
      v10 = sub_1001CC738();
      [v6 addSubview:v10];

      [v6 sendSubviewToBack:*(v4 + qword_1004AF900)];
    }

    sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
    if ((static UIDevice.isIPad()() & 1) != 0 && (static UIDevice.isDeviceQualified(family:minVersion:)() & 1) == 0)
    {
      [v6 setPreferredFramesPerSecond:30];
    }

    v11 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

double sub_1001CCA0C(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + qword_1004AF910);
  if (v3 && *&v3[qword_1004AB570])
  {
    goto LABEL_3;
  }

  v5 = *(v2 + qword_1004AF938);
  if (!v5 || !*(*(v5 + 64) + OBJC_IVAR____TtC7Measure9LabelView_measurementUnderInspection + 8))
  {
    return result;
  }

  if (v3)
  {
    if (*&v3[qword_1004AB570])
    {
LABEL_3:
      v10 = v3;
      a1();
LABEL_11:

      return result;
    }

    if (!*(v2 + qword_1004AF938))
    {
      return result;
    }
  }

  v8 = a2(v7);
  if (v8)
  {
    v10 = v8;
    sub_1000B2F84();

    goto LABEL_11;
  }

  return result;
}

void sub_1001CCB48()
{
  if ([objc_opt_self() jasperAvailable])
  {
    v1 = *(v0 + qword_1004AF978);
    if (v1)
    {
      type metadata accessor for EditViewSpatial(0);
      if (swift_dynamicCastClass())
      {
        v4 = v1;
        sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
        sub_10001D47C(&qword_1004A8DE0, &unk_1004AFBD0, &unk_1003E3320, &protocol conformance descriptor for PassthroughSubject<A, B>);
        Subject<>.send()();
      }

      else
      {
        type metadata accessor for EditViewCompactSpatial(0);
        if (swift_dynamicCastClass())
        {
          v2 = v1;

          StateValue.wrappedValue.getter();

          v3 = *(v5 + 16);

          if (!v3)
          {
            sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
            sub_10001D47C(&qword_1004A8DE0, &unk_1004AFBD0, &unk_1003E3320, &protocol conformance descriptor for PassthroughSubject<A, B>);
            Subject<>.send()();
          }
        }
      }
    }
  }
}

uint64_t sub_1001CCD64(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v5 = sub_10000F974(&unk_1004ABA88, &qword_1003DF3E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = *(v2 + qword_1004AF910);
  if (v8 && *&v8[qword_1004AB570])
  {
    v9 = v8;
    a1();

    v10 = type metadata accessor for IndexPath();
    v11 = (*(*(v10 - 8) + 48))(v7, 1, v10) != 1;
    sub_100018F04(v7, &unk_1004ABA88, &qword_1003DF3E8);
  }

  else if (*(v2 + qword_1004AF938))
  {

    v11 = a2(v12);

    if (v11)
    {

      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v11;
}

void sub_1001CCEC0()
{
  v1 = *&v0[qword_1004AF988];
  if (v1)
  {
    v2 = v0;
    v3 = *(**&v0[qword_1004AF9B8] + 144);

    v4 = v1;
    v3(&v17);

    if ((v17 & 0x100) != 0)
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        v6 = qword_1004AF9A8;
        if (*&v2[qword_1004AF9A8])
        {
          if (([v4 isDescendantOfView:?] & 1) == 0)
          {
            v7 = *&v2[v6];
            if (v7)
            {
              [v7 addSubview:v4];
              v8 = [v2 view];
              if (v8)
              {
                v9 = *&v2[v6];
                if (v9)
                {
                  v10 = v8;
                  [v8 bringSubviewToFront:v9];
                  goto LABEL_21;
                }

LABEL_34:
                __break(1u);
                return;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_23:

          return;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
    }

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    if (xmmword_1004D4AE8)
    {
      v11 = [xmmword_1004D4AE8 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v4 isDescendantOfView:v11];

        if (v13)
        {
          goto LABEL_23;
        }

        if (xmmword_1004D4AE8)
        {
          v14 = [xmmword_1004D4AE8 view];
          if (v14)
          {
            v15 = v14;
            [v14 addSubview:v4];

            if (xmmword_1004D4AE8)
            {
              v16 = [xmmword_1004D4AE8 view];
              if (v16)
              {
                v10 = v16;
                [v16 bringSubviewToFront:v4];
LABEL_21:

                if (*&v2[qword_1004AF958])
                {

                  sub_1001390A0(1, 0, nullsub_1, 0);
                }

                goto LABEL_23;
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
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

double sub_1001CD160(double result)
{
  v2 = *(v1 + qword_1004AF910);
  if (v2)
  {
    *(swift_allocObject() + 16) = v2;
    sub_10000F974(&qword_1004ABB68, &unk_1003E3310);
    swift_allocObject();
    v3 = v2;
    v10[0] = Future.init(_:)();
    sub_10001D47C(&unk_1004ABB70, &qword_1004ABB68, &unk_1003E3310, &protocol conformance descriptor for Future<A, B>);
    v4 = Publisher.sink(receiveCompletion:receiveValue:)();

    *&v3[qword_1004AB638] = v4;

    v5 = *&v3[qword_1004AB518];
    if (v5)
    {
      [v5 dismissViewControllerAnimated:1 completion:{0, v10[0]}];
    }

    [*(*&v3[qword_1004AB508] + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
    v6 = *(**&v3[qword_1004AB540] + 400);

    v7 = v6(v10);
    *(v8 + 4) = 0;
    v7(v10, 0);
  }

  return v9;
}

uint64_t sub_1001CD37C()
{
  v1 = v0;
  v2 = [v0 subviews];
  sub_100018630(0, &qword_1004A7550, UIView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v41[0] = _swiftEmptyArrayStorage;
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for SpatialGenericPlatter(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v6 = v41[0];
  }

  while (v5 != v4);
LABEL_21:

  v10 = [v1 subviews];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_63;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = v6;
  if (!result)
  {
LABEL_64:

    return v13;
  }

LABEL_23:
  if (result >= 1)
  {
    v14 = 0;
    v37 = result;
    v38 = v11 & 0xC000000000000001;
    v35 = v11;
    v36 = v11 + 32;
    while (1)
    {
      if (v38)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v36 + 8 * v14);
      }

      v16 = v15;
      v17 = sub_1001CD37C();
      v18 = v17;
      v6 = (v17 >> 62);
      if (v17 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v13 >> 62;
      if (v13 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v19;
      v22 = __OFADD__(v21, v19);
      v23 = v21 + v19;
      if (v22)
      {
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
        result = _CocoaArrayWrapper.endIndex.getter();
        v13 = v6;
        if (!result)
        {
          goto LABEL_64;
        }

        goto LABEL_23;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v20)
      {
        goto LABEL_40;
      }

LABEL_41:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v24 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_42:
      v39 = v16;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v6)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
        if (!v27)
        {
LABEL_25:

          if (v40 > 0)
          {
            goto LABEL_59;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_25;
        }
      }

      if (((v26 >> 1) - v25) < v40)
      {
        goto LABEL_60;
      }

      v28 = v24 + 8 * v25 + 32;
      if (v6)
      {
        if (v27 < 1)
        {
          goto LABEL_62;
        }

        sub_10001D47C(&qword_1004AFC68, &qword_1004AFC60, &qword_1003E34F8, &protocol conformance descriptor for [A]);
        for (i = 0; i != v27; ++i)
        {
          sub_10000F974(&qword_1004AFC60, &qword_1003E34F8);
          v30 = sub_10013BA68(v41, i, v18);
          v32 = *v31;
          (v30)(v41, 0);
          *(v28 + 8 * i) = v32;
        }

        v11 = v35;
        v6 = v40;
        if (v40 <= 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        type metadata accessor for SpatialGenericPlatter(0);
        v6 = v40;
        swift_arrayInitWithCopy();

        if (v40 <= 0)
        {
          goto LABEL_26;
        }
      }

      v33 = *(v24 + 16);
      v22 = __OFADD__(v33, v6);
      v34 = v6 + v33;
      if (v22)
      {
        goto LABEL_61;
      }

      *(v24 + 16) = v34;
LABEL_26:
      if (++v14 == v37)
      {
        goto LABEL_64;
      }
    }

    if (!v20)
    {
      v24 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v23 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

LABEL_40:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_1001CD86C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  sub_1001CA970();
  if (*(v11 + 16))
  {
    sub_1001988D0(a1, a2);
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  else
  {
  }

  if (qword_1004A0240 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v52._countAndFlagsBits = 0x6E6976726573624FLL;
  v52._object = 0xEA00000000002067;
  v14._countAndFlagsBits = KeyPath.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 544108320;
  v15._object = 0xE400000000000000;
  String.append(_:)(v15);
  v16 = [a2 description];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  Log.debug(_:isPrivate:)(v52, 0);

  v52._countAndFlagsBits = a2;

  v21 = a2;
  swift_getAtKeyPath();
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v22._object = 0x800000010040DA40;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  v23._countAndFlagsBits = KeyPath.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 544108320;
  v24._object = 0xE400000000000000;
  String.append(_:)(v24);
  v25 = [v21 description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 8250;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31 = v54;
  *&v50[0] = v54;
  type metadata accessor for UIContentSizeCategory(0);
  v33 = v32;
  _print_unlocked<A, B>(_:_:)();
  Log.debug(_:isPrivate:)(v52, 0);

  v53 = v33;
  v52._countAndFlagsBits = v31;

  v34 = v21;
  v35 = v31;
  sub_1001CAB04();
  v51 = v36;
  if (v33)
  {
    v37 = v36;
    sub_1000C0FAC(&v52, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v37;
    sub_1000BCE4C(v50, a1, v34, isUniquelyReferenced_nonNull_native);

    v39 = v49;
  }

  else
  {
    sub_100018F04(&v52, &unk_1004A6970, &unk_1003D5710);
    sub_1000C69DC(a1, v34, v50);

    sub_100018F04(v50, &unk_1004A6970, &unk_1003D5710);
    v39 = v51;
  }

  sub_1001CAC70(v39);
  v52._countAndFlagsBits = v34;
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = v3;
  v40[4] = a1;
  v40[5] = v34;
  swift_retain_n();
  v41 = v34;
  v3;
  v42 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v43 = v41;
  v44 = v42;
  sub_1001CA970();
  v46 = v45;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v52._countAndFlagsBits = v46;
  sub_1000BCCC8(v44, a1, v43, v47);

  sub_1001CAADC(v52._countAndFlagsBits);
}

void sub_1001CDDF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_1004AF960);
  *(a1 + qword_1004AF960) = a3;
  v3 = a3;
}

void sub_1001CDE48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + qword_1004AF968);
  *(a1 + qword_1004AF968) = a3;
  v3 = a3;
}

double sub_1001CDEA0()
{

  StateValue.ifUpdated(_:)();

  return result;
}

void sub_1001CDF0C(void *a1)
{
  v1 = qword_1004AF9A0;
  if ((*(a1 + qword_1004AF9A0) & 1) == 0)
  {
    v4 = a1;
    v3 = sub_1001CC7B0();
    [v4 setView:v3];

    *(a1 + v1) = 1;
  }
}

void sub_1001CDFA8(uint64_t a1)
{
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  v3 = (static UIDevice.isIPad()() & 1) == 0;
  v4 = &unk_100465788;
  if (v3)
  {
    v4 = &unk_1004657C8;
  }

  v5 = *v4;
  v6 = &unk_1004657D8;
  if (!v3)
  {
    v6 = &unk_100465798;
  }

  v7 = v5 & ~(v5 >> 63);
  while (v5)
  {
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = *v6++;
    --v7;
    --v5;
    if (v8 == a1)
    {

      v9 = *(**(v1 + qword_1004AF9C0) + 400);

      v10 = v9(v18);
      *v11 = a1;
      v10(v18, 0);
LABEL_11:

      return;
    }
  }

  if (!a1)
  {
    v12 = qword_1004AF9C0;
    v13 = *(**(v1 + qword_1004AF9C0) + 144);

    v13(v18, v14);

    if (!v18[0])
    {
      v15 = *(**(v1 + v12) + 400);

      v16 = v15(v18);
      *v17 = 1;
      v16(v18, 0);
      goto LABEL_11;
    }
  }
}

void sub_1001CE188(void *a1)
{
  v2 = objc_opt_self();
  v5 = a1;
  v3 = [v2 currentDevice];
  v4 = [v3 orientation];

  sub_1001CDFA8(v4);
}

double sub_1001CE218()
{

  return result;
}

id sub_1001CE3D8()
{
  ObjectType = swift_getObjectType();
  [objc_opt_self() jasperAvailable];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001CE434(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  v4 = a1;
  [v3 jasperAvailable];
  v6.receiver = v4;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_1001CE4A8(uint64_t a1)
{

  return result;
}

void sub_1001CE674(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  [objc_opt_self() jasperAvailable];
}

void sub_1001CE6EC()
{
  v1 = v0;
  v240.receiver = v0;
  v240.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v240, "viewDidLoad");
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v2 = sub_1001CC7B0();
  sub_1001CB3C4(v2);

  KeyPath = swift_getKeyPath();
  v4 = [objc_opt_self() sharedApplication];
  sub_1001CD86C(KeyPath, v4);

  v230 = objc_opt_self();
  v5 = [v230 defaultCenter];
  [v5 addObserver:v1 selector:"updateForCurrentOrientation" name:UIDeviceOrientationDidChangeNotification object:0];

  v6 = qword_1004AF908;
  v7 = qword_1004A0180;
  v8 = *&v1[qword_1004AF908];
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1001D2D58(qword_1004D4AE0);
  v10 = [objc_opt_self() mainScreen];
  [v10 _referenceBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  Width = v17;

  if (!v9)
  {
    v241.origin.x = v12;
    v241.origin.y = v14;
    v241.size.width = v16;
    v241.size.height = Width;
    Height = CGRectGetHeight(v241);
    v242.origin.x = v12;
    v242.origin.y = v14;
    v242.size.width = v16;
    v242.size.height = Width;
    Width = CGRectGetWidth(v242);
    v12 = 0.0;
    v14 = 0.0;
    v16 = Height;
  }

  [v8 setFrame:{v12, v14, v16, Width}];

  [*&v1[v6] setAutoenablesDefaultLighting:0];
  [*&v1[v6] setAntialiasingMode:2];
  sub_100018630(0, &qword_1004A1930, UIDevice_ptr);
  if (static UIDevice.shouldLockFramerate()())
  {
    [*&v1[v6] setPreferredFramesPerSecond:30];
  }

  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_79;
  }

  v21 = v20;
  v22 = *&v1[v6];
  type metadata accessor for DebugVisualizer();
  swift_allocObject();
  sub_10006EEEC(v21, v22);
  qword_1004D4AC8 = v23;

  [*&v1[v6] center];
  SIMD2<>.init(_:)();
  v25 = v24;
  v26 = *(**&v1[qword_1004AF9B0] + 200);

  v28 = v26(v27);

  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  *(v29 + 24) = 1106247680;
  (*(*v28 + 280))(sub_1001D2D78, v29);

  type metadata accessor for ShaderCache();
  v30 = *&v1[v6];
  sub_100187CB8(v30);

  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  v32 = type metadata accessor for ActionView();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC7Measure10ActionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v34 = &v33[OBJC_IVAR____TtC7Measure10ActionView_shouldPreventManipulatingPoint];
  *v34 = sub_1001D2D8C;
  v34[1] = v31;
  v239.receiver = v33;
  v239.super_class = v32;
  v35 = v1;

  v36 = objc_msgSendSuper2(&v239, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v36 setAutoresizingMask:18];

  v37 = qword_1004AF9A8;
  v38 = *&v35[qword_1004AF9A8];
  *&v35[qword_1004AF9A8] = v36;
  v39 = v36;

  [*&v1[v6] bounds];
  [v39 setFrame:?];

  v40 = [v35 view];
  if (!v40)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (!*&v35[v37])
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v41 = v40;
  [v40 addSubview:?];

  v42 = qword_1004D4B10;
  qword_1004D4B10 = *&v35[v37];
  v43 = qword_1004D4B10;

  v44 = static UIDevice.isIPhone()();
  v45 = *&v35[v37];
  if (v44)
  {
    if (!v45)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    [v45 bounds];
    v48 = *&v35[v37];
    if (!v48)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v49 = v46;
    v50 = v47;
    [v48 bounds];
    v51 = CGRectGetWidth(v243);
    v52 = *&v35[v37];
    if (!v52)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v53 = v51;
    [v52 bounds];
    v54 = CGRectGetHeight(v244);
    v55 = [v35 tabBarController];
    if (!v55)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v56 = v55;
    v57 = [v55 tabBar];

    [v57 frame];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v245.origin.x = v59;
    v245.origin.y = v61;
    v245.size.width = v63;
    v245.size.height = v65;
    v66 = CGRectGetHeight(v245);
    v67 = *&v35[v37];
    if (!v67)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v68 = v54 - v66;
    [v67 layoutMargins];
    v70 = v68 - v69;
  }

  else
  {
    if (!v45)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    [v45 bounds];
    v49 = v71;
    v50 = v72;
    v53 = v73;
    v70 = v74;
  }

  v75 = *&v35[v37];
  if (!v75)
  {
    goto LABEL_81;
  }

  v76 = v37;
  v77 = *&v1[v6];
  v78 = objc_allocWithZone(type metadata accessor for LabelView());
  v79 = v35;
  v80 = sub_1000C4D40(v75, v77, v53, v70);
  v81 = *&v80[OBJC_IVAR____TtC7Measure9LabelView_activityPresentingViewController];
  *&v80[OBJC_IVAR____TtC7Measure9LabelView_activityPresentingViewController] = v79;

  v82 = *&v79[qword_1004AF968];
  v234 = qword_1004AF968;
  *&v79[qword_1004AF968] = v80;

  v83 = *&v35[v76];
  if (!v83)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v84 = v76;
  [v83 frame];
  v85 = [*&v1[v6] scene];
  v86 = objc_allocWithZone(type metadata accessor for LineView());
  v87 = sub_1000DB574(v85);
  v88 = *&v79[qword_1004AF970];
  v231 = qword_1004AF970;
  *&v79[qword_1004AF970] = v87;

  v89 = *&v35[v76];
  if (!v89)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v89 frame];
  v94 = [objc_allocWithZone(type metadata accessor for ReticleView(0)) initWithFrame:{v90, v91, v92, v93}];
  v95 = qword_1004AF960;
  v96 = *&v79[qword_1004AF960];
  *&v79[qword_1004AF960] = v94;

  v232 = objc_opt_self();
  v97 = [v232 jasperAvailable];
  v98 = static UIDevice.isIPad()();
  v237 = v6;
  v235 = v95;
  if (v97)
  {
    if (v98)
    {
      v99 = [objc_allocWithZone(type metadata accessor for EditViewSpatial(0)) initWithFrame:{v49, v50, v53, v70}];
      v100 = *&v79[qword_1004AF978];
      *&v79[qword_1004AF978] = v99;
      v101 = v99;

      v102 = *&v79[v234];
      if (v102)
      {
        aBlock[0] = *&v101[qword_1004A89A0];
        v103 = v102;
        sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
        sub_10001D47C(&qword_1004AFC38, &unk_1004AFBD0, &unk_1003E3320, &protocol conformance descriptor for PassthroughSubject<A, B>);
        *&v103[OBJC_IVAR____TtC7Measure9LabelView_historyPressedPublisher] = Publisher.eraseToAnyPublisher()();
      }

      [*&v1[v6] bounds];
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;
      aBlock[0] = *&v101[qword_1004A89A0];
      sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
      sub_10001D47C(&qword_1004AFC38, &unk_1004AFBD0, &unk_1003E3320, &protocol conformance descriptor for PassthroughSubject<A, B>);
      v112 = Publisher.eraseToAnyPublisher()();
      v113 = objc_allocWithZone(type metadata accessor for HistoryViewCoordinator(0));
      v114 = v79;
      v115 = sub_10014B4D0(v114, v112, 0, v105, v107, v109, v111);

      v116 = *&v114[qword_1004AF910];
      *&v114[qword_1004AF910] = v115;
    }

    else
    {
      v118 = [objc_allocWithZone(type metadata accessor for EditViewCompactSpatial(0)) initWithFrame:{v49, v50, v53, v70}];
      v119 = *&v79[qword_1004AF978];
      *&v79[qword_1004AF978] = v118;
      v120 = v118;

      v121 = *&v79[v234];
      if (v121)
      {
        aBlock[0] = *&v120[qword_1004AD990];
        v122 = v121;
        sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
        sub_10001D47C(&qword_1004AFC38, &unk_1004AFBD0, &unk_1003E3320, &protocol conformance descriptor for PassthroughSubject<A, B>);
        *&v122[OBJC_IVAR____TtC7Measure9LabelView_historyPressedPublisher] = Publisher.eraseToAnyPublisher()();
      }

      [*&v1[v6] bounds];
      v124 = v123;
      v126 = v125;
      v128 = v127;
      v130 = v129;
      aBlock[0] = *&v120[qword_1004AD990];
      sub_10000F974(&unk_1004AFBD0, &unk_1003E3320);
      sub_10001D47C(&qword_1004AFC38, &unk_1004AFBD0, &unk_1003E3320, &protocol conformance descriptor for PassthroughSubject<A, B>);
      v131 = Publisher.eraseToAnyPublisher()();
      objc_allocWithZone(type metadata accessor for HistoryViewCoordinator(0));
      v132 = v79;
      v133 = sub_10014B4D0(v132, v131, 0, v124, v126, v128, v130);
      v134 = *&v132[qword_1004AF910];
      *&v132[qword_1004AF910] = v133;

      v135 = [v132 navigationItem];
      v136 = *&v120[qword_1004A4F48];
      if (v136)
      {
        v137 = *(v136 + OBJC_IVAR____TtC7Measure21HistoryButtonSolarium_buttoniPhone);
      }

      else
      {
        v137 = 0;
      }

      [v135 setLeftBarButtonItem:v137];

      v148 = [v132 navigationItem];
      v149 = *&v120[qword_1004A4F40];

      if (v149)
      {
        v116 = *(v149 + 32);
      }

      else
      {
        v116 = 0;
      }

      [v148 setRightBarButtonItem:v116];
    }
  }

  else if (v98)
  {
    v117 = [objc_allocWithZone(type metadata accessor for EditViewRegular(0)) initWithFrame:{v49, v50, v53, v70}];
    v116 = *&v79[qword_1004AF978];
    *&v79[qword_1004AF978] = v117;
  }

  else
  {
    v138 = [objc_allocWithZone(type metadata accessor for EditViewCompact(0)) initWithFrame:{v49, v50, v53, v70}];
    v139 = qword_1004AF978;
    v140 = *&v79[qword_1004AF978];
    *&v79[qword_1004AF978] = v138;

    v141 = [v79 navigationItem];
    v142 = *&v79[v139];
    if (v142 && (v143 = *(v142 + qword_1004A4F40)) != 0)
    {
      v144 = *(v143 + 32);
    }

    else
    {
      v144 = 0;
    }

    [v141 setRightBarButtonItem:v144];

    v145 = [v79 navigationItem];
    v146 = *&v79[v139];
    if (v146)
    {
      v147 = *(v146 + qword_1004A4F38);
      if (v147)
      {
        v116 = *(v147 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoBarButtonItem);
      }

      else
      {
        v116 = 0;
      }
    }

    else
    {
      v116 = 0;
    }

    [v145 setLeftBarButtonItem:v116];
  }

  v150 = [*&v1[v6] session];
  v151 = objc_allocWithZone(type metadata accessor for CoachingView(0));
  sub_1000412F4(v150, v49, v50, v53, v70);
  v152 = *&v79[qword_1004AF980];
  v233 = qword_1004AF980;
  *&v79[qword_1004AF980] = v153;
  v154 = v153;

  v155 = [objc_opt_self() standardUserDefaults];
  Defaults.disableAllCoaching.unsafeMutableAddressor();

  v156 = String._bridgeToObjectiveC()();

  v157 = [v155 BOOLForKey:v156];

  [v154 setHidden:v157];
  v158 = qword_1004AF978;
  v159 = qword_1004D4B18;
  qword_1004D4B18 = *&v79[qword_1004AF978];
  v160 = qword_1004D4B18;

  [*&v1[v6] frame];
  v165 = [objc_allocWithZone(type metadata accessor for PrivacyView()) initWithFrame:{v161, v162, v163, v164}];
  v166 = qword_1004AF988;
  v167 = *&v79[qword_1004AF988];
  *&v79[qword_1004AF988] = v165;

  v168 = *&v35[v84];
  if (!v168)
  {
    goto LABEL_84;
  }

  if (!*&v79[v235])
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  [v168 addSubview:?];
  v169 = *&v35[v84];
  if (!v169)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (!*&v79[v158])
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v169 addSubview:?];
  v170 = *&v35[v84];
  if (!v170)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (!*&v79[v233])
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v170 addSubview:?];
  v171 = qword_1004D4AD8;
  if (!qword_1004D4AD8)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v172 = *&v79[v235];
  if (!v172)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v229 = v158;
  v227 = v166;
  type metadata accessor for ReticleController(0);
  swift_allocObject();
  v173 = v172;
  v236 = v171;

  v174 = sub_1001776A4(v173);
  v175 = qword_1004AF920;
  *&v79[qword_1004AF920] = v174;

  v226 = v84;
  v176 = *&v35[v84];
  if (!v176)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v228 = v175;
  v177 = *&v1[v6];
  type metadata accessor for ActionController(0);
  swift_allocObject();
  v178 = v79;
  v179 = v176;
  v180 = sub_10001AF38(v177, v179, v178);

  *&v178[qword_1004AF928] = v180;

  v181 = *&v79[v231];
  if (!v181)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  type metadata accessor for LineController(0);
  swift_allocObject();
  v182 = sub_1000CEB64(v181);
  v183 = qword_1004AF930;
  *&v178[qword_1004AF930] = v182;
  swift_retain_n();

  sub_1001D27A4(v182, v171, &off_10046CE40);

  qword_1004D4B00 = *&v178[v183];

  v184 = *&v79[v234];
  if (!v184)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  type metadata accessor for LabelController(0);
  swift_allocObject();
  v185 = v178;
  v186 = v184;
  v187 = sub_100091A48(v186, v185);

  v188 = qword_1004AF938;
  *&v185[qword_1004AF938] = v187;
  swift_retain_n();

  sub_1001D27A4(v187, v171, &off_10046B990);

  qword_1004D4AF8 = *&v185[v188];

  v189 = *&v1[v6];
  sub_10000F974(&qword_1004AFC30, &qword_1003E34D8);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1003D5730;
  v191 = *&v79[v234];
  if (!v191)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v192 = v190;
  *(v190 + 32) = v191;
  *(v190 + 40) = &off_10046C980;
  v193 = *&v79[v231];
  if (!v193)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  *(v190 + 48) = v193;
  *(v190 + 56) = &off_10046D0D0;
  type metadata accessor for CaptureController(0);
  swift_allocObject();
  v194 = v189;
  v195 = v191;
  v196 = v193;
  v197 = sub_100038744(v194, v192);

  v198 = qword_1004AF940;
  *&v185[qword_1004AF940] = v197;

  if ([v232 jasperAvailable])
  {
    if (!*&v185[v198])
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (!*&v79[v234])
    {
LABEL_112:
      __break(1u);
      return;
    }

    swift_unknownObjectUnownedAssign();
  }

  v199 = *&v79[v229];
  if (!v199)
  {
    goto LABEL_97;
  }

  v200 = *&v185[v198];
  if (!v200)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  type metadata accessor for EditController(0);
  swift_allocObject();

  v201 = v199;
  v202 = sub_100085C0C(v201, v200);

  v203 = qword_1004AF948;
  *&v185[qword_1004AF948] = v202;

  v204 = *&v79[v233];
  if (!v204)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v205 = *&v1[v237];
  type metadata accessor for CoachingController(0);
  swift_allocObject();
  v206 = v204;
  v207 = v205;
  sub_10003FE28(v207, v206);
  v209 = v208;

  v210 = *&v79[v233];
  if (!v210)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v211 = v210;
  sub_1001D2880(v211, v209, &off_100468F08);

  if (!*&v79[v228])
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  sub_1001D2880(v212, v209, &off_1004707E8);

  if (!*&v185[v203])
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  sub_1001D2880(v213, v209, &off_10046AE58);

  sub_1001D27A4(v214, v236, &off_100468CF8);
  *&v185[qword_1004AF950] = v209;

  v215 = *&v79[v227];
  if (!v215)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v216 = *&v35[v226];
  if (!v216)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  type metadata accessor for PrivacyController(0);
  swift_allocObject();
  v217 = v216;
  v218 = v215;
  v219 = sub_100139644(v218);

  *&v185[qword_1004AF958] = v219;

  v220 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v185 action:"onTapOnSceneViewFrom:"];
  [v220 setDelegate:v185];
  [*&v1[v237] addGestureRecognizer:v220];
  if ([v232 internalInstall])
  {
    sub_1001CFEAC();
  }

  v221 = [v230 defaultCenter];
  v222 = swift_allocObject();
  *(v222 + 16) = v185;
  aBlock[4] = sub_1001D2DB4;
  aBlock[5] = v222;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DB768;
  aBlock[3] = &unk_1004731B8;
  v223 = _Block_copy(aBlock);
  v224 = v185;

  v225 = [v221 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:0 usingBlock:v223];
  _Block_release(v223);

  swift_unknownObjectRelease();
}

uint64_t sub_1001CFD14(double a1, double a2)
{
  v4 = sub_1001CC7B0();
  v5 = [v4 overlaySKScene];

  if (v5)
  {
    [v5 convertPointFromView:{a1, a2}];
    v6 = [v5 nodesAtPoint:?];
    sub_100018630(0, &unk_1004AFC20, SKNode_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        type metadata accessor for TouchableSpriteNode();
        if (swift_dynamicCastClass())
        {

          return 1;
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

void sub_1001CFEAC()
{
  v1 = v0;
  if (qword_1004A0860 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5440;
  v40 = qword_1004D5440;
  v3 = qword_1004A0868;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1000551F8(xmmword_1004D5450, *(&xmmword_1004D5450 + 1), qword_1004D5460, v2);
  if (v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100054F10(v4);

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v6 = v40;
  v7 = type metadata accessor for DefaultsViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC7Measure22DefaultsViewController_cancellables] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR____TtC7Measure22DefaultsViewController_groups] = v6;
  v39.receiver = v8;
  v39.super_class = v7;

  v9 = objc_msgSendSuper2(&v39, "initWithStyle:", 2);
  v10 = String._bridgeToObjectiveC()();
  [v9 setTitle:v10];

  v11 = xmmword_1004D4AB8;
  *&xmmword_1004D4AB8 = v9;

  v12 = [objc_allocWithZone(UIView) init];
  v13 = [v1 view];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  Width = CGRectGetWidth(v41);
  if (qword_1004A0520 != -1)
  {
    v38 = Width;
    swift_once();
    Width = v38;
  }

  [v12 setFrame:{0.0, 0.0, Width - (*&qword_1004D5090 + *&qword_1004D5090) + -160.0, 44.0}];
  v24 = [v1 view];
  if (!v24)
  {
    goto LABEL_16;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v42.origin.x = v27;
  v42.origin.y = v29;
  v42.size.width = v31;
  v42.size.height = v33;
  v34 = CGRectGetWidth(v42) * 0.5;
  [v12 bounds];
  [v12 setCenter:{v34, CGRectGetHeight(v43) * 0.5}];
  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;

    [v36 addSubview:v12];

    v37 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"showDebugController"];
    [v37 setNumberOfTouchesRequired:2];
    [v12 addGestureRecognizer:v37];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1001D0290(uint64_t a1, uint64_t a2)
{
  v2 = qword_1004AF910;
  v3 = *(a2 + qword_1004AF910);
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = v3;
    if ([v5 jasperAvailable])
    {
      [*&v6[qword_1004AB508] removeFromSuperview];
    }

    v7 = sub_10014B260();
    [v6 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for HistoryViewCoordinator(0);
    if (swift_dynamicCast())
    {
      v8 = qword_1004D4F40;
      v12[qword_1004D4F40] = 1;
      v9 = *(a2 + v2);
      *(a2 + v2) = v12;
      v10 = v12;

      if (![v5 jasperAvailable])
      {
LABEL_8:
        sub_100151500(v7);

        v12[v8] = 0;

        return;
      }

      v11 = *(a2 + qword_1004AF9A8);
      if (v11)
      {
        [v11 addSubview:*&v10[qword_1004AB508]];
        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1001D0424(void *a1)
{
  v1 = a1;
  sub_1001CE6EC();
}

double sub_1001D046C(char a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  v3 = sub_1001CC7B0();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 lockRendererOrientation];
  }

  v5 = qword_1004AF908;
  [*&v1[qword_1004AF908] setNeedsLayout];
  [*&v1[v5] layoutIfNeeded];
  v6 = *(**&v1[qword_1004AF9B8] + 400);

  v7 = v6(v10);
  *(v8 + 2) = 1;
  v7(v10, 0);

  return result;
}

void sub_1001D0594(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001D046C(a3);
}

void sub_1001D05E8(void *a1, uint64_t a2, uint64_t a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a3);
  v5 = *(**&v4[qword_1004AF9B8] + 400);

  v6 = v5(v8);
  *(v7 + 2) = 0;
  v6(v8, 0);
}

id sub_1001D06C8(uint64_t a1)
{
  result = *(a1 + qword_1004AF988);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

id sub_1001D06E8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "didReceiveMemoryWarning");
}

void sub_1001D0728(char *a1, char a2, double a3)
{
  v6 = *&a1[qword_1004AF960];
  if (v6)
  {
    [v6 setAlpha:a3];
  }

  v7 = *&a1[qword_1004AF978];
  if (v7)
  {
    [v7 setAlpha:a3];
  }

  if (![objc_opt_self() jasperAvailable])
  {
    goto LABEL_17;
  }

  v8 = [a1 view];
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = sub_1001CD37C();

  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_9:
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v13 = *(v10 + 8 * i + 32);
          }

          v14 = v13;
          [v13 setAlpha:a3];
        }

        goto LABEL_16;
      }

      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }
  }

LABEL_16:

LABEL_17:
  if (a2)
  {
    v15 = *&a1[qword_1004AF980];
    if (v15)
    {

      [v15 setAlpha:a3];
    }
  }
}

void sub_1001D08D0(void *a1)
{
  v3 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1001CC7B0();
  [a1 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [*(v1 + qword_1004AF908) overlaySKScene];
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  [v11 convertPointFromView:{*&v8, *&v10}];
  v13 = [v12 nodesAtPoint:?];
  sub_100018630(0, &unk_1004AFC20, SKNode_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v5;
  v34 = v3;
  v31 = v12;
  v32 = v1;
  if (v14 >> 62)
  {
LABEL_22:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_23:

    v5 = v33;
    v1 = v32;
LABEL_24:
    v21 = *(**(v1 + qword_1004AF9B0) + 200);

    v23 = v21(v22);

    v24 = swift_allocObject();
    *(v24 + 16) = v8;
    *(v24 + 24) = v10;
    (*(*v23 + 416))(sub_1001D2CD4, v24);

    goto LABEL_25;
  }

LABEL_4:
  v16 = 0;
  v17 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    type metadata accessor for TouchableSpriteNode();
    if (!swift_dynamicCastClass())
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        __break(1u);
        goto LABEL_32;
      }

      v17 = sub_1000C19FC();
      swift_unknownObjectRelease();
      break;
    }

    if (v20 == v15)
    {
      goto LABEL_23;
    }

    v17 = 0;
LABEL_6:
    ++v16;
  }

  if (v20 != v15)
  {
    goto LABEL_6;
  }

  v5 = v33;
  v1 = v32;
  if ((v17 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v25 = qword_1004D4AD0;
  if (qword_1004D4AD0)
  {
    v26 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v25 + v26, v5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *v5;
      v28 = v25;
      v29 = sub_1000E0CE8();

      sub_100072394(0, v8, v10, 0);
    }

    else
    {
      sub_100085FD4(v5);
    }
  }

  else
  {
LABEL_32:
    __break(1u);
  }
}