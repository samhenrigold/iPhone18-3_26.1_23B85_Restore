unint64_t sub_26F08()
{
  result = qword_93F900;
  if (!qword_93F900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_93F900);
  }

  return result;
}

uint64_t sub_26F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2704C(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_271EC(v11, a8, ObjectType, a2, a3);
}

double sub_270AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_75B370();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_27484(v5, a3);
  }

  else
  {
    sub_765860();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
      return result;
    }

    v8 = v6;

    sub_27698(v8, a3);
  }

  return result;
}

double sub_271EC(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  sub_75B370();
  if (swift_dynamicCastClass())
  {

    sub_75B350();
    v9 = sub_7658D0();

    v10 = sub_75B330();
    v12 = v11;
    v13 = sub_75B360();
    v15 = v14;
    v16 = sub_75B2C0();
    if (qword_93C808 != -1)
    {
      swift_once();
    }

    sub_53DA04(&unk_99BE98, a2, a4, a5);
    v17 = type metadata accessor for AppPromotionCardView();
    sub_59C73C(v9, v10, v12, v13, v15, v16, a2, a4, a5, v17, a3);
  }

  else
  {
    sub_765860();
    if (swift_dynamicCastClass())
    {

      sub_765840();
      v18 = sub_7658D0();

      v19 = sub_765830();
      v21 = v20;
      v22 = sub_765850();
      v24 = v23;
      if (qword_93C808 != -1)
      {
        swift_once();
      }

      sub_53DA04(&unk_99BE98, a2, a4, a5);
      v25 = type metadata accessor for AppPromotionCardView();
      sub_59C73C(v18, v19, v21, v22, v24, 0, a2, a4, a5, v25, a3);
    }

    else
    {
      return 0.0;
    }
  }

  return a4;
}

double sub_27484(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_758780();
  if (v9)
  {
    v16[1] = v9;
    sub_764C80();
    sub_768900();
    sub_27AFC(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_768820();

    v10 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_278AC(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_75B340();
  sub_268CFC(v13, v14);
  return sub_59D7D4(a1, a2);
}

uint64_t sub_27698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_758780();
  if (v9)
  {
    v16[1] = v9;
    sub_764C80();
    sub_768900();
    sub_27AFC(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_768820();

    v10 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_278AC(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_765820();
  sub_268CFC(v13, v14);
  return sub_59E638(a1, a2);
}

uint64_t sub_278AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94EC40, &unk_793120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2791C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_7591D0(v8, a3);
  sub_759210();
  sub_27AFC(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_75A0C0();
  sub_75A0C0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = qword_940590;
    v6 = Strong;
    v5 = [*(Strong + qword_940590) layer];
    [v5 removeAllAnimations];

    [*&v6[v4] setImage:0];
    type metadata accessor for VideoView(0);
    sub_27AFC(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
    sub_75A0C0();
  }
}

uint64_t sub_27AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_27B90()
{
  v1 = sub_7656C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v35 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_BD88(&qword_93F730, &qword_799640);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-v6];
  sub_765940();
  sub_28058(&qword_93F738, &type metadata accessor for Paragraph, &protocol conformance descriptor for Paragraph);
  sub_75C750();
  if (aBlock[0])
  {
    sub_280A0();
    sub_75C780();
    sub_769030();
    v33 = v4;
    v34 = v0;
    v31 = v7;
    v32 = v5;
    v29 = v2;
    v30 = v1;
    if (LOBYTE(aBlock[0]) == 2)
    {
      v28 = sub_765890();
    }

    else
    {
      v28 = LOBYTE(aBlock[0]);
    }

    v8 = sub_7658D0();
    swift_getKeyPath();
    sub_75C7B0();

    v9 = aBlock[6];
    v10 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];
    v11 = [v8 length];
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = 1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_119AC;
    *(v13 + 24) = v12;
    aBlock[4] = sub_2636C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    aBlock[3] = &unk_880630;
    v14 = _Block_copy(aBlock);
    v15 = v9;
    v16 = v10;

    [v8 enumerateAttributesInRange:0 options:v11 usingBlock:{0x100000, v14}];

    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      swift_getKeyPath();
      v20 = v16;
      v21 = v35;
      sub_75C7B0();

      sub_765630();
      v23 = v22;
      v25 = v24;
      (*(v29 + 8))(v21, v30);
      v26 = sub_527DE4();
      swift_getObjectType();
      sub_334D4C(v16, v28 & 1, v26, UIEdgeInsetsZero.top, left, bottom, right, v23, v25);

      swift_unknownObjectRelease();

      (*(v32 + 8))(v31, v33);
    }
  }
}

uint64_t sub_28058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_280A0()
{
  result = qword_9513D0;
  if (!qword_9513D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9513D0);
  }

  return result;
}

uint64_t sub_280F8()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_28150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_281B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_7656C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_758FD0();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AAB0();
  sub_28490(&qword_93F748, &type metadata accessor for ArcadeShowcase, &protocol conformance descriptor for ArcadeShowcase);
  sub_75C750();
  if (!v26)
  {
    return 0.0;
  }

  v24[1] = v2;
  sub_761230();
  sub_768900();
  sub_768ED0();
  v10 = v26;
  sub_761210();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v12 = v11;
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  v15 = sub_527DE4();
  if (sub_758FA0())
  {
    v16 = sub_75AA80();
  }

  else
  {
    v16 = sub_75AAA0();
  }

  v19 = v16;
  v20 = v17;
  swift_getObjectType();
  v21.n128_u64[0] = v12;
  sub_145CB4(v19, v20, v15, v21, v14);
  v18 = v22;
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v25);
  return v18;
}

uint64_t sub_28490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_284DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_7593D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v19 = sub_75C840();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v5[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_758E80();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v22 = 0;
  *(v22 + 1) = 0;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  v25 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView];
  v26 = qword_93C5D0;
  v27 = v23;
  v28 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = sub_765080();
  v30 = sub_BE38(v29, qword_99B6D0);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v17, v30, v29);
  (*(v31 + 56))(v17, 0, 1, v29);
  sub_758E60();

  v32 = *&v23[v24];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v33 = v32;
  sub_758E70();

  (*(v12 + 8))(v14, v11);
  [v27 addSubview:*&v23[v24]];
  v34 = [v27 contentView];
  [v34 setClipsToBounds:1];

  v35 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  [*&v27[OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView] setClipsToBounds:1];
  v36 = [v27 contentView];

  [v36 addSubview:*&v27[v35]];
  return v27;
}

double sub_28A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_763B80();
  sub_295A8(&unk_93F7A0, &type metadata accessor for CondensedAdLockupWithIconBackground, &protocol conformance descriptor for CondensedAdLockupWithIconBackground);
  sub_75C750();
  v9 = v11;
  if (v11)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_5D3E7C(v9, v7, a2);
    (*(v5 + 8))(v7, v4);
    [v2 setNeedsLayout];
  }

  return result;
}

void sub_28BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v14);
      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_763B80();
      if (swift_dynamicCast())
      {
        sub_763B70();

        sub_764E50();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_75F4B0();

          (*(v8 + 8))(v10, v7);
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
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(uint64_t a1)
{
  result = qword_93F788;
  if (!qword_93F788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_28F60(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_295A8(&qword_93F798, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_77E910);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_290AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_29104(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_291C4()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_759190();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v1[v2] = 0;

  return result;
}

double sub_29258()
{
  swift_beginAccess();

  return result;
}

double sub_292A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_29358()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_293B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_29474(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_10914(v7, v5 + 32);
  return sub_296AC;
}

uint64_t sub_295A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_295F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2962C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_29664()
{

  sub_BEB8((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_296B8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_758E80();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_297CC()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_999F88);
  sub_BE38(v0, qword_999F88);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

uint64_t sub_29868()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_93F7B0);
  sub_BE38(v4, qword_93F7B0);
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F4F0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_29A44()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_93F7C8);
  sub_BE38(v4, qword_93F7C8);
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F568);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

char *sub_29C18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_768C60();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_760AD0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v48 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99F4D8);
  v21 = *(v19 - 8);
  v55 = *(v21 + 16);
  v55(v18, v20, v19);
  v54 = *(v21 + 56);
  v54(v18, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v13 + 104);
  v53 = v13 + 104;
  v23(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v24 = sub_75BB20();
  v25 = objc_allocWithZone(v24);
  v52 = v12;
  *&v5[v48] = sub_75BB10();
  v48 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v19, qword_99F4F0);
  v55(v18, v26, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v27 = objc_allocWithZone(v24);
  *&v5[v48] = sub_75BB10();
  v48 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v28 = sub_BE38(v19, qword_99F568);
  v55(v18, v28, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v29 = objc_allocWithZone(v24);
  *&v5[v48] = sub_75BB10();
  v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_wantsCardConsistentMargins] = 1;
  v30 = &v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_clickActionHandler];
  v31 = type metadata accessor for TodayCardThreeLineOverlayView();
  *v30 = 0;
  v30[1] = 0;
  v60.receiver = v5;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v33 = v32;
  v34 = sub_76A060();
  [v33 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_headingLabel;
  v36 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_headingLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = v36;
  v38 = v49;
  sub_768C10();
  sub_BDD0(&v56);
  sub_BDD0(&v58);
  sub_769E70();

  v39 = v51;
  v40 = *(v50 + 8);
  v40(v38, v51);
  v41 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_titleLabel;
  v42 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_titleLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v43 = v42;
  sub_768C10();
  sub_BDD0(&v56);
  sub_BDD0(&v58);
  sub_769E70();

  v40(v38, v39);
  v44 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_descriptionLabel;
  v45 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_descriptionLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = v45;
  sub_768C10();
  sub_BDD0(&v56);
  sub_BDD0(&v58);
  sub_769E70();

  v40(v38, v39);
  [v33 addSubview:*&v33[v35]];
  [v33 addSubview:*&v33[v41]];
  [v33 addSubview:*&v33[v44]];

  return v33;
}

id sub_2A36C()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v26, "layoutSubviews");
  sub_75D650();
  CGRectGetWidth(v27);
  v1 = 14.0;
  sub_769DA0();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_headingLabel];
  v7 = [v6 text];
  if (v7)
  {

    [v6 measurementsWithFitting:v0 in:{v3, v5}];
    v9 = v8;
    v11 = v10;
    sub_75D650();
    sub_769D20();
    [v6 setFrame:?];
    [v6 jet_languageAwareOutsets];
    v13 = v12;
    v28.origin.x = 20.0;
    v28.origin.y = 14.0;
    v28.size.width = v3;
    v28.size.height = v9;
    v1 = v13 + CGRectGetMaxY(v28) - v11;
  }

  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_titleLabel];
  v15 = [v14 text];
  if (v15)
  {

    [v14 measurementsWithFitting:v0 in:{v3, v5}];
    v18 = v17;
    if (qword_93C1A8 != -1)
    {
      swift_once();
    }

    v19 = sub_766CA0();
    sub_BE38(v19, qword_93F7B0);
    sub_766720();
    v21 = v1 + v20;
    sub_75D650();
    sub_769D20();
    [v14 setFrame:?];
    v29.origin.x = 20.0;
    v29.origin.y = v21;
    v29.size.width = v3;
    v29.size.height = v18;
    MaxY = CGRectGetMaxY(v29);
  }

  v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_descriptionLabel];
  v23 = [v22 text];
  if (v23)
  {

    if ((v0[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_isExpanded] & 1) == 0)
    {
      [v22 measurementsWithFitting:v0 in:{v3, v5}];
      sub_75D650();
      CGRectGetMaxY(v30);
      sub_75D650();
      sub_769D20();
      [v22 setFrame:?];
    }
  }

  v24 = 1.0;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_isExpanded])
  {
    v24 = 0.0;
  }

  return [v22 setAlpha:v24];
}

double sub_2A6F8(double a1, double a2)
{
  v4 = sub_762D10();
  v49 = *(v4 - 8);
  v50 = v4;
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_headingLabel] text];
  if (v8)
  {
    v9 = v8;
    sub_769240();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_titleLabel] text];
  if (v12)
  {
    v13 = v12;
    sub_769240();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_descriptionLabel] text];
  if (v16)
  {
    v17 = v16;
    v47 = sub_769240();
    v19 = v18;
  }

  else
  {
    v47 = 0;
    v19 = 0;
  }

  v48 = v2[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_isExpanded];
  [v2 layoutMargins];
  v20 = [v2 traitCollection];
  sub_769DA0();
  if (!v11)
  {
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_23:

    goto LABEL_24;
  }

  v21 = v19;
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  sub_BE38(v22, qword_99F4D8);
  v23 = sub_769E10();
  v24 = sub_7653B0();
  v52 = v24;
  v53 = sub_2BB88(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_B1B4(v51);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  v26 = v23;
  sub_765C30();
  sub_BEB8(v51);

  sub_762D00();
  sub_762CC0();

  (*(v49 + 8))(v7, v50);
  v19 = v21;
  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_14:
  v46 = v19;
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v27 = sub_7666D0();
  sub_BE38(v27, qword_99F4F0);
  v28 = sub_769E10();
  v29 = sub_7653B0();
  v52 = v29;
  v53 = sub_2BB88(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_B1B4(v51);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  v31 = v28;
  sub_765C30();
  sub_BEB8(v51);

  sub_762D00();
  sub_762CC0();
  if (qword_93C1A8 != -1)
  {
    swift_once();
  }

  v32 = sub_766CA0();
  sub_BE38(v32, qword_93F7B0);
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_77D9F0;
  *(v33 + 32) = v20;
  v34 = v20;
  v35 = sub_7671E0();
  sub_7666E0();

  (*(v49 + 8))(v7, v50);
  if (!v46)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v48)
  {

LABEL_24:

    return a1;
  }

  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v36 = sub_7666D0();
  sub_BE38(v36, qword_99F568);
  v37 = sub_769E10();
  v38 = sub_7653B0();
  v52 = v38;
  v53 = sub_2BB88(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v39 = sub_B1B4(v51);
  (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
  v40 = v37;
  sub_765C30();
  sub_BEB8(v51);
  sub_762D00();
  sub_762CC0();
  if (qword_93C1B0 != -1)
  {
    swift_once();
  }

  v41 = sub_766CA0();
  sub_BE38(v41, qword_93F7C8);
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_77D9F0;
  *(v42 + 32) = v20;
  v43 = v20;
  v44 = sub_7671E0();
  sub_7666E0();

  (*(v49 + 8))(v7, v50);
  return a1;
}

id sub_2B008(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93C298 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v6, qword_99A388);
    v7 = v1;
    sub_7592B0();

    sub_76A150();
    if (qword_93C2A8 != -1)
    {
      swift_once();
    }

    sub_BE38(v6, qword_99A3B8);
    v8 = v7;
    sub_7592B0();

    sub_76A150();
    if (qword_93C1A0 != -1)
    {
      swift_once();
    }

    sub_BE38(v6, qword_999F88);
    v9 = v8;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

id sub_2B29C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_2B378()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2B3D0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_F704(v4, v5);
}

id sub_2B3F0()
{
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_headingLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_titleLabel) setText:0];
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_descriptionLabel);

  return [v1 setText:0];
}

uint64_t sub_2B464()
{
  v1 = [v0 accessibilityElements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_769460();

  return v3;
}

void sub_2B50C()
{
  v1 = v0;
  v25 = sub_760AD0();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99F4D8);
  v10 = *(v8 - 8);
  v23 = *(v10 + 16);
  v23(v7, v9, v8);
  v22 = *(v10 + 56);
  v22(v7, 0, 1, v8);
  v11 = enum case for DirectionalTextAlignment.none(_:);
  v12 = *(v2 + 104);
  v24 = v2 + 104;
  v12(v4, enum case for DirectionalTextAlignment.none(_:), v25);
  v13 = sub_75BB20();
  v14 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_75BB10();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v8, qword_99F4F0);
  v23(v7, v15, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v16 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_75BB10();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v8, qword_99F568);
  v23(v7, v17, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v18 = objc_allocWithZone(v13);
  *(v1 + v21) = sub_75BB10();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_wantsCardConsistentMargins) = 1;
  v19 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_clickActionHandler);
  *v19 = 0;
  v19[1] = 0;
  sub_76A840();
  __break(1u);
}

id sub_2B95C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v6 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v4 setNeedsLayout];
    goto LABEL_6;
  }

  if (v6 == 7)
  {
    goto LABEL_5;
  }

  switch(a4)
  {
    case 6:
      if (v6 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v6 != a4 || (v6 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_headingLabel];
  sub_761910();
  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = sub_765AD0();
  [v7 setTextColor:v10];

  v11 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_titleLabel];
  sub_761900();
  if (v12)
  {
    v13 = sub_769210();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  v14 = sub_765AC0();
  [v11 setTextColor:v14];

  v15 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardThreeLineOverlayView_descriptionLabel];
  sub_7618F0();
  if (v16)
  {
    v17 = sub_769210();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText:v17];

  v18 = sub_765AD0();
  [v15 setTextColor:v18];

  return [v5 setNeedsLayout];
}

uint64_t sub_2BB88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2BBE0@<X0>(double *a2@<X8>)
{
  v46 = a2;
  v2 = sub_7656C0();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_BD88(&qword_93F918, &unk_7926C0);
  __chkstk_darwin(v43);
  v45 = &v37 - v4;
  v5 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v13 - 8);
  v41 = &v37 - v14;
  v15 = sub_BD88(&unk_94F1F0, &qword_782290);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v44 = sub_764930();
  v19 = *(v44 - 8);
  __chkstk_darwin(v44);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DAA0();
  swift_getKeyPath();
  v42 = v21;
  sub_768750();

  v22 = *(v16 + 8);
  v22(v18, v15);
  v23 = v40;
  sub_75DA50();
  sub_10A2C(v23, &qword_963790, qword_77EBC0);
  sub_2C88C(v9, v12);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_10A2C(v12, &qword_963790, qword_77EBC0);
    v24 = 1;
    v25 = v41;
  }

  else
  {
    swift_getKeyPath();
    v25 = v41;
    sub_768750();

    v22(v12, v15);
    v24 = 0;
  }

  v26 = v44;
  (*(v19 + 56))(v25, v24, 1, v44);
  v27 = v42;
  v28 = *(v43 + 48);
  v29 = v45;
  (*(v19 + 16))(v45, v42, v26);
  sub_2C8FC(v25, v29 + v28);
  if ((*(v19 + 48))(v29 + v28, 1, v26) == 1)
  {
    if ((*(v19 + 88))(v29, v26) == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v30 = v37;
      sub_75DA20();
      sub_765570();
      v32 = v31;
      (*(v38 + 8))(v30, v39);
      v33 = v46;
      v46[3] = &type metadata for CGFloat;
      v33[4] = &protocol witness table for CGFloat;
      *v33 = v32 * 0.5;
      sub_10A2C(v25, &qword_951BE0, &unk_782280);
      return (*(v19 + 8))(v27, v26);
    }

    else
    {
      v35 = v46;
      v46[3] = &type metadata for Double;
      v35[4] = &protocol witness table for Double;
      *v35 = 0;
      sub_10A2C(v25, &qword_951BE0, &unk_782280);
      v36 = *(v19 + 8);
      v36(v27, v26);
      return (v36)(v29, v26);
    }
  }

  else
  {
    sub_99FF4(v46);
    sub_10A2C(v25, &qword_951BE0, &unk_782280);
    (*(v19 + 8))(v27, v26);
    return sub_10A2C(v29, &qword_93F918, &unk_7926C0);
  }
}

