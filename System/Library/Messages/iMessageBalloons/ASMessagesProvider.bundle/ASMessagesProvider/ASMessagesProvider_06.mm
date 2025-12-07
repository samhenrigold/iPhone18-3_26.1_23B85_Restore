void sub_B409C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController] = 0;

  v3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController] = 0;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  aBlock[4] = sub_B4520;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8830B8;
  v9 = _Block_copy(aBlock);
  sub_F714(a2, a3);
  v10 = v3;

  v11.receiver = v10;
  v11.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v11, "dismissViewControllerWithTransition:completion:", a1, v9);
  _Block_release(v9);
}

void sub_B41C4(void (*a1)(uint64_t), uint64_t a2, char *a3)
{
  if (a1)
  {

    a1(v6);
    sub_F704(a1, a2);
  }

  v7 = [a3 presentedViewController];
  if (v7)
  {
LABEL_4:

    return;
  }

  if (a3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_isPresentingActivityViewController])
  {
    return;
  }

  v8 = *&a3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride];
  if (!v8)
  {
    v11 = [a3 presentingViewController];
    if (!v11)
    {
      return;
    }

    v12 = v11;
    [v11 dismissViewControllerAnimated:0 completion:0];
    v7 = v12;
    goto LABEL_4;
  }

  v9 = *&a3[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride + 8];

  v8(v10);

  sub_F704(v8, v9);
}

id sub_B43E8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PresentationContextViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_B4490()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B44D8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

double sub_B452C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_B4544(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_contextViewController] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_hasPresentedViewController] = 0;
  v5 = &v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_dismissOverride];
  *v5 = 0;
  v5[1] = 0;
  *&v2[v4] = a1;
  v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_animatedContext] = a2;
  type metadata accessor for ActivityViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = a1;
  }

  v2[OBJC_IVAR____TtC18ASMessagesProvider33PresentationContextViewController_isPresentingActivityViewController] = v6 != 0;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for PresentationContextViewController();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  if (v6)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[4] = sub_B4728;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_B3AF0;
    v14[3] = &unk_883108;
    v11 = _Block_copy(v14);
    v12 = v6;

    [v12 setCompletionWithItemsHandler:v11];
    _Block_release(v11);
  }

  [v9 setModalPresentationStyle:5];

  return v9;
}

uint64_t sub_B46F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B4738()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  *&v38 = 0x4044000000000000;
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99EA88);
  v6 = *(v4 - 8);
  v25 = *(v6 + 16);
  v26 = v6 + 16;
  v21 = v5;
  v22 = v4;
  v25(v3, v5, v4);
  v7 = enum case for FontSource.useCase(_:);
  v24 = v1[13];
  v20 = enum case for FontSource.useCase(_:);
  v24(v3, enum case for FontSource.useCase(_:), v0);
  v27 = sub_766CA0();
  v36 = v27;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(&v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v8 = sub_B1B4(&v32);
  v23 = v1[2];
  v23(v8, v3, v0);
  sub_766CB0();
  v19 = v1[1];
  v19(v3, v0);
  v9 = v4;
  v10 = v25;
  v25(v3, v5, v9);
  v11 = v7;
  v12 = v24;
  v24(v3, v11, v0);
  v33 = v27;
  v34 = &protocol witness table for StaticDimension;
  sub_B1B4(&v32);
  v30 = v0;
  v31 = &protocol witness table for FontSource;
  v13 = sub_B1B4(v29);
  v14 = v23;
  v23(v13, v3, v0);
  sub_766CB0();
  v15 = v19;
  v19(v3, v0);
  v10(v3, v21, v22);
  v12(v3, v20, v0);
  v30 = v27;
  v31 = &protocol witness table for StaticDimension;
  sub_B1B4(v29);
  v28[3] = v0;
  v28[4] = &protocol witness table for FontSource;
  v16 = sub_B1B4(v28);
  v14(v16, v3, v0);
  sub_766CB0();
  v15(v3, v0);
  unk_943728 = 0u;
  qword_943738 = 0;
  xmmword_943718 = 0u;
  sub_34698(&v38, &unk_9436A0);
  sub_34698(&v35, &unk_9436C8);
  sub_34698(&v32, &unk_9436F0);
  return sub_33BF8(v29, &xmmword_943718);
}

char *sub_B4B48(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7666D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label;
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v14, qword_99EA88);
  (*(v15 + 16))(v17, v19, v14);
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v18] = sub_4ECF40(v17, 0, 0, 1);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider;
  v22 = type metadata accessor for DividerView(0);
  *&v5[v21] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider;
  v30 = qword_93D2D8;
  v31 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_BE38(v11, qword_99E220);
  sub_395C4(v32, v13);
  v33 = &v31[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  sub_39628(v13, v33);
  swift_endAccess();
  v34 = &v31[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v35 = *(v33 + 1);
  *v34 = *v33;
  *(v34 + 1) = v35;
  [v31 setNeedsLayout];
  [v31 setNeedsLayout];

  sub_3968C(v13);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider;
  v37 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider];
  sub_395C4(v32, v13);
  v38 = &v37[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  v39 = v37;
  sub_39628(v13, v38);
  swift_endAccess();
  v40 = &v39[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v41 = *(v38 + 1);
  *v40 = *v38;
  *(v40 + 1) = v41;
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  sub_3968C(v13);
  v42 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label;
  [*&v28[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label] setTextAlignment:1];
  [v28 addSubview:*&v28[v29]];
  [v28 addSubview:*&v28[v36]];
  [v28 addSubview:*&v28[v42]];

  return v28;
}

uint64_t sub_B4FC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = sub_7664F0();
  v3 = *(v20 - 8);
  *&v4 = __chkstk_darwin(v20).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v4);
  if (qword_93C300 != -1)
  {
    swift_once();
  }

  sub_309E0(&unk_9436A0, v21);
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider];
  v8 = type metadata accessor for DividerView(0);
  v21[23] = v8;
  v21[24] = &protocol witness table for UIView;
  v21[20] = v7;
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label];
  v21[28] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v21[29] = &protocol witness table for UILabel;
  v21[25] = v9;
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider];
  v21[33] = v8;
  v21[34] = &protocol witness table for UIView;
  v21[30] = v10;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  sub_75D650();
  LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(v1, v14, v15, v16, v17);
  (*(v3 + 8))(v6, v20);
  return sub_30A3C(v21);
}

double sub_B51D4(uint64_t a1, double a2, double a3)
{
  if (qword_93C300 != -1)
  {
    swift_once();
  }

  sub_309E0(&unk_9436A0, v16);
  v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider);
  v8 = type metadata accessor for DividerView(0);
  v16[23] = v8;
  v16[24] = &protocol witness table for UIView;
  v16[20] = v7;
  v9 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label);
  v16[28] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16[29] = &protocol witness table for UILabel;
  v16[25] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider);
  v16[33] = v8;
  v16[34] = &protocol witness table for UIView;
  v16[30] = v10;
  swift_getObjectType();
  v11 = v7;
  v12 = v9;
  v13 = v10;
  v14 = sub_34154(a1, v16, a2, a3);
  sub_30A3C(v16);
  return v14;
}

double sub_B53AC(uint64_t a1, double a2)
{
  type metadata accessor for DividerView(0);
  if (qword_93D2D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DividerView.Style(0);
  v5 = sub_BE38(v4, qword_99E220);
  swift_getObjectType();
  sub_50F450(v5, a1);
  return a2;
}

void sub_B54E0()
{
  v1 = v0;
  v2 = sub_7666D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label;
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v2, qword_99EA88);
  (*(v3 + 16))(v5, v7, v2);
  v8 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *(v1 + v6) = sub_4ECF40(v5, 0, 0, 1);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_topDivider;
  v10 = type metadata accessor for DividerView(0);
  *(v1 + v9) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_bottomDivider;
  *(v1 + v11) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_76A840();
  __break(1u);
}

unint64_t *sub_B56C8@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_B574C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedTransitionWithTasks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B57B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_B57FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_B584C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == a1)
      {
        v10 = *(v7 - 2);

        v10(a1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 == 2)
  {
    *(v1 + v3) = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GradientView.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GradientView.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_B5A90()
{
  result = qword_943810;
  if (!qword_943810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943810);
  }

  return result;
}

uint64_t sub_B5AE4()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_99A548);
  sub_BE38(v4, qword_99A548);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

uint64_t sub_B5C40(void *a1, void *a2)
{
  v4 = sub_768380();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7683C0();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v11 = sub_769970();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_B6D68;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_883330;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_B5EDC(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_768380();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7683C0();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75C3B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v23 = sub_769970();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  v18 = v24;
  v17 = v25;
  *(v16 + v15) = v24;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_B6C10;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8832E0;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  v21 = v23;
  sub_769980();
  _Block_release(v19);

  (*(v28 + 8))(v6, v4);
  return (*(v26 + 8))(v9, v27);
}

uint64_t sub_B625C(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_BD88(&qword_9438E0, &qword_782D30);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v34 = &v32 - v6;
  v7 = sub_758FD0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_75C390();
  v17 = sub_758FA0();
  v18 = objc_allocWithZone(IAMValueEvent);
  v19 = sub_769210();
  v35 = v17 & 1;
  v20 = [v18 initWithName:v19 value:{sub_76A990(), v32, v33}];
  swift_unknownObjectRelease();

  [a2 receiveEvent:v20];
  LOBYTE(v19) = sub_758FC0();
  v21 = objc_allocWithZone(IAMValueEvent);
  v22 = sub_769210();
  v35 = v19 & 1;
  v23 = [v21 initWithName:v22 value:sub_76A990()];
  swift_unknownObjectRelease();

  v24 = v34;
  [a2 receiveEvent:v23];

  sub_75C3A0();
  sub_75C390();
  v25 = (v24 + *(v5 + 56));
  v26 = *(v8 + 32);
  v26(v24, v13, v7);
  v26(v25, v10, v7);
  v27 = *(v8 + 88);
  if (v27(v24, v7) == enum case for ArcadeState.purchasing(_:) && v27(v25, v7) == enum case for ArcadeState.subscribed(_:))
  {
    (*(v8 + 96))(v25, v7);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_4C971C();
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    else
    {
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    v30 = *(sub_BD88(&qword_9438E8, &qword_782D38) + 48);
    v31 = sub_760A60();
    (*(*(v31 - 8) + 8))(v25 + v30, v31);
    return (v28)(v24, v7);
  }

  else
  {
    (*(v8 + 8))(v16, v7);
    return sub_B6CC0(v24);
  }
}

uint64_t sub_B66C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_B6740(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_768940();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = [objc_allocWithZone(IAMMessageCoordinator) init];
  v11 = type metadata accessor for InAppMessagesMetricsDelegate(0);
  v12 = objc_allocWithZone(v11);
  sub_768900();

  sub_768ED0();
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesMetricsDelegate_metricsPipeline, v10, v7);
  v35.receiver = v12;
  v35.super_class = v11;
  v13 = objc_msgSendSuper2(&v35, "init");

  *(v4 + 32) = v13;
  sub_761230();
  sub_768ED0();
  v14 = v34;
  *(v4 + 40) = v34;
  sub_BE70(0, &qword_959CF0, ACAccountStore_ptr);
  v15 = v14;
  sub_768ED0();
  v16 = v34;
  v17 = type metadata accessor for InAppMessagesContextProvider();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isInFamily] = 2;
  v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_isFamilyOrganizer] = 2;
  v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_canCreateFamily] = 2;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_arcadeSubscriptionManager] = v15;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_accountStore] = v16;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_rootViewController] = a2;
  v33.receiver = v18;
  v33.super_class = v17;
  v19 = a2;
  *(v4 + 24) = objc_msgSendSuper2(&v33, "init");
  [*(v4 + 16) setMetricsDelegate:*(v4 + 32)];
  *(v4 + 48) = a3;
  v20 = *(v4 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = *(a3 + 16);
  v23 = *(a3 + 24);
  *(a3 + 16) = sub_B6ADC;
  *(a3 + 24) = v21;

  v24 = v20;
  sub_F704(v22, v23);
  v25 = *(v4 + 40);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v4 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  v29 = v27;
  v30 = v25;

  sub_7611A0();

  return v4;
}

uint64_t sub_B6AA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B6AE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B6B1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B6B64(__n128 a1)
{
  v2 = sub_75C3B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_B6C10(__n128 a1)
{
  v2 = *(sub_75C3B0() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_B625C(v1 + v3, v5, v6);
}

double sub_B6CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_B6CC0(uint64_t a1)
{
  v2 = sub_BD88(&qword_9438E0, &qword_782D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B6D28()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 initializeBufferWithCopyOfBuffer for TodayCardGridTracker.TrackedSectionKey(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_B6D94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_B6DDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_B6E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a12@<D4>, double a13@<D5>, double a16, double a17)
{
  v58 = a6;
  v53 = a5;
  v63 = a4;
  v55 = a13;
  v54 = a12;
  v64 = a1;
  v62 = a7;
  v49 = sub_767D60();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_764930();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_7656A0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v52 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v47 - v26;
  v28 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v28);
  v51 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v47 - v31;
  sub_1ED18(a2, &v47 - v31, &qword_963790, qword_77EBC0);
  v50 = v28;
  sub_1ED18(a3, &v32[*(v28 + 48)], &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v60 = v23;
  v33 = *(v23 + 104);
  v34 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!LOBYTE(v65[0]))
  {
    v34 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v35 = *v34;
  v59 = v27;
  v61 = v22;
  v33(v27, v35, v22);
  sub_7629D0();
  v36 = v65[3];
  sub_10A2C(v65, &unk_9443A0, &unk_77E240);
  swift_getKeyPath();
  v37 = v57;
  v38 = v56;
  sub_768750();

  if ((*(v38 + 88))(v21, v37) == enum case for Shelf.ContentType.productReview(_:))
  {
    v39 = v32;
    v40 = v59;
    v41 = v60;
    v42 = v61;
    if (v36)
    {
      (*(v60 + 16))(v52, v59, v61);
      sub_40DC7C(0.0);
      sub_765670();
    }

    else
    {
      v46 = v47;
      sub_75B4A0();
      (*(v41 + 16))(v52, v40, v42);
      sub_434C2C(v46);
      sub_765670();
      (*(v48 + 8))(v46, v49);
    }

    (*(v41 + 8))(v40, v42);
    return sub_10A2C(v39, &qword_9438F8, &unk_787C30);
  }

  else
  {
    v65[0] = v53;
    v43 = v51;
    sub_1ED18(v32, v51, &qword_9438F8, &unk_787C30);
    v44 = *(v50 + 48);
    sub_B7A24();
    sub_75B530();
    (*(v60 + 8))(v59, v61);
    sub_10A2C(v32, &qword_9438F8, &unk_787C30);
    sub_10A2C(v43 + v44, &qword_963790, qword_77EBC0);
    sub_10A2C(v43, &qword_963790, qword_77EBC0);
    return (*(v38 + 8))(v21, v37);
  }
}

uint64_t sub_B7518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_B79D0();

  return sub_75B530();
}

uint64_t sub_B75FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_B79D0();

  return sub_75B520();
}

uint64_t sub_B76F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_B7A80();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_B7754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a12@<D6>, double a13@<D7>, double a14, double a15)
{
  v28[4] = a4;
  *&v28[2] = a12;
  *&v28[3] = a13;
  v28[0] = a5;
  v28[1] = a1;
  v18 = sub_BD88(&qword_9438F8, &unk_787C30);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  v25 = *v15;
  sub_1ED18(a2, v28 - v23, &qword_963790, qword_77EBC0);
  sub_1ED18(a3, &v24[*(v19 + 56)], &qword_963790, qword_77EBC0);
  v28[5] = v25;
  sub_1ED18(v24, v21, &qword_9438F8, &unk_787C30);
  v26 = *(v19 + 56);
  sub_B7A24();

  sub_75B520();
  sub_10A2C(v24, &qword_9438F8, &unk_787C30);

  sub_10A2C(&v21[v26], &qword_963790, qword_77EBC0);
  return sub_10A2C(v21, &qword_963790, qword_77EBC0);
}

uint64_t sub_B7954()
{
  v1 = *v0;
  sub_BD88(&qword_943910, qword_79AC00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77B6D0;
  *(v2 + 56) = &type metadata for GenericPageGridProvider;
  *(v2 + 64) = sub_B7A24();
  *(v2 + 72) = sub_B7AD4();
  *(v2 + 32) = v1;

  return v2;
}

unint64_t sub_B79D0()
{
  result = qword_9438F0;
  if (!qword_9438F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9438F0);
  }

  return result;
}

unint64_t sub_B7A24()
{
  result = qword_943900;
  if (!qword_943900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943900);
  }

  return result;
}

unint64_t sub_B7A80()
{
  result = qword_943908;
  if (!qword_943908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943908);
  }

  return result;
}

unint64_t sub_B7AD4()
{
  result = qword_9595D0;
  if (!qword_9595D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9595D0);
  }

  return result;
}

uint64_t sub_B7B3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v9 + 8))(v11, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    *(a2 + 24) = &type metadata for Double;
    *(a2 + 32) = &protocol witness table for Double;
    *a2 = 0x4040000000000000;
  }

  else
  {
    sub_9A330(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double sub_B7D90()
{
  v102 = sub_BD88(&qword_943918, &qword_782FF8);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v76 - v0;
  v95 = sub_75E580();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_75E5A0();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_767030();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = &v76 - v5;
  v85 = sub_75A480();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_766AF0();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = &v76 - v9;
  __chkstk_darwin(v10);
  v80 = &v76 - v11;
  v93 = sub_766D70();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = &v76 - v14;
  v15 = sub_756EB0();
  v109 = *(v15 - 8);
  v110 = v15;
  __chkstk_darwin(v15);
  v108 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7656C0();
  v106 = *(v17 - 1);
  v107 = v17;
  __chkstk_darwin(v17);
  v105 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_764A60();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v76 - v22;
  v24 = sub_75DAB0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&qword_946810, &qword_783360);
  __chkstk_darwin(v28 - 8);
  v112 = sub_BD88(&qword_943920, &qword_783000);
  v86 = *(v112 - 8);
  __chkstk_darwin(v112);
  v30 = &v76 - v29;
  sub_75A4C0();
  sub_B8DE8(&qword_943928, &type metadata accessor for ReviewSummary, &protocol conformance descriptor for ReviewSummary);
  sub_75C750();
  v31 = aBlock[0];
  if (!aBlock[0])
  {
    return 0.0;
  }

  sub_75C800();
  sub_769060();
  sub_75C720();
  sub_75DA70();
  (*(v25 + 8))(v27, v24);
  sub_764A00();
  sub_B8DE8(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v32 = v104;
  v33 = sub_76A520();
  v34 = *(v103 + 8);
  v34(v20, v32);
  v34(v23, v32);
  swift_getKeyPath();
  sub_B8D1C();
  sub_769040();

  LODWORD(v104) = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  v35 = v105;
  sub_75C7B0();

  sub_765630();
  (*(v106 + 8))(v35, v107);
  swift_getKeyPath();
  sub_75C7B0();

  v36 = v118;
  v37 = v108;
  sub_75A470();
  v77 = v30;
  if ((v33 ^ 1))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_7699E0();
  }

  v40 = sub_657738(v37, v38 & 1, v36);
  (*(v109 + 8))(v37, v110);
  v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v40];
  v42 = [v40 length];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = v36;
  *(v43 + 32) = v41;
  *(v43 + 40) = 1;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_119AC;
  *(v44 + 24) = v43;
  v116 = sub_2636C;
  v117 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v115 = &unk_883458;
  v45 = _Block_copy(aBlock);
  v110 = v36;
  v46 = v41;

  [v40 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

  _Block_release(v45);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v78;
  sub_766AE0();
  v48 = v79;
  sub_766A90();
  v49 = *(v81 + 8);
  v50 = v82;
  v49(v47, v82);
  sub_766AA0();
  v49(v48, v50);
  sub_766D50();
  v108 = v46;
  sub_766DA0();
  v51 = sub_75A4B0();
  v53 = v52;
  v54 = sub_75A460();
  v55 = v83;
  v109 = v31;
  sub_75A490();
  v57 = sub_658400(v51, v53, v54, v55, v56);

  (*(v84 + 8))(v55, v85);
  v107 = v57;
  v43 = v87;
  sub_767020();
  if (qword_93D7B0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v58 = sub_7666D0();
  sub_BE38(v58, qword_99EF08);
  sub_766FF0();
  (*(v89 + 8))(v43, v90);
  sub_766D50();
  v59 = v91;
  sub_766DB0();
  if (qword_93DFF8 != -1)
  {
    swift_once();
  }

  v60 = v95;
  v61 = sub_BE38(v95, qword_9A0660);
  (*(v94 + 16))(v96, v61, v60);
  v62 = v93;
  v115 = v93;
  v116 = &protocol witness table for LabelPlaceholder;
  v63 = sub_B1B4(aBlock);
  v64 = v92;
  v65 = *(v92 + 16);
  v66 = v111;
  v65(v63, v111, v62);
  v113[3] = v62;
  v113[4] = &protocol witness table for LabelPlaceholder;
  v67 = sub_B1B4(v113);
  v65(v67, v59, v62);
  v68 = v97;
  sub_75E590();
  sub_B8DE8(&qword_943938, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v69 = v100;
  v70 = v99;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v71 = v110;
  v72 = v102;
  sub_7673F0();
  v39 = v73;

  (*(v101 + 8))(v69, v72);
  (*(v98 + 8))(v68, v70);
  v74 = *(v64 + 8);
  v74(v59, v62);
  v74(v66, v62);
  (*(v86 + 8))(v77, v112);
  return v39;
}

unint64_t sub_B8D1C()
{
  result = qword_943930;
  if (!qword_943930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943930);
  }

  return result;
}

uint64_t sub_B8D78()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_B8DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_B8DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_B8E30()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99A6A0 = &type metadata for Double;
  qword_99A6A8 = &protocol witness table for Double;
  qword_99A688 = 0x4030000000000000;
  xmmword_99A560 = vdupq_n_s64(0x4064000000000000uLL);
  sub_10914(&v53, &unk_99A570);
  qword_99A598 = sub_BEC00;
  unk_99A5A0 = 0;
  sub_10914(&v50, &unk_99A5A8);
  sub_10914(&v47, &unk_99A5D0);
  sub_10914(&v38, &unk_99A648);
  sub_10914(&v44, &unk_99A5F8);
  sub_10914(&v41, &unk_99A620);
  qword_99A670 = 0;
  unk_99A678 = 0;
  byte_99A680 = 0;
  *&result = 0x1000100010001;
  dword_99A6B0 = 65537;
  qword_99A6B8 = 0;
  byte_99A6C0 = 1;
  return result;
}

double sub_B9468()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99A810 = &type metadata for Double;
  qword_99A818 = &protocol witness table for Double;
  qword_99A7F8 = 0x4020000000000000;
  xmmword_99A6D0 = vdupq_n_s64(0x4061000000000000uLL);
  sub_10914(&v53, &unk_99A6E0);
  qword_99A708 = sub_BEC00;
  unk_99A710 = 0;
  sub_10914(&v50, &unk_99A718);
  sub_10914(&v47, &unk_99A740);
  sub_10914(&v38, &unk_99A7B8);
  sub_10914(&v44, &unk_99A768);
  sub_10914(&v41, &unk_99A790);
  qword_99A7E0 = 0;
  unk_99A7E8 = 0;
  byte_99A7F0 = 0;
  *&result = 16777217;
  dword_99A820 = 16777217;
  qword_99A828 = 0;
  byte_99A830 = 1;
  return result;
}

