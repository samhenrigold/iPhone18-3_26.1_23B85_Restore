char *sub_100169228(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for CornerStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_itemLayoutContext;
  v19 = type metadata accessor for ItemLayoutContext();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for VideoCardView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase] = 0;
  v21 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 setClipsToBounds:0];

  v25 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView;
  v26 = qword_10096DA60;
  v27 = *&v22[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Shadow();
  v29 = sub_1000056A8(v28, qword_1009CFD80);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v17, v29, v28);
  (*(v30 + 56))(v17, 0, 1, v28);
  dispatch thunk of ShadowView.shadow.setter();

  v31 = *&v22[v25];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v32 = v31;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  (*(v12 + 8))(v14, v11);
  v33 = *&v22[v25];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondarySystemBackgroundColor];
  [v35 setBackgroundColor:v36];

  v37 = [v22 contentView];
  [v37 addSubview:*&v22[v25]];

  v38 = [v22 contentView];
  [v38 addSubview:*&v22[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView]];

  return v22;
}

void sub_1001696DC(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

void (*sub_1001697A4(uint64_t *a1))(void ***a1, char a2)
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
  v5 = type metadata accessor for CornerStyle();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = OBJC_IVAR____TtC8AppStore13VideoCardView_videoView;
  v4[4] = *(v1 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_10016989C;
}

void sub_10016989C(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10016A474(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[4];
        sub_100028004();
        v11 = v10;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v32 = v3[1];
      v33 = v3[2];
      v33[13](v31, enum case for CornerStyle.continuous(_:), v32);
      dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
      (v33[1])(v31, v32);
      [v30 addSubview:v29];
      [v30 sendSubviewToBack:v29];
      [v30 setNeedsLayout];
    }

    v27 = v3[3];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10016A474(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[4];
      sub_100028004();
      v18 = v17;
      v19 = static NSObject.== infix(_:_:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v25 = v3[1];
    v26 = v3[2];
    v26[13](v24, enum case for CornerStyle.continuous(_:), v25);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (v26[1])(v24, v25);
    [v23 addSubview:v22];
    [v23 sendSubviewToBack:v22];
    [v23 setNeedsLayout];
  }

  v27 = v3[3];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_100169C08()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  [v1 layoutIfNeeded];
  v11 = *&v0[OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView];
  v12 = [v0 contentView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v11 setFrame:{v14, v16, v18, v20}];
  sub_10016A474(&qword_100976958, type metadata accessor for VideoCardCollectionViewCell, &unk_1007C46E4);
  AvatarShowcaseDisplaying.placeAvatarShowcase()();
}

uint64_t type metadata accessor for VideoCardCollectionViewCell(uint64_t a1)
{
  result = qword_100976928;
  if (!qword_100976928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100169ED8(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100169FA4(uint64_t **a1))()
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
  v2[4] = sub_1001697A4(v2);
  return sub_1000C2700;
}

double sub_10016A014(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for VideoCardView(0);
  ObjectType = swift_getObjectType();

  return sub_1001C2E40(a3, a4, a1, a2, v8, ObjectType);
}

uint64_t sub_10016A08C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10016A474(&qword_100976950, type metadata accessor for VideoCardCollectionViewCell, &unk_1007BB5C8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10016A100(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10016A474(&qword_100976950, type metadata accessor for VideoCardCollectionViewCell, &unk_1007BB5C8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10016A18C(uint64_t *a1))()
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
  sub_10016A474(&qword_100976950, type metadata accessor for VideoCardCollectionViewCell, &unk_1007BB5C8);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000B4CAC;
}

uint64_t sub_10016A270(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100028004();
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10016A474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10016A4BC()
{
  v1 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for VideoCardView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase) = 0;
  v4 = OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10016A628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10016A6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10016A738(uint64_t a1)
{
  result = type metadata accessor for DebugMetricsEvent();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016A7C0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for EnabledTextSelectability();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PlainListStyle();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100976B38, &qword_1007BB808);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_10002849C(&qword_100976B40, &qword_1007BB810);
  __chkstk_darwin(v43);
  v12 = v42 - v11;
  v13 = sub_10002849C(&qword_100976B48, &qword_1007BB818);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_10002849C(&qword_100976B50, &qword_1007BB820);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  __chkstk_darwin(v17);
  v46 = v42 - v19;
  v56 = v1;
  sub_10002849C(&qword_100976B58, &qword_1007BB828);
  sub_100097060(&qword_100976B60, &qword_100976B58, &qword_1007BB828, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  PlainListStyle.init()();
  sub_100097060(&qword_100976B68, &qword_100976B38, &qword_1007BB808, &protocol conformance descriptor for List<A, B>);
  v20 = v44;
  View.listStyle<A>(_:)();
  (*(v45 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  v21 = static Edge.Set.all.getter();
  v22 = v43;
  v12[*(v43 + 36)] = v21;
  v55 = v42[1];
  v23 = sub_10002849C(&qword_100976B70, &qword_1007BB830);
  v24 = sub_1001708B4();
  v25 = sub_10002D1A8(&qword_100976B90, &qword_1007BB840);
  v26 = sub_100097060(&qword_100976B98, &qword_100976B90, &qword_1007BB840, &protocol conformance descriptor for ToolbarItem<A, B>);
  v57 = v25;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  sub_10000D4CC(v12);
  v28 = v51;
  EnabledTextSelectability.init()();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v47;
  v32 = v52;
  View.textSelection<A>(_:)();
  v33 = v32;
  (*(v53 + 8))(v28, v32);
  v34 = v31;
  (*(v48 + 8))(v16, v31);
  v57 = DebugMetricsEvent.title.getter();
  v58 = v35;
  sub_10007FED4();
  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v31) = v39;
  v57 = v34;
  v58 = v33;
  v59 = v29;
  v60 = &protocol witness table for EnabledTextSelectability;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  View.navigationTitle(_:)();
  sub_100170894(v36, v38, v31 & 1);

  return (*(v50 + 8))(v30, v40);
}

void sub_10016AE50(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DebugMetricsEventDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100976BB0, &qword_1007BB850);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v39 - v10;
  v11 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  __chkstk_darwin(v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10002849C(&qword_100976BB8, &unk_1007BB858);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = type metadata accessor for DebugMetricsEvent();
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  static VerticalEdge.Set.all.getter();
  sub_100170A04(&qword_100976BC0, type metadata accessor for DebugMetricsEventDetailView.Summary, &unk_1007BB6B4);
  v48 = v17;
  View.listRowSeparator(_:edges:)();
  sub_100170A4C(v13);
  v19 = DebugMetricsEvent.fields.getter();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v39[0] = v4;
  v39[1] = v5;
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100035410(v20, 0);
  v22 = sub_10039FBF4(&v50, v21 + 4, v20, v19);
  v23 = v50;

  sub_100081680(v23);
  if (v22 == v20)
  {
    v6 = v40;
    v4 = v39[0];
LABEL_5:
    v50 = v21;
    sub_10016FC88(&v50);

    swift_getKeyPath();
    sub_100170AA8(a1, v6);
    v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v25 = swift_allocObject();
    sub_100170B0C(v6, v25 + v24);
    sub_10002849C(&unk_100977380, &qword_1007BB880);
    sub_100097060(&qword_100976BC8, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
    sub_100170BF0();
    v26 = v49;
    ForEach<>.init(_:id:content:)();
    v27 = v41;
    v28 = v42;
    v29 = *(v42 + 16);
    v30 = v44;
    v29(v41, v48, v44);
    v31 = v45;
    v32 = v46;
    v40 = *(v46 + 16);
    v33 = v26;
    v34 = v47;
    (v40)(v45, v33, v47);
    v35 = v43;
    v29(v43, v27, v30);
    v36 = sub_10002849C(&qword_100976BD8, &qword_1007BB888);
    (v40)(&v35[*(v36 + 48)], v31, v34);
    v37 = *(v32 + 8);
    v37(v49, v34);
    v38 = *(v28 + 8);
    v38(v48, v30);
    v37(v31, v34);
    v38(v27, v30);
    return;
  }

  __break(1u);

  __break(1u);
}

double sub_10016B3FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = DebugMetricsEvent.fields.getter();
  if (*(v5 + 16) && (v6 = sub_1000072B8(v4, v3), (v7 & 1) != 0))
  {
    sub_1000073E8(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {

    v10 = 0u;
    v11 = 0u;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  result = *&v10;
  v9 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_10016B494(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10002849C(&qword_100976B90, &qword_1007BB840);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v9 = a1;
  sub_10002849C(&qword_100976BA0, &qword_1007BB848);
  sub_100097060(&qword_100976BA8, &qword_100976BA0, &qword_1007BB848, &protocol conformance descriptor for ShareLink<A, B, C, D>);
  ToolbarItem<>.init(placement:content:)();
  sub_100097060(&qword_100976B98, &qword_100976B90, &qword_1007BB840, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10016B700@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10016B740()
{
  v0 = type metadata accessor for Date.FormatStyle.Symbol.SecondFraction();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v63 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Second();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeZone();
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Calendar();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10002849C(&qword_100976B28, &qword_1007BB7C8);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_10002849C(&qword_100976B30, &qword_1007BB7D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = type metadata accessor for Date.FormatStyle();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v45 - v27;
  __chkstk_darwin(v29);
  v46 = &v45 - v30;
  __chkstk_darwin(v31);
  v47 = &v45 - v32;
  sub_100005644(v33, qword_100976960);
  v48 = sub_1000056A8(v22, qword_100976960);
  static Date.FormatStyle.DateStyle.omitted.getter();
  v34 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  static Date.FormatStyle.TimeStyle.standard.getter();
  v35 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v36 = v52;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.omitted.getter();
  v37 = v51;
  static Date.FormatStyle.Symbol.Hour.twoDigits(amPM:)();
  (*(v55 + 8))(v36, v56);
  Date.FormatStyle.hour(_:)();
  (*(v53 + 8))(v37, v54);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v39 = v57;
  static Date.FormatStyle.Symbol.Minute.twoDigits.getter();
  v40 = v46;
  Date.FormatStyle.minute(_:)();
  (*(v58 + 8))(v39, v59);
  v38(v28, v22);
  v41 = v60;
  static Date.FormatStyle.Symbol.Second.twoDigits.getter();
  v42 = v47;
  Date.FormatStyle.second(_:)();
  (*(v61 + 8))(v41, v62);
  v38(v40, v22);
  v43 = v63;
  static Date.FormatStyle.Symbol.SecondFraction.fractional(_:)();
  Date.FormatStyle.secondFraction(_:)();
  (*(v64 + 8))(v43, v65);
  return (v38)(v42, v22);
}

uint64_t sub_10016BEBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002849C(&qword_100976A98, &qword_1007BB708);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_10002849C(&qword_100976AA0, &qword_1007BB710);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10002849C(&qword_100976AA8, &qword_1007BB718);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x401C000000000000;
  v14[16] = 0;
  v15 = sub_10002849C(&qword_100976AB0, &qword_1007BB720);
  sub_10016C264(v1, &v14[*(v15 + 44)]);
  DebugMetricsEvent.issues.getter();
  type metadata accessor for LintedMetricsEvent.Issue();
  v16 = Array.isNotEmpty.getter();

  v17 = 0;
  KeyPath = 0;
  v19 = 0;
  if (v16)
  {
    Image.init(systemName:)();
    static SymbolRenderingMode.multicolor.getter();
    v20 = type metadata accessor for SymbolRenderingMode();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v17 = Image.symbolRenderingMode(_:)();

    sub_10002B894(v8, &qword_100976AA0, &qword_1007BB710);
    v21 = type metadata accessor for Font.Design();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v19 = static Font.system(size:weight:design:)();
    sub_10002B894(v5, &qword_100976A98, &qword_1007BB708);
    KeyPath = swift_getKeyPath();
  }

  sub_100031660(v14, v11, &qword_100976AA8, &qword_1007BB718);
  sub_100031660(v11, a1, &qword_100976AA8, &qword_1007BB718);
  v22 = sub_10002849C(&qword_100976AB8, &qword_1007BB728);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a1 + *(v22 + 64));
  sub_10016FBEC(v17, KeyPath, v19);
  sub_10016FC3C(v17);
  *v24 = v17;
  v24[1] = KeyPath;
  v24[2] = v19;
  sub_10002B894(v14, &qword_100976AA8, &qword_1007BB718);
  sub_10016FC3C(v17);
  return sub_10002B894(v11, &qword_100976AA8, &qword_1007BB718);
}

uint64_t sub_10016C264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_10002849C(&qword_100976AC0, &qword_1007BB760);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v37 = static VerticalAlignment.center.getter();
  LOBYTE(v54[0]) = 1;
  sub_10016C6C4(v40);
  *(v39 + 7) = v40[0];
  *(&v39[1] + 7) = v40[1];
  *(&v39[2] + 7) = v41[0];
  v39[3] = *(v41 + 9);
  v36 = LOBYTE(v54[0]);
  v32 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v54[0] = DebugMetricsEvent.summaryInfo.getter();
  swift_getKeyPath();
  sub_10002849C(&qword_100976AC8, &qword_1007BB788);
  sub_10002849C(&qword_100976AD0, &qword_1007BB790);
  sub_100097060(&qword_100976AD8, &qword_100976AC8, &qword_1007BB788, &protocol conformance descriptor for [A]);
  sub_1001706C0();
  v30 = v7;
  ForEach<>.init(_:id:content:)();
  v29 = static VerticalAlignment.center.getter();
  LOBYTE(v54[0]) = 1;
  sub_10016CA58(a1, v42);
  *&v38[7] = v42[0];
  *&v38[23] = v42[1];
  *&v38[39] = v42[2];
  *&v38[55] = v42[3];
  v8 = v54[0];
  v9 = v33;
  v10 = *(v34 + 16);
  v11 = v31;
  v10(v33, v7, v31);
  v43[0] = v37;
  v43[1] = 0;
  LOBYTE(v44[0]) = v36;
  *(v44 + 1) = v39[0];
  *(&v44[1] + 1) = v39[1];
  *(&v44[3] + 1) = v39[3];
  *(&v44[2] + 1) = v39[2];
  v12 = v32;
  *(&v44[4] + 1) = KeyPath;
  v45 = v32;
  v13 = v44[0];
  *a2 = v37;
  *(a2 + 16) = v13;
  v14 = v44[1];
  v15 = v44[2];
  v16 = v44[3];
  v17 = v44[4];
  *(a2 + 96) = v12;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  v18 = sub_10002849C(&qword_100976B08, &qword_1007BB7A8);
  v10((a2 + *(v18 + 48)), v9, v11);
  v19 = a2 + *(v18 + 64);
  v20 = v29;
  v46[0] = v29;
  v46[1] = 0;
  v47[0] = v8;
  *&v47[1] = *v38;
  *&v47[17] = *&v38[16];
  *&v47[33] = *&v38[32];
  *&v47[49] = *&v38[48];
  v21 = *&v38[63];
  *&v47[64] = *&v38[63];
  v22 = *v47;
  *v19 = v29;
  *(v19 + 16) = v22;
  v23 = *&v47[16];
  v24 = *&v47[32];
  v25 = *&v47[48];
  *(v19 + 80) = v21;
  *(v19 + 48) = v24;
  *(v19 + 64) = v25;
  *(v19 + 32) = v23;
  sub_100031660(v43, v54, &qword_100976B10, &qword_1007BB7B0);
  sub_100031660(v46, v54, &qword_100976B18, &qword_1007BB7B8);
  v26 = *(v34 + 8);
  v26(v30, v11);
  v48[0] = v20;
  v48[1] = 0;
  v49 = v8;
  v51 = *&v38[16];
  v52 = *&v38[32];
  *v53 = *&v38[48];
  *&v53[15] = *&v38[63];
  v50 = *v38;
  sub_10002B894(v48, &qword_100976B18, &qword_1007BB7B8);
  v26(v33, v11);
  v54[0] = v37;
  v54[1] = 0;
  v55 = v36;
  v56 = v39[0];
  v57 = v39[1];
  v58 = v39[2];
  v59 = v39[3];
  v60 = KeyPath;
  v61 = v32;
  return sub_10002B894(v54, &qword_100976B10, &qword_1007BB7B0);
}

double sub_10016C6C4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10002849C(&qword_100976AA0, &qword_1007BB710);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  DebugMetricsEvent.iconSymbol.getter();
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v5 = type metadata accessor for SymbolRenderingMode();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = Image.symbolRenderingMode(_:)();

  sub_10002B894(v4, &qword_100976AA0, &qword_1007BB710);
  v18 = DebugMetricsEvent.title.getter();
  v19 = v7;
  sub_10007FED4();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v12 &= 1u;
  LOBYTE(v18) = v12;
  v20 = 0;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;

  sub_100170840(v8, v10, v12);

  sub_100170894(v8, v10, v12);

  return result;
}

uint64_t sub_10016C890@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  if (a4)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
    v14._countAndFlagsBits = a3;
    v14._object = a4;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v14);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
    LocalizedStringKey.init(stringInterpolation:)();
    v16 = Text.init(_:tableName:bundle:comment:)();
    v18 = v17;
    v20 = v19;
    static Font.caption.getter();
    v21 = Text.font(_:)();
    a4 = v22;
    v24 = v23;
    v26 = v25;

    sub_100170894(v16, v18, v20 & 1);

    result = swift_getKeyPath();
    v28 = v24 & 1;
    v29 = 1;
  }

  else
  {
    v21 = 0;
    v28 = 0;
    v26 = 0;
    result = 0;
    v29 = 0;
  }

  *a5 = v21;
  *(a5 + 8) = a4;
  *(a5 + 16) = v28;
  *(a5 + 24) = v26;
  *(a5 + 32) = result;
  *(a5 + 40) = v29;
  *(a5 + 48) = 0;
  return result;
}

double sub_10016CA58@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  DebugMetricsEvent.date.getter();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v56 = a1;
    (*(v7 + 32))(v9, v5, v6);
    v55 = v6;
    if (qword_10096D1A8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Date.FormatStyle();
    sub_1000056A8(v37, qword_100976960);
    sub_100170A04(&qword_100976B20, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v58 = v60;
    v59 = v61;
    sub_10007FED4();
    v38 = Text.init<A>(_:)();
    v40 = v39;
    v54 = v9;
    v42 = v41;
    static Font.footnote.getter();
    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;

    sub_100170894(v38, v40, v42 & 1);

    LODWORD(v60) = static HierarchicalShapeStyle.secondary.getter();
    v10 = Text.foregroundStyle<A>(_:)();
    v11 = v48;
    LOBYTE(v38) = v49;
    v13 = v50;
    sub_100170894(v43, v45, v47 & 1);

    (*(v7 + 8))(v54, v55);
    v12 = v38 & 1;
    sub_100170840(v10, v11, v38 & 1);

    v14 = DebugMetricsEvent.topic.getter();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v27 = 0;
    v29 = 0;
    v36 = 0;
    v33 = 0;
    goto LABEL_8;
  }

  sub_10002B894(v5, &qword_100979710, &qword_1007BB7C0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = DebugMetricsEvent.topic.getter();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v60 = v14;
  v61 = v15;
  sub_10007FED4();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.footnote.getter();
  v22 = Text.font(_:)();
  v55 = v11;
  v56 = v10;
  v24 = v23;
  v26 = v25;
  v54 = v13;

  sub_100170894(v17, v19, v21 & 1);

  LODWORD(v60) = static HierarchicalShapeStyle.secondary.getter();
  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v26 & 1;
  v35 = v24;
  v11 = v55;
  v10 = v56;
  sub_100170894(v22, v35, v34);
  v13 = v54;

  v36 = v31 & 1;
  sub_100170840(v27, v29, v36);

LABEL_8:
  v51.n128_f64[0] = sub_1001707FC(v10, v11, v12, v13, v16);
  sub_1001707FC(v27, v29, v36, v33, v51);
  sub_100170850(v10, v11, v12, v13);
  sub_100170850(v27, v29, v36, v33);
  v52 = v57;
  *v57 = v10;
  v52[1] = v11;
  v52[2] = v12;
  v52[3] = v13;
  v52[4] = v27;
  v52[5] = v29;
  v52[6] = v36;
  v52[7] = v33;
  sub_100170850(v27, v29, v36, v33);
  return sub_100170850(v10, v11, v12, v13);
}

uint64_t sub_10016CF3C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = sub_10002849C(&qword_100976BF0, &qword_1007BB940);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v30 - v3;
  v36 = sub_10002849C(&qword_100976BF8, &qword_1007BB948);
  __chkstk_darwin(v36);
  v38 = v30 - v5;
  v32 = sub_10002849C(&qword_100976C00, &qword_1007BB950);
  __chkstk_darwin(v32);
  v33 = v30 - v6;
  v37 = sub_10002849C(&qword_100976C08, &qword_1007BB958);
  __chkstk_darwin(v37);
  v34 = v30 - v7;
  v8 = sub_10002849C(&qword_100976C10, &qword_1007BB960);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_10002849C(&qword_100976C18, &qword_1007BB968);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v31 = sub_10002849C(&qword_100976C20, &qword_1007BB970);
  __chkstk_darwin(v31);
  v16 = v30 - v15;
  sub_100031660((v1 + 2), &v41, &unk_1009711D0, &unk_1007B1A10);
  if (*(&v42[0] + 1))
  {
    sub_10002849C(&qword_100976C58, &qword_1007BB978);
    if (swift_dynamicCast())
    {
      v17 = v40;
      if (*(v40 + 16))
      {
        sub_100170F40(v1, &v41);
        v18 = swift_allocObject();
        v30[1] = v30;
        v19 = v42[0];
        *(v18 + 16) = v41;
        *(v18 + 32) = v19;
        *(v18 + 48) = v42[1];
        *(v18 + 64) = v17;
        __chkstk_darwin(v18);
        v30[-2] = v1;
        sub_10002849C(&qword_100976C60, &qword_1007BB980);
        sub_100170E30();
        sub_100170FEC();
        DisclosureGroup.init(content:label:)();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_100097060(&qword_100976C38, &qword_100976C18, &qword_1007BB968, &protocol conformance descriptor for DisclosureGroup<A, B>);
        _ConditionalContent<>.init(storage:)();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v28 = v1[1];
        sub_100031660((v1 + 2), v42, &unk_1009711D0, &unk_1007B1A10);
        *&v41 = v27;
        *(&v41 + 1) = v28;
        sub_100170C88(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_100097060(&qword_100976C38, &qword_100976C18, &qword_1007BB968, &protocol conformance descriptor for DisclosureGroup<A, B>);
        sub_100170E30();

        _ConditionalContent<>.init(storage:)();
        sub_100170E84(&v41);
      }

      sub_100031660(v16, v33, &qword_100976C20, &qword_1007BB970);
      swift_storeEnumTagMultiPayload();
      sub_100170D78();
      sub_100097060(&qword_100976C48, &qword_100976BF0, &qword_1007BB940, &protocol conformance descriptor for DisclosureGroup<A, B>);
      v29 = v34;
      _ConditionalContent<>.init(storage:)();
      sub_100031660(v29, v38, &qword_100976C08, &qword_1007BB958);
      swift_storeEnumTagMultiPayload();
      sub_100170CC0();
      sub_100170E30();
      _ConditionalContent<>.init(storage:)();
      sub_10002B894(v29, &qword_100976C08, &qword_1007BB958);
      return sub_10002B894(v16, &qword_100976C20, &qword_1007BB970);
    }
  }

  else
  {
    sub_10002B894(&v41, &unk_1009711D0, &unk_1007B1A10);
  }

  sub_100031660((v1 + 2), &v41, &unk_1009711D0, &unk_1007B1A10);
  if (*(&v42[0] + 1))
  {
    sub_10002849C(&qword_10096FE78, &qword_1007B1510);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      __chkstk_darwin(v21);
      v30[-2] = v1;
      sub_10002849C(&qword_100976BB0, &qword_1007BB850);
      sub_100170E30();
      sub_100170EBC();
      DisclosureGroup.init(content:label:)();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_100170D78();
      sub_100097060(&qword_100976C48, &qword_100976BF0, &qword_1007BB940, &protocol conformance descriptor for DisclosureGroup<A, B>);
      v23 = v34;
      _ConditionalContent<>.init(storage:)();
      sub_100031660(v23, v38, &qword_100976C08, &qword_1007BB958);
      swift_storeEnumTagMultiPayload();
      sub_100170CC0();
      _ConditionalContent<>.init(storage:)();
      sub_10002B894(v23, &qword_100976C08, &qword_1007BB958);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_10002B894(&v41, &unk_1009711D0, &unk_1007B1A10);
  }

  v25 = *v1;
  v26 = v1[1];
  sub_100031660((v1 + 2), v42, &unk_1009711D0, &unk_1007B1A10);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  sub_100170C88(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_100170CC0();
  sub_100170E30();

  _ConditionalContent<>.init(storage:)();
  return sub_100170E84(&v41);
}

uint64_t sub_10016D8C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10002849C(&qword_100976C90, &qword_1007BB990);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  v32 = sub_10002849C(&qword_100976C98, &qword_1007BB998);
  __chkstk_darwin(v32);
  v33 = v29 - v10;
  v34 = sub_10002849C(&qword_100976C78, &qword_1007BB988);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = v29 - v11;
  if (*a1 == __PAIR128__(0xEB00000000736E6FLL, 0x6973736572706D69) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v29[2] = v6;
    sub_1006E2FBC(a2);
    v13 = *(v12 + 16);
    v29[0] = v12;
    v29[1] = a3;
    if (v13)
    {
      v14 = v12 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        sub_100031660(v14, v39, &qword_100976CB0, &qword_1007BB9C8);
        v35 = v39[0];
        v36 = v39[1];
        v37 = v40;
        sub_10002849C(&qword_10096FE78, &qword_1007B1510);
        if (swift_dynamicCast())
        {
          v16 = v38;
          if (v38)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_100034954(0, v15[2] + 1, 1, v15);
            }

            v18 = v15[2];
            v17 = v15[3];
            if (v18 >= v17 >> 1)
            {
              v15 = sub_100034954((v17 > 1), v18 + 1, 1, v15);
            }

            v15[2] = v18 + 1;
            v15[v18 + 4] = v16;
          }
        }

        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v19 = sub_1001DABA8(v15);
    v21 = v20;
    *&v39[0] = v29[0];
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1001711D4;
    *(v23 + 24) = v22;
    sub_10002849C(&qword_100976CA0, &qword_1007BB9C0);
    sub_100097060(&qword_100976CA8, &qword_100976CA0, &qword_1007BB9C0, &protocol conformance descriptor for [A]);
    sub_1001710FC();
    v24 = v30;
    ForEach<>.init(_:id:content:)();
    v25 = v31;
    v26 = v34;
    (*(v31 + 16))(v33, v24, v34);
    swift_storeEnumTagMultiPayload();
    sub_100171078();
    sub_100171150();
    _ConditionalContent<>.init(storage:)();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    sub_1006E2FBC(a2);
    *&v39[0] = v28;
    swift_getKeyPath();
    sub_10002849C(&qword_100976CA0, &qword_1007BB9C0);
    sub_100097060(&qword_100976CA8, &qword_100976CA0, &qword_1007BB9C0, &protocol conformance descriptor for [A]);
    sub_100170BF0();
    ForEach<>.init(_:id:content:)();
    (*(v7 + 16))(v33, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_100171078();
    sub_100171150();
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_10016DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000073E8(a2, v10);
  sub_10002849C(&qword_10096FE78, &qword_1007B1510);
  if (swift_dynamicCast())
  {
    v5 = v9;
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = sub_100398EF4(_swiftEmptyArrayStorage);
    if (!*(v5 + 16))
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      goto LABEL_8;
    }
  }

  v6 = sub_1000072B8(0xD000000000000012, 0x8000000100803E90);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1000073E8(*(v5 + 56) + 32 * v6, v10);
LABEL_8:
  sub_1001DAEA0(v10, a4);
  sub_10002B894(v10, &unk_1009711D0, &unk_1007B1A10);
  return v5;
}

uint64_t sub_10016DF9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  result = sub_1000073E8(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_10016E034(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_100035410(*(a1 + 16), 0);
  v5 = sub_10039FBF4(&v8, v4 + 4, v3, a1);
  v6 = v8;

  sub_100081680(v6);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = v4;
  sub_10016FC88(&v8);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_10002849C(&unk_100977380, &qword_1007BB880);
  sub_100097060(&qword_100976BC8, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
  sub_100170BF0();
  return ForEach<>.init(_:id:content:)();
}

double sub_10016E1E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_1000072B8(v4, v5);
    if (v8)
    {
      sub_1000073E8(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_10016E27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static HorizontalAlignment.leading.getter();
  LOBYTE(v20[0]) = 1;
  sub_10016E410(v17);
  *&v16[7] = v17[0];
  *&v16[23] = v17[1];
  *&v16[39] = v17[2];
  *&v16[55] = v17[3];
  v6 = v20[0];
  sub_100031660(a1 + 16, v13, &unk_1009711D0, &unk_1007B1A10);
  v14 = 0;
  v15 = 1;
  sub_100171448(v13, v12);
  v18[0] = v5;
  v18[1] = 0;
  v19[0] = v6;
  *&v19[1] = *v16;
  *&v19[17] = *&v16[16];
  *&v19[33] = *&v16[32];
  *&v19[49] = *&v16[48];
  *&v19[64] = *&v16[63];
  v7 = *&v16[63];
  v8 = *v19;
  *a2 = v5;
  *(a2 + 16) = v8;
  v9 = *&v19[16];
  v10 = *&v19[48];
  *(a2 + 48) = *&v19[32];
  *(a2 + 64) = v10;
  *(a2 + 32) = v9;
  *(a2 + 80) = v7;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  sub_100171448(v12, a2 + 104);
  sub_100031660(v18, v20, &qword_100976CC8, &qword_1007BBAD0);
  sub_100171480(v13);
  sub_100171480(v12);
  v20[0] = v5;
  v20[1] = 0;
  v21 = v6;
  v23 = *&v16[16];
  v24 = *&v16[32];
  *v25 = *&v16[48];
  *&v25[15] = *&v16[63];
  v22 = *v16;
  return sub_10002B894(v20, &qword_100976CC8, &qword_1007BBAD0);
}

double sub_10016E410@<D0>(uint64_t a2@<X8>)
{
  sub_10007FED4();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v26 = Text.bold()();
  v27 = v8;
  v10 = v9;
  v25 = v11;
  sub_100170894(v3, v5, v7 & 1);

  sub_10016E5DC();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static HierarchicalShapeStyle.secondary.getter();
  v17 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_100170894(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v10;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_100170840(v26, v10, v25 & 1);

  sub_100170840(v17, v19, v21 & 1);

  sub_100170894(v17, v19, v21 & 1);

  sub_100170894(v26, v10, v25 & 1);

  return result;
}

uint64_t sub_10016E5DC()
{
  sub_100031660(v0, v5, &unk_1009711D0, &unk_1007B1A10);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  }

  sub_100031660(v0, v5, &unk_1009711D0, &unk_1007B1A10);
  if (v6)
  {
    sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v2 = CFGetTypeID(cf);
      if (CFBooleanGetTypeID() == v2)
      {

        return 0x6E61656C6F6F42;
      }

      else if (CFNumberGetTypeID() == v2)
      {
        IsFloatType = CFNumberIsFloatType(cf);

        if (IsFloatType)
        {
          return 0x656C62756F44;
        }

        else
        {
          return 7630409;
        }
      }

      else
      {

        return 0x7265626D754ELL;
      }
    }
  }

  else
  {
    sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  }

  sub_100031660(v0, v5, &unk_1009711D0, &unk_1007B1A10);
  if (v6)
  {
    sub_10002849C(&qword_100976C58, &qword_1007BB978);
    if (swift_dynamicCast())
    {

      return 0x7961727241;
    }
  }

  else
  {
    sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  }

  sub_100031660(v0, v5, &unk_1009711D0, &unk_1007B1A10);
  if (v6)
  {
    sub_10002849C(&qword_10096FE78, &qword_1007B1510);
    if (swift_dynamicCast())
    {

      return 0x7463656A624FLL;
    }
  }

  else
  {
    sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  }

  result = 0x6E776F6E6B6E753CLL;
  if (*(v0 + 24))
  {
    sub_100031660(v0, v5, &unk_1009711D0, &unk_1007B1A10);
    if (v6)
    {
      sub_100005744(0, &qword_100976CD8, NSNull_ptr);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
    }

    v5[0] = sub_10002849C(&unk_1009711D0, &unk_1007B1A10);
    sub_10002849C(&qword_100976CD0, &qword_1007BBAD8);
    return String.init<A>(describing:)();
  }

  return result;
}

uint64_t sub_10016E984@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_10016E27C(v2, a1 + 24);
}

void sub_10016E9C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10002849C(&qword_100976CE0, &qword_1007BBAE0);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  if (a1)
  {
    v46 = v10;
    v47 = v9;
    v48 = a4;
    *v13 = static HorizontalAlignment.center.getter();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v44 = a2;
    v45 = a3;
    v15 = sub_100035410(v14, 0);
    v16 = sub_10039FBF4(&v49, v15 + 4, v14, a1);
    v17 = v49;

    sub_100081680(v17);
    if (v16 == v14)
    {
      a2 = v44;
      a3 = v45;
LABEL_9:
      v49 = v15;
      sub_10016FC88(&v49);
      sub_10002849C(&qword_100976CE8, &qword_1007BBAE8);
      swift_getKeyPath();
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = a2;
      v19[4] = a3;

      sub_10002849C(&unk_100977380, &qword_1007BB880);
      sub_10002849C(&qword_100976CF0, &qword_1007BBAF0);
      sub_100097060(&qword_100976BC8, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
      sub_100097060(&qword_100976CF8, &qword_100976CF0, &qword_1007BBAF0, &protocol conformance descriptor for HStack<A>);
      ForEach<>.init(_:id:content:)();
      v20 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = &v13[*(sub_10002849C(&qword_100976D00, &qword_1007BBAF8) + 36)];
      *v29 = v20;
      *(v29 + 1) = v22;
      *(v29 + 2) = v24;
      *(v29 + 3) = v26;
      *(v29 + 4) = v28;
      v29[40] = 0;
      v30 = static Edge.Set.all.getter();
      v31 = &v13[*(sub_10002849C(&qword_100976D08, &qword_1007BBB00) + 36)];
      *v31 = 1;
      v31[8] = v30;
      v32 = v47;
      v33 = &v13[*(v47 + 36)];
      v34 = *(type metadata accessor for RoundedRectangle() + 20);
      v35 = enum case for RoundedCornerStyle.continuous(_:);
      v36 = type metadata accessor for RoundedCornerStyle();
      (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
      __asm { FMOV            V0.2D, #8.0 }

      *v33 = _Q0;
      *&v33[*(sub_10002849C(&qword_100976D10, &qword_1007BBB08) + 36)] = 256;
      v42 = v48;
      sub_100171518(v13, v48);
      (*(v46 + 56))(v42, 0, 1, v32);
      return;
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v18 = *(v10 + 56);

    v18(a4, 1, 1, v11);
  }
}

double sub_10016EE24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_10007FED4();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v14 = Text.bold()();
  v16 = v15;
  v21 = v17;
  v19 = v18;
  sub_100170894(v9, v11, v13 & 1);

  sub_10016EF7C(a1, a2, a3, a4, a5, v26);
  v26[4] = 3;
  v27 = 0;
  sub_100171448(v26, v25);
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v21 & 1;
  *(a6 + 24) = v19;
  *(a6 + 32) = 0x4030000000000000;
  *(a6 + 40) = 0;
  sub_100171448(v25, a6 + 48);
  sub_100170840(v14, v16, v21 & 1);

  sub_100171480(v26);
  sub_100171480(v25);
  sub_100170894(v14, v16, v21 & 1);

  return result;
}

double sub_10016EF7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000100803E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && a3 && *(a3 + 16) && (v12 = sub_1000072B8(a1, a2), (v13))
  {
    sub_1000073E8(*(a3 + 56) + 32 * v12, v21);
    sub_100056164(v21, v22);
    if (a5)
    {
      *&v21[0] = 0;
      *(&v21[0] + 1) = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v14._countAndFlagsBits = 10272;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = a4;
      v15._object = a5;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = v21[0];
      *(a6 + 24) = &type metadata for String;
      *a6 = v17;
      sub_100007000(v22);
      return result;
    }

    sub_100007000(v22);
    if (!*(a3 + 16))
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || !*(a3 + 16))
  {
    goto LABEL_14;
  }

  v19 = sub_1000072B8(a1, a2);
  if (v20)
  {
    sub_1000073E8(*(a3 + 56) + 32 * v19, a6);
    return result;
  }

LABEL_14:
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

__n128 sub_10016F11C@<Q0>(uint64_t a1@<X8>)
{
  sub_100031660(v1, &v40, &unk_1009711D0, &unk_1007B1A10);
  if (v41.n128_u64[1])
  {
    sub_10002849C(&qword_100976C58, &qword_1007BB978);
    if (swift_dynamicCast())
    {
      v3 = *(*&v58[0] + 16);

      *&cf = v3;
      *&v59 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v59 + 1) = v4;
      v5._countAndFlagsBits = 0x736D65746920;
      v5._object = 0xE600000000000000;
      String.append(_:)(v5);
      cf = v59;
      v52.n128_u64[0] = 0;
      v52.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v53) = 0;

      _ConditionalContent<>.init(storage:)();
      v50 = v61;
      v49 = 0;
      v62[18] = 0;
      sub_10002849C(&qword_100976D90, &qword_1007BBBD8);
      sub_10002849C(&qword_100976DA0, &qword_1007BBBE0);
      sub_1001719A8();
      sub_100171A24();
      _ConditionalContent<>.init(storage:)();
      v60 = v45;
      v61 = v46;
      *v62 = *v47;
      *&v62[15] = *&v47[15];
      v59 = v44;
LABEL_8:
      LOBYTE(v56) = 0;
      v62[19] = 0;
      sub_10002849C(&qword_100976D78, &qword_1007BBBD0);
      sub_10017191C();
      _ConditionalContent<>.init(storage:)();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10002B894(&v40, &unk_1009711D0, &unk_1007B1A10);
  }

  sub_100031660(v1, &v40, &unk_1009711D0, &unk_1007B1A10);
  if (v41.n128_u64[1])
  {
    sub_10002849C(&qword_10096FE78, &qword_1007B1510);
    if (swift_dynamicCast())
    {
      v6 = *(*&v58[0] + 16);

      *&cf = v6;
      *&v59 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v59 + 1) = v7;
      v8._countAndFlagsBits = 0x7379656B20;
      v8._object = 0xE500000000000000;
      String.append(_:)(v8);
      cf = v59;
      v52.n128_u64[0] = 0;
      v52.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v53) = 1;

      _ConditionalContent<>.init(storage:)();
      v50 = v61;
      v49 = 0;
      v62[18] = 0;
      sub_10002849C(&qword_100976D90, &qword_1007BBBD8);
      sub_10002849C(&qword_100976DA0, &qword_1007BBBE0);
      sub_1001719A8();
      sub_100171A24();
      _ConditionalContent<>.init(storage:)();
      v61 = v46;
      *v62 = *v47;
      *&v62[15] = *&v47[15];
      v59 = v44;
      v60 = v45;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10002B894(&v40, &unk_1009711D0, &unk_1007B1A10);
  }

  sub_100031660(v1, &v59, &unk_1009711D0, &unk_1007B1A10);
  if (v60.n128_u64[1])
  {
    sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v9 = cf;
      v10 = CFGetTypeID(cf);
      v39 = v9;
      if (CFBooleanGetTypeID() == v10)
      {
        v11 = [v9 BOOLValue];
        if (v11)
        {
          v12 = 1702195828;
        }

        else
        {
          v12 = 0x65736C6166;
        }

        if (v11)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE500000000000000;
        }

        KeyPath = swift_getKeyPath();
        *&cf = v12;
        *(&cf + 1) = v13;
        v52.n128_u64[0] = 0;
        v52.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v53 = KeyPath;
        v15 = 2;
      }

      else
      {
        v27 = [v9 stringValue];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = swift_getKeyPath();
        *&cf = v28;
        *(&cf + 1) = v30;
        v52.n128_u64[0] = 0;
        v52.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v53 = v31;
        v15 = 258;
      }

      WORD4(v53) = v15;
      sub_10002849C(&qword_100976DC0, &qword_1007BBBF0);
      sub_100171B34();
      _ConditionalContent<>.init(storage:)();
      v32 = v61;
      v50 = BYTE9(v61);
      v49 = 0;
      v62[17] = 0;
      v33 = v59;
      v34 = v60.n128_u8[0];
      v35 = v60.n128_i64[1];
      v37 = v60.n128_u8[0];
      v38 = v59;
      v36 = v60.n128_i64[1];
      sub_100171CA4(v59, *(&v59 + 1), v60.n128_i8[0], v60.n128_i64[1], v61);
      sub_100171CA4(v33, *(&v33 + 1), v34, v35, v32);
      sub_10002849C(&qword_100976DB0, &qword_1007BBBE8);
      sub_10002849C(&qword_100976DE0, &qword_1007BBC00);
      sub_100171AB0();
      sub_100171BEC();
      _ConditionalContent<>.init(storage:)();
      v61 = v53;
      *v62 = v54;
      *&v62[16] = v55;
      v59 = cf;
      v60 = v52;
      LOBYTE(v56) = 1;
      v62[18] = 1;
      sub_10002849C(&qword_100976D90, &qword_1007BBBD8);
      sub_10002849C(&qword_100976DA0, &qword_1007BBBE0);
      sub_1001719A8();
      sub_100171A24();
      _ConditionalContent<>.init(storage:)();
      v46 = v42;
      *v47 = *v43;
      *&v47[15] = *&v43[15];
      v44 = v40;
      v45 = v41;
      v61 = v42;
      *v62 = *v43;
      *&v62[15] = *&v43[15];
      v59 = v40;
      v60 = v41;
      LOBYTE(v58[0]) = 0;
      v62[19] = 0;
      sub_100031660(&v44, &cf, &qword_100976D78, &qword_1007BBBD0);
      sub_10002849C(&qword_100976D78, &qword_1007BBBD0);
      sub_10017191C();
      _ConditionalContent<>.init(storage:)();
      sub_100171CEC(v38, *(&v33 + 1), v37, v36);
      sub_10002B894(&v44, &qword_100976D78, &qword_1007BBBD0);

      sub_100171CEC(v38, *(&v33 + 1), v37, v36);
      v61 = v53;
      *v62 = v54;
      *&v62[16] = v55;
      v24 = cf;
      v23 = v52;
      goto LABEL_24;
    }
  }

  else
  {
    sub_10002B894(&v59, &unk_1009711D0, &unk_1007B1A10);
  }

  sub_100031660(v1, &v56, &unk_1009711D0, &unk_1007B1A10);
  if (!v57)
  {
    sub_10002B894(&v56, &unk_1009711D0, &unk_1007B1A10);
    LOBYTE(v44) = 0;
    LOBYTE(v40) = 1;
    cf = xmmword_1007BB620;
    v52.n128_u8[0] = 0;
    v52.n128_u64[1] = _swiftEmptyArrayStorage;
    HIBYTE(v55) = 1;
    sub_10002849C(&qword_100976D78, &qword_1007BBBD0);
    sub_10017191C();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_25;
  }

  sub_100056164(&v56, v58);
  sub_1000073E8(v58, &v59);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v19 = swift_getKeyPath();
  v20 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = swift_getKeyPath();
  LOBYTE(cf) = v21;
  *&v40 = v16;
  *(&v40 + 1) = v18;
  v41.n128_u8[0] = 0;
  v41.n128_u64[1] = _swiftEmptyArrayStorage;
  *&v42 = v19;
  BYTE8(v42) = 2;
  *v43 = v22;
  *&v43[8] = v20;
  v43[16] = v21;
  v61 = v42;
  *v62 = *v43;
  v62[16] = v21;
  v59 = v40;
  v60 = v41;
  v48 = 1;
  v62[17] = 1;
  sub_100031660(&v40, &cf, &qword_100976DE0, &qword_1007BBC00);
  sub_10002849C(&qword_100976DB0, &qword_1007BBBE8);
  sub_10002849C(&qword_100976DE0, &qword_1007BBC00);
  sub_100171AB0();
  sub_100171BEC();
  _ConditionalContent<>.init(storage:)();
  v61 = v53;
  *v62 = v54;
  *&v62[16] = v55;
  v59 = cf;
  v60 = v52;
  v49 = 1;
  v62[18] = 1;
  sub_10002849C(&qword_100976D90, &qword_1007BBBD8);
  sub_10002849C(&qword_100976DA0, &qword_1007BBBE0);
  sub_1001719A8();
  sub_100171A24();
  _ConditionalContent<>.init(storage:)();
  v61 = v46;
  *v62 = *v47;
  *&v62[15] = *&v47[15];
  v59 = v44;
  v60 = v45;
  v50 = 0;
  v62[19] = 0;
  sub_10002849C(&qword_100976D78, &qword_1007BBBD0);
  sub_10017191C();
  _ConditionalContent<>.init(storage:)();
  sub_10002B894(&v40, &qword_100976DE0, &qword_1007BBC00);
  sub_100007000(v58);
LABEL_23:
  v61 = v53;
  *v62 = v54;
  *&v62[16] = v55;
  v24 = cf;
  v23 = v52;
LABEL_24:
  v59 = v24;
  v60 = v23;
LABEL_25:
  v25 = *v62;
  *(a1 + 32) = v61;
  *(a1 + 48) = v25;
  *(a1 + 64) = *&v62[16];
  result = v60;
  *a1 = v59;
  *(a1 + 16) = result;
  return result;
}

double sub_10016FBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

double sub_10016FC3C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

void sub_10016FC88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002B6F3C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_10016FCF4(v4);
  *a1 = v2;
}

void sub_10016FCF4(uint64_t *a1)
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_10016FEBC(v7, v8, a1, v4);
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
    sub_10016FDEC(0, v2, 1, a1);
  }
}

uint64_t sub_10016FDEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10016FEBC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1002B6D90(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100170498((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100034940(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_100034940((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100170498((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002B6D90(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1002B6D04(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_100170498(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t sub_1001706C0()
{
  result = qword_100976AE0;
  if (!qword_100976AE0)
  {
    sub_10002D1A8(&qword_100976AD0, &qword_1007BB790);
    sub_100170744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976AE0);
  }

  return result;
}

unint64_t sub_100170744()
{
  result = qword_100976AE8;
  if (!qword_100976AE8)
  {
    sub_10002D1A8(&qword_100976AF0, &qword_1007BB798);
    sub_100097060(&qword_100976AF8, &qword_100976B00, &qword_1007BB7A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976AE8);
  }

  return result;
}

double sub_1001707FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a4)
  {
    sub_100170840(a1, a2, a3 & 1);
  }

  return result;
}

double sub_100170840(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_100170850(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100170894(a1, a2, a3 & 1);
  }

  return result;
}

double sub_100170894(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1001708B4()
{
  result = qword_100976B78;
  if (!qword_100976B78)
  {
    sub_10002D1A8(&qword_100976B40, &qword_1007BB810);
    sub_10002D1A8(&qword_100976B38, &qword_1007BB808);
    type metadata accessor for PlainListStyle();
    sub_100097060(&qword_100976B68, &qword_100976B38, &qword_1007BB808, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_100097060(&qword_100976B80, &qword_100976B88, &qword_1007BB838, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976B78);
  }

  return result;
}

uint64_t sub_100170A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100170A4C(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100170AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100170B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100170B70@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DebugMetricsEventDetailView(0);

  return sub_10016B3FC(a1, a2);
}

unint64_t sub_100170BF0()
{
  result = qword_100976BD0;
  if (!qword_100976BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976BD0);
  }

  return result;
}

uint64_t sub_100170C44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100170CC0()
{
  result = qword_100976C28;
  if (!qword_100976C28)
  {
    sub_10002D1A8(&qword_100976C08, &qword_1007BB958);
    sub_100170D78();
    sub_100097060(&qword_100976C48, &qword_100976BF0, &qword_1007BB940, &protocol conformance descriptor for DisclosureGroup<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C28);
  }

  return result;
}

unint64_t sub_100170D78()
{
  result = qword_100976C30;
  if (!qword_100976C30)
  {
    sub_10002D1A8(&qword_100976C20, &qword_1007BB970);
    sub_100097060(&qword_100976C38, &qword_100976C18, &qword_1007BB968, &protocol conformance descriptor for DisclosureGroup<A, B>);
    sub_100170E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C30);
  }

  return result;
}

unint64_t sub_100170E30()
{
  result = qword_100976C40;
  if (!qword_100976C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C40);
  }

  return result;
}

unint64_t sub_100170EBC()
{
  result = qword_100976C50;
  if (!qword_100976C50)
  {
    sub_10002D1A8(&qword_100976BB0, &qword_1007BB850);
    sub_100170BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C50);
  }

  return result;
}

double sub_100170F88@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_100031660((v3 + 2), (a1 + 2), &unk_1009711D0, &unk_1007B1A10);
  *a1 = v5;
  a1[1] = v4;

  return result;
}

unint64_t sub_100170FEC()
{
  result = qword_100976C68;
  if (!qword_100976C68)
  {
    sub_10002D1A8(&qword_100976C60, &qword_1007BB980);
    sub_100171078();
    sub_100171150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C68);
  }

  return result;
}

unint64_t sub_100171078()
{
  result = qword_100976C70;
  if (!qword_100976C70)
  {
    sub_10002D1A8(&qword_100976C78, &qword_1007BB988);
    sub_1001710FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C70);
  }

  return result;
}

unint64_t sub_1001710FC()
{
  result = qword_100976C80;
  if (!qword_100976C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C80);
  }

  return result;
}

unint64_t sub_100171150()
{
  result = qword_100976C88;
  if (!qword_100976C88)
  {
    sub_10002D1A8(&qword_100976C90, &qword_1007BB990);
    sub_100170BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C88);
  }

  return result;
}

uint64_t sub_1001711DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_100171220(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10017127C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001712E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100171328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100171384()
{
  result = qword_100976CB8;
  if (!qword_100976CB8)
  {
    sub_10002D1A8(&qword_100976CC0, "Pa\b");
    sub_100170CC0();
    sub_100170E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976CB8);
  }

  return result;
}

double sub_1001714B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  *a2 = static VerticalAlignment.firstTextBaseline.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_10016EE24(v7, v8, v4, v5, v6, a2 + 24);
}

uint64_t sub_100171518(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100976CE0, &qword_1007BBAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100171588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_1001715E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_100171654()
{
  result = qword_100976D28;
  if (!qword_100976D28)
  {
    sub_10002D1A8(&qword_100976D30, &qword_1007BBB68);
    sub_1001716D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D28);
  }

  return result;
}

unint64_t sub_1001716D8()
{
  result = qword_100976D38;
  if (!qword_100976D38)
  {
    sub_10002D1A8(&qword_100976CE0, &qword_1007BBAE0);
    sub_100171790();
    sub_100097060(&qword_100976D70, &qword_100976D10, &qword_1007BBB08, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D38);
  }

  return result;
}

unint64_t sub_100171790()
{
  result = qword_100976D40;
  if (!qword_100976D40)
  {
    sub_10002D1A8(&qword_100976D08, &qword_1007BBB00);
    sub_100171848();
    sub_100097060(&qword_100976D60, &qword_100976D68, qword_1007BBB78, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D40);
  }

  return result;
}

unint64_t sub_100171848()
{
  result = qword_100976D48;
  if (!qword_100976D48)
  {
    sub_10002D1A8(&qword_100976D00, &qword_1007BBAF8);
    sub_100097060(&qword_100976D50, &qword_100976D58, &qword_1007BBB70, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D48);
  }

  return result;
}

unint64_t sub_10017191C()
{
  result = qword_100976D80;
  if (!qword_100976D80)
  {
    sub_10002D1A8(&qword_100976D78, &qword_1007BBBD0);
    sub_1001719A8();
    sub_100171A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D80);
  }

  return result;
}

unint64_t sub_1001719A8()
{
  result = qword_100976D88;
  if (!qword_100976D88)
  {
    sub_10002D1A8(&qword_100976D90, &qword_1007BBBD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D88);
  }

  return result;
}

unint64_t sub_100171A24()
{
  result = qword_100976D98;
  if (!qword_100976D98)
  {
    sub_10002D1A8(&qword_100976DA0, &qword_1007BBBE0);
    sub_100171AB0();
    sub_100171BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976D98);
  }

  return result;
}

unint64_t sub_100171AB0()
{
  result = qword_100976DA8;
  if (!qword_100976DA8)
  {
    sub_10002D1A8(&qword_100976DB0, &qword_1007BBBE8);
    sub_100171B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976DA8);
  }

  return result;
}