uint64_t sub_2C1F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v12 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v14 = sub_766CA0();
    v15 = v14;
    v16 = qword_99FDE8;
    goto LABEL_13;
  }

  if (v12 == enum case for Shelf.ContentType.action(_:))
  {
    if (qword_93DD08 != -1)
    {
      swift_once();
    }

    v14 = sub_766CA0();
    v15 = v14;
    v16 = qword_99FE60;
LABEL_13:
    v17 = sub_BE38(v14, v16);
    a2[3] = v15;
    a2[4] = &protocol witness table for StaticDimension;
    v18 = sub_B1B4(a2);
    return (*(*(v15 - 8) + 16))(v18, v17, v15);
  }

  sub_9A330(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2C4D4@<X0>(void *a1@<X8>)
{
  v2 = sub_BD88(&unk_955F20, &unk_77EB30);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = sub_75ACC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_BD88(&unk_94F1F0, &qword_782290);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11 - 8];
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v10 + 8))(v12, v9);
  if (!*(v14 + 16))
  {

    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_8;
  }

  sub_134D8(v14 + 32, v15);

  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_BD88(&qword_93F908, &qword_79FE00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  if (!*(&v17 + 1))
  {
LABEL_8:
    result = sub_10A2C(&v16, &qword_93F910, &qword_77EB80);
    goto LABEL_9;
  }

  sub_10914(&v16, v19);
  sub_B170(v19, v19[3]);
  sub_760470();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_955F20, &unk_77EB30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (sub_75ACB0())
    {
      a1[3] = &type metadata for CGFloat;
      a1[4] = &protocol witness table for CGFloat;
      *a1 = 0x4020000000000000;
      (*(v6 + 8))(v8, v5);
      return sub_BEB8(v19);
    }

    (*(v6 + 8))(v8, v5);
  }

  result = sub_BEB8(v19);
LABEL_9:
  a1[3] = &type metadata for Double;
  a1[4] = &protocol witness table for Double;
  *a1 = 0;
  return result;
}

uint64_t sub_2C88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_963790, qword_77EBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_951BE0, &unk_782280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C96C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_93F920);
  sub_BE38(v4, qword_93F920);
  if (qword_93D4B0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E620);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

id sub_2CB40(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29FamilyPurchasesViewController_presenter) = a1;
  v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v15[4] = sub_2CD44;
  v15[5] = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_507AD4;
  v15[3] = &unk_880790;
  v5 = _Block_copy(v15);

  v6 = [v4 initWithSectionProvider:v5];
  _Block_release(v5);

  v7 = v6;

  v8 = sub_7212CC(v7, a2);

  sub_308D8(&unk_93F990, v9, type metadata accessor for FamilyPurchasesViewController, &unk_77EC98);
  v10 = v8;
  sub_760BD0();
  v11 = v10;
  sub_760C00();
  v12 = sub_769210();

  [v11 setTitle:v12];

  *(v11 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = 0;
  v13 = [v11 navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  return v11;
}

uint64_t sub_2CD44(uint64_t a1, uint64_t a2)
{
  v2 = sub_767B10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_767B70();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v2, v8);
  sub_767B40();
  sub_BE70(0, &unk_93FFE0, NSCollectionLayoutSection_ptr);
  v11 = sub_769C50();
  (*(v7 + 8))(v10, v6);
  return v11;
}

void sub_2CFF0(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FamilyPurchasesViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v5 = sub_76A010();
    [v4 setBackgroundColor:v5];

    v6 = [v2 collectionView];
    if (v6)
    {
      v7 = v6;
      v8 = sub_76A010();
      [v7 setBackgroundColor:v8];

      [v7 setAlwaysBounceVertical:1];
      type metadata accessor for LinkableHeaderCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_769BD0();
      v10 = sub_769210();

      [v7 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];

      type metadata accessor for AccountDetailCollectionViewCell(0);
      v11 = swift_getObjCClassFromMetadata();
      sub_769BD0();
      v12 = sub_769210();

      [v7 registerClass:v11 forCellWithReuseIdentifier:v12];

      type metadata accessor for DetailCollectionViewCell(0);
      v13 = swift_getObjCClassFromMetadata();
      v14 = UICollectionElementKindSectionHeader;
      sub_769BD0();
      v15 = sub_769210();

      [v7 registerClass:v13 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];

      sub_75A160();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2D2D8(void *a1)
{
  v2 = sub_75FAD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575D0();
  sub_760B60();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    sub_769BD0();
    v7 = sub_769210();

    v8.super.isa = sub_757550().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
LABEL_9:
    v13 = v9;

    return v13;
  }

  if (v6 == enum case for FamilyPurchasesSection.loggedInUser(_:) || v6 == enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    type metadata accessor for AccountDetailCollectionViewCell(0);
    sub_769BD0();
    v7 = sub_769210();

    v8.super.isa = sub_757550().super.isa;
    v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v8.super.isa];
    goto LABEL_9;
  }

  type metadata accessor for LinkableHeaderCollectionViewCell();
  sub_769BD0();
  v11 = sub_769210();

  isa = sub_757550().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

  (*(v3 + 8))(v5, v2);
  return v13;
}

void sub_2DDE4(uint64_t a1)
{
  v3 = sub_757500();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = [v1 collectionView];
  if (v6)
  {
    v14 = v6;
    if (sub_7574E0() < 1)
    {
    }

    else
    {
      v7 = objc_opt_self();
      (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
      v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = v14;
      (*(v4 + 32))(v9 + v8, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v10 = swift_allocObject();
      *(v10 + 16) = sub_2EBB4;
      *(v10 + 24) = v9;
      aBlock[4] = sub_2EC28;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1EB578;
      aBlock[3] = &unk_880808;
      v11 = _Block_copy(aBlock);
      v12 = v14;

      [v7 performWithoutAnimation:v11];

      _Block_release(v11);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
      }
    }
  }
}

void sub_2E080(void *a1)
{
  v2 = [a1 collectionViewLayout];
  [v2 invalidateLayout];

  sub_7574C0(v3);
  v5 = v4;
  [a1 reloadSections:v4];
}

id sub_2E11C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FamilyPurchasesViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_2E188()
{
  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_2E1E0(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
  }

  sub_32A6C0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_2E408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_2E420(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  sub_B170(a2, v10);
  sub_33964(v10);
  sub_766700();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_B170(a2 + 25, a2[28]);
  sub_7665A0();
  sub_1ED18((a2 + 15), v15, &unk_93F9C0, &qword_77EDB0);
  v12 = v16;
  if (v16)
  {
    sub_B170(v15, v16);
    sub_33964(v12);
    sub_766700();
    v11(v9, v6);
    sub_BEB8(v15);
  }

  else
  {
    sub_10A2C(v15, &unk_93F9C0, &qword_77EDB0);
  }

  sub_B170(a2 + 30, a2[33]);
  sub_7665B0();
  sub_B170(a2 + 20, a2[23]);
  sub_7665B0();
  sub_B170(a2 + 5, a2[8]);
  sub_766720();
  sub_B170(a2 + 10, a2[13]);
  sub_7666F0();
  return a3;
}

double sub_2E740(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6)
{
  v28 = a1;
  v10 = sub_762D10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C300 != -1)
  {
    swift_once();
  }

  sub_309E0(&unk_9436A0, v31);
  if ((a3 & 1) == 0)
  {
    sub_10A2C(v32, &unk_93F9C0, &qword_77EDB0);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
  }

  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D630 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  sub_BE38(v14, qword_99EA88);
  v15 = [a4 traitCollection];
  v27 = a4;
  v16 = v15;
  v17 = sub_769E10();

  sub_309E0(v31, v30);
  v18 = sub_7670D0();
  swift_allocObject();
  v19 = sub_767090();
  v30[23] = v18;
  v30[24] = &protocol witness table for LayoutViewPlaceholder;
  v30[20] = v19;
  v20 = sub_7653B0();
  v29[3] = v20;
  v29[4] = sub_308D8(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_B1B4(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  v22 = v17;
  sub_765C30();
  sub_BEB8(v29);

  sub_762D00();
  sub_762CE0();
  (*(v11 + 8))(v13, v10);
  swift_allocObject();
  v23 = sub_767090();
  v30[33] = v18;
  v30[34] = &protocol witness table for LayoutViewPlaceholder;
  v30[30] = v23;
  v24 = sub_2E420(v27, v30, a5, a6);

  sub_30A3C(v30);
  sub_30A90(v31);
  return v24;
}

uint64_t sub_2EAF0()
{
  v1 = sub_757500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_2EBB4()
{
  sub_757500();
  v1 = *(v0 + 16);

  sub_2E080(v1);
}

id sub_2EC30(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_769240() == a2 && v5 == a3)
  {

    goto LABEL_10;
  }

  v7 = sub_76A950();

  if (v7)
  {
LABEL_10:
    v10 = sub_769210();
    type metadata accessor for DetailCollectionViewCell(0);
    sub_769BD0();
    v11 = sub_769210();

    isa = sub_757550().super.isa;
    v13 = [a1 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:isa];

    return v13;
  }

  v8 = objc_allocWithZone(UICollectionViewCell);

  return [v8 init];
}

void sub_2ED6C(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_7652D0();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_75FAD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575D0();
  sub_760B60();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    type metadata accessor for LinkableHeaderCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      return;
    }

    v17 = v16;
    v18 = a1;
    if (sub_760BC0())
    {
      v19 = *(*&v17[OBJC_IVAR____TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label);
      v20 = sub_759CF0();
      sub_22A974(v20, sub_30AE4);
      v22 = v21;

      v23 = sub_759CE0();
      sub_4ED3B8(v23, 0, v22);

      [v17 setNeedsLayout];

      return;
    }

    goto LABEL_21;
  }

  if (v15 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v15 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    (*(v12 + 8))(v14, v11);
    return;
  }

  type metadata accessor for AccountDetailCollectionViewCell(0);
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = a1;
    [v2 pageMarginInsets];
    v29 = v28;
    v57 = sub_7575C0();
    v30 = sub_7575C0();
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_7575D0();
    v35 = sub_760B90();
    v55 = v31 == v35;
    v56 = v31 != v35;
    v36 = v27;
    [v2 pageMarginInsets];
    [v26 setLayoutMargins:?];

    sub_760BF0();
    v37 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    v38 = sub_769210();

    [v37 setText:v38];

    [v26 setNeedsLayout];
    v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showTopSeparatorView] = 1;
    [*&v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorView] setHidden:0];
    top = UIEdgeInsetsZero.top;
    if (v57)
    {
      v40 = v29;
    }

    else
    {
      v40 = left;
    }

    v41 = bottom;
    v42 = right;
    if (v57)
    {
      top = 0.0;
      v41 = 0.0;
      v42 = 0.0;
    }

    v43 = &v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_topSeparatorViewInsets];
    *v43 = top;
    v43[1] = v40;
    v43[2] = v41;
    v43[3] = v42;
    *(v43 + 32) = 0;
    v44 = v56;
    v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_showBottomSeparatorView] = v55;
    [*&v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:v44];
    v45 = &v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
    *v45 = UIEdgeInsetsZero.top;
    v45[1] = left;
    v45[2] = bottom;
    v45[3] = right;
    *(v45 + 32) = 0;
    v46 = type metadata accessor for Accessory(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v46 - 8) + 56))(v10, 0, 1, v46);
    sub_3F45F0(v10, *&v3[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph]);
    sub_10A2C(v10, &qword_93FF90, qword_77ECE0);
    [*&v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView] setHidden:0];
    v47 = &v26[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
    *v47 = 0x4030000000000000;
    v47[8] = 0;
    (*(v58 + 104))(v7, enum case for Artwork.Style.round(_:), v59);
    sub_7591B0();
    v48 = sub_760B70();
    if (v48)
    {
      v49 = v48;
      v50 = [objc_opt_self() mainScreen];
      [v50 scale];
      v52 = v51;

      v60.width = 36.0;
      v60.height = 36.0;
      UIGraphicsBeginImageContextWithOptions(v60, 0, v52);
      [v49 drawInRect:{0.0, 0.0, 36.0, 36.0}];
      v53 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    else
    {
      v53 = 0;
    }

    v18 = v53;
    sub_759190();
    [v26 setNeedsLayout];

LABEL_21:
  }
}

void sub_2F41C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  type metadata accessor for DetailCollectionViewCell(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (sub_769240() == a2 && v13 == a3)
  {
    v17 = a1;
  }

  else
  {
    v15 = sub_76A950();
    v35 = a1;

    if ((v15 & 1) == 0)
    {
      v16 = v35;

      return;
    }
  }

  v18 = [v12 contentView];
  v19 = objc_opt_self();
  v20 = [v19 clearColor];
  [v18 setBackgroundColor:v20];

  v21 = a1;
  v22 = [v19 clearColor];
  [v12 setBackgroundColor:v22];

  v12[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_isSelectable] = 0;
  [v12 setSelectedBackgroundView:0];
  sub_7575D0();
  sub_760BE0();
  v23 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_titleLabel;
  v24 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_titleLabel];
  if (v25)
  {
    v26 = sub_769210();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  if (qword_93D4B0 != -1)
  {
    swift_once();
  }

  v27 = sub_7666D0();
  v28 = sub_BE38(v27, qword_99E620);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v10, v28, v27);
  (*(v29 + 56))(v10, 0, 1, v27);
  sub_75BA40();
  v30 = *&v12[v23];
  v31 = [v19 systemGrayColor];
  [v30 setTextColor:v31];

  [v4 pageMarginInsets];
  v33 = v32;
  [v4 pageMarginInsets];
  [v12 setLayoutMargins:{0.0, v33, 0.0}];
}

