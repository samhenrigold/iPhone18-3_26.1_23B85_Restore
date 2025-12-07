void sub_1001380FC()
{
  if (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled) == 1 && *(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isInputEnabled) == 1 && (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_isShowingAccessibilityHUD) & 1) == 0)
  {
    v1 = v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
    }

    v4 = OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState;
    if (*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editState) == 1)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = 0x3FF0000000000000;
      v7 = objc_allocWithZone(UIViewPropertyAnimator);
      v10[4] = sub_100138B3C;
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100041180;
      v10[3] = &unk_10046EB18;
      v8 = _Block_copy(v10);

      v9 = [v7 initWithDuration:v8 dampingRatio:0.5 animations:1.0];
      _Block_release(v8);

      [v9 setInterruptible:0];
      [v9 startAnimation];
    }

    *(v0 + v4) = 0;
  }
}

void sub_10013833C(float a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  v7[4] = sub_10013886C;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100041180;
  v7[3] = &unk_10046EAC8;
  v5 = _Block_copy(v7);

  v6 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:0.6];
  _Block_release(v5);

  [v6 setInterruptible:0];
  [v6 startAnimation];
}

void sub_1001384A0(uint64_t a1, CGFloat a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton);
    [v5 transform];
    tx = t1.tx;
    ty = t1.ty;
    v8 = atan2(t1.b, t1.a);
    CGAffineTransformMakeScale(&t1, a2, a2);
    v9 = t1.tx;
    v10 = t1.ty;
    v19 = *&t1.c;
    v21 = *&t1.a;
    CGAffineTransformMakeRotation(&t1, v8);
    v11 = *&t1.a;
    v12 = *&t1.c;
    v13 = *&t1.tx;
    *&t1.a = v21;
    *&t1.c = v19;
    t1.tx = v9;
    t1.ty = v10;
    *&t2.a = v11;
    *&t2.c = v12;
    *&t2.tx = v13;
    CGAffineTransformConcat(&v23, &t1, &t2);
    v14 = v23.tx;
    v15 = v23.ty;
    v20 = *&v23.c;
    v22 = *&v23.a;
    CGAffineTransformMakeTranslation(&t1, tx, ty);
    v16 = *&t1.a;
    v17 = *&t1.c;
    v18 = *&t1.tx;
    *&t1.a = v22;
    *&t1.c = v20;
    t1.tx = v14;
    t1.ty = v15;
    *&t2.a = v16;
    *&t2.c = v17;
    *&t2.tx = v18;
    CGAffineTransformConcat(&v23, &t1, &t2);
    t1 = v23;
    [v5 setTransform:&t1];
  }
}

void sub_10013860C(uint64_t a1, float a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton) setAlpha:a2];
  }
}

unint64_t sub_1001387A8()
{
  result = qword_1004AAB78;
  if (!qword_1004AAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB78);
  }

  return result;
}

uint64_t sub_1001387FC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100138834()
{

  return _swift_deallocObject(v0, 28, 7);
}

double sub_100138878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100138890()
{
  v1 = sub_10000F974(&qword_1004A2D60, &unk_1003DEA40);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  v9 = OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton;
  [*(v0 + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editButton) bounds];
  CGRect.center.getter();
  [*(v0 + v9) bounds];
  CGRect.init(centerPoint:size:)();
  v14 = [objc_opt_self() bezierPathWithOvalInRect:{v10, v11, v12, v13}];
  [v8 setVisiblePath:v14];

  sub_100040E00();
  *v7 = [objc_allocWithZone(UITargetedPreview) initWithView:*(v0 + v9) parameters:v8];
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v15 = type metadata accessor for UIPointerShape();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = UIPointerStyle.init(effect:shape:)();

  return v16;
}

uint64_t sub_100138B04()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100138B6C()
{
  v0 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5058;
  v3 = *(v0 + 272);
  swift_retain_n();
  v3(KeyPath, v2);

  v4 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  v5 = swift_getKeyPath();
  (*(v4 + 272))(v5, v2);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100138C9C()
{

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  return result;
}

double sub_100138D28()
{
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 88));
  if ((*(v0 + 72) & 1) == 0 && *(*(v0 + 64) + OBJC_IVAR____TtC7Measure11PrivacyView_blurred) == 1 && !*(v0 + 80))
  {
    *(v0 + 80) = 1;
  }

  os_unfair_lock_unlock((v0 + 88));
  swift_endAccess();
  return result;
}

double sub_100138DA4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 88));
  swift_endAccess();
  if ((*(v0 + 72) & 1) == 0 && *(*(v0 + 64) + OBJC_IVAR____TtC7Measure11PrivacyView_blurred) == 1)
  {
    v9 = *(v0 + 80);
    if (v9)
    {
      if (v9 == 1)
      {
        *(v0 + 80) = 2;
      }

      else
      {
        sub_10004D9B4();
        v10 = static OS_dispatch_queue.main.getter();
        aBlock[4] = sub_10013979C;
        aBlock[5] = v0;
        v15 = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100041180;
        aBlock[3] = &unk_10046EBE0;
        v11 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10003180C();
        sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
        sub_100031864();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v12 = v15;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v11);

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v8, v5);
      }
    }
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 88));
  swift_endAccess();
  return result;
}

double sub_1001390A0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v5 + 88));
  swift_endAccess();
  v17 = *(v5 + 96);
  v18 = *(v5 + 104);
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  sub_1000223C4(v17, v18);
  if ((a1 & 1) == 0)
  {
    if (*(*(v5 + 64) + OBJC_IVAR____TtC7Measure11PrivacyView_blurred))
    {
      if (a2)
      {
        sub_10004D9B4();

        v19 = static OS_dispatch_queue.main.getter();
        v29 = sub_1001397FC;
        v30 = v5;
        aBlock = _NSConcreteStackBlock;
        v26 = 1107296256;
        v20 = &unk_10046EC08;
        goto LABEL_7;
      }

      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (*(*(v5 + 64) + OBJC_IVAR____TtC7Measure11PrivacyView_blurred))
  {
    goto LABEL_9;
  }

  *(v5 + 72) = 1;
  sub_10004D9B4();

  v19 = static OS_dispatch_queue.main.getter();
  v29 = sub_1001397D4;
  v30 = v5;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v20 = &unk_10046EC30;
LABEL_7:
  v27 = sub_100041180;
  v28 = v20;
  v21 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v24 + 8))(v12, v10);
  (*(v14 + 8))(v16, v13);
LABEL_10:
  swift_beginAccess();
  os_unfair_lock_unlock((v5 + 88));
  swift_endAccess();
  return result;
}

double sub_10013943C()
{
  sub_1000223C4(*(v0 + 96), *(v0 + 104));

  return result;
}

uint64_t sub_10013947C(uint64_t a1)
{
  v1 = StateObserver.deinit();
  v2 = v1[8];

  sub_1000223C4(v1[12], v1[13]);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyController(uint64_t a1)
{
  result = qword_1004AABA8;
  if (!qword_1004AABA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001395C0(uint64_t a1, uint64_t a2)
{
  sub_100139808(a2);
  v3 = *(a1 + 96);
  if (v3)
  {
    v4 = *(a1 + 104);

    v3(v5);
    sub_1000223C4(v3, v4);
    v6 = *(a1 + 96);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 104);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;

  return sub_1000223C4(v6, v7);
}

uint64_t sub_100139644(void *a1)
{
  v2 = v1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  v4 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v4 + 272);
  swift_retain_n();
  v2[14] = v7(KeyPath, v6);
  v8 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  v9 = swift_getKeyPath();
  v2[15] = (*(v8 + 272))(v9, v6);
  v2[8] = a1;
  v10 = a1;
  return StateObserver.init(configuration:)();
}

double sub_1001397BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100139808(char a1)
{
  if (a1)
  {
    if (*(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurred))
    {
LABEL_15:
      *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurred) = a1 & 1;
      return;
    }

    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    v3._object = 0x8000000100408BC0;
    v3._countAndFlagsBits = 0xD000000000000014;
    Log.default(_:isPrivate:)(v3, 0);
    v4 = *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurEffectAnimation);
    if (v4)
    {
      [v4 stopAnimation:1];
    }

    v5 = *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView);
    if (v5)
    {
      [v5 setAlpha:1.0];
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (!*(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurred))
    {
      goto LABEL_15;
    }

    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    v6._countAndFlagsBits = 0xD000000000000015;
    v6._object = 0x8000000100408BA0;
    Log.default(_:isPrivate:)(v6, 0);
    v7 = *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = objc_allocWithZone(UIViewPropertyAnimator);
    v15[4] = sub_100139DA8;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100041180;
    v15[3] = &unk_10046EC80;
    v10 = _Block_copy(v15);
    v11 = v7;

    v12 = [v9 initWithDuration:v10 dampingRatio:0.3 animations:1.0];
    _Block_release(v10);
    v13 = *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurEffectAnimation);
    *(v1 + OBJC_IVAR____TtC7Measure11PrivacyView_blurEffectAnimation) = v12;
    v14 = v12;

    if (v14)
    {
      [v14 startAnimation];

      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100139A9C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC7Measure11PrivacyView_blurred] = 0;
  *&v4[OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC7Measure11PrivacyView_blurEffectAnimation] = 0;
  static CGSize.* infix(_:_:)();
  v9 = v8;
  v11 = v10;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, v8, v10);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 effectWithStyle:4];
  v16 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v15];
  v17 = OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView;
  v18 = *&v14[OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView];
  *&v14[OBJC_IVAR____TtC7Measure11PrivacyView_visualEffectView] = v16;
  v19 = v16;

  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v19 setFrame:{a1, a2, v9, v11}];

  v20 = *&v14[v17];
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v20 setAlpha:0.0];
  v21 = *&v14[v17];
  if (v21)
  {
    v22 = v14;
    [v22 addSubview:v21];
    [v22 setUserInteractionEnabled:0];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100139D70()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100139DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100139DD4(uint64_t a1)
{
  result = sub_10004D9B4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100139E5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100139FE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

id SCNSegmentationDebugger.segmentedTexture.getter()
{
  v1 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for SegmentationProcessor.SegmentedTexture());
    v6 = SurfaceTexture.init(width:height:backgroundColor:)();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10013A2C8()
{
  v1 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode;
  v2 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode];
  }

  else
  {
    v4 = [objc_allocWithZone(SCNNode) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = objc_opt_self();
    [v6 begin];
    [v0 addChildNode:v4];
    [v6 commit];
    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_10013A3B8()
{
  v1 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail;
  v2 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for SCNSegmentationDebugger.DebugPointTrail());

    v6 = v0;
    v7 = sub_10013AF48(v5);
    v8 = String._bridgeToObjectiveC()();
    [v7 setName:v8];

    v9 = objc_opt_self();
    [v9 begin];
    [v6 addChildNode:v7];
    [v9 commit];
    v10 = *&v6[v1];
    *&v6[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_10013A4C4()
{
  v1 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool;
  if (*&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool])
  {
    v2 = *&v0[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10013BF98;
    *(v4 + 24) = v3;
    sub_10000F974(&qword_1004A1400, &unk_1003D70D0);
    swift_allocObject();
    v5 = v0;
    v2 = ObjectPool.init(allocator:deallocator:synchronized:)();
    *&v0[v1] = v2;
  }

  return v2;
}

id SCNSegmentationDebugger.init(sceneView:processor:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture;
  *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture] = 0;
  v7 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode;
  *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode] = 0;
  v8 = OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail;
  *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointTrail] = 0;
  *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointPool] = 0;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger_sceneView] = v9;
    *&v3[OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger_processor] = a3;
    v26.receiver = v3;
    v26.super_class = type metadata accessor for SCNSegmentationDebugger();
    v11 = a1;

    v12 = objc_msgSendSuper2(&v26, "init");
    v13 = String._bridgeToObjectiveC()();
    [v12 setName:{v13, v26.receiver, v26.super_class}];

    v14 = objc_opt_self();
    [v14 begin];
    v15 = [v10 scene];
    v16 = [v15 rootNode];

    [v16 addChildNode:v12];
    v17 = [v14 commit];
    v18 = *(*a3 + 592);
    v19 = (v18)(v17);
    if ((*SegmentationProcessor.DebugOptions.showSegmentedBackground.unsafeMutableAddressor() & ~v19) == 0 || (v20 = v18(), (*SegmentationProcessor.DebugOptions.showNormalsBackground.unsafeMutableAddressor() & ~v20) == 0))
    {
      v21 = [v10 scene];
      v22 = [v21 background];

      v23 = SCNSegmentationDebugger.segmentedTexture.getter();
      v24 = (*((swift_isaMask & *v23) + 0x110))();

      [v22 setContents:v24];
      swift_unknownObjectRelease();
    }
  }

  else
  {

    type metadata accessor for SCNSegmentationDebugger();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

Swift::Void __swiftcall SCNSegmentationDebugger.clearPoints()()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  v3 = sub_10013A4C4();
  v4 = sub_10013A2C8();
  v5 = [v4 childNodes];

  sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*(*v3 + 216))(v6);

  v7 = *(v1 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___pointContainerNode);
  SCNNode.removeAllChildren()();

  [v2 commit];
}

void SCNSegmentationDebugger.addPoint(transform:normal:color:opacity:)(Swift::UInt32 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, double a7)
{
  v9 = objc_opt_self();
  [v9 begin];
  v10 = sub_10013A4C4();
  (*(*v10 + 200))(&v25);

  v11 = v25;
  [v25 setOpacity:a7];
  v12 = [v11 geometry];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v12 materials];

  sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);
LABEL_7:
    v17 = v16;

    v18 = [v17 diffuse];

    sub_100018630(0, &qword_1004A2930, UIColor_ptr);
    isa = UIColor.init(argb:)(a1).super.isa;
    [v18 setContents:isa];

LABEL_10:
    [v11 setSimdWorldTransform:{a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], *&a2, *&a3, *&a4, *&a5}];
    SCNNode.setForwardDirection(direction:)();
    v20 = sub_10013A2C8();
    [v20 addChildNode:v11];

    [v9 commit];
    return;
  }

  __break(1u);
}

void SCNSegmentationDebugger.updateTrail(headTransform:)(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = *(a1 + 32);
    *v5 = *(a1 + 48);
    v2 = *a1;
    v3 = *(a1 + 16);
    v1 = sub_10013A3B8();
    PointTrail.setHeadPosition(_:)(v2, v3, v4, *v5);
  }

  v6 = sub_10013A3B8();
  SCNSegmentationDebugger.DebugPointTrail.updateLabels()();
}

char *sub_10013AF48(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCC7Measure23SCNSegmentationDebugger15DebugPointTrail_processor] = a1;
  *&v1[OBJC_IVAR____TtC7Measure10PointTrail_pointNodes] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Measure10PointTrail_minDistance] = 0;
  *&v1[OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate] = 0;
  v1[OBJC_IVAR____TtC7Measure10PointTrail_isStarted] = 0;
  *&v1[OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared] = 0;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for PointTrail();

  v2 = objc_msgSendSuper2(&v24, "init");
  v23 = objc_opt_self();
  v21 = objc_opt_self();
  v22 = objc_opt_self();
  v3 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  v4 = 30;
  v20 = v2;
  do
  {
    v5 = [v23 boxWithWidth:0.0003 height:0.0003 length:0.03 chamferRadius:0.0];
    v6 = [v21 nodeWithGeometry:v5];

    v7 = String._bridgeToObjectiveC()();
    [v6 setName:v7];

    v8 = [v22 planeWithWidth:0.01 height:0.01];
    v9 = [v21 nodeWithGeometry:v8];

    v10 = String._bridgeToObjectiveC()();
    [v9 setName:v10];

    [v9 addChildNode:v6];
    [v9 setOpacity:0.5];

    [v9 setHidden:1];
    swift_beginAccess();
    v11 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    [v20 addChildNode:v11];

    --v4;
  }

  while (v4);

  v12 = OBJC_IVAR____TtC7Measure10PointTrail_minDistance;
  swift_beginAccess();
  *&v20[v12] = 1008981770;
  *&v20[OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared] = 953267991;
  v13 = OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate;
  swift_beginAccess();
  *&v20[v13] = 981668463;
  v14 = *&v20[OBJC_IVAR____TtC7Measure10PointTrail_pointNodes];
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v19 = v20;

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_10;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
    v17 = v20;
    v18 = v16;
LABEL_10:
    [v18 setOpacity:1.0];

    return v20;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SCNSegmentationDebugger.DebugPointTrail.updateLabels()()
{
  v1 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_34:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtCC7Measure23SCNSegmentationDebugger15DebugPointTrail_processor);
  v5 = *(*v4 + 119);
  v29 = v2 & 0xC000000000000001;
  v28 = v2 & 0xFFFFFFFFFFFFFF8;

  v7 = 0;
  v27 = v2;
  while (1)
  {
    v30 = v6;
    if (v29)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v28 + 16))
      {
        goto LABEL_33;
      }

      v9 = *(v2 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v12 = [v9 geometry];
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v14 = [v12 materials];

    sub_100018630(0, &qword_1004AF720, SCNMaterial_ptr);
    v0 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v0 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_20:

LABEL_21:
        v16 = 0;
        goto LABEL_22;
      }
    }

    else if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v15 = *(v0 + 32);
    }

    v16 = v15;

LABEL_22:
    v17 = COERCE_DOUBLE(v5([v10 simdWorldPosition]));
    if (v19)
    {
      break;
    }

    v20 = v17;
    v21 = v18;
    v22 = (*(*v4 + 122))(0, v17, v18);
    if (!v22 || v22 == 33)
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_37;
    }

    v23 = [v16 diffuse];
    sub_100018630(0, &qword_1004A2930, UIColor_ptr);
    v24 = SegmentationResult.Label.debugColor.getter();
    isa = UIColor.init(argb:)(v24).super.isa;
    [v23 setContents:isa];

    v0 = v4;
    (*(*v4 + 126))(v20, v21);
    v2 = v27;
    if ((v26 & 1) == 0)
    {
      v0 = v10;
      SCNNode.setForwardDirection(direction:)();
    }

LABEL_6:

    ++v7;
    v6 = v30;
    if (v11 == v3)
    {

      return;
    }
  }

  if (v16)
  {
    v0 = [v16 diffuse];
    v8 = [objc_opt_self() blackColor];
    [v0 setContents:v8];

    goto LABEL_6;
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

id sub_10013B85C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10013B944@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(type metadata accessor for SCNSegmentationDebugger());
  result = SCNSegmentationDebugger.init(sceneView:processor:)(a1, v6, a2);
  *a3 = result;
  return result;
}

void sub_10013B9DC(__n128 *a1)
{
  if ((a1[4].n128_u8[0] & 1) == 0)
  {
    v5 = a1[3];
    v3 = a1[1];
    v4 = a1[2];
    v2 = *a1;
    v1 = sub_10013A3B8();
    PointTrail.setHeadPosition(_:)(v2, v3, v4, v5);
  }

  v6 = sub_10013A3B8();
  SCNSegmentationDebugger.DebugPointTrail.updateLabels()();
}

void (*sub_10013BA68(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10013C038;
  }

  __break(1u);
  return result;
}

void (*sub_10013BAE8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10013BB68;
  }

  __break(1u);
  return result;
}

id sub_10013BB70()
{
  v0 = [objc_opt_self() boxWithWidth:0.0003 height:0.0003 length:0.015 chamferRadius:0.0];
  v1 = objc_opt_self();
  v2 = [v1 nodeWithGeometry:v0];

  v3 = String._bridgeToObjectiveC()();
  [v2 setName:v3];

  [v2 position];
  [v2 setPosition:?];
  v4 = [objc_opt_self() planeWithWidth:0.005 height:0.005];
  v5 = [v1 nodeWithGeometry:v4];

  v6 = String._bridgeToObjectiveC()();
  [v5 setName:v6];

  [v5 addChildNode:v2];
  return v5;
}

void _s7Measure23SCNSegmentationDebuggerC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeye6ChangeG0aypGSgSvSgtF_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = SegmentationProcessor.DebugOptions.keyForFeature.unsafeMutableAddressor();
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_100198230(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_100018630(0, &unk_1004A7540, NSUserDefaults_ptr);
        v11 = *(v3 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger_processor);
        v17 = v10;
        v12 = (*(*v11 + 608))(v16);
        sub_10013BFD4();
        v13 = static NSUserDefaults.update<A>(_:key:feature:)();
        v12(v16, 0);
        if (*SegmentationProcessor.DebugOptions.showSampledPoints.unsafeMutableAddressor() == v10)
        {
          v14 = sub_10013A2C8();
        }

        else
        {
          if (*SegmentationProcessor.DebugOptions.showUnprojectedTrail.unsafeMutableAddressor() != v10)
          {
            return;
          }

          v14 = sub_10013A3B8();
        }

        v15 = v14;
        [v14 setHidden:(v13 & 1) == 0];
      }

      else
      {
      }
    }
  }
}

id sub_10013BEE4@<X0>(void *a1@<X8>)
{
  result = SCNSegmentationDebugger.segmentedTexture.getter();
  *a1 = result;
  return result;
}