unint64_t sub_100171B34()
{
  result = qword_100976DB8;
  if (!qword_100976DB8)
  {
    sub_10002D1A8(&qword_100976DC0, &qword_1007BBBF0);
    sub_100097060(&qword_100976DC8, &qword_100976DD0, &qword_1007BBBF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976DB8);
  }

  return result;
}

unint64_t sub_100171BEC()
{
  result = qword_100976DD8;
  if (!qword_100976DD8)
  {
    sub_10002D1A8(&qword_100976DE0, &qword_1007BBC00);
    sub_100171B34();
    sub_100097060(&qword_100976AF8, &qword_100976B00, &qword_1007BB7A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976DD8);
  }

  return result;
}

double sub_100171CA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_100170840(a1, a2, a3 & 1);

  return result;
}

double sub_100171CEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100170894(a1, a2, a3 & 1);

  return result;
}

unint64_t sub_100171D34()
{
  result = qword_100976DE8;
  if (!qword_100976DE8)
  {
    sub_10002D1A8(&qword_100976DF0, qword_1007BBC38);
    sub_10017191C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976DE8);
  }

  return result;
}

void sub_100171DDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_isCollapsing] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_presenter] = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_artworkLoader] = v24;

  dispatch thunk of BasePresenter.pageRenderMetrics.getter();

  ArtworkLoader.pageRenderMetrics.setter();

  v9 = &v3[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver];
  *(v9 + 3) = type metadata accessor for AppEventDetailPagePresenter();
  *(v9 + 4) = &protocol witness table for BasePresenter;
  *v9 = a1;
  v10 = objc_allocWithZone(type metadata accessor for AppEventDetailPageView(0));

  v11 = [v10 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView] = v11;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0));
  v13 = a3;
  v14 = sub_1004D2B88(a3);

  *&v4[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_containerTransitioningDelegate] = v14;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for VideoPlaybackCoordinator();
  v16 = v15;
  inject<A, B>(_:from:)();
  v17 = v24;
  v18 = v16;
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  sub_100175A94(&qword_100976E68, v19, type metadata accessor for AppEventDetailPageViewController, &unk_1007BBCBC);
  dispatch thunk of AppEventDetailPagePresenter.view.setter();
  v20 = [v18 view];

  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v21 = [v18 view];
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v21 setClipsToBounds:0];

  v22 = [v18 view];
  if (v22)
  {
    [v22 addSubview:*&v18[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1001722E0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100175A94(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
  }

  sub_100175A94(&qword_1009811D0, 255, type metadata accessor for AppEventDetailPageView, &unk_1007C8A5C);
  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
}

void sub_100172598(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
    PendingPageRender.appearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v17 = v18[1];
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  sub_10034E624();
}

void sub_10017296C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_1009729C8, &unk_1007B3740);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1, v14);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v13 + 8))(v16, v12);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v18 + 8))(v7, v19);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v17 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    PendingPageRender.disappearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