id sub_2F7D4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = (&v57 - v7);
  __chkstk_darwin(v8);
  v63 = &v57 - v9;
  v10 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v10 - 8);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v57 - v13);
  __chkstk_darwin(v15);
  v65 = &v57 - v16;
  __chkstk_darwin(v17);
  v66 = &v57 - v18;
  v19 = sub_75FAD0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v24 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29FamilyPurchasesViewController_presenter];
  sub_7575D0();
  sub_760B60();
  v25 = (*(v20 + 88))(v22, v19);
  if (v25 == enum case for FamilyPurchasesSection.errorBanner(_:))
  {
    result = sub_760BC0();
    if (result)
    {
      v27 = sub_759CD0();
      v29 = v28;
      [a1 bounds];
      sub_2E740(v27, v29, 0, v2, v30, v31);
    }

    return result;
  }

  if (v25 != enum case for FamilyPurchasesSection.loggedInUser(_:) && v25 != enum case for FamilyPurchasesSection.familyMembers(_:))
  {
    return (*(v20 + 8))(v22, v19);
  }

  v33 = sub_760BF0();
  v59 = v34;
  v35 = v66;
  swift_storeEnumTagMultiPayload();
  v36 = *(v64 + 56);
  v36(v35, 0, 1, v4);
  v36(v65, 1, 1, v4);
  v37 = sub_7575C0();
  sub_7575D0();
  v38 = sub_760B90();
  v39 = (v38 - 1);
  if (__OFSUB__(v38, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v57 = v33;
  v58 = v37;
  v33 = v23;
  result = [v23 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v40 = result;
  [result bounds];

  v41 = [v23 traitCollection];
  sub_769A00();

  v42 = [v23 traitCollection];
  sub_1ED18(v66, v14, &qword_93FF90, qword_77ECE0);
  v43 = *(v64 + 48);
  if (v43(v14, 1, v4) == 1)
  {
    v24 = v42;
    v44 = v14;
LABEL_18:
    sub_10A2C(v44, &qword_93FF90, qword_77ECE0);
    goto LABEL_20;
  }

  v45 = v14;
  v46 = v63;
  sub_30920(v45, v63);
  sub_4E1514(v42);
  v47 = v61;
  swift_storeEnumTagMultiPayload();
  v48 = sub_4E32FC(v46, v47);
  sub_30984(v47);
  if (v48)
  {
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
  }

  v49 = v62;
  sub_1ED18(v65, v62, &qword_93FF90, qword_77ECE0);
  if (v43(v49, 1, v4) == 1)
  {
    v24 = v42;
    sub_30984(v46);
    v44 = v49;
    goto LABEL_18;
  }

  v50 = v60;
  sub_30920(v49, v60);
  v24 = v42;
  sub_4E1514(v42);
  sub_30984(v50);
  sub_30984(v46);
LABEL_20:
  v14 = v39;
  v39 = &selRef_setTextAlignment_;
  if (qword_93D020 != -1)
  {
LABEL_30:
    swift_once();
  }

  v51 = sub_7666D0();
  sub_BE38(v51, qword_953C18);
  v52 = sub_7653B0();
  v67[3] = v52;
  v67[4] = sub_308D8(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v53 = sub_B1B4(v67);
  (*(*(v52 - 8) + 104))(v53, enum case for Feature.measurement_with_labelplaceholder(_:), v52);
  sub_765C30();
  sub_BEB8(v67);
  sub_762CB0();
  if (qword_93D028 != -1)
  {
    swift_once();
  }

  v54 = sub_766CA0();
  sub_BE38(v54, qword_953C30);
  sub_766720();
  if (qword_93D030 != -1)
  {
    swift_once();
  }

  sub_BE38(v54, qword_953C48);
  sub_7666F0();
  v55 = [v33 v39[23]];
  sub_767500();

  if (v58 == v14)
  {
    v56 = [v33 v39[23]];
    sub_767500();
  }

  else
  {
  }

  sub_10A2C(v65, &qword_93FF90, qword_77ECE0);
  return sub_10A2C(v66, &qword_93FF90, qword_77ECE0);
}

id sub_30120(uint64_t a1)
{
  v2 = sub_766CA0();
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_76A920();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_93F9A0, qword_7959B0);
  __chkstk_darwin(v6 - 8);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = v35 - v9;
  v10 = sub_75FAD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v35 - v15;
  sub_760B60();
  (*(v11 + 104))(v13, enum case for FamilyPurchasesSection.familyMembers(_:), v10);
  sub_308D8(&qword_93F9A8, 255, &type metadata accessor for FamilyPurchasesSection, &protocol conformance descriptor for FamilyPurchasesSection);
  sub_769430();
  sub_769430();
  v17 = *(v11 + 8);
  v17(v13, v10);
  result = (v17)(v16, v10);
  if (v43[0] == v43[5])
  {
    sub_760BE0();
    v35[1] = v19;
    if (qword_93C1B8 != -1)
    {
      swift_once();
    }

    v20 = sub_BE38(v2, qword_93F920);
    v22 = v41;
    v21 = v42;
    v23 = *(v41 + 16);
    v23(v42, v20, v2);
    (*(v22 + 56))(v21, 0, 1, v2);
    result = [v1 view];
    if (result)
    {
      v24 = result;
      [result bounds];

      v25 = [v1 traitCollection];
      if (qword_93CAF0 != -1)
      {
        swift_once();
      }

      v26 = sub_7666D0();
      sub_BE38(v26, qword_9504F0);
      v27 = sub_7653B0();
      v43[3] = v27;
      v43[4] = sub_308D8(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v28 = sub_B1B4(v43);
      (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
      sub_765C30();
      sub_BEB8(v43);
      sub_762CB0();
      if (qword_93CAF8 != -1)
      {
        swift_once();
      }

      sub_BE38(v2, qword_950508);
      sub_766720();
      v29 = v36;
      sub_1ED18(v42, v36, &qword_93F9A0, qword_7959B0);
      v30 = *(v22 + 48);
      v31 = v30(v29, 1, v2);
      v32 = v40;
      if (v31 == 1)
      {
        if (qword_93CB00 != -1)
        {
          swift_once();
        }

        v33 = sub_BE38(v2, qword_950520);
        v23(v32, v33, v2);
        if (v30(v29, 1, v2) != 1)
        {
          sub_10A2C(v29, &qword_93F9A0, qword_7959B0);
        }
      }

      else
      {
        (*(v22 + 32))(v40, v29, v2);
      }

      v34 = v37;
      sub_766470();
      sub_766C70();
      (*(v38 + 8))(v34, v39);
      (*(v22 + 8))(v32, v2);

      return sub_10A2C(v42, &qword_93F9A0, qword_7959B0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_308D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_30920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_30984(uint64_t a1)
{
  v2 = type metadata accessor for Accessory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_30AF4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v53 = sub_760AD0();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v51 = v47 - v10;
  v11 = sub_7664A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_93D780 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  v61 = sub_BE38(v15, qword_99EE78);
  v50 = *(v15 - 8);
  v16 = v50 + 16;
  v17 = *(v50 + 16);
  v17(v14, v61, v15);
  v49 = v16;
  v57 = v17;
  v60 = enum case for FontSource.useCase(_:);
  v59 = v12[13];
  v59(v14);
  v47[2] = v12 + 13;
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v64);
  v58 = v12[2];
  v58(v18, v14, v11);
  v47[1] = v12 + 2;
  sub_766CB0();
  v56 = v12[1];
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_scalableHeight;
  v19 = v61;
  v48 = v15;
  v17(v14, v61, v15);
  v20 = v60;
  v21 = v59;
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v64);
  v23 = v58;
  v58(v22, v14, v11);
  sub_766CB0();
  v24 = v56;
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_scalableHorizontalPadding;
  v25 = v19;
  v26 = v57;
  v57(v14, v25, v15);
  v21(v14, v20, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v64);
  v23(v27, v14, v11);
  sub_766CB0();
  v24(v14, v11);
  v28 = v61;
  v29 = v48;
  v26(v14, v61, v48);
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v30 = sub_B1B4(v64);
  v58(v30, v14, v11);
  v31 = v62;
  sub_766CB0();
  v56(v14, v11);
  v32 = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_ageLabel;
  v33 = v51;
  v57(v51, v28, v29);
  (*(v50 + 56))(v33, 0, 1, v29);
  (*(v52 + 104))(v54, enum case for DirectionalTextAlignment.none(_:), v53);
  v34 = objc_allocWithZone(sub_75BB20());
  *&v31[v32] = sub_75BB10();
  v63.receiver = v31;
  v63.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v39 = v35;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  [v39 setBackgroundColor:v41];

  v42 = [v40 systemGrayColor];
  [v39 setTintColor:v42];

  v43 = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_ageLabel;
  v44 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_ageLabel];
  v45 = [v39 tintColor];

  [v44 setTextColor:v45];
  [*&v39[v43] setTextAlignment:1];
  [v39 addSubview:*&v39[v43]];

  return v39;
}

void sub_31304(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_76A920();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v5;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "drawRect:", a1, a2, a3, a4);
  sub_766470();
  sub_766CA0();
  sub_766700();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v30 = CGRectInset(v29, v16 * 0.5, v16 * 0.5);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v22 = objc_opt_self();
  sub_766470();
  sub_766700();
  v24 = v23;
  v17(v14, v11);
  v25 = [v22 _bezierPathWithArcRoundedRect:x cornerRadius:{y, width, height, v24}];
  [v25 setLineWidth:v16];
  v26 = [v5 tintColor];
  if (v26)
  {
    v27 = v26;
    [v26 setStroke];

    [v25 stroke];
  }

  else
  {
    __break(1u);
  }
}

double sub_315FC(double a1)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766470();
  sub_766CA0();
  sub_766700();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_ageLabel);
  sub_766470();
  sub_766700();
  v12 = v11;
  v9(v6, v3);
  v13 = fmax(v12, 1.0);
  sub_766470();
  sub_766700();
  v15 = v14;
  v9(v6, v3);
  v16 = fmax(v15, 1.0);
  [v10 sizeThatFits:{a1 - (v13 + v13), v8 - (v16 + v16)}];
  v18 = v17;
  sub_766470();
  sub_766700();
  v20 = v19;
  v9(v6, v3);
  sub_766470();
  sub_766700();
  v22 = v21;
  v9(v6, v3);
  return v18 + v20 + v20 + fmax(v22, 1.0) * 4.0;
}

uint64_t type metadata accessor for AgeRatingBadgeView(uint64_t a1)
{
  result = qword_93FA80;
  if (!qword_93FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_31AE0(uint64_t a1)
{
  result = sub_766CA0();
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

void sub_31B84()
{
  v0 = sub_760AD0();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v33 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v30 = v28 - v3;
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_93D780 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99EE78);
  v29 = *(v8 - 8);
  v10 = v29 + 16;
  v39 = *(v29 + 16);
  v40 = v8;
  v34 = v9;
  v39(v7, v9, v8);
  v28[1] = v10;
  v38 = enum case for FontSource.useCase(_:);
  v37 = v5[13];
  v37(v7);
  v41 = v5 + 13;
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v43);
  v36 = v5[2];
  v36(v11, v7, v4);
  sub_766CB0();
  v35 = v5[1];
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_scalableHeight;
  v12 = v9;
  v13 = v39;
  v39(v7, v12, v8);
  v14 = v38;
  v15 = v37;
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v43);
  v17 = v36;
  v36(v16, v7, v4);
  sub_766CB0();
  v18 = v35;
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_scalableHorizontalPadding;
  v13(v7, v34, v40);
  v15(v7, v14, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v19 = sub_B1B4(v43);
  v17(v19, v7, v4);
  v20 = v42;
  sub_766CB0();
  v18(v7, v4);
  v21 = v34;
  v23 = v39;
  v22 = v40;
  v39(v7, v34, v40);
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v24 = sub_B1B4(v43);
  v36(v24, v7, v4);
  sub_766CB0();
  v35(v7, v4);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_ageLabel;
  v26 = v30;
  v23(v30, v21, v22);
  (*(v29 + 56))(v26, 0, 1, v22);
  (*(v31 + 104))(v33, enum case for DirectionalTextAlignment.none(_:), v32);
  v27 = objc_allocWithZone(sub_75BB20());
  *(v20 + v25) = sub_75BB10();
  sub_76A840();
  __break(1u);
}

void sub_32114()
{
  qword_999FB8 = &type metadata for Double;
  unk_999FC0 = &protocol witness table for Double;
  qword_999FA0[0] = 0x4030000000000000;
  qword_999FE8 = &type metadata for Double;
  unk_999FF0 = &protocol witness table for Double;
  qword_999FD0 = 0x4020000000000000;
  byte_999FC8 = 1;
}

char *sub_32150(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_rateAction;
  v19 = sub_BD88(&qword_93FAE0, &qword_77ED78);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_isSingleColumn] = 0;
  if (qword_93D758 != -1)
  {
    swift_once();
  }

  v20 = sub_7666D0();
  v21 = sub_BE38(v20, qword_99EE00);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v17, v21, v20);
  (*(v22 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_titleLabel] = sub_75BB10();
  v24 = type metadata accessor for StarRatingControl();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating] = 0;
  *&v25[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_lastSentRating] = 0;
  v26 = &v25[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_touchOutsideMargin];
  *v26 = xmmword_77ED30;
  *(v26 + 1) = xmmword_77ED30;
  v46.receiver = v25;
  v46.super_class = v24;
  v27 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setContentMode:3];
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating] = 0;

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_ratingControl] = v29;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_titleLabel;
  v37 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_titleLabel];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v38 = v37;
  v39 = sub_769FD0();
  [v38 setTextColor:v39];

  [v35 addSubview:*&v35[v36]];
  v40 = OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_ratingControl;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_ratingControl]];
  v41 = *&v35[v40];
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v41;

  v43 = sub_76A1F0();
  [v42 addAction:v43 forControlEvents:4096];

  return v35;
}

void *sub_3267C(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = sub_BD88(&qword_93FAE8, &qword_77EDA8);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = sub_BD88(&qword_93FAE0, &qword_77ED78);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_rateAction;
    swift_beginAccess();
    sub_338F4(v13 + v14, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_10A2C(v7, &qword_93FAE8, &qword_77EDA8);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_75B470();
      sub_758E00();

      sub_75B460();
      v15 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();

      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v4, 1, v15) == 1)
      {
        (*(v9 + 8))(v11, v8);

        return sub_10A2C(v4, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_75B470();
        v17 = sub_75B460();
        sub_32A858(v18[1], 1, v17, v4);

        (*(v9 + 8))(v11, v8);

        return (*(v16 + 8))(v4, v15);
      }
    }
  }

  return result;
}

uint64_t sub_32B00()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_767030();
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v53 = &v48 - v13;
  v14 = sub_766D70();
  v56 = *(v14 - 8);
  v57 = v14;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v55 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v15);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_titleLabel];
  sub_75D650();
  v19 = v18;
  v58 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_ratingControl];
  v61[0] = v58;
  v59 = type metadata accessor for StarRatingControl();
  sub_7665D0();
  v20 = &selRef_setTextAlignment_;
  v21 = [v1 traitCollection];
  if (qword_93C1C0 != -1)
  {
    swift_once();
  }

  if (sub_769A00() & 1) != 0 || (sub_7699D0())
  {

    sub_BEB8(v63);
  }

  else
  {
    v52 = v3;
    v49 = "ion";
    v65._object = 0x80000000007C9F90;
    v65._countAndFlagsBits = 0xD000000000000016;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v35 = sub_75B750(v65, v67);
    v50 = v36;
    v51 = v35;
    sub_767020();
    if (qword_93D758 != -1)
    {
      swift_once();
    }

    v37 = sub_7666D0();
    sub_BE38(v37, qword_99EE00);
    sub_766FF0();
    v38 = *(v54 + 8);
    v39 = v5;
    v40 = v52;
    v38(v39, v52);
    sub_767010();
    v38(v8, v40);
    sub_767000();
    v38(v11, v40);
    sub_766D50();
    v41 = v55;
    sub_766D90();
    sub_766D60();
    v43 = v42;
    sub_B170(v63, v63[3]);
    sub_7673F0();
    v45 = v44;
    sub_B170(qword_999FA0, qword_999FB8);
    sub_766710();
    v47 = v46;

    (*(v56 + 8))(v41, v57);
    sub_BEB8(v63);
    v20 = &selRef_setTextAlignment_;
    if (v19 >= v45 + v43 + v47)
    {
      v22._object = (v49 | 0x8000000000000000);
      v22._countAndFlagsBits = 0xD000000000000016;
      goto LABEL_7;
    }
  }

  v22._countAndFlagsBits = 0x525F4F545F504154;
  v22._object = 0xEB00000000455441;
LABEL_7:
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_75B750(v22, v66);
  v23 = sub_769210();

  [v17 setText:v23];

  sub_337B0(qword_999FA0, v61);
  v62 = v1[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_isSingleColumn];
  sub_337B0(v61, v63);
  v63[14] = sub_75BB20();
  v63[15] = &protocol witness table for UILabel;
  v63[11] = v17;
  v60 = v58;
  v24 = v17;
  sub_7665D0();
  sub_3380C(v61);
  [v1 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v1 v20[23]];
  sub_5AA76C(v33, v26, v28, v30, v32);

  return sub_33860(v63);
}

double sub_330D8(double a1, double a2)
{
  v3 = v2;
  v5 = sub_767030();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v37 - v9;
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  v17 = sub_766D70();
  v40 = *(v17 - 8);
  v41 = v17;
  __chkstk_darwin(v17);
  v38 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C1C0 != -1)
  {
    swift_once();
  }

  sub_337B0(qword_999FA0, v43);
  v44 = v2[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_isSingleColumn];
  sub_337B0(v43, v45);
  v19 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_titleLabel];
  v45[14] = sub_75BB20();
  v45[15] = &protocol witness table for UILabel;
  v45[11] = v19;
  v42 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  v20 = v19;
  sub_7665D0();
  sub_3380C(v43);
  v21 = [v3 traitCollection];
  if (sub_769A00() & 1) != 0 || (sub_7699D0())
  {
    v22 = 1;
  }

  else
  {
    v37[3] = v16;
    v47._object = 0x80000000007C9F90;
    v47._countAndFlagsBits = 0xD000000000000016;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v23 = sub_75B750(v47, v48);
    v37[1] = v24;
    v37[2] = v23;
    sub_767020();
    if (qword_93D758 != -1)
    {
      swift_once();
    }

    v25 = sub_7666D0();
    sub_BE38(v25, qword_99EE00);
    sub_766FF0();
    v26 = *(v39 + 8);
    v26(v7, v5);
    sub_767010();
    v26(v10, v5);
    sub_767000();
    v26(v13, v5);
    sub_766D50();
    v27 = v38;
    sub_766D90();
    sub_766D60();
    v29 = v28;
    sub_B170(v46, v46[3]);
    sub_7673F0();
    v31 = v30;
    sub_B170(v45, v45[3]);
    sub_766710();
    v33 = v32;
    (*(v40 + 8))(v27, v41);
    v22 = v31 + v29 + v33 > a1;
  }

  sub_5AA3E4(v22, v43);
  sub_B170(v43, v43[3]);
  sub_7673F0();
  v35 = v34;

  sub_BEB8(v43);
  sub_33860(v45);
  return v35;
}

uint64_t type metadata accessor for ProductTapToRateView(uint64_t a1)
{
  result = qword_93FAC8;
  if (!qword_93FAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_336A4(uint64_t a1)
{
  sub_3374C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3374C(uint64_t a1)
{
  if (!qword_93FAD8)
  {
    sub_133D8(&qword_93FAE0, &qword_77ED78);
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_93FAD8);
    }
  }
}

uint64_t sub_338B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_338F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FAE8, &qword_77EDA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LinkableHeaderViewLayout.init(metrics:topSeparator:text:bottomSeparator:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = a1[7];
  a5[6] = a1[6];
  a5[7] = v8;
  v9 = a1[9];
  a5[8] = a1[8];
  a5[9] = v9;
  v10 = a1[3];
  a5[2] = a1[2];
  a5[3] = v10;
  v11 = a1[5];
  a5[4] = a1[4];
  a5[5] = v11;
  v12 = a1[1];
  *a5 = *a1;
  a5[1] = v12;
  sub_10914(a2, (a5 + 10));
  sub_10914(a3, a5 + 200);

  return sub_10914(a4, (a5 + 15));
}

uint64_t AppPromotionFormattedDateLayout.Metrics.textTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1);

  return sub_10914(a1, v1);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.availabilityLabelBottomSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 40));

  return sub_10914(a1, v1 + 40);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.availabilityLabelTrailingMargin.setter(__int128 *a1)
{
  sub_BEB8((v1 + 80));

  return sub_10914(a1, v1 + 80);
}

uint64_t sub_33B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F9C0, &qword_77EDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_33BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F9C0, &qword_77EDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double LinkableHeaderViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_34154(a1, v3, a2, a3);
}

uint64_t LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_76A920();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v5 + 20, v5[23]);
  sub_7665B0();
  v35 = v16;
  v36 = v15;
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  MinY = CGRectGetMinY(v39);
  sub_B170(v6 + 20, v6[23]);
  sub_766530();
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetWidth(v40);
  sub_B170(v6, v6[3]);
  sub_766470();
  sub_766700();
  (*(v12 + 8))(v14, v11);
  v33 = a2;
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetHeight(v41);
  sub_B170(v6 + 25, v6[28]);
  sub_7665A0();
  v19 = v18;
  v21 = v20;
  *&v32[1] = a3;
  v32[2] = v22;
  v37 = v23;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v24 = a5;
  v42.size.height = a5;
  v25 = CGRectGetMidX(v42) + v19 * -0.5;
  v43.origin.x = MinX;
  v43.size.height = v35;
  v43.origin.y = MinY;
  v43.size.width = v36;
  MaxY = CGRectGetMaxY(v43);
  sub_B170(v6 + 5, v6[8]);
  sub_766720();
  v28 = MaxY + v27;
  sub_B170(v6 + 25, v6[28]);
  sub_766530();
  sub_B170(v6 + 30, v6[33]);
  sub_7665B0();
  v35 = v30;
  v36 = v29;
  v44.origin.x = v33;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = v24;
  CGRectGetMinX(v44);
  v45.origin.x = v25;
  v45.origin.y = v28;
  v45.size.width = v19;
  v45.size.height = v21;
  CGRectGetMaxY(v45);
  sub_B170(v6 + 10, v6[13]);
  sub_7666F0();
  sub_B170(v6 + 30, v6[33]);
  sub_766530();
  return sub_7664B0();
}

double sub_34154(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2, a2[3]);
  sub_766470();
  sub_766700();
  v10 = *(v7 + 8);
  v10(v9, v6);
  sub_B170(a2 + 25, a2[28]);
  sub_7665A0();
  sub_33B80((a2 + 15), v13);
  if (v14)
  {
    sub_B170(v13, v14);
    sub_766470();
    sub_766700();
    v10(v9, v6);
    sub_BEB8(v13);
  }

  else
  {
    sub_34630(v13);
  }

  sub_B170(a2 + 30, a2[33]);
  sub_7665B0();
  sub_B170(a2 + 20, a2[23]);
  sub_7665B0();
  sub_B170(a2 + 5, a2[8]);
  sub_766720();
  sub_B170(a2 + 10, a2[13]);
  sub_7666F0();
  return a3;
}

uint64_t sub_34444(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_34464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_344AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_34544(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_34570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_345B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_34630(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F9C0, &qword_77EDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_3469C()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99A008);
  sub_BE38(v0, qword_99A008);
  sub_7666A0();
  return result;
}

uint64_t sub_346F0()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_76A070();
  qword_99A020 = result;
  return result;
}

uint64_t sub_34734()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_76A030();
  qword_99A028 = result;
  return result;
}

uint64_t sub_347FC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_7666D0();
  sub_161DC(v8, a2);
  v9 = sub_BE38(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v8, a4);
  v11 = *(*(v8 - 8) + 16);

  return v11(v9, v10, v8);
}

uint64_t sub_348C4()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99A078);
  sub_BE38(v4, qword_99A078);
  if (qword_93C1E0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99A030);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_34A98()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99A090);
  sub_BE38(v4, qword_99A090);
  if (qword_93C1E8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99A048);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_34C6C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99A0A8);
  sub_BE38(v4, qword_99A0A8);
  if (qword_93C1F0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99A060);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

id sub_34E40(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  if (a2)
  {
    v5 = sub_769210();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

uint64_t sub_34F24(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v5 = sub_76A1C0();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void (*sub_34FE8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_3503C;
}

void sub_3503C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v9 = *a1;
    sub_3731C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [v2 contentView];
      [v5 addSubview:v4];
    }

    [v2 setNeedsLayout];
  }

  else
  {
    v9 = *a1;
    sub_3731C();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v2 contentView];
      [v8 addSubview:v7];
    }

    [v2 setNeedsLayout];
  }
}