void sub_10013BF10(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture);
  *(*a2 + OBJC_IVAR____TtC7Measure23SCNSegmentationDebugger____lazy_storage___segmentedTexture) = *a1;
  v3 = v2;
}

uint64_t sub_10013BF60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013BF9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10013BFD4()
{
  result = qword_1004AAE28;
  if (!qword_1004AAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE28);
  }

  return result;
}

id sub_10013C03C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(qword_1004AB020, &qword_1003E2BB0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);

  *(v4 + 40) = v11(KeyPath, v10);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 56) = a2;
  *(v4 + 120) = a1;
  *(v4 + 128) = a3;
  v12 = a2;
  v13 = a1;
  result = [swift_unknownObjectRetain() newDefaultLibrary];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = sub_10013C908(v13, result);
  result = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 48) = v15;
  v16 = MetalNode.init()();
  v17 = direct field offset for OverlayMetalView.scene;
  result = swift_beginAccess();
  v18 = *&v13[v17];
  if (v18)
  {
    swift_beginAccess();
    v19 = *(**(v18 + 16) + 248);

    v19(v16, 0, 1);

    swift_unknownObjectRelease();

    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10013C248(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 120);
  v5 = direct field offset for OverlayMetalView.scene;
  swift_beginAccess();
  if (!*(v4 + v5))
  {
    return;
  }

  v6 = MetalScene.makeDefaultRenderPassDescriptor()();

  if (!v6)
  {
    return;
  }

  v7 = [a1 renderCommandEncoderWithDescriptor:v6];
  if (!v7)
  {

    return;
  }

  v8 = v7;
  v9 = *(**(v2 + 40) + 144);

  v9(__src, v10);

  memcpy(__dst, __src, sizeof(__dst));
  sub_10006BE28(__dst);
  if ((__dst[432] & 1) == 0)
  {
    v13 = *&__dst[424];
    v14 = *&__dst[416];
    v15 = *&__dst[408];
    v16 = *&__dst[400];
    MinX = CGRectGetMinX(*&__dst[400]);
    v46.origin.x = v16;
    v46.origin.y = v15;
    v46.size.width = v14;
    v46.size.height = v13;
    MinY = CGRectGetMinY(v46);
    v47.origin.x = v16;
    v47.origin.y = v15;
    v47.size.width = v14;
    v47.size.height = v13;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = v16;
    v48.origin.y = v15;
    v48.size.width = v14;
    v48.size.height = v13;
    MaxY = CGRectGetMaxY(v48);
    v18.f64[0] = MaxX;
    v18.f64[1] = MaxY;
    v19.f64[0] = MinX;
    v19.f64[1] = MinY;
    v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v18);
    swift_beginAccess();
    *(v2 + 80) = 257;
LABEL_10:
    *(v2 + 64) = v38;
    goto LABEL_11;
  }

  v11 = *(**(v2 + 40) + 144);

  v11(v43, v12);

  memcpy(__src, v43, 0x213uLL);
  sub_10006BE28(__src);
  if ((__src[49] & 1) == 0)
  {
    v20 = *&__src[48];
    v21 = *&__src[47];
    v22 = *&__src[46];
    v23 = *&__src[45];
    v39 = CGRectGetMinX(*&__src[45]);
    v49.origin.x = v23;
    v49.origin.y = v22;
    v49.size.width = v21;
    v49.size.height = v20;
    v36 = CGRectGetMinY(v49);
    v50.origin.x = v23;
    v50.origin.y = v22;
    v50.size.width = v21;
    v50.size.height = v20;
    v34 = CGRectGetMaxX(v50);
    v51.origin.x = v23;
    v51.origin.y = v22;
    v51.size.width = v21;
    v51.size.height = v20;
    v24 = CGRectGetMaxY(v51);
    v25.f64[0] = v34;
    v25.f64[1] = v24;
    v26.f64[0] = v39;
    v26.f64[1] = v36;
    v38 = vcvt_hight_f32_f64(vcvt_f32_f64(v26), v25);
    swift_beginAccess();
    *(v2 + 80) = 1;
    goto LABEL_10;
  }

  swift_beginAccess();
  *(v2 + 80) = 0;
LABEL_11:
  v27 = *(**(v2 + 40) + 144);

  v27(v43, v28);

  memcpy(__src, v43, 0x213uLL);
  sub_10006BE28(__src);
  if (__src[9])
  {
    swift_beginAccess();
    v29 = 0;
  }

  else
  {
    v40 = *&__src[7];
    v29 = 1;
    swift_beginAccess();
    *(v2 + 88) = vcvt_f32_f64(v40);
  }

  *(v2 + 96) = v29;
  v30 = *(**(v2 + 40) + 144);

  v30(v42, v31);

  memcpy(v43, v42, 0x213uLL);
  sub_10006BE28(v43);
  if (v43[15])
  {
    swift_beginAccess();
    v32 = 0;
  }

  else
  {
    v41 = *&v43[13];
    v32 = 1;
    swift_beginAccess();
    *(v2 + 104) = vcvt_f32_f64(v41);
  }

  *(v2 + 112) = v32;
  swift_beginAccess();
  [v8 setFragmentBytes:v2 + 64 length:64 atIndex:0];
  swift_endAccess();
  [v8 setRenderPipelineState:*(v2 + 48)];
  [v8 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:1];
  [v8 endEncoding];

  swift_unknownObjectRelease();
}

uint64_t sub_10013C748()
{

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_10013C790()
{
  v0 = MetalNode.deinit();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 sub_10013C830(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10013C84C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10013C8A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

id sub_10013C908(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v5 = String._bridgeToObjectiveC()();
  v6 = [a2 newFunctionWithName:v5];

  [v4 setVertexFunction:v6];
  swift_unknownObjectRelease();
  v7 = String._bridgeToObjectiveC()();
  v8 = [a2 newFunctionWithName:v7];

  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v4 setFragmentFunction:v8];
  swift_unknownObjectRelease();
  v9 = [v4 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];

  if (!v10)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  [v10 setPixelFormat:objc_msgSend(a1, "colorPixelFormat")];

  v11 = [v4 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    goto LABEL_11;
  }

  [v12 setBlendingEnabled:0];

  v13 = [a1 device];
  if (!v13)
  {

    return 0;
  }

  v18 = 0;
  v14 = [v13 newRenderPipelineStateWithDescriptor:v4 error:&v18];
  swift_unknownObjectRelease();
  v15 = v18;
  if (v14)
  {

    return v14;
  }

  v17 = v15;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10013CBA8(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_10013CC44()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - v5;
  (*(*(v1 - 8) + 56))(&v9 - v5, 1, 1, v1, v4);
  v7 = *(*v0 + 104);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v7, v6, v2);
  swift_endAccess();
  return result;
}

uint64_t sub_10013CD88(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 104);
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v7, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v1 + v7, v2);
    v9 = *(v1 + *(*v1 + 112));
    dispatch thunk of Subscriber.receive(_:)();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_10013CF18(uint64_t a1)
{

  sub_10013CD88(v1);

  return result;
}

uint64_t sub_10013CF54()
{
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10013CFF4()
{
  sub_10013CF54();

  return swift_deallocClassInstance();
}

uint64_t sub_10013D0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10013D150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for UIControlSubscription(0, a5, a4, a6);
  swift_allocObject();
  v10 = sub_10013D23C(a1, a2, a3);
  v12[3] = v9;
  v12[4] = swift_getWitnessTable();
  v12[0] = v10;
  dispatch thunk of Subscriber.receive(subscription:)();
  return sub_10000FF00(v12);
}

uint64_t *sub_10013D23C(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(v5 + 104);
  v13 = *(v6 - 8);
  v14 = *(v13 + 56);
  v14(v3 + v12, 1, 1, v6, v9);
  (*(v13 + 16))(v11, a1, v6);
  (v14)(v11, 0, 1, v6);
  swift_beginAccess();
  (*(v8 + 40))(v3 + v12, v11, v7);
  swift_endAccess();
  v15 = v19;
  v16 = v20;
  *(v3 + *(*v3 + 112)) = v19;
  [v15 addTarget:v3 action:"eventHandler" forControlEvents:v16];
  return v3;
}

void sub_10013D424()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [*&v2[OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label] topAnchor];
  v4 = [v2 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  [v5 setActive:1];
  v28 = objc_opt_self();
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1003D7B50;
  v7 = [v2 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v2 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v2 bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v2 topAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  v19 = [v1 leadingAnchor];
  v20 = [v0 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v6 + 64) = v21;
  v22 = [v1 trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v6 + 72) = v24;
  v25 = [v1 topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v6 + 80) = v27;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];
}

char *sub_10013D82C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
  v11 = type metadata accessor for SecondaryLabelStackLabel();
  *&v4[v10] = [objc_allocWithZone(v11) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
  *&v4[v12] = [objc_allocWithZone(v11) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
  v15 = *&v13[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
  v16 = v13;
  [v15 setUserInteractionEnabled:1];
  v17 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
  [*&v16[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] setUserInteractionEnabled:1];
  [v16 addSubview:*&v13[v14]];
  [v16 addSubview:*&v16[v17]];
  sub_10013D424();

  return v16;
}

char *sub_10013D9AC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
  v5 = type metadata accessor for SecondaryLabelStackLabel();
  *&v1[v4] = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
  *&v1[v6] = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
    v10 = *&v7[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
    v11 = v7;
    [v10 setUserInteractionEnabled:1];
    v12 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
    [*&v11[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] setUserInteractionEnabled:1];
    [v11 addSubview:*&v8[v9]];
    [v11 addSubview:*&v11[v12]];
    sub_10013D424();
  }

  return v8;
}

id sub_10013DD44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Measure19SecondaryLabelStack_contentView] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_10013DE40();

  return v10;
}

void sub_10013DE40()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();

  v3 = OBJC_IVAR____TtC7Measure19SecondaryLabelStack_contentView;
  if (!*&v0[OBJC_IVAR____TtC7Measure19SecondaryLabelStack_contentView])
  {
    __break(1u);
    goto LABEL_11;
  }

  [v0 addSubview:?];
  v4 = *&v0[v3];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v0 bounds];
  [v5 setFrame:?];

  sub_1000ECDC0();
  v7 = v6;
  v9 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = Strong;
  [Strong setFont:v7];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 setFont:v7];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  [v14 setTextColor:v9];

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 setTextColor:v9];
}

id sub_10013E03C(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Measure19SecondaryLabelStack_contentView] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_10013DE40();
  }

  return v5;
}

id sub_10013E3A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TouchPassThroughView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *PointTrail.init(numberOfPoints:nodeCreator:)(uint64_t a1, uint64_t (*a2)(void))
{
  *&v2[OBJC_IVAR____TtC7Measure10PointTrail_pointNodes] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC7Measure10PointTrail_minDistance] = 0;
  *&v2[OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate] = 0;
  v2[OBJC_IVAR____TtC7Measure10PointTrail_isStarted] = 0;
  *&v2[OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared] = 0;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for PointTrail();
  result = objc_msgSendSuper2(&v11, "init");
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a1)
    {
      v7 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
      v8 = result;
      do
      {
        v9 = a2();
        [v9 setHidden:1];
        swift_beginAccess();
        v10 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v6[v7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v6[v7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        [v8 addChildNode:v10];

        --a1;
      }

      while (a1);
    }

    return v6;
  }

  return result;
}

double PointTrail.pointNodes.getter()
{
  swift_beginAccess();

  return result;
}

float PointTrail.minDistance.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure10PointTrail_minDistance;
  swift_beginAccess();
  return *v1;
}

float PointTrail.minDistance.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Measure10PointTrail_minDistance);
  swift_beginAccess();
  *v3 = a1;
  result = a1 * a1;
  *(v1 + OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared) = a1 * a1;
  return result;
}

uint64_t (*PointTrail.minDistance.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC7Measure10PointTrail_minDistance;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_10013E724;
}

void sub_10013E724(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(v3[3] + OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared) = *(v3[3] + v3[4]) * *(v3[3] + v3[4]);
  }

  free(v3);
}

float PointTrail.stretchingRate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate;
  swift_beginAccess();
  return *v1;
}

uint64_t PointTrail.stretchingRate.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

void PointTrail.setStartPosition(_:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v13 = a3;
  v14 = a4;
  v11 = a1;
  v12 = a2;
  v5 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  swift_beginAccess();
  v6 = *(v4 + v5);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v4 + OBJC_IVAR____TtC7Measure10PointTrail_isStarted) = 1;
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

    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      [v9 setSimdTransform:{v11.n128_f64[0], v12.n128_f64[0], v13.n128_f64[0], v14.n128_f64[0], *&v11, *&v12, *&v13, *&v14}];
      [v10 setHidden:0];
    }

    while (v7 != v8);

    goto LABEL_10;
  }

  __break(1u);
}

void PointTrail.setHeadPosition(_:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v6 = OBJC_IVAR____TtC7Measure10PointTrail_isStarted;
  v7 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  if (*(v5 + OBJC_IVAR____TtC7Measure10PointTrail_isStarted) != 1)
  {
    swift_beginAccess();
    v4 = *(v5 + v7);
    if (v4 >> 62)
    {
      goto LABEL_38;
    }

    v28 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_21;
    }

LABEL_32:
    *(v5 + v6) = 1;
    return;
  }

  swift_beginAccess();
  v8 = *(v5 + v7);
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_37;
  }

  while (2)
  {
    v11 = OBJC_IVAR____TtC7Measure10PointTrail_minDistanceSquared;
    v12 = (v5 + OBJC_IVAR____TtC7Measure10PointTrail_stretchingRate);
    v40 = (v5 + OBJC_IVAR____TtC7Measure10PointTrail_minDistance);
    swift_beginAccess();
    v39 = v12;
    swift_beginAccess();
    v13 = 0;
    v4 = &selRef_runAction_completion_;
    while (1)
    {
      v6 = v10 - 1;
      if (v10 <= 1)
      {
        if ((v10 != 1) | v13 & 1)
        {
          v32 = *(v5 + v7);
          if ((v32 & 0xC000000000000001) != 0)
          {

            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_42;
            }

            v33 = *(v32 + 32);
          }

          [v33 setSimdTransform:{v35.n128_f64[0], v36.n128_f64[0], v37.n128_f64[0], v38.n128_f64[0], *&v35, *&v36, *&v37, *&v38}];

          return;
        }

        v13 = 1;
        v14 = 1;
      }

      else
      {
        v14 = v10 - 1;
      }

      v15 = *(v5 + v7);
      if ((v15 & 0xC000000000000001) == 0)
      {
        break;
      }

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v15 = *(v5 + v7);
      if ((v15 & 0xC000000000000001) != 0)
      {
LABEL_18:

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_15;
      }

LABEL_13:
      if (v6 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v17 = *(v15 + 8 * v6 + 32);
LABEL_15:
      [v16 simdPosition];
      v41 = v18;
      [v17 simdPosition];
      v20 = vsubq_f32(v41, v19);
      v21 = vmulq_f32(v20, v20);
      if (*(v5 + v11) < (v21.f32[2] + vaddv_f32(*v21.f32)))
      {
        [v16 simdPosition];
        v42 = v22;
        [v17 simdTransform];
        [v16 setSimdTransform:?];
        [v17 simdPosition];
        v24 = vsubq_f32(v23, v42);
        v25 = vmulq_f32(v24, v24);
        *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
        *v25.f32 = vrsqrte_f32(v26);
        *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
        v42.i64[0] = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]).u64[0];
        [v17 simdPosition];
        [v16 setSimdPosition:{COERCE_DOUBLE(vsub_f32(v27, vmul_n_f32(*v42.f32, *v40 + (*v39 * v10))))}];
      }

      v10 = v14;
    }

    if (v10 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * v10 + 32);
      if ((v15 & 0xC000000000000001) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v34 - 1;
    if (!__OFSUB__(v34, 1))
    {
      continue;
    }

    break;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_21:
  if (v28 >= 1)
  {

    v29 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v4 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      [v30 setSimdTransform:{v35.n128_f64[0], v36.n128_f64[0], v37.n128_f64[0], v38.n128_f64[0], *&v35, *&v36, *&v37, *&v38}];
      [v31 setHidden:0];
    }

    while (v28 != v29);

    goto LABEL_32;
  }

LABEL_42:
  __break(1u);
}

double sub_10013EDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

id PointTrail.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PointTrail();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10013EFD8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7Measure10PointTrail_pointNodes;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatterState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatterState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatterState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_10013F168()
{
  result = Contexts.UIKit.init()();
  qword_1004D4F18 = result;
  return result;
}

id sub_10013F188@<X0>(void *a1@<X8>)
{
  if (qword_1004A0378 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F18;
  *a1 = qword_1004D4F18;

  return v2;
}

unint64_t sub_10013F230(uint64_t a1)
{
  result = sub_10013F258();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10013F258()
{
  result = qword_1004AB260;
  if (!qword_1004AB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB260);
  }

  return result;
}

uint64_t sub_10013F2AC(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 32); ; i += 304)
  {
    memcpy(__src, i, 0x130uLL);
    if (__src[21])
    {
      break;
    }

    v7 = *&__src[20];
    sub_1000C1C28(__src, __dst);
    sub_1000C1C28(__src, __dst);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a2;
    v21 = *a2;
    *a2 = 0x8000000000000000;
    v10 = sub_10019851C(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_1000B88C4(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_10019851C(v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v20 = v10;
    sub_1000BEDAC();
    v10 = v20;
    if (v16)
    {
LABEL_3:
      v5 = v21;
      v6 = (v21[7] + 304 * v10);
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v6, __src, 0x130uLL);
      sub_1001494D8(__dst);
      goto LABEL_4;
    }

LABEL_12:
    v5 = v21;
    v21[(v10 >> 6) + 8] |= 1 << v10;
    *(v21[6] + 8 * v10) = v7;
    memcpy((v21[7] + 304 * v10), __src, 0x130uLL);
    v18 = v21[2];
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v14)
    {
      goto LABEL_18;
    }

    v21[2] = v19;
LABEL_4:
    *a2 = v5;
    result = sub_1001494D8(__src);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10013F49C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100198568(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000BE094();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1000C6B80(v5, v7);
  *v2 = v7;
  return v10;
}

void sub_10013F564(void *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v5 = sub_10019851C(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000BEDAC();
      v9 = v11[0];
    }

    memmove(a1, (*(v9 + 56) + 304 * v7), 0x130uLL);
    sub_1000C75C8(v7, v9, v10);
    *v3 = v9;
    nullsub_1();
  }

  else
  {
    sub_10014952C(v11);
    memcpy(a1, v11, 0x130uLL);
  }
}

uint64_t sub_10013F620()
{
  v0 = type metadata accessor for UUID();
  sub_10001D4FC(v0, qword_1004D4F20);
  sub_10001D4C4(v0, qword_1004D4F20);
  return UUID.init()();
}

uint64_t sub_10013F66C()
{
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 64))
  {
    v4 = *(v0 + 64);
  }

  else
  {
    v5 = *(v0 + 96);
    static DispatchQoS.userInitiated.getter();
    type metadata accessor for RectangleDetector(0);
    swift_allocObject();
    v4 = sub_100163FE4(v5, v3);

    *(v0 + 64) = v4;
  }

  return v4;
}