void sub_100172D3C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidDisappear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  v10 = *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    type metadata accessor for VideoView(0);
    sub_100175A94(&unk_1009840E0, 255, type metadata accessor for VideoView, &unk_1007DDE78);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  else
  {
    sub_100005744(0, &qword_100973120, UIImageView_ptr);
    sub_1000D0150();
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  v13 = *(*(v10 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_100175A94(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v14 = v13;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v15 = v17[1];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    sub_100175A94(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
  }

  sub_100175A94(&qword_1009811D0, 255, type metadata accessor for AppEventDetailPageView, &unk_1007C8A5C);
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
}

double sub_1001731D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();

  return result;
}

double sub_1001733D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();

  return result;
}

void sub_1001735EC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10002A400(&v7[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v15 = v16[1];
  a3(v14);
}

id sub_100173804()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
    sub_100041CD0();
    v12 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_defaultPageMargin] = v13;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v3)
    {
      v15 = -*&v1[v12];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100173988(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    dispatch thunk of AppEventDetailPagePresenter.sizeClassDidChange()();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_100173C2C()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400((v0 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v2 + 8))(v4, v1);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v5 = v6[1];
  dispatch thunk of VideoPlaybackCoordinator.startAutoPlayVideo()();
}

uint64_t sub_100173F20(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a1;
  }

  (*(v6 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v5);
  type metadata accessor for AppEventDetailPagePresenter();
  sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v6 + 8))(v8, v5);
  [a1 dismissViewControllerAnimated:1 completion:0];

  return sub_10002B894(v12, &unk_1009711D0, &unk_1007B1A10);
}