double sub_B9AA0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4028000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99A980 = &type metadata for Double;
  qword_99A988 = &protocol witness table for Double;
  qword_99A968 = 0x4030000000000000;
  xmmword_99A840 = vdupq_n_s64(0x4054000000000000uLL);
  sub_10914(&v53, &unk_99A850);
  qword_99A878 = sub_BEC00;
  unk_99A880 = 0;
  sub_10914(&v50, &unk_99A888);
  sub_10914(&v47, &unk_99A8B0);
  sub_10914(&v38, &unk_99A928);
  sub_10914(&v44, &unk_99A8D8);
  sub_10914(&v41, &unk_99A900);
  qword_99A950 = 0;
  unk_99A958 = 0;
  byte_99A960 = 0;
  *&result = 0x1000100010001;
  dword_99A990 = 65537;
  qword_99A998 = 0;
  byte_99A9A0 = 1;
  return result;
}

double sub_BA0D0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4024000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99AAF0 = &type metadata for Double;
  qword_99AAF8 = &protocol witness table for Double;
  qword_99AAD8 = 0x4024000000000000;
  xmmword_99A9B0 = vdupq_n_s64(0x4048000000000000uLL);
  sub_10914(&v53, &unk_99A9C0);
  qword_99A9E8 = sub_BEC00;
  unk_99A9F0 = 0;
  sub_10914(&v50, &unk_99A9F8);
  sub_10914(&v47, &unk_99AA20);
  sub_10914(&v38, &unk_99AA98);
  sub_10914(&v44, &unk_99AA48);
  sub_10914(&v41, &unk_99AA70);
  qword_99AAC0 = 0;
  unk_99AAC8 = 0;
  byte_99AAD0 = 0;
  result = 7.29112205e-304;
  dword_99AB00 = 0x1000000;
  qword_99AB08 = 0;
  byte_99AB10 = 1;
  return result;
}

double sub_BA700()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99AC60 = &type metadata for Double;
  qword_99AC68 = &protocol witness table for Double;
  qword_99AC48 = 0x4018000000000000;
  xmmword_99AB20 = vdupq_n_s64(0x4051000000000000uLL);
  sub_10914(&v53, &unk_99AB30);
  qword_99AB58 = sub_BEC00;
  unk_99AB60 = 0;
  sub_10914(&v50, &unk_99AB68);
  sub_10914(&v47, &unk_99AB90);
  sub_10914(&v38, &unk_99AC08);
  sub_10914(&v44, &unk_99ABB8);
  sub_10914(&v41, &unk_99ABE0);
  qword_99AC30 = 0;
  unk_99AC38 = 0;
  byte_99AC40 = 0;
  result = 7.29112205e-304;
  dword_99AC70 = 0x1000000;
  qword_99AC78 = 0;
  byte_99AC80 = 1;
  return result;
}

double sub_BAD30()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99E6E0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = sub_766CA0();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_B1B4(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_93D500 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v4, qword_99E710);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v44);
  v33(v15, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v4, qword_99E7A0);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_B1B4(&v41);
  v33(v17, v3, v0);
  sub_766CB0();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v4, qword_99E7D0);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  sub_766CB0();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_B1B4(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v37);
  v22(v24, v3, v0);
  sub_766CB0();
  v23(v3, v0);
  qword_99ADD0 = &type metadata for Double;
  qword_99ADD8 = &protocol witness table for Double;
  qword_99ADB8 = 0x4020000000000000;
  xmmword_99AC90 = vdupq_n_s64(0x4051000000000000uLL);
  sub_10914(&v53, &unk_99ACA0);
  qword_99ACC8 = sub_BEC00;
  unk_99ACD0 = 0;
  sub_10914(&v50, &unk_99ACD8);
  sub_10914(&v47, &unk_99AD00);
  sub_10914(&v38, &unk_99AD78);
  sub_10914(&v44, &unk_99AD28);
  sub_10914(&v41, &unk_99AD50);
  qword_99ADA0 = 0;
  unk_99ADA8 = 0;
  byte_99ADB0 = 0;
  *&result = 16777217;
  dword_99ADE0 = 16777217;
  qword_99ADE8 = 0;
  byte_99ADF0 = 1;
  return result;
}

uint64_t sub_BB364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_93E080 != -1)
    {
      swift_once();
    }

    v3 = sub_766CA0();
    v4 = v3;
    v5 = qword_9A0710;
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      a2[3] = sub_766970();
      a2[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(a2);
      return sub_766960();
    }

    if (qword_93E078 != -1)
    {
      swift_once();
    }

    v3 = sub_766CA0();
    v4 = v3;
    v5 = qword_9A06F8;
  }

  v6 = sub_BE38(v3, v5);
  a2[3] = v4;
  a2[4] = &protocol witness table for StaticDimension;
  v7 = sub_B1B4(a2);
  v8 = *(*(v4 - 8) + 16);

  return v8(v7, v6, v4);
}

uint64_t sub_BB4E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v4 - 8);
  v55 = &v50 - v5;
  v6 = sub_7623A0();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_9457F0, qword_783FD0);
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v50 = &v50 - v9;
  v10 = sub_75D850();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v57 = &v50 - v16;
  v17 = &selRef_setTextAlignment_;
  v18 = [v1 traitCollection];
  v19 = sub_769A00();

  if (v19)
  {
    v20 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  }

  else
  {
    v20 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  }

  v21 = &v2[v20];
  swift_beginAccess();
  sub_BE140(v21, a1);
  v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton];
  type metadata accessor for TodayCardLockupView();
  sub_75D650();
  v23 = (v22 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize);
  v24 = *(v22 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16);
  v56 = a1;
  if (v24)
  {
    v25 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(v22 + v25, v58);
    sub_B170(v58, v58[3]);
    v17 = &selRef_setTextAlignment_;
    sub_760DE0();
    v27 = v26;
    v29 = v28;
    sub_BEB8(v58);
    *v23 = v27;
    v23[1] = v29;
    *(v23 + 16) = 0;
  }

  else
  {
    v27 = *v23;
  }

  v30 = [v2 v17[23]];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v31 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v31 = qword_946938;
  }

  v32 = sub_BE38(v10, v31);
  (*(v11 + 16))(v13, v32, v10);

  (*(v11 + 32))(v57, v13, v10);
  v33 = (v22 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_presenter);
  swift_beginAccess();
  v34 = v33[3];
  if (v34)
  {
    v35 = sub_B170(v33, v33[3]);
    v36 = *(v34 - 8);
    v37 = __chkstk_darwin(v35);
    v39 = &v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);
    sub_75EC20();
    (*(v36 + 8))(v39, v34);
  }

  v40 = v52;
  v41 = *(v52 + 104);
  v41(v51, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  v42 = v55;
  v41(v55, enum case for OfferButtonSubtitlePosition.right(_:), v6);
  v43.n128_f64[0] = (*(v40 + 56))(v42, 0, 1, v6);
  sub_BE2F8(v43);
  v44 = v50;
  sub_760940();
  v45 = v57;
  sub_75D820();
  v47 = v46;

  (*(v53 + 8))(v44, v54);
  result = (*(v11 + 8))(v45, v10);
  v49 = v56;
  *(v56 + 272) = v27;
  *(v49 + 280) = v47;
  *(v49 + 288) = 0;
  return result;
}

double sub_BBAF0(void *a1, double a2)
{
  v5 = sub_75D850();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v22[-v10 - 8];
  sub_BB4E0(v27);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_BE140(v2 + v12, v26);
  [v2 layoutMargins];
  if (sub_769A00())
  {
    v13 = v26;
  }

  else
  {
    v13 = v27;
  }

  sub_BE140(v13, v22);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v14 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v14 = qword_946938;
  }

  v15 = sub_BE38(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  (*(v6 + 32))(v11, v8, v5);
  if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
  {
    sub_75D800();
    v17 = v16;
    sub_75D800();
    v23 = v17;
    v24 = v18;
    v25 = 0;
  }

  v19 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a1, a2);
  (*(v6 + 8))(v11, v5);
  sub_BE0EC(v22);
  sub_BE0EC(v26);
  sub_BE0EC(v27);
  return v19;
}

CGFloat sub_BBE58()
{
  v1 = sub_75D850();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  sub_BB4E0(v22);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_BE140(v0 + v8, v21);
  v9 = [v0 traitCollection];
  [v0 layoutMargins];
  if (sub_769A00())
  {
    v10 = v21;
  }

  else
  {
    v10 = v22;
  }

  sub_BE140(v10, v17);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v11 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v11 = qword_946938;
  }

  v12 = sub_BE38(v1, v11);
  (*(v2 + 16))(v4, v12, v1);
  (*(v2 + 32))(v7, v4, v1);
  if ((v20 & 1) == 0 && v18 == 0.0 && v19 == 0.0)
  {
    sub_75D800();
    v14 = v13;
    sub_75D800();
    v18 = v14;
    v19 = v15;
    v20 = 0;
  }

  _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v17, v9, 0.0);

  (*(v2 + 8))(v7, v1);
  sub_BE0EC(v17);
  sub_BE0EC(v21);
  sub_BE0EC(v22);
  return UIViewNoIntrinsicMetric;
}

uint64_t sub_BC21C@<X0>(uint64_t *a1@<X8>)
{
  sub_BB4E0(v140);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel);
    v4 = sub_75BB20();
    *(&v116[1] + 1) = v4;
    *&v116[2] = &protocol witness table for UILabel;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
    }

    *&v116[0] = v5;
    sub_10914(v116, v139);
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    if (v9)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = &protocol witness table for UILabel;
    }

    else
    {
      v12 = 0;
    }

    v136 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    *&v137 = 0;
    *(&v137 + 1) = v11;
    v138 = v12;
    v133 = 0u;
    v134 = 0u;
    v135 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
    v7 = sub_75BB20();
    v8 = v7;
    v139[4] = &protocol witness table for UILabel;
    v139[3] = v7;
    v139[0] = v6;
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel);
    if (v9)
    {
      v10 = type metadata accessor for SearchAdTransparencyLabel(0);
      v132 = &protocol witness table for UILabel;
      v131 = v10;
      *&v130 = v9;
      sub_10914(&v130, v116);
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
      if (v13)
      {
        v14 = &protocol witness table for UILabel;
        v15 = v7;
      }

      else
      {
        v15 = 0;
        v14 = 0;
        *(&v116[0] + 1) = 0;
        *&v116[1] = 0;
      }

      *&v116[0] = v13;
      *(&v116[1] + 1) = v15;
      *&v116[2] = v14;
      v16 = v6;
      v9 = 0;
      v6 = v13;
    }

    v17 = v6;
    v136 = v116[0];
    v137 = v116[1];
    v138 = *&v116[2];
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
    v135 = &protocol witness table for UILabel;
    *(&v134 + 1) = v8;
    *&v133 = v3;
  }

  v18 = v9;
  v19 = v3;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkPresenter))
  {
    v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
    v21 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_BE140(v140, &v130);
  v24 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v25 = sub_759210();
  v129 = &protocol witness table for UIView;
  v128 = v25;
  v103 = v24;
  v127[0] = v24;
  v26 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v27 = sub_75BB20();
  v28 = v27;
  v126[4] = &protocol witness table for UILabel;
  v126[3] = v27;
  v102 = v26;
  v126[0] = v26;
  v29 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  v101 = v29;
  if (v29)
  {
    v30 = &protocol witness table for UILabel;
    v31 = v27;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v125[2] = 0;
    v125[1] = 0;
  }

  v125[0] = v29;
  v125[3] = v31;
  v125[4] = v30;
  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v124[4] = &protocol witness table for UILabel;
  v124[3] = v27;
  v100 = v32;
  v124[0] = v32;
  sub_134D8(v139, v121);
  sub_1ED18(&v136, v120, &qword_9417D0, &unk_780EA0);
  if (v20)
  {
    v33 = &protocol witness table for UILabel;
    v34 = v20;
    v35 = v28;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v119[2] = 0;
    v119[1] = 0;
  }

  v119[0] = v34;
  v119[3] = v35;
  v119[4] = v33;
  if (v21)
  {
    v36 = &protocol witness table for UILabel;
  }

  else
  {
    v28 = 0;
    v36 = 0;
    v118[2] = 0;
    v118[1] = 0;
  }

  v118[0] = v21;
  v118[3] = v28;
  v118[4] = v36;
  sub_1ED18(&v133, v117, &qword_9417D0, &unk_780EA0);
  v37 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v109 = type metadata accessor for OfferButton();
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_BE19C();
  v108 = swift_allocObject();
  *a1 = v108;
  sub_BE140(&v130, v116);
  v104 = v35;
  BYTE8(v116[47]) = v35 != 0;
  v38 = v128;
  v39 = v129;
  sub_B170(v127, v128);
  v40 = sub_76A480();
  v99 = &v99;
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v99 - v42;
  v107 = v20;
  v106 = v21;
  v105 = v37;
  v44 = v103;
  v45 = v102;
  v46 = v101;
  v47 = v100;
  sub_766510();
  v48 = *(v38 - 8);
  if ((*(v48 + 48))(v43, 1, v38) == 1)
  {
    (*(v41 + 8))(v43, v40);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v38;
    v115 = v39;
    v49 = sub_B1B4(&v113);
    (*(v48 + 32))(v49, v43, v38);
  }

  *(&v116[22] + 8) = v113;
  *(&v116[23] + 8) = v114;
  *(&v116[24] + 1) = v115;
  sub_1ED18(v126, v110, &qword_9417D0, &unk_780EA0);
  v50 = v111;
  if (v111)
  {
    v51 = v112;
    sub_B170(v110, v111);
    v52 = sub_76A480();
    v53 = *(v52 - 8);
    __chkstk_darwin(v52);
    v55 = &v99 - v54;
    sub_7669B0();
    v56 = *(v50 - 8);
    if ((*(v56 + 48))(v55, 1, v50) == 1)
    {
      (*(v53 + 8))(v55, v52);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v50;
      v115 = v51;
      v57 = sub_B1B4(&v113);
      (*(v56 + 32))(v57, v55, v50);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v110, &qword_9417D0, &unk_780EA0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[25] = v113;
  v116[26] = v114;
  *&v116[27] = v115;
  sub_1ED18(v125, v110, &qword_9417D0, &unk_780EA0);
  v58 = v111;
  if (v111)
  {
    v59 = v112;
    sub_B170(v110, v111);
    v60 = sub_76A480();
    v61 = *(v60 - 8);
    __chkstk_darwin(v60);
    v63 = &v99 - v62;
    sub_7669B0();
    v64 = *(v58 - 8);
    if ((*(v64 + 48))(v63, 1, v58) == 1)
    {
      (*(v61 + 8))(v63, v60);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v58;
      v115 = v59;
      v65 = sub_B1B4(&v113);
      (*(v64 + 32))(v65, v63, v58);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v110, &qword_9417D0, &unk_780EA0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[27] + 8) = v113;
  *(&v116[28] + 8) = v114;
  *(&v116[29] + 1) = v115;
  sub_134D8(v124, &v116[30]);
  v66 = v122;
  v67 = v123;
  sub_B170(v121, v122);
  v68 = sub_76A480();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v99 - v70;
  if (v104)
  {
    sub_7669A0();
  }

  else
  {
    sub_7669B0();
  }

  v72 = *(v66 - 8);
  if ((*(v72 + 48))(v71, 1, v66) == 1)
  {
    (*(v69 + 8))(v71, v68);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v66;
    v115 = v67;
    v73 = sub_B1B4(&v113);
    (*(v72 + 32))(v73, v71, v66);
  }

  *(&v116[32] + 8) = v113;
  *(&v116[33] + 8) = v114;
  *(&v116[34] + 1) = v115;
  sub_1ED18(v120, v110, &qword_9417D0, &unk_780EA0);
  v74 = v111;
  if (v111)
  {
    v75 = v112;
    sub_B170(v110, v111);
    v76 = sub_76A480();
    v77 = *(v76 - 8);
    __chkstk_darwin(v76);
    v79 = &v99 - v78;
    sub_7669B0();
    v80 = *(v74 - 8);
    if ((*(v80 + 48))(v79, 1, v74) == 1)
    {
      (*(v77 + 8))(v79, v76);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v74;
      v115 = v75;
      v81 = sub_B1B4(&v113);
      (*(v80 + 32))(v81, v79, v74);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v110, &qword_9417D0, &unk_780EA0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[35] = v113;
  v116[36] = v114;
  *&v116[37] = v115;
  sub_1ED18(v119, &v116[37] + 8, &qword_9417D0, &unk_780EA0);
  sub_1ED18(v118, v110, &qword_9417D0, &unk_780EA0);
  v82 = v111;
  if (v111)
  {
    v83 = v112;
    sub_B170(v110, v111);
    v84 = sub_76A480();
    v85 = *(v84 - 8);
    __chkstk_darwin(v84);
    v87 = &v99 - v86;
    sub_7669A0();
    v88 = *(v82 - 8);
    if ((*(v88 + 48))(v87, 1, v82) == 1)
    {
      (*(v85 + 8))(v87, v84);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v82;
      v115 = v83;
      v89 = sub_B1B4(&v113);
      (*(v88 + 32))(v89, v87, v82);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v110, &qword_9417D0, &unk_780EA0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[40] = v113;
  v116[41] = v114;
  *&v116[42] = v115;
  sub_1ED18(v117, v110, &qword_9417D0, &unk_780EA0);
  v90 = v111;
  if (v111)
  {
    v91 = v112;
    sub_B170(v110, v111);
    v92 = sub_76A480();
    v93 = *(v92 - 8);
    __chkstk_darwin(v92);
    v95 = &v99 - v94;
    sub_7669B0();
    v96 = *(v90 - 8);
    if ((*(v96 + 48))(v95, 1, v90) == 1)
    {
      sub_10A2C(v117, &qword_9417D0, &unk_780EA0);
      sub_10A2C(v120, &qword_9417D0, &unk_780EA0);
      sub_BE0EC(&v130);
      sub_10A2C(v118, &qword_9417D0, &unk_780EA0);
      sub_BEB8(v124);
      sub_10A2C(v125, &qword_9417D0, &unk_780EA0);
      sub_10A2C(v126, &qword_9417D0, &unk_780EA0);
      sub_10A2C(v119, &qword_9417D0, &unk_780EA0);
      (*(v93 + 8))(v95, v92);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v90;
      v115 = v91;
      v97 = sub_B1B4(&v113);
      (*(v96 + 32))(v97, v95, v90);
      sub_10A2C(v117, &qword_9417D0, &unk_780EA0);
      sub_10A2C(v120, &qword_9417D0, &unk_780EA0);
      sub_BE0EC(&v130);
      sub_10A2C(v118, &qword_9417D0, &unk_780EA0);
      sub_BEB8(v124);
      sub_10A2C(v125, &qword_9417D0, &unk_780EA0);
      sub_10A2C(v126, &qword_9417D0, &unk_780EA0);
      sub_10A2C(v119, &qword_9417D0, &unk_780EA0);
    }

    sub_BEB8(v110);
  }

  else
  {
    sub_10A2C(v117, &qword_9417D0, &unk_780EA0);
    sub_10A2C(v120, &qword_9417D0, &unk_780EA0);
    sub_BE0EC(&v130);
    sub_10A2C(v118, &qword_9417D0, &unk_780EA0);
    sub_BEB8(v124);
    sub_10A2C(v125, &qword_9417D0, &unk_780EA0);
    sub_10A2C(v126, &qword_9417D0, &unk_780EA0);
    sub_10A2C(v119, &qword_9417D0, &unk_780EA0);
    sub_10A2C(v110, &qword_9417D0, &unk_780EA0);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[42] + 8) = v113;
  *(&v116[43] + 8) = v114;
  *(&v116[44] + 1) = v115;
  *&v116[45] = v105;
  *(&v116[45] + 8) = v113;
  *(&v116[46] + 1) = v109;
  *&v116[47] = &protocol witness table for UIView;
  memcpy((v108 + 16), v116, 0x2F9uLL);

  sub_10A2C(&v136, &qword_9417D0, &unk_780EA0);
  sub_BE0EC(v140);
  sub_BEB8(v121);
  sub_BEB8(v127);
  sub_10A2C(&v133, &qword_9417D0, &unk_780EA0);
  return sub_BEB8(v139);
}

void sub_BD3C0()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v45 = &v44 - v4;
  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkPresenter;
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkPresenter);
  v9 = !v7 || (v8 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v7 + v8) != 1) || [v5 numberOfLines] == 0;
  [v5 setHidden:{v9, v3}];
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
  v11 = *(v1 + v6);
  if (v11 && (v12 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v11 + v12) == 1) && [v10 numberOfLines])
  {
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd) == 1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  [v10 setHidden:v13];
  v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v15 = *(v1 + v6);
  v17 = v15 && (v16 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v15 + v16) & 1) != 0) || [v14 numberOfLines] == 0;
  [v14 setHidden:v17];
  v18 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v19 = *(v1 + v6);
  if (v19 && (v20 = OBJC_IVAR____TtC18ASMessagesProvider18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v19 + v20) & 1) != 0) || ![v18 numberOfLines])
  {
    v21 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v21 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v21 = 0;
  }

  [v18 setHidden:v21];
  v22 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    v24 = v22;
    if (v23 == 1)
    {
      if ([v18 isHidden])
      {
        v25 = [v10 isHidden] ^ 1;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }

    [v24 setHidden:v25];
  }

  v26 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v27 = [v26 text];
  if (v27)
  {
    v28 = v27;
    sub_769240();
  }

  v29 = sub_7692D0();

  if (v29)
  {
    v30 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v30 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v30 = 0;
  }

  [v26 setHidden:v30];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel;
  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    if (v32)
    {
      v33 = v32;
      sub_75BA30();
      sub_75BA40();

      v34 = *(v1 + v31);
      if (v34)
      {
        v35 = v34;
        v36 = [v18 textColor];
        [v35 setTextColor:v36];
LABEL_45:
      }
    }
  }

  else if (v32)
  {
    v37 = qword_93D548;
    v38 = v32;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = sub_7666D0();
    v40 = sub_BE38(v39, qword_99E7E8);
    v41 = *(v39 - 8);
    v42 = v45;
    (*(v41 + 16))(v45, v40, v39);
    (*(v41 + 56))(v42, 0, 1, v39);
    sub_75BA40();

    v43 = *(v1 + v31);
    if (v43)
    {
      sub_396E8();
      v36 = v43;
      v35 = sub_769FF0();
      [v36 setTextColor:v35];
      goto LABEL_45;
    }
  }
}