void sub_10013F754(void *a1)
{
  v2 = v1;
  v4 = sub_10000F974(&qword_1004A6F50, &qword_1003DCCB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_10000F974(&qword_1004AB478, &qword_1003DF250);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  *(v1 + 64) = 0;
  *(v1 + 104) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 112) = _swiftEmptyDictionarySingleton;
  *(v1 + 120) = 0;
  v10 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v12 = qword_1004D5058;
  v13 = *(v10 + 272);
  swift_retain_n();
  *(v2 + 128) = v13(KeyPath, v12);
  v14 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  v15 = swift_getKeyPath();
  v16 = *(v14 + 272);

  *(v2 + 136) = v16(v15, v12);
  v17 = sub_10000F974(&qword_1004AB458, &qword_1003DF0D8);
  v18 = swift_getKeyPath();
  v19 = *(v17 + 272);

  *(v2 + 144) = v19(v18, v12);
  v20 = swift_getKeyPath();
  v21 = *(sub_10000F974(&unk_1004A1940, &unk_1003D65A0) + 272);

  *(v2 + 152) = v21(v20, v12);
  v22 = swift_getKeyPath();
  v23 = *(sub_10000F974(&qword_1004A11D0, &unk_1003D54E0) + 272);

  *(v2 + 160) = v23(v22, v12);
  sub_10000F974(&qword_1004AB460, &qword_1003DF168);
  swift_getKeyPath();
  *(v2 + 168) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004AB468, &qword_1003DF198);
  swift_getKeyPath();
  *(v2 + 176) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004AB470, &qword_1003DF1C8);
  swift_getKeyPath();
  *(v2 + 184) = MutableStateValue.__allocating_init(_:_:)();
  v24 = sub_10000F974(&qword_1004A2C58, &qword_1003D73D8);
  v25 = swift_getKeyPath();
  *(v2 + 192) = (*(v24 + 272))(v25, v12);
  v26 = swift_getKeyPath();
  v27 = sub_10000F974(&qword_1004A7530, &unk_1003D58B0);
  *(v2 + 200) = (*(v27 + 272))(v26, v12);
  type metadata accessor for WorldRectangle();
  *(v2 + 208) = OrderedDictionary.init()();
  *(v2 + 216) = v28;
  *(v2 + 224) = v29;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = _swiftEmptyArrayStorage;
  *(v2 + 272) = 768;
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  swift_allocObject();
  *(v2 + 280) = PassthroughSubject.init()();
  *(v2 + 96) = a1;
  v30 = a1;
  v31 = [v30 scene];
  type metadata accessor for RectangleRenderer();
  swift_allocObject();
  v32 = sub_10016ED10(v31);

  *(v2 + 72) = v32;
  v45 = &type metadata for Configurations.Default;
  v46 = &protocol witness table for Configurations.Default;
  v33 = StateObserver.init(configuration:)();

  v44 = *(sub_10013F66C() + 64);

  sub_10000F974(&qword_1004ABEB0, &qword_1003DF258);
  sub_10001D47C(&qword_1004AB480, &qword_1004ABEB0, &qword_1003DF258, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v34 = Publisher.eraseToAnyPublisher()();

  v44 = v34;
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v35 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v36 = Contexts.PrivateQueue.init(_:)();
    v43 = v36;
    v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v37 - 8) + 56))(v6, 1, 1, v37);
    v38 = v35;
    sub_10000F974(&qword_1004AB488, &unk_1003DF260);
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    sub_10001D47C(&qword_1004AB490, &qword_1004AB488, &unk_1003DF260, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000F38F4();
    Publisher.receive<A>(on:options:)();
    sub_100018F04(v6, &qword_1004A6F50, &qword_1003DCCB0);

    sub_10001D47C(&qword_1004AB498, &qword_1004AB478, &qword_1003DF250, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v39 = v42;
    Publisher<>.sink(receiveValue:)();

    (*(v41 + 8))(v9, v39);
    swift_beginAccess();
    sub_10000F974(&qword_1004A3270, &qword_1003DCB70);
    sub_10001D47C(&qword_1004A3278, &qword_1004A3270, &qword_1003DCB70, &protocol conformance descriptor for [A]);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    v40 = swift_allocObject();
    *(v40 + 16) = v33;
    *(v40 + 24) = 3;
    sub_10000F974(&unk_1004A3D70, &qword_1003DA860);
    swift_allocObject();

    Future.init(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10013FFEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v149 = a1 + 32;
  v4 = _swiftEmptyArrayStorage;
  v147 = *(a1 + 16);
  do
  {
    v140 = v4;
    while (1)
    {
      if (v3 >= v2)
      {
        goto LABEL_115;
      }

      memcpy(__dst, (v149 + 304 * v3), 0x130uLL);
      if (__OFADD__(v3++, 1))
      {
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
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (!*&__dst[0])
      {
        goto LABEL_128;
      }

      v6 = *(*&__dst[0] + 16);
      isUniquelyReferenced_nonNull_native = sub_1000C1C28(__dst, v177);
      if (v6)
      {
        v2 = 0;
        v9 = 0;
        do
        {
          v152 = v9;
          while (1)
          {
            if (v2 >= v6)
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v10 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_38;
            }

            v11 = type metadata accessor for MeasureCamera();

            StateValue.wrappedValue.getter();

            memcpy(v176, __src, sizeof(v176));
            sub_100013C4C(v176);

            StateValue.wrappedValue.getter();

            memcpy(v177, __src, sizeof(v177));
            sub_100013C4C(v177);
            v1 = v11;
            isUniquelyReferenced_nonNull_native = static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
            if (qword_1004A0850 != -1)
            {
              v161 = v12;
              isUniquelyReferenced_nonNull_native = swift_once();
              v12 = v161;
            }

            v13 = (qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits);
            if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
            {
              goto LABEL_124;
            }

            if (v12 > 0.0)
            {
              v14 = v13[6];
              v15 = v13[7];
              v16 = v13[8];
              v17 = v13[9];
              CGPoint.init(_:)();
              v180.x = v18;
              v180.y = v19;
              v181.origin.x = v14;
              v181.origin.y = v15;
              v181.size.width = v16;
              v181.size.height = v17;
              isUniquelyReferenced_nonNull_native = CGRectContainsPoint(v181, v180);
              if (isUniquelyReferenced_nonNull_native)
              {
                break;
              }
            }

            ++v2;
            if (v10 == v6)
            {
              v9 = v152;
              goto LABEL_23;
            }
          }

          v9 = v152 + 1;
          if (__OFADD__(v152, 1))
          {
            goto LABEL_118;
          }

          ++v2;
        }

        while (v10 != v6);
LABEL_23:
        v2 = v147;
        if (v9 == 4)
        {
          break;
        }
      }

      sub_1001494D8(__dst);
      if (v3 == v2)
      {
        v4 = v140;
        goto LABEL_31;
      }
    }

    v20 = v140;
    *&v168[0] = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000A2794(0, *(v140 + 2) + 1, 1);
      v20 = *&v168[0];
    }

    v1 = v20;
    v21 = *(v20 + 16);
    v22 = *(v1 + 24);
    if (v21 >= v22 >> 1)
    {
      sub_1000A2794((v22 > 1), v21 + 1, 1);
      v1 = *&v168[0];
    }

    *(v1 + 16) = v21 + 1;
    memcpy((v1 + 304 * v21 + 32), __dst, 0x130uLL);
    v4 = v1;
  }

  while (v3 != v147);
LABEL_31:
  if (!*(v4 + 2))
  {

    return;
  }

  memcpy(__dst, v4 + 4, 0x130uLL);
  v1 = *(v4 + 2);
  if (!v1)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  sub_1000C1C28(__dst, v177);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v178 = v4;
  v8 = v4;
  if (isUniquelyReferenced_nonNull_native && (v1 - 1) <= *(v4 + 3) >> 1)
  {
    v23 = v4;
    goto LABEL_40;
  }

LABEL_39:
  v23 = sub_10006875C(isUniquelyReferenced_nonNull_native, v1, 1, v8);
  v178 = v23;
LABEL_40:
  sub_10006CA78(0, 1, 0);
  if (v2 != 1)
  {
    v170 = _swiftEmptyDictionarySingleton;
    v169 = _swiftEmptyDictionarySingleton;
    sub_10013F2AC(v23, &v170);
    v171 = __dst[15];
    v172 = __dst[16];
    v173 = __dst[17];
    v174 = __dst[18];
    if ((BYTE8(__dst[10]) & 1) == 0)
    {
      v24 = __dst[0];
      v25 = __dst[1];
      v26 = __dst[3];
      v27 = __dst[2];
      v28 = __dst[5];
      v29 = __dst[4];
      v30 = __dst[8];
      v31 = __dst[6];
      v32 = __dst[7];
      v33 = BYTE8(__dst[8]);
      v34 = DWORD1(__dst[8]);
      v35 = __dst[9];
      v36 = HIDWORD(__dst[8]);
      v37 = BYTE12(__dst[9]);
      v38 = *(&__dst[9] + 4);
      v39 = *&__dst[10];
      v40 = __dst[11];
      v41 = HIDWORD(__dst[10]);
      v42 = BYTE8(__dst[11]);
      v43 = DWORD1(__dst[11]);
      v44 = __dst[12];
      v45 = HIDWORD(__dst[11]);
      v46 = BYTE1(__dst[12]);
      v47 = __dst[14];
      v48 = __dst[13];
      v49 = BYTE8(__dst[14]);
      v50 = DWORD1(__dst[14]);
      do
      {
        v168[0] = v24;
        v168[1] = v25;
        v168[2] = v27;
        LOBYTE(v168[3]) = v26 & 1;
        v168[4] = v29;
        v168[5] = v28;
        v168[6] = v31;
        v168[7] = v32;
        LOBYTE(v168[8]) = v30 & 1;
        DWORD1(v168[8]) = v34;
        BYTE8(v168[8]) = v33 & 1;
        HIDWORD(v168[8]) = v36;
        LOBYTE(v168[9]) = v35 & 1;
        *(&v168[9] + 4) = v38;
        BYTE12(v168[9]) = v37 & 1;
        *&v168[10] = v39;
        BYTE8(v168[10]) = 0;
        HIDWORD(v168[10]) = v41;
        LOBYTE(v168[11]) = v40 & 1;
        DWORD1(v168[11]) = v43;
        BYTE8(v168[11]) = v42 & 1;
        HIDWORD(v168[11]) = v45;
        LOBYTE(v168[12]) = v44 & 1;
        BYTE1(v168[12]) = v46 & 1;
        v168[13] = v48;
        LOBYTE(v168[14]) = v47 & 1;
        DWORD1(v168[14]) = v50;
        BYTE8(v168[14]) = v49 & 1;
        v168[15] = v171;
        v168[16] = v172;
        v168[17] = v173;
        v168[18] = v174;
        memcpy(__src, v168, 0x130uLL);
        sub_10000F974(&qword_1004A3E08, &qword_1003DF270);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1003D5360;
        memcpy((v51 + 32), v168, 0x130uLL);
        sub_1000C1C28(v168, v177);
        v52 = v169;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        *&v177[0] = v52;
        sub_1000BC2E0(v51, v53, v39);
        v169 = *&v177[0];
        v54 = sub_10016B728(v177, v39);
        if (*v55)
        {
          v56 = sub_10014A840(__src, v23);
          sub_100103CA0(v56);
        }

        (v54)(v177, 0);
        v57 = v169;
        if (!v169[2])
        {
          goto LABEL_119;
        }

        v58 = sub_10019851C(v39);
        if ((v59 & 1) == 0)
        {
          goto LABEL_120;
        }

        v60 = *(*(v57 + 56) + 8 * v58);
        v61 = *(v60 + 16);
        v62 = v170;

        if (v61)
        {
          v63 = 0;
          v64 = (v60 + 32);
          do
          {
            if (v63 >= *(v60 + 16))
            {
              goto LABEL_114;
            }

            memcpy(v177, v64, 0x130uLL);
            if (BYTE8(v177[10]))
            {
              goto LABEL_127;
            }

            v66 = sub_10019851C(*&v177[10]);
            if (v67)
            {
              v68 = v66;
              sub_1000C1C28(v177, v176);
              v69 = swift_isUniquelyReferenced_nonNull_native();
              *&v167[0] = v62;
              if (!v69)
              {
                sub_1000BEDAC();
                v62 = *&v167[0];
              }

              memcpy(v176, (*(v62 + 56) + 304 * v68), 0x130uLL);
              sub_1001494D8(v176);
              sub_1000C75C8(v68, v62, v65);
              sub_1001494D8(v177);
            }

            ++v63;
            v64 += 304;
          }

          while (v61 != v63);
        }

        v170 = v62;

        v70 = _swiftEmptyArrayStorage;
        v178 = _swiftEmptyArrayStorage;
        v71 = v170;
        v72 = v170 + 8;
        v73 = 1 << *(v170 + 32);
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        else
        {
          v74 = -1;
        }

        v75 = v74 & v170[8];
        v76 = (v73 + 63) >> 6;

        for (i = 0; v75; v178 = v70)
        {
LABEL_67:
          v79 = __clz(__rbit64(v75)) | (i << 6);
          v80 = *(v71[6] + 8 * v79);
          memcpy(v167, (v71[7] + 304 * v79), sizeof(v167));
          *&v177[0] = v80;
          memcpy(&v177[1], v167, 0x130uLL);
          sub_1000C1C28(v167, v176);
          sub_10006C92C(v177, v176, &qword_1004AB4A0, &qword_1003DF278);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_10006875C(0, *(v70 + 2) + 1, 1, v70);
          }

          v81 = v70;
          v82 = *(v70 + 2);
          v83 = v81;
          v84 = *(v81 + 3);
          if (v82 >= v84 >> 1)
          {
            v83 = sub_10006875C((v84 > 1), v82 + 1, 1, v83);
          }

          v75 &= v75 - 1;
          *(v83 + 2) = v82 + 1;
          v85 = &v83[38 * v82];
          v70 = v83;
          memcpy(v85 + 4, v167, 0x130uLL);
          sub_1001494D8(v167);
        }

        while (1)
        {
          v78 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (v78 >= v76)
          {
            break;
          }

          v75 = v72[v78];
          ++i;
          if (v75)
          {
            i = v78;
            goto LABEL_67;
          }
        }

        if (*(v70 + 2) <= 1uLL)
        {
          sub_100149100(v57);
          v89 = v88;

          v90 = 0;
          v92 = v89 + 64;
          v91 = *(v89 + 64);
          v128 = v89;
          v93 = 1 << *(v89 + 32);
          v94 = -1;
          if (v93 < 64)
          {
            v94 = ~(-1 << v93);
          }

          v95 = v94 & v91;
          v96 = (v93 + 63) >> 6;
          v97 = _swiftEmptyArrayStorage;
          v126 = v96;
          v127 = v89 + 64;
          if ((v94 & v91) == 0)
          {
            goto LABEL_82;
          }

LABEL_86:
          while (1)
          {
            v131 = v97;
            v143 = *(*(v128 + 56) + ((v90 << 9) | (8 * __clz(__rbit64(v95)))));
            v142 = *(v143 + 16);
            if (!v142)
            {
              goto LABEL_125;
            }

            v129 = (v95 - 1) & v95;
            v130 = v90;
            memcpy(v177, (v143 + 32), 0x130uLL);
            v158 = DWORD1(v177[14]);
            v99 = *(&v177[13] + 1);
            v153 = *&v177[13];
            v138 = v177[14];
            v139 = BYTE8(v177[14]);
            v141 = BYTE1(v177[12]);
            v155 = HIDWORD(v177[11]);
            v154 = v177[12];
            v157 = DWORD1(v177[11]);
            v156 = BYTE8(v177[11]);
            v100 = HIDWORD(v177[10]);
            v101 = v177[11];
            v102 = *&v177[10];
            v103 = BYTE8(v177[10]);
            v104 = *(&v177[9] + 4);
            v105 = BYTE12(v177[9]);
            v136 = v177[9];
            v137 = HIDWORD(v177[8]);
            v106 = *(&v177[8] + 1);
            v107 = BYTE8(v177[8]);
            v134 = *(&v177[7] + 1);
            v135 = *&v177[7];
            v133 = v177[8];
            v150 = v177[5];
            v151 = v177[4];
            v148 = v177[6];
            v108 = *(&v177[2] + 1);
            v132 = *&v177[2];
            v146 = v177[3];
            v144 = v177[0];
            v145 = v177[1];
            swift_bridgeObjectRetain_n();
            sub_1000C1C28(v177, v176);
            v109 = v158;
            v110 = v107;
            v111 = 0;
            v163 = v177[15];
            v164 = v177[16];
            v165 = v177[17];
            v166 = v177[18];
            while (1)
            {
              v176[0] = v144;
              v176[1] = v145;
              *&v176[2] = v132;
              *(&v176[2] + 1) = v108;
              LOBYTE(v176[3]) = v146 & 1;
              v176[4] = v151;
              v176[5] = v150;
              v176[6] = v148;
              *&v176[7] = v135;
              *(&v176[7] + 1) = v134;
              LOBYTE(v176[8]) = v133 & 1;
              *(&v176[8] + 1) = v106;
              BYTE8(v176[8]) = v110 & 1;
              HIDWORD(v176[8]) = v137;
              LOBYTE(v176[9]) = v136 & 1;
              *(&v176[9] + 4) = v104;
              BYTE12(v176[9]) = v105 & 1;
              *&v176[10] = v102;
              BYTE8(v176[10]) = v103 & 1;
              HIDWORD(v176[10]) = v100;
              LOBYTE(v176[11]) = v101 & 1;
              DWORD1(v176[11]) = v157;
              BYTE8(v176[11]) = v156 & 1;
              HIDWORD(v176[11]) = v155;
              LOBYTE(v176[12]) = v154 & 1;
              BYTE1(v176[12]) = v141 & 1;
              *&v176[13] = v153;
              *(&v176[13] + 1) = v99;
              LOBYTE(v176[14]) = v138 & 1;
              v160 = v109;
              DWORD1(v176[14]) = v109;
              BYTE8(v176[14]) = v139 & 1;
              v176[15] = v163;
              v176[16] = v164;
              v176[17] = v165;
              v176[18] = v166;
              if (v111 == v142)
              {
                break;
              }

              if (v111 >= *(v143 + 16))
              {
                goto LABEL_117;
              }

              v113 = v110;
              memcpy(v167, (v143 + 32 + 304 * v111), sizeof(v167));
              if (BYTE8(v167[8]))
              {
                goto LABEL_129;
              }

              if (v113)
              {
                goto LABEL_131;
              }

              v114 = *(&v167[8] + 1);
              v112 = v111 + 1;
              if (v106 >= *(&v167[8] + 1))
              {
                v115 = v139;
                v116 = v138;
                v117 = v137;
                v118 = v135;
                v119 = v132;
                v120 = (v143 + 336 + 304 * v111);
                v121 = v136;
                while (1)
                {
                  v176[0] = v144;
                  v176[1] = v145;
                  *&v176[2] = v119;
                  *(&v176[2] + 1) = v108;
                  LOBYTE(v176[3]) = v146 & 1;
                  v176[4] = v151;
                  v176[5] = v150;
                  v176[6] = v148;
                  *&v176[7] = v118;
                  *(&v176[7] + 1) = v134;
                  LOBYTE(v176[8]) = v133 & 1;
                  *(&v176[8] + 1) = v106;
                  BYTE8(v176[8]) = 0;
                  HIDWORD(v176[8]) = v117;
                  LOBYTE(v176[9]) = v121 & 1;
                  *(&v176[9] + 4) = v104;
                  BYTE12(v176[9]) = v105 & 1;
                  *&v176[10] = v102;
                  BYTE8(v176[10]) = v103 & 1;
                  HIDWORD(v176[10]) = v100;
                  LOBYTE(v176[11]) = v101 & 1;
                  DWORD1(v176[11]) = v157;
                  BYTE8(v176[11]) = v156 & 1;
                  HIDWORD(v176[11]) = v155;
                  LOBYTE(v176[12]) = v154 & 1;
                  BYTE1(v176[12]) = v141 & 1;
                  *&v176[13] = v153;
                  *(&v176[13] + 1) = v99;
                  LOBYTE(v176[14]) = v116 & 1;
                  DWORD1(v176[14]) = v160;
                  BYTE8(v176[14]) = v115 & 1;
                  v176[15] = v163;
                  v176[16] = v164;
                  v176[17] = v165;
                  v176[18] = v166;
                  if (v142 == v112)
                  {
                    goto LABEL_101;
                  }

                  if (v112 >= *(v143 + 16))
                  {
                    goto LABEL_117;
                  }

                  memcpy(v167, v120, sizeof(v167));
                  if (BYTE8(v167[8]))
                  {
                    goto LABEL_129;
                  }

                  v114 = *(&v167[8] + 1);
                  if (v106 < *(&v167[8] + 1))
                  {
                    ++v112;
                    break;
                  }

                  v115 = v139;
                  v116 = v138;
                  v117 = v137;
                  v121 = v136;
                  v118 = v135;
                  v119 = v132;
                  v120 += 304;
                  ++v112;
                }
              }

              v159 = DWORD1(v167[14]);
              v99 = *(&v167[13] + 1);
              v153 = *&v167[13];
              v138 = v167[14];
              v139 = BYTE8(v167[14]);
              v141 = BYTE1(v167[12]);
              v155 = HIDWORD(v167[11]);
              v154 = v167[12];
              v157 = DWORD1(v167[11]);
              v156 = BYTE8(v167[11]);
              v100 = HIDWORD(v167[10]);
              v101 = v167[11];
              v102 = *&v167[10];
              v103 = BYTE8(v167[10]);
              v104 = *(&v167[9] + 4);
              v105 = BYTE12(v167[9]);
              v136 = v167[9];
              v137 = HIDWORD(v167[8]);
              v134 = *(&v167[7] + 1);
              v135 = *&v167[7];
              v133 = v167[8];
              v150 = v167[5];
              v151 = v167[4];
              v148 = v167[6];
              v108 = *(&v167[2] + 1);
              v132 = *&v167[2];
              v146 = v167[3];
              v144 = v167[0];
              v145 = v167[1];
              sub_1000C1C28(v167, v162);
              sub_1001494D8(v176);
              v110 = 0;
              v163 = v167[15];
              v164 = v167[16];
              v165 = v167[17];
              v166 = v167[18];
              v111 = v112;
              v109 = v159;
              v106 = v114;
            }

LABEL_101:
            swift_bridgeObjectRelease_n();
            v97 = v131;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = sub_10006875C(0, *(v131 + 16) + 1, 1, v131);
            }

            v92 = v127;
            v90 = v130;
            v123 = *(v97 + 2);
            v122 = *(v97 + 3);
            if (v123 >= v122 >> 1)
            {
              v97 = sub_10006875C((v122 > 1), v123 + 1, 1, v97);
            }

            *(v97 + 2) = v123 + 1;
            memcpy(&v97[38 * v123 + 4], v176, 0x130uLL);
            v96 = v126;
            v95 = v129;
            if (!v129)
            {
LABEL_82:
              while (1)
              {
                v98 = v90 + 1;
                if (__OFADD__(v90, 1))
                {
                  goto LABEL_123;
                }

                if (v98 >= v96)
                {

                  sub_1001494D8(v168);
                  v124 = *(v97 + 2);
                  if (v124)
                  {
                    v125 = (v97 + 4);
                    do
                    {
                      memcpy(v177, v125, 0x130uLL);
                      sub_1000C1C28(v177, v176);
                      sub_100144940(v177);
                      sub_1001494D8(v177);
                      v125 += 304;
                      --v124;
                    }

                    while (v124);
                  }

                  goto LABEL_111;
                }

                v95 = *(v92 + 8 * v98);
                ++v90;
                if (v95)
                {
                  v90 = v98;
                  goto LABEL_86;
                }
              }
            }
          }
        }

        sub_1001494D8(v168);
        if (!*(v70 + 2))
        {
          goto LABEL_121;
        }

        memcpy(v177, v70 + 4, 0x130uLL);
        v86 = *(v70 + 2);
        if (!v86)
        {
          goto LABEL_122;
        }

        sub_1000C1C28(v177, v176);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v178 = v70;
        if (v87 && (v86 - 1) <= *(v70 + 3) >> 1)
        {
          v23 = v70;
        }

        else
        {
          v23 = sub_10006875C(v87, v86, 1, v70);
          v178 = v23;
        }

        sub_10006CA78(0, 1, 0);
        v50 = DWORD1(v177[14]);
        v49 = BYTE8(v177[14]);
        v48 = v177[13];
        v47 = v177[14];
        v46 = BYTE1(v177[12]);
        v45 = HIDWORD(v177[11]);
        v44 = v177[12];
        v43 = DWORD1(v177[11]);
        v42 = BYTE8(v177[11]);
        v41 = HIDWORD(v177[10]);
        v40 = v177[11];
        v39 = *&v177[10];
        v38 = *(&v177[9] + 4);
        v37 = BYTE12(v177[9]);
        v36 = HIDWORD(v177[8]);
        v35 = v177[9];
        v34 = DWORD1(v177[8]);
        v33 = BYTE8(v177[8]);
        v30 = v177[8];
        v29 = v177[4];
        v28 = v177[5];
        v32 = v177[7];
        v31 = v177[6];
        v27 = v177[2];
        v26 = v177[3];
        v25 = v177[1];
        v24 = v177[0];
        v171 = v177[15];
        v172 = v177[16];
        v173 = v177[17];
        v174 = v177[18];
      }

      while ((BYTE8(v177[10]) & 1) == 0);
    }

LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    return;
  }

  sub_100144940(__dst);
  sub_1001494D8(__dst);