void sub_1001740D8()
{
  v1 = v0;
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2, v4);
  type metadata accessor for AppEventDetailPagePresenter();
  sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v3 + 8))(v6, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_100175AEC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B67B0;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1001742D8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  result = dispatch thunk of AppEventDetailPagePresenter.lockupClickAction.getter();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_objectGraph;
    v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_10002B894(v4, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      v10 = *(a1 + v7);

      sub_1005F9AF4(v6, 1, v10, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

void sub_100174500(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v82 = type metadata accessor for MediaOverlayStyle();
  v78 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v71 - v5;
  __chkstk_darwin(v6);
  v79 = &v71 - v7;
  v8 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v8 - 8);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v71 - v11;
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v73 = &v71 - v13;
  v14 = type metadata accessor for VideoControls();
  __chkstk_darwin(v14 - 8);
  v71 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v17 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v71 - v18;
  v20 = type metadata accessor for VideoFillMode();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for VideoConfiguration();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *&v1[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView];
  v26 = [v1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v27 = UITraitCollection.isSizeClassCompact.getter();
  }

  else
  {
    v27 = 0;
  }

  v28 = [v2 view];
  if (v28)
  {
    v29 = v28;
    [v28 bounds];

    v30 = *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_artworkLoader];
    v31 = *&v2[OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_objectGraph];
    *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_artworkLoader) = v30;

    v32 = AppEventDetailPage.appEvent.getter();
    v87 = v31;
    sub_100392D28(v32, v27 & 1, v31);

    if (AppEventDetailPage.video.getter())
    {
      v33 = Video.preview.getter();
    }

    else
    {
      v33 = AppEventDetailPage.artwork.getter();
    }

    *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mainArtwork) = v33;

    if (AppEventDetailPage.video.getter())
    {
      (*(v21 + 104))(v23, enum case for VideoFillMode.scaleAspectFill(_:), v20);
      Video.preview.getter();
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v34 = type metadata accessor for AspectRatio();
      (*(*(v34 - 8) + 56))(v19, 0, 1, v34);
      Video.playbackControls.getter();
      Video.autoPlayPlaybackControls.getter();
      Video.canPlayFullScreen.getter();
      Video.allowsAutoPlay.getter();
      Video.looping.getter();
      v35 = v72;
      VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
      type metadata accessor for VideoViewManager();
      BaseObjectGraph.inject<A>(_:)();
      Video.playbackId.getter();
      v36 = v73;
      Video.videoUrl.getter();
      v37 = type metadata accessor for URL();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = v76;
      Video.templateMediaEvent.getter();
      v39 = v77;
      Video.templateClickEvent.getter();
      type metadata accessor for VideoView(0);
      sub_100175A94(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v40 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
      sub_10002B894(v39, &unk_100973A50, &unk_1007B4FD0);
      sub_10002B894(v38, &unk_100973A50, &unk_1007B4FD0);
      sub_10002B894(v36, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v88, &qword_10096FB90, &qword_1007B2A50);
      sub_1003578C8();
      swift_unknownObjectWeakAssign();
      sub_10035338C();

      Video.preview.getter();
      v41 = Artwork.backgroundColor.getter();

      sub_100352F00(v41);

      (*(v74 + 8))(v35, v75);
    }

    else
    {
      sub_1003578C8();
      swift_unknownObjectWeakAssign();
      sub_10035338C();
    }

    v42 = (v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock);
    v43 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock);
    v44 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButtonActionBlock + 8);
    v45 = v85;
    *v42 = sub_100175AF4;
    v42[1] = v45;
    swift_retain_n();
    sub_10001F63C(v43, v44);

    [*(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton) addTarget:v25 action:"didTapCloseButton:" forControlEvents:64];

    v46 = (v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock);
    v47 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock);
    v48 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_dismissTapGestureActionBlock + 8);
    v49 = v84;
    *v46 = sub_100175A68;
    v46[1] = v49;

    sub_10001F63C(v47, v48);
    sub_100352718();
    v50 = AppEventDetailPage.shareAction.getter();
    if (v50)
    {
      v51 = v50;
      v52 = swift_allocObject();
      *(v52 + 16) = v87;
      *(v52 + 24) = v51;

      sub_100357ABC(sub_100175A8C, v52);
    }

    else
    {
      sub_100357ABC(0, 0);
    }

    v53 = (v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock);
    v54 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock);
    v55 = *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupTapGestureActionBlock + 8);
    v56 = v83;
    *v53 = sub_100175A84;
    v53[1] = v56;

    sub_10001F63C(v54, v55);
    sub_1003528B8();
    v57 = v79;
    AppEventDetailPage.mediaOverlayStyle.getter();
    v58 = OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v59 = v78;
    v60 = v80;
    v61 = v82;
    (*(v78 + 16))(v80, v25 + v58, v82);
    swift_beginAccess();
    (*(v59 + 24))(v25 + v58, v57, v61);
    swift_endAccess();
    sub_1003530A8(v60);
    v62 = *(v59 + 8);
    v62(v60, v61);
    v62(v57, v61);
    v63 = v81;
    AppEventDetailPage.mediaOverlayStyle.getter();
    v64 = MediaOverlayStyle.userInterfaceStyle.getter();
    v62(v63, v61);
    v65 = *(*(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
    if (v64 == 2)
    {
      v66 = objc_opt_self();
      v67 = v65;
      v68 = [v66 whiteColor];
    }

    else
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v69 = v65;
      v68 = static UIColor.appTint.getter();
    }

    v70 = v68;
    [v65 setTintColor:v68];

    *(v25 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_includeBorderInDarkMode) = AppEventDetailPage.includeBorderInDarkMode.getter() & 1;
    sub_100351E5C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001750B8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2);
    type metadata accessor for AppEventDetailPagePresenter();
    sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
    MetricsPagePresenter.observe(lifecycleEvent:)();
    (*(v3 + 8))(v5, v2);
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100175248(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2);
    type metadata accessor for AppEventDetailPagePresenter();
    sub_100175A94(&qword_100976E60, 255, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
    MetricsPagePresenter.observe(lifecycleEvent:)();
    (*(v3 + 8))(v5, v2);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    aBlock[4] = sub_100175ADC;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B6760;
    v9 = _Block_copy(aBlock);
    v10 = v7;

    [v10 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_100175470(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_objectGraph;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
  }

  v10 = *(v1 + v6);

  sub_1005F9AF4(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

CGFloat sub_1001758B8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_100175920()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

id sub_100175960(char a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_isCollapsing) = a1;
  *(*(v1 + OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_pageView) + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_isCollapsing) = a1;
  return sub_100352F9C();
}

double sub_1001759A8(__n128 a1)
{
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  return result;
}

uint64_t sub_100175A94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100175B10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FontSource();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v29 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v12 + 8))(v14, v11);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v15 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for StaticDimension();
    v18 = v17;
    v19 = qword_1009D2430;
    goto LABEL_9;
  }

  if (v15 == enum case for Shelf.ContentType.singleColumnList(_:) || v15 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    if (qword_10096EC98 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v15 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    if (qword_10096EC98 == -1)
    {
LABEL_19:
      v24 = qword_1009D32B0;
      *v6 = qword_1009D32B0;
      v26 = v30;
      v25 = v31;
      (*(v30 + 104))(v6, enum case for FontSource.textStyle(_:), v31);
      a2[3] = type metadata accessor for StaticDimension();
      a2[4] = &protocol witness table for StaticDimension;
      sub_1000056E0(a2);
      v32[3] = v25;
      v32[4] = &protocol witness table for FontSource;
      v27 = sub_1000056E0(v32);
      (*(v26 + 16))(v27, v6, v25);
      v28 = v24;
      StaticDimension.init(_:scaledLike:)();
      return (*(v26 + 8))(v6, v25);
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  if (v15 == enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    if (qword_10096E6D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for StaticDimension();
    v18 = v17;
    v19 = qword_1009D2490;
LABEL_9:
    v20 = sub_1000056A8(v17, v19);
    a2[3] = v18;
    a2[4] = &protocol witness table for StaticDimension;
    v21 = sub_1000056E0(a2);
    return (*(*(v18 - 8) + 16))(v21, v20, v18);
  }

  sub_100753DA8(v29, a2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10017604C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v122 = a2;
  v116 = type metadata accessor for FontSource();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = (&v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v4 - 8);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v99 - v7;
  __chkstk_darwin(v8);
  v10 = &v99 - v9;
  __chkstk_darwin(v11);
  v109 = &v99 - v12;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v117 = type metadata accessor for Shelf.ContentType();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v105 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v106 = &v99 - v21;
  __chkstk_darwin(v22);
  v103 = &v99 - v23;
  __chkstk_darwin(v24);
  v104 = &v99 - v25;
  __chkstk_darwin(v26);
  v110 = &v99 - v27;
  __chkstk_darwin(v28);
  v111 = &v99 - v29;
  __chkstk_darwin(v30);
  v118 = &v99 - v31;
  v32 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v107 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v99 - v36;
  __chkstk_darwin(v38);
  v113 = &v99 - v39;
  __chkstk_darwin(v40);
  v42 = &v99 - v41;
  __chkstk_darwin(v43);
  v45 = &v99 - v44;
  v121 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v46 = *(v33 + 8);
  v120 = v32;
  v46(v45, v32);
  if (!*(v123 + 16))
  {

    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    goto LABEL_10;
  }

  v102 = v46;
  sub_10002C0AC(v123 + 32, &v124);

  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&unk_100980530, &qword_1007B69B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_10;
  }

  if (!*(&v128 + 1))
  {
LABEL_10:
    result = sub_10002B894(&v127, &unk_100992FE0, &qword_1007BBDD0);
LABEL_11:
    v55 = v122;
    v122[3] = &type metadata for Double;
    v55[4] = &protocol witness table for Double;
    *v55 = 0;
    return result;
  }

  sub_100005A38(&v127, v130);
  sub_10002A400(v130, v130[3]);
  if ((SearchAdOpportunityProviding.isSearchAd.getter() & 1) == 0)
  {
    result = sub_100007000(v130);
    goto LABEL_11;
  }

  v100 = v37;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v47 = v118;
  v48 = v120;
  ReadOnlyLens.subscript.getter();

  v49 = v42;
  v50 = v48;
  v101 = v33 + 8;
  v102(v49, v48);
  v51 = v119;
  v52 = v117;
  v53 = (*(v119 + 88))(v47, v117);
  if (v53 != enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
  {
    v56 = (v33 + 48);
    if (v53 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v57 = v109;
      ShelfLayoutContext.surroundingShelves.getter();
      sub_10002B894(v10, &unk_10098FFB0, qword_1007B3890);
      if ((*v56)(v57, 1, v50) == 1)
      {
        sub_10002B894(v57, &unk_10098FFB0, qword_1007B3890);
        goto LABEL_31;
      }

      v58 = v100;
      (*(v33 + 32))(v100, v57, v50);
      swift_getKeyPath();
      v67 = v104;
      ReadOnlyLens.subscript.getter();

      v68 = v103;
      (*(v51 + 104))(v103, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
      sub_10017720C();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v127 == v124)
      {
        v69 = *(v51 + 8);
        v69(v68, v52);
        v69(v67, v52);
      }

      else
      {
        v74 = v51;
        v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v76 = *(v74 + 8);
        v76(v68, v52);
        v76(v67, v52);
        v50 = v120;

        if ((v75 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      if ((v127 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v102(v58, v50);
      goto LABEL_31;
    }

    v62 = v112;
    v63 = v108;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v63, &unk_10098FFB0, qword_1007B3890);
    if ((*v56)(v62, 1, v50) == 1)
    {
      sub_10002B894(v62, &unk_10098FFB0, qword_1007B3890);
LABEL_40:
      v94 = v114;
      *v114 = UIFontTextStyleBody;
      v95 = v115;
      v96 = v116;
      (*(v115 + 104))(v94, enum case for FontSource.textStyle(_:), v116);
      v125 = type metadata accessor for StaticDimension();
      v126 = &protocol witness table for StaticDimension;
      sub_1000056E0(&v124);
      *(&v128 + 1) = v96;
      v129 = &protocol witness table for FontSource;
      v97 = sub_1000056E0(&v127);
      (*(v95 + 16))(v97, v94, v96);
      v98 = UIFontTextStyleBody;
      StaticDimension.init(_:scaledLike:)();
      (*(v95 + 8))(v94, v96);
      goto LABEL_41;
    }

    v70 = v107;
    (*(v33 + 32))(v107, v62, v50);
    swift_getKeyPath();
    v71 = v106;
    ReadOnlyLens.subscript.getter();

    v72 = v105;
    (*(v51 + 104))(v105, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_10017720C();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v127 == v124)
    {
      v73 = *(v51 + 8);
      v73(v72, v52);
      v73(v71, v52);
    }

    else
    {
      v82 = v51;
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v84 = *(v82 + 8);
      v84(v72, v52);
      v84(v71, v52);

      if ((v83 & 1) == 0)
      {
        v86 = v70;
        v87 = v120;
LABEL_39:
        v102(v86, v87);
        goto LABEL_40;
      }
    }

    swift_getKeyPath();
    v85 = v120;
    ReadOnlyLens.subscript.getter();

    if ((v127 & 1) == 0)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = 0x4020000000000000;
      v102(v70, v85);
LABEL_41:
      sub_100005A38(&v124, &v127);
      (*(v119 + 8))(v118, v52);
      goto LABEL_42;
    }

    v86 = v70;
    v87 = v85;
    goto LABEL_39;
  }

  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v15, &unk_10098FFB0, qword_1007B3890);
  if ((*(v33 + 48))(v18, 1, v50) != 1)
  {
    v58 = v113;
    (*(v33 + 32))(v113, v18, v50);
    swift_getKeyPath();
    v59 = v111;
    ReadOnlyLens.subscript.getter();

    v60 = v110;
    (*(v51 + 104))(v110, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_10017720C();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v127 == v124)
    {
      v61 = *(v51 + 8);
      v61(v60, v52);
      v61(v59, v52);

      goto LABEL_21;
    }

    v64 = v51;
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v66 = *(v64 + 8);
    v66(v60, v52);
    v66(v59, v52);
    v50 = v120;

    if (v65)
    {
LABEL_21:
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      if (v127)
      {
        goto LABEL_30;
      }

LABEL_36:
      v88 = v114;
      *v114 = UIFontTextStyleBody;
      v89 = v50;
      v90 = v115;
      v91 = v116;
      (*(v115 + 104))(v88, enum case for FontSource.textStyle(_:), v116);
      v125 = type metadata accessor for StaticDimension();
      v126 = &protocol witness table for StaticDimension;
      sub_1000056E0(&v124);
      *(&v128 + 1) = v91;
      v129 = &protocol witness table for FontSource;
      v92 = sub_1000056E0(&v127);
      (*(v90 + 16))(v92, v88, v91);
      v93 = UIFontTextStyleBody;
      StaticDimension.init(_:scaledLike:)();
      (*(v90 + 8))(v88, v91);
      v102(v58, v89);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  sub_10002B894(v18, &unk_10098FFB0, qword_1007B3890);
LABEL_31:
  v77 = v114;
  *v114 = UIFontTextStyleBody;
  v78 = v115;
  v79 = v116;
  (*(v115 + 104))(v77, enum case for FontSource.textStyle(_:), v116);
  v125 = type metadata accessor for StaticDimension();
  v126 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v124);
  *(&v128 + 1) = v79;
  v129 = &protocol witness table for FontSource;
  v80 = sub_1000056E0(&v127);
  (*(v78 + 16))(v80, v77, v79);
  v81 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v78 + 8))(v77, v79);
LABEL_32:
  sub_100005A38(&v124, &v127);
LABEL_42:
  sub_100005A38(&v127, v122);
  return sub_100007000(v130);
}

unint64_t sub_10017720C()
{
  result = qword_100971EE8;
  if (!qword_100971EE8)
  {
    type metadata accessor for Shelf.ContentType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100971EE8);
  }

  return result;
}

void sub_100177268(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v36 = a3;
  v4 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v4 - 8);
  v39 = &v35 - v5;
  v6 = type metadata accessor for Date();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AdamId();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCardTriggerIdentifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v45);
  sub_10002A400(a1, a1[3]);
  v15 = v6;
  v16 = v37;
  dispatch thunk of TodayCardTrigger.identifier.getter();
  sub_1001795EC(&qword_100976EB0, &type metadata accessor for TodayCardTriggerIdentifier, &protocol conformance descriptor for TodayCardTriggerIdentifier);
  *&v42 = dispatch thunk of CustomStringConvertible.description.getter();
  *(&v42 + 1) = v17;
  (*(v12 + 8))(v14, v11);
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  sub_10002A400(a1, a1[3]);
  dispatch thunk of TodayCardTrigger.adamId.getter();
  v19 = AdamId.stringValue.getter();
  v21 = v20;
  (*(v8 + 8))(v10, v38);
  v22 = v39;
  v23._countAndFlagsBits = v19;
  v23._object = v21;
  String.append(_:)(v23);
  v24 = v40;

  v43 = v42;
  sub_100031660(v24, v22, &qword_100979710, &qword_1007BB7C0);
  if ((*(v16 + 48))(v22, 1, v15) == 1)
  {
    sub_10002B894(v22, &qword_100979710, &qword_1007BB7C0);
    sub_10002B894(v24, &qword_100979710, &qword_1007BB7C0);
    v25 = 0xED00002E74657920;
    v26 = 0x6E65657320746F4ELL;
LABEL_8:
    *&v44 = v26;
    *(&v44 + 1) = v25;
    v32 = v45[1];
    v33 = v36;
    *(v36 + 32) = v45[0];
    *(v33 + 48) = v32;
    *(v33 + 64) = v46;
    v34 = v44;
    *v33 = v43;
    *(v33 + 16) = v34;
    sub_100007000(a1);
    return;
  }

  v27 = v35;
  (*(v16 + 32))(v35, v22, v15);
  Date.timeIntervalSinceNow.getter();
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = -v28;
  if (!__OFSUB__(0, v28))
  {
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    *&v42 = 0x206E656553;
    *(&v42 + 1) = 0xE500000000000000;
    v41 = v29;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x73646E6F63657320;
    v31._object = 0xED00002E6F676120;
    String.append(_:)(v31);
    v25 = *(&v42 + 1);
    v26 = v42;
    sub_10002B894(v24, &qword_100979710, &qword_1007BB7C0);
    (*(v16 + 8))(v27, v15);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_100177794(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = type metadata accessor for TodayCardTriggerIdentifier();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v12 - v10;
  sub_10002C0AC(a1, v15);
  sub_10002A400(a2, a2[3]);
  sub_10002A400(a1, a1[3]);
  dispatch thunk of TodayCardTrigger.identifier.getter();
  dispatch thunk of TriggerPersistantStore.date(for:)();
  (*(v6 + 8))(v8, v13);
  sub_100177268(v15, v11, v14);
}

id sub_100177934(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_triggerController] = a1;

  *&v1[OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections] = sub_100178F40(v4);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithStyle:", 1);
  v6 = [v5 navigationItem];
  v7 = String._bridgeToObjectiveC()();
  [v6 setTitle:v7];

  v8 = [v5 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  v9 = [objc_allocWithZone(UIRefreshControl) init];
  [v5 setRefreshControl:v9];

  v10 = [v5 refreshControl];
  if (v10)
  {
    [v10 addTarget:v5 action:"refreshContent" forControlEvents:4096];
  }

  return v5;
}

void sub_100177B30(__n128 a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections] = sub_100178F40(*&v1[OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_triggerController]);

  v2 = [v1 tableView];
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];

    v4 = [v1 refreshControl];
    [v4 endRefreshing];
  }

  else
  {
    __break(1u);
  }
}

void sub_100177C34(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  sub_10002C0AC(a1, v17);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_100005A38(v17, v8 + 24);
  *(v8 + 64) = v4;
  v9 = v2;
  v10 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100179960;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100768994;
  aBlock[3] = &unk_1008B6940;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction:v13];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];

  [v7 addAction:v15];
  [v9 presentViewController:v7 animated:1 completion:0];
}