double sub_BD8E8()
{
  sub_BE0EC(v0 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics);
  sub_BE0EC(v0 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics);

  return result;
}

id sub_BD988(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayCardLockupView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_BDAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0)) init];
    sub_765730();
    sub_764C60();
    v8 = v7;

    if (v8)
    {
      v9 = sub_769210();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_95CDB8];
    v15 = *&v6[qword_95CDB8];
    v16 = *&v6[qword_95CDB8 + 8];
    *v14 = sub_BE0D4;
    v14[1] = v13;

    sub_F704(v15, v16);
    v17 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel(0));
    v18 = v6;
    v19 = sub_523B2C(v18);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall;
    if (v3[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v21 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel];
      if ([v21 hasContent])
      {
        v22 = [v21 text];
        if (v22)
        {
LABEL_10:
          v23 = v22;
          v24 = sub_769240();
          v26 = v25;

          v27 = v26;
          v22 = v24;
LABEL_15:
          v28 = &v19[qword_959BD0];
          *v28 = v22;
          *(v28 + 1) = v27;

          sub_5241B8();
          v29 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel;
          v30 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel];
          v31 = v19;
          if (v30)
          {
            [v30 removeFromSuperview];
            v30 = *&v3[v29];
          }

          *&v3[v29] = v19;
          v32 = v19;

          sub_BD3C0();
          [v3 addSubview:v32];

          v33 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
          v34 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
          if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v3[v33]) != 0)
          {
            v36 = [v35 hasContent];
          }

          else
          {
            v36 = 0;
          }

          v37 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter;
          swift_beginAccess();
          sub_1ED18(&v3[v37], v40, &unk_93FBD0, &qword_77DFA0);
          v38 = v41;
          sub_10A2C(v40, &unk_93FBD0, &qword_77DFA0);
          if (v38 || v36)
          {
            [*&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
          }

          [v3 setNeedsLayout];

          return;
        }

LABEL_13:
        v27 = 0;
        goto LABEL_15;
      }

      if (v3[v20] == 1)
      {
        v22 = [*&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] text];
        if (v22)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    v22 = sub_765720();
    goto LABEL_15;
  }

  v2[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd] = 0;
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel;
  v11 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v3[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v3[v10] = 0;

  v39 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  if (v39)
  {

    [v39 setHidden:0];
  }
}

uint64_t sub_BDF20(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10A2C(v4, &unk_93F980, &qword_77EDA0);
  }

  v8 = sub_765730();
  sub_32A6C0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_BE094()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_BE19C()
{
  result = qword_9439C8;
  if (!qword_9439C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9439C8);
  }

  return result;
}

uint64_t sub_BE1F0()
{
  sub_BEB8(v0 + 4);

  sub_BEB8(v0 + 11);
  sub_BEB8(v0 + 16);
  sub_BEB8(v0 + 21);
  sub_BEB8(v0 + 26);
  sub_BEB8(v0 + 31);
  sub_BEB8(v0 + 39);
  if (v0[50])
  {
    sub_BEB8(v0 + 47);
  }

  if (v0[55])
  {
    sub_BEB8(v0 + 52);
  }

  if (v0[60])
  {
    sub_BEB8(v0 + 57);
  }

  sub_BEB8(v0 + 62);
  if (v0[70])
  {
    sub_BEB8(v0 + 67);
  }

  if (v0[75])
  {
    sub_BEB8(v0 + 72);
  }

  if (v0[80])
  {
    sub_BEB8(v0 + 77);
  }

  if (v0[85])
  {
    sub_BEB8(v0 + 82);
  }

  if (v0[90])
  {
    sub_BEB8(v0 + 87);
  }

  if (v0[95])
  {
    sub_BEB8(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

unint64_t sub_BE2F8(__n128 a1)
{
  result = qword_944E20;
  if (!qword_944E20)
  {
    sub_7623A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944E20);
  }

  return result;
}

char *sub_BE350()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v58 = sub_7676A0();
  __chkstk_darwin(v58);
  v57 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_767BB0();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_allowsGroupBlending] = 1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_preferStackedLargeAXLayouts] = 0;
  v56 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel;
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99E6F8);
  v14 = *(v12 - 8);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  v15(v11, v13, v12);
  v19 = *(v14 + 56);
  v18 = v14 + 56;
  v17 = v19;
  v19(v11, 0, 1, v12);
  v20 = *(v6 + 104);
  v48 = v6 + 104;
  v49 = v20;
  v50 = enum case for DirectionalTextAlignment.none(_:);
  v20(v8);
  v21 = sub_75BB20();
  v22 = objc_allocWithZone(v21);
  v46 = v5;
  *&v1[v56] = sub_75BB10();
  v47 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v12, qword_99E758);
  v54 = v15;
  v55 = v16;
  v15(v11, v23, v12);
  v56 = v18;
  v17(v11, 0, 1, v12);
  v49(v8, v50, v46);
  v24 = objc_allocWithZone(v21);
  *&v1[v47] = sub_75BB10();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkPresenter] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_searchAdTertiaryLabel] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView____lazy_storage___lockupViews] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView____lazy_storage___crossLinkViews] = 0;
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  sub_BE140(&xmmword_99A9B0, &v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics]);
  if (qword_93C330 != -1)
  {
    swift_once();
  }

  sub_BE140(&xmmword_99AB20, &v1[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics]);
  v25 = type metadata accessor for TodayCardLockupView();
  v61.receiver = v1;
  v61.super_class = v25;
  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v51 + 104))(v53, enum case for UITypesettingLanguageAwareLineHeightRatio.disabled(_:), v52);
  v27 = v26;
  sub_769EE0();
  sub_767680();
  sub_769EF0();
  v28 = qword_93D500;
  v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
  v30 = v54;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v12, qword_99E710);
  v30(v11, v31, v12);
  v17(v11, 0, 1, v12);
  sub_75BA40();

  v32 = qword_93D530;
  v33 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_BE38(v12, qword_99E7A0);
  v30(v11, v34, v12);
  v17(v11, 0, 1, v12);
  sub_75BA40();

  v35 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel;
  v36 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  [v38 setTextColor:v39];

  [*&v27[v35] setHidden:1];
  [*&v27[v35] setAlpha:0.0];
  [v27 addSubview:*&v27[v35]];
  v40 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel;
  v41 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel];
  v42 = [v37 labelColor];
  [v41 setTextColor:v42];

  [*&v27[v40] setHidden:1];
  [*&v27[v40] setAlpha:0.0];
  [v27 addSubview:*&v27[v40]];
  sub_BD88(&qword_9477F0, qword_780200);
  v43 = swift_allocObject();
  v58 = xmmword_77B6D0;
  *(v43 + 16) = xmmword_77B6D0;
  *(v43 + 32) = sub_767B80();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v60[3] = v25;
  v60[0] = v27;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v60);
  v44 = swift_allocObject();
  *(v44 + 16) = v58;
  *(v44 + 32) = sub_7676F0();
  *(v44 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v27;
}

uint64_t sub_BEC04@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v246 = a2;
  v237 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v237);
  v221 = &v208 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v226 = &v208 - v5;
  v245 = sub_75CFE0();
  v236 = *(v245 - 8);
  __chkstk_darwin(v245);
  v230 = &v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v242 = &v208 - v8;
  v9 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v9 - 8);
  v231 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v228 = (&v208 - v12);
  __chkstk_darwin(v13);
  v225 = &v208 - v14;
  __chkstk_darwin(v15);
  v240 = (&v208 - v16);
  v17 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v17 - 8);
  v229 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v222 = &v208 - v20;
  __chkstk_darwin(v21);
  v241 = &v208 - v22;
  __chkstk_darwin(v23);
  v232 = &v208 - v24;
  v25 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v234 = *(v25 - 8);
  v235 = v25;
  __chkstk_darwin(v25);
  v220 = &v208 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v219 = &v208 - v28;
  __chkstk_darwin(v29);
  v218 = &v208 - v30;
  __chkstk_darwin(v31);
  v227 = &v208 - v32;
  __chkstk_darwin(v33);
  v239 = &v208 - v34;
  __chkstk_darwin(v35);
  v224 = &v208 - v36;
  __chkstk_darwin(v37);
  v223 = &v208 - v38;
  __chkstk_darwin(v39);
  v238 = &v208 - v40;
  v41 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v41 - 8);
  v211 = &v208 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v210 = &v208 - v44;
  __chkstk_darwin(v45);
  v214 = &v208 - v46;
  __chkstk_darwin(v47);
  v213 = &v208 - v48;
  __chkstk_darwin(v49);
  v233 = &v208 - v50;
  __chkstk_darwin(v51);
  v209 = &v208 - v52;
  __chkstk_darwin(v53);
  v212 = &v208 - v54;
  __chkstk_darwin(v55);
  v217 = &v208 - v56;
  __chkstk_darwin(v57);
  v216 = &v208 - v58;
  __chkstk_darwin(v59);
  v215 = &v208 - v60;
  __chkstk_darwin(v61);
  v243 = &v208 - v62;
  v63 = sub_75B660();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v208 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v208 - v68;
  v70 = sub_BD88(&unk_94F1F0, &qword_782290);
  v244 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = &v208 - v71;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v73 = v250;
  if (v250)
  {
  }

  swift_getKeyPath();
  sub_768750();

  v74 = v250;
  if (v250)
  {
    v75 = v249;

    v76 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v76 = v75 & 0xFFFFFFFFFFFFLL;
    }

    v247 = v76 != 0;
  }

  else
  {
    v247 = 0;
  }

  swift_getKeyPath();
  v248 = v72;
  sub_768750();

  if (v249)
  {
    v77 = sub_759880();
  }

  else
  {
    v77 = 0;
  }

  swift_getKeyPath();
  sub_768750();

  (*(v64 + 104))(v66, enum case for ShelfBackground.interactive(_:), v63);
  v78 = sub_75B650();
  v79 = *(v64 + 8);
  v79(v66, v63);
  v79(v69, v63);
  v80 = sub_C0E2C(a1);
  if (sub_C18F4(a1))
  {
    if ((v78 & 1) == 0)
    {
      v81 = v77 ^ 1;
      goto LABEL_17;
    }

LABEL_15:
    sub_36492C(v247, v246);
    return (*(v244 + 8))(v248, v70);
  }

  if (v78)
  {
    goto LABEL_15;
  }

  v81 = 0;