LABEL_111:
}

void sub_100141134()
{
  v1 = v0;
  *(v0 + 64) = 0;
  *(v0 + 104) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 112) = _swiftEmptyDictionarySingleton;
  *(v0 + 120) = 0;
  v2 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1004D5058;
  v5 = *(v2 + 272);
  swift_retain_n();
  *(v1 + 128) = v5(KeyPath, v4);
  v6 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  v7 = swift_getKeyPath();
  v8 = *(v6 + 272);

  *(v1 + 136) = v8(v7, v4);
  v9 = sub_10000F974(&qword_1004AB458, &qword_1003DF0D8);
  v10 = swift_getKeyPath();
  v11 = *(v9 + 272);

  *(v1 + 144) = v11(v10, v4);
  v12 = swift_getKeyPath();
  v13 = *(sub_10000F974(&unk_1004A1940, &unk_1003D65A0) + 272);

  *(v1 + 152) = v13(v12, v4);
  v14 = swift_getKeyPath();
  v15 = *(sub_10000F974(&qword_1004A11D0, &unk_1003D54E0) + 272);

  *(v1 + 160) = v15(v14, v4);
  sub_10000F974(&qword_1004AB460, &qword_1003DF168);
  swift_getKeyPath();
  *(v1 + 168) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004AB468, &qword_1003DF198);
  swift_getKeyPath();
  *(v1 + 176) = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004AB470, &qword_1003DF1C8);
  swift_getKeyPath();
  *(v1 + 184) = MutableStateValue.__allocating_init(_:_:)();
  v16 = sub_10000F974(&qword_1004A2C58, &qword_1003D73D8);
  v17 = swift_getKeyPath();
  *(v1 + 192) = (*(v16 + 272))(v17, v4);
  v18 = swift_getKeyPath();
  v19 = sub_10000F974(&qword_1004A7530, &unk_1003D58B0);
  *(v1 + 200) = (*(v19 + 272))(v18, v4);
  type metadata accessor for WorldRectangle();
  *(v1 + 208) = OrderedDictionary.init()();
  *(v1 + 216) = v20;
  *(v1 + 224) = v21;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = _swiftEmptyArrayStorage;
  *(v1 + 272) = 768;
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  swift_allocObject();
  *(v1 + 280) = PassthroughSubject.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100141544(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 == 2)
    {
      sub_10013F66C();
      v7 = 0.5;
    }

    else
    {
      sub_10013F66C();
      v7 = 1.0;
    }

    sub_10015D478(v7);
  }

  else
  {
    sub_10013F66C();
    sub_10015D790();
  }

  *(a3 + 273) = a4;
  v9 = 0;
  return a1(&v9);
}

double sub_1001415EC()
{

  StateValue.ifUpdated(_:)();

  v1 = *(**(v0 + 152) + 200);

  v3 = v1(v2);

  (*(*v3 + 296))(sub_1001494A0, v0);

  StateValue.ifUpdated(_:)();

  return result;
}

unsigned __int8 *sub_100141718(unsigned __int8 *result, uint64_t a2)
{
  v2 = result[3];
  if (v2 != *(a2 + 272))
  {
    v3 = *(a2 + 72);
    v5 = objc_opt_self();
    [v5 begin];
    v6 = 1.0;
    if (v2)
    {
      v6 = 0.0;
    }

    [*(v3 + 72) setOpacity:v6];
    result = [v5 commit];
    *(a2 + 272) = v2;
  }

  return result;
}

void sub_1001417A4(uint64_t a1)
{
  v3 = type metadata accessor for ARCamera.TrackingState();
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionState(0);
  sub_10004046C(a1 + *(v6 + 20), v5);
  v7 = type metadata accessor for ARCamera.TrackingState.Reason();
  v8 = (*(*(v7 - 8) + 48))(v5, 2, v7);
  if (v8)
  {
    if (v8 != 1)
    {
      v9 = *(**(v1 + 152) + 144);

      v9(&v16, v10);

      if ((v16 & 0x1000000) == 0 && *(v1 + 272) == 1)
      {
        v11 = *(v1 + 72);
        v12 = objc_opt_self();
        [v12 begin];
        [*(v11 + 72) setOpacity:1.0];
        [v12 commit];
        *(v1 + 272) = 0;
      }

      return;
    }
  }

  else
  {
    sub_10002627C(v5);
  }

  if ((*(v1 + 272) & 1) == 0)
  {
    v13 = *(v1 + 72);
    v14 = objc_opt_self();
    [v14 begin];
    [*(v13 + 72) setOpacity:0.0];
    [v14 commit];
    *(v1 + 272) = 1;
  }
}

void sub_100141984()
{
  v1 = v0;
  swift_beginAccess();
  type metadata accessor for WorldRectangle();

  v2 = OrderedDictionary.values.getter();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((*((swift_isaMask & *v5) + 0xD0))() == 6)
      {

        (*((swift_isaMask & *v6) + 0x2E0))(v8);

        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
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

LABEL_17:
  swift_beginAccess();
  v9 = *(v1 + 112);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v33 = v14;
  v31 = v9 + 64;
  v32 = v9;
  while (v13)
  {
    v16 = v15;
LABEL_27:
    memcpy(__dst, (*(v9 + 56) + 304 * (__clz(__rbit64(v13)) | (v16 << 6))), 0x130uLL);
    v17 = __dst[0];
    if (!__dst[0])
    {
      goto LABEL_51;
    }

    v13 &= v13 - 1;
    v18 = *(__dst[0] + 16);
    sub_1000C1C28(__dst, v38);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v34 = v20;
        while (1)
        {
          if (v19 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_48;
          }

          type metadata accessor for MeasureCamera();

          StateValue.wrappedValue.getter();

          memcpy(v37, __src, sizeof(v37));
          sub_100013C4C(v37);

          StateValue.wrappedValue.getter();

          memcpy(v38, __src, sizeof(v38));
          sub_100013C4C(v38);
          static MeasureCamera.projectPoint(_:viewProjection:viewportSize:)();
          if (qword_1004A0850 != -1)
          {
            v35 = v21;
            swift_once();
            v21 = v35;
          }

          v22 = (qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits);
          if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
          {
            goto LABEL_50;
          }

          if (v21 > 0.0)
          {
            v23 = v22[6];
            v24 = v22[7];
            v25 = v22[8];
            v26 = v22[9];
            CGPoint.init(_:)();
            v40.x = v27;
            v40.y = v28;
            v41.origin.x = v23;
            v41.origin.y = v24;
            v41.size.width = v25;
            v41.size.height = v26;
            if (CGRectContainsPoint(v41, v40))
            {
              break;
            }
          }

          if (v18 == ++v19)
          {
            v20 = v34;
            goto LABEL_43;
          }
        }

        v20 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_49;
        }
      }

      while (v18 - 1 != v19++);
LABEL_43:
      v10 = v31;
      v9 = v32;
      if (v20 >= 2)
      {
        sub_1001494D8(__dst);
        goto LABEL_21;
      }
    }

    if (__dst[21])
    {
      goto LABEL_52;
    }

    v30 = *&__dst[20];
    swift_beginAccess();
    sub_10013F564(v38, v30);
    swift_endAccess();
    sub_1001494D8(__dst);
    memcpy(v37, v38, 0x130uLL);
    sub_100018F04(v37, &qword_1004AA300, &qword_1003DDED0);
LABEL_21:
    v15 = v16;
    v14 = v33;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_27;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_100141E7C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v8 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    *v7 = Contexts.PrivateQueue.init(_:)();
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v9 = v8;
    v10 = _dispatchPreconditionTest(_:)();
    v11 = (*(v5 + 8))(v7, v4);
    if (v10)
    {
      (*((swift_isaMask & *a1) + 0x278))(v11);
      if (*(v12 + 16))
      {
        RingBuffer.subscript.getter();

        memcpy(v27, v25, sizeof(v27));
        memcpy(v26, v25, sizeof(v26));
        sub_1000C1C28(v27, v24);
        v13 = sub_1001494D8(v26);
        v14 = (*((swift_isaMask & *a1) + 0xB8))(v13);
        sub_100142224(v14, v15, v27);

        v16 = sub_1001494D8(v27);
      }

      else
      {
      }

      v17 = *((swift_isaMask & *a1) + 0xB8);
      v2[31] = v17(v16);
      v2[32] = v18;

      v20 = v17(v19);
      sub_100142478(v20, v21, 5);

      sub_100143E04(a1, sub_10014AF98, v2);

      v22 = v2[23];
      v26[0] = 2;
      v23 = *(*v22 + 392);

      v23(v26);

      sub_100143110(5);
      if (qword_1004A0350 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_9:
    sub_1001284A8(a1);
    return;
  }

  __break(1u);
}

double sub_100142224(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  swift_beginAccess();
  v9 = v3[27];
  if (*(v9 + 16) && (v10 = sub_100198230(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = qword_1004A0238;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(22);

    v15._countAndFlagsBits = a1;
    v15._object = a2;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0xD000000000000014;
    v16._object = 0x8000000100409300;
    Log.default(_:isPrivate:)(v16, 0);

    v17 = swift_allocObject();
    v17[2] = v4;
    v17[3] = v14;
    v17[4] = v8;
    v18 = *((swift_isaMask & *v14) + 0x2C8);
    v19 = v14;

    v18(a3, sub_10014AACC, v17);

    sub_100143E04(v19, sub_10014AF98, v4);
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

void sub_100142478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 216);
  if (!*(v8 + 16) || (v9 = sub_100198230(a1, a2), (v10 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = v11;
  sub_100148CCC(a1, a2, a3);
  if (a3 <= 5)
  {
    if (a3 == 1)
    {
      v79 = *(**(v4 + 176) + 400);

      v80 = v79(v108);
      v81 = (*((swift_isaMask & *v12) + 0xB8))();
      sub_100028A7C(v81, v82);

      v80(v108, 0);

      v83 = *(**(v4 + 200) + 144);

      v83(v108, v84);

      v85 = sub_1001C98F0(v108[0], v108[1], v108[2]);

      if (v85)
      {
LABEL_103:
        v97 = *(v4 + 168);
        v108[0] = 0x8000000000000008;
        v98 = *(*v97 + 392);

        v98(v108);

        return;
      }

      if (qword_1004A0180 != -1)
      {
        goto LABEL_106;
      }

      while (qword_1004D4AD8)
      {

        sub_100105B08();

        type metadata accessor for WorldRectangle();

        v86 = OrderedDictionary.values.getter();

        if (v86 >> 62)
        {
          v87 = _CocoaArrayWrapper.endIndex.getter();
          if (!v87)
          {
LABEL_102:

            goto LABEL_103;
          }
        }

        else
        {
          v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v87)
          {
            goto LABEL_102;
          }
        }

        v88 = 0;
        while (1)
        {
          if ((v86 & 0xC000000000000001) != 0)
          {
            v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v88 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_105;
            }

            v89 = *(v86 + 8 * v88 + 32);
          }

          v90 = v89;
          v91 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          if ((*((swift_isaMask & *v89) + 0xD0))() == 9)
          {

            v92 = *((swift_isaMask & *v90) + 0xB8);
            v93 = v90;
            v94 = v92();
            v96 = v95;

            sub_100142478(v94, v96, 5);
            goto LABEL_102;
          }

          ++v88;
          if (v91 == v87)
          {
            goto LABEL_102;
          }
        }

        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        swift_once();
      }

      goto LABEL_122;
    }

    if (a3 == 5)
    {
      swift_beginAccess();
      v13 = *(v4 + 216);
      if (*(v13 + 16))
      {
        v14 = sub_100198230(a1, a2);
        if (v15)
        {
          v16 = *(*(v13 + 56) + 8 * v14);
          swift_endAccess();
          v17 = ((swift_isaMask & *v16) + 560);
          v18 = *((swift_isaMask & *v16) + 0x230);
          v19 = v16;
          v20 = v18();
          if ((v20 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_115;
            }

            v21 = *(v20 + 32);
          }

          v22 = v21;

          v24 = (*((swift_isaMask & *v22) + 0x250))(v23);

          if ((v24 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_117;
            }

            v25 = *(v24 + 32);
          }

          v17 = v25;

          if (qword_1004A0180 == -1)
          {
LABEL_15:
            if (!qword_1004D4AD8)
            {
LABEL_123:
              __break(1u);
              return;
            }

            v102 = v19;

            v100 = v17;
            sub_1001057DC(v17);

            type metadata accessor for WorldRectangle();

            v26 = OrderedDictionary.values.getter();

            v22 = v26;

            if (!(v26 >> 62))
            {
              v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v27)
              {
                goto LABEL_18;
              }

LABEL_118:

LABEL_119:

              return;
            }

LABEL_117:
            v27 = _CocoaArrayWrapper.endIndex.getter();
            if (v27)
            {
LABEL_18:
              v99 = v12;
              if (v27 >= 1)
              {
                v28 = 0;
                v106 = v22 & 0xC000000000000001;
                v104 = v27;
                while (1)
                {
                  if (v106)
                  {
                    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v29 = *(v22 + 8 * v28 + 32);
                  }

                  v30 = *((swift_isaMask & *v29) + 0xB8);
                  v31 = v29;
                  if (v30() == a1 && v32 == a2)
                  {
                  }

                  else
                  {
                    v34 = v22;
                    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v35)
                    {

LABEL_37:
                      v22 = v34;
                      v27 = v104;
                      goto LABEL_23;
                    }

                    v37 = (v30)(v36);
                    v39 = v38;

                    swift_beginAccess();
                    v40 = *(v4 + 216);
                    if (*(v40 + 16) && (v41 = sub_100198230(v37, v39), (v42 & 1) != 0))
                    {
                      v43 = *(*(v40 + 56) + 8 * v41);
                      swift_endAccess();
                      v44 = v43;
                      sub_100148088(v44);

                      v45 = *(v4 + 256);
                      if (!v45)
                      {
                        goto LABEL_36;
                      }
                    }

                    else
                    {
                      swift_endAccess();
                      v45 = *(v4 + 256);
                      if (!v45)
                      {
LABEL_36:

                        goto LABEL_37;
                      }
                    }

                    if (*(v4 + 248) == v37 && v45 == v39)
                    {

                      v22 = v34;
                      v27 = v104;
                    }

                    else
                    {
                      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      v22 = v34;
                      v27 = v104;
                      if ((v47 & 1) == 0)
                      {
                        goto LABEL_23;
                      }
                    }

                    *(v4 + 248) = 0;
                    *(v4 + 256) = 0;
                  }

LABEL_23:
                  if (v27 == ++v28)
                  {

                    goto LABEL_119;
                  }
                }
              }

              goto LABEL_121;
            }

            goto LABEL_118;
          }

LABEL_115:
          swift_once();
          goto LABEL_15;
        }
      }

      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (a3 != 6)
  {
    goto LABEL_84;
  }

  swift_beginAccess();
  if (!*(*(v4 + 216) + 16))
  {
LABEL_83:
    swift_endAccess();
    goto LABEL_84;
  }

  sub_100198230(a1, a2);
  v49 = v48;
  swift_endAccess();
  if ((v49 & 1) == 0)
  {
LABEL_84:

    return;
  }

  v50 = *(v4 + 168);
  v108[0] = v12;
  v51 = *(*v50 + 392);
  v52 = v12;

  v51(v108);

  type metadata accessor for WorldRectangle();

  v53 = OrderedDictionary.values.getter();

  if (v53 >> 62)
  {
    v54 = _CocoaArrayWrapper.endIndex.getter();
    if (v54)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
LABEL_52:
      v101 = v52;
      if (v54 < 1)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v55 = 0;
      v103 = v53;
      v105 = v53 & 0xC000000000000001;
      v107 = v54;
      while (1)
      {
        if (v105)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v57 = *(v53 + 8 * v55 + 32);
        }

        v58 = *((swift_isaMask & *v57) + 0xB8);
        v59 = v57;
        if (v58() == a1 && v60 == a2)
        {

          v56 = v107;
        }

        else
        {
          v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v62 & 1) != 0 || (v64 = (*((swift_isaMask & *v59) + 0xD0))(v63), v64 == 9))
          {

            goto LABEL_68;
          }

          if (v64 == 5)
          {
            v65 = v58();
            v67 = v66;

            sub_100142478(v65, v67, 9);

LABEL_68:

            v53 = v103;
            v56 = v107;
            goto LABEL_55;
          }

          v68 = v58();
          v70 = v69;

          swift_beginAccess();
          v71 = *(v4 + 216);
          if (*(v71 + 16) && (v72 = sub_100198230(v68, v70), (v73 & 1) != 0))
          {
            v74 = *(*(v71 + 56) + 8 * v72);
            swift_endAccess();
            v75 = v74;
            sub_100148088(v75);
          }

          else
          {
            swift_endAccess();
          }

          v56 = v107;
          v76 = *(v4 + 256);
          if (v76)
          {
            if (*(v4 + 248) == v68 && v76 == v70)
            {

              v53 = v103;
LABEL_82:
              *(v4 + 248) = 0;
              *(v4 + 256) = 0;

              goto LABEL_55;
            }

            v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v53 = v103;
            if (v78)
            {
              goto LABEL_82;
            }
          }

          else
          {

            v53 = v103;
          }
        }

LABEL_55:
        if (v56 == ++v55)
        {

          goto LABEL_112;
        }
      }
    }
  }

LABEL_112:
}

uint64_t sub_100143110(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1001494AC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_10046F088;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v13);
}

void *sub_100143410(void *a1)
{
  if (!a1)
  {
    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(42);

    *&__dst[0] = 0xD000000000000028;
    *(&__dst[0] + 1) = 0x8000000100409260;
    v6._countAndFlagsBits = 0xD000000000000014;
    v6._object = 0x8000000100409240;
    String.append(_:)(v6);
    v4 = 0xD000000000000028;
    v5 = 0x8000000100409260;
    goto LABEL_13;
  }

  v1 = a1;
  type metadata accessor for MeasureCamera();
  v2 = v1;

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  if (static MeasureCamera.planeTooFar(for:transform:)())
  {

    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    *&__src[0] = 0xD000000000000028;
    *(&__src[0] + 1) = 0x8000000100409260;
    v3._countAndFlagsBits = 0xD00000000000001BLL;
    v3._object = 0x80000001004092B0;
    String.append(_:)(v3);
    v5 = *(&__src[0] + 1);
    v4 = *&__src[0];
LABEL_13:
    v8 = v5;
    Log.debug(_:isPrivate:)(*&v4, 0);

    return 0;
  }

  StateValue.wrappedValue.getter();

  memcpy(__src, v10, sizeof(__src));
  sub_100013C4C(__src);
  if (static MeasureCamera.planeTooClose(for:transform:)())
  {

    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v10[0] = 0xD000000000000028;
    v10[1] = 0x8000000100409260;
    v7._countAndFlagsBits = 0xD00000000000001BLL;
    v7._object = 0x8000000100409290;
    String.append(_:)(v7);
    v4 = v10[0];
    v5 = v10[1];
    goto LABEL_13;
  }

  return v1;
}