void sub_100177EA4(void *a1, char a2, __n128 a3)
{
  v6 = type metadata accessor for TodayCardTriggerIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_triggerController))
  {
    TodayCardTriggerController.persistantStore.getter();
    sub_100005A38(v12, v13);
    if (a2)
    {
      sub_10002A400(v13, v14);
      sub_10002849C(&qword_100976ED0, &qword_1007BBF88);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1007B10D0;
      sub_10002A400(a1, a1[3]);
      dispatch thunk of TodayCardTrigger.identifier.getter();
      TriggerPersistantStore.markTriggerIdsSeen(_:)(v10);
    }

    else
    {
      sub_10002A400(a1, a1[3]);
      dispatch thunk of TodayCardTrigger.clearActivationContext()();
      sub_10002A400(v13, v14);
      sub_10002A400(a1, a1[3]);
      dispatch thunk of TodayCardTrigger.identifier.getter();
      dispatch thunk of TriggerPersistantStore.remove(_:)();
      (*(v7 + 8))(v9, v6);
    }

    v11 = [objc_opt_self() sharedCoordinator];
    [v11 simulateStorefrontChange];

    sub_100007000(v13);
  }
}

uint64_t sub_100178828(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100178840(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100178864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1001788AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100178910()
{
  result = qword_100976EA8;
  if (!qword_100976EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976EA8);
  }

  return result;
}

void sub_100178964(uint64_t a1)
{
  v65 = type metadata accessor for TriggerBuilderError();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TodayCardTriggerIdentifier();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10002849C(&qword_100976EB8, &qword_1007BBF78);
  __chkstk_darwin(v61);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_10014430C(0, v9, 0);
    v10 = v74;
    v11 = a1 + 64;
    v12 = _HashTable.startBucket.getter();
    v13 = 0;
    v14 = *(a1 + 36);
    v56 = v2 + 16;
    v57 = v4 + 16;
    v54 = v2 + 32;
    v55 = v4 + 32;
    v58 = v2;
    v53 = v2 + 8;
    v52 = v4 + 8;
    v47 = a1 + 72;
    v73 = v4;
    v48 = v9;
    v50 = a1 + 64;
    v49 = v14;
    v51 = a1;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v67 = 1 << v12;
      v68 = v12 >> 6;
      v66 = v13;
      v15 = v61;
      v16 = *(v61 + 48);
      v17 = *(a1 + 48) + *(v4 + 72) * v12;
      v70 = *(v4 + 16);
      v18 = v59;
      v19 = v63;
      v70(v59, v17, v63);
      v20 = v58;
      v21 = *(a1 + 56) + *(v58 + 72) * v12;
      v69 = *(v58 + 16);
      v71 = v12;
      v22 = v65;
      v69(&v18[v16], v21, v65);
      v23 = *(v73 + 32);
      v72 = v10;
      v24 = v60;
      v23(v60, v18, v19);
      v25 = *(v15 + 48);
      (*(v20 + 32))(&v24[v25], &v18[v16], v22);
      v26 = v62;
      v70(v62, v24, v19);
      v27 = v64;
      v69(v64, &v24[v25], v22);
      v70 = TodayCardTriggerIdentifier.rawValue.getter();
      v29 = v28;
      sub_1001795EC(&qword_100976EC0, &type metadata accessor for TriggerBuilderError, &protocol conformance descriptor for TriggerBuilderError);
      v30 = Error.localizedDescription.getter();
      v32 = v31;
      v33 = *(v20 + 8);
      v4 = v73;
      v33(v27, v22);
      (*(v4 + 8))(v26, v19);
      v34 = v24;
      v10 = v72;
      sub_10002B894(v34, &qword_100976EB8, &qword_1007BBF78);
      v74 = v10;
      v36 = v10[2];
      v35 = v10[3];
      if (v36 >= v35 >> 1)
      {
        sub_10014430C((v35 > 1), v36 + 1, 1);
        v10 = v74;
      }

      v10[2] = v36 + 1;
      v37 = &v10[9 * v36];
      v38 = v71;
      v37[4] = v70;
      v37[5] = v29;
      v37[6] = v30;
      v37[7] = v32;
      *(v37 + 4) = 0u;
      *(v37 + 5) = 0u;
      v37[12] = 0;
      a1 = v51;
      v12 = 1 << *(v51 + 32);
      if (v38 >= v12)
      {
        goto LABEL_24;
      }

      v11 = v50;
      v39 = *(v50 + 8 * v68);
      if ((v39 & v67) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v14) = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_26;
      }

      v40 = v39 & (-2 << (v38 & 0x3F));
      if (v40)
      {
        v12 = __clz(__rbit64(v40)) | v38 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v68 << 6;
        v42 = v68 + 1;
        v43 = (v47 + 8 * v68);
        while (v42 < (v12 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            sub_1000CAE24(v38, v49, 0);
            v12 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        sub_1000CAE24(v38, v49, 0);
      }

LABEL_4:
      v13 = v66 + 1;
      if (v66 + 1 == v48)
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

void *sub_100178F40(uint64_t a1)
{
  if (!a1)
  {
    sub_10002849C(&qword_10096FCB0, &qword_1007B12F8);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_1007B10D0;
    v10[4] = 0xD000000000000015;
    v10[5] = 0x8000000100803FF0;
    v10[6] = _swiftEmptyArrayStorage;
    *(v10 + 56) = 2;
    return v10;
  }

  dispatch thunk of TodayCardTriggerController.snapshot()();
  v1 = v45;
  v2 = v46;
  v3 = v47;
  v4 = v48;
  v5 = v49;
  isUniquelyReferenced_nonNull_native = TodayCardTriggerController.persistantStore.getter();
  v7 = *(v44 + 16);
  v42 = v44;
  v43 = v45;
  if (v7)
  {
    sub_100178964(v44);
    v9 = v8;
    isUniquelyReferenced_nonNull_native = sub_100034774(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = isUniquelyReferenced_nonNull_native;
    v12 = *(isUniquelyReferenced_nonNull_native + 16);
    v11 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v12 >= v11 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774((v11 > 1), v12 + 1, 1, isUniquelyReferenced_nonNull_native);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v12 + 1;
    v13 = &v10[4 * v12];
    v13[4] = 0xD000000000000013;
    v13[5] = 0x8000000100804010;
    v13[6] = v9;
    *(v13 + 56) = 2;
    v1 = v43;
    if (*(v43 + 16))
    {
LABEL_6:
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v41 = &v44;
      sub_1000B4238(sub_1001795CC, v40, v1);
      v15 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100034774(0, v10[2] + 1, 1, v10);
        v10 = isUniquelyReferenced_nonNull_native;
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100034774((v16 > 1), v17 + 1, 1, v10);
        v10 = isUniquelyReferenced_nonNull_native;
      }

      v10[2] = v17 + 1;
      v18 = &v10[4 * v17];
      v18[4] = 0xD00000000000001DLL;
      v18[5] = 0x8000000100804030;
      v18[6] = v15;
      *(v18 + 56) = 1;
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
    if (*(v45 + 16))
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 16))
  {
LABEL_15:
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_1000B4238(sub_100179990, v40, v2);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v22 = v10[2];
    v21 = v10[3];
    if (v22 >= v21 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774((v21 > 1), v22 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v22 + 1;
    v23 = &v10[4 * v22];
    v23[4] = 0xD00000000000001BLL;
    v23[5] = 0x8000000100804050;
    v23[6] = v20;
    *(v23 + 56) = 1;
  }

LABEL_20:
  if (*(v3 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_1000B4238(sub_100179990, v40, v3);
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v27 = v10[2];
    v26 = v10[3];
    if (v27 >= v26 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774((v26 > 1), v27 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v27 + 1;
    v28 = &v10[4 * v27];
    v28[4] = 0xD00000000000001CLL;
    v28[5] = 0x8000000100804070;
    v28[6] = v25;
    *(v28 + 56) = 0;
  }

  if (*(v4 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_1000B4238(sub_100179990, v40, v4);
    v30 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774(0, v10[2] + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v32 = v10[2];
    v31 = v10[3];
    if (v32 >= v31 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_100034774((v31 > 1), v32 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v10[2] = v32 + 1;
    v33 = &v10[4 * v32];
    v33[4] = 0xD000000000000020;
    v33[5] = 0x8000000100804090;
    v33[6] = v30;
    *(v33 + 56) = 0;
  }

  if (*(v5 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v41 = &v44;
    sub_1000B4238(sub_100179990, v40, v5);
    v35 = v34;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100034774(0, v10[2] + 1, 1, v10);
    }

    v37 = v10[2];
    v36 = v10[3];
    if (v37 >= v36 >> 1)
    {
      v10 = sub_100034774((v36 > 1), v37 + 1, 1, v10);
    }

    v10[2] = v37 + 1;
    v38 = &v10[4 * v37];
    v38[4] = 0xD000000000000017;
    v38[5] = 0x80000001008040C0;
    v38[6] = v35;
    *(v38 + 56) = 0;
    sub_100007000(&v44);
  }

  else
  {
    sub_100007000(&v44);
  }

  return v10;
}

uint64_t sub_1001795EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100179634(void *a1)
{
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4 + 32 * result;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result < *(v6 + 16))
  {
    sub_1001798F8(v6 + 72 * result + 32, &v15);
    v8 = [a1 textLabel];
    if (v8)
    {
      v9 = v8;
      v10 = String._bridgeToObjectiveC()();
      [v9 setText:v10];
    }

    v11 = [a1 detailTextLabel];
    if (v11)
    {
      v12 = v11;
      v13 = String._bridgeToObjectiveC()();
      [v12 setText:v13];

      if (v7 == 2)
      {
LABEL_9:
        v14 = 0;
LABEL_12:
        [a1 setAccessoryType:v14];
        return sub_100179930(&v15);
      }
    }

    else
    {

      if (v7 == 2)
      {
        goto LABEL_9;
      }
    }

    v14 = 1;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1001797D0(uint64_t a1)
{
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8AppStore35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v3 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3 + 32 * result;
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v5 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1001798F8(v5 + 72 * result + 32, v10);

  if (v6 != 2)
  {
    sub_100031660(&v11, &v7, &qword_100976EC8, &qword_1007BBF80);
    if (!v8)
    {
      sub_100179930(v10);
      return sub_10002B894(&v7, &qword_100976EC8, &qword_1007BBF80);
    }

    sub_100005A38(&v7, v9);
    sub_100177C34(v9, v6 & 1);
    sub_100007000(v9);
  }

  return sub_100179930(v10);
}

void *sub_1001799F4(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shelf.ContentsMetadata();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for ProductMediaMetadata();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for AspectRatio();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v56 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v46 - v22;
  type metadata accessor for ProductMediaItem();
  sub_10017A174(&qword_100972AC0, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v61)
  {
    v52 = a1;
    if (ProductMediaItem.screenshot.getter())
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v24 = *(v19 + 56);
      v24(v14, 0, 1, v18);
      (*(v19 + 32))(v17, v14, v18);
      v24(v17, 0, 1, v18);
      v25 = (*(v19 + 48))(v17, 1, v18);
    }

    else
    {
      v47 = v3;
      v48 = v2;
      v26 = *(v19 + 56);
      v27 = 1;
      v26(v14, 1, 1, v18);
      if (ProductMediaItem.video.getter())
      {
        Video.preview.getter();

        Artwork.size.getter();
        AspectRatio.init(_:_:)();

        v27 = 0;
      }

      v26(v17, v27, 1, v18);
      v28 = *(v19 + 48);
      if (v28(v14, 1, v18) != 1)
      {
        sub_100072810(v14);
      }

      v3 = v47;
      v2 = v48;
      v25 = v28(v17, 1, v18);
    }

    if (v25 == 1)
    {

      return sub_100072810(v17);
    }

    (*(v19 + 32))(v60, v17, v18);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    v29 = v54;
    v30 = v55;
    ReadOnlyLens.subscript.getter();

    (*(v53 + 8))(v9, v29);
    v32 = v57;
    v31 = v58;
    v33 = v3;
    if ((*(v57 + 88))(v30, v58) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v32 + 96))(v30, v31);
      v35 = v49;
      v34 = v50;
      v36 = v30;
      v37 = v51;
      (*(v50 + 32))(v49, v36, v51);
      v38 = ProductMediaMetadata.hasPortraitMedia.getter();
      v39 = v56;
      if (v38)
      {
        v40 = v60;
        v41 = AspectRatio.isPortrait.getter();
        v42 = v34;
        v43 = v41;
        (*(v42 + 8))(v35, v37);
        if ((v43 & 1) == 0 && (AspectRatio.isPortrait.getter() & 1) == 0)
        {
          AspectRatio.inverted.getter();
LABEL_21:
          swift_getKeyPath();
          v44 = v59;
          ItemLayoutContext.subscript.getter();

          PageGrid.columnWidth.getter();
          (*(v33 + 8))(v44, v2);
          AspectRatio.height(fromWidth:)();

          v45 = *(v19 + 8);
          v45(v39, v18);
          return (v45)(v40, v18);
        }

LABEL_20:
        (*(v19 + 16))(v39, v40, v18);
        goto LABEL_21;
      }

      (*(v34 + 8))(v35, v37);
    }

    else
    {
      (*(v32 + 8))(v30, v31);
      v39 = v56;
    }

    v40 = v60;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10017A174(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10017A1BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v15 setClipsToBounds:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView;
  v21 = *(*&v15[OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v21;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23 = *(v11 + 8);
  v23(v13, v10);
  v24 = *(*&v15[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v24;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v26 = *(*&v15[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = v26;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v28 = *(*&v15[v20] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v28;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v30 = *&v15[v20];
  v31 = *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v31)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v31;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10003D444(&v42);
    sub_10003D444(&v44);
    UIView.setAutomationSemantics(_:)();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v33 = *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v33)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v33;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10003D444(&v42);
    sub_10003D444(&v44);
    UIView.setAutomationSemantics(_:)();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v35 = *(v30 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v35;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v37 = *&v15[v20];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v37;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v23(v13, v10);
  v39 = [v15 contentView];
  [v39 setClipsToBounds:0];

  v40 = [v15 contentView];
  [v40 addSubview:*&v15[v20]];

  return v15;
}

double sub_10017AA74()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  return *v1;
}

void sub_10017AAD0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore38TodayCardSmallLockupCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.isImageHidden.setter();

  v6 = *(v3 + v4);
  type metadata accessor for ArtworkView();
  sub_10017AC10(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10017ABB8(uint64_t a1, uint64_t a2)
{
  result = sub_10017AC10(&qword_100976F08, a2, type metadata accessor for TodayCardSmallLockupCollectionViewCell, &unk_1007BC0A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10017AC10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_10017ACF4(void *a1)
{
  v13 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v13)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_100481F04(v3, a1, 1);
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
      swift_beginAccess();
      v7 = *(v1 + v6);
      v8 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v6) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1000340DC(0, *(v7 + 2) + 1, 1, v7);
        *(v1 + v6) = v7;
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_1000340DC((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[24 * v11];
      *(v12 + 4) = sub_10017BC38;
      *(v12 + 5) = v5;
      v12[48] = 2;
      *(v1 + v6) = v7;
      swift_endAccess();
    }

    else
    {
    }
  }
}

void sub_10017AEAC(void *a1)
{
  v2 = v1;
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchTime();
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v77 - v10;
  v11 = [a1 viewControllerForKey:{UITransitionContextToViewControllerKey, sub_1005F3D78(0)}];
  if (v11)
  {
    v12 = v11;
    [a1 finalFrameForViewController:v11];
  }

  else
  {
    v12 = [a1 containerView];
    [v12 bounds];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = &v1[OBJC_IVAR____TtC8AppStore23BouncyFromRectAnimation_fromRect];
  v22 = v1[OBJC_IVAR____TtC8AppStore23BouncyFromRectAnimation_fromRect + 32];
  if (v22)
  {
    v96.origin.x = v17;
    v96.origin.y = v18;
    v96.size.width = v19;
    v96.size.height = v20;
    v23 = CGRectGetWidth(v96) * 0.2;
    v97.origin.x = v17;
    v97.origin.y = v18;
    v97.size.width = v19;
    v97.size.height = v20;
    v24 = CGRectGetHeight(v97) * 0.2;
    v98.origin.x = v17;
    v98.origin.y = v18;
    v98.size.width = v19;
    v98.size.height = v20;
    v99 = CGRectInset(v98, v23, v24);
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
  }

  else
  {
    v25 = v21[2];
    height = v21[3];
    width = v25;
    v26 = *v21;
    y = v21[1];
    x = v26;
  }

  v27 = x;
  v100.origin.x = x;
  v28 = y;
  v100.origin.y = y;
  v29 = width;
  v100.size.width = width;
  v30 = height;
  v100.size.height = height;
  v83 = CGRectGetWidth(v100);
  v101.origin.x = v17;
  v101.origin.y = v18;
  v101.size.width = v19;
  v101.size.height = v20;
  v82 = CGRectGetWidth(v101);
  v102.origin.x = v27;
  v102.origin.y = v28;
  v102.size.width = v29;
  v102.size.height = v30;
  v80 = CGRectGetHeight(v102);
  v103.origin.x = v17;
  v103.origin.y = v18;
  v103.size.width = v19;
  v103.size.height = v20;
  v79 = CGRectGetHeight(v103);
  v104.origin.x = v27;
  x = v27;
  v104.origin.y = v28;
  v104.size.width = v29;
  width = v29;
  v104.size.height = v30;
  height = v30;
  MidX = CGRectGetMidX(v104);
  v105.origin.x = v17;
  v105.origin.y = v18;
  v105.size.width = v19;
  v105.size.height = v20;
  v77 = CGRectGetMidX(v105);
  v106.origin.x = v27;
  v106.origin.y = v28;
  v31 = v28;
  v106.size.width = v29;
  v106.size.height = v30;
  MidY = CGRectGetMidY(v106);
  v107.origin.x = v17;
  v107.origin.y = v18;
  v107.size.width = v19;
  v107.size.height = v20;
  v33 = CGRectGetMidY(v107);
  v34 = sqrt((v83 - v82) * (v83 - v82) + (v80 - v79) * (v80 - v79));
  v35 = sqrt((MidX - v77) * (MidX - v77) + (MidY - v33) * (MidY - v33));
  if (v34 > v35)
  {
    v35 = v34;
  }

  v80 = v35 / 0.7 / v35;
  v108.origin.x = v17;
  v108.origin.y = v18;
  v108.size.width = v19;
  v108.size.height = v20;
  v36 = CGRectGetMidX(v108);
  v37 = x;
  v109.origin.x = x;
  v109.origin.y = v31;
  v109.size.width = width;
  v38 = height;
  v109.size.height = height;
  v39 = v36 - CGRectGetMidX(v109);
  v83 = v17;
  v110.origin.x = v17;
  v40 = v18;
  v110.origin.y = v18;
  v79 = v19;
  v110.size.width = v19;
  v82 = v20;
  v110.size.height = v20;
  MinY = CGRectGetMinY(v110);
  v111.origin.x = v37;
  v111.origin.y = v31;
  v111.size.width = width;
  v111.size.height = v38;
  v42 = MinY - CGRectGetMinY(v111);
  v43 = [a1 viewForKey:UITransitionContextToViewKey];
  v44 = v43;
  if (v43)
  {
    v45 = y + v42;
    v46 = x + v39;
    v47 = v43;
    v48 = [a1 containerView];
    [v48 addSubview:v47];

    [v47 setFrame:{v46, v45, width, height}];
    if (v22)
    {
      [v47 setAlpha:0.0];
    }
  }

  [v44 layoutIfNeeded];
  CATransform3DMakeTranslation(&aBlock, -v39, -v42, 0.0);
  v49 = String._bridgeToObjectiveC()();
  v50 = [objc_opt_self() animationWithKeyPath:v49];

  v51 = objc_opt_self();
  v52 = v50;
  v53 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setFromValue:v53];

  v54 = *&CATransform3DIdentity.m33;
  *&aBlock.m31 = *&CATransform3DIdentity.m31;
  *&aBlock.m33 = v54;
  v55 = *&CATransform3DIdentity.m43;
  *&aBlock.m41 = *&CATransform3DIdentity.m41;
  *&aBlock.m43 = v55;
  v56 = *&CATransform3DIdentity.m13;
  *&aBlock.m11 = *&CATransform3DIdentity.m11;
  *&aBlock.m13 = v56;
  v57 = *&CATransform3DIdentity.m23;
  *&aBlock.m21 = *&CATransform3DIdentity.m21;
  *&aBlock.m23 = v57;
  v58 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setToValue:v58];

  [v52 setDamping:16.0];
  [v52 setMass:1.0];
  [v52 setStiffness:150.0];
  [v52 setInitialVelocity:v80];
  v59 = v52;
  [v59 settlingDuration];
  [v59 setDuration:?];
  [v59 setFillMode:kCAFillModeBackwards];

  width = *&v44;
  if (*&v44 != 0.0)
  {
    v60 = [*&width layer];
    v61 = String._bridgeToObjectiveC()();
    [v60 addAnimation:v59 forKey:v61];
  }

  [v59 settlingDuration];
  sub_1000076C0();
  v62 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v63 = v81;
  + infix(_:_:)();
  height = *(v84 + 8);
  (*&height)(v8, v91);
  v64 = swift_allocObject();
  *(v64 + 16) = a1;
  *(v64 + 24) = v2;
  *&aBlock.m21 = sub_10017BBF0;
  *&aBlock.m22 = v64;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100007A08;
  *&aBlock.m14 = &unk_1008B69B8;
  v65 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  x = COERCE_DOUBLE(v2);

  static DispatchQoS.unspecified.getter();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  v66 = v85;
  v67 = v89;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v65);

  (*(v88 + 8))(v66, v67);
  (*(v86 + 8))(v6, v87);
  (*&height)(v63, v91);
  v68 = objc_opt_self();
  v69 = swift_allocObject();
  v70 = x;
  v71 = width;
  *(v69 + 16) = x;
  *(v69 + 24) = v71;
  *(v69 + 32) = v83;
  *(v69 + 40) = v40;
  v72 = v82;
  *(v69 + 48) = v79;
  *(v69 + 56) = v72;
  *&aBlock.m21 = sub_10017BC28;
  *&aBlock.m22 = v69;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100007A08;
  *&aBlock.m14 = &unk_1008B6A08;
  v73 = _Block_copy(&aBlock);
  v74 = *&v71;
  v75 = *&v70;

  *&aBlock.m21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  aBlock.m22 = 0.0;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100504C5C;
  *&aBlock.m14 = &unk_1008B6A30;
  v76 = _Block_copy(&aBlock);
  [v68 animateWithDuration:129 delay:v73 options:v76 animations:0.35 completion:0.0];

  _Block_release(v76);
  _Block_release(v73);
}

id sub_10017BAC4(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_1005F3D78(1);
  result = [a6 setFrame:{a1, a2, a3, a4}];
  if (a6)
  {

    return [a6 setAlpha:1.0];
  }

  return result;
}

id sub_10017BB98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyFromRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10017BC38()
{
  v1 = [*(v0 + 16) tabBar];
  [v1 setHidden:0];
}

void sub_10017BCA4()
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
    v7 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;

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
        v15 = _CocoaArrayWrapper.endIndex.getter();
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
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
        ArtworkView.image.setter();
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

void sub_10017BE94(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
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
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    ArtworkView.image.setter();
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_10017BF98()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10017BFD8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = type metadata accessor for Shadow();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v7 = &type metadata for AppEventCardLayout;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &type metadata for AppEventCardLayout;
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
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v39 = v9;
    swift_beginAccess();
    sub_10002849C(&qword_100977078, qword_1007BC1F8);
    ReusePool.recycle(_:)();
    swift_endAccess();
  }

  while (v6 != v8);

  v2 = v34;
  v4 = v35;
  v7 = &type metadata for AppEventCardLayout;
LABEL_10:
  *&v1[v4] = _swiftEmptyArrayStorage;

  v11 = *&v1[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration];
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
    Description = v7[247].Description;
    v34 = v2 + 2;
    v35 = Description;
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
        sub_10002849C(&qword_100977078, qword_1007BC1F8);
        ReusePool.dequeue(or:)();
        swift_endAccess();
        v16 = v39;
        if (*(v11 + 24) == 3)
        {
          v17 = qword_1009CFE40;
          if (qword_10096DAA0 != -1)
          {
            swift_once();
            v17 = qword_1009CFE40;
          }
        }

        else
        {
          v17 = qword_1009CFE28;
          if (qword_10096DA98 != -1)
          {
            swift_once();
            v17 = qword_1009CFE28;
          }
        }

        v18 = v38;
        v19 = sub_1000056A8(v38, v17);
        (*v34)(v37, v19, v18);
        v20 = v16;
        v21 = [v20 layer];
        Shadow.offset.getter();
        [v21 setShadowOffset:?];

        v22 = [v20 layer];
        v23 = Shadow.color.getter();
        v24 = [v23 CGColor];

        [v22 setShadowColor:v24];
        v25 = [v20 layer];
        Shadow.blurRadius.getter();
        [v25 setShadowRadius:?];

        v26 = [v20 layer];
        LODWORD(v27) = 1.0;
        [v26 setShadowOpacity:v27];

        [v20 setClipsToBounds:0];
        swift_beginAccess();
        v28 = v20;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v29 = [v28 superview];

        if (v29)
        {
          sub_100005744(0, &qword_100972EB0, UIView_ptr);
          v30 = v1;
          v31 = static NSObject.== infix(_:_:)();

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

double sub_10017C594(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration;
  if (*&v1[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration])
  {
    swift_unknownObjectWeakAssign();

    sub_10017BCA4();
  }

  *&v1[v3] = a1;

  if (a1)
  {
    sub_10017BFD8();
    swift_unknownObjectWeakAssign();
    sub_10017BCA4();
    [v1 setNeedsLayout];
  }

  return result;
}

void sub_10017C8E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  type metadata accessor for ArtworkView();
  if (v3 == 1)
  {
    v4 = static ArtworkView.prerenderedIconArtworkView.getter();
  }

  else
  {
    v4 = static ArtworkView.iconArtworkView.getter();
  }

  v5 = v4;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  static UIColor.placeholderBackground.getter();
  ArtworkView.backgroundColor.setter();
  v6 = v5;
  static ArtworkView.iconBorderColor.getter();
  dispatch thunk of RoundedCornerView.borderColor.setter();
  static ArtworkView.iconBorderWidth.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *a2 = v6;
}

void sub_10017C990()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration];
  if (v2 && *(v2 + 24) >= 1)
  {
    v3 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v4 = *&v1[v3];
    v5 = v4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 == *(v2 + 24))
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        sub_100005744(0, &qword_100972EB0, UIView_ptr);

        v7 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v7 = v6;
      }

      if (v1[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory] == 7)
      {
        v8 = 5;
      }

      else
      {
        v8 = v1[OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory];
      }

      LayoutMarginsAware<>.layoutFrame.getter();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v1 traitCollection];
      v18.n128_u64[0] = v10;
      sub_1001E1F78(v17, v7, v8, v18, v12, v14, v16);
    }
  }
}

void sub_10017CBC4(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_configuration);
  if (v4 && *(v4 + 24) >= 1)
  {
    v8 = OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 == *(v4 + 24))
    {
      v11 = *(v3 + v8);
      if (v11 >> 62)
      {
        sub_100005744(0, &qword_100972EB0, UIView_ptr);

        v12 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v12 = v11;
      }

      if (*(v3 + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory) == 7)
      {
        v14 = 5;
      }

      else
      {
        v14 = *(v3 + OBJC_IVAR____TtC8AppStore24MultiAppFallbackIconView_sizeCategory);
      }

      v13.n128_f64[0] = a2;
      sub_1001E20A8(a1, v12, v14, v13, a3);
    }
  }
}

uint64_t type metadata accessor for MultiAppFallbackIconView(uint64_t a1)
{
  result = qword_100976FA8;
  if (!qword_100976FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017CEEC(uint64_t a1)
{
  sub_10017CFA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10017CFA0(uint64_t a1)
{
  if (!qword_100976FB8)
  {
    sub_10002D1A8(&qword_100975330, &unk_1007B7440);
    sub_10017D010();
    v1 = type metadata accessor for ReusePool();
    if (!v2)
    {
      atomic_store(v1, &qword_100976FB8);
    }
  }
}

unint64_t sub_10017D010()
{
  result = qword_100975338;
  if (!qword_100975338)
  {
    sub_10002D1A8(&qword_100975330, &unk_1007B7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975338);
  }

  return result;
}

id sub_10017D0C4(char a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_isCollapsing) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView);
  *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_isCollapsing) = a1;
  *(*(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_isCollapsing) = a1;
  [*(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton) setAlpha:0.0];
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);

  return [v3 setAlpha:0.0];
}

void sub_10017D170(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_isCollapsing] = 0;
  v9 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v10 = type metadata accessor for ActionMetrics();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_backButtonActionMetrics], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_closeButtonActionMetrics], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_objectGraph] = a2;
  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_presenter] = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_artworkLoader] = v25;

  dispatch thunk of BasePresenter.pageRenderMetrics.getter();

  ArtworkLoader.pageRenderMetrics.setter();

  v12 = &v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver];
  *(v12 + 3) = type metadata accessor for AppPromotionDetailPagePresenter();
  *(v12 + 4) = &protocol witness table for BasePresenter;
  *v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageView(0));

  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView] = sub_1004044C8(a2);
  v14 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0));
  v15 = a3;
  v16 = sub_1004D2B88(a3);

  *&v4[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_containerTransitioningDelegate] = v16;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for VideoPlaybackCoordinator();
  v18 = v17;
  inject<A, B>(_:from:)();
  v19 = v25;
  v20 = v18;
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  sub_100181038(&qword_100977120, type metadata accessor for AppPromotionDetailPageViewController, &unk_1007BC2C0);
  dispatch thunk of AppPromotionDetailPagePresenter.view.setter();
  v21 = [v20 view];

  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = [v20 view];
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v22 setClipsToBounds:0];

  v23 = [v20 view];
  if (v23)
  {
    [v23 addSubview:*&v20[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10017D63C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  *(*&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView] + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_delegate + 8) = &off_1008B6A80;
  swift_unknownObjectWeakAssign();
  return dispatch thunk of BasePresenter.didLoad()();
}

void sub_10017D808(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100181038(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  }

  sub_100181038(&qword_1009846C0, type metadata accessor for AppPromotionDetailPageView, &unk_1007CC16C);
  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
}

void sub_10017DAC8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
    PendingPageRender.appearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v17 = v18[1];
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  sub_100407078();
}