id sub_35168()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v7)
  {
    sub_75CD70();
    (*(v3 + 104))(v6, enum case for CornerStyle.arc(_:), v2);
    v8 = v7;
    v9 = sub_75CD60();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconBackingView;
    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v1[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v1[v10] = v9;
    v16 = v9;

    sub_35328();
    v17 = *&v1[v10];
    if (v17)
    {
      v18 = v17;
      [v18 addSubview:v8];
    }
  }

  else
  {
    v13 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconBackingView;
    v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v1[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v1[v13] = 0;

    sub_35328();
  }

  return [v1 setNeedsLayout];
}

id sub_35328()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconBackingView];
  if (v1)
  {
    v2 = v1;
    [v2 setClipsToBounds:1];
    if (qword_93C1D8 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_99A028];
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 contentView];
      [v6 addSubview:v5];
    }
  }

  return [v0 setNeedsLayout];
}

id sub_35458()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v1)
  {
    v1[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_showBorder] = 1;
    v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_imageBorderView];
    v3 = v1;
    [v2 setHidden:0];
    v4 = v3;
    [v4 _setCornerRadius:20.0];
    [v4 setNeedsLayout];
    if (qword_93C1D0 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_99A020];

    v5 = [v0 contentView];
    [v5 addSubview:v4];
  }

  return [v0 setNeedsLayout];
}

char *sub_35588(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v61 = sub_760AD0();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_759950();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v16 + 104))(v19, enum case for SystemImage.appstore(_:), v15, v17);
  v21 = sub_759930();
  (*(v16 + 8))(v19, v15);
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  *&v5[v20] = v22;
  v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView] = 0;
  if (qword_93C1E0 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99A030);
  v25 = *(v23 - 8);
  v58 = *(v25 + 16);
  v59 = v25 + 16;
  v58(v14, v24, v23);
  v57 = *(v25 + 56);
  v57(v14, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v10 + 104);
  v27(v60, enum case for DirectionalTextAlignment.none(_:), v61);
  v28 = sub_75BB20();
  v29 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialTypeLabel] = sub_75BB10();
  if (qword_93C1E8 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v23, qword_99A048);
  v58(v14, v30, v23);
  v57(v14, 0, 1, v23);
  v27(v60, v26, v61);
  v31 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_titleLabel] = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_subtitleLabel] = sub_75BB00();
  v32 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v62.receiver = v5;
  v62.super_class = v32;
  v33 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_subtitleLabel;
  v39 = qword_93C1F0;
  v40 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_BE38(v23, qword_99A060);
  v58(v14, v41, v23);
  v57(v14, 0, 1, v23);
  sub_75BA40();

  [*&v37[v38] setLineBreakMode:4];
  v42 = [v37 contentView];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialTypeLabel;
  [v42 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialTypeLabel]];

  v44 = [v37 contentView];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialIcon;
  [v44 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialIcon]];

  v46 = [v37 contentView];
  [v46 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_titleLabel]];

  v47 = [v37 contentView];
  [v47 addSubview:*&v37[v38]];

  v48 = *&v37[v43];
  v49 = [v37 tintColor];
  [v48 setTextColor:v49];

  v50 = *&v37[v38];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v51 = v50;
  v52 = sub_769FF0();
  [v51 setTextColor:v52];

  v53 = *&v37[v45];
  v54 = [v37 tintColor];

  [v53 setTintColor:v54];
  return v37;
}

void sub_35D20()
{
  v1 = v0;
  v174 = sub_76A920();
  v163 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = COERCE_DOUBLE(sub_766CA0());
  v167 = *(*&v181 - 8);
  __chkstk_darwin(*&v181);
  v175 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_93FB80, &unk_786F10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v159 = (&v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  *&v178 = &v156 - v8;
  __chkstk_darwin(v9);
  v11 = (&v156 - v10);
  __chkstk_darwin(v12);
  v172 = (&v156 - v13);
  __chkstk_darwin(v14);
  v16 = &v156 - v15;
  v17 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v184.receiver = v0;
  v184.super_class = v17;
  objc_msgSendSuper2(&v184, "layoutSubviews");
  v18 = [v0 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_BD88(&qword_93FB88, qword_77F050);
  v27 = *(v5 + 72);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *&v29 = COERCE_DOUBLE(swift_allocObject());
  v168 = v28;
  v176 = *&v29;
  v30 = v29 + v28;
  v31 = *(v4 + 48);
  v160 = v1;
  v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  *(v29 + v28) = v32;
  v33 = qword_93C1F8;
  v171 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v181;
  v35 = sub_BE38(*&v181, qword_99A078);
  v179 = *(v167 + 16);
  (*&v179)(v30 + v31, v35, *&v34);
  v36 = *(v4 + 48);
  v37 = *&v160[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_titleLabel];
  *(v30 + *&v27) = v37;
  v38 = v4;
  v39 = qword_93C200;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = v181;
  v42 = sub_BE38(*&v181, qword_99A090);
  (*&v179)(v30 + *&v27 + v36, v42, *&v41);
  v180 = v27;
  v43 = (v30 + 2 * *&v27);
  v177 = v38;
  v44 = *(v38 + 48);
  v45 = *&v160[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_subtitleLabel];
  *v43 = v45;
  v46 = qword_93C208;
  v47 = v45;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = v181;
  v49 = sub_BE38(*&v181, qword_99A0A8);
  (*&v179)(&v43[v44], v49, *&v48);
  *&v179 = v167 + 8;
  v50 = _swiftEmptyArrayStorage;
  v51 = 3;
  v170 = v30;
  v52 = v30;
  do
  {
    sub_373F0(v52, v16);
    sub_373F0(v16, v11);
    v54 = *v11;
    v55 = *(v177 + 48);
    v56 = [*v11 isHidden];

    v57 = **&v179;
    (**&v179)(v11 + v55, COERCE_DOUBLE(*&v181));
    if (v56)
    {
      sub_374D0(v16);
      v53 = v180;
    }

    else
    {
      sub_37460(v16, *&v178);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_143B7C(0, *(v50 + 2) + 1, 1);
        v50 = v183[0];
      }

      v60 = *(v50 + 2);
      v59 = *(v50 + 3);
      if (v60 >= v59 >> 1)
      {
        sub_143B7C((v59 > 1), v60 + 1, 1);
        v50 = v183[0];
      }

      *(v50 + 2) = v60 + 1;
      v53 = v180;
      sub_37460(*&v178, v168 + v50 + v60 * *&v180);
    }

    v52 += *&v53;
    --v51;
  }

  while (v51);
  swift_setDeallocating();
  v61 = v177;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = *(v50 + 2);
  v63 = v160;
  v165 = v24;
  v166 = v26;
  v176 = v20;
  if (v62)
  {
    v170 = *(v61 + 48);
    v64 = sub_BE70(0, &qword_94AB00, NSObject_ptr);
    v164 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_showEditorialIcon;
    v161 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialIcon;
    v65 = v168 + v50;
    v168 = (v167 + 32);
    v169 = v64;
    v167 = *&v163 + 8;
    v66 = 0.0;
    v157 = v65;
    v158 = v62;
    v67 = *&v181;
    v68 = v175;
    do
    {
      v69 = v172;
      sub_373F0(v65, v172);
      v70 = *v69;
      (*v168)(v68, v69 + v170, v67);
      v71 = v70;
      [v71 sizeThatFits:{v24, v26}];
      v74 = v73;
      if (v72 >= v24)
      {
        v72 = v24;
      }

      v178 = v72;
      v75 = [v63 traitCollection];
      v76 = v63;
      v77 = v173;
      sub_766470();
      sub_766C70();
      v79 = v78;

      v80 = v77;
      v63 = v76;
      (*v167)(v80, v174);
      v186.origin.x = v20;
      v186.origin.y = v22;
      v186.size.width = v24;
      v186.size.height = v26;
      v81 = v66 + CGRectGetMinY(v186);
      [v71 firstBaselineFromTop];
      v83 = v81 + v79 - v82;
      if ((sub_76A1C0() & 1) != 0 && v76[v164] == 1)
      {
        v84 = *&v76[v161];
        [v84 bounds];
        v85 = v24;
        v87 = v86;
        v89 = v88;
        v20 = v176;
        v187.origin.x = v176;
        v187.origin.y = v22;
        v187.size.width = v85;
        v187.size.height = v166;
        MinX = CGRectGetMinX(v187);
        v163 = v74;
        v90 = v74 * 0.5 + v83;
        v91 = v22;
        v92 = v90 - v89 * 0.5;
        sub_769D20();
        [v84 setFrame:?];
        v188.origin.y = v92;
        v22 = v91;
        v188.origin.x = MinX;
        v188.size.width = v87;
        v24 = v165;
        v188.size.height = v89;
        v26 = v166;
        CGRectGetMaxX(v188);
      }

      else
      {
        v20 = v176;
        v185.origin.x = v176;
        v185.origin.y = v22;
        v185.size.width = v24;
        v185.size.height = v26;
        CGRectGetMinX(v185);
      }

      sub_769D20();
      [v71 setFrame:?];

      v68 = v175;
      v67 = *&v181;
      v57(v175, *&v181);
      v66 = v66 + v79;
      v65 += *&v180;
      --v62;
    }

    while (v62);
    if (v158 > *(v50 + 2))
    {
      __break(1u);
      return;
    }

    v93 = v159;
    sub_373F0(v157 + (v158 - 1) * *&v180, v159);

    v94 = *v93;
    v95 = *(v177 + 48);
    [*v93 frame];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;

    v189.origin.x = v97;
    v189.origin.y = v99;
    v189.size.width = v101;
    v189.size.height = v103;
    v24 = v165;
    v26 = v166;
    MaxY = CGRectGetMaxY(v189);
    v57(v93 + v95, v67);
  }

  else
  {

    MaxY = 0.0;
    v67 = *&v181;
  }

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  sub_BE38(v67, qword_99FDE8);
  v105 = [v63 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_77D9F0;
  *(v106 + 32) = v105;
  v107 = v105;
  v108 = sub_7671E0();
  sub_7666E0();
  v110 = v109;

  v111 = MaxY + v110;
  v112 = v176;
  v190.origin.x = v176;
  v190.origin.y = v22;
  v190.size.width = v24;
  v190.size.height = v26;
  v181 = CGRectGetMinX(v190);
  v191.origin.x = v112;
  v191.origin.y = v22;
  v191.size.width = v24;
  v191.size.height = v26;
  v113 = CGRectGetMaxY(v191) - (MaxY + v110);
  if (qword_93C1C8 != -1)
  {
    swift_once();
  }

  v114 = sub_766690();
  sub_BE38(v114, qword_99A008);
  sub_766650();
  v116 = v115;
  v192.origin.x = v112;
  v192.origin.y = v22;
  v192.size.width = v24;
  v192.size.height = v26;
  Width = CGRectGetWidth(v192);
  sub_766660();
  if (Width >= v116)
  {
    v119 = v116;
  }

  else
  {
    v119 = Width;
  }

  if (Width >= v116)
  {
    v118 = v113;
  }

  v120 = v119;
  v121 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  v122 = v118;
  if (v121)
  {
    v123 = v121;
    sub_769D20();
    sub_759170();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v125 = Strong;
    sub_769D20();
    [v125 setFrame:?];
  }

  v126 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v126)
  {
    v127 = v126;
    sub_769D20();
    v129 = v128;
    v131 = v130;
    v132 = v122;
    v134 = v133;
    v136 = v135;
    v137 = type metadata accessor for ArtworkGrid();
    v182.receiver = v127;
    v182.super_class = v137;
    v138 = v134;
    v122 = v132;
    objc_msgSendSuper2(&v182, "setFrame:", v129, v131, v138, v136);
    sub_44CB80();
    [v127 setNeedsLayout];
  }

  v139 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v139)
  {
    v140 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v140)
    {
      v141 = v139;
      v142 = v140;
      v63 = v160;
      [v142 setFrame:{v181, v111, v120, v122}];
      [v142 bounds];
      v144 = v143;
      v146 = v145;
      v178 = v122;
      v148 = v147;
      v150 = v149;
      sub_7591E0();
      v180 = v111;
      v193.origin.x = v144;
      v193.origin.y = v146;
      v193.size.width = v148;
      v193.size.height = v150;
      CGRectGetMidX(v193);
      v179 = v120;
      v194.origin.x = v144;
      v194.origin.y = v146;
      v194.size.width = v148;
      v122 = v178;
      v194.size.height = v150;
      CGRectGetMidY(v194);
      v120 = v179;
      v111 = v180;
      sub_769D20();
      sub_759170();
    }
  }

  v151 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v151)
  {
    v152 = v151;
    sub_26DAA8(v183);
    sub_270D88(v63, v183, v120, v122);
    v179 = v22;
    v180 = v153;
    v154 = v181;
    sub_37538(v183);
    v195.origin.x = v154;
    v195.origin.y = v111;
    v195.size.width = v120;
    v195.size.height = v122;
    CGRectGetMinX(v195);
    v196.size.height = v122;
    v196.origin.x = v154;
    v196.origin.y = v111;
    v196.size.width = v120;
    CGRectGetMinY(v196);
    v155 = v152;
    sub_769D20();
    [v155 setFrame:?];
  }
}

id sub_36BB8(__n128 a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v18, "prepareForReuse");
  v2 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  sub_3731C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

  [v1 setNeedsLayout];
  v8 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView;
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *&v1[v8];
  }

  else
  {
    v10 = 0;
  }

  *&v1[v8] = 0;

  sub_35168();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_artworkGrid;
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v1[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v1[v11] = 0;

  sub_35458();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v1[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v1[v14] = 0;

  return [v1 setNeedsLayout];
}

id sub_36DCC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_36F00(void *a1)
{
  sub_3731C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_36FB0(uint64_t **a1))()
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
  v2[4] = sub_34FE8(v2);
  return sub_21028;
}

void sub_37020()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_268E5C();
  }
}

uint64_t sub_37098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_370EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_37158(uint64_t *a1, uint64_t a2))()
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
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_372D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_3731C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_372D4(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    Strong = v1;
  }

  v2 = sub_34F24(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_373F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FB80, &unk_786F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_37460(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FB80, &unk_786F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_374D0(uint64_t a1)
{
  v2 = sub_BD88(&qword_93FB80, &unk_786F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_3758C()
{
  v1 = sub_759950();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
  v7 = sub_759930();
  (*(v2 + 8))(v5, v1);
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView) = 0;
  sub_76A840();
  __break(1u);
}

char *sub_3774C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v94 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v94);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_760AD0();
  v91 = *(v104 - 8);
  __chkstk_darwin(v104);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v89 = &v83 - v12;
  v13 = sub_757CA0();
  __chkstk_darwin(v13 - 8);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_940AD0, &unk_78F910);
  __chkstk_darwin(v15 - 8);
  v87 = &v83 - v16;
  v17 = sub_7664A0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v4;
  v85 = &v4[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_metrics];
  if (qword_93D8D0 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99F268);
  v90 = *(v21 - 8);
  v23 = *(v90 + 16);
  v86 = v22;
  v24 = v90 + 16;
  v103 = v23;
  (v23)(v20);
  v25 = v18[13];
  LODWORD(v102) = enum case for FontSource.useCase(_:);
  v107 = v25;
  v26 = v18 + 13;
  v25(v20);
  v101 = sub_766CA0();
  v124[3] = v101;
  v124[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v124);
  v122 = v17;
  v123 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v121);
  v100 = v18[2];
  v100(v27, v20, v17);
  sub_766CB0();
  v28 = v18[1];
  v98 = v18 + 1;
  v99 = v28;
  v28(v20, v17);
  if (qword_93D8C0 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v21, qword_99F238);
  v106 = v24;
  v30 = v103;
  v103(v20, v29, v21);
  (v107)(v20, v102, v17);
  v122 = v101;
  v123 = &protocol witness table for StaticDimension;
  sub_B1B4(v121);
  v119 = v17;
  v120 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v118);
  v100(v31, v20, v17);
  sub_766CB0();
  v99(v20, v17);
  v97 = v21;
  v30(v20, v29, v21);
  v32 = v102;
  (v107)(v20, v102, v17);
  v96 = v26;
  v33 = v101;
  v119 = v101;
  v120 = &protocol witness table for StaticDimension;
  sub_B1B4(v118);
  v116 = v17;
  v117 = &protocol witness table for FontSource;
  v34 = sub_B1B4(v115);
  v100(v34, v20, v17);
  sub_766CB0();
  v99(v20, v17);
  v84 = v29;
  v30(v20, v29, v21);
  (v107)(v20, v32, v17);
  v116 = v33;
  v117 = &protocol witness table for StaticDimension;
  sub_B1B4(v115);
  v113 = v17;
  v114 = &protocol witness table for FontSource;
  v35 = sub_B1B4(v112);
  v36 = v100;
  v100(v35, v20, v17);
  sub_766CB0();
  v37 = v99;
  v99(v20, v17);
  v113 = sub_766970();
  v114 = &protocol witness table for ZeroDimension;
  sub_B1B4(v112);
  sub_766960();
  v30(v20, v29, v97);
  (v107)(v20, v102, v17);
  v111[3] = v101;
  v111[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v111);
  v110[3] = v17;
  v110[4] = &protocol witness table for FontSource;
  v38 = sub_B1B4(v110);
  v36(v38, v20, v17);
  sub_766CB0();
  v37(v20, v17);
  v109 = 0x4034000000000000;
  v110[0] = 0x4052000000000000;
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592D0();
  sub_757790();
  v39 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_divider;
  v40 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v41 = v105;
  *&v105[v39] = v40;
  v42 = v41;
  v43 = v88;
  sub_757C20();
  v44 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v42[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_inAppPurchaseView] = sub_243D30(v43, 0);
  v45 = v42;
  v46 = v89;
  v47 = v97;
  v48 = v103;
  v103(v89, v86, v97);
  v101 = *(v90 + 56);
  v101(v46, 0, 1, v47);
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v49 = v92;
  v107 = *(v91 + 104);
  v107(v92);
  v102 = sub_75BB20();
  v50 = objc_allocWithZone(v102);
  *&v45[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_titleLabel] = sub_75BB10();
  v51 = v84;
  v52 = v97;
  v48(v46, v84, v97);
  v53 = v101;
  v101(v46, 0, 1, v52);
  v54 = v100;
  (v107)(v49, v100, v104);
  v55 = objc_allocWithZone(v102);
  *&v105[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_descriptionLabel] = sub_75BB10();
  v103(v46, v51, v52);
  v53(v46, 0, 1, v52);
  (v107)(v49, v54, v104);
  v56 = objc_allocWithZone(v102);
  v57 = sub_75BB10();
  v58 = v105;
  *&v105[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_messageLabel] = v57;
  *&v58[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_lockupView] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v108.receiver = v58;
  v108.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v63 = v59;
  [v63 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v63 setScrollEnabled:1];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_divider;
  v65 = qword_93D2D8;
  v66 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_divider];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_BE38(v94, qword_99E220);
  v68 = v95;
  sub_395C4(v67, v95);
  v69 = &v66[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  sub_39628(v68, v69);
  swift_endAccess();
  v70 = &v66[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v71 = *(v69 + 1);
  *v70 = *v69;
  *(v70 + 1) = v71;
  [v66 setNeedsLayout];
  [v66 setNeedsLayout];

  sub_3968C(v68);
  v72 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_titleLabel;
  [*&v63[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_titleLabel] setTextAlignment:1];
  v73 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_descriptionLabel;
  [*&v63[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_descriptionLabel] setTextAlignment:1];
  v74 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_messageLabel;
  [*&v63[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_messageLabel] setTextAlignment:1];
  v75 = *&v63[v72];
  sub_396E8();
  v76 = v75;
  v77 = sub_769FD0();
  [v76 setTextColor:v77];

  v78 = *&v63[v73];
  v79 = sub_769FD0();
  [v78 setTextColor:v79];

  v80 = *&v63[v74];
  v81 = sub_769FF0();
  [v80 setTextColor:v81];

  [v63 addSubview:*&v63[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_inAppPurchaseView]];
  [v63 addSubview:*&v63[v72]];
  [v63 addSubview:*&v63[v73]];
  [v63 addSubview:*&v63[v64]];
  [v63 addSubview:*&v63[v74]];
  [v63 addSubview:*&v63[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_lockupView]];

  return v63;
}

uint64_t sub_384BC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  sub_38EE0(a1, v15);
  v5 = v16;
  if (v16)
  {
    v6 = sub_B170(v15, v16);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = v4;
    v12 = sub_76A930();
    (*(v7 + 8))(v10, v5);
    sub_BEB8(v15);
  }

  else
  {
    v13 = v4;
    v12 = 0;
  }

  [v4 addTarget:v12 action:a2 forControlEvents:64];

  return swift_unknownObjectRelease();
}