void sub_10014371C()
{
  v1 = v0;
  v2 = *(**(v0 + 168) + 144);

  v2(v51, v3);

  v4 = v51[0];
  v5 = *(**(v0 + 160) + 144);

  v5(v51, v6);

  v7 = v51[0];
  v8 = v51[1];
  v9 = v51[3];
  v10 = v51[2];

  v11 = sub_100143410(v9);
  if (!v11)
  {
    sub_10001B360(v4);
    goto LABEL_14;
  }

  if ((v4 & 0x8000000000000000) == 0 || (__ROR8__(v4, 3) & 0xEFFFFFFFFFFFFFFELL) != 2)
  {
    v12 = *(v1 + 72);
    v13 = *((swift_isaMask & *v11) + 0x2B0);
    v13();
    v14 = simd_float4x4.position.getter();
    v49 = v15;
    (v13)(v14);
    simd_float4x4.up.getter();
    v17 = sub_100169EB8(v49, v16);
    v19 = v17;
    v21 = *(v1 + 80);
    v20 = *(v1 + 88);
    if (!v18)
    {
      if (!v20)
      {
        goto LABEL_17;
      }

      v22 = 0;
      goto LABEL_40;
    }

    v22 = v18;
    if (v20)
    {
      v23 = v17 == v21 && v18 == v20;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

LABEL_17:

        sub_10001B360(v4);
        return;
      }
    }

    if (!sub_100143D14(v19, v22))
    {
      swift_beginAccess();
      v24 = *(v12 + 24);
      if (*(v24 + 16) && (v25 = sub_100198230(v19, v22), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + 48 * v25);
        swift_endAccess();
        if (v27 == 1)
        {
          v28 = *(**(v1 + 200) + 144);

          v28(v51, v29);

          sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
          sub_10000F974(&qword_1004A28B0, &qword_1003D7068);
          swift_dynamicCast();
          v30 = v51[0];
          v46 = v12;
          if (v51[0] >> 62)
          {
LABEL_63:
            v47 = v30 & 0xFFFFFFFFFFFFFF8;
            v50 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v47 = v51[0] & 0xFFFFFFFFFFFFFF8;
            v50 = *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v31 = 0;
          v48 = v30 & 0xC000000000000001;
          while (1)
          {
            if (v50 == v31)
            {

              sub_10001B360(v4);

              return;
            }

            if (v48)
            {
              v32 = v30;
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *(v47 + 16))
              {
                goto LABEL_62;
              }

              v32 = v30;
              v33 = *(v30 + 8 * v31 + 32);
            }

            v34 = v33;
            if (__OFADD__(v31, 1))
            {
              __break(1u);
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

            if ((*((swift_isaMask & *v33) + 0xB8))() == v19 && v35 == v22)
            {
              break;
            }

            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            ++v31;
            v30 = v32;
            if (v37)
            {
              goto LABEL_59;
            }
          }

LABEL_59:

          sub_100142478(v19, v22, 6);

          sub_100143110(3);
          v12 = v46;
          v20 = *(v1 + 88);
          if (!v20)
          {
            goto LABEL_54;
          }

LABEL_39:
          v21 = *(v1 + 80);
LABEL_40:

          if (sub_100143D14(v21, v20))
          {
LABEL_41:

            sub_10001B360(v4);

            v19 = 0;
            v22 = 0;
LABEL_55:
            *(v1 + 80) = v19;
            *(v1 + 88) = v22;
            goto LABEL_56;
          }

          swift_beginAccess();
          v38 = *(v12 + 24);
          if (*(v38 + 16) && (v39 = sub_100198230(v21, v20), (v40 & 1) != 0))
          {
            v41 = *(*(v38 + 56) + 48 * v39);
            swift_endAccess();
            if (v41 == 5)
            {
              goto LABEL_41;
            }
          }

          else
          {
            swift_endAccess();
          }

          swift_beginAccess();
          v42 = *(v12 + 24);
          if (*(v42 + 16) && (v43 = sub_100198230(v21, v20), (v44 & 1) != 0))
          {
            v45 = *(*(v42 + 56) + 48 * v43);
            swift_endAccess();
            if (v45 == 9)
            {
              goto LABEL_41;
            }
          }

          else
          {
            swift_endAccess();
          }

          sub_100142478(v21, v20, 1);

          if (!v22)
          {
            sub_100143110(4);
          }

LABEL_54:
          sub_10001B360(v4);

          goto LABEL_55;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    swift_bridgeObjectRelease_n();
    v19 = 0;
    v22 = 0;
    v20 = *(v1 + 88);
    if (!v20)
    {
      goto LABEL_54;
    }

    goto LABEL_39;
  }

LABEL_14:
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
LABEL_56:
}

BOOL sub_100143D14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 216);
  if (*(v5 + 16) && (v6 = sub_100198230(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = *((swift_isaMask & *v8) + 0xD0);
    v10 = v8;
    if (v9() == 5)
    {

      return 1;
    }

    else
    {
      v12 = v9();

      return v12 == 9;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

void sub_100143E04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *((swift_isaMask & *a1) + 0xD0);
  if ((v6)() != 5)
  {
    v15 = a2;
    if (qword_1004A0238 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(18);

    v6(v7);
    v8._countAndFlagsBits = MeasureObjectState.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD000000000000010;
    v9._object = 0x8000000100409200;
    Log.debug(_:isPrivate:)(v9, 0);

    v11 = (v6)(v10);
    v12 = (*((swift_isaMask & *a1) + 0xB8))();
    sub_10016A400(v11, v12, v13);

    a2 = v15;
  }

  if (qword_1004A0238 != -1)
  {
    swift_once();
  }

  v14._countAndFlagsBits = 0xD00000000000001CLL;
  v14._object = 0x8000000100409220;
  Log.debug(_:isPrivate:)(v14, 0);
  sub_10016A890(a1, a2, a3);
}

double sub_100144044()
{

  return result;
}

uint64_t sub_100144130(uint64_t a1)
{
  v1 = StateObserver.deinit();

  return v1;
}

uint64_t sub_10014421C(uint64_t a1)
{
  sub_100144130(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RectangleInstrument(uint64_t a1)
{
  result = qword_1004AB290;
  if (!qword_1004AB290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014434C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A0380 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_10001D4C4(v2, qword_1004D4F20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001443FC()
{
  sub_10000F974(&qword_1004A3DC0, &qword_1003D7F38);
  sub_10001D47C(&qword_1004A3DC8, &qword_1004A3DC0, &qword_1003D7F38, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100144488(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_10000F974(&unk_1004A3D70, &qword_1003DA860);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10014451C()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100144554(void *a1)
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!qword_1004D4AF8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v2 = *((swift_isaMask & *a1) + 0xD0);

  if (v2(v3) != 5)
  {
    sub_1000C37F4(a1);
  }

  if (!qword_1004D4AF8)
  {
    goto LABEL_11;
  }

  sub_1000914D8(a1);
}

void sub_100144650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(**(a1 + 152) + 144);

  v8(&v14[11], v9);

  if ((v15 & 1) == 0 && (v16 & 1) == 0)
  {
    if (qword_1004A0188 != -1)
    {
      swift_once();
    }

    v10 = qword_1004D4B20;
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    *v7 = static OS_dispatch_queue.main.getter();
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v11 = _dispatchPreconditionTest(_:)();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      v12 = *(**(v10 + 56) + 144);

      v12(&v14[6], v13);

      if ((v14[9] & 1) == 0 && (v14[10] & 1) == 0)
      {
        sub_10008AF48(a2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_100144860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 216);
  if (*(v6 + 16) && (v7 = sub_100198230(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    v10 = v9;
    sub_100148088(v10);

    v12 = *(v3 + 248);
    v14 = *(v3 + 256);
    v13 = (v3 + 248);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    swift_endAccess();
    v12 = *(v3 + 248);
    v14 = *(v3 + 256);
    v13 = (v3 + 248);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v12 == a1 && v14 == a2;
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v13 = 0;
    v13[1] = 0;
  }

  return result;
}

void sub_100144940(uint64_t a1)
{
  __chkstk_darwin(a1);
  v177 = v1;
  v165 = v2;
  v176 = type metadata accessor for DispatchWorkItemFlags();
  v162 = *(v176 - 8);
  __chkstk_darwin(v176);
  v174 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DispatchQoS();
  v161 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0180 != -1)
  {
LABEL_116:
    swift_once();
  }

  v5 = qword_1004D4AD8;
  if (!qword_1004D4AD8)
  {
    goto LABEL_125;
  }

  swift_beginAccess();
  v6 = *(v5 + 80);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v5 + 80) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v180 = *(v5 + 80);

  v14 = 0;
LABEL_7:
  if (v12)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
LABEL_12:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = *(v180[7] + ((v14 << 9) | (8 * v16)));
      v18 = *((swift_isaMask & *v17) + 0x280);
      v19 = v17;
      v20 = v18();
      if (!v21)
      {
        v22 = *((swift_isaMask & *v19) + 0x2C0);
        v23 = *v22(v20);
        *v24.i64 = (*(v23 + 368))();
        v178 = v25;
        v179 = v24;
        v171 = v27;
        *v172 = v26;

        v28 = simd_float4x4.position.getter();
        if ((v165[8].i8[0] & 1) == 0)
        {
          if ((v165[14].i8[8] & 1) == 0)
          {
            v30 = vsubq_f32(v29, v165[7]);
            v31 = vmulq_f32(v30, v30);
            if (v165[14].f32[1] >= sqrtf(v31.f32[2] + vaddv_f32(*v31.f32)))
            {
              v32 = v22(v28);
              *v33.i64 = (*(*v32 + 368))(v32);
              v178 = v34;
              v179 = v33;
              v171 = v36;
              *v172 = v35;

              simd_float4x4.position.getter();
              v37 = static WorldRectangleData.pointLiesWithinRectangle(point:rectangle:pointsCoplanar:)();

              if (v37)
              {

                return;
              }
            }

            else
            {
            }

            goto LABEL_7;
          }

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
          goto LABEL_131;
        }

LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      goto LABEL_7;
    }
  }

  if (!qword_1004D4AC8)
  {
    goto LABEL_126;
  }

  v163 = *(qword_1004D4AC8 + 80);
  if (v163)
  {
    swift_beginAccess();
    type metadata accessor for WorldRectangle();
    v172[0] = v163;

    v38 = OrderedDictionary.values.getter();

    if (v38 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (v39)
      {
LABEL_23:
        v40 = 0;
        *&v171 = v38 & 0xC000000000000001;
        v164 = v38 & 0xFFFFFFFFFFFFFF8;
        v167 = (v162 + 8);
        v168 = &v193[2];
        v166 = (v161 + 8);
        v169 = v39;
        v170 = v38;
        do
        {
          if (v171)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v42 = (v40 + 1);
            if (__OFADD__(v40, 1))
            {
              goto LABEL_114;
            }
          }

          else
          {
            if (v40 >= *(v164 + 16))
            {
              goto LABEL_115;
            }

            v41 = *(v38 + 8 * v40 + 32);
            v42 = (v40 + 1);
            if (__OFADD__(v40, 1))
            {
              goto LABEL_114;
            }
          }

          v43 = *((swift_isaMask & *v41) + 0x260);
          v44 = v172[0];
          v43(v184);
          memcpy(v196, v184, sizeof(v196));
          if (sub_10012B5C4(v196) == 1)
          {
            goto LABEL_121;
          }

          v180 = v42;
          v197 = v196[0];
          sub_10006C92C(&v197, v193, &qword_1004AB4B0, &unk_1003DF950);
          sub_100018F04(v184, &qword_1004AA300, &qword_1003DDED0);
          v45 = v197;
          if (!v197)
          {
            goto LABEL_122;
          }

          v46 = [objc_opt_self() greenColor];
          sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
          v179.i64[0] = static OS_dispatch_queue.main.getter();
          v47 = swift_allocObject();
          v47[2] = v44;
          v47[3] = v45;
          v47[4] = 0x3FF0000000000000;
          v47[5] = v46;
          v47[6] = 0;
          v47[7] = 0xE000000000000000;
          v193[4] = sub_10014AF50;
          v193[5] = v47;
          v193[0] = _NSConcreteStackBlock;
          v193[1] = 1107296256;
          v193[2] = sub_100041180;
          v193[3] = &unk_10046F1F0;
          v48 = _Block_copy(v193);
          v178.i64[0] = v44;
          v49 = v46;

          v50 = v173;
          static DispatchQoS.unspecified.getter();
          v193[0] = _swiftEmptyArrayStorage;
          sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
          sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
          v51 = v174;
          v52 = v176;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v53 = v179.i64[0];
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v48);

          (*v167)(v51, v52);
          (*v166)(v50, v175);
          ++v40;
          v38 = v170;
        }

        while (v180 != v169);
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_23;
      }
    }

    v54 = v165->i64[0];
    v200 = v54;
    if (!v54)
    {
      goto LABEL_127;
    }

    v55 = objc_opt_self();
    v56 = v172[0];
    v57 = [v55 whiteColor];
    sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
    v180 = static OS_dispatch_queue.main.getter();
    v58 = swift_allocObject();
    v58[2] = v56;
    v58[3] = v54;
    v58[4] = 0x3FF0000000000000;
    v58[5] = v57;
    v58[6] = 0x74616469646E6143;
    v58[7] = 0xE900000000000065;
    v193[4] = sub_10014AF50;
    v193[5] = v58;
    v193[0] = _NSConcreteStackBlock;
    v193[1] = 1107296256;
    v193[2] = sub_100041180;
    v193[3] = &unk_10046F240;
    v59 = _Block_copy(v193);
    v60 = v56;
    sub_10006C92C(&v200, v191, &qword_1004AB4B0, &unk_1003DF950);
    v61 = v57;

    v62 = v173;
    static DispatchQoS.unspecified.getter();
    v193[0] = _swiftEmptyArrayStorage;
    sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    v63 = v174;
    v64 = v176;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v65 = v180;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v59);

    (*(v162 + 8))(v63, v64);
    (*(v161 + 8))(v62, v175);
  }

  v66 = v177;
  swift_beginAccess();
  v67 = *(v66 + 112);
  v68 = 1 << *(v67 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v67 + 64);
  v71 = (v68 + 63) >> 6;

  v72 = 0;
  while (v70)
  {
LABEL_43:
    v74 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
    memcpy(v201, (*(v67 + 56) + 304 * (v74 | (v72 << 6))), 0x130uLL);
    sub_1000C1C28(v201, v193);
    sub_1000C1C28(v165, v193);
    sub_100167764(v201);
    memcpy(v191, v185, 0x599uLL);
    if (sub_10014A9EC(v191) != 1)
    {
      v75 = v191[1432];
      sub_100018F04(v185, &qword_1004AB4A8, &unk_1003DF280);
      if (v75)
      {

LABEL_102:

        return;
      }
    }
  }

  while (1)
  {
    v73 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_113;
    }

    if (v73 >= v71)
    {
      break;
    }

    v70 = *(v67 + 64 + 8 * v73);
    ++v72;
    if (v70)
    {
      v72 = v73;
      goto LABEL_43;
    }
  }

  swift_beginAccess();
  type metadata accessor for WorldRectangle();

  v76 = OrderedDictionary.values.getter();

  if (v76 >> 62)
  {
    v77 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v77)
  {

    v79 = 0;
    v80 = 0;
    goto LABEL_98;
  }

  if (v77 < 1)
  {
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v78 = 0;
  v79 = 0;
  v80 = 0;
  for (i = 0; i != v77; ++i)
  {
    if ((v76 & 0xC000000000000001) != 0)
    {
      v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v82 = *(v76 + 8 * i + 32);
    }

    v83 = v82;
    v84 = (*((swift_isaMask & *v82) + 0xD0))();
    if (v84 > 5)
    {
      if (v84 == 9)
      {

        v79 = v83;
      }

      else
      {
        if (v84 != 6)
        {
LABEL_51:

          continue;
        }

        v78 = v83;
      }
    }

    else
    {
      if (v84 == 1)
      {
        v178.i64[0] = v78;
        v180 = v79;
        v179.i64[0] = v80;
        v85 = *((swift_isaMask & *v83) + 0xB8);
        v86 = v83;
        v87 = v85();
        v89 = v88;

        v90 = v177;
        swift_beginAccess();
        v91 = *(v90 + 216);
        if (*(v91 + 16) && (v92 = sub_100198230(v87, v89), (v93 & 1) != 0))
        {
          v94 = *(*(v91 + 56) + 8 * v92);
          swift_endAccess();
          v95 = v94;
          sub_100148088(v95);
        }

        else
        {
          swift_endAccess();
        }

        v96 = *(v177 + 256);
        if (v96)
        {
          if (*(v177 + 248) == v87 && v96 == v89)
          {

            v80 = v179.i64[0];
          }

          else
          {
            v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v80 = v179.i64[0];
            if ((v98 & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          v99 = v177;
          *(v177 + 248) = 0;
          *(v99 + 256) = 0;
        }

        else
        {

          v80 = v179.i64[0];
        }

LABEL_78:
        v79 = v180;
        v78 = v178.i64[0];
        continue;
      }

      if (v84 != 5)
      {
        goto LABEL_51;
      }

      v80 = v83;
    }
  }

  if (!v80)
  {
    goto LABEL_83;
  }

  v101 = *((swift_isaMask & *v80) + 0x260);
  v102 = v80;
  v101(v186);
  memcpy(v194, v186, sizeof(v194));
  if (sub_10012B5C4(v194) == 1)
  {
    goto LABEL_128;
  }

  memcpy(v195, v194, sizeof(v195));
  v103 = v163;
  sub_1000C1C28(v165, v193);
  sub_100167764(v195);
  memcpy(v193, v187, 0x599uLL);
  if (sub_10014A9EC(v193) == 1)
  {

    goto LABEL_83;
  }

  v158 = memcpy(v182, v193, 0x530uLL);
  *&v182[83] = v193[166];
  BYTE8(v182[83]) = v193[167];
  *(&v182[85] + 9) = *(&v193[171] + 1);
  *(&v182[86] + 9) = *(&v193[173] + 1);
  *(&v182[87] + 9) = *(&v193[175] + 1);
  *(&v182[88] + 9) = *(&v193[177] + 1);
  *(&v182[83] + 9) = *(&v193[167] + 1);
  *(&v182[84] + 9) = *(&v193[169] + 1);
  if (v193[167])
  {
    sub_1001668AC(v158);
    if (BYTE8(v182[83]))
    {
      goto LABEL_136;
    }
  }

  v159 = *&v182[83];

  if (v159 >= 1)
  {

    memcpy(v181, v182, 0x599uLL);
    sub_10014AA0C(v181);
    return;
  }

  v160 = BYTE8(v182[89]);
  memcpy(v181, v182, 0x599uLL);
  v100 = sub_10014AA0C(v181);
  if (v160 == 1)
  {

    return;
  }

LABEL_83:
  if (!v78)
  {
LABEL_98:
    v143 = v165;
    sub_1001464C0(v165);
    if (v163)
    {
      v180 = v79;
      v179.i64[0] = v80;
      v181[0] = v143->i64[0];
      v144 = v181[0];
      if (v181[0])
      {
        v145 = objc_opt_self();
        v146 = v163;
        v147 = [v145 greenColor];
        sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
        v178.i64[0] = static OS_dispatch_queue.main.getter();
        v148 = swift_allocObject();
        v148[2] = v146;
        v148[3] = v144;
        v148[4] = 0x3FF0000000000000;
        v148[5] = v147;
        v148[6] = 5719374;
        v148[7] = 0xE300000000000000;
        *&v182[2] = sub_10014AA08;
        *(&v182[2] + 1) = v148;
        *&v182[0] = _NSConcreteStackBlock;
        *(&v182[0] + 1) = 1107296256;
        *&v182[1] = sub_100041180;
        *(&v182[1] + 1) = &unk_10046F100;
        v149 = _Block_copy(v182);
        v150 = v146;
        sub_10006C92C(v181, v192, &qword_1004AB4B0, &unk_1003DF950);
        v151 = v147;

        v152 = v173;
        static DispatchQoS.unspecified.getter();
        *&v182[0] = _swiftEmptyArrayStorage;
        sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
        sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
        v153 = v174;
        v154 = v176;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v155 = v178.i64[0];
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v149);
        (*(v162 + 8))(v153, v154);
        (*(v161 + 8))(v152, v175);
        return;
      }

      goto LABEL_129;
    }

LABEL_104:
    return;
  }

  v180 = v79;
  if (v165[8].i8[0])
  {
    goto LABEL_130;
  }

  v179 = v165[7];
  v104 = *((swift_isaMask & *v78) + 0x260);
  (v104)(v188, v100);
  memcpy(v182, v188, 0x130uLL);
  if (sub_10012B5C4(v182) == 1)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v178 = v182[7];
  v105 = v182[8];
  v106 = sub_100018F04(v188, &qword_1004AA300, &qword_1003DDED0);
  if (v105)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v165[14].i8[8])
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v107 = v165[14].f32[1];
  (v104)(v189, v106);
  memcpy(v181, v189, 0x130uLL);
  if (sub_10012B5C4(v181) == 1)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v108 = *(&v181[28] + 1);
  v109 = v181[29];
  v110 = sub_100018F04(v189, &qword_1004AA300, &qword_1003DDED0);
  if (v109)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v111 = vsubq_f32(v179, v178);
  v112 = vmulq_f32(v111, v111);
  if (sqrtf(v112.f32[2] + vaddv_f32(*v112.f32)) >= (v107 + v108) || (v110 = (*((swift_isaMask & *v78) + 0xD0))(v110), v110 != 6))
  {
    v156 = (*((swift_isaMask & *v78) + 0xB8))(v110);
    sub_100144860(v156, v157);

    sub_1001464C0(v165);

    goto LABEL_102;
  }

  v113 = (*((swift_isaMask & *v78) + 0xB8))();
  v114 = v165;
  sub_100142224(v113, v115, v165);

  if (!v163)
  {

    goto LABEL_104;
  }

  v178.i64[0] = v78;
  v179.i64[0] = v80;
  v199 = v114->i64[0];
  v116 = v199;
  if (!v199)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v117 = objc_opt_self();
  v118 = v163;
  v170 = v117;
  v119 = [v117 greenColor];
  v169 = sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  v177 = static OS_dispatch_queue.main.getter();
  v120 = swift_allocObject();
  v120[2] = v118;
  v120[3] = v116;
  v120[4] = 0x3FF0000000000000;
  v120[5] = v119;
  v120[6] = 5719374;
  v120[7] = 0xE300000000000000;
  v192[4] = sub_10014AF50;
  v192[5] = v120;
  v192[0] = _NSConcreteStackBlock;
  v192[1] = 1107296256;
  v192[2] = sub_100041180;
  v192[3] = &unk_10046F150;
  v121 = _Block_copy(v192);
  v172[0] = v118;
  *&v171 = v119;
  sub_10006C92C(&v199, v190, &qword_1004AB4B0, &unk_1003DF950);

  v122 = v173;
  static DispatchQoS.unspecified.getter();
  v192[0] = _swiftEmptyArrayStorage;
  v123 = sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v124 = sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  v125 = sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  v126 = v174;
  v166 = v125;
  v167 = v124;
  v127 = v176;
  v168 = v123;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v128 = v177;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v121);

  v129 = v172[0];
  v130 = *(v162 + 8);
  v162 += 8;
  v130(v126, v127);
  v131 = *(v161 + 8);
  v161 += 8;
  v131(v122, v175);
  v132 = v129;
  v104(v190);
  memcpy(v192, v190, sizeof(v192));
  if (sub_10012B5C4(v192) != 1)
  {
    v172[0] = v131;
    v177 = v130;
    v198 = v192[0];
    sub_10006C92C(&v198, v183, &qword_1004AB4B0, &unk_1003DF950);
    sub_100018F04(v190, &qword_1004AA300, &qword_1003DDED0);
    v133 = v198;
    if (v198)
    {
      v134 = [v170 redColor];
      v135 = static OS_dispatch_queue.main.getter();
      v136 = swift_allocObject();
      v136[2] = v132;
      v136[3] = v133;
      v136[4] = 0x3FF0000000000000;
      v136[5] = v134;
      v136[6] = 4475983;
      v136[7] = 0xE300000000000000;
      v183[4] = sub_10014AF50;
      v183[5] = v136;
      v183[0] = _NSConcreteStackBlock;
      v183[1] = 1107296256;
      v183[2] = sub_100041180;
      v183[3] = &unk_10046F1A0;
      v137 = _Block_copy(v183);
      v138 = v132;
      v139 = v134;

      v140 = v173;
      static DispatchQoS.unspecified.getter();
      v183[0] = _swiftEmptyArrayStorage;
      v141 = v174;
      v142 = v176;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v137);
      (v177)(v141, v142);
      (v172[0])(v140, v175);
      return;
    }

    goto LABEL_139;
  }

LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

double sub_1001464C0(void *a1)
{
  v2 = v1;
  sub_100146D18(a1);
  if (v3)
  {
    v5 = *((swift_isaMask & *v3) + 0xB8);
    v6 = v3;
    v7 = v3;
    v8 = v5();
    v53 = v9;
    v54 = v6;
    v52 = v8;
    swift_beginAccess();
    v10 = v7;
    sub_10000F974(&qword_1004AB450, &qword_1003DF078);
    OrderedDictionary.subscript.setter();
    swift_endAccess();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v13 = *((swift_isaMask & *v10) + 0xF0);
    v14 = v10;

    v13(sub_10014AB38, v12);

    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    v17 = *((swift_isaMask & *v14) + 0x108);
    v18 = v14;

    v17(sub_10014AB40, v16);

    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    v21 = *((swift_isaMask & *v18) + 0x120);
    v22 = v18;

    v21(sub_10014AB48, v20);

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    v25 = *((swift_isaMask & *v22) + 0x138);
    v26 = v22;

    v25(sub_10014AB50, v24);

    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    v29 = *((swift_isaMask & *v26) + 0x150);
    v30 = v26;

    v29(sub_10014AB5C, v28);

    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    v33 = *((swift_isaMask & *v30) + 0x168);
    v34 = v30;

    v33(sub_10014AB64, v32);

    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    v37 = *((swift_isaMask & *v34) + 0x180);
    v38 = v34;

    v37(sub_10014AB6C, v36);

    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v38;
    v41 = *((swift_isaMask & *v38) + 0x1B0);
    v42 = v38;

    v41(sub_10014AB7C, v40);

    v43 = swift_allocObject();
    *(v43 + 16) = v2;
    *(v43 + 24) = v42;
    v44 = *((swift_isaMask & *v42) + 0x1C8);
    v45 = v42;

    v44(sub_10014ABD0, v43);
    (*((swift_isaMask & *v45) + 0x198))(sub_100066294, 0);
    (*((swift_isaMask & *v45) + 0x1E0))(sub_100148CC0, 0);

    v46 = *(**(v2 + 176) + 400);

    v47 = v46(v51);
    v49 = v48;
    v50 = v45;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v47(v51, 0);
  }

  return result;
}

void sub_100146D18(void *a1)
{
  v4 = v1;
  v6 = *(**(v1 + 160) + 144);

  v6(v64, v7);

  v8 = v64[0];
  v9 = v64[1];
  v10 = v64[3];
  v11 = v64[2];

  v12 = sub_100143410(v10);
  if (!v12)
  {
    return;
  }

  swift_beginAccess();

  v13 = v12;

  v15 = sub_100149864(v14, v4, v13);

  v16 = v15[2];

  if (!v16)
  {
    v4[14] = _swiftEmptyDictionarySingleton;
  }

  v17 = a1[2];
  if (!v17)
  {
    goto LABEL_95;
  }

  v62 = v17 & 0xC000000000000001;
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_78:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_81:
      swift_once();
      goto LABEL_12;
    }
  }

  v61 = type metadata accessor for WorldPoint();
  v18 = objc_allocWithZone(v61);
  v19 = WorldPoint.init(anchor:type:state:)();
  v57 = a1;
  if (v62)
  {
    v2 = v17;
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_83;
    }

    v2 = v17;
  }

  v20 = objc_allocWithZone(v61);
  v21 = WorldPoint.init(anchor:type:state:)();
  v60 = type metadata accessor for WorldLine();
  v22 = objc_allocWithZone(v60);
  v3 = v19;
  v58 = v21;
  v23 = WorldLine.init(end1:end2:initialState:)();
  v17 = *((swift_isaMask & *v23) + 0xD8);
  a1 = v23;
  (v17)(1);

  (*((swift_isaMask & *a1) + 0x2D0))(0);
  if (qword_1004A0180 != -1)
  {
    goto LABEL_81;
  }

LABEL_12:
  if (!qword_1004D4AD8)
  {
    goto LABEL_96;
  }

  v24 = sub_100104B30(a1, 0);

  if ((v24 & 1) == 0)
  {

    return;
  }

  v56 = v3;
  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D56B0;
  *(v3 + 32) = a1;
  v63 = v3;
  v59 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_83:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25 >= 2)
    {
      goto LABEL_16;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v25 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25 < 2)
  {
    goto LABEL_84;
  }

LABEL_16:
  v55 = v13;
  type metadata accessor for WorldAnchor();
  v54 = a1;
  v13 = 2;
  v2 = &swift_isaMask;
  while (1)
  {
    if (v3 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (!v26)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }

    else
    {
      v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_69;
      }
    }

    v27 = __OFSUB__(v26, 1);
    v28 = v26 - 1;
    if (v27)
    {
      goto LABEL_70;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      if (v28 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v29 = *(v3 + 8 * v28 + 32);
    }

    v30 = v29;
    v31 = (*((swift_isaMask & *v29) + 0x250))();

    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_73;
      }

      v32 = *(v31 + 40);
    }

    v4 = v32;

    v33 = v13 % v25;
    if (v62)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v33 >= *(v59 + 16))
      {
        goto LABEL_77;
      }
    }

    v34 = WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)();
    (*((swift_isaMask & *v4) + 0x2F0))(v34);
    (*((swift_isaMask & *v4) + 0xD0))();
    v35 = objc_allocWithZone(v61);
    v36 = WorldPoint.init(anchor:type:state:)();
    v37 = objc_allocWithZone(v60);
    v4 = v4;
    a1 = v36;
    v38 = WorldLine.init(end1:end2:initialState:)();
    (*((swift_isaMask & *v38) + 0x2D0))(0);
    if (!qword_1004D4AD8)
    {
      goto LABEL_94;
    }

    v17 = *((swift_isaMask & *v38) + 0x318);

    (v17)(v4);
    v39 = sub_100104B30(v38, 0);

    if ((v39 & 1) == 0)
    {

      return;
    }

    v40 = v38;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = v63;
    v2 = &swift_isaMask;
    if (v25 == v13)
    {
      break;
    }

    v27 = __OFADD__(v13++, 1);
    if (v27)
    {
      goto LABEL_75;
    }
  }

  if (!qword_1004D4AD8)
  {
    goto LABEL_97;
  }

  if (!(v63 >> 62))
  {
    v17 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_86;
    }

    goto LABEL_50;
  }

LABEL_85:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_50:
  v41 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v13 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_88:

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
    v45 = v44;
    v46 = (*((*v2 & *v44) + 0x250))();

    if ((v46 & 0xC000000000000001) == 0)
    {
      if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v47 = *(v46 + 32);
      goto LABEL_58;
    }

LABEL_90:
    v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_58:
    a1 = v47;

    sub_100104F90(v4, 0, a1, 0);

    if (v17 >= 1)
    {
      v48 = 0;
      do
      {
        if (v13)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v49 = *(v3 + 8 * v48 + 32);
        }

        v4 = v49;
        v50 = (*((*v2 & *v49) + 0x250))();
        if ((v50 & 0xC000000000000001) != 0)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v51 = *(v50 + 32);
        }

        v52 = v51;
        ++v48;

        (*((*v2 & *v52) + 0x2F8))(1);

        v53 = (*((*v2 & *v4) + 0x268))();
        (*((*v2 & *v53) + 0x2F8))(2);
      }

      while (v17 != v48);

      sub_100149A64(v3, v57);

      return;
    }

    goto LABEL_92;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v41 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v3 + 32);
    v43 = *(v3 + 32 + 8 * v41);

    v4 = v43;
    v44 = v42;
    goto LABEL_55;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