void sub_10017DE9C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_1009729C8, &unk_1007B3740);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1, v14);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v13 + 8))(v16, v12);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v18 + 8))(v7, v19);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v17 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    PendingPageRender.disappearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();
}

void sub_10017E26C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  sub_10019DC68(*&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_artworkLoader], 1);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100181038(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  }

  sub_100181038(&qword_1009846C0, type metadata accessor for AppPromotionDetailPageView, &unk_1007CC16C);
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
}

double sub_10017E5E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();

  return result;
}

double sub_10017E7E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();

  return result;
}

void sub_10017E9FC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10002A400(&v7[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v15 = v16[1];
  a3(v14);
}

id sub_10017EC14()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
    sub_100041CD0();
    v12 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin] = v13;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v3)
    {
      v15 = -*&v1[v12];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10017ED98(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    dispatch thunk of AppPromotionDetailPagePresenter.sizeClassDidChange()();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_10017F03C()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400((v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v2 + 8))(v4, v1);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v5 = v6[1];
  dispatch thunk of VideoPlaybackCoordinator.startAutoPlayVideo()();
}

void sub_10017F330(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  type metadata accessor for ContingentOfferDetailPage();
  if (swift_dynamicCastClass())
  {

    ContingentOfferDetailPage.learnMoreActionMetrics.getter();
    v7 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1001804F0(v6, &v1[v7]);
    swift_endAccess();
    ContingentOfferDetailPage.backButtonActionMetrics.getter();
    v8 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1001804F0(v6, &v1[v8]);
    swift_endAccess();
    ContingentOfferDetailPage.closeButtonActionMetrics.getter();
  }

  else
  {
    type metadata accessor for OfferItemDetailPage();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_6;
    }

    OfferItemDetailPage.learnMoreActionMetrics.getter();
    v9 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1001804F0(v6, &v1[v9]);
    swift_endAccess();
    OfferItemDetailPage.backButtonActionMetrics.getter();
    v10 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1001804F0(v6, &v1[v10]);
    swift_endAccess();
    OfferItemDetailPage.closeButtonActionMetrics.getter();
  }

  v11 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_1001804F0(v6, &v2[v11]);
  swift_endAccess();
LABEL_6:
  v12 = [v2 traitCollection];
  if (v12)
  {
    v13 = v12;
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      UITraitCollection.prefersAccessibilityLayouts.getter();
    }
  }

  v14 = [v2 view];
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;

    v20 = *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_artworkLoader];
    v21 = *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_objectGraph];

    sub_10019EB50(a1, v20, v21, v17, v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10017F5F4(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_objectGraph;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
  }

  v10 = *(v1 + v6);

  sub_1005F9AF4(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_10017F77C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentPageFields.getter();

  static MetricsActivity.current.getter();

  dispatch thunk of MetricsActivity.currentPageFields.setter();

  v6 = dispatch thunk of AppPromotionDetailPagePresenter.lockupClickAction.getter();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_objectGraph;
    v9 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      v12 = *(a2 + v8);

      sub_1005F9AF4(v7, 1, v12, v5);

      (*(v10 + 8))(v5, v9);
    }

    static MetricsActivity.current.getter();
    dispatch thunk of MetricsActivity.currentPageFields.setter();
  }

  else
  {
  }

  return result;
}