double sub_38630(double a1, double a2)
{
  v3 = sub_7577A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v6;
  v29 = sub_7577C0();
  v28 = *(v29 - 8);
  v7 = __chkstk_darwin(v29);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_metrics, v3, v7);
  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_inAppPurchaseView);
  v30[28] = type metadata accessor for InAppPurchaseView(0);
  v30[29] = &protocol witness table for UIView;
  v30[25] = v10;
  v11 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_titleLabel);
  v12 = sub_75BB20();
  v30[23] = v12;
  v30[24] = &protocol witness table for UILabel;
  v30[19] = &protocol witness table for UILabel;
  v30[20] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_descriptionLabel);
  v30[18] = v12;
  v30[15] = v13;
  v14 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_divider);
  v30[13] = type metadata accessor for DividerView(0);
  v30[14] = &protocol witness table for UIView;
  v30[10] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_messageLabel);
  v30[9] = &protocol witness table for UILabel;
  v30[8] = v12;
  v30[5] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_lockupView);
  v17 = type metadata accessor for SmallLockupView(0);
  v30[4] = &protocol witness table for UIView;
  v30[3] = v17;
  v30[0] = v16;
  v18 = v10;
  v19 = v11;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  sub_7577B0();
  sub_757770();
  v25 = v24;
  (*(v28 + 8))(v9, v29);
  return v25;
}

uint64_t sub_38954()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = ObjectType;
  v3 = sub_7664F0();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7577A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v8;
  v9 = sub_7577C0();
  v33 = *(v9 - 8);
  v34 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
  v53 = type metadata accessor for InAppPurchaseView(0);
  v54 = &protocol witness table for UIView;
  v52 = v12;
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_titleLabel];
  v14 = sub_75BB20();
  v50 = v14;
  v51 = &protocol witness table for UILabel;
  v49 = v13;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_descriptionLabel];
  v47 = v14;
  v48 = &protocol witness table for UILabel;
  v46 = v15;
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_divider];
  v44 = type metadata accessor for DividerView(0);
  v45 = &protocol witness table for UIView;
  v42 = &protocol witness table for UILabel;
  v43 = v16;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_messageLabel];
  v41 = v14;
  v40 = v17;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_lockupView];
  v38 = type metadata accessor for SmallLockupView(0);
  v39 = &protocol witness table for UIView;
  v37 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v30;
  sub_7577B0();
  sub_75D650();
  v26 = v32;
  sub_757780();
  [v1 frame];
  Width = CGRectGetWidth(v56);
  sub_7664D0();
  [v1 setContentSize:Width];
  (*(v35 + 8))(v26, v36);
  return (*(v33 + 8))(v25, v34);
}

uint64_t type metadata accessor for InstallPagePreInstallPaidOfferView(uint64_t a1)
{
  result = qword_93FBC0;
  if (!qword_93FBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_38E38(uint64_t a1)
{
  result = sub_7577A0();
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

uint64_t sub_38EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FBD0, &qword_77DFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_38F50()
{
  v0 = sub_BD88(&qword_940AD0, &unk_78F910);
  __chkstk_darwin(v0 - 8);
  v31 = v28 - v1;
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_metrics;
  if (qword_93D8D0 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99F268);
  v8 = (*(v6 - 8) + 16);
  v38 = *v8;
  v38(v5, v7, v6);
  v10 = v3 + 13;
  v9 = v3[13];
  v41 = enum case for FontSource.useCase(_:);
  v40 = v9;
  v9(v5);
  v36 = sub_766CA0();
  v57[3] = v36;
  v57[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v54);
  v35 = v3[2];
  v35(v11, v5, v2);
  sub_766CB0();
  v12 = v3[1];
  v37 = v3 + 1;
  v39 = v12;
  v12(v5, v2);
  if (qword_93D8C0 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v6, qword_99F238);
  v14 = v38;
  v38(v5, v13, v6);
  v40(v5, v41, v2);
  v55 = v36;
  v56 = &protocol witness table for StaticDimension;
  sub_B1B4(v54);
  v34 = v6;
  v28[1] = v8;
  v52 = v2;
  v53 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v51);
  v16 = v35;
  v35(v15, v5, v2);
  sub_766CB0();
  v39(v5, v2);
  v33 = v10;
  v29 = v13;
  v17 = v34;
  v14(v5, v13, v34);
  v18 = v40;
  v40(v5, v41, v2);
  v19 = v36;
  v52 = v36;
  v53 = &protocol witness table for StaticDimension;
  sub_B1B4(v51);
  v49 = v2;
  v50 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v48);
  v16(v20, v5, v2);
  sub_766CB0();
  v39(v5, v2);
  v38(v5, v13, v17);
  v18(v5, v41, v2);
  v49 = v19;
  v21 = v19;
  v50 = &protocol witness table for StaticDimension;
  sub_B1B4(v48);
  v46 = v2;
  v47 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v45);
  v23 = v35;
  v35(v22, v5, v2);
  sub_766CB0();
  v24 = v39;
  v39(v5, v2);
  v46 = sub_766970();
  v47 = &protocol witness table for ZeroDimension;
  sub_B1B4(v45);
  sub_766960();
  v38(v5, v29, v34);
  v40(v5, v41, v2);
  v44[3] = v21;
  v44[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v44);
  v43[3] = v2;
  v43[4] = &protocol witness table for FontSource;
  v25 = sub_B1B4(v43);
  v23(v25, v5, v2);
  sub_766CB0();
  v24(v5, v2);
  v42 = 0x4034000000000000;
  v43[0] = 0x4052000000000000;
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592D0();
  v26 = v32;
  sub_757790();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallPaidOfferView_divider;
  *(v26 + v27) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_76A840();
  __break(1u);
}

uint64_t sub_395C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_39628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_3968C(uint64_t a1)
{
  v2 = type metadata accessor for DividerView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_396E8()
{
  result = qword_93E540;
  if (!qword_93E540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_93E540);
  }

  return result;
}

id sub_39734(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for GenericProductReviewCollectionViewCell(0);
  v11 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_allocWithZone(UIView);
  v13 = v11;
  v14 = [v12 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = [v14 layer];
  [v15 setCornerRadius:20.0];

  v16 = v13;
  [v16 setBackgroundView:v14];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v16 contentView];
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v16;
}

void sub_399F8()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GenericProductReviewCollectionViewCell(0);
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView];
  if (v5)
  {
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = *&v0[v4];
      if (v6)
      {
        v7 = v6;
        [v0 bounds];
        [v7 setFrame:?];
      }
    }
  }

  v8 = OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView;
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView];
  if (v9 && ([v9 isHidden] & 1) == 0)
  {
    v10 = *&v0[v8];
    if (v10)
    {
      v11 = v10;
      [v0 bounds];
      [v11 setFrame:?];
    }
  }
}

id sub_39BE0(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *&v2[v3];
    *&v2[v3] = v6;
    v5 = v6;

    v8 = [v2 contentView];
    [v8 addSubview:v5];

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_39C88()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for GenericProductReviewCollectionViewCell(0);
  objc_msgSendSuper2(&v16, "prepareForReuse");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView];
  if (v2)
  {
    [v2 setHidden:1];
    v3 = *&v0[v1];
    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler];
      v5 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler];
      v6 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler + 8];
      *v4 = 0;
      v4[1] = 0;
      v7 = v3;
      sub_F704(v5, v6);
      v8 = &v7[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler];
      v9 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler];
      v10 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler + 8];
      *v8 = 0;
      v8[1] = 0;
      sub_F704(v9, v10);
      v11 = *v4;
      v12 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      sub_F704(v11, v12);
      v13 = *v8;
      v14 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      sub_F704(v13, v14);
    }
  }

  result = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

void sub_39DC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView);
  if (v1)
  {
    v2 = v1;
    if (![v2 isHidden])
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      aBlock[4] = sub_3A634;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_880B20;
      v6 = _Block_copy(aBlock);
      v7 = v2;

      [v4 animateWithDuration:v6 animations:0.5];
      _Block_release(v6);

      return;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (v3)
  {
    v8 = v3;
    if (![v8 isHidden])
    {
      [v8 setClipsToBounds:0];
    }
  }
}

void sub_39F44(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView);
  if (!v3)
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView);
    if (!v4)
    {
      return;
    }

    v10 = v4;
    if (![v10 isHidden] && a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v15 = sub_3A624;
      v16 = v5;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v6 = &unk_880A80;
LABEL_10:
      v13 = sub_23F0CC;
      v14 = v6;
      v8 = _Block_copy(&aBlock);
      v9 = v10;

      [a1 addAnimations:v8];

      _Block_release(v8);
      return;
    }

    goto LABEL_12;
  }

  v10 = v3;
  if ([v10 isHidden])
  {

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v15 = sub_3A62C;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v6 = &unk_880AD0;
    goto LABEL_10;
  }

LABEL_12:
}

void sub_3A124(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView);
  if (!v3)
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView);
    if (!v4)
    {
      return;
    }

    v10 = v4;
    if (![v10 isHidden] && a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v15 = sub_3A5FC;
      v16 = v5;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v6 = &unk_8809E0;
LABEL_10:
      v13 = sub_23F0CC;
      v14 = v6;
      v8 = _Block_copy(&aBlock);
      v9 = v10;

      [a1 addAnimations:v8];

      _Block_release(v8);
      return;
    }

    goto LABEL_12;
  }

  v10 = v3;
  if ([v10 isHidden])
  {

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v15 = sub_3A61C;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v6 = &unk_880A30;
    goto LABEL_10;
  }

LABEL_12:
}

id sub_3A304()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView);
  if (v1)
  {
    v2 = v1;
    if (![v2 isHidden])
    {
      v5 = &OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_cardContentView;
      goto LABEL_10;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (!v3)
  {
    return 0;
  }

  v2 = v3;
  if ([v2 isHidden])
  {

    return 0;
  }

  v5 = &OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer;
LABEL_10:
  v6 = *&v2[*v5];

  return v6;
}

id sub_3A3B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewCollectionViewCell(uint64_t a1)
{
  result = qword_93FC20;
  if (!qword_93FC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3A4A0(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_3A548()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (v1)
  {
    v2 = v1;
    if (([v2 isHidden] & 1) == 0)
    {
      [v2 setClipsToBounds:1];
    }
  }
}

uint64_t sub_3A5C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_3A604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3A63C(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F620, &unk_77E220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3A730(uint64_t a1, char *a2)
{
  v55._countAndFlagsBits = a1;
  v55._object = a2;
  v44 = sub_BD88(&unk_955F90, qword_79E810);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v41 - v3;
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v54 = &v41 - v5;
  v6 = sub_758B40();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75F340();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_760280();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_765490();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v25 = sub_7570A0();
  v57 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph);
  if (result)
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    v56 = result;

    sub_76A730(29);

    *&v60 = 0xD00000000000001BLL;
    *(&v60 + 1) = 0x80000000007CA510;
    sub_769370(v55);
    sub_757090();

    result = (*(v57 + 48))(v24, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = v57;
      (*(v57 + 32))(v27, v24, v25);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v30 = *(v16 + 104);
      v41 = v18;
      v30(v18, enum case for FlowPage.product(_:), v15);
      v31 = *(v29 + 16);
      v55._object = v27;
      v31(v21, v27, v25);
      (*(v29 + 56))(v21, 0, 1, v25);
      v32 = sub_759E30();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
      v58 = 0u;
      v59 = 0u;
      sub_768790();
      (*(v46 + 104))(v45, enum case for FlowPresentationContext.infer(_:), v47);
      (*(v48 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v49);
      (*(v52 + 104))(v51, enum case for FlowOrigin.inapp(_:), v53);
      sub_768CE0();
      v33 = sub_758B20();
      swift_allocObject();
      v34 = sub_758AD0();
      v35 = sub_BD88(&unk_93F630, &unk_77E230);
      v36 = v54;
      sub_7688F0();
      v37 = *(v35 - 8);
      if ((*(v37 + 48))(v36, 1, v35) == 1)
      {
        (*(v57 + 8))(v55._object, v25);

        return sub_10A2C(v36, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        *(&v61 + 1) = v33;
        v62 = sub_3C858(&qword_93FD40, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        *&v60 = v34;
        v38 = v42;
        v39 = v43;
        v40 = v44;
        (*(v42 + 104))(v43, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v44);

        sub_768980();

        (*(v38 + 8))(v39, v40);
        (*(v57 + 8))(v55._object, v25);
        sub_BEB8(&v60);
        return (*(v37 + 8))(v36, v35);
      }
    }
  }

  return result;
}

void sub_3B1A8(int a1, id a2)
{
  v3 = [a2 navigationBar];
  [a2 pageMarginInsets];
  [v3 setLayoutMargins:?];
}

uint64_t sub_3B358(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_3C80C();
  v4 = sub_769460();

  if (!(v4 >> 62))
  {
    result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_76A860();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_76A770();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_BD88(&qword_93FD18, &qword_77F228);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_10914(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_B170(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_BEB8(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10A2C(&v11, &unk_93FD20, &unk_77F230);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_3B4E8(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_3C80C();
  v4 = sub_769460();

  if (!(v4 >> 62))
  {
    result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_76A860();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_76A770();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_BD88(&qword_93FD08, &qword_77F218);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_10914(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_B170(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_BEB8(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10A2C(&v11, &qword_93FD10, &qword_77F220);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

BOOL sub_3B744()
{
  v1 = [v0 viewControllers];
  sub_3C80C();
  v2 = sub_769460();

  if (v2 >> 62)
  {
    if (sub_76A860())
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  sub_767160();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    v6 = [v0 viewControllers];
    v7 = sub_769460();

    if (!(v7 >> 62))
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
LABEL_9:

      return v8 == 1;
    }

LABEL_15:
    v8 = sub_76A860();
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_3B8AC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for StoreNavigationController();
  v4 = objc_msgSendSuper2(&v13, "popToRootViewControllerAnimated:", v3 & 1);
  if (v4)
  {
    v5 = v4;
    sub_3C80C();
    v6 = sub_769460();

    return v6;
  }

  v7 = [v2 viewControllers];
  sub_3C80C();
  v8 = sub_769460();

  if (!(v8 >> 62))
  {
    result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = sub_76A860();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_76A770();
    goto LABEL_8;
  }

  if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
    v10 = *(v8 + 32);
LABEL_8:
    v11 = v10;

    v12 = [v11 contentScrollView];
    [v12 _scrollToTopIfPossible:v3 & 1];

    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_3BA84(uint64_t a1, uint64_t a2)
{
  if (sub_757660())
  {
    v5 = [v2 viewControllers];
    sub_3C80C();
    v6 = sub_769460();

    if (v6 >> 62)
    {
      v7 = sub_76A860();
    }

    else
    {
      v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    }

    return v7 > 1;
  }

  else
  {
    sub_38EE0(a2, v19);
    v9 = v20;
    if (v20)
    {
      v10 = sub_B170(v19, v20);
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = sub_76A930();
      (*(v11 + 8))(v14, v9);
      sub_BEB8(v19);
    }

    else
    {
      v15 = 0;
    }

    v16 = type metadata accessor for StoreNavigationController();
    v18.receiver = v2;
    v18.super_class = v16;
    v17 = objc_msgSendSuper2(&v18, "canPerformAction:withSender:", a1, v15);
    swift_unknownObjectRelease();
    return v17;
  }
}

void sub_3BE98()
{
  v1 = v0;
  v2 = sub_7685A0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_758880();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 viewControllers];
  sub_3C80C();
  v9 = sub_769460();

  if (v9 >> 62)
  {
    if (sub_76A860())
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = *(v9 + 32);
  }

  v26 = v10;

  type metadata accessor for TabPlaceholderViewController(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph];
    if (v12)
    {
      v8 = v4;
      v13 = v4[2];
      v24 = v11;
      v13(v7, v11 + OBJC_IVAR____TtC18ASMessagesProvider28TabPlaceholderViewController_storeTab, v3);

      v14 = [v1 traitCollection];
      v25 = v12;
      v15 = sub_FEE84(v14, 0, v12);

      if (v15)
      {
        v16 = [v24 tabBarItem];
        [v15 setTabBarItem:v16];

        sub_BD88(&unk_93F5C0, &unk_77C600);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_77D9F0;
        *(v17 + 32) = v15;
        v18 = v15;
        isa = sub_769450().super.isa;

        [v1 setViewControllers:isa animated:0];

LABEL_15:
        (*(v8 + 1))(v7, v3);
        return;
      }

      v24 = v13;
      if (qword_93DF00 == -1)
      {
LABEL_14:
        v21 = sub_768FF0();
        sub_BE38(v21, qword_9A0430);
        sub_BD88(&qword_93FD00, &unk_77DF10);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77B6D0;
        sub_768590();
        v29._object = 0x80000000007CA4C0;
        v29._countAndFlagsBits = 0xD000000000000041;
        sub_768580(v29);
        v27[3] = v3;
        v22 = sub_B1B4(v27);
        v24(v22, v7, v3);
        sub_768560();
        sub_10A2C(v27, &unk_93FBD0, &qword_77DFA0);
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        sub_768580(v30);
        sub_7685B0();
        sub_768E80();

        goto LABEL_15;
      }

LABEL_22:
      swift_once();
      goto LABEL_14;
    }
  }

  v20 = v26;
}

id sub_3C440(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for StoreNavigationController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_3C538(char a1)
{
  v2 = [*v1 popViewControllerAnimated:a1 & 1];

  return v2;
}

id sub_3C578()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 16];
  v3 = v0[OBJC_IVAR____TtC18ASMessagesProvider43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 32];
  result = [v0 layoutMargins];
  if ((v3 & 1) != 0 || (v7.f64[1] = v8, v5.f64[1] = v6, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, v5), vceqq_f64(v14, v7)))) & 1) == 0))
  {
    [v0 layoutMargins];
    *v2 = v9;
    *(v2 + 1) = v10;
    *(v2 + 2) = v11;
    *(v2 + 3) = v12;
    v2[32] = 0;
    v15.receiver = v0;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, "layoutMarginsDidChange");
  }

  return result;
}

unint64_t sub_3C80C()
{
  result = qword_9434E0;
  if (!qword_9434E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_9434E0);
  }

  return result;
}

uint64_t sub_3C858(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_3C8A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_3C8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3C8F8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_93FD50);
  sub_BE38(v4, qword_93FD50);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_3CA64()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_93FD68);
  sub_BE38(v4, qword_93FD68);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

char *sub_3CBB8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_allowBatchUpdates) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_flowPreviewing) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_isPresentingForgotSignInDetails) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_pendingRefresh) = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_compoundScrollObserver;
  v6 = objc_allocWithZone(sub_75FA60());
  *(v2 + v5) = sub_75FA50();
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_authenticating) = 0;
  v7 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_activityIndicator) = v7;
  v8 = [objc_allocWithZone(UIRefreshControl) init];
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_refreshControl) = v8;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_presenter) = a1;
  sub_75F520();

  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_impressionsCoordinator) = sub_761500();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_7212CC(v9, a2);

  v34[3] = sub_75B990();
  v34[4] = &protocol witness table for BasePresenter;
  v34[0] = a1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  v12 = v10;
  sub_45A2C(v34, v10 + v11);
  swift_endAccess();
  v12[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 0;
  v13 = &selRef_setSpeed_;
  v14 = [v12 navigationItem];
  [v14 setLargeTitleDisplayMode:2];

  sub_46F94(&qword_93FED8, v15, type metadata accessor for AccountViewController, &unk_77F2E8);
  v16 = v12;
  sub_75B910();
  v17 = [v16 navigationItem];
  sub_75B920();
  if (v18)
  {
    v19 = sub_769210();
    v13 = &selRef_setSpeed_;
  }

  else
  {
    v19 = 0;
  }

  [v17 setTitle:v19];

  v20 = [v16 v13[420]];
  v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v16[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_activityIndicator]];
  [v20 setLeftBarButtonItem:v21];

  v22 = [v16 v13[420]];
  v23 = [v22 leftBarButtonItem];

  if (v23)
  {
    v24 = OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_authenticating;
    swift_beginAccess();
    [v23 setHidden:(v16[v24] & 1) == 0];
  }

  v25 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_refreshControl];
  v26 = v16;
  [v25 addTarget:v26 action:"refreshControlValueChanged" forControlEvents:4096];
  v27 = sub_46F94(&qword_93FEE0, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for AccountPresenter);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a1;
  v29[4] = v27;

  v30 = sub_45AFC(a1, v26, sub_45AF0, v29, a2);

  v31 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_flowPreviewing];
  *&v26[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_flowPreviewing] = v30;

  v32 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_compoundScrollObserver];

  sub_75FA40();

  return v26;
}