LABEL_17:
  v208 = v70;
  if (!v80)
  {
    LODWORD(v243) = v81;
    swift_getKeyPath();
    sub_768750();

    if (v249)
    {
      v85 = v233;
      sub_759820();

      v86 = sub_759810();
      (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    }

    else
    {
      v114 = sub_759810();
      (*(*(v114 - 8) + 56))(v233, 1, 1, v114);
    }

    v115 = v235;
    if (v77)
    {
      v116 = v228;
      *v228 = xmmword_783140;
      v117 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
      v118 = sub_75CFD0();
      v119 = *(v118 - 8);
      v120 = *(v119 + 104);
      v241 = (v118 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v120(v116, v117, v118);
      v121 = *(v119 + 56);
      v242 = v118;
      v121(v116, 0, 1, v118);
      if (qword_93DE18 != -1)
      {
        swift_once();
      }

      v122 = sub_BE38(v115, qword_9A0160);
      sub_C1D58(v122, v227, v123);
      v124 = 10.0;
      v125 = v218;
      if (qword_93DE48 != -1)
      {
        swift_once();
      }

      v126 = 1;
      v127 = qword_9A01F0;
LABEL_107:
      v186 = v125;
LABEL_108:
      v187 = sub_BE38(v115, v127);
      sub_C1D58(v187, v186, v188);
      v189 = v222;
      v190.n128_f64[0] = (*(v234 + 56))(v222, v126, 1, v115);
      v191 = v227;
      v192 = v219;
      sub_C1D58(v227, v219, v190);
      v193 = v220;
      sub_C1D58(v125, v220, v194);
      sub_1ED18(v189, v229, &qword_9439E0, &unk_787AB0);
      v195 = v228;
      sub_1ED18(v228, v231, &qword_9439D8, &qword_799160);
      v196 = v236;
      (*(v236 + 104))(v230, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v245);
      sub_396E8();
      v197 = sub_769FB0();
      sub_10A2C(v195, &qword_9439D8, &qword_799160);
      sub_10A2C(v189, &qword_9439E0, &unk_787AB0);
      sub_C1DBC(v125, v198);
      sub_C1DBC(v191, v199);
      sub_10A2C(v233, &unk_948010, qword_789590);
      (*(v244 + 8))(v248, v208);
      v200 = v237;
      v201 = *(v237 + 32);
      v202 = v221;
      sub_C1E18(v192, v221, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_C1E18(v193, v202 + v200[5], type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_109C4(v229, v202 + v200[6], &qword_9439E0, &unk_787AB0);
      *(v202 + v200[7]) = v243 & 1;
      *(v202 + v201) = 0;
      v203 = v247;
      *(v202 + v200[9]) = v247;
      *(v202 + v200[14]) = v124;
      *(v202 + v200[12]) = 0;
      *(v202 + v200[13]) = v197;
      v204 = v231;
      (*(v196 + 32))(v202 + v200[11], v230, v245);
      sub_75CFD0();
      v205 = v242;
      v206 = *(v242 - 1);
      if ((*(v206 + 48))(v204, 1, v242) == 1)
      {
        sub_10A2C(v204, &qword_9439D8, &qword_799160);
        if (v203)
        {
          v207 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
        }

        else
        {
          v207 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
        }

        (*(v206 + 104))(v202 + v200[10], *v207, v205);
      }

      else
      {
        (*(v206 + 32))(v202 + v200[10], v204, v205);
      }

      v174 = v202;
      return sub_C1E18(v174, v246, type metadata accessor for TitleHeaderView.Style);
    }

    v128 = sub_75CFD0();
    v129 = *(*(v128 - 8) + 56);
    v241 = (v128 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v129(v228, 1, 1, v128);
    v242 = v128;
    if (v73)
    {
      if (!v247)
      {
        v147 = v214;
        sub_1ED18(v233, v214, &unk_948010, qword_789590);
        v148 = sub_759810();
        v149 = *(v148 - 8);
        if ((*(v149 + 48))(v147, 1, v148) == 1)
        {
          sub_10A2C(v147, &unk_948010, qword_789590);
          v150 = 0;
        }

        else
        {
          v150 = sub_7597B0();
          (*(v149 + 8))(v147, v148);
        }

        v125 = v218;
        sub_5E740C(v150, v227);

        v124 = 16.0;
        if (qword_93DE40 != -1)
        {
          swift_once();
        }

        v126 = 1;
        v127 = qword_9A01D8;
        goto LABEL_107;
      }

      v130 = v213;
      sub_1ED18(v233, v213, &unk_948010, qword_789590);
      v131 = sub_759810();
      v132 = *(v131 - 8);
      if ((*(v132 + 48))(v130, 1, v131) == 1)
      {
        sub_10A2C(v130, &unk_948010, qword_789590);
        v133 = 0;
      }

      else
      {
        v133 = sub_7597B0();
        (*(v132 + 8))(v130, v131);
      }

      v125 = v218;
      sub_5E740C(v133, v227);

      if (qword_93DE58 != -1)
      {
        swift_once();
      }

      v179 = qword_9A0220;
    }

    else
    {
      if (!v247)
      {
        v175 = v211;
        sub_1ED18(v233, v211, &unk_948010, qword_789590);
        v176 = sub_759810();
        v177 = *(v176 - 8);
        if ((*(v177 + 48))(v175, 1, v176) == 1)
        {
          sub_10A2C(v175, &unk_948010, qword_789590);
          v178 = 0;
        }

        else
        {
          v178 = sub_7597B0();
          (*(v177 + 8))(v175, v176);
        }

        v125 = v218;
        sub_5E740C(v178, v227);

        v124 = 16.0;
        if (qword_93DE38 != -1)
        {
          swift_once();
        }

        v126 = 1;
        v127 = qword_9A01C0;
        goto LABEL_107;
      }

      v143 = v210;
      sub_1ED18(v233, v210, &unk_948010, qword_789590);
      v144 = sub_759810();
      v145 = *(v144 - 8);
      if ((*(v145 + 48))(v143, 1, v144) == 1)
      {
        sub_10A2C(v143, &unk_948010, qword_789590);
        v146 = 0;
      }

      else
      {
        v146 = sub_7597B0();
        (*(v145 + 8))(v143, v144);
      }

      v125 = v218;
      sub_5E740C(v146, v227);

      if (qword_93DE50 != -1)
      {
        swift_once();
      }

      v179 = qword_9A0208;
    }

    v184 = sub_BE38(v115, v179);
    sub_C1D58(v184, v125, v185);
    v124 = 16.0;
    if (qword_93DE30 != -1)
    {
      swift_once();
    }

    v126 = 0;
    v127 = qword_9A01A8;
    v186 = v222;
    goto LABEL_108;
  }

  swift_getKeyPath();
  sub_768750();

  if (v249)
  {
    v83 = v243;
    sub_759820();

    v84 = sub_759810();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  }

  else
  {
    v87 = sub_759810();
    (*(*(v87 - 8) + 56))(v243, 1, 1, v87);
  }

  if (v77)
  {
    v88 = v240;
    *v240 = xmmword_783140;
    v89 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
    v90 = sub_75CFD0();
    v91 = *(v90 - 8);
    v92 = *(v91 + 104);
    v231 = (v90 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v92(v88, v89, v90);
    v93 = *(v91 + 56);
    v233 = v90;
    v93(v88, 0, 1, v90);
    if (qword_93DE18 != -1)
    {
      swift_once();
    }

    v94 = v235;
    v95 = sub_BE38(v235, qword_9A0160);
    sub_C1D58(v95, v238, v96);
    v97 = 10.0;
    v98 = v223;
    if (qword_93DE48 != -1)
    {
      swift_once();
    }

    v99 = 1;
    v100 = qword_9A01F0;
  }

  else
  {
    v102 = sub_75CFD0();
    v103 = *(*(v102 - 8) + 56);
    v231 = (v102 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v103(v240, 1, 1, v102);
    v233 = v102;
    if (v247)
    {
      if (v80 == 1)
      {
        v104 = v215;
        sub_1ED18(v243, v215, &unk_948010, qword_789590);
        v105 = sub_759810();
        v106 = *(v105 - 8);
        v107 = (*(v106 + 48))(v104, 1, v105);
        v98 = v223;
        if (v107 == 1)
        {
          sub_10A2C(v104, &unk_948010, qword_789590);
          v108 = 0;
        }

        else
        {
          v108 = sub_7597B0();
          (*(v106 + 8))(v104, v105);
        }

        v94 = v235;
        sub_5E740C(v108, v238);

        if (qword_93DE80 != -1)
        {
          swift_once();
        }

        v151 = qword_9A0298;
      }

      else
      {
        v134 = v216;
        sub_1ED18(v243, v216, &unk_948010, qword_789590);
        v135 = sub_759810();
        v136 = *(v135 - 8);
        v137 = (*(v136 + 48))(v134, 1, v135);
        v98 = v223;
        if (v137 == 1)
        {
          sub_10A2C(v134, &unk_948010, qword_789590);
          v138 = 0;
        }

        else
        {
          v138 = sub_7597B0();
          (*(v136 + 8))(v134, v135);
        }

        v94 = v235;
        sub_5E740C(v138, v238);

        if (qword_93DE70 != -1)
        {
          swift_once();
        }

        v151 = qword_9A0268;
      }

      v152 = sub_BE38(v94, v151);
      sub_C1D58(v152, v98, v153);
      v97 = 16.0;
      if (qword_93DE30 != -1)
      {
        swift_once();
      }

      v99 = 0;
      v100 = qword_9A01A8;
      v101 = v232;
      goto LABEL_73;
    }

    if (v80 == 1)
    {
      v109 = v217;
      sub_1ED18(v243, v217, &unk_948010, qword_789590);
      v110 = sub_759810();
      v111 = *(v110 - 8);
      v112 = (*(v111 + 48))(v109, 1, v110);
      v94 = v235;
      v98 = v223;
      if (v112 == 1)
      {
        sub_10A2C(v109, &unk_948010, qword_789590);
        v113 = 0;
      }

      else
      {
        v113 = sub_7597B0();
        (*(v111 + 8))(v109, v110);
      }

      sub_5E740C(v113, v238);

      v97 = 16.0;
      if (qword_93DE78 != -1)
      {
        swift_once();
      }

      v99 = 1;
      v100 = qword_9A0280;
    }

    else
    {
      v94 = v235;
      v98 = v223;
      if (v73)
      {
        v139 = v212;
        sub_1ED18(v243, v212, &unk_948010, qword_789590);
        v140 = sub_759810();
        v141 = *(v140 - 8);
        if ((*(v141 + 48))(v139, 1, v140) == 1)
        {
          sub_10A2C(v139, &unk_948010, qword_789590);
          v142 = 0;
        }

        else
        {
          v142 = sub_7597B0();
          (*(v141 + 8))(v139, v140);
        }

        sub_5E7414(v142, v238);

        v97 = 16.0;
        if (qword_93DE68 != -1)
        {
          swift_once();
        }

        v99 = 1;
        v100 = qword_9A0250;
      }

      else
      {
        v180 = v209;
        sub_1ED18(v243, v209, &unk_948010, qword_789590);
        v181 = sub_759810();
        v182 = *(v181 - 8);
        if ((*(v182 + 48))(v180, 1, v181) == 1)
        {
          sub_10A2C(v180, &unk_948010, qword_789590);
          v183 = 0;
        }

        else
        {
          v183 = sub_7597B0();
          (*(v182 + 8))(v180, v181);
        }

        sub_5E740C(v183, v238);

        v97 = 16.0;
        if (qword_93DE60 != -1)
        {
          swift_once();
        }

        v99 = 1;
        v100 = qword_9A0238;
      }
    }
  }

  v101 = v98;
LABEL_73:
  v154 = sub_BE38(v94, v100);
  sub_C1D58(v154, v101, v155);
  v156 = v232;
  v157.n128_f64[0] = (*(v234 + 56))(v232, v99, 1, v94);
  v158 = v238;
  v159 = v224;
  sub_C1D58(v238, v224, v157);
  sub_C1D58(v98, v239, v160);
  sub_1ED18(v156, v241, &qword_9439E0, &unk_787AB0);
  v161 = v240;
  v162 = v225;
  sub_1ED18(v240, v225, &qword_9439D8, &qword_799160);
  v163 = v236;
  (*(v236 + 104))(v242, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v245);
  sub_396E8();
  v235 = sub_769FB0();
  sub_10A2C(v161, &qword_9439D8, &qword_799160);
  sub_10A2C(v156, &qword_9439E0, &unk_787AB0);
  sub_C1DBC(v98, v164);
  sub_C1DBC(v158, v165);
  sub_10A2C(v243, &unk_948010, qword_789590);
  (*(v244 + 8))(v248, v208);
  v166 = v237;
  v167 = *(v237 + 32);
  v168 = v226;
  sub_C1E18(v159, v226, type metadata accessor for TitleHeaderView.TextConfiguration);
  v169 = v162;
  sub_C1E18(v239, v168 + v166[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_109C4(v241, v168 + v166[6], &qword_9439E0, &unk_787AB0);
  *(v168 + v166[7]) = 0;
  *(v168 + v167) = 0;
  v170 = v247;
  *(v168 + v166[9]) = v247;
  *(v168 + v166[14]) = v97;
  *(v168 + v166[12]) = 0;
  *(v168 + v166[13]) = v235;
  (*(v163 + 32))(v168 + v166[11], v242, v245);
  sub_75CFD0();
  v171 = v233;
  v172 = *(v233 - 8);
  if ((*(v172 + 48))(v169, 1, v233) == 1)
  {
    sub_10A2C(v169, &qword_9439D8, &qword_799160);
    if (v170)
    {
      v173 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v173 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v172 + 104))(v168 + v166[10], *v173, v171);
  }

  else
  {
    (*(v172 + 32))(v168 + v166[10], v169, v171);
  }

  v174 = v168;
  return sub_C1E18(v174, v246, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_C0B4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764B00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C0B78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764B00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C0BA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764B20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C0BD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764B20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C0C04()
{
  sub_BD88(&qword_9439E8, &unk_7A7260);
  v0 = sub_764930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_783150;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.upsellBreakout(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.smallBreakout(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.ribbonBar(_:), v0);
  v6(v5 + 3 * v2, enum case for Shelf.ContentType.largeHeroBreakout(_:), v0);
  v6(v5 + 4 * v2, enum case for Shelf.ContentType.editorialStoryCard(_:), v0);
  v6(v5 + 5 * v2, enum case for Shelf.ContentType.gameCenterReengagement(_:), v0);
  v6(v5 + 6 * v2, enum case for Shelf.ContentType.heroCarousel(_:), v0);
  v6(v5 + 7 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1A2300(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_9439D0 = v7;
  return result;
}

uint64_t sub_C0E2C(unint64_t a1)
{
  v96 = sub_BD88(&qword_9439F0, &qword_7ACF90);
  __chkstk_darwin(v96);
  v99 = &v91 - v2;
  v3 = sub_BD88(&unk_94F1F0, &qword_782290);
  v102 = *(v3 - 8);
  __chkstk_darwin(v3);
  v95 = &v91 - v4;
  v5 = sub_75B660();
  v6 = *(v5 - 8);
  v97 = v5;
  v98 = v6;
  __chkstk_darwin(v5);
  v93 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = (&v91 - v9);
  __chkstk_darwin(v10);
  v92 = (&v91 - v11);
  __chkstk_darwin(v12);
  v103 = &v91 - v13;
  __chkstk_darwin(v14);
  v94 = &v91 - v15;
  __chkstk_darwin(v16);
  v100 = &v91 - v17;
  v18 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v18 - 8);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  __chkstk_darwin(v24);
  v26 = &v91 - v25;
  __chkstk_darwin(v27);
  v29 = &v91 - v28;
  __chkstk_darwin(v30);
  v32 = &v91 - v31;
  __chkstk_darwin(v33);
  v35 = &v91 - v34;
  v101 = a1;
  sub_75DA50();
  sub_10A2C(v29, &qword_963790, qword_77EBC0);
  v36 = v102;
  sub_109C4(v32, v35, &qword_963790, qword_77EBC0);
  v37 = *(v36 + 48);
  if (v37(v35, 1, v3) == 1)
  {
    sub_10A2C(v35, &qword_963790, qword_77EBC0);
LABEL_6:
    v40 = v103;
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_768750();

  v38 = v104;
  (*(v36 + 8))(v35, v3);
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = sub_759880();

  v40 = v103;
  if (v39)
  {
    return 2;
  }

LABEL_7:
  sub_75DA50();
  sub_10A2C(v20, &qword_963790, qword_77EBC0);
  sub_109C4(v23, v26, &qword_963790, qword_77EBC0);
  if (v37(v26, 1, v3) != 1)
  {
    swift_getKeyPath();
    v45 = v94;
    sub_768750();

    v46 = *(v102 + 8);
    v46(v26, v3);
    v47 = v98;
    v48 = v100;
    v49 = v45;
    v50 = v97;
    (*(v98 + 32))(v100, v49, v97);
    v51 = v95;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v46(v51, v3);
    v52 = v96[12];
    v53 = v47[2];
    v54 = v99;
    v53(v99, v40, v50);
    v102 = v52;
    v53(&v54[v52], v48, v50);
    v55 = v47[11];
    v56 = v55(v54, v50);
    if (v56 == enum case for ShelfBackground.color(_:))
    {
      v57 = v56;
      v58 = v92;
      v53(v92, v54, v50);
      v59 = v47;
      v60 = v58;
      v94 = v59[12];
      (v94)(v58, v50);
      v96 = *v58;
      v61 = sub_BD88(&unk_959640, qword_78DD60);
      v95 = *(v61 + 48);
      if (v55(&v54[v102], v50) == v57)
      {
        v62 = v95;
        v63 = v91;
        v53(v91, &v99[v102], v50);
        (v94)(v63, v50);
        v64 = *v63;
        v65 = *(v61 + 48);
        v66 = sub_75DA30();
        v67 = v96;
        v68 = [v96 resolvedColorWithTraitCollection:v66];

        v69 = sub_75DA30();
        v70 = [v64 resolvedColorWithTraitCollection:v69];

        sub_396E8();
        LOBYTE(v69) = sub_76A1C0();

        if ((v69 & 1) == 0)
        {
          v87 = *(v98 + 8);
          v87(v103, v50);
          v87(v100, v50);
          v88 = sub_75EDA0();
          v89 = *(*(v88 - 8) + 8);
          v89(v63 + v65, v88);
          v89(&v62[v92], v88);
          v90 = v99;
          v87(&v99[v102], v50);
          v87(v90, v50);
          return 2;
        }

        v71 = sub_75EDA0();
        v72 = *(*(v71 - 8) + 8);
        v72(v63 + v65, v71);
        v72(&v62[v92], v71);
      }

      else
      {
        v73 = sub_75EDA0();
        (*(*(v73 - 8) + 8))(&v95[v60], v73);
      }

      v47 = v98;
      v54 = v99;
    }

    v74 = enum case for ShelfBackground.none(_:);
    v75 = v47[13];
    v76 = v93;
    v77.n128_f64[0] = (v75)(v93, enum case for ShelfBackground.none(_:), v50);
    v101 = sub_C1E84(v77);
    v78 = sub_7691C0();
    v79 = v47[1];
    v79(v76, v50);
    if ((v78 & 1) == 0)
    {
      v75(v76, v74, v50);
      v80 = sub_75B650();
      v79(v76, v50);
      if (v80)
      {
        v79(v103, v50);
        v79(v100, v50);
        v81 = v102;
LABEL_20:
        v79(&v54[v81], v50);
        v79(v54, v50);
        return 2;
      }
    }

    v82 = v75;
    v75(v76, v74, v50);
    v83 = v103;
    v84 = sub_75B650();
    v79(v76, v50);
    if (v84)
    {
      v82(v76, v74, v50);
      v85 = v100;
      v86 = sub_7691C0();
      v79(v76, v50);
      v79(v83, v50);
      v79(v85, v50);
      v81 = v102;
      if ((v86 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v79(v83, v50);
      v79(v100, v50);
    }

    v42 = &qword_9439F0;
    v43 = &qword_7ACF90;
    v44 = v54;
    goto LABEL_23;
  }

  v42 = &qword_963790;
  v43 = qword_77EBC0;
  v44 = v26;
LABEL_23:
  sub_10A2C(v44, v42, v43);
  return 0;
}

uint64_t sub_C18F4(uint64_t a1)
{
  v2 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v5;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_764930();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = &v32 - v12;
  v13 = sub_759810();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_94F1F0, &qword_782290);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v38 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v21 = *(v18 + 8);
  v21(v20, v17);
  if (v39 && (sub_759820(), , v22 = sub_7597F0(), (*(v14 + 8))(v16, v13), (v22 & 1) == 0))
  {
    v25 = 0;
  }

  else
  {
    v24 = v36;
    v23 = v37;
    sub_75DA50();
    sub_10A2C(v23, &qword_963790, qword_77EBC0);
    sub_109C4(v24, v8, &qword_963790, qword_77EBC0);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_10A2C(v8, &qword_963790, qword_77EBC0);
      v25 = 1;
    }

    else
    {
      swift_getKeyPath();
      v26 = v32;
      sub_768750();

      v21(v8, v17);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v26, v35);
      if (qword_93C340 != -1)
      {
        swift_once();
      }

      v30 = sub_666CB0(v28, qword_9439D0);
      (*(v27 + 8))(v28, v29);
      v25 = v30 ^ 1;
    }
  }

  return v25 & 1;
}

uint64_t sub_C1D58(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_C1DBC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_C1E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_C1E84(__n128 a1)
{
  result = qword_9439F8;
  if (!qword_9439F8)
  {
    sub_75B660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9439F8);
  }

  return result;
}

uint64_t sub_C1EDC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = sub_BD88(&qword_943A78, &qword_783358);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v35 - v3;
  v45 = sub_75DDE0();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_946810, &qword_783360);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v47 = sub_BD88(&qword_943A80, &qword_783368);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v37 = &v35 - v7;
  v8 = sub_BD88(&unk_951420, &qword_783310);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_BD88(&unk_959540, &qword_784830);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = sub_758A00();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  sub_75C7E0();
  sub_768760();
  (*(v12 + 8))(v14, v11);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v15);
    (*(v16 + 32))(v21, v10, v15);
    v24 = a1;
    sub_75C800();
    v25 = v37;
    sub_769060();
    v26 = v46;
    sub_C34E4();

    sub_769030();
    sub_75DE00();

    (*(v16 + 16))(v18, v21, v15);
    v27 = v39;

    v28 = v41;
    v29 = sub_75DDC0();
    v36 = &v35;
    __chkstk_darwin(v29);
    *(&v35 - 4) = v28;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v24;
    __chkstk_darwin(v30);
    *(&v35 - 4) = sub_C353C;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v27;
    *(&v35 - 1) = v26;
    sub_BD88(&qword_943A88, &qword_783370);
    sub_C3554();
    v32 = v40;
    sub_767F90();
    sub_767FF0();
    v33 = v44;
    v48[3] = v44;
    v48[4] = sub_16194(&qword_943AD8, &qword_943A78, &qword_783358, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_B1B4(v48);
    sub_767F80();
    (*(v42 + 8))(v32, v33);
    sub_769AE0();
    (*(v38 + 8))(v25, v47);
    (*(v16 + 8))(v21, v15);
    return (*(v43 + 8))(v28, v45);
  }

  else
  {
    v23(v10, 1, 1, v15);
    return sub_C3434(v10);
  }
}

uint64_t sub_C258C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_75DDE0();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);

  sub_75AA20();
  sub_BD88(&qword_943AB8, &unk_783390);
  return sub_75C7D0();
}

uint64_t type metadata accessor for AnnotationCollectionViewHostingCell(uint64_t a1)
{
  result = qword_943A30;
  if (!qword_943A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C2928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v4 = sub_BD88(&unk_944D90, &qword_783300);
  __chkstk_darwin(v4 - 8);
  v38 = &v36 - v5;
  v6 = sub_BD88(&qword_943A48, &qword_783308);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = sub_75DDE0();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_951420, &qword_783310);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_BD88(&unk_959540, &qword_784830);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_758A00();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v39 = a1;
  sub_75C7E0();
  sub_768760();
  (*(v15 + 8))(v17, v14);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v18);
    (*(v19 + 32))(v24, v13, v18);
    v27 = *(v19 + 16);
    v37 = v24;
    v27(v21, v24, v18);

    sub_75DDC0();
    v28 = v10;
    if (sub_75DDD0() & 1) != 0 || (, sub_75DDF0(), , v29 = sub_75B720(), , (v29))
    {
      sub_75C790();
      v30 = v40;
      sub_768B30();
      sub_C34E4();
      v31 = v42;
      sub_768AF0();

      sub_75DE00();

      sub_BD88(&qword_943A50, &qword_783318);
      sub_763CD0();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_77E280;
      sub_763CC0();
      sub_763CB0();
      v47 = v32;
      sub_C349C(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
      sub_BD88(&qword_943A60, &qword_783320);
      sub_16194(&qword_943A68, &qword_943A60, &qword_783320, &protocol conformance descriptor for [A]);
      sub_76A5A0();
      (*(v41 + 8))(v30, v31);
    }

    else
    {
      sub_BD88(&qword_943A50, &qword_783318);
      sub_763CD0();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_77E280;
      sub_763CC0();
      sub_763CB0();
      v47 = v35;
      sub_C349C(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
      sub_BD88(&qword_943A60, &qword_783320);
      sub_16194(&qword_943A68, &qword_943A60, &qword_783320, &protocol conformance descriptor for [A]);
      sub_76A5A0();
    }

    (*(v44 + 8))(v28, v45);
    return (*(v19 + 8))(v37, v18);
  }

  else
  {
    v26(v13, 1, 1, v18);
    sub_C3434(v13);
    sub_BD88(&qword_943A50, &qword_783318);
    sub_763CD0();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_77E280;
    sub_763CC0();
    sub_763CB0();
    v47 = v33;
    sub_C349C(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_BD88(&qword_943A60, &qword_783320);
    sub_16194(&qword_943A68, &qword_943A60, &qword_783320, &protocol conformance descriptor for [A]);
    return sub_76A5A0();
  }
}

uint64_t sub_C3254@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v6 = v11[1];
  v7 = sub_7699D0();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_75D3D0();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_75D400();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_C33DC(uint64_t a1)
{
  result = sub_C349C(&qword_943A40, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_7832BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C3434(uint64_t a1)
{
  v2 = sub_BD88(&unk_951420, &qword_783310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C349C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C34E4()
{
  result = qword_943A70;
  if (!qword_943A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943A70);
  }

  return result;
}

unint64_t sub_C3554()
{
  result = qword_943A90;
  if (!qword_943A90)
  {
    sub_133D8(&qword_943A88, &qword_783370);
    sub_C360C();
    sub_16194(&qword_951360, &qword_943AD0, &qword_7833A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943A90);
  }

  return result;
}

unint64_t sub_C360C()
{
  result = qword_943A98;
  if (!qword_943A98)
  {
    sub_133D8(&qword_943AA0, &qword_783378);
    sub_133D8(&qword_943AA8, &qword_783380);
    sub_133D8(&qword_943AB0, &qword_783388);
    sub_768900();
    sub_133D8(&qword_943AB8, &unk_783390);
    sub_16194(&qword_943AC0, &qword_943AB8, &unk_783390, &protocol conformance descriptor for IDView<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_16194(&unk_951350, &qword_943AC8, qword_7A88A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943A98);
  }

  return result;
}

unint64_t sub_C37E0()
{
  result = qword_943AE0;
  if (!qword_943AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943AE0);
  }

  return result;
}

unint64_t sub_C3838()
{
  result = qword_943AE8;
  if (!qword_943AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943AE8);
  }

  return result;
}

uint64_t sub_C389C(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = sub_75FAC0();
  v60 = *(v4 - 8);
  __chkstk_darwin(v4);
  v62 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7570A0();
  v61 = *(v6 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v57 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v48 - v9;
  v11 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v11 - 8);
  v13 = v48 - v12;
  v14 = type metadata accessor for FlowDestination(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v48 - v19;
  v63 = 0u;
  v64 = 0u;

  sub_146CF0(v21, &v63, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10A2C(v13, &unk_9442D0, &unk_780660);
  }

  else
  {
    sub_61AE8(v13, v20, v22);
    sub_61B4C(v20, v17, v23);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v50 = *v17;
      v51 = a1;
      v24 = sub_BD88(&qword_955D00, &unk_7834A0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 64);
      v27 = v61;
      v28 = *(v61 + 32);
      v48[1] = v61 + 32;
      v49 = v28;
      v56 = v10;
      v28(v10, &v17[v26], v6);
      v29 = sub_75C3F0();
      (*(*(v29 - 8) + 8))(&v17[v25], v29);
      sub_BD88(&qword_94DDC0, qword_77DE00);
      v30 = sub_768F90();
      sub_75FAB0();
      v53 = sub_75FAA0();
      v31 = v57;
      (*(v27 + 16))(v57, v10, v6);
      v32 = (*(v27 + 80) + 24) & ~*(v27 + 80);
      v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
      v54 = v4;
      v55 = v20;
      v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = v6;
      v36 = swift_allocObject();
      v37 = v49;
      *(v36 + 16) = v50;
      v37(v36 + v32, v31, v6);
      v38 = v51;
      *(v36 + v33) = v51;
      v40 = v58;
      v39 = v59;
      *(v36 + v34) = v58;
      *(v36 + v35) = v39;
      *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
      v41 = swift_allocObject();
      *(v41 + 16) = v38;
      *(v41 + 24) = v30;
      v42 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);

      v43 = v40;

      swift_retain_n();
      swift_retain_n();
      v44 = sub_769970();
      *(&v64 + 1) = v42;
      v65 = &protocol witness table for OS_dispatch_queue;
      *&v63 = v44;
      sub_768F10();

      (*(v60 + 8))(v62, v54);
      (*(v61 + 8))(v56, v52);
      sub_68DF8(v55, type metadata accessor for FlowDestination);
      sub_BEB8(&v63);
      return v30;
    }

    sub_68DF8(v20, type metadata accessor for FlowDestination);
    sub_68DF8(v17, type metadata accessor for FlowDestination);
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v45 = sub_768FF0();
  sub_BE38(v45, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  *(&v64 + 1) = sub_758B20();
  *&v63 = a1;

  sub_768550();
  sub_10A2C(&v63, &unk_93FBD0, &qword_77DFA0);
  sub_768EA0();

  sub_BD88(&qword_94DDC0, qword_77DE00);
  sub_C4680();
  swift_allocError();
  *v46 = 1;
  return sub_768F20();
}

uint64_t sub_C3FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v44 = a3;
  v45 = a2;
  v9 = type metadata accessor for FlowDestination(0);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v46 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_760B50();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v21 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v27 = (&v43 - v26);
  v28 = *(v12 + 16);
  v28(v20, a1, v11, v25);
  v29 = (*(v12 + 88))(v20, v11);
  if (v29 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (v28)(v14, v20, v11);
    (*(v12 + 96))(v14, v11);
    if (*v14 == 1)
    {
      v30 = sub_BD88(&qword_955D00, &unk_7834A0);
      v31 = *(v30 + 48);
      v32 = *(v30 + 64);
      *v27 = v45;
      v33 = &enum case for ArcadeWelcomePage.ContentType.createNewFamily(_:);
LABEL_7:
      v35 = *v33;
      v36 = sub_75C3F0();
      (*(*(v36 - 8) + 104))(v27 + v31, v35, v36);
      v37 = sub_7570A0();
      (*(*(v37 - 8) + 16))(v27 + v32, v44, v37);
      v38 = v52;
      swift_storeEnumTagMultiPayload();
      v39 = v51;
      (*(v51 + 56))(v27, 0, 1, v38);

      goto LABEL_9;
    }
  }

  else if (v29 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (v28)(v17, v20, v11);
    (*(v12 + 96))(v17, v11);
    if (*v17 == 1)
    {
      v34 = sub_BD88(&qword_955D00, &unk_7834A0);
      v31 = *(v34 + 48);
      v32 = *(v34 + 64);
      *v27 = v45;
      v33 = &enum case for ArcadeWelcomePage.ContentType.familyOrganizer(_:);
      goto LABEL_7;
    }
  }

  v39 = v51;
  v38 = v52;
  (*(v51 + 56))(v27, 1, 1, v52);
LABEL_9:
  (*(v12 + 8))(v20, v11);
  sub_1ED18(v27, v23, &unk_9442D0, &unk_780660);
  if ((*(v39 + 48))(v23, 1, v38) == 1)
  {
    sub_10A2C(v27, &unk_9442D0, &unk_780660);
  }

  else
  {
    v41 = v46;
    sub_61AE8(v23, v46, v40);
    sub_C4DD0(v41, v47, v48, v49, v50);
    sub_68DF8(v41, type metadata accessor for FlowDestination);
    v23 = v27;
  }

  return sub_10A2C(v23, &unk_9442D0, &unk_780660);
}

uint64_t sub_C44CC(uint64_t a1, uint64_t a2)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v3 = sub_768FF0();
  sub_BE38(v3, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  v5[3] = sub_758B20();
  v5[0] = a2;

  sub_768550();
  sub_10A2C(v5, &unk_93FBD0, &qword_77DFA0);
  sub_768EA0();

  return sub_768F50();
}

unint64_t sub_C4680()
{
  result = qword_943AF0;
  if (!qword_943AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943AF0);
  }

  return result;
}

uint64_t sub_C46D4()
{
  v1 = sub_7570A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_C47EC(uint64_t a1)
{
  v3 = *(sub_7570A0() - 8);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_C3FE0(a1, v11, v1 + v5, v9, v10, v12, v13, v4);
}

uint64_t sub_C48B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C48F8(__n128 a1)
{
  v1 = sub_765490();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v11 - v6;
  sub_758AE0();
  (*(v2 + 104))(v4, enum case for FlowPage.arcadeWelcome(_:), v1);
  sub_C5ED0(&qword_944310, &type metadata accessor for FlowPage, &protocol conformance descriptor for FlowPage);
  sub_769430();
  sub_769430();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_76A950();
  }

  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);

  return v8 & 1;
}

uint64_t sub_C4AD4(uint64_t a1, void *a2, __n128 a3)
{
  v5 = sub_75F340();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_760280();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 viewControllers];
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v15 = sub_769460();

  if (v15 >> 62)
  {
    v16 = sub_76A860();
  }

  else
  {
    v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  }

  if (v16)
  {
    (*(v10 + 104))(v13, enum case for FlowPresentationContext.replace(_:), v9);
    sub_C5ED0(&qword_943B00, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
    v17 = sub_7691C0();
    (*(v10 + 8))(v13, v9);
    v18 = v17 ^ 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = type metadata accessor for FlowPresentationHints(0);
  (*(v6 + 16))(v8, a1 + *(v19 + 20), v5);
  v20 = (*(v6 + 88))(v8, v5);
  if (v20 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v20 == enum case for FlowAnimationBehavior.never(_:))
    {
      v18 = 0;
    }

    else if (v20 == enum case for FlowAnimationBehavior.always(_:))
    {
      v18 = 1;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  return v18 & 1;
}

uint64_t sub_C4DD0(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v96 = a4;
  v93 = sub_7687C0();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v8 - 8);
  v94 = &v90 - v9;
  v10 = sub_760280();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v90 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = &v90 - v14;
  __chkstk_darwin(v15);
  v17 = &v90 - v16;
  v18 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v18);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_758AA0();
  sub_758A90();
  v21 = [a3 traitCollection];
  v95 = a1;
  sub_D2028(v17);

  v22 = sub_32CB94(a3);
  if (!v22)
  {
    sub_C4680();
    swift_allocError();
    *v43 = 0;
    sub_768F50();
    (*(v11 + 8))(v17, v10);
    sub_68DF8(v20, type metadata accessor for FlowPresentationHints);
  }

  v100 = v17;
  v97 = v20;
  v102 = v11;
  v99 = v10;
  v23 = v22;
  v24 = [v23 traitCollection];
  v25 = sub_758A60();
  v27 = v26;
  v28 = v94;
  sub_758A80();
  *&v103[0] = v23;
  sub_BE70(0, &unk_94DCA0, UINavigationController_ptr);
  v29 = v23;
  sub_BD88(&qword_940BF8, &qword_780670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v106 = 0;
    v104 = 0u;
    v105 = 0u;
  }

  v30 = sub_471418(v95, v24, v25, v27, v28, &v104, v96, 1);

  sub_10A2C(v28, &unk_944FF0, &unk_783C00);
  sub_10A2C(&v104, &unk_9442E0, &unk_783C10);
  if (!v30)
  {

    v45 = v92;
    v46 = v91;
    v47 = v93;
    (*(v92 + 104))(v91, enum case for ActionOutcome.unsupported(_:), v93);
    sub_768F60();

    (*(v45 + 8))(v46, v47);
    (*(v102 + 8))(v100, v99);
    return sub_68DF8(v97, type metadata accessor for FlowPresentationHints);
  }

  v31 = [v29 presentingViewController];

  v33 = v99;
  v34 = v102;
  v35 = v97;
  v36 = v100;
  if (!v31)
  {
LABEL_24:
    v55 = sub_C4AD4(v35, v29, v32);
    v56 = *(v34 + 104);
    v56(v98, enum case for FlowPresentationContext.push(_:), v33);
    sub_C5ED0(&qword_943AF8, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
    sub_769430();
    sub_769430();
    LODWORD(v96) = v55;
    if (v104 == v103[0])
    {
      v57 = 1;
    }

    else
    {
      v57 = sub_76A950();
    }

    v58 = v34 + 8;
    v24 = *(v34 + 8);
    v34 = v99;
    v102 = v58;
    (v24)(v98, v99);

    if (v57)
    {
      [v30 setModalPresentationCapturesStatusBarAppearance:1];
      v104 = xmmword_94DCF8;
      v105 = xmmword_94DD08;
      v106 = xmmword_94DD18;
      v107 = xmmword_94DD28;
      v108 = xmmword_94DD38;
      v59 = qword_94DD48;
      v109 = qword_94DD48;
      v60 = BYTE8(xmmword_94DD18);
      if (BYTE8(xmmword_94DD18) != 255)
      {
        v61 = v104;
        v63 = v105;
        v62 = *&v106;
        v64 = v107;
        v65 = v108;
        v66 = v104;
        v67 = [v30 popoverPresentationController];
        if (v67)
        {
          v68 = v67;
          if (v60)
          {
            sub_1ED18(&v104, v103, &unk_93FEF0, &unk_7834B0);
            v69 = v68;
            [v69 setSourceView:v61];
            [v69 setSourceRect:{*(&v61 + 1), v63, v62}];
            v34 = v99;
            sub_10A2C(&v104, &unk_93FEF0, &unk_7834B0);
          }

          else
          {
            [v67 setBarButtonItem:v61];
          }

          [v68 setPopoverLayoutMargins:{v64, v65}];
          [v68 setPermittedArrowDirections:v59];
        }

        else
        {
          if (qword_93DF00 != -1)
          {
            swift_once();
          }

          v86 = sub_768FF0();
          sub_BE38(v86, qword_9A0430);
          sub_BD88(&qword_93FD00, &unk_77DF10);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77B6D0;
          sub_768540();
          sub_768EB0();
        }

        sub_10A2C(&v104, &unk_93FEF0, &unk_7834B0);
      }

      [v29 pushViewController:v30 animated:v96 & 1];
      goto LABEL_58;
    }

    v70 = v90;
    v56(v90, enum case for FlowPresentationContext.replace(_:), v34);
    sub_769430();
    sub_769430();
    if (v104 == v103[0])
    {
      (v24)(v70, v34);
    }

    else
    {
      v71 = sub_76A950();
      (v24)(v70, v34);

      if ((v71 & 1) == 0)
      {
LABEL_58:
        v87 = v92;
        v88 = v91;
        v89 = v93;
        (*(v92 + 104))(v91, enum case for ActionOutcome.performed(_:), v93);
        sub_768F60();

        (*(v87 + 8))(v88, v89);
        (v24)(v100, v34);
        return sub_68DF8(v97, type metadata accessor for FlowPresentationHints);
      }
    }

    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (!v72)
    {
      v79 = [v29 viewControllers];
      sub_BE70(0, &qword_9434E0, UIViewController_ptr);
      v36 = sub_769460();

      v37 = (v36 >> 62);
      if (!(v36 >> 62))
      {
        if (!*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_45:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v37 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v36 = sub_45EDF0();
        }

        v81 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
        if (v81)
        {
          v82 = v81 - 1;
          v37 = *(&stru_20.cmd + 8 * v82 + (v36 & 0xFFFFFFFFFFFFFF8));
          *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) = v82;
          *&v104 = v36;
          v83 = [v37 tabBarItem];
          [v30 setTabBarItem:v83];

          v84 = v30;
          sub_769440();
          if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v104 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
LABEL_50:
            sub_769500();
            isa = sub_769450().super.isa;

            [v29 setViewControllers:isa animated:v96 & 1];

            goto LABEL_58;
          }

LABEL_68:
          sub_7694C0();
          v34 = v99;
          goto LABEL_50;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_65:
      if (!sub_76A860())
      {
        goto LABEL_66;
      }

      goto LABEL_45;
    }

    v35 = v72;
    v36 = v30;
    v73 = [v29 viewControllers];
    v37 = sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v34 = sub_769460();

    v33 = v34 >> 62;
    if (!(v34 >> 62))
    {
      if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_38:
        v74 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v33 || (v74 & 1) == 0)
        {
          v34 = sub_45EDF0();
        }

        v75 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
        if (v75)
        {
          v76 = v75 - 1;
          v77 = *(&stru_20.cmd + 8 * v76 + (v34 & 0xFFFFFFFFFFFFFF8));
          *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)) = v76;

          v78 = sub_769450().super.isa;

          [v29 setViewControllers:v78];

          [v29 presentViewController:v35 animated:0 completion:0];
          v34 = v99;
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    if (sub_76A860())
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  v37 = [v29 viewControllers];
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v38 = sub_769460();

  if (!(v38 >> 62))
  {
    if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  if (!sub_76A860())
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_8:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_62;
    }

    v39 = *(v38 + 32);
  }

  v40 = v39;

  if ((sub_392758(v40) & 1) == 0)
  {
    goto LABEL_14;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v29;
  v42 = v29;
  if (sub_392758(v30))
  {

LABEL_14:

    goto LABEL_24;
  }

  v48 = [v30 navigationItem];
  v49 = [v48 rightBarButtonItems];
  if (v49)
  {
    v50 = v49;
    sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
    v51 = sub_769460();
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
  }

  *&v104 = v51;
  sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_C5E80;
  *(v52 + 24) = v41;

  v110.value.super.super.isa = sub_76A1F0();
  v110.is_nil = 0;
  v53.super.super.isa = sub_769830(UIBarButtonSystemItemClose, v110, v111).super.super.isa;
  if (!(v51 >> 62) || (result = sub_76A860(), (result & 0x8000000000000000) == 0))
  {
    sub_4A7B58(0, 0, v53.super.super.isa);
    v54 = sub_769450().super.isa;

    [v48 setRightBarButtonItems:v54];

    v33 = v99;
    v34 = v102;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_C5E48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C5E98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C5ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C5F2C()
{
  result = qword_943B08;
  if (!qword_943B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_943B08);
  }

  return result;
}

__n128 ProductLockupInlineUberLayout.init(metrics:keylineView:blurView:darkeningOverlayEffectView:wordmarkView:iconView:titleLabel:subtitleLabel:shareButton:offerButton:expandedOfferSubtitleLabel:downloadProgressLabel:arrowView:bannerView:secondaryBannerView:shadowView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_C6154(a1, a9);
  v21 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  sub_10914(a3, a9 + v21[6]);
  v24 = a9 + v21[7];
  v25 = *(a4 + 16);
  *v24 = *a4;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a4 + 32);
  sub_10914(a5, a9 + v21[10]);
  sub_10914(a6, a9 + v21[8]);
  sub_10914(a7, a9 + v21[9]);
  sub_10914(a8, a9 + v21[11]);
  v26 = a9 + v21[12];
  v27 = *(a10 + 16);
  *v26 = *a10;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a10 + 32);
  sub_10914(a11, a9 + v21[13]);
  v28 = a9 + v21[14];
  v29 = *(a12 + 16);
  *v28 = *a12;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a12 + 32);
  v30 = a9 + v21[15];
  v31 = *(a13 + 16);
  *v30 = *a13;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a13 + 32);
  v32 = a9 + v21[16];
  v33 = *(a14 + 16);
  *v32 = *a14;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a14 + 32);
  v34 = a9 + v21[17];
  v35 = *(a15 + 16);
  *v34 = *a15;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a15 + 32);
  v36 = a9 + v21[18];
  v37 = *(a16 + 16);
  *v36 = *a16;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a16 + 32);
  v38 = a9 + v21[19];
  result = *a17;
  v40 = *(a17 + 16);
  *v38 = *a17;
  *(v38 + 16) = v40;
  *(v38 + 32) = *(a17 + 32);
  return result;
}

uint64_t sub_C6154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C6204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_C64E0@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_1ED18(v1 + *(v3 + 56), &v9, &qword_9417D0, &unk_780EA0);
  if (v10)
  {
    sub_10914(&v9, v11);
    v4 = v12;
    v5 = v13;
    v6 = sub_B170(v11, v12);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(v5 + 8);
    v7 = sub_B1B4(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
LABEL_3:
    sub_BEB8(v11);
    return result;
  }

  sub_10A2C(&v9, &qword_9417D0, &unk_780EA0);
  sub_1ED18(v1 + *(v3 + 60), &v9, &unk_943B10, &qword_77E080);
  if (v10)
  {
    sub_10914(&v9, v11);
    sub_B170(v11, v12);
    if ((sub_766540() & 1) == 0)
    {
      sub_134D8(v11, a1);
      goto LABEL_3;
    }

    sub_BEB8(v11);
  }

  else
  {
    sub_10A2C(&v9, &unk_943B10, &qword_77E080);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.init(iconSize:wordmarkSpace:titleSpace:subtitleSpace:offerButtonTopSpace:offerButtonBottomSpace:shareButtonSpace:bannerViewHeight:secondaryBannerViewHeight:expandedOfferSubtitleSpace:expandedOfferSubtitleBottomSpace:chevronSpace:backgroundMaxWidth:backgroundHorizontalPadding:backgroundHorizontalContentPadding:blurHeight:darkeningOverlayHeight:contentInsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23)
{
  a9[4] = a10;
  a9[5] = a11;
  v32 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v33 = v32[7];
  v34 = sub_BD88(&qword_940AD0, &unk_78F910);
  v35 = *(*(v34 - 8) + 32);
  v35(a9 + v33, a1, v34);
  v35(a9 + v32[6], a2, v34);
  v35(a9 + v32[8], a3, v34);
  sub_10914(a4, a9 + v32[9]);
  v35(a9 + v32[10], a5, v34);
  sub_10914(a6, a9 + v32[14]);
  sub_10914(a7, a9 + v32[15]);
  sub_10914(a8, a9 + v32[16]);
  sub_10914(a16, a9 + v32[11]);
  sub_10914(a17, a9 + v32[12]);
  v36 = v32[13];
  v37 = sub_BD88(&qword_94E5D0, &qword_783580);
  (*(*(v37 - 8) + 32))(a9 + v36, a18, v37);
  sub_10914(a19, a9 + v32[17]);
  v35(a9 + v32[18], a20, v34);
  v35(a9 + v32[19], a21, v34);
  sub_10914(a22, a9 + v32[20]);
  result = sub_10914(a23, a9 + v32[21]);
  *a9 = a12;
  a9[1] = a13;
  a9[2] = a14;
  a9[3] = a15;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 36);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 44);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 48);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_BD88(&qword_94E5D0, &qword_783580);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_BD88(&qword_94E5D0, &qword_783580);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.shareButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 56);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 60);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 64);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundMaxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 68);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.blurHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 80);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.darkeningOverlayHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 84);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

double ProductLockupInlineUberLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_C9CB4(a1, v3, a2, a3);
}

void static ProductLockupInlineUberLayout.estimatedPaddingForLabels(metrics:in:)(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 traitCollection];
  v9 = sub_7699E0();

  if (v9)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    (*(v4 + 8))(v7, v3);
  }
}

uint64_t ProductLockupInlineUberLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v172 = a2;
  v174 = sub_BD88(&qword_940AD0, &unk_78F910);
  v169 = *(v174 - 8);
  __chkstk_darwin(v174);
  v168 = &v167 - v13;
  v14 = sub_76A920();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_705B8(a3, a4, a5, a6, *v6, v6[1]);
  v190 = v19;
  v187 = v20;
  v192 = v21;
  *&v22 = COERCE_DOUBLE(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0));
  v23 = (v6 + v22[15]);
  v24 = v23[3];
  sub_B170(v23, v24);
  sub_33964(v24);
  sub_766700();
  v173 = v25;
  v28 = *(v15 + 8);
  v26 = v15 + 8;
  v27 = v28;
  v28(v17, v14);
  v29 = (v6 + v22[16]);
  v30 = v29[3];
  sub_B170(v29, v30);
  sub_33964(v30);
  sub_766700();
  v176 = v31;
  v193 = v14;
  v28(v17, v14);
  v32 = [a1 traitCollection];
  LOBYTE(v30) = sub_7699D0();

  if ((v30 & 1) == 0 || (sub_C64E0(&v196), v33 = v197, sub_10A2C(&v196, &unk_943B10, &qword_77E080), !v33))
  {
    sub_BD88(&qword_94E5D0, &qword_783580);
    v34 = v168;
    sub_759380();
    sub_766470();
    sub_759360();
    v27(v17, v193);
    (*(v169 + 8))(v34, v174);
  }

  v35 = [a1 traitCollection];
  v36 = sub_7699D0();

  v179 = a3;
  v185 = v26;
  v188 = v18;
  v191 = v27;
  v189 = *&v22;
  v180 = a6;
  v177 = a5;
  v178 = a4;
  if (v36)
  {
    v37 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v38 = (v7 + *(v37 + 24));
    v39 = v38[3];
    v186 = v38[4];
    v184 = COERCE_DOUBLE(sub_B170(v38, v39));
    v199.origin.x = a3;
    v199.origin.y = a4;
    v199.size.width = a5;
    v199.size.height = a6;
    CGRectGetMinX(v199);
    v200.origin.x = a3;
    v200.origin.y = a4;
    v200.size.width = a5;
    v200.size.height = a6;
    CGRectGetMaxY(v200);
    v40 = (v7 + v22[20]);
    v41 = v40[3];
    sub_B170(v40, v41);
    sub_33964(v41);
    v42 = v193;
    sub_766700();
    v191(v17, v42);
    v201.origin.x = a3;
    v201.origin.y = a4;
    v201.size.width = a5;
    v201.size.height = a6;
    CGRectGetWidth(v201);
    v43 = v40[3];
    sub_B170(v40, v43);
    sub_33964(v43);
    sub_766700();
    v44 = v42;
    v27 = v191;
    v191(v17, v44);
    sub_766530();
    v186 = v37;
    sub_1ED18(v7 + *(v37 + 28), &v196, &unk_943B10, &qword_77E080);
    if (v197)
    {
      v184 = v198;
      sub_B170(&v196, v197);
      v202.origin.x = a3;
      v202.origin.y = a4;
      v202.size.width = a5;
      v202.size.height = a6;
      CGRectGetMinX(v202);
      v203.origin.x = a3;
      v203.origin.y = a4;
      v203.size.width = a5;
      v203.size.height = a6;
      CGRectGetMaxY(v203);
      v45 = (v7 + *(*&v189 + 84));
      v46 = v45[3];
      sub_B170(v45, v46);
      sub_33964(v46);
      v47 = v193;
      sub_766700();
      v191(v17, v47);
      v204.origin.x = a3;
      v204.origin.y = a4;
      v204.size.width = a5;
      v204.size.height = a6;
      CGRectGetWidth(v204);
      v48 = v45[3];
      sub_B170(v45, v48);
      sub_33964(v48);
      sub_766700();
      v49 = v47;
      v27 = v191;
      v191(v17, v49);
      sub_766530();
      sub_BEB8(&v196);
    }

    else
    {
      sub_10A2C(&v196, &unk_943B10, &qword_77E080);
    }

    v62 = v187;
    sub_1ED18(v7 + v186[5], &v196, &unk_943B10, &qword_77E080);
    v18 = v188;
    if (v197)
    {
      sub_B170(&v196, v197);
      v63 = v179;
      v206.origin.x = v179;
      v206.origin.y = a4;
      v206.size.width = a5;
      v206.size.height = a6;
      CGRectGetMinX(v206);
      v207.origin.x = v63;
      v207.origin.y = a4;
      v207.size.width = a5;
      v207.size.height = a6;
      CGRectGetMinY(v207);
      v208.origin.x = v63;
      v208.origin.y = a4;
      v208.size.width = a5;
      v208.size.height = a6;
      CGRectGetWidth(v208);
      if (qword_93CD10 != -1)
      {
        swift_once();
      }

      sub_BE38(v174, qword_99D220);
      sub_766470();
      sub_759360();
      v27(v17, v193);
      v64 = [a1 traitCollection];
      [v64 displayScale];

      sub_766530();
      sub_BEB8(&v196);
      v18 = v188;
      v62 = v187;
    }

    else
    {
      sub_10A2C(&v196, &unk_943B10, &qword_77E080);
    }
  }

  else
  {
    v205.origin.x = a3;
    v205.origin.y = a4;
    v205.size.width = a5;
    v205.size.height = a6;
    Width = CGRectGetWidth(v205);
    v51 = (v7 + v22[17]);
    v52 = v51[3];
    sub_B170(v51, v52);
    sub_33964(v52);
    sub_766700();
    v54 = v53;
    v55 = v193;
    v27(v17, v193);
    v56 = (Width - v54) * 0.5;
    sub_766470();
    sub_759360();
    v58 = v57;
    v27(v17, v55);
    if (v56 > v58)
    {
      v59 = v56;
    }

    else
    {
      v59 = v58;
    }

    v60 = floor(v59);
    v61 = type metadata accessor for ProductLockupInlineUberLayout(0);
    sub_B170((v7 + *(v61 + 24)), *(v7 + *(v61 + 24) + 24));
    sub_705B8(a3, a4, a5, a6, 0.0, v60);
    sub_766530();
    v186 = v61;
    sub_1ED18(v7 + *(v61 + 20), &v196, &unk_943B10, &qword_77E080);
    if (v197)
    {
      sub_B170(&v196, v197);
      sub_766530();
      sub_BEB8(&v196);
    }

    else
    {
      sub_10A2C(&v196, &unk_943B10, &qword_77E080);
    }

    v62 = v187;
  }

  v209.origin.x = v18;
  v65 = v190;
  v209.origin.y = v190;
  v209.size.width = v62;
  v66 = v192;
  v209.size.height = v192;
  MidX = CGRectGetMidX(v209);
  v68 = v7[4];
  v69 = floor(MidX - v68 * 0.5);
  v210.origin.x = v18;
  v210.origin.y = v65;
  v210.size.width = v62;
  v210.size.height = v66;
  MinY = CGRectGetMinY(v210);
  v71 = v7[5];
  v72 = floor(MinY - v71 * 0.5);
  type metadata accessor for ProductLockupInlineUberLayout(0);
  v73 = v186;
  v74 = (v7 + v186[8]);
  sub_B170(v74, v74[3]);
  v183 = v69;
  v181 = v72;
  v184 = v68;
  v182 = v71;
  sub_769D20();
  sub_766530();
  sub_1ED18(v7 + v73[19], &v196, &unk_943B10, &qword_77E080);
  if (v197)
  {
    sub_B170(&v196, v197);
    sub_B170(v74, v74[3]);
    v27 = v191;
    sub_766520();
    sub_766530();
    sub_BEB8(&v196);
  }

  else
  {
    sub_10A2C(&v196, &unk_943B10, &qword_77E080);
  }

  v75 = [a1 traitCollection];
  v76 = sub_7699E0();

  v77 = 0.0;
  if (v76)
  {
    sub_766470();
    sub_759360();
    v77 = v78;
    v27(v17, v193);
  }

  v79 = (v7 + v186[10]);
  sub_B170(v79, v79[3]);
  v211.origin.x = v18;
  v80 = v190;
  v211.origin.y = v190;
  v211.size.width = v62;
  v81 = v192;
  v211.size.height = v192;
  CGRectGetWidth(v211);
  v171 = v77;
  v170 = v77 + v77;
  v212.origin.x = v18;
  v212.origin.y = v80;
  v212.size.width = v62;
  v212.size.height = v81;
  CGRectGetMaxY(v212);
  v213.origin.x = v183;
  v213.origin.y = v181;
  v213.size.width = v184;
  v213.size.height = v182;
  CGRectGetMaxY(v213);
  sub_7665A0();
  sub_766470();
  sub_759360();
  v83 = v82;
  v27(v17, v193);
  v196 = v83;
  v84 = v187;
  sub_766720();
  sub_B170(v79, v79[3]);
  v214.origin.x = v18;
  v214.origin.y = v80;
  v214.size.width = v84;
  v214.size.height = v81;
  CGRectGetMinX(v214);
  v215.origin.x = v18;
  v215.origin.y = v80;
  v215.size.width = v84;
  v215.size.height = v81;
  CGRectGetWidth(v215);
  v216.origin.x = v183;
  v216.origin.y = v181;
  v216.size.width = v184;
  v216.size.height = v182;
  CGRectGetMaxY(v216);
  sub_766530();
  v85 = [a1 traitCollection];
  v86 = sub_7699D0();

  if (v86)
  {
    v87 = v188;
    v217.origin.x = v188;
    v217.origin.y = v80;
    v217.size.width = v84;
    v217.size.height = v81;
    MinX = CGRectGetMinX(v217);
    sub_B170(v79, v79[3]);
    sub_766520();
    MaxY = CGRectGetMaxY(v218);
    v219.origin.x = v87;
    v219.origin.y = v80;
    v219.size.width = v84;
    v219.size.height = v81;
    v89 = CGRectGetWidth(v219);
    v90 = v80;
    v91 = v89;
    v92 = v87;
    v93 = v84;
    v94 = v81;
    v95 = v186;
  }

  else
  {
    v96 = v186;
    v97 = (v7 + v186[6]);
    sub_B170(v97, v97[3]);
    sub_766520();
    MinX = CGRectGetMinX(v220);
    sub_B170(v79, v79[3]);
    sub_766520();
    MaxY = CGRectGetMaxY(v221);
    sub_B170(v97, v97[3]);
    sub_766520();
    v91 = CGRectGetWidth(v222);
    sub_B170(v97, v97[3]);
    sub_766520();
    v95 = v96;
  }

  v98 = CGRectGetMaxY(*&v92);
  v223.origin.x = v183;
  v223.origin.y = v181;
  v223.size.width = v184;
  v223.size.height = v182;
  v99 = v98 - CGRectGetMaxY(v223);
  v100 = v91 - v170;
  v101 = v171 + MinX;
  v102 = (v7 + v95[9]);
  sub_B170(v102, *(v102 + 3));
  sub_7665A0();
  v184 = v103;
  v183 = v104;
  v182 = v105;
  v106 = (v7 + v95[11]);
  sub_B170(v106, *(v106 + 3));
  sub_7665A0();
  v170 = v107;
  v171 = v108;
  v167 = v109;
  v181 = v110;
  sub_B170(v102, *(v102 + 3));
  v224.origin.x = v101;
  v111 = MaxY;
  v224.origin.y = MaxY;
  v224.size.width = v100;
  v224.size.height = v99;
  CGRectGetMinX(v224);
  v225.origin.x = v101;
  v225.origin.y = v111;
  v225.size.width = v100;
  v225.size.height = v99;
  CGRectGetMinY(v225);
  sub_766470();
  sub_759360();
  v113 = v112;
  v191(v17, v193);
  v196 = v113;
  v114 = v182;
  sub_766720();
  v226.origin.x = v101;
  v226.origin.y = v111;
  v226.size.width = v100;
  v226.size.height = v99;
  CGRectGetWidth(v226);
  sub_766530();
  sub_B170(v106, *(v106 + 3));
  if (sub_766500())
  {
    v115 = *(v106 + 3);
    v184 = v106[4];
    sub_B170(v106, v115);
    v227.origin.x = v101;
    v116 = MaxY;
    v227.origin.y = MaxY;
    v227.size.width = v100;
    v227.size.height = v99;
    v183 = CGRectGetMinX(v227);
    sub_B170(v102, *(v102 + 3));
    sub_766520();
    CGRectGetMaxY(v228);
    sub_766470();
    sub_759360();
    v118 = v117;
    v191(v17, v193);
    v196 = v118;
    v119 = v181;
    sub_766720();
    v229.origin.x = v101;
    v229.origin.y = v116;
    v229.size.width = v100;
    v229.size.height = v99;
    CGRectGetWidth(v229);
    sub_766530();
  }

  else
  {
    sub_B170(v106, *(v106 + 3));
    sub_766530();
    v106 = v102;
    v119 = v114;
  }

  v120 = v192;
  sub_B170(v106, *(v106 + 3));
  sub_766520();
  v184 = CGRectGetMaxY(v230) - v119;
  v121 = v186;
  v122 = (v7 + v186[13]);
  sub_B170(v122, v122[3]);
  v123 = v187;
  sub_7665A0();
  v125 = v124;
  v127 = v126;
  v128 = v188;
  v231.origin.x = v188;
  v129 = v190;
  v231.origin.y = v190;
  v231.size.width = v123;
  v231.size.height = v120;
  v130 = floor(CGRectGetMidX(v231) + v125 * -0.5);
  v131 = (v7 + *(*&v189 + 36));
  v132 = v131[3];
  sub_B170(v131, v132);
  sub_33964(v132);
  sub_766700();
  v134 = v133;
  v191(v17, v193);
  v135 = floor(v184 + v134);
  sub_B170(v122, v122[3]);
  v182 = v130;
  v181 = v135;
  v184 = v125;
  v183 = v127;
  sub_769D20();
  sub_766530();
  sub_1ED18(v7 + v121[17], &v194, &unk_943B10, &qword_77E080);
  if (v195)
  {
    sub_10914(&v194, &v196);
    v136 = v179;
    v232.origin.x = v179;
    v137 = v178;
    v232.origin.y = v178;
    v138 = v177;
    v232.size.width = v177;
    v139 = v180;
    v232.size.height = v180;
    MaxY = CGRectGetMinX(v232);
    v233.origin.x = v128;
    v233.origin.y = v129;
    v233.size.width = v123;
    v233.size.height = v120;
    CGRectGetMaxY(v233);
    v234.origin.x = v136;
    v234.origin.y = v137;
    v234.size.width = v138;
    v234.size.height = v139;
    CGRectGetWidth(v234);
    sub_B170(&v196, v197);
    sub_766530();
    sub_BEB8(&v196);
  }

  else
  {
    sub_10A2C(&v194, &unk_943B10, &qword_77E080);
  }

  sub_1ED18(v7 + v121[18], &v194, &unk_943B10, &qword_77E080);
  if (v195)
  {
    sub_10914(&v194, &v196);
    v140 = v179;
    v235.origin.x = v179;
    v141 = v178;
    v235.origin.y = v178;
    v142 = v177;
    v235.size.width = v177;
    v143 = v180;
    v235.size.height = v180;
    CGRectGetMinX(v235);
    v236.origin.x = v188;
    v236.origin.y = v190;
    v236.size.width = v123;
    v236.size.height = v192;
    CGRectGetMaxY(v236);
    v237.origin.x = v140;
    v237.origin.y = v141;
    v237.size.width = v142;
    v237.size.height = v143;
    CGRectGetWidth(v237);
    sub_B170(&v196, v197);
    sub_766530();
    sub_BEB8(&v196);
  }

  else
  {
    sub_10A2C(&v194, &unk_943B10, &qword_77E080);
  }

  v144 = v189;
  sub_C64E0(&v194);
  if (v195)
  {
    sub_10914(&v194, &v196);
    sub_B170(&v196, v197);
    sub_7665A0();
    v238.origin.x = v188;
    v238.origin.y = v190;
    v238.size.width = v123;
    v238.size.height = v192;
    CGRectGetMidX(v238);
    v239.origin.x = v182;
    v239.origin.y = v181;
    v239.size.width = v184;
    v239.size.height = v183;
    CGRectGetMaxY(v239);
    sub_B170((v7 + *(*&v144 + 44)), *(v7 + *(*&v144 + 44) + 24));
    v145 = v192;
    sub_766720();
    sub_B170(&v196, v197);
    v123 = v187;
    sub_766530();
    sub_BEB8(&v196);
  }

  else
  {
    sub_10A2C(&v194, &unk_943B10, &qword_77E080);
    v145 = v192;
  }

  sub_1ED18(v7 + v121[16], &v194, &unk_943B10, &qword_77E080);
  v146 = v188;
  if (v195)
  {
    sub_10914(&v194, &v196);
    v147 = [a1 traitCollection];
    v148 = sub_769A00();

    if (v148 & 1) != 0 || (sub_C64E0(&v194), v149 = v195, sub_10A2C(&v194, &unk_943B10, &qword_77E080), v149) && (v150 = [a1 traitCollection], v151 = sub_7699D0(), v150, (v151))
    {
      sub_B170(&v196, v197);
    }

    else
    {
      sub_B170(&v196, v197);
      sub_7665B0();
      v240.origin.x = v146;
      v152 = v190;
      v240.origin.y = v190;
      v240.size.width = v187;
      v240.size.height = v145;
      CGRectGetMidX(v240);
      v241.origin.x = v146;
      v241.origin.y = v152;
      v241.size.width = v187;
      v241.size.height = v145;
      CGRectGetMaxY(v241);
      sub_BD88(&qword_94E5D0, &qword_783580);
      v153 = v168;
      sub_759380();
      sub_766470();
      sub_759360();
      v191(v17, v193);
      (*(v169 + 8))(v153, v174);
      v146 = v188;
      sub_B170(&v196, v197);
      v123 = v187;
      sub_766530();
      sub_B170(&v196, v197);
    }

    sub_766550();
    sub_BEB8(&v196);
  }

  else
  {
    sub_10A2C(&v194, &unk_943B10, &qword_77E080);
  }

  sub_1ED18(v7 + v121[12], &v194, &unk_943B10, &qword_77E080);
  if (v195)
  {
    sub_10914(&v194, &v196);
    sub_B170(&v196, v197);
    sub_7665B0();
    v154 = v123;
    v156 = v155;
    v184 = v155;
    v187 = v157;
    sub_B170((v7 + v121[6]), *(v7 + v121[6] + 24));
    sub_766520();
    v158 = CGRectGetMaxX(v242) - v156;
    v159 = (v7 + *(*&v144 + 56));
    v160 = v159[3];
    sub_B170(v159, v160);
    sub_33964(v160);
    sub_766700();
    v162 = v161;
    v163 = v193;
    v164 = v191;
    v191(v17, v193);
    v189 = v158 - v162;
    v243.origin.x = v146;
    v243.origin.y = v190;
    v243.size.width = v154;
    v243.size.height = v145;
    CGRectGetMinY(v243);
    v165 = v159[3];
    sub_B170(v159, v165);
    sub_33964(v165);
    sub_766700();
    v164(v17, v163);
    sub_B170(&v196, v197);
    sub_769D20();
    sub_766530();
    sub_BEB8(&v196);
  }

  else
  {
    sub_10A2C(&v194, &unk_943B10, &qword_77E080);
  }

  return sub_7664B0();
}

double ProductLockupInlineUberLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_940AD0, &unk_78F910);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_B170((v3 + *(v13 + 52)), *(v3 + *(v13 + 52) + 24));
  sub_7665B0();
  v15 = v14;
  v16 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_BD88(&qword_94E5D0, &qword_783580);
  sub_759380();
  sub_766470();
  sub_759360();
  v18 = v17;
  v19 = v30;
  v20 = *(v31 + 8);
  v31 += 8;
  v20(v8, v30);
  (*(v10 + 8))(v12, v9);
  v21 = (v3 + *(v16 + 60));
  v22 = v21[3];
  sub_B170(v21, v22);
  sub_33964(v22);
  sub_766700();
  v24 = v23;
  v20(v8, v19);
  v25 = (v4 + *(v16 + 64));
  v26 = v25[3];
  sub_B170(v25, v26);
  sub_33964(v26);
  sub_766700();
  v28 = v27;
  v20(v8, v19);
  return v15 + v18 + v24 + v28;
}

double sub_C9CB4(void *a1, double *a2, double a3, double a4)
{
  v7 = sub_BD88(&qword_940AD0, &unk_78F910);
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v64 = v60 - v8;
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_7699D0();

  v63 = v10;
  if ((v15 & 1) == 0)
  {
    v16 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    v17 = (a2 + v16[15]);
    v18 = v17[3];
    sub_B170(v17, v18);
    sub_33964(v18);
    sub_766700();
    v19 = *(v10 + 8);
    v19(v13, v9);
    v20 = (a2 + v16[16]);
    v21 = v20[3];
    sub_B170(v20, v21);
    sub_33964(v21);
    sub_766700();
    v19(v13, v9);
    v22 = (a2 + v16[17]);
    v23 = v22[3];
    sub_B170(v22, v23);
    sub_33964(v23);
    v24 = v64;
    sub_766700();
    v19(v13, v9);
    sub_766470();
    sub_759360();
    v19(v13, v9);
    sub_BD88(&qword_94E5D0, &qword_783580);
    sub_759380();
    sub_766470();
    sub_759360();
    v19(v13, v9);
    v10 = v63;
    (*(v65 + 8))(v24, v66);
  }

  sub_769DA0();
  v26 = v25;
  v27 = [a1 traitCollection];
  v28 = sub_7699E0();

  if (v28)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    (*(v10 + 8))(v13, v9);
  }

  v62 = v26;
  v29 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_B170((a2 + *(v29 + 36)), *(a2 + *(v29 + 36) + 24));
  sub_7665A0();
  v60[2] = v30;
  v60[4] = v31;
  v60[1] = v32;
  v60[3] = v33;
  v61 = v29;
  v34 = (a2 + *(v29 + 44));
  sub_B170(v34, v34[3]);
  sub_7665A0();
  sub_B170(v34, v34[3]);
  if (sub_766500())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    v36 = v35;
    (*(v10 + 8))(v13, v9);
    v69[0] = v36;
    sub_766720();
  }

  sub_C64E0(&v67);
  if (v68)
  {
    sub_10914(&v67, v69);
    sub_B170(v69, v70);
    sub_7665A0();
    v37 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_B170((a2 + *(v37 + 44)), *(a2 + *(v37 + 44) + 24));
    sub_766720();
    v38 = (a2 + *(v37 + 48));
    v39 = v38[3];
    sub_B170(v38, v39);
    sub_33964(v39);
    sub_766700();
    (*(v10 + 8))(v13, v9);
    sub_BEB8(v69);
  }

  else
  {
    sub_10A2C(&v67, &unk_943B10, &qword_77E080);
  }

  v40 = v65;
  sub_C64E0(v69);
  v41 = v70;
  sub_10A2C(v69, &unk_943B10, &qword_77E080);
  if (!v41)
  {
    v42 = [a1 traitCollection];
    v43 = sub_7699E0();

    if (v43 & 1) != 0 || (v44 = [a1 traitCollection], v45 = sub_769A00(), v44, (v45))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_766470();
      sub_759360();
      (*(v10 + 8))(v13, v9);
    }
  }

  v46 = [a1 traitCollection];
  v47 = sub_7699D0();

  if (v47)
  {
    sub_C64E0(v69);
    sub_10A2C(v69, &unk_943B10, &qword_77E080);
  }

  v48 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_BD88(&qword_94E5D0, &qword_783580);
  v49 = v64;
  sub_759380();
  sub_766470();
  sub_759360();
  v50 = *(v63 + 8);
  v50(v13, v9);
  (*(v40 + 8))(v49, v66);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_766470();
  sub_759360();
  v50(v13, v9);
  sub_766470();
  sub_759360();
  v52 = v51;
  v50(v13, v9);
  v69[0] = v52;
  sub_766720();
  v53 = (a2 + v48[9]);
  v54 = v53[3];
  sub_B170(v53, v54);
  sub_33964(v54);
  sub_766700();
  v50(v13, v9);
  sub_B170((a2 + *(v61 + 52)), *(a2 + *(v61 + 52) + 24));
  sub_7665B0();
  v55 = (a2 + v48[15]);
  v56 = v55[3];
  sub_B170(v55, v56);
  sub_33964(v56);
  sub_766700();
  v50(v13, v9);
  v57 = (a2 + v48[16]);
  v58 = v57[3];
  sub_B170(v57, v58);
  sub_33964(v58);
  sub_766700();
  v50(v13, v9);
  return a3;
}