uint64_t sub_10017F9D4()
{
  v0 = type metadata accessor for Dependency();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetricsFieldsContext();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v16 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_10002849C(&qword_100977128, &qword_1007BC2F8);

  BaseObjectGraph.optional<A>(_:)();

  v14 = v20[6];
  v15 = v20[5];
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentPageFields.getter();

  static MetricsActivity.current.getter();
  v13[3] = dispatch thunk of MetricsActivity.preloaded.getter();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.currentSearchAdRotationDataProvider.getter();

  v9 = type metadata accessor for SearchGhostHintMetricsTracker();

  BaseObjectGraph.optional<A>(_:)();

  if (v19[0])
  {
    v10 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[3] = v9;
  v19[4] = v10;
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.contextualAction.getter();

  sub_10002849C(&qword_100977130, &unk_1007BC300);

  BaseObjectGraph.optional<A>(_:)();

  static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10002B894(v20, &qword_100977138, qword_1007D9800);
  sub_10002B894(v19, &qword_100977140, &unk_1007BC310);
  (*(v4 + 16))(v16, v8, v3);

  Dependency.init<A>(satisfying:with:)();
  v11 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v17 + 8))(v2, v18);
  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t type metadata accessor for AppPromotionDetailPageViewController(uint64_t a1)
{
  result = qword_1009770F8;
  if (!qword_1009770F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001800A0(uint64_t a1)
{
  sub_10018016C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10018016C(uint64_t a1)
{
  if (!qword_100977108)
  {
    type metadata accessor for ActionMetrics();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100977108);
    }
  }
}

CGFloat sub_100180224()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_10018028C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_detailPageView) + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

double sub_1001802D0(__n128 a1)
{
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of BasePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  return result;
}

id sub_100180344()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v1, v3);
  type metadata accessor for AppPromotionDetailPagePresenter();
  sub_100181038(&qword_100977118, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v2 + 8))(v5, v1);
  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1001804F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100180560()
{
  v1 = v0;
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  v6 = dispatch thunk of MetricsActivity.currentPageFields.getter();

  (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  type metadata accessor for AppPromotionDetailPagePresenter();
  sub_100181038(&qword_100977118, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v0;
  aBlock[4] = sub_100181030;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B6B40;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_100180788()
{
  v1 = v0;
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ActionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_100180C3C(v1 + v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002B894(v10, &unk_100993040, &qword_1007BC2F0);
  }

  else
  {
    v26 = v3;
    (*(v12 + 32))(v17, v10, v11);
    v19 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_10002B894(v7, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      type metadata accessor for BlankAction();
      (*(v12 + 16))(v14, v17, v11);
      v21 = BlankAction.__allocating_init(actionMetrics:)();
      v22 = sub_10017F9D4();
      sub_1005FA048(v21, 1, v22, v7);
      v25 = v2;

      v2 = v25;

      (*(v12 + 8))(v17, v11);
      (*(v20 + 8))(v7, v19);
    }

    v3 = v26;
  }

  v23 = v27;
  (*(v3 + 104))(v27, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  type metadata accessor for AppPromotionDetailPagePresenter();
  sub_100181038(&qword_100977118, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v3 + 8))(v23, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_100180C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180CC4(uint64_t *a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ActionMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_100180C3C(v1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = &unk_100993040;
    v18 = &qword_1007BC2F0;
    v19 = v8;
    return sub_10002B894(v19, v17, v18);
  }

  (*(v10 + 32))(v15, v8, v9);
  v20 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    (*(v10 + 8))(v15, v9);
    v17 = &unk_100972A00;
    v18 = &unk_1007B3130;
    v19 = v5;
    return sub_10002B894(v19, v17, v18);
  }

  type metadata accessor for BlankAction();
  (*(v10 + 16))(v12, v15, v9);
  v23 = BlankAction.__allocating_init(actionMetrics:)();
  v24 = sub_10017F9D4();
  sub_1005FA048(v23, 1, v24, v5);

  (*(v10 + 8))(v15, v9);
  return (*(v21 + 8))(v5, v20);
}

uint64_t sub_100181038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100181084(uint64_t a1, uint64_t a2, __n128 a3)
{
  v20 = type metadata accessor for MetricsFieldsContext();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetricsPipeline();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetricsData();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 16) != 1 || *(v3 + 17) == 1)
  {
    v19 = v13;
    static AppEnterMetricsEvent.makeData(enterKind:)();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    static MetricsFieldsContext.emptyContext.getter();
    MetricsPipeline.process(_:using:)();
    (*(v4 + 8))(v6, v20);
    v16 = sub_1000076C0();

    v17 = static OS_dispatch_queue.main.getter();
    v21[3] = v16;
    v21[4] = &protocol witness table for OS_dispatch_queue;
    v21[0] = v17;
    Promise.always(on:perform:)();

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v15, v19);
    sub_100007000(v21);
  }
}

void sub_100181348(uint64_t a1, void *a2)
{
  v68 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v64 = *(v60 - 8);
  __chkstk_darwin(v60);
  v66 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v69 = v6;
  v70 = v7;
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v48 - v11;
  v59 = type metadata accessor for MetricsPipeline();
  v62 = *(v59 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v59);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for MetricsData();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v63 = v2;
  if ((*(v2 + 17) & 1) == 0)
  {
    v22 = &v48 - v20;
    v51 = v19;
    v58 = v21;
    v23 = String._bridgeToObjectiveC()();
    v57 = v3;
    v24 = v23;
    v52 = [v68 beginBackgroundTaskWithName:v23 expirationHandler:0];

    v54 = v22;
    static AppExitMetricsEvent.makeData()();
    type metadata accessor for BaseObjectGraph();
    v25 = v15;
    v55 = v15;
    v26 = v59;
    inject<A, B>(_:from:)();
    sub_1000076C0();
    v53 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v70 + 8);
    v70 += 8;
    v56 = v27;
    v27(v9, v69);
    v28 = v62;
    v29 = *(v62 + 16);
    v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = v26;
    v29(v50, v25, v26);
    v31 = v58;
    v32 = v22;
    v33 = v51;
    (*(v58 + 16))(&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v51);
    v34 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v35 = *(v31 + 80);
    v49 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = (v12 + v35 + v34) & ~v35;
    v37 = (v17 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (*(v28 + 32))(v39 + v34, v50, v30);
    (*(v31 + 32))(v39 + v36, v49, v33);
    v40 = v68;
    *(v39 + v37) = v68;
    *(v39 + v38) = v52;
    *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
    aBlock[4] = sub_100181B90;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B6B90;
    v41 = _Block_copy(aBlock);
    v42 = v40;

    v43 = v66;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10002D150();
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    v44 = v61;
    v45 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v46 = v67;
    v47 = v53;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v41);

    (*(v65 + 8))(v44, v45);
    (*(v64 + 8))(v43, v60);
    v56(v46, v69);
    (*(v28 + 8))(v55, v30);
    (*(v58 + 8))(v54, v33);
  }
}

uint64_t sub_1001819FC(__n128 a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for MetricsFieldsContext();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MetricsFieldsContext.emptyContext.getter();
  MetricsPipeline.process(_:using:)();
  (*(v10 + 8))(v12, v9);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v14 = sub_1000076C0();
  v15 = a4;

  v16 = static OS_dispatch_queue.main.getter();
  v19[3] = v14;
  v19[4] = &protocol witness table for OS_dispatch_queue;
  v19[0] = v16;
  Promise.always(on:perform:)();

  return sub_100007000(v19);
}

uint64_t sub_100181B90()
{
  v1 = *(type metadata accessor for MetricsPipeline() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MetricsData() - 8);
  v6 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);
  v10 = *(v0 + v8);
  v11 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001819FC(v5, v0 + v2, v0 + v6, v9, v10, v11);
}

id sub_100181CA0()
{
  v1 = *(v0 + 32);
  result = [*(v0 + 16) endBackgroundTask:*(v0 + 24)];
  *(v1 + 17) = 1;
  return result;
}

unint64_t sub_100181CF8()
{
  result = qword_100977230;
  if (!qword_100977230)
  {
    type metadata accessor for UpdateGranularNotificationSettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977230);
  }

  return result;
}