uint64_t sub_100147810(void *a1, uint64_t a2)
{
  result = (*((swift_isaMask & *a1) + 0xD0))();
  if (result != 6)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v4 = result;

      sub_100143E04(a1, sub_10014AF98, v4);
    }
  }

  return result;
}

uint64_t sub_1001478D0(void *a1, uint64_t a2)
{
  if ((*((swift_isaMask & *a1) + 0xD0))() == 5)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v4 = *(**(Strong + 160) + 144);

  v4(v23, v5);

  v6 = v23[0];
  v7 = v23[1];
  v8 = v23[3];
  v9 = v23[2];

  v10 = sub_100143410(v8);
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = *((swift_isaMask & *v10) + 0x2B0);
  v11();
  v12 = simd_float4x4.position.getter();
  v22 = v13;
  (v11)(v12);
  simd_float4x4.up.getter();
  v15 = sub_100169EB8(v22, v14);
  v17 = v16;

  if (!v17)
  {
LABEL_11:
    v20 = 0;
    return v20 & 1;
  }

  if (v15 == (*((swift_isaMask & *a1) + 0xB8))() && v17 == v18)
  {

    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

BOOL sub_100147B00(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_10014ABD8(a2, a3);
  }

  else
  {
    return 0;
  }

  return v5;
}

double sub_100147B80(void *a1, uint64_t a2)
{
  if ((*((swift_isaMask & *a1) + 0xD0))() != 5)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(**(Strong + 176) + 400);

      v6 = v5(v9);
      v7 = (*((swift_isaMask & *a1) + 0xB8))();
      sub_100028A7C(v7, v8);

      v6(v9, 0);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100141E7C(a1);
    }
  }

  return result;
}

double sub_100147D18(void *a1, uint64_t a2)
{
  if ((*((swift_isaMask & *a1) + 0xD0))() == 5)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v4 = (*((swift_isaMask & *a1) + 0xB8))();
      sub_100142478(v4, v5, 9);
    }
  }

  return result;
}

double sub_100147DF8(void *a1, uint64_t a2)
{
  if ((*((swift_isaMask & *a1) + 0xD0))() == 9)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v4 = (*((swift_isaMask & *a1) + 0xB8))();
      sub_100142478(v4, v5, 5);
    }
  }

  return result;
}

double sub_100147ED8(void *a1, uint64_t a2)
{
  v3 = *((swift_isaMask & *a1) + 0xD0);
  if (v3() != 9 || v3() != 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(**(Strong + 176) + 400);

      v7 = v6(v10);
      v8 = (*((swift_isaMask & *a1) + 0xB8))();
      sub_100028A7C(v8, v9);

      v7(v10, 0);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100148088(a1);
    }
  }

  return result;
}

void sub_100148088(void *a1)
{
  v2 = *((swift_isaMask & *a1) + 0xB8);
  v3 = v2();
  v5 = v4;
  swift_beginAccess();
  v61 = v1;
  v6 = *(v1 + 216);
  if (*(v6 + 16))
  {
    v7 = sub_100198230(v3, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);
      swift_endAccess();
      v11 = *((swift_isaMask & *v10) + 0x2D8);
      v12 = v10;
      v11();

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = swift_endAccess();
LABEL_6:
  v64 = (v2)(v13);
  v65 = v14;
  swift_beginAccess();
  sub_10000F974(&qword_1004AB450, &qword_1003DF078);
  OrderedDictionary.removeValue(forKey:)();
  swift_endAccess();

  v15 = *(**(v61 + 176) + 400);

  v16 = v15(v63);
  v17 = v2();
  sub_100028A7C(v17, v18);

  v16(v63, 0);

  v20 = (*((swift_isaMask & *a1) + 0x248))(v19);
  v21 = v20;
  if (v20 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (qword_1004A0180 != -1)
      {
        swift_once();
      }

      v27 = qword_1004D4AD8;
      if (!qword_1004D4AD8)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return;
      }

      v28 = *((swift_isaMask & *v25) + 0xB8);

      v29 = v25;
      v30 = v28();
      v32 = v31;

      swift_beginAccess();
      v33 = *(v27 + 96);
      if (!*(v33 + 16) || (v34 = sub_100198230(v30, v32), (v35 & 1) == 0))
      {
        swift_endAccess();

LABEL_26:

        goto LABEL_27;
      }

      v36 = *(*(v33 + 56) + 8 * v34);
      swift_endAccess();
      v37 = v36;
      sub_100106920(v37, 0, 1);
      if (![objc_opt_self() jasperAvailable])
      {
        goto LABEL_25;
      }

      if (qword_1004A03F8 != -1)
      {
        swift_once();
      }

      if ((byte_1004D4FC8 & 1) == 0 || ((*((swift_isaMask & *v37) + 0x2C8))() & 1) == 0)
      {
LABEL_25:

        goto LABEL_26;
      }

      v57 = *(**(v27 + 136) + 400);

      v58 = v57(v63);
      sub_1000C67A8(v30, v32);

      v58(v63, 0);

LABEL_27:
      ++v23;
      if (v26 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  v39 = (*((swift_isaMask & *a1) + 0x230))(v38);
  v40 = v39;
  if (v39 >> 62)
  {
    goto LABEL_59;
  }

  v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41)
  {
LABEL_35:
    v42 = 0;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v43 = *(v40 + 8 * v42 + 32);
      }

      v44 = v43;
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v41 = _CocoaArrayWrapper.endIndex.getter();
        if (!v41)
        {
          goto LABEL_60;
        }

        goto LABEL_35;
      }

      if (qword_1004A0180 != -1)
      {
        swift_once();
      }

      v46 = qword_1004D4AD8;
      if (!qword_1004D4AD8)
      {
        goto LABEL_65;
      }

      v47 = *((swift_isaMask & *v44) + 0xB8);

      v48 = v44;
      v49 = v47();
      v51 = v50;

      swift_beginAccess();
      v52 = *(v46 + 96);
      if (!*(v52 + 16))
      {
        break;
      }

      v53 = sub_100198230(v49, v51);
      if ((v54 & 1) == 0)
      {
        break;
      }

      v55 = *(*(v52 + 56) + 8 * v53);
      swift_endAccess();
      v56 = v55;
      sub_100106920(v56, 0, 1);
      if (![objc_opt_self() jasperAvailable])
      {
        goto LABEL_52;
      }

      if (qword_1004A03F8 != -1)
      {
        swift_once();
      }

      if ((byte_1004D4FC8 & 1) == 0 || ((*((swift_isaMask & *v56) + 0x2C8))() & 1) == 0)
      {
LABEL_52:

        goto LABEL_53;
      }

      v59 = *(**(v46 + 136) + 400);

      v60 = v59(v63);
      sub_1000C67A8(v49, v51);

      v60(v63, 0);

LABEL_54:
      ++v42;
      if (v45 == v41)
      {
        goto LABEL_60;
      }
    }

    swift_endAccess();

LABEL_53:

    goto LABEL_54;
  }

LABEL_60:

  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!qword_1004D4AF8)
  {
    goto LABEL_66;
  }

  sub_1000C3EF8(a1);

  sub_10016B7A8(a1);
}