void sub_3D110()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_BD88(&qword_93FFC8, &qword_77F498);
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for AccountViewController();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor:v9];

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v8 systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 setAlwaysBounceVertical:1];

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setRefreshControl:*&v1[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_refreshControl]];

  v17 = [v1 collectionView];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setDelegate:v1];

  v19 = sub_3E3EC();
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource] = v19;

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = ObjectType;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v41 = sub_47014;
  v42 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_507AD4;
  v40 = &unk_880FF0;
  v27 = _Block_copy(aBlock);

  v28 = [v26 initWithSectionProvider:v27];
  _Block_release(v27);

  [v22 setCollectionViewLayout:v28];

  sub_75B890();
  v29 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v30 = sub_769970();
  v40 = v29;
  v41 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v30;
  sub_BD88(&qword_93FFD0, &qword_77F4A0);
  sub_4701C();
  sub_768720();

  (*(v2 + 8))(v4, v38);
  sub_BEB8(aBlock);
  sub_75A160();
  v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_flowPreviewing];
  if (!v31)
  {
    return;
  }

  v32 = objc_allocWithZone(UIContextMenuInteraction);
  v33 = v31;
  v34 = [v32 initWithDelegate:v33];
  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v36 = v35;
  [v35 addInteraction:v34];
}

void *sub_3D890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v47 = a1;
  v3 = sub_767B20();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_767B30();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_93FF78, &qword_77F3C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_BD88(&qword_93FF80, &qword_77F3C8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = sub_767B10();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_767B70();
  v18 = *(v48 - 8);
  v19 = __chkstk_darwin(v48);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v14, v19);
  sub_767B40();
  v22 = sub_767B00();
  sub_767930();
  v22(v52, 0);
  v23 = sub_767B00();
  sub_767940();
  v23(v52, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = Strong, v26 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource), v27 = v26, v25, !v26))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_10;
  }

  sub_762D50();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_10:
    sub_10A2C(v9, &qword_93FF78, &qword_77F3C0);
    goto LABEL_11;
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_getKeyPath();
  sub_768750();

  v28 = v51;
  if (!v51)
  {
    goto LABEL_12;
  }

  v29 = v50;

  v30 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  }

  else
  {
LABEL_12:
    v31 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v42 + 104))(v41, *v31, v43);
  sub_767B60();
  swift_getKeyPath();
  sub_768750();

  v36 = v51;
  if (!v51)
  {
    goto LABEL_18;
  }

  v37 = v50;

  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = &enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:);
  }

  else
  {
LABEL_18:
    v39 = &enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:);
  }

  (*(v45 + 104))(v44, *v39, v46);
  sub_767B50();

  sub_767AF0();
  (*(v11 + 8))(v13, v10);
LABEL_11:
  sub_BE70(0, &unk_93FFE0, NSCollectionLayoutSection_ptr);
  v32 = sub_769C50();
  [v32 contentInsets];
  v34 = v33;
  [v32 contentInsets];
  [v32 setContentInsets:{v34, 16.0}];
  (*(v18 + 8))(v21, v48);
  return v32;
}

id sub_3DEF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&qword_93FF28, &unk_79FDC0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      sub_762D30();

      v9 = sub_BD88(&unk_959540, &qword_784830);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v4, 1, v9) == 1)
      {
        sub_10A2C(v4, &qword_93FF28, &unk_79FDC0);
      }

      else
      {
        sub_768760();
        (*(v10 + 8))(v4, v9);
        sub_BD88(&unk_944DA0, &unk_77EB70);
        sub_75B8E0();
        if (swift_dynamicCast())
        {
          v11 = v27;
          swift_beginAccess();
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;

            LOBYTE(v13) = sub_75B850();

            if (v13)
            {
              v28._object = 0x80000000007CA9E0;
              v28._countAndFlagsBits = 0xD000000000000015;
              v29._countAndFlagsBits = 0;
              v29._object = 0xE000000000000000;
              sub_75B750(v28, v29);
              v14 = swift_allocObject();
              swift_beginAccess();
              v15 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v16 = swift_allocObject();
              *(v16 + 16) = v14;
              *(v16 + 24) = v11;

              v17 = sub_769210();

              aBlock[4] = sub_47108;
              aBlock[5] = v16;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_5BF080;
              aBlock[3] = &unk_881068;
              v18 = _Block_copy(aBlock);
              v19 = [objc_opt_self() contextualActionWithStyle:1 title:v17 handler:v18];

              _Block_release(v18);

              sub_BD88(&unk_93F5C0, &unk_77C600);
              v20 = swift_allocObject();
              *(v20 + 16) = xmmword_77D9F0;
              *(v20 + 32) = v19;
              sub_BE70(0, &unk_93FFF0, UIContextualAction_ptr);
              v21 = v19;
              isa = sub_769450().super.isa;

              v23 = [objc_opt_self() configurationWithActions:isa];

              [v23 setPerformsFirstActionWithFullSwipe:0];

              return v23;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_3E348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_75B980();
  }

  return (a3)(0);
}

id sub_3E3EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_93FF40, &qword_77F390);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v69 = v3;
  v70 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = v64 - v5;
  v6 = sub_BD88(&qword_93FF48, &qword_77F398);
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v67 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v7;
  __chkstk_darwin(v8);
  v86 = v64 - v9;
  v81 = sub_BD88(&qword_93FF50, &qword_77F3A0);
  v73 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v10;
  __chkstk_darwin(v11);
  v13 = v64 - v12;
  v80 = sub_BD88(&qword_93FF58, &unk_77F3A8);
  v72 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = v64 - v16;
  __chkstk_darwin(v17);
  v19 = v64 - v18;
  v65 = v20;
  __chkstk_darwin(v21);
  v23 = v64 - v22;
  sub_769240();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
  v77 = v23;
  sub_769880();
  sub_769240();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v19;
  sub_769880();
  sub_769240();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AccountActionSectionFooterView();
  v79 = v13;
  sub_769880();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = ObjectType;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  type metadata accessor for AccountDetailCollectionViewCell(0);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  v27 = v86;
  sub_769870();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v30 = v87;
  sub_769870();
  result = [v1 collectionView];
  ObjectType = result;
  if (result)
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v82;
    v34 = *(v82 + 16);
    v35 = v67;
    v64[1] = v1;
    v36 = v83;
    v34(v67, v27);
    v37 = v84;
    v38 = v85;
    v39 = v70;
    (*(v84 + 16))(v70, v30, v85);
    v40 = v33;
    v41 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v42 = (v66 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v32;
    (*(v40 + 32))(v43 + v41, v35, v36);
    (*(v37 + 32))(v43 + v42, v39, v38);
    v44 = objc_allocWithZone(sub_BD88(&qword_93FF70, &qword_77F3B8));
    ObjectType = sub_762D80();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v72;
    v46 = *(v72 + 16);
    v47 = v68;
    v48 = v80;
    v46(v68, v77, v80);
    v49 = v73;
    (*(v73 + 16))(v76, v79, v81);
    v46(v75, v78, v48);
    v50 = *(v45 + 80);
    v51 = (v50 + 16) & ~v50;
    v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v49 + 80) + v52 + 8) & ~*(v49 + 80);
    v54 = (v71 + v50 + v53) & ~v50;
    v55 = swift_allocObject();
    v56 = *(v45 + 32);
    v57 = v47;
    v58 = v80;
    v56(v55 + v51, v57, v80);
    *(v55 + v52) = v70;
    v59 = v55 + v53;
    v60 = v81;
    (*(v49 + 32))(v59, v76, v81);
    v61 = v58;
    v56(v55 + v54, v75, v58);
    v62 = ObjectType;

    sub_767A30();

    (*(v84 + 8))(v87, v85);
    (*(v82 + 8))(v86, v83);
    (*(v49 + 8))(v79, v60);
    v63 = *(v45 + 8);
    v63(v78, v61);
    v63(v77, v61);

    return v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_3ED14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_BD88(&qword_93FF78, &qword_77F3C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_767880();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_7677E0();
    v18 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource];
    v26 = a1;
    if (v18)
    {
      v19 = v18;
      sub_7575D0();
      sub_762D50();
    }

    else
    {
      v20 = sub_BD88(&qword_93FF80, &qword_77F3C8);
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    }

    sub_1ED18(v11, v8, &qword_93FF78, &qword_77F3C0);
    v21 = sub_BD88(&qword_93FF80, &qword_77F3C8);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v8, 1, v21) == 1)
    {
      sub_10A2C(v8, &qword_93FF78, &qword_77F3C0);
    }

    else
    {
      swift_getKeyPath();
      sub_768750();

      (*(v22 + 8))(v8, v21);
    }

    sub_767860();
    v27[3] = v12;
    v27[4] = &protocol witness table for UIListContentConfiguration;
    v23 = sub_B1B4(v27);
    (*(v13 + 16))(v23, v15, v12);
    v24 = v26;
    sub_769AE0();
    [v17 pageMarginInsets];
    [v24 setLayoutMargins:?];

    sub_10A2C(v11, &qword_93FF78, &qword_77F3C0);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

char *sub_3F084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_767800();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93FFA0, &qword_77F450);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_BD88(&qword_93FF78, &qword_77F3C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = sub_767880();
  v50 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    v48 = v23;
    sub_7677D0();
    v28 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource];
    v49 = a1;
    v47 = v27;
    if (v28)
    {
      v29 = v28;
      sub_7575D0();
      sub_762D50();
    }

    else
    {
      v30 = sub_BD88(&qword_93FF80, &qword_77F3C8);
      (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
    }

    sub_1ED18(v22, v19, &qword_93FF78, &qword_77F3C0);
    v31 = sub_BD88(&qword_93FF80, &qword_77F3C8);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (v33(v19, 1, v31) == 1)
    {
      sub_10A2C(v19, &qword_93FF78, &qword_77F3C0);
      v34 = sub_75B930();
      (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
      sub_10A2C(v13, &unk_93FFA0, &qword_77F450);
    }

    else
    {
      v43 = v33;
      sub_768760();
      (*(v32 + 8))(v19, v31);
      sub_75B960();

      v35 = sub_75B930();
      v36 = *(v35 - 8);
      (*(v36 + 56))(v13, 0, 1, v35);
      sub_46378(v13, v10);
      if ((*(v36 + 88))(v10, v35) == enum case for AccountPresenter.Section.Identifier.userInfo(_:))
      {
        (*(v45 + 104))(v44, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v46);
        v37 = sub_767830();
        sub_767820();
        v37(v51, 0);
      }

      else
      {
        (*(v36 + 8))(v10, v35);
      }

      v33 = v43;
    }

    sub_1ED18(v22, v16, &qword_93FF78, &qword_77F3C0);
    if (v33(v16, 1, v31) == 1)
    {
      sub_10A2C(v16, &qword_93FF78, &qword_77F3C0);
    }

    else
    {
      swift_getKeyPath();
      sub_768750();

      (*(v32 + 8))(v16, v31);
    }

    v38 = v49;
    sub_767860();
    v39 = v48;
    v51[3] = v48;
    v51[4] = &protocol witness table for UIListContentConfiguration;
    v40 = sub_B1B4(v51);
    v41 = v50;
    (*(v50 + 16))(v40, v25, v39);
    sub_769AE0();
    v42 = v47;
    [v47 pageMarginInsets];
    [v38 setLayoutMargins:?];

    sub_10A2C(v22, &qword_93FF78, &qword_77F3C0);
    return (*(v41 + 8))(v25, v39);
  }

  return result;
}

char *sub_3F718(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_BD88(&qword_93FF78, &qword_77F3C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *&result[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource];
    if (v17)
    {
      v18 = v17;
      sub_7575D0();
      sub_762D50();
    }

    else
    {
      v19 = sub_BD88(&qword_93FF80, &qword_77F3C8);
      (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    }

    sub_1ED18(v14, v11, &qword_93FF78, &qword_77F3C0);
    v20 = sub_BD88(&qword_93FF80, &qword_77F3C8);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v11, 1, v20) == 1)
    {
      sub_10A2C(v11, &qword_93FF78, &qword_77F3C0);
      v23 = 0uLL;
    }

    else
    {
      swift_getKeyPath();
      v32 = v8;
      sub_768750();
      v8 = v32;

      v31 = v33;
      (*(v21 + 8))(v11, v20);
      v23 = v31;
    }

    *&a1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_text] = v23;

    sub_1280BC();
    sub_1ED18(v14, v8, &qword_93FF78, &qword_77F3C0);
    if (v22(v8, 1, v20) == 1)
    {
      sub_10A2C(v8, &qword_93FF78, &qword_77F3C0);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_768750();

      v26 = v33;
      if (v33)
      {
        v27 = *(&v33 + 1);
        v25 = swift_allocObject();
        *(v25 + 16) = v26;
        *(v25 + 24) = v27;
        v24 = sub_46344;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      (*(v21 + 8))(v8, v20);
    }

    v28 = &a1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction];
    v29 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction];
    v30 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction + 8];
    *v28 = v24;
    *(v28 + 1) = v25;
    sub_F704(v29, v30);
    [v16 pageMarginInsets];
    [a1 setLayoutMargins:?];
    a1[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_isCentered] = 1;
    sub_1280BC();

    return sub_10A2C(v14, &qword_93FF78, &qword_77F3C0);
  }

  return result;
}

uint64_t sub_3FB34@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_75B970();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_2EC28;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_3FBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_BD88(&qword_93FF28, &unk_79FDC0);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v10 = Strong;
  v11 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource);
  v12 = v11;

  if (!v11)
  {
    goto LABEL_10;
  }

  sub_762D40();

  v13 = sub_BD88(&unk_959540, &qword_784830);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_10A2C(v8, &qword_93FF28, &unk_79FDC0);
    goto LABEL_10;
  }

  sub_768760();
  (*(v14 + 8))(v8, v13);
  sub_10914(v21, v22);
  sub_134D8(v22, v21);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75B830();
  if (!swift_dynamicCast())
  {
    sub_75B8E0();
    if (swift_dynamicCast())
    {

      sub_134D8(v22, v20);
      type metadata accessor for UpdatesLockupCollectionViewCell(0);
      v16 = sub_769890();
      sub_10A2C(v20, &unk_963040, &qword_77F400);
      goto LABEL_8;
    }

    while (1)
    {
LABEL_10:
      sub_76A840();
      __break(1u);
    }
  }

  sub_134D8(v22, v20);
  type metadata accessor for AccountDetailCollectionViewCell(0);
  v15 = sub_769890();
  sub_10A2C(v20, &unk_963040, &qword_77F400);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  v16 = v15;
  sub_76A730(19);

  v19[1] = 0xD000000000000011;
  v19[2] = 0x80000000007CA930;
  sub_B170(v22, v22[3]);
  sub_768830();
  v23._countAndFlagsBits = sub_76A6A0();
  sub_769370(v23);

  sub_1EB60(v20);
  v17 = sub_769210();

  [v16 setAccessibilityIdentifier:v17];

LABEL_8:
  sub_BEB8(v21);
  sub_BEB8(v22);
  return v16;
}

uint64_t sub_3FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[2] = a7;
  v32 = a1;
  v11 = sub_BD88(&qword_93FF78, &qword_77F3C0);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = sub_BD88(&qword_93FF80, &qword_77F3C8);
  v31 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  if (sub_769240() == a2 && v17 == a3)
  {

    goto LABEL_13;
  }

  v30[1] = a8;
  v19 = sub_76A950();

  if (v19)
  {
LABEL_13:
    sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
    return sub_7698A0();
  }

  if (sub_769240() == a2 && v20 == a3)
  {
  }

  else
  {
    v22 = sub_76A950();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource), v26 = Strong, v27 = v25, v26, !v25))
  {
    (*(v31 + 56))(v13, 1, 1, v14);
    goto LABEL_21;
  }

  sub_7575D0();
  sub_762D50();

  v28 = v31;
  if ((*(v31 + 48))(v13, 1, v14) == 1)
  {
LABEL_21:
    sub_10A2C(v13, &qword_93FF78, &qword_77F3C0);
    goto LABEL_13;
  }

  (*(v28 + 32))(v16, v13, v14);
  swift_getKeyPath();
  sub_768750();

  if (!v33)
  {
    (*(v28 + 8))(v16, v14);
    goto LABEL_13;
  }

  sub_F704(v33, v34);
  type metadata accessor for AccountActionSectionFooterView();
  v29 = sub_7698A0();
  (*(v28 + 8))(v16, v14);
  return v29;
}