void sub_100181D50(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v13 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 items];
      sub_100005744(0, &qword_100977250, AMSNotificationSettingsItem_ptr);
      v9 = v1;
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = v10;
      v1 = v9;
      sub_1003949A4(v11, v12);

      ++v3;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_100181E88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v43 = a6;
    v44 = a4;
    v11 = swift_allocObject();
    *(v11 + 16) = _swiftEmptyArrayStorage;
    v12 = (v11 + 16);
    v45 = a1;
    updated = UpdateGranularNotificationSettingsAction.settingIDs.getter();
    if (updated)
    {
      v14 = updated;
      if (qword_10096D120 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for OSLogger();
      sub_1000056A8(v15, qword_1009CE218);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v16._countAndFlagsBits = 0xD00000000000004DLL;
      v16._object = 0x8000000100804710;
      LogMessage.StringInterpolation.appendLiteral(_:)(v16);
      v49 = sub_10002849C(&unk_100977380, &qword_1007BB880);
      aBlock = v14;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(&aBlock);
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v18 = [v45 sections];
      sub_100005744(0, &qword_100977248, AMSNotificationSettingsSection_ptr);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100182F10(v19, v12, v14);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (qword_10096D120 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for OSLogger();
      sub_1000056A8(v20, qword_1009CE218);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      v21 = [v45 sections];
      sub_100005744(0, &qword_100977248, AMSNotificationSettingsSection_ptr);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100181D50(v22);
    }

    v23 = *v12;
    if (*v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v25 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v26 setEnabled:1];

        ++v25;
        if (v28 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_22:

    v29 = ASKBagContract.amsBag.getter();
    v30 = objc_allocWithZone(AMSNotificationSettingsTask);
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 initWithIdentifier:v31 account:v44 bag:v29];

    swift_unknownObjectRelease();
    sub_100005744(0, &qword_100977250, AMSNotificationSettingsItem_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = [v32 updateSettings:isa];

    if (v34)
    {
      v35 = swift_allocObject();
      *(v35 + 16) = v11;
      *(v35 + 24) = v43;
      v50 = sub_1001835E4;
      v51 = v35;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100235C48;
      v49 = &unk_1008B6CA0;
      v36 = _Block_copy(&aBlock);

      [v34 addFinishBlock:v36];

      _Block_release(v36);
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      sub_100183584();
      swift_allocError();
      *v37 = 1;
    }

    swift_errorRetain();
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for OSLogger();
    sub_1000056A8(v38, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._countAndFlagsBits = 0xD000000000000030;
    v39._object = 0x8000000100804680;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    swift_getErrorValue();
    v40 = Error.localizedDescription.getter();
    v49 = &type metadata for String;
    aBlock = v40;
    v47 = v41;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    Promise.reject(_:)();
  }
}

void sub_100182714(id *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = [*a1 items];
  sub_100005744(0, &qword_100977250, AMSNotificationSettingsItem_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17[5] = a2;
    v18 = i;
    v7 = 0;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v13;

      v22[0] = v12;
      v22[1] = a2;
      __chkstk_darwin(v14);
      v17[2] = v22;
      LOBYTE(v11) = sub_10003C224(sub_1001835EC, v17, v21);

      if (v11)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a2 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
      if (v10 == v18)
      {
        v15 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_18:

  sub_1003949A4(v15, v16);
}

uint64_t sub_100182944(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionOutcome();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 48;
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v26 = a4;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for OSLogger();
    sub_1000056A8(v13, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0xD000000000000037;
    v14._object = 0x8000000100804790;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    swift_beginAccess();
    v15 = *(a3 + 16);
    v28 = sub_10002849C(&qword_1009829E0, &qword_1007BC3E8);
    v27[0] = v15;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v27);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    Promise.resolve(_:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (!a2)
    {
      sub_100183584();
      swift_allocError();
      *v18 = 2;
    }

    swift_errorRetain();
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSLogger();
    sub_1000056A8(v19, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._object = 0x8000000100804760;
    v20._countAndFlagsBits = 0xD00000000000002DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    swift_beginAccess();
    v21 = *(a3 + 16);
    v28 = sub_10002849C(&qword_1009829E0, &qword_1007BC3E8);
    v27[0] = v21;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v27);
    v22._countAndFlagsBits = 0x3A726F727245202ELL;
    v22._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v28 = &type metadata for String;
    v27[0] = v23;
    v27[1] = v24;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v27);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    Promise.reject(_:)();
  }
}

void sub_100182E7C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100182F10(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_100182714(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100183010(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v4 = Promise.__allocating_init()();
  sub_100005744(0, &qword_10098D1A0, ACAccountStore_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v5 = [aBlock[0] ams_activeiTunesAccount];

  if (v5)
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for OSLogger();
    sub_1000056A8(v6, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v7._countAndFlagsBits = 0xD00000000000002DLL;
    v7._object = 0x8000000100804610;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    v24 = sub_100005744(0, &qword_100977240, ACAccount_ptr);
    aBlock[0] = v5;
    v8 = v5;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(aBlock);
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    type metadata accessor for ASKBagContract();
    inject<A, B>(_:from:)();
    v10 = aBlock[0];
    v11 = v8;
    v12 = ASKBagContract.amsBag.getter();
    v13 = objc_allocWithZone(AMSNotificationSettingsTask);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithIdentifier:v14 account:v11 bag:v12];

    swift_unknownObjectRelease();
    v16 = [v15 fetchAllSettings];
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v11;
    v17[4] = v10;
    v17[5] = v4;
    v25 = sub_1001835D8;
    v26 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100182E7C;
    v24 = &unk_1008B6C28;
    v18 = _Block_copy(aBlock);
    v19 = v11;

    [v16 addFinishBlock:v18];
    _Block_release(v18);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for OSLogger();
    sub_1000056A8(v20, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100183584();
    swift_allocError();
    *v21 = 0;
    Promise.reject(_:)();
  }

  return v4;
}

unint64_t sub_100183584()
{
  result = qword_100977238;
  if (!qword_100977238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977238);
  }

  return result;
}

unint64_t sub_100183620()
{
  result = qword_100977258;
  if (!qword_100977258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977258);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeaderCollectionViewHostingCell(uint64_t a1)
{
  result = qword_100977288;
  if (!qword_100977288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001837EC()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Shelf.ContentType.mediaPageHeader(_:), v0, v2);
  v5 = COERCE_DOUBLE(static ComponentHeightFactory.estimatedComponentHeight(for:)());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

void *sub_1001838F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_100183928(void *a1)
{
  sub_1001872C0(a1);
}

void sub_100183998(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Uber.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Uber.AssetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Uber.assetType.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Uber.AssetType.artwork(_:))
  {
    v13 = [v1 traitCollection];
    v14 = UITraitCollection.isSizeClassCompact.getter();

    if (v14)
    {
      v15 = Uber.compactArtwork.getter();
      if (!v15)
      {
        return;
      }

LABEL_27:

      Uber.style.getter();
      sub_100183ED8(v15, a1, v7);

      (*(v5 + 8))(v7, v4);
      return;
    }

    v15 = Uber.artwork.getter();
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v12 == enum case for Uber.AssetType.video(_:))
    {
      v16 = *(a1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
      v37 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
      v38 = v16;
      v17 = *(v16 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v18 = &unk_100986000;
      v19 = *&v17[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
      v39 = v2;
      if (v19)
      {
        type metadata accessor for VideoView(0);
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          sub_1001873D4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
          v21 = v19;
          v22 = [v20 superview];
          if (v22)
          {
            v23 = v22;
            v35 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
            v24 = v21;
            v25 = v17;
            v36 = a1;
            v26 = static NSObject.== infix(_:_:)();
            a1 = v36;
            LODWORD(v35) = v26;

            v18 = &unk_100986000;
            if (v35)
            {
              [v20 removeFromSuperview];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v27 = v18;
      v28 = v18[422];
      v29 = *&v17[v28];
      *&v17[v28] = v20;
      v30 = v20;
      sub_10047C6C8(v29);

      if (v20)
      {
        *&v30[qword_100988CB8 + 8] = &off_1008B4C68;
        swift_unknownObjectWeakAssign();
      }

      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v31 = v40;
      v32 = *(*(v38 + v37) + v27[422]);
      if (v32)
      {
        type metadata accessor for VideoView(0);
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          sub_1001873D4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
          v34 = v32;
        }
      }

      else
      {
        v33 = 0;
      }

      sub_1001873D4(&qword_100974F38, type metadata accessor for UberHeaderView, &unk_1007B6E78);
      dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

      if (!Uber.video.getter())
      {

        return;
      }

      v15 = Video.preview.getter();

      goto LABEL_27;
    }

    if (v12 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v9 + 8))(v11, v8);
      return;
    }

    v15 = Uber.iconArtwork.getter();
    if (v15)
    {
      goto LABEL_27;
    }
  }
}

void sub_100183ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for AspectRatio();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Uber.Style();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 tabBarController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tabBar];

    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v68.origin.x = v20;
    v68.origin.y = v22;
    v68.size.width = v24;
    v68.size.height = v26;
    Height = CGRectGetHeight(v68);
  }

  else
  {
    Height = 0.0;
  }

  v62 = a1;
  v28 = Artwork.backgroundColor.getter();
  v29 = *(a2 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
  v30 = type metadata accessor for MediaView();
  v67.receiver = v29;
  v67.super_class = v30;
  objc_msgSendSuper2(&v67, "setBackgroundColor:", v28);
  [*(*&v29[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:v28];
  v31 = *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v31)
  {
    v32 = v31;
    [v32 setBackgroundColor:v28];
  }

  v33 = [v4 view];
  if (v33)
  {
    v34 = v33;
    [v33 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v69.origin.x = v36;
    v69.origin.y = v38;
    v69.size.width = v40;
    v69.size.height = v42;
    v43 = CGRectGetHeight(v69);
    v44 = *(a2 + OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset);
    v45 = [v4 view];
    if (v45)
    {
      v46 = v45;
      *&v47 = v43 - Height - v44;
      [v45 bounds];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v70.origin.x = v49;
      v70.origin.y = v51;
      v70.size.width = v53;
      v70.size.height = v55;
      Width = CGRectGetWidth(v70);
      v57 = [v4 traitCollection];
      sub_1001158BC(v57, a3, 1, Width, v47, 0);
      if (UITraitCollection.isSizeClassCompact.getter())
      {
        (*(v12 + 104))(v15, enum case for Uber.Style.inline(_:), v11);
        sub_1001873D4(&qword_100973B50, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v65 == v63 && v66 == v64)
        {
          (*(v12 + 8))(v15, v11);

LABEL_14:
          Artwork.config(_:mode:prefersLayeredImage:)();

          type metadata accessor for UberHeaderView();
          sub_1001873D4(&qword_100973B48, type metadata accessor for UberHeaderView, &unk_1007B2550);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          return;
        }

        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (*(v12 + 8))(v15, v11);

        if (v58)
        {
          goto LABEL_14;
        }
      }

      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.width(fromHeight:)();
      (*(v60 + 8))(v10, v61);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10018442C(double a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for TimingCurve();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - v11;
  v13 = a1 < 0.5;
  if (*&v3[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_statusBarStyle] != v13)
  {
    aBlock[0] = 0x3FC999999999999ALL;
    aBlock[6] = 0x3FA999999999999ALL;
    (*(v6 + 104))(v8, enum case for TimingCurve.linear(_:), v5);
    Interpolator.init(fromValue:toValue:curve:)();
    Interpolator.value(forInput:)();
    (*(v10 + 8))(v12, v9);
    v14 = *aBlock;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v13;
    aBlock[4] = sub_1001873CC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008B6F08;
    v17 = _Block_copy(aBlock);
    v18 = v3;

    [v15 animateWithDuration:v17 animations:v14];
    _Block_release(v17);
  }
}

void sub_1001846F8()
{
  if (!*&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver])
  {
    return;
  }

  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10006C73C();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = v2;
    [v10 setContentInset:{v3, v5, v7, v9}];
    [v10 setScrollIndicatorInsets:{v3, v5, v7, v9}];

    v11 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_hasAnimatedToShowUber;
    if ((v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_hasAnimatedToShowUber] & 1) == 0 && [v0 isViewLoaded])
    {
      if ([v0 transitionCoordinator])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v10 contentOffset];
        if (v12 <= 0.0)
        {
          v13 = [v0 collectionView];
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = v13;
          [v13 _effectiveContentInset];
          v16 = v15;

          [v10 setContentOffset:1 animated:{0.0, -v16}];
          v0[v11] = 1;
        }
      }
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      sub_10006C4B8(v17);

      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_100184928()
{
  v1 = type metadata accessor for Uber.Style();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  MaxY = 0.0;
  if (*&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber])
  {

    Uber.style.getter();

    (*(v2 + 32))(v10, v7, v1);
    (*(v2 + 104))(v4, enum case for Uber.Style.above(_:), v1);
    sub_1001873D4(&qword_100973B50, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v28[2] == v28[0] && v28[3] == v28[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v13 = *(v2 + 8);
    v13(v4, v1);

    if (v12)
    {
      v14 = [v0 navigationController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationBar];

        [v16 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v29.origin.x = v18;
        v29.origin.y = v20;
        v29.size.width = v22;
        v29.size.height = v24;
        MaxY = CGRectGetMaxY(v29);
      }

      v25 = [v0 traitCollection];
      v26 = sub_100115CEC(v25, 1);

      v13(v10, v1);
      MaxY = v26 - MaxY;
    }

    else
    {
      v13(v10, v1);
    }
  }

  v27 = &v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarTransitionDistance];
  *v27 = fmax(MaxY, 16.0);
  *(v27 + 8) = 0;
  sub_1000625B0();
}

char *sub_100184C6C()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_38;
    }

    v5 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView;
    v6 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView];
    if (v6)
    {
      v7 = v6;
LABEL_38:

      return v6;
    }

    v66 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber;
    v8 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
    v9 = objc_allocWithZone(type metadata accessor for UberHeaderView());
    swift_retain_n();

    v10 = sub_100112C00(v4, 1, v8);
    [v1 pageMarginInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
    [*&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] layoutMargins];
    if (v12 != v23 || v14 != v20 || v16 != v21 || v18 != v22)
    {
      [*&v10[v19] setLayoutMargins:{v12, v14, v16, v18}];
      [v10 invalidateIntrinsicContentSize];
      v27 = *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
      if (v27)
      {
        v28 = *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver + 8];

        v27(v29);
        sub_10001F63C(v27, v28);
      }
    }

    v30 = [v1 navigationItem];
    v31 = OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem;
    v32 = *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_navigationItem];
    if (v32)
    {
      v33 = v32;
      v34 = String._bridgeToObjectiveC()();
      [v33 removeObserver:v10 forKeyPath:v34 context:&unk_100974E90];

      v35 = *&v10[v31];
    }

    else
    {
      v35 = 0;
    }

    *&v10[v31] = v30;
    v36 = v30;

    v37 = *&v10[v31];
    if (v37)
    {
      v38 = v37;
      v39 = String._bridgeToObjectiveC()();
      [v38 addObserver:v10 forKeyPath:v39 options:0 context:&unk_100974E90];

      v40 = *&v10[v31];
      if (v40)
      {
        v40 = [v40 title];
        if (v40)
        {
          v41 = v40;
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v45 = v44;
          v40 = v42;
LABEL_28:
          sub_1001136B0(v40, v45);

          v46 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v47 = &v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
          v48 = *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver];
          v49 = *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver + 8];
          *v47 = sub_1001873BC;
          v47[1] = v46;

          sub_10001F63C(v48, v49);

          type metadata accessor for UberScrollObserver();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v50[5] = 0;
          v50[6] = 0;
          v50[3] = v10;
          v50[4] = v3;
          swift_unknownObjectWeakAssign();
          v6 = v10;
          v51 = v3;
          sub_10006C3BC();
          v52 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v53 = v50[5];
          v54 = v50[6];
          v50[5] = sub_1001873C4;
          v50[6] = v52;

          sub_10001F63C(v53, v54);

          v55 = [v1 navigationItem];
          v56 = [v55 _largeTitleAccessoryView];

          if (v56)
          {
            v57 = [v1 navigationItem];
            [v57 _setLargeTitleAccessoryView:0];

            v58 = v56;
            sub_1003F02B0(v56);
          }

          v59 = *&v1[v5];
          v60 = v6;
          if (v59)
          {
            [v59 removeFromSuperview];
            v59 = *&v1[v5];
          }

          *&v1[v5] = v6;
          v3 = v6;

          v61 = [v1 viewIfLoaded];
          if (v61)
          {
            v62 = v61;
            [v61 insertSubview:v3 atIndex:0];
          }

          *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver] = v50;

          v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 1;
          v63 = [v1 viewIfLoaded];
          [v63 setNeedsLayout];

          if (v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[v67])
          {
            v64 = [v1 navigationItem];
            [v64 setLargeTitleDisplayMode:3];
          }

          else
          {
            v64 = [v1 navigationItem];
            [v64 setLargeTitleDisplayMode:2];
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v40 = 0;
    }

    v45 = 0;
    goto LABEL_28;
  }

  return 0;
}

void sub_10018526C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    type metadata accessor for UberHeaderView();
    sub_1001873D4(&qword_100973B48, type metadata accessor for UberHeaderView, &unk_1007B2550);
    v4 = v3;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    v5 = *(*&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView);
    if (v5)
    {
      v6 = v5;
      v7 = [v1 navigationItem];
      v8 = v6;
      [v7 _setLargeTitleAccessoryView:v8];
    }
  }

  v9 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {
      v12 = *(v10 + 48);

      v13 = sub_10000827C(v11, v12);
      v11(v13, 1.0, 0.0);

      sub_10001F63C(v11, v12);
    }
  }

  v14 = *&v1[v2];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v1[v2];
  }

  else
  {
    v15 = 0;
  }

  *&v1[v2] = 0;

  *&v1[v9] = 0;

  v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 1;
  v16 = [v1 viewIfLoaded];
  [v16 setNeedsLayout];

  if (v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber])
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v18 = [v1 navigationItem];
  [v18 setLargeTitleDisplayMode:v17];
}

id sub_1001854CC(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_inlineLockupHeight) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_statusBarStyle) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_hasAnimatedToShowUber) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_startedAsFlowPreview) = 0;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_artworkLoader) = v9;
  v5 = a1;

  v6 = sub_1000659FC(v5, a2);

  type metadata accessor for VideoPlaybackCoordinator();
  v7 = v6;
  inject<A, B>(_:from:)();
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();
  inject<A, B>(_:from:)();
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  return v7;
}

void sub_100185654()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v4 = static UIColor.defaultBackground.getter();
    [v3 setBackgroundColor:v4];

    v5 = [v1 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];
    }

    v8 = *&v1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView];
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = [v1 view];
    if (v10)
    {
      v11 = v10;
      [v10 insertSubview:v9 atIndex:0];

LABEL_7:
      sub_100184928();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}