uint64_t sub_CA7F4(uint64_t a1)
{
  *(a1 + 8) = sub_CA85C(&qword_943B20, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  result = sub_CA85C(&qword_943B28, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_CA85C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProductLockupInlineUberLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_CA8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_CA988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_CAA44(uint64_t a1)
{
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_7E0B0(319, &qword_94E850, &unk_9418A0, &qword_780FF0);
    if (v2 <= 0x3F)
    {
      sub_70B18(319, &unk_94E830, &protocol descriptor for LayoutView);
      if (v3 <= 0x3F)
      {
        sub_70B18(319, &qword_941880, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_7E0B0(319, &unk_94E840, &unk_941890, &unk_77E250);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_CABA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_BD88(&qword_940AD0, &unk_78F910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_BD88(&qword_94E5D0, &qword_783580);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_CACFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_BD88(&qword_940AD0, &unk_78F910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 24) = (a2 - 1);
  }

  else
  {
    v13 = sub_BD88(&qword_94E5D0, &qword_783580);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_CAE40(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_7E378(319);
      if (v3 <= 0x3F)
      {
        sub_70B18(319, &qword_943C60, &protocol descriptor for AnyDimension);
        if (v4 <= 0x3F)
        {
          sub_CAF54(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_CAF54(uint64_t a1)
{
  if (!qword_943C68)
  {
    sub_133D8(&qword_940AD0, &unk_78F910);
    v1 = sub_7593A0();
    if (!v2)
    {
      atomic_store(v1, &qword_943C68);
    }
  }
}

uint64_t type metadata accessor for GenericPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_943CE0;
  if (!qword_943CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_CB050(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double *a10)
{
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a4;
  v42 = a5;
  v13 = sub_764930();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_94F1F0, &qword_782290);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v35 = a2;
  v36 = a3;
  v44 = a2;
  v45 = a3;
  sub_762BA0();
  v20 = sub_762BB0();
  v37 = a10;
  v33 = a9;
  v21 = v13;
  v22 = v20(a1, sub_60CA0, v43, v41, v42, v38, v39, v40, a9, a10);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v17 + 8))(v19, v16);
  v23 = v34;
  v24 = (*(v34 + 88))(v15, v21);
  if (v24 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    v25 = v35();
    v26 = sub_CB3B4(a1, v25, v41, v42, v38, v39, v40, v33, v37);

LABEL_5:

    return v26;
  }

  v27 = v37;
  v28 = v41;
  v29 = v42;
  if (v24 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v30 = v35();
    v26 = sub_CC6F8(a1, v30, v28, v29, v38, v39, v40, v33, v27);

    goto LABEL_5;
  }

  if (v24 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    [v22 setOrthogonalScrollingBehavior:2];
  }

  else
  {
    (*(v23 + 8))(v15, v21);
  }

  return v22;
}

id sub_CB3B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double *a9)
{
  v161 = a8;
  v162 = a7;
  v135 = a6;
  v134 = a5;
  v136 = a4;
  v137 = a3;
  v158 = a1;
  v10 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v10 - 8);
  v144 = &v130 - v11;
  v155 = sub_BD88(&qword_943D30, &unk_788850);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v130 - v12;
  v149 = sub_760730();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v151 = &v130 - v15;
  v146 = sub_766AF0();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v138 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v139 = &v130 - v18;
  __chkstk_darwin(v19);
  v140 = &v130 - v20;
  __chkstk_darwin(v21);
  v141 = &v130 - v22;
  __chkstk_darwin(v23);
  v142 = &v130 - v24;
  __chkstk_darwin(v25);
  v143 = &v130 - v26;
  v152 = sub_766D70();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v160 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_7656C0();
  v159 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_75C840();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = _swiftEmptyArrayStorage;
  v33 = *(a2 + 16);
  v163 = v30;
  v132 = a2;
  v133 = v33;
  if (v33)
  {
    sub_75A530();
    v35 = *(v30 + 16);
    v34 = v30 + 16;
    *&v165 = v35;
    v36 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v164 = _swiftEmptyArrayStorage;
    v35(v32, v36, v29);
    while (1)
    {
      sub_CE320(&qword_93F378, &type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
      sub_75C750();
      (*(v34 - 8))(v32, v29);
      if (v170[0])
      {
        sub_769440();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v164 = *(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8));
          sub_7694C0();
        }

        sub_769500();
        v164 = aBlock;
      }

      v36 += v37;
      if (!--v33)
      {
        break;
      }

      (v165)(v32, v36, v29);
    }
  }

  else
  {
    v164 = _swiftEmptyArrayStorage;
  }

  v38 = v156;
  v39 = v158;
  sub_75DA20();
  sub_765580();
  v41 = v40;
  v42 = v159 + 8;
  v43 = *(v159 + 8);
  v44 = v157;
  v43(v38, v157);
  v45 = sub_75DA30();
  v46 = type metadata accessor for SnapshotPageTraitEnvironment();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v48 = v41;
  *(v48 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v47[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v45;
  v171.receiver = v47;
  v171.super_class = v46;
  v49 = objc_msgSendSuper2(&v171, "init");
  v50 = [v49 traitCollection];

  sub_75DA20();
  sub_765630();
  v52 = v51;
  v43(v38, v44);
  sub_75DA20();
  sub_765620();
  v54 = v53;
  v43(v38, v44);
  v55 = sub_17467C(v164, v50, v52, v54);

  if ((sub_769490() & 1) == 0)
  {

    sub_BE70(0, &unk_93FFE0, NSCollectionLayoutSection_ptr);
    v69 = sub_75DAB0();
    v70 = *(v69 - 8);
    v71 = v144;
    (*(v70 + 16))(v144, v39, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    v72 = sub_769C40();

    sub_10A2C(v71, &unk_957F70, &unk_780270);
    return v72;
  }

  v144 = v43;
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DAA8 != -1)
  {
    swift_once();
  }

  v164 = a9;
  v56 = sub_7666D0();
  sub_BE38(v56, qword_99F7F0);
  v57 = sub_769E10();
  v58 = v138;
  sub_766AE0();
  v59 = v139;
  *&v165 = v57;
  sub_766AD0();
  v60 = *(v145 + 8);
  v61 = v146;
  v60(v58, v146);
  v62 = v140;
  sub_766A30();
  v60(v59, v61);
  v63 = v141;
  sub_766A90();
  v60(v62, v61);
  v64 = v142;
  sub_766A80();
  v60(v63, v61);
  sub_766AA0();
  v60(v64, v61);
  sub_766D50();
  sub_766D80();
  v65 = sub_769A00();
  v131 = v55;
  v68 = v147;
  if (v65)
  {
    sub_173BE4(v50, v147);
  }

  else
  {
    sub_173F1C(v66, v67);
  }

  (*(v148 + 32))(v151, v68, v149);
  v168 = 0;
  aBlock = 0u;
  v167 = 0u;
  v73 = v152;
  v170[3] = v152;
  v170[4] = &protocol witness table for LabelPlaceholder;
  v74 = sub_B1B4(v170);
  v75 = v150;
  v76 = v160;
  (*(v150 + 16))(v74, v160, v73);
  v77 = sub_760750();
  swift_allocObject();
  *&aBlock = sub_760740();
  sub_CE320(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v78 = v153;
  v151 = v77;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v79 = v155;
  sub_7673F0();
  v81 = v80;

  (*(v154 + 8))(v78, v79);
  (*(v75 + 8))(v76, v73);
  v170[0] = _swiftEmptyArrayStorage;
  v82 = v131;
  *&v165 = v131[2];
  v159 = v42;
  if (!v165)
  {
    v88 = 0.0;
LABEL_26:

    v97 = (v165 - 1);
    sub_7606D0();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v98 = swift_allocObject();
    v165 = xmmword_77D9F0;
    *(v98 + 16) = xmmword_77D9F0;
    *(v98 + 32) = v50;
    v99 = v50;
    v100 = sub_7671E0();
    sub_769610();
    v102 = v101;

    v103 = objc_opt_self();
    v104 = objc_opt_self();
    v105 = [v104 absoluteDimension:v88 + v102 * v97];
    v106 = [v104 absoluteDimension:v81];
    v107 = [objc_opt_self() sizeWithWidthDimension:v105 heightDimension:v106];

    sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
    isa = sub_769450().super.isa;

    v109 = [v103 horizontalGroupWithLayoutSize:v107 subitems:isa];

    v110 = objc_opt_self();
    sub_7606D0();
    v111 = swift_allocObject();
    *(v111 + 16) = v165;
    *(v111 + 32) = v99;
    *&v165 = v99;
    v112 = sub_7671E0();
    sub_769610();
    v114 = v113;

    v115 = [v110 fixedSpacing:v114];
    [v109 setInterItemSpacing:v115];

    v72 = [objc_opt_self() sectionWithGroup:v109];
    swift_getObjectType();
    v116 = v136;
    sub_761E30();
    sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v117 = sub_769450().super.isa;

    [v72 setBoundarySupplementaryItems:v117];

    sub_761E20();
    sub_BE70(0, &unk_957FA0, NSCollectionLayoutDecorationItem_ptr);
    v118 = sub_769450().super.isa;

    [v72 setDecorationItems:v118];

    v119 = v156;
    sub_75DA20();
    sub_765650();
    v121 = v120;
    v123 = v122;
    (v144)(v119, v157);
    sub_B170(v116, v116[3]);
    sub_761DF0();
    v125 = v124;
    sub_B170(v116, v116[3]);
    sub_761E10();
    [v72 setContentInsets:{v125, v121, v126, v123}];
    [v72 setOrthogonalScrollingBehavior:1];
    sub_762B90();
    v127 = sub_769480();
    v129 = v128;

    if (v127)
    {
      v168 = v127;
      v169 = v129;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v167 = sub_4E4820;
      *(&v167 + 1) = &unk_8836E8;
      v127 = _Block_copy(&aBlock);
    }

    [v72 setVisibleItemsInvalidationHandler:v127];
    _Block_release(v127);

    return v72;
  }

  v83 = objc_opt_self();
  v160 = objc_opt_self();
  result = objc_opt_self();
  if (v133)
  {
    if (v165 <= v133)
    {
      v85 = result;
      v155 = v50;
      swift_getObjectType();
      v86 = 0;
      v87 = v82 + 4;
      v88 = 0.0;
      do
      {
        v89 = v87[v86];
        v90 = [v83 absoluteDimension:v89];
        v91 = [v83 absoluteDimension:v81];
        v92 = [v160 sizeWithWidthDimension:v90 heightDimension:v91];

        sub_761510();
        sub_BE70(0, &unk_956250, NSCollectionLayoutSupplementaryItem_ptr);
        v93 = v92;
        v94 = sub_769450().super.isa;

        v95 = [v85 itemWithLayoutSize:v93 supplementaryItems:v94];

        v96 = v95;
        sub_769440();
        if (*(&dword_10 + (v170[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v170[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        ++v86;
        sub_769500();

        v88 = v88 + v89;
      }

      while (v165 != v86);
      v50 = v155;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_CC6F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v187 = a4;
  v227 = a8;
  v230 = a7;
  v185 = a5;
  v186 = a6;
  v188 = a3;
  v193 = a1;
  v10 = sub_BD88(&unk_957F70, &unk_780270);
  __chkstk_darwin(v10 - 8);
  v189 = &v182 - v11;
  v12 = sub_BD88(&qword_941B78, &qword_781198);
  v13 = *(v12 - 8);
  v233 = v12;
  v234 = v13;
  __chkstk_darwin(v12);
  v226 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v203 = &v182 - v16;
  v215 = sub_BD88(&qword_943D30, &unk_788850);
  v224 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v182 - v17;
  v213 = sub_760730();
  v223 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v231 = &v182 - v20;
  v211 = sub_766AF0();
  v222 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v209 = &v182 - v23;
  __chkstk_darwin(v24);
  v208 = &v182 - v25;
  __chkstk_darwin(v26);
  v207 = &v182 - v27;
  __chkstk_darwin(v28);
  v206 = &v182 - v29;
  __chkstk_darwin(v30);
  v205 = &v182 - v31;
  v204 = sub_766D70();
  v221 = *(v204 - 8);
  __chkstk_darwin(v204);
  v229 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_7656C0();
  v194 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_75C840();
  v34 = *(v232 - 1);
  __chkstk_darwin(v232);
  v217 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v182 - v37;
  *&v235 = _swiftEmptyArrayStorage;
  v39 = *(a2 + 16);
  v182 = a2;
  v183 = v34;
  v184 = v39;
  if (v39)
  {
    sub_75A530();
    v41 = *(v34 + 16);
    v40 = v34 + 16;
    ObjectType = v41;
    v42 = a2 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v225 = *(v40 + 56);
    v218 = _swiftEmptyArrayStorage;
    do
    {
      v43 = v232;
      (ObjectType)(v38, v42, v232);
      sub_CE320(&qword_93F378, &type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
      sub_75C750();
      (*(v40 - 8))(v38, v43);
      if (v254[0])
      {
        sub_769440();
        if (*(&dword_10 + (v235 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v235 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v218 = v235;
      }

      v42 += v225;
      --v39;
    }

    while (v39);
  }

  else
  {
    v218 = _swiftEmptyArrayStorage;
  }

  v44 = v191;
  sub_75DA20();
  sub_765580();
  v46 = v45;
  v47 = *(v194 + 8);
  v194 += 8;
  v190 = v47;
  v47(v44, v192);
  v48 = sub_75DA30();
  v49 = type metadata accessor for SnapshotPageTraitEnvironment();
  v50 = objc_allocWithZone(v49);
  v51 = &v50[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v51 = v46;
  *(v51 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v50[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v48;
  v258.receiver = v50;
  v258.super_class = v49;
  v52 = objc_msgSendSuper2(&v258, "init");
  v53 = [v52 traitCollection];

  v54 = v218;
  if (v218 >> 62)
  {
    v94 = v218;
    v55 = sub_76A860();
    v54 = v94;
    if (v55)
    {
      goto LABEL_11;
    }

LABEL_37:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v55 = *(&dword_10 + (v218 & 0xFFFFFFFFFFFFFF8));
  if (!v55)
  {
    goto LABEL_37;
  }

LABEL_11:
  v56 = v54;
  v257 = _swiftEmptyArrayStorage;
  sub_143CBC(0, v55 & ~(v55 >> 63), 0);
  if (v55 < 0)
  {
    goto LABEL_94;
  }

  v57 = v257;
  v58 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  v59 = 0;
  v60 = v56;
  v200 = v56 & 0xC000000000000001;
  v201 = v58;
  v198 = (v223 + 32);
  v199 = (v222 + 8);
  v196 = v224 + 1;
  v197 = (v221 + 2);
  v195 = (v221 + 1);
  v216 = v53;
  v202 = v55;
  do
  {
    if (v200)
    {
      v61 = sub_76A770();
    }

    else
    {
      v61 = *(v60 + 8 * v59 + 32);
    }

    v62 = sub_75A510();
    v221 = v63;
    v222 = v62;
    v64 = sub_75A520();
    ObjectType = v57;
    if (v64)
    {
      sub_765260();
      v66 = v65;
      v68 = v67;

      v219 = v68;
      v220 = v66;
    }

    else
    {
      v219 = 0;
      v220 = 0;
    }

    v69 = sub_75A520();
    if (v69)
    {
    }

    v223 = v69;
    v225 = v61;
    if (qword_93DAA8 != -1)
    {
      swift_once();
    }

    v70 = sub_7666D0();
    sub_BE38(v70, qword_99F7F0);
    v53 = v216;
    v71 = sub_769E10();
    v72 = v210;
    sub_766AE0();
    v73 = v209;
    v224 = v71;
    sub_766AD0();
    v74 = *v199;
    v75 = v211;
    (*v199)(v72, v211);
    v76 = v208;
    sub_766A30();
    v74(v73, v75);
    v77 = v207;
    sub_766A90();
    v74(v76, v75);
    v78 = v206;
    sub_766A80();
    v74(v77, v75);
    sub_766AA0();
    v74(v78, v75);
    sub_766D50();
    sub_766D80();
    if (sub_769A00())
    {
      v79 = v212;
      sub_173BE4(v53, v212);
    }

    else
    {
      v79 = v212;
      if (v64)
      {
        sub_769D70();
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251[0] = 0x4028000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248[0] = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245[0] = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242[0] = 0;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239[0] = 0;
      }

      else
      {
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251[0] = 0x4024000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248[0] = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245[0] = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242[0] = 0x4024000000000000;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239[0] = 0x4024000000000000;
      }

      sub_760700();
      v53 = v216;
    }

    (*v198)(v231, v79, v213);
    if (v223)
    {
      v80 = sub_75AB90();
      swift_allocObject();
      v81 = sub_75AB80();
      *(&v236 + 1) = v80;
      v237 = sub_CE320(&qword_93F440, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
      *&v235 = v81;
    }

    else
    {
      v237 = 0;
      v235 = 0u;
      v236 = 0u;
    }

    v82 = v204;
    v255 = v204;
    v256 = &protocol witness table for LabelPlaceholder;
    v83 = sub_B1B4(v254);
    v84 = v229;
    (*v197)(v83, v229, v82);
    sub_760750();
    swift_allocObject();
    *&v235 = sub_760740();
    sub_CE320(&qword_943D38, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
    v85 = v214;
    sub_766730();
    swift_getOpaqueTypeConformance2();
    v86 = v215;
    sub_7673F0();
    v88 = v87;
    v90 = v89;

    (*v196)(v85, v86);
    (*v195)(v84, v82);
    v57 = ObjectType;
    v257 = ObjectType;
    v92 = *(ObjectType + 16);
    v91 = *(ObjectType + 24);
    if (v92 >= v91 >> 1)
    {
      sub_143CBC((v91 > 1), v92 + 1, 1);
      v57 = v257;
    }

    ++v59;
    *(v57 + 2) = v92 + 1;
    v93 = &v57[2 * v92];
    *(v93 + 4) = v88;
    *(v93 + 5) = v90;
    v60 = v218;
  }

  while (v202 != v59);

LABEL_38:
  type metadata accessor for CGSize(0);
  if ((sub_769490() & 1) == 0)
  {

    sub_BE70(0, &unk_93FFE0, NSCollectionLayoutSection_ptr);
    v129 = sub_75DAB0();
    v130 = *(v129 - 8);
    v131 = v189;
    (*(v130 + 16))(v189, v193, v129);
    (*(v130 + 56))(v131, 0, 1, v129);
    v132 = sub_769C40();

    sub_10A2C(v131, &unk_957F70, &unk_780270);
    return v132;
  }

  sub_760750();
  sub_7606D0();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_77D9F0;
  *(v95 + 32) = v53;
  v96 = v53;
  v97 = sub_7671E0();
  sub_769610();
  v99 = v98;

  v100 = v191;
  sub_75DA20();
  sub_765BE0();
  sub_765630();
  v102 = v101;
  result = v190(v100, v192);
  v104 = *(v57 + 2);
  v105 = _swiftEmptyArrayStorage;
  v216 = v96;
  ObjectType = v57;
  if (!v104)
  {
    v224 = _swiftEmptyArrayStorage;
LABEL_67:
    v225 = a9;

    v55 = _swiftEmptyArrayStorage;
    v254[0] = _swiftEmptyArrayStorage;
    v222 = *(v105 + 2);
    if (!v222)
    {

      v159 = _swiftEmptyArrayStorage;
      v134 = 0.0;
LABEL_86:
      v160 = objc_opt_self();
      v161 = [v160 absoluteDimension:v102];
      v162 = [v160 absoluteDimension:v134];
      v55 = [objc_opt_self() sizeWithWidthDimension:v161 heightDimension:v162];

      if (!(v159 >> 62))
      {

        sub_76A960();
        sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
LABEL_88:

        v163 = objc_opt_self();
        sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
        isa = sub_769450().super.isa;

        v165 = [v163 verticalGroupWithLayoutSize:v55 subitems:isa];

        v166 = [objc_opt_self() fixedSpacing:10.0];
        [v165 setInterItemSpacing:v166];

        v167 = objc_opt_self();
        v234 = v165;
        v132 = [v167 sectionWithGroup:v165];
        swift_getObjectType();
        v168 = v187;
        sub_761E30();
        sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        v169 = sub_769450().super.isa;

        [v132 setBoundarySupplementaryItems:v169];

        sub_761E20();
        sub_BE70(0, &unk_957FA0, NSCollectionLayoutDecorationItem_ptr);
        v170 = sub_769450().super.isa;

        [v132 setDecorationItems:v170];

        v171 = v191;
        sub_75DA20();
        sub_765650();
        v173 = v172;
        v175 = v174;
        v190(v171, v192);
        sub_B170(v168, v168[3]);
        sub_761DF0();
        v177 = v176;
        sub_B170(v168, v168[3]);
        sub_761E10();
        [v132 setContentInsets:{v177, v173, v178, v175}];
        sub_762B90();
        v179 = sub_769480();
        v181 = v180;

        if (v179)
        {
          v237 = v179;
          v238 = v181;
          *&v235 = _NSConcreteStackBlock;
          *(&v235 + 1) = 1107296256;
          *&v236 = sub_4E4820;
          *(&v236 + 1) = &unk_883710;
          v179 = _Block_copy(&v235);
        }

        [v132 setVisibleItemsInvalidationHandler:{v179, v182, v183}];
        _Block_release(v179);

        return v132;
      }

LABEL_95:
      sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);

      sub_76A850();

      goto LABEL_88;
    }

    v221 = v105 + 4;
    v219 = objc_opt_self();
    v232 = objc_opt_self();
    v231 = objc_opt_self();
    v218 = objc_opt_self();
    v133 = 0;
    v134 = 0.0;
    v220 = v105;
    while (v133 < *(v105 + 2))
    {
      v223 = v133;
      v135 = v221[v133];
      v136 = *(*&v135 + 16);
      if (v136)
      {
        *&v235 = _swiftEmptyArrayStorage;

        sub_76A7C0();
        v229 = (*&v135 + ((v234[80] + 32) & ~v234[80]));
        ObjectType = swift_getObjectType();
        v137 = objc_opt_self();
        v138 = 0;
        v139 = 0.0;
        v140 = 0.0;
        while (v138 < *(*&v135 + 16))
        {
          v141 = v226;
          sub_CE2B0(&v229[*(v234 + 9) * v138], v226);
          v142 = (v141 + *(v233 + 48));
          v143 = *v142;
          v144 = v142[1];
          if (v140 <= v144)
          {
            v140 = v142[1];
          }

          ++v138;
          v139 = v139 + v143;
          sub_761510();
          v145 = v232;
          v146 = [v232 absoluteDimension:v143];
          v147 = [v145 absoluteDimension:v144];
          v55 = [v231 sizeWithWidthDimension:v146 heightDimension:v147];

          sub_BE70(0, &unk_956250, NSCollectionLayoutSupplementaryItem_ptr);
          v148 = sub_769450().super.isa;

          v149 = [v137 itemWithLayoutSize:v55 supplementaryItems:v148];

          sub_10A2C(v141, &qword_941B78, &qword_781198);
          sub_76A7A0();
          sub_76A7D0();
          sub_76A7E0();
          sub_76A7B0();
          if (v136 == v138)
          {

            v55 = _swiftEmptyArrayStorage;
            goto LABEL_78;
          }
        }

        __break(1u);
        break;
      }

      v139 = 0.0;
      v140 = 0.0;
LABEL_78:
      if (v136 <= 1)
      {
        v150 = 1;
      }

      else
      {
        v150 = v136;
      }

      v151 = v232;
      v152 = [v232 absoluteDimension:{v99 * (v150 - 1) + v139, v182, v183}];
      v153 = [v151 absoluteDimension:v140];
      v154 = [v231 sizeWithWidthDimension:v152 heightDimension:v153];

      sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
      v155 = sub_769450().super.isa;

      v156 = [v219 horizontalGroupWithLayoutSize:v154 subitems:v155];

      v157 = [v218 fixedSpacing:v99];
      [v156 setInterItemSpacing:v157];

      v158 = v156;
      sub_769440();
      if (*(&dword_10 + (v254[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v254[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v133 = v223 + 1;
      sub_769500();

      v134 = v134 + v140 + 10.0;
      v105 = v220;
      if (v133 == v222)
      {
        v159 = v254[0];

        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v184)
  {
    if (v104 <= v184)
    {
      v106 = *(v183 + 16);
      v107 = v182 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
      v231 = *(v183 + 72);
      v108 = (v183 + 8);
      v109 = v57 + 5;
      v110 = v102;
      v224 = _swiftEmptyArrayStorage;
      do
      {
        v111 = *(v109 - 1);
        v112 = *v109;
        (v106)(v217, v107, v232);
        v113 = ceil(v111);
        if (v102 > v111)
        {
          v114 = v113;
        }

        else
        {
          v114 = v102;
        }

        if (v110 >= v114)
        {
          v117 = v105;
          v118 = v224;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_7B9B4(0, *(v105 + 2) + 1, 1, v105);
          }

          v116 = *(v105 + 2);
          v115 = *(v105 + 3);
          v117 = v105;
          if (v116 >= v115 >> 1)
          {
            v117 = sub_7B9B4((v115 > 1), v116 + 1, 1, v105);
          }

          *(v117 + 2) = v116 + 1;
          *&v117[v116 + 4] = v224;
          v110 = v102;
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = (v203 + *(v233 + 48));
        v106();
        *v119 = v114;
        v119[1] = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v118;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = sub_7B990(0, *(v118 + 2) + 1, 1, v118);
        }

        v123 = *(v121 + 2);
        v122 = *(v121 + 3);
        v224 = v121;
        if (v123 >= v122 >> 1)
        {
          v224 = sub_7B990((v122 > 1), v123 + 1, 1, v224);
        }

        v124 = v224;
        *(v224 + 2) = v123 + 1;
        sub_CE240(v203, v124 + ((v234[80] + 32) & ~v234[80]) + *(v234 + 9) * v123);
        if (v104 == 1)
        {

          v125 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_7B9B4(0, *(v117 + 2) + 1, 1, v117);
          }

          v127 = *(v125 + 2);
          v126 = *(v125 + 3);
          v128 = v125;
          if (v127 >= v126 >> 1)
          {
            v128 = sub_7B9B4((v126 > 1), v127 + 1, 1, v125);
          }

          (*v108)(v217, v232);
          *(v128 + 2) = v127 + 1;
          v105 = v128;
          *&v128[v127 + 4] = v224;
        }

        else
        {
          (*v108)(v217, v232);
          v105 = v117;
        }

        v110 = v110 - (v99 + v114);
        v107 += v231;
        v109 += 2;
        --v104;
      }

      while (v104);
      goto LABEL_67;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_CE1A8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_134D8(a1, v6);
  v4 = sub_762B60();
  sub_BEB8(a1);
  return v4;
}

double sub_CE228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_CE240(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941B78, &qword_781198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CE2B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941B78, &qword_781198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CE320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FlowDestination(uint64_t a1)
{
  result = qword_943DB0;
  if (!qword_943DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_CE410(uint64_t a1)
{
  sub_CEA04(319);
  if (v1 <= 0x3F)
  {
    sub_CEB74(319, &qword_943DE8, &type metadata accessor for FlowOrigin, "url origin ");
    if (v2 <= 0x3F)
    {
      sub_7570A0();
      if (v3 <= 0x3F)
      {
        sub_CEB74(319, &qword_943DF0, &type metadata accessor for DynamicUIRequestInfo, "url requestInfo ");
        if (v4 <= 0x3F)
        {
          sub_CF1B4(319, &qword_943DF8, &qword_943E00, &type metadata accessor for SearchAction, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_CEFF4(319, &qword_943E08, &qword_943E10, &unk_783738);
            if (v6 <= 0x3F)
            {
              sub_CF1B4(319, &qword_943E18, &qword_943E20, &type metadata accessor for Artwork, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                sub_CF0E0(319, &qword_943E28, &qword_943E30, &qword_783748, "url preview ");
                if (v8 <= 0x3F)
                {
                  sub_CEFF4(319, &qword_943E38, &qword_943E40, &qword_783750);
                  if (v9 <= 0x3F)
                  {
                    sub_CEFF4(319, &qword_943E48, &qword_943E50, &qword_783758);
                    if (v10 <= 0x3F)
                    {
                      sub_CEC5C(319);
                      if (v11 <= 0x3F)
                      {
                        sub_CECF4(319);
                        if (v12 <= 0x3F)
                        {
                          sub_CED98(319);
                          if (v13 <= 0x3F)
                          {
                            sub_CEE18(319);
                            if (v14 <= 0x3F)
                            {
                              sub_CF168(319, &qword_943E98, &type metadata accessor for MarketingItemRequestInfo);
                              if (v15 <= 0x3F)
                              {
                                sub_CEEAC(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_CEF2C(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_CEFC4();
                                    if (v18 <= 0x3F)
                                    {
                                      sub_BE70(319, &qword_9434E0, UIViewController_ptr);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_CF168(319, &qword_943EC8, &type metadata accessor for URL);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_CEFF4(319, &qword_943ED0, &qword_943ED8, &qword_783798);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_CF078(319);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_CF324(319, &qword_943EF0, &type metadata for DebugMenuPage);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_CF0E0(319, &qword_943EF8, &qword_943F00, &qword_7837A0, "pageUrl sidepack ");
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_CEB74(319, &qword_943F08, &type metadata accessor for AdamId, "url adamId ");
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_CF168(319, &qword_943F10, &type metadata accessor for ReviewsPage);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_CEBF8(319, &qword_943F18, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_CF1B4(319, &qword_943F20, &qword_943F18, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_CF0E0(319, &qword_943F28, &qword_943F30, &qword_7837A8, "url context ");
                                                          if (v29 <= 0x3F)
                                                          {
                                                            sub_7594D0();
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_CF208();
                                                              if (v31 <= 0x3F)
                                                              {
                                                                sub_765030();
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  sub_75A2B0();
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_CF238(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      sub_CF2CC();
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        sub_CF370(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          sub_CF400(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            sub_CF480(319, v37);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              sub_CF500(319);
                                                                              if (v40 <= 0x3F)
                                                                              {
                                                                                sub_CF580(319);
                                                                                if (v41 <= 0x3F)
                                                                                {
                                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_CEA04(uint64_t a1)
{
  if (!qword_943DC0)
  {
    __chkstk_darwin(a1);
    sub_7570A0();
    sub_133D8(&qword_943DC8, &qword_783718);
    sub_133D8(&qword_943DD0, &qword_783720);
    sub_133D8(&qword_943DD8, &qword_783728);
    sub_133D8(&qword_943DE0, &qword_783730);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_943DC0);
    }
  }
}

void sub_CEB74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    sub_7570A0();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_CEBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_CEC5C(uint64_t a1)
{
  if (!qword_943E58)
  {
    sub_75AEB0();
    sub_133D8(&qword_943E60, &qword_783760);
    sub_75C190();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_943E58);
    }
  }
}

void sub_CECF4(uint64_t a1)
{
  if (!qword_943E68)
  {
    sub_133D8(&qword_943E70, &unk_783768);
    sub_133D8(&qword_941BA0, &qword_7811C0);
    sub_75D5D0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_943E68);
    }
  }
}

void sub_CED98(uint64_t a1)
{
  if (!qword_943E78)
  {
    sub_133D8(&qword_943E80, &qword_783778);
    sub_75AA40();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_943E78);
    }
  }
}

void sub_CEE18(uint64_t a1)
{
  if (!qword_943E88)
  {
    sub_133D8(&unk_93FD30, qword_77F240);
    sub_133D8(&qword_943E90, &qword_783780);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_943E88);
    }
  }
}

void sub_CEEAC(uint64_t a1)
{
  if (!qword_943EA0)
  {
    sub_133D8(&qword_943EA8, &qword_783788);
    sub_7570A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_943EA0);
    }
  }
}

void sub_CEF2C(uint64_t a1)
{
  if (!qword_943EB0)
  {
    sub_133D8(&qword_943EB8, &qword_783790);
    sub_75C3F0();
    sub_7570A0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_943EB0);
    }
  }
}

void *sub_CEFC4()
{
  result = qword_943EC0;
  if (!qword_943EC0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_943EC0);
  }

  return result;
}

void sub_CEFF4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_133D8(a3, a4);
    sub_133D8(&unk_93FD30, qword_77F240);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_CF078(uint64_t a1)
{
  if (!qword_943EE0)
  {
    sub_BE70(255, &qword_943EE8, AMSFamilyMember_ptr);
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_943EE0);
    }
  }
}

void sub_CF0E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_7570A0();
    sub_133D8(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_CF168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_CF1B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_CEBF8(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

ValueMetadata *sub_CF208()
{
  result = qword_943F38;
  if (!qword_943F38)
  {
    result = &type metadata for OnboardingConfiguration;
    atomic_store(&type metadata for OnboardingConfiguration, &qword_943F38);
  }

  return result;
}

void sub_CF238(uint64_t a1)
{
  if (!qword_943F40)
  {
    sub_BE70(255, &qword_943F48, GKLeaderboard_ptr);
    sub_BE70(255, &qword_943F50, GKGameRecord_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F40);
    }
  }
}

void sub_CF2CC()
{
  if (!qword_943F58)
  {
    sub_CF324(0, &qword_94E860, &type metadata for String);
    if (!v1)
    {
      atomic_store(v0, &qword_943F58);
    }
  }
}

void sub_CF324(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_CF370(uint64_t a1)
{
  if (!qword_943F60)
  {
    sub_BE70(255, &qword_943F50, GKGameRecord_ptr);
    sub_133D8(&unk_947FF0, &unk_7801F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F60);
    }
  }
}

void sub_CF400(uint64_t a1)
{
  if (!qword_943F68)
  {
    sub_7582F0();
    sub_133D8(&qword_943F70, &qword_787F60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F68);
    }
  }
}

void sub_CF480(uint64_t a1, __n128 a2)
{
  if (!qword_943F78)
  {
    sub_761320();
    sub_133D8(&qword_943F70, &qword_787F60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F78);
    }
  }
}

void sub_CF500(uint64_t a1)
{
  if (!qword_943F80)
  {
    sub_75E230();
    sub_133D8(&qword_943F70, &qword_787F60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F80);
    }
  }
}

void sub_CF580(uint64_t a1)
{
  if (!qword_943F88)
  {
    sub_BE70(255, &qword_9434E0, UIViewController_ptr);
    sub_757640();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_943F88);
    }
  }
}

uint64_t sub_CF604@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_760280();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for FlowDestination(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B4C(v3, v15, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xFu:
    case 0x1Bu:
      sub_61BB0(v15, v16);
      goto LABEL_14;
    case 3u:
      sub_BD88(&qword_943FC8, &qword_7837F8);

      v26 = sub_7570A0();
      (*(*(v26 - 8) + 8))(v15, v26);
      goto LABEL_14;
    case 4u:
      sub_61BB0(v15, v16);
      v17 = &enum case for FlowPresentationContext.select(_:);
      goto LABEL_24;
    case 6u:
      sub_61BB0(v15, v16);
      goto LABEL_11;
    case 7u:
      sub_BD88(&unk_955D40, &qword_7837E8);

      v25 = sub_7570A0();
      (*(*(v25 - 8) + 8))(v15, v25);
      goto LABEL_11;
    case 0xAu:

      v45 = *(sub_BD88(&qword_955C60, &qword_780678) + 64);
      (*(v6 + 104))(a1, enum case for FlowPresentationContext.presentModalPopover(_:), v5);
      v46 = sub_75C190();
      return (*(*(v46 - 8) + 8))(&v15[v45], v46);
    case 0xEu:
      sub_BD88(&qword_955D10, &unk_783810);

      v36 = ASKDeviceTypeGetCurrent();
      v37 = sub_769240();
      v39 = v38;
      if (v37 == sub_769240() && v39 == v40)
      {

        v43 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v42 = sub_76A950();

        v43 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
        if (v42)
        {
          v43 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v6 + 104))(v8, *v43, v5);
      (*(v6 + 32))(a1, v8, v5);
      return sub_10A2C(v15, &unk_93FD30, qword_77F240);
    case 0x11u:

      v18 = sub_BD88(&qword_955D00, &unk_7834A0);
      v19 = *(v18 + 48);
      v20 = *(v18 + 64);
      v21 = sub_7570A0();
      (*(*(v21 - 8) + 8))(&v15[v20], v21);
      v22 = sub_75C3F0();
      (*(*(v22 - 8) + 8))(&v15[v19], v22);
      goto LABEL_14;
    case 0x13u:
    case 0x17u:
    case 0x20u:
    case 0x21u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
      sub_61BB0(v15, v16);
      goto LABEL_3;
    case 0x15u:

      v24 = sub_BD88(&qword_955C90, &unk_780680);
      sub_10A2C(&v15[*(v24 + 48)], &unk_93FD30, qword_77F240);
      goto LABEL_3;
    case 0x18u:
      sub_BD88(&qword_955C80, &qword_7837D0);

      v23 = sub_7570A0();
      (*(*(v23 - 8) + 8))(v15, v23);
LABEL_3:
      v17 = &enum case for FlowPresentationContext.presentModal(_:);
      goto LABEL_24;
    case 0x1Cu:
      sub_10A2C(v15, &unk_93FD30, qword_77F240);
LABEL_14:
      v27 = ASKDeviceTypeGetCurrent();
      v28 = sub_769240();
      v30 = v29;
      if (v28 == sub_769240() && v30 == v31)
      {

        v34 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v33 = sub_76A950();

        v34 = &enum case for FlowPresentationContext.presentModalPageSheet(_:);
        if (v33)
        {
          v34 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v6 + 104))(v11, *v34, v5);
      return (*(v6 + 32))(a1, v11, v5);
    case 0x1Fu:
      v17 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      goto LABEL_24;
    case 0x2Du:
LABEL_11:
      v17 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
LABEL_24:
      result = (*(v6 + 104))(a1, *v17, v5);
      break;
    default:
      v44.n128_f64[0] = (*(v6 + 104))(a1, enum case for FlowPresentationContext.push(_:), v5);
      result = sub_61BB0(v15, v44);
      break;
  }

  return result;
}

uint64_t sub_CFD44()
{
  v1 = type metadata accessor for FlowDestination(0);
  v2 = __chkstk_darwin(v1);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_61B4C(v0, v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x73657461647075;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v19 = *(sub_BD88(&qword_955D60, &qword_783800) + 48);
      v20 = sub_758B40();
      (*(*(v20 - 8) + 8))(v4 + v19, v20);
      v21 = sub_7570A0();
      (*(*(v21 - 8) + 8))(v4, v21);
      return 0x6E776F6E6B6E75;
    case 2:
      sub_61BB0(v4, v6);
      return 0x65746973626577;
    case 3:
      sub_BD88(&qword_943FC8, &qword_7837F8);

      v15 = sub_7570A0();
      (*(*(v15 - 8) + 8))(v4, v15);
      return 0x5563696D616E7964;
    case 4:
      sub_61BB0(v4, v6);
      return 0x686372616573;
    case 5:

      v23 = sub_BD88(&qword_943FC0, &qword_7837F0);
      sub_10A2C(v4 + *(v23 + 48), &unk_93FD30, qword_77F240);
      return 0xD000000000000019;
    case 6:
      sub_61BB0(v4, v6);
      return 0x7972656C6C6167;
    case 7:
      sub_BD88(&unk_955D40, &qword_7837E8);

      v30 = sub_7570A0();
      (*(*(v30 - 8) + 8))(v4, v30);
      return 0x6F65646976;
    case 8:

      v17 = sub_BD88(&qword_940A50, &qword_782590);
      sub_10A2C(v4 + *(v17 + 48), &unk_93FD30, qword_77F240);
      return 1701273968;
    case 9:

      v29 = sub_BD88(&qword_955CE0, &qword_7837E0);
      sub_10A2C(v4 + *(v29 + 48), &unk_93FD30, qword_77F240);
      return 0x7472616843706F74;
    case 10:

      v13 = *(sub_BD88(&qword_955C60, &qword_780678) + 64);
      v14 = sub_75C190();
      (*(*(v14 - 8) + 8))(v4 + v13, v14);
      return 0x6568536572616873;
    case 11:
      sub_61BB0(v4, v6);
      return 0x6F4374726F706572;
    case 12:
      sub_61BB0(v4, v6);
      return 0xD00000000000001ALL;
    case 13:

      v11 = *(sub_BD88(&qword_955D30, qword_780320) + 48);
      v12 = sub_75AA40();
      (*(*(v12 - 8) + 8))(v4 + v11, v12);
      return 0x656461637261;
    case 14:
      sub_BD88(&qword_955D10, &unk_783810);

      sub_10A2C(v4, &unk_93FD30, qword_77F240);
      return 0x7553656461637261;
    case 15:
    case 33:
      sub_61BB0(v4, v6);
      return 0xD000000000000013;
    case 16:

      v9 = *(sub_BD88(&qword_955D20, &qword_7837D8) + 48);
      v10 = sub_7570A0();
      goto LABEL_29;
    case 17:

      v24 = sub_BD88(&qword_955D00, &unk_7834A0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 64);
      v27 = sub_7570A0();
      (*(*(v27 - 8) + 8))(v4 + v26, v27);
      v28 = sub_75C3F0();
      (*(*(v28 - 8) + 8))(v4 + v25, v28);
      return 0x6557656461637261;
    case 18:
      sub_61BB0(v4, v6);
      return 0xD00000000000001CLL;
    case 19:
      sub_61BB0(v4, v6);
      return 0x746E6F4377656976;
    case 20:
      v22 = sub_7570A0();
      (*(*(v22 - 8) + 8))(v4, v22);
      return 0x7961646F74;
    case 21:

      v33 = sub_BD88(&qword_955C90, &unk_780680);
      sub_10A2C(v4 + *(v33 + 48), &unk_93FD30, qword_77F240);
      return 0x656C6369747261;
    case 22:
      sub_61BB0(v4, v6);
      return 0x6573616863727570;
    case 23:
      sub_61BB0(v4, v6);
      return 0x6775626564;
    case 24:
      sub_BD88(&qword_955C80, &qword_7837D0);

      v18 = sub_7570A0();
      (*(*(v18 - 8) + 8))(v4, v18);
      goto LABEL_21;
    case 25:
      v36 = *(sub_BD88(&unk_955C70, &unk_783C30) + 48);
      v37 = sub_764CF0();
      (*(*(v37 - 8) + 8))(v4 + v36, v37);
      v38 = sub_7570A0();
      (*(*(v38 - 8) + 8))(v4, v38);
      return 0x7665526574697277;
    case 26:
      sub_61BB0(v4, v6);
      return 0x73776569766572;
    case 27:
      sub_61BB0(v4, v6);
      return 0x746E756F636361;
    case 28:
      sub_10A2C(v4, &unk_93FD30, qword_77F240);
      return 0x65636E616E6966;
    case 29:
      v31 = sub_BD88(&qword_943FB8, &unk_7837C0);
      sub_10A2C(v4 + *(v31 + 48), &qword_943F30, &qword_7837A8);
      v32 = sub_7570A0();
      (*(*(v32 - 8) + 8))(v4, v32);
      return 7304045;
    case 30:
      sub_61BB0(v4, v6);
      return 0x486E6F6973726576;
    case 31:
      return 0x696472616F626E6FLL;
    case 32:
      sub_61BB0(v4, v6);
      return 0x6544776569766572;
    case 34:
      sub_61BB0(v4, v6);
      goto LABEL_7;
    case 35:
      sub_61BB0(v4, v6);
      return 0xD000000000000017;
    case 36:
      sub_61BB0(v4, v6);
      return 0x6D65766569686361;
    case 37:

      v35 = sub_BD88(&qword_940A50, &qword_782590);
      sub_10A2C(v4 + *(v35 + 48), &unk_93FD30, qword_77F240);
      return 0x4479636176697270;
    case 38:

      v34 = sub_BD88(&qword_940A50, &qword_782590);
      sub_10A2C(v4 + *(v34 + 48), &unk_93FD30, qword_77F240);
      return 0xD000000000000012;
    case 39:

      v16 = sub_BD88(&qword_940A50, &qword_782590);
      sub_10A2C(v4 + *(v16 + 48), &unk_93FD30, qword_77F240);
      goto LABEL_21;
    case 40:
      sub_61BB0(v4, v6);
      return 0x746E657645707061;
    case 41:
      sub_61BB0(v4, v6);
      goto LABEL_46;
    case 42:
      sub_61BB0(v4, v6);
      return 0x657449726566666FLL;
    case 43:

      v9 = *(sub_BD88(&unk_955C40, &unk_7837B0) + 48);
      v10 = sub_757640();
LABEL_29:
      (*(*(v10 - 8) + 8))(v4 + v9, v10);
      return 0xD000000000000011;
    case 44:
      return result;
    case 45:
      return 0x75506E6564646968;
    case 46:
      return 0x6F53676E696D6F63;
    case 47:
LABEL_7:
      result = 0xD000000000000016;
      break;
    case 48:
LABEL_46:
      result = 0xD000000000000015;
      break;
    case 49:
LABEL_21:
      result = 0xD000000000000014;
      break;
    case 50:
      result = 0xD000000000000013;
      break;
    case 51:
      result = 0xD00000000000001BLL;
      break;
    case 52:
      result = 0x676E697373696DLL;
      break;
    default:
      sub_BD88(&qword_955D70, &qword_783808);

      v8 = sub_7570A0();
      (*(*(v8 - 8) + 8))(v4, v8);
      result = 0x746375646F7270;
      break;
  }

  return result;
}

uint64_t sub_D0BF0()
{
  v1 = type metadata accessor for FlowDestination(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B4C(v0, v4, v2);
  v5 = swift_getEnumCaseMultiPayload() - 7;
  result = 0;
  switch(v5)
  {
    case 0:
      sub_BD88(&unk_955D40, &qword_7837E8);

      goto LABEL_9;
    case 3:

      v11 = *(sub_BD88(&qword_955C60, &qword_780678) + 64);
      v12 = sub_75C190();
      (*(*(v12 - 8) + 8))(&v4[v11], v12);
      goto LABEL_10;
    case 4:
    case 5:
    case 12:
    case 25:
    case 26:
    case 33:
    case 34:
    case 35:
      sub_61BB0(v4, v6);
      return 0;
    case 14:

      v8 = &v4[*(sub_BD88(&qword_955C90, &unk_780680) + 48)];
      goto LABEL_6;
    case 18:
      v9 = *(sub_BD88(&unk_955C70, &unk_783C30) + 48);
      v10 = sub_764CF0();
      (*(*(v10 - 8) + 8))(&v4[v9], v10);
LABEL_9:
      v13 = sub_7570A0();
      (*(*(v13 - 8) + 8))(v4, v13);
LABEL_10:
      result = 0;
      break;
    case 21:
      v8 = v4;
LABEL_6:
      sub_10A2C(v8, &unk_93FD30, qword_77F240);
      result = 0;
      break;
    case 24:
      return result;
    default:
      sub_61BB0(v4, v6);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_D0EBC(uint64_t a1)
{
  v49 = a1;
  v1 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_765610();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v8 - 8);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v19 = *(sub_765540() - 8);
  v54 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v46 = v21;
  *(v21 + 16) = xmmword_780120;
  v57 = v21 + v20;
  v59 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v58 = 0x4030000000000000;
  v59 = 0x4020000000000000;
  sub_7655B0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v50 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v5 + 104);
  v55 = v5 + 104;
  v51 = v27;
  v52 = v4;
  (v27)(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v59) = 0;
  sub_7655D0();
  v59 = 0;
  sub_7655D0();
  v56 = v18;
  v29 = v3;
  v41 = v15;
  sub_765500();
  v59 = 0x3FF0000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4024000000000000;
  sub_7655B0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v51(v7, v50, v4);
  LOBYTE(v59) = 0;
  sub_7655D0();
  v59 = 0;
  sub_7655D0();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v45 = left;
  v39 = v12;
  sub_765500();
  v58 = 0x4000000000000000;
  v59 = 0x3FF8000000000000;
  sub_7655B0();
  v48.i32[0] = v49 < 2;
  LOBYTE(v59) = v49 < 2;
  sub_7655D0();
  v59 = 0x4034000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  v43 = vdupq_n_s64(0x4041000000000000uLL);
  *v7 = v43;
  v40 = v7;
  v32 = v50;
  v33 = v51;
  v51(v7, v50, v52);
  v59 = 0;
  sub_7655D0();
  v47 = v29;
  sub_765500();
  v42 = 2 * v31 + v54;
  v59 = 0x4000000000000000;
  sub_7655D0();
  LOBYTE(v59) = v48.i8[0];
  sub_7655D0();
  v59 = 0x4034000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  v34 = v40;
  *v40 = v43;
  v33(v34, v32, v52);
  sub_7697A0();
  v59 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 4 * v54;
  v58 = 0x4000000000000000;
  v59 = 0x4004000000000000;
  sub_7655B0();
  LODWORD(v49) = v49 < 3;
  LOBYTE(v59) = v49;
  LOBYTE(v58) = v48.i8[0];
  sub_7655B0();
  v59 = 0x4038000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  v48 = vdupq_n_s64(0x404A000000000000uLL);
  *v34 = v48;
  v36 = v50;
  v37 = v51;
  v51(v34, v50, v52);
  v59 = 0;
  sub_7655D0();
  sub_765500();
  v54 += v35;
  v59 = 0x4008000000000000;
  sub_7655D0();
  LOBYTE(v59) = v49;
  sub_7655D0();
  v59 = 0x4038000000000000;
  sub_7655D0();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_7655B0();
  *v34 = v48;
  v37(v34, v36, v52);
  v59 = 0;
  sub_7655D0();
  sub_765500();
  return v46;
}