void sub_40344(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v174 = sub_75B810();
  v171 = *(v174 - 8);
  __chkstk_darwin(v174);
  v155 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v154 = &v147 - v8;
  v9 = sub_BD88(&qword_93FF88, &unk_77F408);
  __chkstk_darwin(v9 - 8);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v162 = &v147 - v13;
  __chkstk_darwin(v14);
  v165 = &v147 - v15;
  __chkstk_darwin(v16);
  v161 = &v147 - v17;
  __chkstk_darwin(v18);
  v170 = &v147 - v19;
  __chkstk_darwin(v20);
  v164 = &v147 - v21;
  v22 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v22 - 8);
  v173 = (&v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = (&v147 - v25);
  __chkstk_darwin(v27);
  v172 = (&v147 - v28);
  __chkstk_darwin(v29);
  v169 = &v147 - v30;
  v31 = sub_75B760();
  v167 = *(v31 - 8);
  v168 = v31;
  __chkstk_darwin(v31);
  v166 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_759950();
  v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v152 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_7652D0();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_BD88(&qword_93FF98, &qword_77F418);
  __chkstk_darwin(v35 - 8);
  v37 = &v147 - v36;
  v38 = sub_75B790();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v163 = &v147 - v43;
  sub_134D8(a3, v177);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75B830();
  if (swift_dynamicCast())
  {
    v151 = v26;
    v44 = v176;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_69;
    }

    v150 = v38;
    v157 = Strong;
    [Strong pageMarginInsets];
    [a1 setLayoutMargins:?];
    v46 = sub_75B780();
    v47 = &a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryMargin];
    *v47 = v46;
    v47[8] = v48 & 1;
    v49 = sub_75B7F0();
    v50 = a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_disabled];
    a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_disabled] = v49 & 1;
    v148 = v11;
    v175 = v44;
    if ((v49 & 1) != v50)
    {
      v51 = v49;
      [*&a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel] setEnabled:(v49 & 1) == 0];
      [*&a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel] setEnabled:(v51 & 1) == 0];
      [a1 setUserInteractionEnabled:(v51 & 1) == 0];
      [a1 setNeedsDisplay];
    }

    sub_75B7D0();
    v52 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_titleLabel];
    if (v53)
    {
      v54 = sub_769210();
    }

    else
    {
      v54 = 0;
    }

    v149 = v52;
    [v52 setText:v54];

    [a1 setNeedsLayout];
    sub_75B800();
    v55 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_subtitleLabel];
    if (v56)
    {
      v57 = sub_769210();
    }

    else
    {
      v57 = 0;
    }

    v58 = v39;
    v59 = v150;
    [v55 setText:v57];

    if (sub_3F4218())
    {
      [a1 setNeedsLayout];
    }

    sub_75B7E0();
    v60 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_detailLabel];
    if (v61)
    {
      v62 = sub_769210();
    }

    else
    {
      v62 = 0;
    }

    [v60 setText:v62];

    v63 = sub_75B7B0();
    v64 = a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle];
    a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldShowFullTitle] = v63 & 1;
    if ((v63 & 1) != v64)
    {
      [a1 setNeedsLayout];
    }

    sub_75B7C0();
    v65 = (*(v39 + 48))(v37, 1, v59);
    v66 = v171;
    v67 = v169;
    if (v65 == 1)
    {
      sub_10A2C(v37, &qword_93FF98, &qword_77F418);
    }

    else
    {
      v68 = v163;
      (*(v39 + 32))();
      (*(v39 + 16))(v41, v68, v59);
      v69 = (*(v39 + 88))(v41, v59);
      if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.image(_:))
      {
        (*(v39 + 96))(v41, v59);
        v70 = *v41;
        v71 = *(v41 + 3);
        v72 = v70;
        sub_759190();
        [a1 setNeedsLayout];
        sub_7591F0();
        sub_7590D0();
        a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage] = 1;
        v73 = &a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
        *v73 = v71;
        v73[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.unadorned(_:), v160);
        sub_7591B0();
        sub_75CD10();
        v74 = [objc_opt_self() clearColor];
        sub_75CD00();

        (*(v39 + 8))(v68, v59);
      }

      else if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.profileImage(_:))
      {
        (*(v39 + 96))(v41, v59);
        v75 = *v41;
        v178.width = 56.0;
        v178.height = 56.0;
        UIGraphicsBeginImageContextWithOptions(v178, 0, 0.0);
        [v75 drawInRect:{0.0, 0.0, 56.0, 56.0}];
        v76 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v77 = v39;
        v78 = v76;
        sub_759190();
        [a1 setNeedsLayout];

        sub_7590D0();
        a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v79 = &a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
        *v79 = 0x4030000000000000;
        v79[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.round(_:), v160);
        sub_7591B0();
        v80 = [a1 traitCollection];
        sub_767500();

        sub_75CD10();
        v81 = [objc_opt_self() separatorColor];
        sub_75CD00();

        (*(v77 + 8))(v163, v59);
      }

      else
      {
        if (v69 != enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.systemImage(_:))
        {
LABEL_73:
          sub_76A940();
          __break(1u);
          return;
        }

        (*(v39 + 96))(v41, v59);
        v82 = v153;
        v83 = v152;
        (*(v153 + 32))();
        sub_7590D0();
        a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v84 = &a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_imageMarginRight];
        *v84 = 0x4026000000000000;
        v84[8] = 0;
        sub_75CD10();
        v85 = [objc_opt_self() clearColor];
        sub_75CD00();
        v86 = [objc_opt_self() configurationWithPointSize:48.0];
        v87 = v83;
        v88 = sub_759930();

        v89 = v88;
        sub_759190();
        [a1 setNeedsLayout];

        (*(v82 + 8))(v87, v156);
        (*(v58 + 8))(v163, v59);
      }
    }

    v90 = v166;
    sub_75B770();
    v91 = (*(v167 + 88))(v90, v168);
    v92 = v174;
    v93 = v170;
    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.action(_:))
    {
      v94 = [v157 collectionView];
      if (v94)
      {
        v95 = v94;
        v96 = [v94 tintColor];

        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.primary(_:))
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v97 = sub_769FD0();
    }

    else
    {
      if (v91 != enum case for AccountPresenter.AccountDetailItem.TitleStyle.secondary(_:))
      {
LABEL_72:
        sub_76A840();
        __break(1u);
        goto LABEL_73;
      }

      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v97 = sub_769FF0();
    }

    v96 = v97;
LABEL_35:
    [v149 setTextColor:v96];

    v98 = v164;
    sub_75B820();
    v99 = (v66 + 48);
    v100 = *(v66 + 48);
    if (v100(v98, 1, v92) == 1)
    {
      sub_10A2C(v98, &qword_93FF88, &unk_77F408);
      v101 = type metadata accessor for Accessory(0);
      (*(*(v101 - 8) + 56))(v67, 1, 1, v101);
    }

    else
    {
      sub_41954(v67);
      (*(v66 + 8))(v98, v92);
    }

    v102 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph;
    v103 = v157;
    v104 = *&v157[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];

    v168 = v103;
    sub_3F45F0(v67, v104);

    sub_10A2C(v67, &qword_93FF90, qword_77ECE0);
    v105 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView;
    v106 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_accessoryView];
    if (!v106)
    {
      goto LABEL_52;
    }

    v107 = v106;
    sub_75B820();
    if (v100(v93, 1, v92) == 1)
    {
      sub_10A2C(v93, &qword_93FF88, &unk_77F408);
      v108 = type metadata accessor for Accessory(0);
      (*(*(v108 - 8) + 56))(v172, 1, 1, v108);
    }

    else
    {
      v109 = v93;
      v110 = v172;
      sub_41954(v172);
      (*(v66 + 8))(v109, v92);
      v111 = type metadata accessor for Accessory(0);
      if ((*(*(v111 - 8) + 48))(v110, 1, v111) != 1)
      {
        v112 = 0;
LABEL_44:
        sub_10A2C(v172, &qword_93FF90, qword_77ECE0);
        [v107 setHidden:v112];

        v113 = *&a1[v105];
        if (v113)
        {
          v114 = v113;
          v115 = v161;
          sub_75B820();
          if (v100(v115, 1, v92) == 1)
          {
            sub_10A2C(v115, &qword_93FF88, &unk_77F408);
            v116 = 0;
          }

          else
          {
            v117 = v154;
            (*(v66 + 16))(v154, v115, v92);
            if ((*(v66 + 88))(v117, v92) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
            {
              (*(v66 + 96))(v117, v92);
              v116 = *(v117 + 3);

              v118 = v66;
              v119 = v92;
              (*(v118 + 8))(v161, v92);
            }

            else
            {
              v120 = *(v66 + 8);
              v119 = v92;
              v120(v117, v92);
              v116 = 0;
              v120(v161, v92);
            }

            v92 = v119;
            v66 = v171;
          }

          [v114 setTintColor:v116];
        }

LABEL_52:
        v121 = v165;
        sub_75B7A0();
        if (v100(v121, 1, v92) == 1)
        {
          sub_10A2C(v121, &qword_93FF88, &unk_77F408);
          v122 = type metadata accessor for Accessory(0);
          v123 = v151;
          (*(*(v122 - 8) + 56))(v151, 1, 1, v122);
        }

        else
        {
          v124 = v151;
          sub_41954(v151);
          v123 = v124;
          (*(v66 + 8))(v121, v92);
        }

        v125 = v168;
        v126 = *&v157[v102];

        sub_3F4A20(v123, v126);

        sub_10A2C(v123, &qword_93FF90, qword_77ECE0);
        v127 = OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView;
        v128 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider31AccountDetailCollectionViewCell_secondaryAccessoryView];
        if (!v128)
        {
LABEL_68:

LABEL_69:

          return;
        }

        v129 = v100;
        v130 = v66;
        v131 = v128;
        v132 = v162;
        sub_75B7A0();
        v172 = v99;
        if (v129(v132, 1, v92) == 1)
        {
          sub_10A2C(v132, &qword_93FF88, &unk_77F408);
          v133 = type metadata accessor for Accessory(0);
          (*(*(v133 - 8) + 56))(v173, 1, 1, v133);
          v134 = v130;
        }

        else
        {
          v135 = v132;
          v136 = v173;
          sub_41954(v173);
          v134 = v130;
          (*(v130 + 8))(v135, v92);
          v137 = type metadata accessor for Accessory(0);
          v138 = v136;
          v125 = v168;
          if ((*(*(v137 - 8) + 48))(v138, 1, v137) != 1)
          {
            v139 = 0;
LABEL_61:
            sub_10A2C(v173, &qword_93FF90, qword_77ECE0);
            [v131 setHidden:v139];

            v140 = *&a1[v127];
            v141 = v174;
            if (v140)
            {
              v142 = v140;
              v143 = v148;
              sub_75B7A0();
              if (v129(v143, 1, v141) == 1)
              {
                sub_10A2C(v143, &qword_93FF88, &unk_77F408);
                v144 = 0;
              }

              else
              {
                v145 = v155;
                (*(v134 + 16))(v155, v143, v141);
                if ((*(v134 + 88))(v145, v141) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
                {
                  (*(v134 + 96))(v145, v141);
                  v144 = *(v145 + 3);

                  (*(v134 + 8))(v143, v141);
                }

                else
                {
                  v146 = *(v134 + 8);
                  v146(v145, v141);
                  v144 = 0;
                  v146(v143, v141);
                }
              }

              [v142 setTintColor:v144];
            }

            goto LABEL_68;
          }
        }

        v139 = 1;
        goto LABEL_61;
      }
    }

    v112 = 1;
    goto LABEL_44;
  }
}

uint64_t sub_41954@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_75B810();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.badge(_:) || v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.label(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = v8[1];
    *a1 = *v8;
    a1[1] = v10;
    v11 = type metadata accessor for Accessory(0);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
  {
    (*(v5 + 96))(v8, v4);
    v12 = *v8;
    v13 = v8[3];
    v19 = *(v8 + 1);

    *a1 = v12;
    *(a1 + 1) = v19;
    v11 = type metadata accessor for Accessory(0);
    goto LABEL_6;
  }

  v15 = enum case for AccountPresenter.AccountDetailItem.Accessory.chevron(_:);
  v16 = v9;
  v17 = type metadata accessor for Accessory(0);
  v18 = v17;
  if (v16 == v15)
  {
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_41C44(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a3, v45);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75B8E0();
  if (swift_dynamicCast())
  {
    v10 = v44;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v43 = a1;
      if (qword_93C210 != -1)
      {
        swift_once();
      }

      v13 = sub_766CA0();
      sub_BE38(v13, qword_93FD50);
      v14 = v12;
      sub_766470();
      sub_766700();
      v16 = v15;

      v17 = *(v7 + 8);
      v17(v9, v6);
      [v14 pageMarginInsets];
      v19 = v18;
      v20 = v14;
      sub_766470();
      sub_766700();
      v22 = v21;

      v17(v9, v6);
      [v20 pageMarginInsets];
      v24 = v23;
      v25 = sub_75B8D0();
      v26 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
      v27 = v20;

      v28 = [v27 traitCollection];
      v29 = [v28 horizontalSizeClass];

      if (v29 == &dword_0 + 1)
      {
        v30 = sub_75B8B0();
      }

      else
      {
        v30 = 1;
      }

      v31 = v43;
      v32 = [v27 snapshotPageTraitEnvironment];

      v33.n128_u64[0] = v16;
      sub_432E94(v25, v26, v30 & 1, 0, v32, v33, v19, v22, v24);

      swift_unknownObjectRelease();
      v34 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v10;
      *(v36 + 24) = v35;
      v37 = (v34 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
      v38 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
      v39 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler + 8);
      *v37 = sub_46304;
      v37[1] = v36;
      swift_retain_n();

      sub_F704(v38, v39);
      v40 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton);

      [v40 setUserInteractionEnabled:1];

      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v41 = sub_76A050();
      [v31 setBackgroundColor:v41];
    }

    else
    {
    }
  }
}

double sub_42094(uint64_t a1, uint64_t a2)
{
  v2 = sub_75B8C0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 horizontalSizeClass];

    v7 = v6 == &dword_0 + 1;
  }

  else
  {
    v7 = 1;
  }

  v2(v7);

  return result;
}

void sub_42150(void *a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FF28, &unk_79FDC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource);
  if (v7)
  {
    v8 = v7;
    sub_762D30();

    v9 = sub_BD88(&unk_959540, &qword_784830);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_10A2C(v6, &qword_93FF28, &unk_79FDC0);
    }

    else
    {
      sub_768760();
      (*(v10 + 8))(v6, v9);
      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_75B900();
      if (swift_dynamicCast())
      {
        sub_75B860();
        isa = sub_757550().super.isa;
        [a1 deselectItemAtIndexPath:isa animated:1];
      }
    }
  }
}

uint64_t sub_42468(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_42584(void *a1, uint64_t a2)
{
  v61 = a1;
  v4 = sub_768A80();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_93FF28, &unk_79FDC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_768AB0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v49 - v13;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v17 - 8);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v49 - v20;
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  __chkstk_darwin(v24);
  v25 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_presenter);
  v60 = a2;
  v28 = &v49 - v27;
  sub_75B8F0();
  sub_1ED18(v28, v23, &unk_93FF30, &unk_77DB10);
  v29 = *(v10 + 48);
  v30 = v29(v23, 1, v9);
  v57 = v10;
  v59 = v9;
  v53 = v26;
  if (v30 == 1)
  {
    sub_10A2C(v23, &unk_93FF30, &unk_77DB10);
    v31 = v61;
  }

  else
  {
    (*(v10 + 32))(v16, v23, v9);
    sub_75A150();
    v31 = v61;
    [v61 frame];
    sub_75F500();

    (*(v10 + 8))(v16, v9);
  }

  v32 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource);
  if (!v32)
  {
    return sub_10A2C(v28, &unk_93FF30, &unk_77DB10);
  }

  v33 = v29;
  v34 = v32;
  sub_762D30();

  v35 = sub_BD88(&unk_959540, &qword_784830);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {
    sub_10A2C(v8, &qword_93FF28, &unk_79FDC0);
    return sub_10A2C(v28, &unk_93FF30, &unk_77DB10);
  }

  v38 = v28;
  sub_768760();
  (*(v36 + 8))(v8, v35);
  sub_10914(&v62, v63);
  sub_B170(v63, v63[3]);
  v39 = v58;
  sub_7690D0();
  v40 = v59;
  v41 = v33;
  if (v33(v39, 1, v59) == 1)
  {
    sub_10A2C(v38, &unk_93FF30, &unk_77DB10);
    v42 = v39;
  }

  else
  {
    v43 = v57;
    v44 = v55;
    (*(v57 + 32))(v55, v39, v40);
    sub_75A150();
    v45 = v54;
    sub_1ED18(v38, v54, &unk_93FF30, &unk_77DB10);
    if (v41(v45, 1, v40) == 1)
    {
      sub_10A2C(v45, &unk_93FF30, &unk_77DB10);
    }

    else
    {
      v46 = v50;
      sub_768A90();
      (*(v43 + 8))(v45, v40);
      sub_768A70();
      (*(v51 + 8))(v46, v52);
    }

    v47 = v56;
    sub_768A40();

    [v31 frame];
    sub_75F4B0();

    v48 = *(v43 + 8);
    v48(v47, v40);
    v48(v44, v40);
    v42 = v38;
  }

  sub_10A2C(v42, &unk_93FF30, &unk_77DB10);
  return sub_BEB8(v63);
}

void (*sub_42C08(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_47080;
}

void sub_42C6C()
{
  v1 = v0;
  v2 = sub_BD88(&qword_93FF18, &qword_77F378);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  if ((sub_75B8A0() & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_refreshControl] endRefreshing];
  }

  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource];
  if (v6)
  {
    v7 = v6;
    sub_BD88(&qword_93FF20, &unk_77F380);
    sub_75B030();
    sub_75B050();
    sub_762D90();

    (*(v3 + 8))(v5, v2);
  }

  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 window];

  if (!v10)
  {
    return;
  }

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_75FA20();
}

void sub_432A8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_authenticating;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_activityIndicator] startAnimating];
    v2 = [v0 navigationItem];
    v3 = [v2 leftBarButtonItem];

    if (v3)
    {
      [v3 setHidden:0];
    }
  }

  else
  {
    v4 = [v0 navigationItem];
    v5 = [v4 leftBarButtonItem];

    if (v5)
    {
      [v5 setHidden:1];
    }

    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_activityIndicator] stopAnimating];
  }
}

void sub_433D8(void *a1)
{
  if ((v1[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_isPresentingForgotSignInDetails] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_isPresentingForgotSignInDetails] = 1;
    [a1 setPresentingViewController:v1];
    v3 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v9[4] = sub_45D40;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_43514;
      v9[3] = &unk_880CA8;
      v6 = _Block_copy(v9);
      v7 = v4;
      v8 = v1;

      [v7 authenticateWithContext:a1 completion:v6];

      _Block_release(v6);
    }
  }
}