void sub_1001489B0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *((swift_isaMask & *a2) + 0x260);
    v5 = *(Strong + 96);
    v4(__src);
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_10012B5C4(__dst) == 1)
    {
      __break(1u);
    }

    else
    {
      v6 = __dst[8];
      sub_100018F04(__src, &qword_1004AA300, &qword_1003DDED0);
      if ((v6 & 1) == 0)
      {
        SCNVector3.init(_:)();
        [v5 projectPoint:?];

        if (qword_1004A0850 != -1)
        {
          swift_once();
        }

        if ((*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80) & 1) == 0)
        {
          CGRect.center.getter();
          static CGPoint.- infix(_:_:)();
          CGPoint.length()();

          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}

void sub_100148B70(uint64_t a1, void *a2)
{

  StateValue.wrappedValue.getter();

  memcpy(__dst, __src, sizeof(__dst));
  sub_100013C4C(__dst);
  SCNMatrix4.init(_:)();
  v3 = SCNMatrix4.forward.getter();
  (*((swift_isaMask & *a2) + 0x260))(v6, v3);
  memcpy(__src, v6, 0x130uLL);
  if (sub_10012B5C4(__src) == 1)
  {
    __break(1u);
  }

  else
  {
    v4 = __src[8];
    sub_100018F04(v6, &qword_1004AA300, &qword_1003DDED0);
    if ((v4 & 1) == 0)
    {
      SCNMatrix4.position.getter();
      return;
    }
  }

  __break(1u);
}

double sub_100148CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 216);
  if (*(v8 + 16) && (v9 = sub_100198230(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = *((swift_isaMask & *v11) + 0xD8);
    v13 = v11;
    v12(a3);

    sub_100143E04(v13, sub_1001494D0, v4);
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

void sub_100148DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  v11 = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v12 = Contexts.PrivateQueue.init(_:)();
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    aBlock[4] = sub_10014AAD8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046F2B8;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    v16 = a3;
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_10014AEE4(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v19 + 8))(v7, v5);
    (*(v8 + 8))(v10, v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_100149100(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_100149400(v7, v4, v2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_100149260(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_100149260(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_10018BDA0(result, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_100149350(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = a5;
    sub_1001495B4(v8, a2, a3, v9);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_100149400(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_100149260(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_100149478()
{
  sub_100141984();

  sub_10014371C();
}

double sub_1001494B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10014952C(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 8) = 0u;
  result = a1 + 8;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  return result;
}

void sub_1001495B4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = 0;
  v5 = 0;
  v30 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (!v9)
      {
        v12 = v5;
        while (1)
        {
          v5 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v5 >= v10)
          {
            goto LABEL_19;
          }

          v13 = *(v6 + 8 * v5);
          ++v12;
          if (v13)
          {
            v11 = __clz(__rbit64(v13));
            v9 = (v13 - 1) & v13;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = v11 | (v5 << 6);
      memcpy(__dst, (*(v30 + 56) + 304 * v14), 0x130uLL);
      v15 = *((swift_isaMask & *a4) + 0x2C0);
      v16 = sub_1000C1C28(__dst, v28);
      v17 = v15(v16);
      (*(*v17 + 368))(v17);

      v18 = simd_float4x4.position.getter();
      if (__dst[8].i8[0])
      {
        goto LABEL_22;
      }

      if (__dst[14].i8[8])
      {
        goto LABEL_21;
      }

      v20 = vsubq_f32(v19, __dst[7]);
      v21 = vmulq_f32(v20, v20);
      if (__dst[14].f32[1] >= sqrtf(v21.f32[2] + vaddv_f32(*v21.f32)))
      {
        break;
      }

      sub_1001494D8(__dst);
    }

    v22 = v15(v18);
    (*(*v22 + 368))(v22);

    simd_float4x4.position.getter();
    v23 = static WorldRectangleData.pointLiesWithinRectangle(point:rectangle:pointsCoplanar:)();
    sub_1001494D8(__dst);
    if (v23)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v27++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_19:
  sub_10018BB54(a1, a2, v27, v30);
}

unint64_t *sub_100149864(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  swift_retain_n();
  v12 = a3;
  v13 = v12;
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v20 = v13;
      v17 = sub_100149350(v19, v10, a1, a2, v20);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v12);
  v14 = &v21 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, v11);

  v15 = v13;
  sub_1001495B4(v14, v10, a1, v15);
  v17 = v16;

  if (v4)
  {
    swift_willThrow();
  }

LABEL_6:

  return v17;
}

void *sub_100149A64(unint64_t a1, unint64_t a2)
{
  v4 = 0;
  v89 = _swiftEmptyArrayStorage;
  v93 = _swiftEmptyArrayStorage;
  v90 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v6 = a1 + 8 * v4;
    if (v90)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v51 = v2;
        v52 = _CocoaArrayWrapper.endIndex.getter();
        v2 = v51;
        v34 = v52;
        if (!v52)
        {
          goto LABEL_31;
        }

LABEL_22:
        v35 = v2;
        result = objc_opt_self();
        if (v34 >= 1)
        {
          v36 = result;
          v37 = 0;
          v38 = v35;
          do
          {
            if (v90)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v39 = *(v38 + 8 * v37 + 32);
            }

            v40 = v39;
            ++v37;
            (*((swift_isaMask & *v39) + 0x340))();
            v41 = [v36 standardUserDefaults];
            Defaults.measurementBias.unsafeMutableAddressor();

            v42 = String._bridgeToObjectiveC()();

            [v41 floatForKey:v42];

            __dst[0]._countAndFlagsBits = 0;
            __dst[0]._object = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            v43._object = 0x8000000100409340;
            v43._countAndFlagsBits = 0xD000000000000010;
            String.append(_:)(v43);
            v44 = *((swift_isaMask & *v40) + 0xB8);
            v45 = v40;
            v46 = v44();
            v48 = v47;

            v49._countAndFlagsBits = v46;
            v49._object = v48;
            String.append(_:)(v49);

            v50._countAndFlagsBits = 0x656C206874697720;
            v50._object = 0xEE00203A6874676ELL;
            String.append(_:)(v50);
            Float.write<A>(to:)();
            String.append(_:)(__dst[0]);

            v38 = a2;
          }

          while (v34 != v37);
          goto LABEL_31;
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v7 = *(v6 + 32);
    }

    v8 = v7;
    (*((swift_isaMask & *v7) + 0x268))();

    if (v90)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 + 2 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v6 + 48);
    }

    v10 = v9;
    (*((swift_isaMask & *v9) + 0x268))();

    v11 = objc_allocWithZone(type metadata accessor for WorldLine());
    v12 = WorldLine.init(end1:end2:initialState:)();
    v13 = *((swift_isaMask & *v12) + 0xD8);
    v14 = v12;
    v13(1);

    result = (*((swift_isaMask & *v14) + 0x2D0))(0);
    if (qword_1004A0180 == -1)
    {
      if (!qword_1004D4AD8)
      {
        goto LABEL_54;
      }
    }

    else
    {
      result = swift_once();
      if (!qword_1004D4AD8)
      {
        goto LABEL_54;
      }
    }

    v16 = sub_100104B30(v14, 0);

    if ((v16 & 1) == 0)
    {
      break;
    }

    v18 = *((swift_isaMask & *v14) + 0x268);
    v19 = (v18)(v17);
    (*((swift_isaMask & *v19) + 0xD8))(1);

    v20 = v18();
    (*((swift_isaMask & *v20) + 0x2F8))(2);

    v21 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v4;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v89 = v93;
    if (v4 == 2)
    {
      goto LABEL_20;
    }
  }

LABEL_20:
  v22 = objc_allocWithZone(type metadata accessor for WorldRectangle());
  sub_1000C1C28(a2, __dst);

  v23 = WorldRectangle.init(data:edges:splitters:)();
  v24 = *((swift_isaMask & *v23) + 0xB8);
  v25 = v23;
  v95[0] = v23;
  v96[0]._countAndFlagsBits = v24();
  v96[0]._object = v26;
  swift_beginAccess();
  a2 = a1;
  v27 = v25;
  sub_10000F974(&qword_1004AB450, &qword_1003DF078);
  OrderedDictionary.subscript.setter();
  swift_endAccess();
  __dst[0]._countAndFlagsBits = 0;
  __dst[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  __dst[0]._countAndFlagsBits = 0xD000000000000011;
  __dst[0]._object = 0x8000000100409320;
  v29 = (v24)(v28);
  v31 = v30;
  v86 = v27;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 0x6C2068746977202CLL;
  v33._object = 0xEE00203A73656E69;
  String.append(_:)(v33);
  v2 = a2;
  v92 = __dst[0];
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v34 = *(v5 + 16);
  if (v34)
  {
    goto LABEL_22;
  }

LABEL_31:
  v53 = v89;
  if (v89 >> 62)
  {
    v72 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v89;
    v54 = v72;
    if (!v72)
    {
      goto LABEL_40;
    }

LABEL_33:
    v55 = v53;
    result = objc_opt_self();
    if (v54 >= 1)
    {
      v56 = result;
      v57 = 0;
      v58 = v55;
      v59 = v55 & 0xC000000000000001;
      do
      {
        if (v59)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v60 = *(v58 + 8 * v57 + 32);
        }

        v61 = v60;
        ++v57;
        (*((swift_isaMask & *v60) + 0x340))();
        v62 = [v56 standardUserDefaults];
        Defaults.measurementBias.unsafeMutableAddressor();

        v63 = String._bridgeToObjectiveC()();

        [v62 floatForKey:v63];

        __dst[0]._countAndFlagsBits = 0;
        __dst[0]._object = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        v64._object = 0x8000000100409360;
        v64._countAndFlagsBits = 0xD000000000000010;
        String.append(_:)(v64);
        v65 = *((swift_isaMask & *v61) + 0xB8);
        v66 = v61;
        v67 = v65();
        v69 = v68;

        v70._countAndFlagsBits = v67;
        v70._object = v69;
        String.append(_:)(v70);

        v71._countAndFlagsBits = 0x656C206874697720;
        v71._object = 0xEE00203A6874676ELL;
        String.append(_:)(v71);
        Float.write<A>(to:)();
        String.append(_:)(__dst[0]);

        v58 = v89;
      }

      while (v54 != v57);
      goto LABEL_40;
    }

    goto LABEL_53;
  }

  v54 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54)
  {
    goto LABEL_33;
  }

LABEL_40:
  __dst[0]._countAndFlagsBits = 0;
  __dst[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v96[0]._countAndFlagsBits = 0xD00000000000001FLL;
  v96[0]._object = 0x8000000100409380;
  v74 = *((swift_isaMask & *v86) + 0x260);
  v74(__src, v73);
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_10012B5C4(__dst);
  if (result == 1)
  {
    goto LABEL_55;
  }

  object = __dst[0]._object;
  sub_10006C92C(&object, v95, &qword_1004AB4B0, &unk_1003DF950);
  result = sub_100018F04(__src, &qword_1004AA300, &qword_1003DDED0);
  if (!object)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_10000F974(&qword_1004A3EF0, &qword_1003D5610);
  v75 = Array.description.getter();
  v77 = v76;
  sub_100018F04(&object, &qword_1004AB4B0, &unk_1003DF950);
  v78._countAndFlagsBits = v75;
  v78._object = v77;
  String.append(_:)(v78);

  String.append(_:)(v96[0]);

  v96[0]._countAndFlagsBits = 0;
  v96[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v74(v95, v79);
  memcpy(v96, v95, sizeof(v96));
  result = sub_10012B5C4(v96);
  if (result == 1)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v99[0] = v96[0]._countAndFlagsBits;
  sub_10006C92C(v99, v91, &qword_1004AB4B0, &unk_1003DF950);
  sub_100018F04(v95, &qword_1004AA300, &qword_1003DDED0);
  result = v89;
  if (!v99[0])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v80 = Array.description.getter();
  v82 = v81;
  sub_100018F04(v99, &qword_1004AB4B0, &unk_1003DF950);
  v83._countAndFlagsBits = v80;
  v83._object = v82;
  String.append(_:)(v83);

  v84._countAndFlagsBits = 0xD000000000000020;
  v84._object = 0x80000001004093A0;
  String.append(_:)(v84);

  if (qword_1004A0238 != -1)
  {
    swift_once();
  }

  Log.default(_:isPrivate:)(v92, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v85 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  *(v85 + 24) = *(v85 + 24) + 1.0;
  (*((swift_isaMask & *v86) + 0xD8))(1);
  *(v87 + 104) = 1;
  result = sub_10016AFDC(v86);
  if (qword_1004A0180 != -1)
  {
    result = swift_once();
  }

  if (qword_1004D4AF8)
  {

    sub_1000912D4(v86);

    return v86;
  }

LABEL_59:
  __break(1u);
  return result;
}

double *sub_10014A840(double *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 32;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v7 = (v5 + 304 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
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
        return result;
      }

      result = memcpy(__dst, v7, sizeof(__dst));
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      if (v3[8].i8[0])
      {
        goto LABEL_23;
      }

      if (__dst[8].i8[0])
      {
        goto LABEL_24;
      }

      if (v3[14].i8[8])
      {
        goto LABEL_25;
      }

      if (__dst[14].i8[8])
      {
        goto LABEL_26;
      }

      v9 = vsubq_f32(v3[7], __dst[7]);
      v10 = vmulq_f32(v9, v9);
      if (sqrtf(v10.f32[2] + vaddv_f32(*v10.f32)) < (v3[14].f32[1] + __dst[14].f32[1]))
      {
        break;
      }

      v7 += 304;
      if (v4 == v2)
      {
        return v6;
      }
    }

    sub_1000C1C28(__dst, &v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_10006875C(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_10006875C((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    result = memcpy(&v6[38 * v12 + 4], __dst, 0x130uLL);
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_10014A9EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014AA60()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10014AB00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014AB84(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

BOOL sub_10014ABD8(double a1, double a2)
{
  v5 = *(v2 + 96);
  sub_10000F974(&qword_1004AB4B8, &qword_1003DF290);
  inited = swift_initStackObject();
  *(inited + 32) = SCNHitTestIgnoreHiddenNodesKey;
  *(inited + 16) = xmmword_1003D5230;
  *(inited + 40) = 0;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = SCNHitTestIgnoreChildNodesKey;
  *(inited + 80) = 0;
  *(inited + 120) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = SCNHitTestOptionSearchMode;
  *(inited + 144) = &type metadata for Int;
  *(inited + 152) = SCNHitTestRootNodeKey;
  v26 = *(v2 + 72);
  v7 = *(v26 + 56);
  *(inited + 184) = sub_100018630(0, &qword_1004A1318, SCNNode_ptr);
  *(inited + 160) = v7;
  v8 = v5;
  v9 = SCNHitTestIgnoreHiddenNodesKey;
  v10 = SCNHitTestIgnoreChildNodesKey;
  v11 = SCNHitTestOptionSearchMode;
  v12 = SCNHitTestRootNodeKey;
  v13 = v7;
  sub_10019AEA0(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AB4C0, &unk_1003E14C0);
  swift_arrayDestroy();
  type metadata accessor for SCNHitTestOption(0);
  sub_10014AEE4(&qword_1004A0C30, type metadata accessor for SCNHitTestOption, &unk_1003D4C54);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v8 hitTest:isa options:{a1, a2}];

  sub_100018630(0, &qword_1004AB4C8, SCNHitTestResult_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 node];
      v23 = *(v26 + 56);
      v24 = SCNNode.isDecendent(of:)(v23);

      if (!v24)
      {
        ++v18;
        if (v21 != i)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v24 = 0;
LABEL_16:

  return v24;
}

uint64_t sub_10014AEE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t initializeBufferWithCopyOfBuffer for HistoryUIState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HistoryUIState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HistoryUIState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10014B058()
{
  result = Contexts.UIKit.init()();
  qword_1004D4F38 = result;
  return result;
}

id sub_10014B078@<X0>(void *a1@<X8>)
{
  if (qword_1004A0388 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4F38;
  *a1 = qword_1004D4F38;

  return v2;
}

unint64_t sub_10014B124(uint64_t a1)
{
  result = sub_10014B14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10014B14C()
{
  result = qword_1004AB4F8;
  if (!qword_1004AB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB4F8);
  }

  return result;
}

Class sub_10014B1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100018630(0, &qword_1004ABB80, UIMenuElement_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

double *sub_10014B260()
{
  v1 = type metadata accessor for SpatialPlattersHistoryItem(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MeasurementHistoryItem(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1004AB560;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v18 = _swiftEmptyArrayStorage;

    sub_1000A25B0(0, v11, 0);
    v12 = v18;
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1001594B8(v13, v4, type metadata accessor for SpatialPlattersHistoryItem);
      sub_1001594B8(v4, v8, type metadata accessor for MeasurementHistoryItem);
      sub_10015A064(v4, type metadata accessor for SpatialPlattersHistoryItem);
      v18 = v12;
      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        sub_1000A25B0((v15 > 1), v16 + 1, 1);
        v12 = v18;
      }

      *(v12 + 2) = v16 + 1;
      sub_10015A540(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, type metadata accessor for MeasurementHistoryItem);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_10014B4D0(void *a1, double *a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v83 = a3;
  v84 = a1;
  v85 = a2;
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v14 - 8);
  v82 = v14;
  __chkstk_darwin(v14);
  v80 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v78);
  v79 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v18 = qword_1004AB500;
  *&v7[v18] = [objc_allocWithZone(UIView) init];
  *&v7[qword_1004AB518] = 0;
  *&v7[qword_1004AB520] = 0;
  v19 = qword_1004AB528;
  v20 = sub_10000F974(&unk_1004A6940, &qword_1003DF430);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v22 = qword_1004D5058;
  v23 = *(v20 + 272);
  swift_retain_n();
  *&v8[v19] = v23(KeyPath, v22);
  v24 = qword_1004AB530;
  sub_10000F974(&qword_1004ABB28, &qword_1003DF550);
  swift_getKeyPath();
  *&v8[v24] = MutableStateBinding.__allocating_init(_:_:)();
  v25 = qword_1004AB538;
  sub_10000F974(&qword_1004ABB30, &qword_1003DF580);
  swift_getKeyPath();
  *&v8[v25] = MutableStateBinding.__allocating_init(_:_:)();
  v26 = qword_1004AB540;
  sub_10000F974(&qword_1004ABB38, &qword_1003DF588);
  swift_getKeyPath();
  *&v8[v26] = MutableStateBinding.__allocating_init(_:_:)();
  v27 = qword_1004AB548;
  v28 = sub_10000F974(&unk_1004A6950, &qword_1003DAF60);
  v29 = swift_getKeyPath();
  *&v8[v27] = (*(v28 + 272))(v29, v22);
  v30 = qword_1004AB550;
  sub_10000F974(&qword_1004ABB40, &qword_1003DF590);
  swift_getKeyPath();
  *&v8[v30] = MutableStateValue.__allocating_init(_:_:)();
  v31 = qword_1004AB558;
  sub_10000F974(&qword_1004ABB20, &qword_1003DF520);
  swift_getKeyPath();
  type metadata accessor for SpatialGenericPlatter(0);
  *&v8[v31] = MutableStateValue.__allocating_init(_:_:)();
  *&v8[qword_1004AB560] = _swiftEmptyArrayStorage;
  *&v8[qword_1004AB568] = &_swiftEmptySetSingleton;
  *&v8[qword_1004AB570] = 0;
  v32 = qword_1004AB578;
  v33 = type metadata accessor for IndexPath();
  (*(*(v33 - 8) + 56))(&v8[v32], 1, 1, v33);
  v8[qword_1004AB580] = 0;
  v8[qword_1004AB598] = 0;
  *&v8[qword_1004AB5A8] = 0x4078B00000000000;
  *&v8[qword_1004AB5B0] = 0;
  *&v8[qword_1004AB5B8] = 0;
  swift_unknownObjectWeakInit();
  v8[qword_1004AB5C8] = 0;
  *&v8[qword_1004AB5D0] = &_swiftEmptySetSingleton;
  *&v8[qword_1004AB5D8] = &_swiftEmptySetSingleton;
  *&v8[qword_1004AB5E0] = 0;
  *&v8[qword_1004AB5E8] = 0;
  *&v8[qword_1004AB5F0] = 0;
  v77 = ObjectType;
  v34 = qword_1004D4F40;
  v8[qword_1004D4F40] = 0;
  v8[qword_1004AB600] = 1;
  v8[qword_1004AB608] = 1;
  v8[qword_1004AB610] = 1;
  v8[qword_1004AB618] = 0;
  v35 = &v8[qword_1004AB620];
  *v35 = 0;
  v35[8] = 1;
  swift_unknownObjectWeakInit();
  v36 = qword_1004AB630;
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v89 = _swiftEmptyArrayStorage;
  sub_10015941C(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0, &qword_1003DB8B0);
  sub_10001D47C(&qword_1004A4030, &qword_1004ABEE0, &qword_1003DB8B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v81 + 104))(v80, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
  *&v8[v36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v8[qword_1004AB638] = 0;
  *&v8[qword_1004AB640] = 0;
  v38 = v84;
  v37 = v85;
  *&v8[qword_1004AB5A0] = v84;
  v39 = &v8[qword_1004AB588];
  *v39 = a4;
  v39[1] = a5;
  v39[2] = a6;
  v39[3] = a7;
  *&v8[qword_1004AB5F8] = v37;
  v8[v34] = v83 & 1;
  v40 = objc_allocWithZone(type metadata accessor for HistoryView());
  v41 = v38;

  v42 = [v40 initWithFrame:{a4, a5, a6, a7}];
  *&v8[qword_1004AB508] = v42;
  v43 = *&v42[OBJC_IVAR____TtC7Measure11HistoryView_tableView];
  v44 = objc_allocWithZone(type metadata accessor for CardContainerView());
  v45 = sub_100172FE8(v43, v43);
  v46 = qword_1004AB510;
  *&v8[qword_1004AB510] = v45;
  swift_unknownObjectWeakAssign();
  v47 = *&v8[v46];
  v48 = objc_allocWithZone(type metadata accessor for CardContainerController());
  *&v8[qword_1004AB590] = sub_10018E2F0(v47);
  v88.receiver = v8;
  v88.super_class = v77;
  v49 = objc_msgSendSuper2(&v88, "init");
  type metadata accessor for ViewController(0);
  swift_dynamicCastClassUnconditional();
  v50 = objc_allocWithZone(type metadata accessor for HistoryDetailSheetViewController());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v51 = type metadata accessor for MeasurementDetailSheetViewController();
  v87.receiver = v50;
  v87.super_class = v51;
  v52 = v49;
  v53 = objc_msgSendSuper2(&v87, "initWithNibName:bundle:", 0, 0);
  v54 = *&v52[qword_1004AB518];
  *&v52[qword_1004AB518] = v53;

  swift_dynamicCastClassUnconditional();
  v55 = objc_allocWithZone(v51);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v86.receiver = v55;
  v86.super_class = v51;
  v56 = objc_msgSendSuper2(&v86, "initWithNibName:bundle:", 0, 0);
  v57 = *&v52[qword_1004AB520];
  *&v52[qword_1004AB520] = v56;

  v58 = qword_1004AB508;
  v59 = *&v52[qword_1004AB508];
  v60 = qword_1004AB510;
  v61 = *&v52[qword_1004AB510];
  [v59 addSubview:v61];
  v62 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
  [*&v59[OBJC_IVAR____TtC7Measure11HistoryView_tableView] setDataSource:v52];
  [*&v59[v62] setDelegate:v52];
  [*(v61 + OBJC_IVAR____TtC7Measure17CardContainerView_copyButton) addTarget:v52 action:"copyToPasteboard" forControlEvents:64];
  v63 = v52;
  sub_100173DD8(v61, v63);

  v64 = qword_1004AB590;
  sub_10018E0E0(*&v52[v58]);
  [*&v52[v60] setTranslatesAutoresizingMaskIntoConstraints:0];

  v65 = StateValue.publisher.getter();

  v89 = v65;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000F974(&qword_1004ABB48, &qword_1003DF5C8);
  sub_10001D47C(&unk_1004ABB50, &qword_1004ABB48, &qword_1003DF5C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v66 = Publisher<>.sink(receiveValue:)();

  *&v63[qword_1004AB5B0] = v66;

  v89 = v85;
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  *(v68 + 24) = v41;
  v69 = v41;
  sub_10000F974(&unk_1004A7520, &unk_1003DF5D0);
  sub_10001D47C(&qword_1004A73C0, &unk_1004A7520, &unk_1003DF5D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v70 = Publisher<>.sink(receiveValue:)();

  *&v63[qword_1004AB5B8] = v70;

  v71 = *&v63[v64];
  v72 = *&v71[OBJC_IVAR____TtC7Measure23CardContainerController_containerView];
  v73 = v71;
  v74 = [v72 superview];
  [v74 setNeedsLayout];
  [v74 layoutIfNeeded];

  v63[qword_1004D4F40] = 0;

  return v63;
}

double sub_10014C0A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MeasurementsHistory(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = Contexts.UIKit.init()();
    v27 = v7;
    v17 = v16;
    sub_1001594B8(a1, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeasurementsHistory);
    v18 = *(v11 + 80);
    v26 = v4;
    v19 = v3;
    v20 = (v18 + 16) & ~v18;
    v21 = swift_allocObject();
    sub_10015A540(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for MeasurementsHistory);
    *(v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    aBlock[4] = sub_100159FD8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100041180;
    aBlock[3] = &unk_10046F990;
    v22 = _Block_copy(aBlock);
    v23 = v17;
    v24 = v15;
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_10015941C(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
    sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v26 + 8))(v6, v19);
    (*(v28 + 8))(v9, v27);
  }

  return result;
}

size_t sub_10014C488(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004ABAD0, &qword_1003D7070);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5 + 56;
  v7 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  __chkstk_darwin(v7 - 8);
  v9 = v40 - v8 + 56;
  v10 = type metadata accessor for MeasurementHistoryItem(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 56);
  __chkstk_darwin(v14);
  v16 = (v40 - v15 + 56);
  v17 = type metadata accessor for MeasurementsHistory(0);
  sub_10006C92C(a1 + *(v17 + 24), v9, &qword_1004A28C0, &qword_1003D7080);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100018F04(v9, &qword_1004A28C0, &qword_1003D7080);
  }

  sub_10015A540(v9, v16, type metadata accessor for MeasurementHistoryItem);
  v19 = *(**(a2 + qword_1004AB550) + 144);

  v19(v40, v20);

  v21 = *v16;
  v22 = v16[1];
  v23 = sub_10009F2F8(*v16, v22, v40[0]);

  if (v23)
  {
    return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
  }

  v24 = qword_1004AB568;
  swift_beginAccess();
  v25 = *(a2 + v24);

  v26 = sub_10009F2F8(v21, v22, v25);

  if ((v26 & 1) == 0)
  {
    return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
  }

  v27 = qword_1004AB560;
  v28 = swift_beginAccess();
  v29 = &v39;
  v30 = *(a2 + v27);
  __chkstk_darwin(v28);
  *(&v39 - 2) = v16;

  v31 = sub_10009FF4C(sub_1000A4E88, (&v39 - 4), v30);
  LODWORD(v33) = v32;

  if (v33)
  {
    return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
  }

  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v33 = *(a2 + v27);
  if (v31 >= *(v33 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = *(type metadata accessor for SpatialPlattersHistoryItem(0) - 8);
  v30 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v29 = *(v34 + 72) * v31;
  sub_1001594B8(v33 + v30 + v29, v13, type metadata accessor for MeasurementHistoryItem);
  LODWORD(v33) = sub_1001B2584(v13, v16);
  sub_10015A064(v13, type metadata accessor for MeasurementHistoryItem);
  if (v33)
  {
    return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
  }

  v35 = *(a2 + v27);
  if (v31 >= *(v35 + 16))
  {
    goto LABEL_20;
  }

  sub_10006C92C(v35 + v30 + *(v10 + 24) + v29, v6, &unk_1004ABAD0, &qword_1003D7070);
  v36 = type metadata accessor for MeasurementCapture(0);
  LODWORD(v33) = (*(*(v36 - 8) + 48))(v6, 1, v36);
  sub_100018F04(v6, &unk_1004ABAD0, &qword_1003D7070);
  swift_beginAccess();
  v6 = *(a2 + v27);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v27) = v6;
  if ((result & 1) == 0)
  {
LABEL_21:
    result = sub_10006B8DC(v6);
    v6 = result;
    *(a2 + v27) = result;
  }

  if (v31 >= *(v6 + 2))
  {
    __break(1u);
    return result;
  }

  sub_1000A4EEC(v16, &v6[v30 + v29]);
  *(a2 + v27) = v6;
  swift_endAccess();
  if (*(a2 + qword_1004AB5C8))
  {
    v37 = *v16;
    v38 = v16[1];
    swift_beginAccess();

    sub_100199990(&v39, v37, v38);
    swift_endAccess();

    if (v33 == 1)
    {
      swift_beginAccess();

      sub_100199990(&v39, v37, v38);
      swift_endAccess();
    }
  }

  else
  {
    sub_10014CA74(v31, v16, v33 != 1);
  }

  return sub_10015A064(v16, type metadata accessor for MeasurementHistoryItem);
}

size_t sub_10014CA74(unint64_t a1, uint64_t a2, int a3)
{
  v55 = a3;
  v53 = type metadata accessor for SpatialPlattersHistoryItem(0);
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000F974(&unk_1004ABAD0, &qword_1003D7070);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - v7;
  v9 = type metadata accessor for MeasurementCapture(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v52 - v17;
  IndexPath.init(row:section:)();
  v18 = type metadata accessor for MeasurementHistoryItem(0);
  sub_10006C92C(a2 + *(v18 + 24), v8, &unk_1004ABAD0, &qword_1003D7070);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100018F04(v8, &unk_1004ABAD0, &qword_1003D7070);
LABEL_5:
    v19 = v58;
    v20 = *(*(v58 + qword_1004AB508) + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
    v12 = v57;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v22 = [v20 cellForRowAtIndexPath:isa];

    v23 = v13;
    if (!v22)
    {
      return (*(v14 + 8))(v12, v23);
    }

    ObjectType = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (!v25)
    {

      return (*(v14 + 8))(v12, v23);
    }

    v26 = v25;
    v27 = qword_1004AB560;
    swift_beginAccess();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = *(v19 + v27);
      if (*(v28 + 16) > a1)
      {
        v29 = v54;
        sub_1001594B8(v28 + ((v56[80] + 32) & ~v56[80]) + *(v56 + 9) * a1, v54, type metadata accessor for SpatialPlattersHistoryItem);
        (*(v26 + 16))(v29, ObjectType, v26);

        v30 = type metadata accessor for SpatialPlattersHistoryItem;
        v31 = v29;
LABEL_16:
        sub_10015A064(v31, v30);
        return (*(v14 + 8))(v12, v23);
      }
    }

    __break(1u);
LABEL_21:
    result = sub_10006B8DC(ObjectType);
    ObjectType = result;
    *(v58 + v19) = result;
    v23 = v13;
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  sub_10015A540(v8, v12, type metadata accessor for MeasurementCapture);
  if (v55)
  {
    sub_10015A064(v12, type metadata accessor for MeasurementCapture);
    goto LABEL_5;
  }

  v19 = qword_1004AB560;
  v32 = v58;
  swift_beginAccess();
  ObjectType = *(v32 + v19);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + v19) = ObjectType;
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

  v23 = v13;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  if (*(ObjectType + 16) > a1)
  {
    v34 = ObjectType + ((v56[80] + 32) & ~v56[80]) + *(v56 + 9) * a1;
    v56 = v12;
    URL.path.getter();
    v35 = objc_allocWithZone(UIImage);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v35 initWithContentsOfFile:v36];
    v38 = *(v53 + 20);
    v39 = *(v34 + v38);
    *(v34 + v38) = v37;
    v40 = v58;
    *(v58 + v19) = ObjectType;
    swift_endAccess();

    v41 = *(v40 + qword_1004AB508);
    v42 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
    v43 = *(v41 + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
    sub_10000F974(&qword_1004ABB60, &qword_1003DF5E0);
    v44 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1003D5360;
    v12 = v57;
    (*(v14 + 16))(v45 + v44, v57, v23);
    v46 = v43;
    v47 = Array._bridgeToObjectiveC()().super.isa;

    [v46 reloadRowsAtIndexPaths:v47 withRowAnimation:0];

    if (*(*(v40 + v19) + 16) >= 2uLL)
    {
      v48 = *(v41 + v42);
      v49 = v52;
      IndexPath.init(row:section:)();
      v50 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v14 + 8))(v49, v23);
      [v48 scrollToRowAtIndexPath:v50 atScrollPosition:1 animated:0];
    }

    v51 = [*(*(v40 + qword_1004AB590) + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) superview];
    [v51 setNeedsLayout];
    [v51 layoutIfNeeded];

    v30 = type metadata accessor for MeasurementCapture;
    v31 = v56;
    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_10014D174(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [a3 presentedViewController];
  if (!v6)
  {
LABEL_8:
    sub_100159044(1, v7);

    return;
  }

  v8 = v6;
  type metadata accessor for HistoryDetailSheetViewController();
  if (![v8 isKindOfClass:swift_getObjCClassFromMetadata()])
  {

    goto LABEL_8;
  }

  v9 = *&v5[qword_1004AB518];
  if (v9)
  {
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  [*(*&v5[qword_1004AB508] + OBJC_IVAR____TtC7Measure11HistoryView_tableView) reloadData];
  v10 = *(**&v5[qword_1004AB540] + 400);

  v11 = v10(v13);
  *(v12 + 4) = 0;
  v11(v13, 0);
}

void sub_10014D318()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v25[1] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = qword_1004AB500;
  *(v1 + v7) = [objc_allocWithZone(UIView) init];
  *(v1 + qword_1004AB518) = 0;
  *(v1 + qword_1004AB520) = 0;
  v8 = qword_1004AB528;
  v9 = sub_10000F974(&unk_1004A6940, &qword_1003DF430);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v11 = qword_1004D5058;
  v12 = *(v9 + 272);
  swift_retain_n();
  *(v1 + v8) = v12(KeyPath, v11);
  v13 = qword_1004AB530;
  sub_10000F974(&qword_1004ABB28, &qword_1003DF550);
  swift_getKeyPath();
  *(v1 + v13) = MutableStateBinding.__allocating_init(_:_:)();
  v14 = qword_1004AB538;
  sub_10000F974(&qword_1004ABB30, &qword_1003DF580);
  swift_getKeyPath();
  *(v1 + v14) = MutableStateBinding.__allocating_init(_:_:)();
  v15 = qword_1004AB540;
  sub_10000F974(&qword_1004ABB38, &qword_1003DF588);
  swift_getKeyPath();
  *(v1 + v15) = MutableStateBinding.__allocating_init(_:_:)();
  v16 = qword_1004AB548;
  v17 = sub_10000F974(&unk_1004A6950, &qword_1003DAF60);
  v18 = swift_getKeyPath();
  *(v1 + v16) = (*(v17 + 272))(v18, v11);
  v19 = qword_1004AB550;
  sub_10000F974(&qword_1004ABB40, &qword_1003DF590);
  swift_getKeyPath();
  *(v1 + v19) = MutableStateValue.__allocating_init(_:_:)();
  v20 = qword_1004AB558;
  sub_10000F974(&qword_1004ABB20, &qword_1003DF520);
  swift_getKeyPath();
  type metadata accessor for SpatialGenericPlatter(0);
  *(v1 + v20) = MutableStateValue.__allocating_init(_:_:)();
  *(v1 + qword_1004AB560) = _swiftEmptyArrayStorage;
  *(v1 + qword_1004AB568) = &_swiftEmptySetSingleton;
  *(v1 + qword_1004AB570) = 0;
  v21 = qword_1004AB578;
  v22 = type metadata accessor for IndexPath();
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  *(v1 + qword_1004AB580) = 0;
  *(v1 + qword_1004AB598) = 0;
  *(v1 + qword_1004AB5A8) = 0x4078B00000000000;
  *(v1 + qword_1004AB5B0) = 0;
  *(v1 + qword_1004AB5B8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1004AB5C8) = 0;
  *(v1 + qword_1004AB5D0) = &_swiftEmptySetSingleton;
  *(v1 + qword_1004AB5D8) = &_swiftEmptySetSingleton;
  *(v1 + qword_1004AB5E0) = 0;
  *(v1 + qword_1004AB5E8) = 0;
  *(v1 + qword_1004AB5F0) = 0;
  *(v1 + qword_1004D4F40) = 0;
  *(v1 + qword_1004AB600) = 1;
  *(v1 + qword_1004AB608) = 1;
  *(v1 + qword_1004AB610) = 1;
  *(v1 + qword_1004AB618) = 0;
  v23 = v1 + qword_1004AB620;
  *v23 = 0;
  *(v23 + 8) = 1;
  swift_unknownObjectWeakInit();
  v24 = qword_1004AB630;
  sub_100018630(0, &qword_1004A3F00, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10015941C(&qword_1004A4020, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000F974(&qword_1004ABEE0, &qword_1003DB8B0);
  sub_10001D47C(&qword_1004A4030, &qword_1004ABEE0, &qword_1003DB8B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v27 + 104))(v26, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *(v1 + v24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + qword_1004AB638) = 0;
  *(v1 + qword_1004AB640) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10014D9B8()
{
  v1 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-v2];
  v4 = type metadata accessor for MeasurementHistoryItem(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_10014DB40(v3, v5);
  sub_100018F04(v3, &qword_1004A28C0, &qword_1003D7080);
  v6 = *(**(v0 + qword_1004AB540) + 200);

  v8 = v6(v7);

  v11 = v0;
  (*(*v8 + 296))(sub_10015AC10, v10);

  return result;
}

void sub_10014DB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v90 = *(v4 - 8);
  v91 = v4;
  __chkstk_darwin(v4);
  v88 = v5;
  v89 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v92 = &v85 - v7;
  v8 = type metadata accessor for MeasurementHistoryItem(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v86 = v10;
  v87 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = (&v85 - v12);
  v13 = sub_10000F974(&qword_1004A28C0, &qword_1003D7080);
  __chkstk_darwin(v13 - 8);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  __chkstk_darwin(v19);
  v21 = &v85 - v20;
  v97 = type metadata accessor for MeasurementsHistory(0);
  __chkstk_darwin(v97);
  v93 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v85 - v25;
  v94 = v9;
  v27 = *(v9 + 48);
  v96 = a1;
  if ((v27)(a1, 1, v8, v24) != 1 || (v85 = v18, , StateValue.wrappedValue.getter(), , sub_10006C92C(&v26[v97[5]], v21, &qword_1004A28C0, &qword_1003D7080), sub_10015A064(v26, type metadata accessor for MeasurementsHistory), v28 = v27(v21, 1, v8), v18 = v85, sub_100018F04(v21, &qword_1004A28C0, &qword_1003D7080), v28 != 1) && (v2[qword_1004D4F40] & 1) == 0)
  {
    sub_10006C92C(v96, v15, &qword_1004A28C0, &qword_1003D7080);
    v29 = v8;
    if (v27(v15, 1, v8) == 1)
    {
      v30 = v2;

      v31 = v93;
      StateValue.wrappedValue.getter();

      sub_10006C92C(v31 + v97[5], v18, &qword_1004A28C0, &qword_1003D7080);
      sub_10015A064(v31, type metadata accessor for MeasurementsHistory);
      if (v27(v15, 1, v29) != 1)
      {
        sub_100018F04(v15, &qword_1004A28C0, &qword_1003D7080);
      }
    }

    else
    {
      v30 = v2;
      sub_10015A540(v15, v18, type metadata accessor for MeasurementHistoryItem);
      (*(v94 + 56))(v18, 0, 1, v8);
    }

    if (v27(v18, 1, v29) == 1)
    {
      sub_100018F04(v18, &qword_1004A28C0, &qword_1003D7080);
    }

    else
    {
      v32 = v95;
      sub_10015A540(v18, v95, type metadata accessor for MeasurementHistoryItem);
      v33 = *(**&v30[qword_1004AB550] + 144);

      v33(v98, v34);

      v35 = *v32;
      v36 = v32[1];
      v37 = sub_10009F2F8(*v32, v36, v98[0]);

      if (v37 & 1) != 0 || (v38 = qword_1004AB568, swift_beginAccess(), v39 = *&v30[v38], , v40 = sub_10009F2F8(v35, v36, v39), , (v40))
      {
        sub_10015A064(v32, type metadata accessor for MeasurementHistoryItem);
      }

      else
      {
        v96 = v29;
        v41 = v30;
        if (v30[qword_1004AB598] == 1)
        {
          v30[qword_1004AB598] = 0;
        }

        v42 = v92;
        IndexPath.init(row:section:)();
        v43 = *&v30[qword_1004AB508];
        v44 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
        v97 = *(v43 + OBJC_IVAR____TtC7Measure11HistoryView_tableView);
        v45 = v87;
        sub_1001594B8(v32, v87, type metadata accessor for MeasurementHistoryItem);
        v47 = v89;
        v46 = v90;
        v48 = v91;
        (*(v90 + 16))(v89, v42, v91);
        v49 = (*(v94 + 80) + 24) & ~*(v94 + 80);
        v50 = (v86 + *(v46 + 80) + v49) & ~*(v46 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = v41;
        v52 = v45;
        v53 = v51;
        sub_10015A540(v52, v51 + v49, type metadata accessor for MeasurementHistoryItem);
        (*(v46 + 32))(v53 + v50, v47, v48);
        v54 = swift_allocObject();
        *(v54 + 16) = sub_10015A458;
        *(v54 + 24) = v53;
        v98[4] = sub_100089BB8;
        v98[5] = v54;
        v98[0] = _NSConcreteStackBlock;
        v98[1] = 1107296256;
        v98[2] = sub_1000DC708;
        v98[3] = &unk_10046FA08;
        v55 = _Block_copy(v98);
        v56 = v97;
        v57 = v41;
        v58 = v43;
        v59 = v57;

        v60 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v98[4] = sub_10015A538;
        v98[5] = v60;
        v98[0] = _NSConcreteStackBlock;
        v98[1] = 1107296256;
        v98[2] = sub_1001514AC;
        v98[3] = &unk_10046FA30;
        v61 = _Block_copy(v98);

        [v56 performBatchUpdates:v55 completion:v61];
        _Block_release(v61);
        _Block_release(v55);

        v62 = *(v58 + v44);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v62 rectForRowAtIndexPath:isa];
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;

        v99.origin.x = v65;
        v99.origin.y = v67;
        v99.size.width = v69;
        v99.size.height = v71;
        Height = CGRectGetHeight(v99);
        v73 = &v59[qword_1004AB620];
        if (v59[qword_1004AB620 + 8] == 1)
        {
          v74 = Height;
          memcpy(v98, v95 + *(v96 + 28), 0x346uLL);
          if (!sub_1000218D8(v98))
          {
            sub_1000218E4(v98);
            *v73 = v74;
            *(v73 + 8) = 0;
          }
        }

        v75 = qword_1004AB560;
        swift_beginAccess();
        if (*(*&v59[v75] + 16) >= 2uLL)
        {
          v76 = *(v58 + v44);
          v77 = v89;
          IndexPath.init(row:section:)();
          v78 = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v90 + 8))(v77, v91);
          [v76 scrollToRowAtIndexPath:v78 atScrollPosition:1 animated:1];
        }

        v79 = qword_1004AB618;
        if ((v59[qword_1004AB618] & 1) == 0)
        {
          v80 = [*(*&v59[qword_1004AB590] + OBJC_IVAR____TtC7Measure23CardContainerController_containerView) superview];
          [v80 setNeedsLayout];
          [v80 layoutIfNeeded];

          v59[v79] = 1;
        }

        v81 = *(*&v59[v75] + 16);
        v82 = *(**&v59[qword_1004AB530] + 400);

        v83 = v82(v98);
        *v84 = v81;
        v83(v98, 0);

        (*(v90 + 8))(v92, v91);
        sub_10015A064(v95, type metadata accessor for MeasurementHistoryItem);
      }
    }
  }
}