uint64_t sub_43514(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_BD88(&qword_93FF10, &qword_77F370);
    v4 = sub_7690F0();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_435C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(AAUISignInController) init];
  [v3 setServiceType:AIDAServiceTypeStore];
  [v3 setDelegate:v0];
  if (qword_93C218 != -1)
  {
    swift_once();
  }

  v4 = sub_768FF0();
  sub_BE38(v4, qword_93FD68);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_7685D0();
  sub_768540();
  sub_768E80();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = ObjectType;
  v9[4] = sub_45D1C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_509F0;
  v9[3] = &unk_880C58;
  v7 = _Block_copy(v9);
  v8 = v3;

  [v8 prepareInViewController:v1 completion:v7];
  _Block_release(v7);
}

void sub_4385C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v7 = sub_768FF0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75B9A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7687B0();
  __chkstk_darwin(v15 - 8);
  if (a1)
  {
    if (qword_93C218 != -1)
    {
      swift_once();
    }

    sub_BE38(v7, qword_93FD68);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }

    return;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v40 = v12;
  v41 = sub_756F60();
  v18 = [v41 domain];
  v19 = sub_769240();
  v21 = v20;

  if (v19 == sub_769240() && v21 == v22)
  {
  }

  else
  {
    v24 = sub_76A950();

    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v41 code] != -7005)
  {
LABEL_20:

LABEL_21:
    if (qword_93C218 != -1)
    {
      swift_once();
    }

    v31 = sub_BE38(v7, qword_93FD68);
    (*(v8 + 16))(v10, v31, v7);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    if (a2)
    {
      swift_getErrorValue();
      v32 = v43;
      v33 = v44;
      *(&v46 + 1) = v44;
      v34 = sub_B1B4(&v45);
      (*(*(v33 - 8) + 16))(v34, v32, v33);
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    sub_7685C0();
    sub_10A2C(&v45, &unk_93FBD0, &qword_77DFA0);
    sub_768EA0();

    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v36 = v35;

      sub_75B880();
    }

    return;
  }

  if (qword_93C218 != -1)
  {
    swift_once();
  }

  sub_BE38(v7, qword_93FD68);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  *(&v46 + 1) = sub_BE70(0, &unk_957140, NSError_ptr);
  *&v45 = v41;
  v25 = v41;
  sub_7685C0();
  sub_10A2C(&v45, &unk_93FBD0, &qword_77DFA0);
  sub_768EA0();

  v47._object = 0x80000000007CA810;
  v47._countAndFlagsBits = 0xD000000000000017;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_75B750(v47, v49);
  v48._countAndFlagsBits = 0xD00000000000002ALL;
  v48._object = 0x80000000007CA830;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_75B750(v48, v50);
  sub_768790();
  (*(v40 + 104))(v14, enum case for AlertActionStyle.normal(_:), v11);
  sub_758F90();
  swift_allocObject();
  v26 = sub_758F60();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    v30 = v29;
    if (v29)
    {
      v29 = type metadata accessor for AccountViewController();
    }

    else
    {
      *(&v45 + 1) = 0;
      *&v46 = 0;
    }

    *&v45 = v30;
    *(&v46 + 1) = v29;
    sub_4466C(v26, &v45);

    sub_10A2C(&v45, &unk_93FBD0, &qword_77DFA0);
  }

  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;

    sub_75B880();
  }
}

void sub_4415C()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  v3 = sub_BD88(&qword_93FF08, qword_77F350);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource];
  if (v7)
  {
    v8 = v7;
    sub_767A90();
    v9 = sub_7678E0();
    (*(v4 + 8))(v6, v3);
    if (v9 >= 1)
    {
      v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v12 = *&v1[v10];
      *&v1[v10] = 0;

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v39 = v16;
        v40 = v18;
        v41 = v20;
        v42 = v22;
        v43 = 0;
LABEL_8:
        sub_761920();

        return;
      }

      goto LABEL_10;
    }
  }

  sub_767130();
  v23 = objc_allocWithZone(sub_767160());
  v24 = sub_767150();
  v25 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v27 = *&v1[v25];
  *&v1[v25] = v24;
  v8 = v24;

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v39 = v31;
    v40 = v33;
    v41 = v35;
    v42 = v37;
    v43 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_44420()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_761920();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_444EC(uint64_t a1)
{
  v2 = v1;
  sub_767230();
  sub_46F94(&qword_93FF00, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_7671F0();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

void sub_4466C(uint64_t a1, uint64_t a2)
{
  v4 = sub_757640();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_768430();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1ED18(a2, v103, &unk_93FBD0, &qword_77DFA0);
  if (v104)
  {
    sub_BE70(0, &qword_93E550, UIView_ptr);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
      *v20 = sub_769970();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_768460();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_94DD18;
        v88 = xmmword_94DD28;
        v89 = xmmword_94DD38;
        v85 = xmmword_94DCF8;
        v86 = xmmword_94DD08;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_94DCF8;
        v98 = xmmword_94DD08;
        v100 = xmmword_94DD28;
        v101 = xmmword_94DD38;
        v90 = qword_94DD48;
        v96 = v84;
        v102 = qword_94DD48;
        v99 = xmmword_94DD18;
        sub_1ED18(&v85, &v73, &unk_93FEF0, &unk_7834B0);
        xmmword_94DD18 = v93;
        xmmword_94DD28 = v94;
        xmmword_94DD38 = v95;
        qword_94DD48 = v96;
        xmmword_94DCF8 = v91;
        xmmword_94DD08 = v92;
        sub_10A2C(&v97, &unk_93FEF0, &unk_7834B0);
        v32 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
        v33 = sub_BD88(&unk_93F630, &unk_77E230);
        sub_45C2C(&v79, &v73);
        sub_768860();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10A2C(v16, &unk_93F980, &qword_77EDA0);
        }

        else
        {
          sub_32A6C0(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_94DD18;
        v76 = xmmword_94DD28;
        v77 = xmmword_94DD38;
        v78 = qword_94DD48;
        v73 = xmmword_94DCF8;
        v74 = xmmword_94DD08;
        xmmword_94DCF8 = v85;
        xmmword_94DD08 = v86;
        xmmword_94DD18 = v87;
        xmmword_94DD28 = v88;
        xmmword_94DD38 = v89;
        qword_94DD48 = v90;
        sub_10A2C(&v73, &unk_93FEF0, &unk_7834B0);
        sub_45C88(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10A2C(v103, &unk_93FBD0, &qword_77DFA0);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
    v62 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10A2C(v11, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_769460();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = sub_757550().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *v20 = sub_769970();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_768460();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_94DD18;
  v88 = xmmword_94DD28;
  v89 = xmmword_94DD38;
  v85 = xmmword_94DCF8;
  v86 = xmmword_94DD08;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_94DCF8;
  v98 = xmmword_94DD08;
  v100 = xmmword_94DD28;
  v101 = xmmword_94DD38;
  v90 = qword_94DD48;
  v96 = v84;
  v102 = qword_94DD48;
  v99 = xmmword_94DD18;
  sub_1ED18(&v85, &v73, &unk_93FEF0, &unk_7834B0);
  xmmword_94DD18 = v93;
  xmmword_94DD28 = v94;
  xmmword_94DD38 = v95;
  qword_94DD48 = v96;
  xmmword_94DCF8 = v91;
  xmmword_94DD08 = v92;
  sub_10A2C(&v97, &unk_93FEF0, &unk_7834B0);
  v55 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v56 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_45C2C(&v79, &v73);
  v57 = v67;
  sub_768860();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10A2C(v57, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32A6C0(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_94DD18;
  v76 = xmmword_94DD28;
  v77 = xmmword_94DD38;
  v78 = qword_94DD48;
  v73 = xmmword_94DCF8;
  v74 = xmmword_94DD08;
  xmmword_94DCF8 = v85;
  xmmword_94DD08 = v86;
  xmmword_94DD18 = v87;
  xmmword_94DD28 = v88;
  xmmword_94DD38 = v89;
  qword_94DD48 = v90;
  sub_10A2C(&v73, &unk_93FEF0, &unk_7834B0);
  sub_45C88(&v79);

  (*(v69 + 8))(v60, v64);
}

uint64_t sub_452B0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_38EA8C();

  return sub_75B870();
}

double sub_456D0()
{

  return result;
}

id sub_45760()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_45854()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_authenticating;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_45898(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_authenticating;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_432A8();
}

void (*sub_458EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_45950;
}

void sub_45950(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_432A8();
  }
}

uint64_t sub_45A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FED0, &unk_77DCE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_45A9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_45AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_46F94(&qword_93FEE0, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for AccountPresenter);
  v9 = sub_BD88(&qword_93FEE8, &qword_77F348);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_944108];
  *&v10[qword_944108 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_944100];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_944118] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_45CDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_45D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_45D7C()
{
  v1 = sub_BD88(&qword_93FF48, &qword_77F398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_BD88(&qword_93FF40, &qword_77F390);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_45EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_BD88(&qword_93FF48, &qword_77F398) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_BD88(&qword_93FF40, &qword_77F390) - 8);
  v11 = *(v3 + 16);
  v12 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_3FBA4(a1, a2, a3, v11, v3 + v8, v12);
}

uint64_t sub_45FEC()
{
  v1 = sub_BD88(&qword_93FF58, &unk_77F3A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v13 = *(v2 + 64);
  v5 = sub_BD88(&qword_93FF50, &qword_77F3A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (((v13 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v12 = v3 | v7;
  v9 = (*(v6 + 64) + v3 + v8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  (*(v6 + 8))(v0 + v8, v5);
  v10(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v13, v12 | 7);
}

uint64_t sub_46194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_BD88(&qword_93FF58, &unk_77F3A8) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_BD88(&qword_93FF50, &qword_77F3A0) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v4 + v12);
  v16 = v4 + ((*(v13 + 64) + v10 + v14) & ~v10);

  return sub_3FFB0(a1, a2, a3, a4, v4 + v11, v15, v4 + v14, v16);
}

uint64_t sub_4630C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4634C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75B940();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_46378(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FFA0, &qword_77F450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_463E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75B950();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_46414(void *a1, uint64_t a2)
{
  v5 = sub_BD88(&qword_93FF28, &unk_79FDC0);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  sub_42584(a1, a2);
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  if (swift_dynamicCastClass())
  {
    v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      sub_762D30();

      v11 = sub_BD88(&unk_959540, &qword_784830);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        sub_10A2C(v7, &qword_93FF28, &unk_79FDC0);
      }

      else
      {
        sub_768760();
        (*(v12 + 8))(v7, v11);
        sub_BD88(&unk_944DA0, &unk_77EB70);
        sub_75B8E0();
        if (swift_dynamicCast())
        {
          sub_75A110();
          sub_768900();
          sub_768ED0();
          v13 = v15[1];
          sub_75B8D0();
          v14 = sub_764F20();

          sub_35E5E8(v14, v13);
        }
      }
    }
  }

  return result;
}

void sub_46660(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v4 - 8);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v9 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = sub_768AB0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v22 = sub_BD88(&qword_93FF28, &unk_79FDC0);
  __chkstk_darwin(v22 - 8);
  v24 = v39 - v23;
  v25 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AccountViewController_diffableDataSource);
  if (v25)
  {
    v41 = v21;
    v42 = v16;
    v40 = v8;
    v26 = v25;
    v39[1] = a1;
    sub_762D30();

    v27 = sub_BD88(&unk_959540, &qword_784830);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v24, 1, v27) == 1)
    {
      sub_10A2C(v24, &qword_93FF28, &unk_79FDC0);
    }

    else
    {
      sub_768760();
      (*(v28 + 8))(v24, v27);
      sub_10914(&v44, v45);
      sub_B170(v45, v45[3]);
      sub_7690D0();
      v29 = v42;
      v30 = *(v42 + 48);
      if (v30(v14, 1, v15) == 1)
      {
        sub_10A2C(v14, &unk_93FF30, &unk_77DB10);
      }

      else
      {
        (*(v29 + 32))(v41, v14, v15);
        sub_75B8F0();
        if (v30(v11, 1, v15) == 1)
        {
          sub_10A2C(v11, &unk_93FF30, &unk_77DB10);
          v31 = 1;
          v32 = v40;
        }

        else
        {
          v33 = v29;
          v32 = v40;
          sub_768A90();
          (*(v33 + 8))(v11, v15);
          v31 = 0;
        }

        v34 = v43;
        v35 = sub_768A80();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v32, v31, 1, v35);
        sub_75A150();
        sub_1ED18(v32, v34, &qword_93FFC0, &qword_77F490);
        if ((*(v36 + 48))(v34, 1, v35) == 1)
        {
          sub_10A2C(v34, &qword_93FFC0, &qword_77F490);
        }

        else
        {
          sub_768A70();
          (*(v36 + 8))(v34, v35);
        }

        v37 = v41;
        sub_768A40();

        sub_75F4D0();

        v38 = *(v42 + 8);
        v38(v18, v15);
        sub_10A2C(v32, &qword_93FFC0, &qword_77F490);
        v38(v37, v15);
      }

      sub_BEB8(v45);
    }
  }
}

void sub_46C14(uint64_t a1, uint64_t a2)
{
  sub_46660(a2);
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    sub_75A110();
    sub_768900();
    sub_768ED0();
    v4 = OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView;
    v5 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_759050();

    v6 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_759210();
    sub_46F94(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v7 = v6;
    sub_75A0C0();
  }
}

uint64_t sub_46D60(uint64_t a1)
{
  v2 = v1;
  if (qword_93C218 != -1)
  {
    swift_once();
  }

  v4 = sub_768FF0();
  sub_BE38(v4, qword_93FD68);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DC20;
  sub_7685D0();
  sub_768540();
  v6[3] = sub_BD88(&unk_93FFB0, &qword_77F488);
  v6[0] = a1;

  sub_7685C0();
  sub_10A2C(v6, &unk_93FBD0, &qword_77DFA0);
  sub_768E80();

  [v2 dismissViewControllerAnimated:1 completion:{0, v6[0]}];
  return sub_75B880();
}

uint64_t sub_46F44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_46F94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_46FDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_4701C()
{
  result = qword_93FFD8;
  if (!qword_93FFD8)
  {
    sub_133D8(&qword_93FFD0, &qword_77F4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93FFD8);
  }

  return result;
}

uint64_t sub_470AC(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

double sub_47188(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v3 - 8);
  v80 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v71 - v6;
  v7 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v7 - 8);
  v76 = &v71 - v8;
  v9 = sub_75A6B0();
  __chkstk_darwin(v9 - 8);
  v87 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v71 - v12;
  v13 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v13 - 8);
  v85 = &v71 - v14;
  v75 = sub_75A6E0();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v84 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_75DC30();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v88 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7649E0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&unk_94F1F0, &qword_782290);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v71 - v24;
  v26 = sub_BD88(&qword_940000, &qword_77F520);
  __chkstk_darwin(v26 - 8);
  v82 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v81 = &v71 - v29;
  __chkstk_darwin(v30);
  v32 = &v71 - v31;
  __chkstk_darwin(v33);
  v89 = &v71 - v34;
  sub_75BEC0();
  sub_48120(&qword_940008, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  sub_75C750();
  v36 = v91[0];
  if (v91[0])
  {
    v37 = sub_75BEA0();
    v90 = v36;
    v73 = v37;
    if (v37)
    {
      v72 = a2;
    }

    else
    {
      if (!sub_75BEB0())
      {

        return result;
      }

      v72 = a2;
      v73 = sub_764BC0();
    }

    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    (*(v23 + 8))(v25, v22);
    if ((*(v19 + 88))(v21, v18) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v19 + 96))(v21, v18);
      v38 = sub_75ECD0();
      v39 = *(v38 - 8);
      v40 = v89;
      (*(v39 + 32))(v89, v21, v38);
      (*(v39 + 56))(v40, 0, 1, v38);
    }

    else
    {
      v41 = sub_75ECD0();
      v42 = v89;
      (*(*(v41 - 8) + 56))(v89, 1, 1, v41);
      v43 = v18;
      v40 = v42;
      (*(v19 + 8))(v21, v43);
    }

    v44 = v83;
    if (sub_75BEB0())
    {
      (*(v74 + 104))(v84, enum case for VideoFillMode.scaleAspectFit(_:), v75);
      sub_764BC0();
      sub_765260();
      v45 = v85;
      sub_7666A0();

      v46 = sub_766690();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_764B60();
      sub_764BA0();
      sub_764B70();
      sub_764B50();
      sub_764BB0();
      sub_1ED18(v40, v32, &qword_940000, &qword_77F520);
      v47 = sub_75ECD0();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v32, 1, v47) == 1)
      {
        sub_10A2C(v32, &qword_940000, &qword_77F520);
      }

      else
      {
        sub_75ECC0();
        (*(v48 + 8))(v32, v47);
        sub_75A350();
      }

      sub_75DC10();
      sub_75C360();
      sub_768880();
      sub_764B40();
      v49 = v76;
      sub_764BD0();
      v50 = sub_7570A0();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      v51 = v79;
      sub_764B90();
      v52 = v80;
      sub_764B80();
      type metadata accessor for VideoView(0);
      sub_48120(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v53 = sub_75C340();
      sub_10A2C(v52, &unk_948710, &qword_77FF90);
      sub_10A2C(v51, &unk_948710, &qword_77FF90);
      sub_10A2C(v49, &unk_93FD30, qword_77F240);
      sub_10A2C(v91, &unk_9443A0, &unk_77E240);
      sub_41ABAC();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      v40 = v89;
      if (Strong)
      {
        v55 = Strong;
        v56 = [v44 contentView];
        [v56 addSubview:v55];

        [v44 setNeedsLayout];
      }

      (*(v77 + 8))(v88, v78);
    }

    v57 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v58 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
    v59 = sub_75BEA0();
    if (v59)
    {
    }

    [v58 setHidden:v59 == 0];

    v60 = swift_unknownObjectWeakLoadStrong();
    v61 = v82;
    if (v60)
    {
      v62 = v60;
      v63 = sub_75BEB0();
      if (v63)
      {
      }

      [v62 setHidden:v63 == 0];
    }

    v64 = v81;
    sub_1ED18(v40, v81, &qword_940000, &qword_77F520);
    v65 = sub_75ECD0();
    v66 = *(v65 - 8);
    v67 = *(v66 + 48);
    if (v67(v64, 1, v65) == 1)
    {
      sub_10A2C(v64, &qword_940000, &qword_77F520);
      v68 = 0;
    }

    else
    {
      v69 = sub_75EC60();
      (*(v66 + 8))(v64, v65);
      if (v69)
      {
        v68 = sub_7650D0() ^ 1;
      }

      else
      {
        v68 = 0;
      }

      v40 = v89;
    }

    v44[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_shouldForcePortrait] = v68 & 1;
    sub_1ED18(v40, v61, &qword_940000, &qword_77F520);
    if (v67(v61, 1, v65) == 1)
    {
      sub_10A2C(v61, &qword_940000, &qword_77F520);
      v70 = 0;
    }

    else
    {
      v70 = sub_75ECC0();
      (*(v66 + 8))(v61, v65);
    }

    *(v57 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = v70;

    sub_4FD578();

    [v44 setNeedsLayout];

    sub_10A2C(v40, &qword_940000, &qword_77F520);
  }

  return result;
}