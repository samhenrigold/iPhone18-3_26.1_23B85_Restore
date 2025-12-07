uint64_t sub_100650B90(void *a1, void *a2, __n128 a3)
{
  v92 = a1;
  v97 = sub_1007462D4();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v4;
  __chkstk_darwin(v5);
  v95 = &v71 - v6;
  v91 = sub_100750954();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v71 - v9;
  __chkstk_darwin(v10);
  v82 = &v71 - v11;
  __chkstk_darwin(v12);
  v84 = &v71 - v13;
  __chkstk_darwin(v14);
  v86 = &v71 - v15;
  v87 = sub_100750BD4();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100754724();
  v78 = *(v98 - 8);
  __chkstk_darwin(v98);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100750304();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_100750B04();
  v77 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1007462B4();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v80 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v100 = &v71 - v29;
  v99 = a2;
  [a2 pageMarginInsets];
  v31 = v30;
  v33 = v32;
  if (qword_100921B48 != -1)
  {
    swift_once();
  }

  v34 = qword_100982AD8;
  *v22 = qword_100982AD8;
  v73 = enum case for FontSource.textStyle(_:);
  v72 = v20[13];
  v72(v22);
  v71 = v20 + 13;
  v110 = v19;
  v111 = &protocol witness table for FontSource;
  v35 = sub_10000D134(&v109);
  v74 = v20[2];
  v75 = v20 + 2;
  v74(v35, v22, v19);
  v36 = v34;
  sub_100750B14();
  v76 = v20[1];
  v76(v22, v19);
  sub_1007502D4();
  sub_100750564();
  v78[1](v18, v98);
  (*(v77 + 8))(v25, v23);
  v110 = &type metadata for CGFloat;
  v111 = &protocol witness table for CGFloat;
  v109 = v31;
  v107 = &type metadata for CGFloat;
  v108 = &protocol witness table for CGFloat;
  v106 = v33;
  v37 = v36;
  *v22 = v36;
  v38 = v73;
  v39 = v72;
  (v72)(v22, v73, v19);
  v105[3] = v23;
  v105[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v105);
  v103 = v19;
  v104 = &protocol witness table for FontSource;
  v40 = sub_10000D134(&v102);
  v41 = v74;
  v74(v40, v22, v19);
  v42 = v37;
  v78 = v42;
  sub_100750B14();
  v43 = v76;
  v76(v22, v19);
  *v22 = v42;
  v39(v22, v38, v19);
  v103 = v23;
  v104 = &protocol witness table for StaticDimension;
  sub_10000D134(&v102);
  v101[3] = v19;
  v101[4] = &protocol witness table for FontSource;
  v44 = sub_10000D134(v101);
  v41(v44, v22, v19);
  sub_100750B14();
  v43(v22, v19);
  sub_100746294();
  sub_1007462A4();
  v45 = sub_100750F34();
  swift_allocObject();
  v98 = sub_100750F14();
  v46 = v79;
  sub_100750944();
  v47 = objc_opt_self();
  v48 = v99;
  v49 = [v99 traitCollection];
  v50 = [v47 preferredFontForTextStyle:v78 compatibleWithTraitCollection:v49];

  v51 = v81;
  sub_100750934();

  v52 = *(v89 + 8);
  v53 = v91;
  v52(v46, v91);
  v54 = v82;
  sub_100750894();
  v52(v51, v53);
  v55 = v84;
  sub_1007508F4();
  v52(v54, v53);
  v56 = [v48 traitCollection];
  v57 = [v56 preferredContentSizeCategory];
  sub_100753924();

  sub_100750904();
  v52(v55, v53);
  sub_100750BB4();
  v58 = v92;
  v59 = v83;
  sub_100750C04();
  sub_100750BA4();
  (*(v85 + 8))(v59, v87);
  swift_allocObject();
  v60 = sub_100750F14();
  v61 = v88;
  v62 = v90;
  (*(v88 + 16))(v80, v100, v90);
  v107 = v45;
  v108 = &protocol witness table for LayoutViewPlaceholder;
  v106 = v98;
  sub_10000C824(&v109, v105);
  v103 = v45;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  v102 = v60;

  v63 = v95;
  sub_1007462C4();
  v64 = v96;
  v65 = v94;
  v66 = v97;
  (*(v96 + 16))(v94, v63, v97);
  v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v68 = swift_allocObject();
  (*(v64 + 32))(v68 + v67, v65, v66);
  swift_allocObject();
  v69 = sub_100750EF4();

  (*(v64 + 8))(v63, v66);
  sub_10000C620(&v109);
  (*(v61 + 8))(v100, v62);
  return v69;
}

uint64_t sub_100651790(__n128 a1)
{
  v2 = sub_1007462D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_100651894(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_avatarShowcase] = a1;
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

void sub_10065195C(void *a1)
{
  v18 = a1;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100652F44(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v9 = [v8 superview];
    if (!v9)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = v9;
    sub_100009D34();
    v11 = v6;
    v12 = sub_100753FC4();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v8 = v13;
        [v13 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    sub_100746E34();
    (*(v3 + 8))(v5, v2);
    [v6 addSubview:v15];
    [v6 sendSubviewToBack:v15];
    [v6 setNeedsLayout];
  }

  else
  {
    v16 = v18;
  }
}

char *sub_100651BCC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100743584();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_itemLayoutContext;
  v19 = sub_1007469A4();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for VideoCardView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_avatarShowcase] = 0;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_shadowView;
  sub_100743034();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 setClipsToBounds:0];

  v25 = OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_shadowView;
  v26 = qword_1009204A0;
  v27 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_shadowView];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = sub_10074F0C4();
  v29 = sub_10000D0FC(v28, qword_10097E1A0);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v17, v29, v28);
  (*(v30 + 56))(v17, 0, 1, v28);
  sub_100743014();

  v31 = *&v22[v25];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v32 = v31;
  sub_100743024();

  (*(v12 + 8))(v14, v11);
  v33 = *&v22[v25];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondarySystemBackgroundColor];
  [v35 setBackgroundColor:v36];

  v37 = [v22 contentView];
  [v37 addSubview:*&v22[v25]];

  v38 = [v22 contentView];
  [v38 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView]];

  return v22;
}

void (*sub_100652080(uint64_t *a1))(void ***a1, char a2)
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
  v5 = sub_100743584();
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
  v8 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_videoView;
  v4[4] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView);
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_100652178;
}

void sub_100652178(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100652F44(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[4];
        sub_100009D34();
        v11 = v10;
        v12 = sub_100753FC4();

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
      sub_100746E34();
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
    sub_100652F44(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[4];
      sub_100009D34();
      v18 = v17;
      v19 = sub_100753FC4();

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
    sub_100746E34();
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

void sub_1006524E4()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  [v1 layoutIfNeeded];
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_shadowView];
  v12 = [v0 contentView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v11 setFrame:{v14, v16, v18, v20}];
  sub_100652F44(&qword_100931970, type metadata accessor for VideoCardCollectionViewCell, &unk_1007B8F28);
  sub_10074AAF4();
}

void sub_1006526AC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "prepareForReuse", v4);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v9 = Strong;
  sub_100652F44(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    sub_100009D34();
    v12 = v7;
    v13 = sub_100753FC4();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      goto LABEL_7;
    }

    v9 = v14;
    [v14 removeFromSuperview];
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2);
    sub_100746E34();
    (*(v3 + 8))(v6, v2);
    [v7 addSubview:v16];
    [v7 sendSubviewToBack:v16];
    [v7 setNeedsLayout];
  }
}

uint64_t type metadata accessor for VideoCardCollectionViewCell(uint64_t a1)
{
  result = qword_1009432E0;
  if (!qword_1009432E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100652A04(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100652AD0(uint64_t **a1))()
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
  v2[4] = sub_100652080(v2);
  return sub_10001BB78;
}

double sub_100652B40(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for VideoCardView(0);
  ObjectType = swift_getObjectType();

  return sub_1005FA0C8(a3, a4, a1, a2, v8, ObjectType);
}

uint64_t sub_100652BB8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100652F44(&qword_100943308, type metadata accessor for VideoCardCollectionViewCell, &unk_1007CFE78);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100652C2C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100652F44(&qword_100943308, type metadata accessor for VideoCardCollectionViewCell, &unk_1007CFE78);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100652CB8(uint64_t *a1))()
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
  sub_100652F44(&qword_100943308, type metadata accessor for VideoCardCollectionViewCell, &unk_1007CFE78);
  *(v3 + 32) = sub_100747DB4();
  return sub_1000181A8;
}

uint64_t sub_100652D9C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100009D34();
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

uint64_t sub_100652F44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100652F8C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_videoCardView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for VideoCardView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_avatarShowcase) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension27VideoCardCollectionViewCell_shadowView;
  sub_100743034();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

unint64_t sub_10065309C()
{
  v1 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = [result collectionView];
    v14 = OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    sub_10003E0A0(v0 + v14, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_1005BFA50(v3);
      return 0;
    }

    (*(v5 + 32))(v10, v3, v4);
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer) != 1)
    {
      if (v13)
      {
        v22 = v13;
        isa = sub_100741704().super.isa;
        v24 = [v22 cellForItemAtIndexPath:isa];

        (*(v5 + 8))(v10, v4);
        return v24;
      }

      (*(v5 + 8))(v10, v4);

      return 0;
    }

    sub_100741784();
    sub_100741764();
    if (v13)
    {
      v15 = v13;
      v16 = sub_100741704().super.isa;
      v17 = [v15 cellForItemAtIndexPath:v16];

      if (v17)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          result = sub_100741774();
          v18 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
          v19 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
          if (v19 >> 62)
          {
            v28 = result;
            v26 = sub_100754664();
            result = v28;
            if (v28 < v26)
            {
LABEL_10:
              v20 = *&v17[v18];
              if ((v20 & 0xC000000000000001) != 0)
              {
                v28 = v5;

                v21 = sub_100754574();

                v5 = v28;

                goto LABEL_24;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (result < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v21 = *(v20 + 8 * result + 32);

LABEL_24:
                v27 = *(v5 + 8);
                v27(v7, v4);
                v27(v10, v4);
                return v21;
              }

              __break(1u);
              return result;
            }
          }

          else if (result < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_10;
          }

          v21 = 0;
          goto LABEL_24;
        }

        v15 = v12;
        v12 = v17;
      }
    }

    v25 = *(v5 + 8);
    v25(v7, v4);
    v25(v10, v4);
    return 0;
  }

  return result;
}

void sub_1006535A0()
{
  v0 = sub_10065309C();
  if (v0)
  {
    v1 = v0;
    [v0 setHidden:1];
  }
}

char *sub_100653690(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_10065309C();
  if (!v5)
  {

LABEL_6:
    v52 = 0u;
    v54 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v51 = v19;
  v53 = v18;
  v49 = v21;
  v50 = v20;

  v22 = 0;
  *&v23 = v51;
  *(&v23 + 1) = v49;
  v52 = v23;
  *&v23 = v53;
  *(&v23 + 1) = v50;
  v54 = v23;
LABEL_7:
  v24 = [a1 presentingViewController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 traitCollection];

    v27 = [v26 horizontalSizeClass];
    v28 = v27 == 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for BouncyToRectAnimation();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC22SubscribePageExtension21BouncyToRectAnimation_toRect];
  *v31 = v54;
  *(v31 + 1) = v52;
  v31[32] = v22;
  v30[OBJC_IVAR____TtC22SubscribePageExtension21BouncyToRectAnimation_shouldAnimateTabBar] = v28;
  v55.receiver = v30;
  v55.super_class = v29;
  v32 = objc_msgSendSuper2(&v55, "init");
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  v34 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v35 = *&v32[v34];
  v36 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100255160(0, *(v35 + 2) + 1, 1, v35);
    *&v32[v34] = v35;
  }

  v39 = *(v35 + 2);
  v38 = *(v35 + 3);
  if (v39 >= v38 >> 1)
  {
    v35 = sub_100255160((v38 > 1), v39 + 1, 1, v35);
  }

  *(v35 + 2) = v39 + 1;
  v40 = &v35[24 * v39];
  *(v40 + 4) = sub_100653F1C;
  *(v40 + 5) = v33;
  v40[48] = 1;
  *&v32[v34] = v35;
  swift_endAccess();

  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  *(v41 + 24) = v36;
  swift_beginAccess();
  v42 = *&v32[v34];
  v43 = v36;
  v44 = v1;

  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v42;
  if ((v45 & 1) == 0)
  {
    v42 = sub_100255160(0, *(v42 + 2) + 1, 1, v42);
    *&v32[v34] = v42;
  }

  v47 = *(v42 + 2);
  v46 = *(v42 + 3);
  if (v47 >= v46 >> 1)
  {
    v42 = sub_100255160((v46 > 1), v47 + 1, 1, v42);
  }

  *(v42 + 2) = v47 + 1;
  v48 = &v42[24 * v47];
  *(v48 + 4) = sub_100653F64;
  *(v48 + 5) = v41;
  v48[48] = 2;
  *&v32[v34] = v42;
  swift_endAccess();

  return v32;
}

void sub_100653A60(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v9 = v3;
    type metadata accessor for ComponentViewOverflowPresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      sub_1004446D8();
      v6 = v5 + OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v6 + 24))
      {
        sub_10000C824(v6, v10);
        v7 = v11;
        v8 = v12;
        sub_10000C888(v10, v11);
        (*(v8 + 24))(v7, v8);

        sub_10000C620(v10);
        return;
      }
    }
  }
}

void sub_100653B7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10065309C();
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  v7 = [a4 _existingPresentationControllerImmediate:1 effective:1];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for ComponentViewOverflowPresentationController();
    if (swift_dynamicCastClass())
    {
      sub_1004447C8();
    }
  }
}

id sub_100653D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentViewOverflowTransitioning(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ComponentViewOverflowTransitioning(uint64_t a1)
{
  result = qword_100943350;
  if (!qword_100943350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100653E3C(uint64_t a1)
{
  sub_10003DEB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100653EE4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100653F24()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100653F6C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_10065309C();
  if (!v5)
  {

LABEL_6:
    v41 = 0u;
    v43 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v40 = v19;
  v42 = v18;
  v38 = v21;
  v39 = v20;

  v22 = 0;
  *&v23 = v40;
  *(&v23 + 1) = v38;
  v41 = v23;
  *&v23 = v42;
  *(&v23 + 1) = v39;
  v43 = v23;
LABEL_7:
  v24 = [a1 traitCollection];
  v25 = [v24 horizontalSizeClass];

  v26 = type metadata accessor for BouncyFromRectAnimation();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC22SubscribePageExtension23BouncyFromRectAnimation_fromRect];
  *v28 = v43;
  *(v28 + 1) = v41;
  v28[32] = v22;
  v27[OBJC_IVAR____TtC22SubscribePageExtension23BouncyFromRectAnimation_shouldAnimateTabBar] = v25 == 1;
  v44.receiver = v27;
  v44.super_class = v26;
  v29 = objc_msgSendSuper2(&v44, "init");
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v32 = *&v29[v31];
  v33 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29[v31] = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_100255160(0, *(v32 + 2) + 1, 1, v32);
    *&v29[v31] = v32;
  }

  v36 = *(v32 + 2);
  v35 = *(v32 + 3);
  if (v36 >= v35 >> 1)
  {
    v32 = sub_100255160((v35 > 1), v36 + 1, 1, v32);
  }

  *(v32 + 2) = v36 + 1;
  v37 = &v32[24 * v36];
  *(v37 + 4) = sub_10065421C;
  *(v37 + 5) = v30;
  v37[48] = 0;
  *&v29[v31] = v32;
  swift_endAccess();

  return v29;
}

uint64_t sub_100654228()
{
  v0 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10074F654();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  sub_10074F584();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A6580;
  sub_10001CC10();
  sub_10074F614();
  sub_10074F604();
  sub_10074F614();
  sub_10074F644();
  sub_10074F614();
  sub_10074F614();
  sub_10074F544();
  sub_10074F614();
  sub_10074F604();
  sub_10074F5F4();
  sub_10074F644();
  sub_1007535A4();
  sub_10074F614();
  sub_10074F614();
  result = sub_10074F544();
  qword_100982B08 = v6;
  return result;
}

unint64_t sub_1006546E0()
{
  v0 = sub_1007537F4();
  v1 = sub_100747304();
  v6._object = 0x80000001007893D0;
  v6._countAndFlagsBits = 0xD000000000000034;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2._countAndFlagsBits = sub_10074B194(v6, v1, v8);
  if (v0)
  {
    v3 = 1554743522;
  }

  else
  {
    v3 = 799703266;
  }

  v5 = v3 & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
  sub_1007531B4(v2);

  v7._countAndFlagsBits = 11305186;
  v7._object = 0xA300000000000000;
  sub_1007531B4(v7);

  return v5;
}

double sub_1006547B8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v90 = sub_10074CD14();
  v8 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = v74 - v11;
  __chkstk_darwin(v12);
  v84 = v74 - v13;
  v82 = sub_100748914();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v83 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074AA44();
  v89 = *(v15 - 8);
  __chkstk_darwin(v15);
  v87 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074AA24();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v93 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v94 = v74 - v21;
  v22 = sub_10074FCD4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v80 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v74 - v26;
  __chkstk_darwin(v28);
  v30 = v74 - v29;
  v86 = a1;
  v31 = sub_1007472E4();
  if (*(v31 + 16))
  {
    v76 = v15;
    v77 = v8;
    v32 = a6;
    v33 = *(v23 + 16);
    v33(v27, v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

    v78 = v23;
    v34 = *(v23 + 32);
    v91 = v30;
    v92 = v22;
    v34(v30, v27, v22);
    if (qword_100921838 != -1)
    {
      swift_once();
    }

    v35 = sub_10000D0FC(v17, qword_100982398);
    v79 = v18;
    v36 = *(v18 + 16);
    v37 = v94;
    v36(v94, v35, v17);
    v38 = [a6 traitCollection];
    v39 = sub_100753804();

    if (v39)
    {
      v74[0] = v17;
      v36(v93, v37, v17);
      v33(v80, v91, v92);
      sub_100747304();
      v40 = [a6 traitCollection];
      v41 = sub_1007537D4();

      v42 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v41 & 1) == 0)
      {
        v42 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v81 + 104))(v83, *v42, v82);
      v43 = sub_100748924();
      v44 = objc_allocWithZone(v43);
      v45 = sub_100748904();
      v100[8] = v43;
      v100[9] = &protocol witness table for UIView;
      v100[5] = v45;
      v46 = sub_100747314();
      v101._object = 0x8000000100773260;
      v101._countAndFlagsBits = 0xD000000000000032;
      v102._countAndFlagsBits = 0;
      v102._object = 0xE000000000000000;
      sub_10074B194(v101, v46, v102);
      v47 = sub_100038D38();
      if (qword_100921210 != -1)
      {
        swift_once();
      }

      v83 = sub_100750534();
      sub_10000D0FC(v83, qword_100981368);
      v82 = v47;
      sub_100753C04();
      v48 = sub_10074F3F4();
      v100[3] = v48;
      v81 = sub_1006559B4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v100[4] = v81;
      v49 = sub_10000D134(v100);
      v50 = *(v48 - 8);
      v51 = *(v50 + 104);
      LODWORD(v80) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v75 = v51;
      v74[1] = v50 + 104;
      v51(v49);
      sub_10074FC74();
      sub_10000C620(v100);
      v52 = v84;
      sub_10074CD04();
      sub_10074CCE4();
      v53 = *(v77 + 8);
      v54 = v90;
      v53(v52, v90);
      v55 = [v32 traitCollection];
      sub_1006546E0();

      if (qword_100921218 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v83, qword_100981380);
      sub_100753C04();
      v99[3] = v48;
      v99[4] = v81;
      v56 = sub_10000D134(v99);
      v75(v56, v80, v48);
      sub_10074FC74();
      sub_10000C620(v99);
      v57 = v85;
      sub_10074CD04();
      sub_10074CCE4();
      v53(v57, v54);
      sub_1007472F4();
      v58 = v74[0];
      if (qword_100921220 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v83, qword_100981398);
      sub_100753C04();
      v98[3] = v48;
      v98[4] = v81;
      v59 = sub_10000D134(v98);
      v75(v59, v80, v48);
      sub_10074FC74();
      sub_10000C620(v98);
      v60 = v88;
      sub_10074CD04();
      sub_10074CCE4();
      v53(v60, v54);
      v97 = 0;
      v96 = 0u;
      v95 = 0u;
      v61 = v87;
      sub_10074AA34();
      sub_1006559B4(&unk_10092F610, &type metadata accessor for AchievementSummaryLayout, &protocol conformance descriptor for AchievementSummaryLayout);
      v62 = v76;
      sub_100750404();
      v64 = v63;
      (*(v89 + 8))(v61, v62);
      (*(v79 + 8))(v94, v58);
      (*(v78 + 8))(v91, v92);
    }

    else
    {
      v65 = v17;
      [v32 pageContainerSize];
      if (v67 < v66)
      {
        JUScreenClassGetLandscapeWidth();
      }

      v68 = v79;
      v69 = v92;
      v70 = v91;
      v71 = v94;
      sub_10074A9F4();
      v64 = v72;
      (*(v68 + 8))(v71, v65);
      (*(v78 + 8))(v70, v69);
    }
  }

  else
  {

    return 0.0;
  }

  return v64;
}

void sub_1006553AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10000C518(&qword_1009332E8, &unk_1007C9F60);
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v52 = &v44 - v9;
  v47 = sub_100748914();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074FCD4();
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  __chkstk_darwin(v17);
  v44 = &v44 - v18;
  v19 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel);
  v20 = sub_100747314();
  v54._object = 0x8000000100773260;
  v54._countAndFlagsBits = 0xD000000000000032;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_10074B194(v54, v20, v55);
  v21 = sub_100753064();

  [v19 setText:v21];

  v22 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel);
  v49 = a5;
  v23 = [a5 traitCollection];
  sub_1006546E0();

  v24 = sub_100753064();

  [v22 setText:v24];

  v25 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_completedLabel);
  sub_1007472F4();
  v26 = sub_100753064();

  [v25 setText:v26];

  v27 = sub_1007472E4();
  if (*(v27 + 16))
  {
    v28 = v46;
    v29 = *(v46 + 16);
    v29(v16, v27 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v11);

    v30 = v44;
    (*(v28 + 32))(v44, v16, v11);
    v29(v13, v30, v11);
    sub_100747304();
    v31 = [v49 traitCollection];
    LOBYTE(v29) = sub_1007537D4();

    v32 = &enum case for AchievementGroupView.Size.phone(_:);
    if ((v29 & 1) == 0)
    {
      v32 = &enum case for AchievementGroupView.Size.pad(_:);
    }

    (*(v45 + 104))(v48, *v32, v47);
    v33 = objc_allocWithZone(sub_100748924());
    v34 = sub_100748904();
    v35 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
    v36 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v36)
    {
      [v36 removeFromSuperview];
      v37 = *(v6 + v35);
    }

    else
    {
      v37 = 0;
    }

    *(v6 + v35) = v34;
    v40 = v34;

    [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_containerView) addSubview:v40];
    if (sub_100747304() < 2)
    {
      if (qword_100921828 != -1)
      {
        swift_once();
      }

      v41 = qword_100982368;
    }

    else
    {
      if (qword_100921830 != -1)
      {
        swift_once();
      }

      v41 = qword_100982380;
    }

    v42 = v51;
    v43 = sub_10000D0FC(v51, v41);
    (*(v50 + 16))(v52, v43, v42);
    swift_beginAccess();
    sub_10074AA14();
    swift_endAccess();
    (*(v28 + 8))(v30, v11);
  }

  else
  {

    v38 = OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
    v39 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v39)
    {
      [v39 removeFromSuperview];
      v39 = *(v6 + v38);
    }

    *(v6 + v38) = 0;
  }
}

uint64_t sub_1006559B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006559FC()
{
  result = qword_100941188;
  if (!qword_100941188)
  {
    type metadata accessor for PosterLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941188);
  }

  return result;
}

double sub_100655A54()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100747C14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  sub_1007479D4();
  sub_100747B84();
  sub_10074F684();
  (*(v1 + 8))(v3, v0);
  sub_1007504C4();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v13;
}

double sub_100655C8C()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007479D4();
  sub_100747B84();
  sub_10074F684();
  (*(v1 + 8))(v3, v0);
  sub_1007504C4();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_100655E28()
{

  return swift_deallocClassInstance();
}

double sub_100655E84(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel];
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

uint64_t sub_100656038(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v132 = a7;
  LODWORD(v133) = a6;
  v130 = a5;
  v139 = a4;
  v134 = a3;
  v131 = a10;
  v123 = sub_1007497D4();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074ED34();
  v137 = *(v14 - 8);
  v138 = v14;
  __chkstk_darwin(v14);
  v126 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v120 - v17;
  __chkstk_darwin(v18);
  v124 = &v120 - v19;
  v140 = sub_1007455E4();
  v135 = *(v140 - 8);
  __chkstk_darwin(v140);
  v129 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v128 = &v120 - v22;
  v23 = sub_10000C518(&qword_100923590, &unk_1007A6860);
  __chkstk_darwin(v23 - 8);
  v127 = &v120 - v24;
  v25 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v25 - 8);
  v27 = &v120 - v26;
  v28 = sub_10074C3E4();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v125 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v31 - 8);
  v33 = &v120 - v32;
  v34 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v142 = *(v34 - 8);
  v143 = v34;
  __chkstk_darwin(v34);
  v144 = &v120 - v35;
  v141 = a1;
  v36 = sub_10074EF74();
  if (v37)
  {
    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v120 = a8;
      sub_10000D198();
      v39 = sub_100753DD4();
      sub_1005A3C18(1, v39);

      v40 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
      if (v40)
      {
        v41 = v40;
        v42 = sub_100753064();

        [v41 setText:v42];
      }

      else
      {
      }

      a8 = v120;
      goto LABEL_13;
    }
  }

  v43 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
  v44 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  if (v44)
  {
    [v44 setHidden:1];
    v45 = *&a2[v43];
    if (v45)
    {
      [v45 setText:0];
    }
  }

LABEL_13:
  v46 = sub_10074EF34();
  sub_1005A33F0(v46, v47);
  v48 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel];
  sub_10074EF84();
  if (v49)
  {
    v50 = sub_100753064();
  }

  else
  {
    v50 = 0;
  }

  [v48 setText:v50];

  sub_100016B4C(v131, v33, &unk_100925990, qword_1007BB900);
  v52 = v142;
  v51 = v143;
  if ((*(v142 + 48))(v33, 1, v143) == 1)
  {
    sub_10000C8CC(v33, &unk_100925990, qword_1007BB900);
    v53 = *(v29 + 104);
    v53(v125, enum case for OfferButtonSubtitlePosition.below(_:), v28);
    v53(v27, enum case for OfferButtonSubtitlePosition.right(_:), v28);
    (*(v29 + 56))(v27, 0, 1, v28);
    sub_1006571D8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    sub_10074A9C4();
  }

  else
  {
    (*(v52 + 32))(v144, v33, v51);
  }

  v54 = v140;
  v55 = v135;
  v56 = sub_10074EF04();
  v57 = v132;
  if (!v56)
  {
    goto LABEL_24;
  }

  v58 = sub_100742E24();
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    v59 = sub_100745E94();
    if ((*(*(v59 - 8) + 48))(a8, 1, v59) == 1)
    {
      v60 = sub_10074F8B4();
      if ((*(*(v60 - 8) + 48))(a9, 1, v60) == 1)
      {

LABEL_24:
        v61 = sub_10074EF04();
        goto LABEL_26;
      }
    }
  }

  v62 = v127;
  (*(v55 + 56))(v127, 1, 1, v54);
  v145 = 0u;
  v146 = 0u;
  v61 = sub_100749EA4();

  sub_10000C8CC(&v145, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v62, &qword_100923590, &unk_1007A6860);
LABEL_26:

  v63 = sub_10074EDF4();
  v64 = sub_10074EE44();
  sub_10015DE40(v61, v63, 0, v134, v144, v139, v133 & 1, v64 & 1);

  sub_10000C518(&unk_100925780, qword_1007AC630);
  sub_100752764();
  sub_100752D34();
  v135 = *(&v145 + 1);
  v140 = v145;
  if (v61)
  {
    v65 = v61;
    v66 = v128;
    sub_100749ED4();
    v67 = v129;
    (*(v55 + 104))(v129, enum case for OfferLabelStyle.none(_:), v54);
    sub_1006571D8(&qword_100923598, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v68 = sub_100753014();
    v69 = *(v55 + 8);
    v69(v67, v54);
    v69(v66, v54);
    if ((v68 & 1) == 0)
    {

      sub_100749F14();
      sub_100744AC4();
      swift_unknownObjectRetain();
      sub_100752D34();
      sub_100744984();

      v72 = sub_100748304();
      swift_allocObject();
      v73 = sub_1007482E4();
      *(&v146 + 1) = v72;
      *&v145 = v73;
      v74 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_1001183AC(&v145, &a2[v74]);
      swift_endAccess();
      [*&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] frame];
      v148.origin.x = 0.0;
      v148.origin.y = 0.0;
      v148.size.width = 0.0;
      v148.size.height = 0.0;
      v61 = v65;
      if (CGRectEqualToRect(v147, v148))
      {
        v75 = objc_opt_self();
        v76 = [v75 areAnimationsEnabled];
        [v75 setAnimationsEnabled:0];
        sub_1006571D8(&qword_100943470, type metadata accessor for BaseLockupView, &unk_1007D0060);
        swift_unknownObjectRetain();
        sub_1007482F4();
        [a2 layoutIfNeeded];
        [v75 setAnimationsEnabled:v76];
      }

      else
      {
        sub_1006571D8(&qword_100943470, type metadata accessor for BaseLockupView, &unk_1007D0060);
        swift_unknownObjectRetain();
        sub_1007482F4();
      }

      goto LABEL_34;
    }

    v61 = v65;
  }

  v145 = 0u;
  v146 = 0u;
  v70 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_1001183AC(&v145, &a2[v70]);
  swift_endAccess();
  v71 = sub_100655E84(0, 0);
LABEL_34:
  v77 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
  v78 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  v79 = &stru_1008F2000;
  if (v78 && ([v78 isHidden] & 1) == 0 && (v80 = *&a2[v77]) != 0)
  {
    v81 = [v80 hasContent];
  }

  else
  {
    v81 = 0;
  }

  v82 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100016B4C(&a2[v82], &v145, &unk_100923520, &qword_1007A5A70);
  v83 = *(&v146 + 1);
  LODWORD(v139) = *(&v146 + 1) != 0;
  sub_10000C8CC(&v145, &unk_100923520, &qword_1007A5A70);
  v84 = sub_10074EE14();
  if (!v85)
  {
LABEL_45:
    v87 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
    v88 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v88)
    {
      [v88 setHidden:1];
      v89 = *&a2[v87];
      if (v89)
      {
        [v89 setText:0];
      }
    }

    goto LABEL_54;
  }

  if (v83)
  {
    v86 = v81;
  }

  else
  {
    v86 = 0;
  }

  if (v86)
  {

    goto LABEL_45;
  }

  v134 = v84;
  v90 = v85;
  sub_1005A3ED8();
  sub_10074EEC4();
  v91 = sub_1007532D4();

  v92 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v91)
  {
    if (v92)
    {
      v133 = v92;
      v93 = sub_10074EEC4();
      v94 = v121;
      sub_10074EEF4();
      v95 = v133;
      sub_1002FAE4C(v93, v134, v90, v94);

      v96 = v94;
      v79 = &stru_1008F2000;
      (*(v122 + 8))(v96, v123);
      goto LABEL_54;
    }
  }

  else if (v92)
  {
    v97 = v92;
    v98 = sub_100753064();

    [v97 setText:v98];

    v79 = &stru_1008F2000;
    goto LABEL_54;
  }

LABEL_54:
  v99 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
  sub_10074EFB4();
  if (v100)
  {
    v101 = sub_100753064();
  }

  else
  {
    v101 = 0;
  }

  [v99 setText:v101];

  v102 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
  v103 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v103)
  {
    v104 = [v103 isHidden];
    v105 = v142;
    if ((v104 & 1) != 0 || (v106 = *&a2[v102]) == 0)
    {
      v107 = 0;
    }

    else
    {
      v107 = [v106 v79[74].attr];
    }
  }

  else
  {
    v107 = 0;
    v105 = v142;
  }

  if (![v99 v79[74].attr])
  {
    goto LABEL_69;
  }

  if (v107)
  {
    if (v83)
    {
      v108 = 1;
    }

    else
    {
      v108 = v81;
    }

    if (v108)
    {
LABEL_69:
      v109 = 1;
      goto LABEL_72;
    }
  }

  else
  {
    v109 = v139;
    if (v81)
    {
      goto LABEL_72;
    }
  }

  v109 = 0;
LABEL_72:
  [v99 setHidden:v109];
  v110 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
  if (sub_10074EF24())
  {

    v111 = v130;
  }

  else
  {
    v111 = 1;
  }

  [v110 setHidden:v111 & 1];
  v112 = sub_10074EE44();
  if (v61 && (v112 & 1) != 0)
  {
    v113 = v126;
    sub_100749F14();
    (*(v137 + 32))(v136, v113, v138);
    swift_getObjectType();
    v114 = sub_1007424E4();
    v116 = v115;
    v117 = &a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1007423C4();
      swift_unknownObjectRelease();
    }

    *v117 = v114;
    *(v117 + 1) = v116;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1005A437C();
    swift_unknownObjectRelease();
    (*(v137 + 8))(v136, v138);
  }

  else
  {
    v118 = &a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1007423C4();
      swift_unknownObjectRelease();
    }

    *v118 = 0;
    *(v118 + 1) = 0;
    swift_unknownObjectRelease();
    sub_1005A437C();
  }

  [a2 setNeedsLayout];
  swift_unknownObjectRelease();

  return (*(v105 + 8))(v144, v143);
}

uint64_t sub_1006571D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10065725C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  if (qword_100921B68 != -1)
  {
    swift_once();
  }

  v11 = sub_1007504F4();
  v12 = sub_10000D0FC(v11, qword_100982B40);
  (*(*(v11 - 8) + 16))(&v4[v10], v12, v11);
  swift_unknownObjectWeakInit();
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong _setContinuousCornerRadius:20.0];
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v13 contentView];
    [v18 addSubview:v17];
  }

  return v13;
}

void sub_100657408(void *a1)
{
  sub_100658624();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1006574B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension33VideoTodayBrickCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10065750C;
}

void sub_10065750C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_100658624();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_100658624();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

double sub_1006576D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v4 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v4 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v44 - v7;
  v8 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v8 - 8);
  v48 = &v44 - v9;
  v10 = sub_100744864();
  __chkstk_darwin(v10 - 8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  v14 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_100744894();
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100747D94();
  v52 = *(v20 - 8);
  v53 = v20;
  __chkstk_darwin(v20);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1007504F4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  sub_1002920B8();
  v27 = sub_10074FB64();
  sub_100748784();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    goto LABEL_8;
  }

  v55[0] = v28;
  v29 = [v26 traitCollection];
  v30 = sub_10074B8E4();

  if (!v30)
  {
LABEL_8:

    return result;
  }

  v31 = sub_10074EC14();
  sub_10074F2A4();
  sub_100750504();
  v32 = OBJC_IVAR____TtC22SubscribePageExtension33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  swift_beginAccess();
  (*(v23 + 40))(&v26[v32], v25, v22);
  swift_endAccess();
  (*(v45 + 104))(v19, enum case for VideoFillMode.scaleAspectFill(_:), v17);
  v45 = v31;
  sub_10074F2A4();
  sub_100750504();
  (*(v23 + 56))(v16, 0, 1, v22);
  sub_10074EBB4();
  sub_10074EBF4();
  sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  v33 = v51;
  sub_100747D74();
  sub_1007464C4();
  sub_1007526E4();
  v34 = v55[0];
  sub_10074EB94();
  v35 = v48;
  sub_10074EC24();
  v36 = sub_100741264();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = v49;
  sub_10074EBE4();
  v38 = v50;
  sub_10074EBD4();
  type metadata accessor for VideoView(0);
  sub_1006586F4(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  v47 = v34;
  v39 = sub_1007464A4();
  sub_10000C8CC(v38, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v37, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v35, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(v55, &unk_1009276E0, &unk_1007A5C70);
  sub_100658624();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v42 = [v26 contentView];
    [v42 addSubview:v41];

    [v26 setNeedsLayout];
  }

  sub_1007442C4();
  sub_1007526E4();
  sub_100657E34();

  (*(v52 + 8))(v33, v53);
  return result;
}

void sub_100657E34()
{
  v1 = v0;
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074EC14();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC22SubscribePageExtension33VideoTodayBrickCollectionViewCell_videoAspectRatio;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v8], v2);
    LOBYTE(v8) = sub_100750444();
    v9 = *(v3 + 8);
    v9(v5, v2);
    if (v8)
    {
      if (qword_100921B60 != -1)
      {
        swift_once();
      }

      v10 = qword_100982B28;
    }

    else
    {
      if (qword_100921B58 != -1)
      {
        swift_once();
      }

      v10 = qword_100982B10;
    }

    sub_10000D0FC(v2, v10);
    [v1 bounds];
    sub_100750474();
    sub_10074F2A4();
    sub_100750504();
    sub_100750464();
    v9(v5, v2);
    sub_10074F374();
    type metadata accessor for VideoView(0);
    sub_1006586F4(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
    sub_100744204();
  }

  else
  {
  }
}

uint64_t sub_10065812C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  v2 = sub_1007504F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for VideoTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_1009434A0;
  if (!qword_1009434A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100658274(uint64_t a1)
{
  result = sub_1007504F4();
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

uint64_t (*sub_100658320(uint64_t **a1))()
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
  v2[4] = sub_1006574B8(v2);
  return sub_10001BB78;
}

uint64_t sub_100658390()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006586F4(&qword_1009434C0, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_1007D0160);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100658404(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006586F4(&qword_1009434C0, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_1007D0160);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100658490(uint64_t *a1))()
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
  sub_1006586F4(&qword_1009434C0, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_1007D0160);
  *(v3 + 32) = sub_100747DB4();
  return sub_1000181A8;
}

void sub_100658624()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1006586F4(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    Strong = v1;
  }

  v2 = sub_1003F7F08(Strong);

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

uint64_t sub_1006586F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10065873C(void *a1, char a2)
{
  v2 = &unk_100861498;
  if ((a2 & 1) == 0)
  {
    v2 = &unk_100861450;
  }

  v3 = *v2;
  if (*v2)
  {
    v5 = a1;
    sub_1007545C4();
    if (a2)
    {
      v6 = &off_100861488;
    }

    else
    {
      v6 = &off_100861440;
    }

    v7 = (v6 + 4);
    for (i = v3 & ~(v3 >> 63); i; --i)
    {
      v9 = *v7++;
      v10 = [v5 colorWithAlphaComponent:v9];
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      if (!--v3)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

char *sub_10065886C(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = sub_10074A454();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v46 = a1 & 1;
  v47 = a1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_style] = a1 & 1;
  v7 = type metadata accessor for GradientView();
  v8 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_overlayView] = v8;
  v9 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_plusDarkerView] = v9;
  v10 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_gradientMaskView] = v10;
  result = [objc_opt_self() effectWithBlurRadius:35.0];
  if (result)
  {
    v12 = result;
    v48.receiver = v1;
    v48.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v48, "initWithEffect:", result);

    v14 = v13;
    [v14 setOverrideUserInterfaceStyle:2];
    [v14 setUserInteractionEnabled:0];
    [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v15 = v14;
    [v15 setClipsToBounds:0];
    v16 = [v15 contentView];
    v17 = [v16 layer];

    [v17 setAllowsGroupBlending:0];
    v18 = OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_overlayView;
    v19 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_overlayView];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 blackColor];
    sub_1007545C4();
    v23 = [v22 colorWithAlphaComponent:0.0];
    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
    v24 = [v22 colorWithAlphaComponent:0.2];
    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();

    *&v21[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_100037ED0();

    v25 = [v15 contentView];
    [v25 addSubview:*&v15[v18]];

    v26 = OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_plusDarkerView;
    v27 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_plusDarkerView];
    v28 = [v20 blackColor];
    sub_1007545C4();
    v29 = [v28 colorWithAlphaComponent:0.0];
    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
    v30 = [v28 colorWithAlphaComponent:0.2];
    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();

    *&v27[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_100037ED0();

    v31 = [*&v15[v26] layer];
    [v31 setCompositingFilter:kCAFilterPlusD];

    v32 = [v15 contentView];
    [v32 addSubview:*&v15[v26]];

    v33 = OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_gradientMaskView;
    v34 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_gradientMaskView];
    v35 = [v20 blackColor];
    sub_10065873C(v35, v46);
    v37 = v36;

    *&v34[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v37;

    sub_100037ED0();

    v38 = *&v15[v33];
    if (v47)
    {
      v39 = &off_100861518;
    }

    else
    {
      v39 = &off_1008614D0;
    }

    if (v47)
    {
      v40 = &kCAGradientLayerRadial;
    }

    else
    {
      v40 = &kCAGradientLayerAxial;
    }

    sub_100037D2C(v39);

    v41 = *&v15[v33];
    v41[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_kind] = v46;
    v42 = v41;
    v43 = [v42 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:*v40];

    v44 = [v15 layer];
    v45 = [*&v15[v33] layer];
    objc_opt_self();
    [v44 setMask:swift_dynamicCastObjCClassUnconditional()];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100658FD8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_style] == 1)
  {
    v9 = OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_alignment;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v9], v2);
    v10 = [v1 traitCollection];
    sub_10074A444();

    v11 = *(v3 + 8);
    v11(v5, v2);
    v12 = (*(v3 + 88))(v8, v2);
    if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
    {
      v13 = 150.0;
      v14 = 500.0;
    }

    else
    {
      if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
      {
        sub_1007477B4();
        v13 = CGRectGetWidth(v22) * 0.5;
        v15 = 350.0;
      }

      else
      {
        if (v12 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
        {
          v11(v8, v2);
          v14 = 0.0;
          v13 = 0.0;
          goto LABEL_10;
        }

        sub_1007477B4();
        v13 = CGRectGetWidth(v23) + -150.0;
        v15 = -350.0;
      }

      v14 = v13 + v15;
    }

LABEL_10:
    v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_gradientMaskView];
    sub_1007477B4();
    v17 = v13 / CGRectGetWidth(v24);
    v18 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v17, 1.0}];

    sub_1007477B4();
    v19 = v14 / CGRectGetWidth(v25);
    v20 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v19, 0.0}];
  }
}

uint64_t type metadata accessor for ModuleOverlayGradientBlurView(uint64_t a1)
{
  result = qword_100943518;
  if (!qword_100943518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006594FC(uint64_t a1)
{
  result = sub_10074A454();
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

unint64_t sub_1006595CC()
{
  result = qword_100943528;
  if (!qword_100943528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943528);
  }

  return result;
}

uint64_t sub_100659620()
{
  sub_100045EB8(v0 + 16);
  sub_100027FAC(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardCollectionElementsObserver(uint64_t a1)
{
  result = qword_100943558;
  if (!qword_100943558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006596F0(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1006597A8(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1;
    v5(0, ObjectType, v3);
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

uint64_t sub_100659894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {
    sub_10074FBB4();
    sub_10065A228(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    result = sub_1007468D4();
    if (result)
    {
      v10 = sub_1007469A4();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, a2, v10);
      (*(v11 + 56))(v8, 0, 1, v10);
      v12 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
      swift_beginAccess();
      sub_1000204A4(v8, v3 + v12);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100659AE4()
{
  sub_10000C518(&qword_10092F170, &qword_1007B5010);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  v2 = sub_10065A228(&qword_100943698, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D0348);
  *(v1 + 32) = v0;
  *(v1 + 40) = v2;

  return v1;
}

double sub_100659BBC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6 && a1)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    v10 = a1;
    v9(1, ObjectType, v7);
  }

  swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (v11 && a1)
  {
    v13 = v11;
    sub_10074FBB4();
    sub_10065A228(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    v14 = a1;
    sub_1007468B4();
    if (v16)
    {
      v15 = swift_getObjectType();
      (*(v13 + 192))(*(v4 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled), v15, v13);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (sub_10074FAB4())
        {
          sub_100748644();
        }

        swift_getObjectType();
        sub_100747AF4();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100659DD8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10074FBB4();
    sub_10065A228(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    if (sub_1007468D4())
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      *(v4 + 24) = 0x3FEEB851EB851EB8;
      v13 = sub_10065A04C;
      v14 = v4;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_1000CF7B0;
      v12 = &unk_10087F138;
      v5 = _Block_copy(&aBlock);
      v6 = a1;

      v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v14 = 0;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_100144DD8;
      v12 = &unk_10087F160;
      v7 = _Block_copy(&aBlock);
      [v3 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v5 options:v7 animations:0.0 completion:1.0];
      _Block_release(v7);
      _Block_release(v5);

      swift_unknownObjectWeakAssign();
    }

    else
    {
    }
  }
}

uint64_t sub_10065A014()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10065A058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10065A070(uint64_t a1, void (*a2)(), uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v16 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = 0x3FF0000000000000;
        v21 = a2;
        v22 = v12;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_1000CF7B0;
        v20 = a3;
        v13 = _Block_copy(&aBlock);
        v14 = v11;

        v21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
        v22 = 0;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_100144DD8;
        v20 = a4;
        v15 = _Block_copy(&aBlock);
        [v16 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v13 options:v15 animations:0.0 completion:1.0];
        _Block_release(v15);
        _Block_release(v13);
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_10065A228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10065A2F0(void *a1, __n128 a2)
{
  v4 = sub_100749874();
  v108 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749854();
  v107 = *(v7 - 8);
  __chkstk_darwin(v7);
  v106 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = v89 - v10;
  __chkstk_darwin(v11);
  v111 = v89 - v12;
  v104 = sub_10074CD14();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10074F704();
  v100 = *(v101 - 1);
  __chkstk_darwin(v101);
  v99 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100748F14();
  v98 = *(v15 - 8);
  __chkstk_darwin(v15);
  v97 = (v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v110 = (v89 - v18);
  v19 = sub_10000C518(&qword_100934A08, &qword_1007BC310);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v89 - v21;
  sub_100745884();
  sub_10065B340(&qword_100934990, &type metadata accessor for TitledParagraph, &protocol conformance descriptor for TitledParagraph);
  sub_1007468B4();
  v23 = aBlock;
  if (!aBlock)
  {
    return 0.0;
  }

  v93 = v6;
  v94 = v7;
  v95 = v4;
  sub_10038931C();
  sub_1007468E4();
  sub_100752E84();
  (*(v20 + 8))(v22, v19);
  LODWORD(v91) = aBlock;
  v24 = sub_100745864();
  swift_getKeyPath();
  v92 = a1;
  sub_100746914();

  v25 = v116[0];
  v26 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v24];
  v27 = [v24 length];
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = v25;
  *(v28 + 32) = v26;
  *(v28 + 40) = 1;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100047814;
  *(v29 + 24) = v28;
  v123 = sub_1000B18A8;
  v124 = v29;
  aBlock = _NSConcreteStackBlock;
  v120 = 1107296256;
  v121 = sub_100047044;
  v122 = &unk_10087F2C8;
  v30 = _Block_copy(&aBlock);
  v31 = v25;
  v109 = v26;

  [v24 enumerateAttributesInRange:0 options:v27 usingBlock:{0x100000, v30}];

  _Block_release(v30);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_100745874();
    v33 = v98;
    v34 = v97;
    (v98[13])(v97, enum case for TitledParagraphStyle.detail(_:), v15);
    sub_10065B340(&qword_1009436B0, &type metadata accessor for TitledParagraphStyle, &protocol conformance descriptor for TitledParagraphStyle);
    sub_100753274();
    sub_100753274();
    v35 = v23;
    if (aBlock == v116[0] && v120 == v116[1])
    {
      v90 = 1;
    }

    else
    {
      v90 = sub_100754754();
    }

    v37 = v101;
    v38 = v91;
    v39 = v33[1];
    v39(v34, v15);
    v39(v110, v15);

    if (v38)
    {
      if (qword_100920818 != -1)
      {
        swift_once();
      }

      v40 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
      sub_10000D0FC(v40, qword_10097EF08);
      v116[0] = sub_10007DC04();
      sub_100743464();
      swift_unknownObjectRelease();
      v97 = aBlock;
    }

    else
    {
      v97 = 0;
    }

    sub_100745844();
    v98 = v35;
    v91 = sub_100745854();
    v89[1] = v41;
    v92 = v109;
    v42 = sub_10007DC04();
    swift_getKeyPath();
    v43 = v99;
    sub_100746914();

    sub_10074F674();
    v2 = v44;
    (*(v100 + 8))(v43, v37);
    v110 = v42;
    isEscapingClosureAtFileLocation = [v42 traitCollection];
    sub_100038D38();
    if (qword_100920FF0 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v45 = sub_100750534();
  sub_10000D0FC(v45, qword_100980D08);
  v101 = isEscapingClosureAtFileLocation;
  v46 = sub_100753C14();
  v47 = sub_10074F3F4();
  v122 = v47;
  v48 = sub_10065B340(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v123 = v48;
  v49 = sub_10000D134(&aBlock);
  v50 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v51 = *(*(v47 - 1) + 104);
  v51(v49, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v52 = v46;
  sub_10074FC74();
  sub_10000C620(&aBlock);
  v53 = v102;
  sub_10074CD04();
  sub_10074CCE4();
  v54 = v103[1];
  v55 = v104;
  v54(v53, v104);
  v117 = v47;
  v118 = v48;
  v56 = sub_10000D134(v116);
  v51(v56, v50, v47);
  v57 = v52;
  sub_10074FC74();
  sub_10000C620(v116);
  v103 = v57;
  sub_10074CD04();
  sub_10074CCE4();
  v54(v53, v55);
  v58 = 0;
  v59 = v90;
  if ((v90 & 1) == 0)
  {
    v58 = sub_100749804();
  }

  v60 = swift_allocObject();
  *(v60 + 16) = v58 & 1;
  v61 = v110;
  *(v60 + 24) = v105;
  *(v60 + 32) = v61;
  v62 = v97;
  *(v60 + 40) = v109;
  *(v60 + 48) = v62;
  v63 = sub_100750F34();
  swift_allocObject();
  v64 = v92;
  swift_unknownObjectRetain();
  v65 = sub_100750EF4();
  v115[3] = v63;
  v115[4] = &protocol witness table for LayoutViewPlaceholder;
  v115[0] = v65;
  v66 = v108;
  v67 = v94;
  v68 = v93;
  v69 = v111;
  v109 = v64;
  if (v58)
  {
    v70 = v107;
    if (qword_100920828 != -1)
    {
      swift_once();
    }

    v71 = sub_10000D0FC(v67, qword_10097EF38);
    v72 = *(v70 + 16);
    v72(v69, v71, v67);
    sub_1002ED600(v61, v2);
    sub_100749824();
    [v61 pageMarginInsets];
    sub_100749834();
  }

  else
  {
    v70 = v107;
    if (v59)
    {
      if (qword_100920830 != -1)
      {
        swift_once();
      }

      v73 = qword_10097EF50;
    }

    else
    {
      if (qword_100920820 != -1)
      {
        swift_once();
      }

      v73 = qword_10097EF20;
    }

    v74 = sub_10000D0FC(v67, v73);
    v72 = *(v70 + 16);
    v75 = v96;
    v72(v96, v74, v67);
    (*(v70 + 32))(v69, v75, v67);
  }

  v72(v106, v69, v67);
  v76 = v70;
  v77 = v122;
  v78 = v123;
  v79 = sub_10000C888(&aBlock, v122);
  v114[3] = v77;
  v114[4] = *(v78 + 1);
  v80 = sub_10000D134(v114);
  (*(*(v77 - 1) + 16))(v80, v79, v77);
  v81 = v117;
  v82 = v118;
  v83 = sub_10000C888(v116, v117);
  v113[3] = v81;
  v113[4] = *(v82 + 8);
  v84 = sub_10000D134(v113);
  (*(*(v81 - 8) + 16))(v84, v83, v81);
  sub_10000C824(v115, v112);
  sub_100749864();
  sub_10065B340(&qword_100934A00, &type metadata accessor for TitledParagraphLayout, &protocol conformance descriptor for TitledParagraphLayout);
  v85 = v95;
  sub_100750404();
  v36 = v86;

  v87 = v109;
  swift_unknownObjectRelease();

  (*(v66 + 8))(v68, v85);
  (*(v76 + 8))(v111, v67);
  sub_10000C620(v115);
  sub_10000C620(v116);
  sub_10000C620(&aBlock);
  return v36;
}

uint64_t sub_10065B28C()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_10065B2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10065B300()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10065B340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10065B388(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v37 = a4;
  v36 = a3;
  v35 = a2;
  v4 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  sub_100748BA4();
  sub_10065BDF4(&unk_100935940, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  sub_100745154();
  v38 = v13;
  sub_10074E994();
  if (v36)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    v14 = 0;
    v15 = v6;
    v16 = v38;
    v17 = v7;
  }

  else
  {
    sub_100745084();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100745164();
    v15 = v6;
    v17 = v7;
    if (v18)
    {

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v16 = v38;
  }

  v19 = v37;
  (*(v8 + 16))(v10, v16, v17);
  v20 = (*(v8 + 88))(v10, v17);
  if (v20 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v21 = &off_10086C040;
  }

  else
  {
    if (v20 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v8 + 8))(v10, v17);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v21 = &off_10086E268;
  }

  v22 = (v21[1])();
  if ((v23 & 1) == 0)
  {
LABEL_19:
    v33 = *&v22;

    v32 = v33;
    goto LABEL_20;
  }

LABEL_14:
  if (sub_10034E47C())
  {
    v22 = (*(v24 + 40))(v15, v14, v19);
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v26 = sub_100750B04();
  sub_10000D0FC(v26, qword_1009820C8);
  v27 = [v19 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007A5CF0;
  *(v28 + 32) = v27;
  v29 = v27;
  v30 = sub_100751044();
  sub_100750544();
  v32 = v31;

  v16 = v38;
LABEL_20:
  sub_10040DA74(v15);
  (*(v8 + 8))(v16, v17);
  return v32;
}

double sub_10065B834(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v9 = sub_10074E984();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  if (a3)
  {
    return sub_10065B388(a1, a2, a3 & 1, a4);
  }

  v22 = v4;
  sub_100747494();
  (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyDefinition(_:), v9);
  sub_10065BDF4(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v25 == v23 && v26 == v24)
  {
    v17 = *(v10 + 8);
    v17(v12, v9);
    v17(v15, v9);

    return 0.0;
  }

  else
  {
    v20 = sub_100754754();
    v21 = a2;
    v18 = *(v10 + 8);
    v18(v12, v9);
    v18(v15, v9);
    a2 = v21;

    result = 0.0;
    if ((v20 & 1) == 0)
    {
      return sub_10065B388(a1, a2, a3 & 1, a4);
    }
  }

  return result;
}

void sub_10065BAAC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_100747494();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyDefinition(_:), v5);
  sub_10065BDF4(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v20 == v19)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v17 = a2;
    v13 = sub_100754754();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      sub_100730114(a1, v17, v18);
      return;
    }
  }

  if (qword_100921EA8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_10000D0FC(v15, qword_100983190);
  sub_100643D58(v16, v18);
}

uint64_t sub_10065BD40()
{
  sub_100731B8C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyDefinitionsDataSource(uint64_t a1)
{
  result = qword_1009436E0;
  if (!qword_1009436E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065BDF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchButton(uint64_t a1)
{
  result = qword_1009439E8;
  if (!qword_1009439E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065BED8()
{
  sub_10000D198();
  result = sub_100753E84();
  qword_100982B88 = result;
  return result;
}

uint64_t sub_10065BF0C()
{
  sub_10000D198();
  result = sub_100753EF4();
  qword_100982B90 = result;
  return result;
}

id sub_10065BF40(uint64_t a1)
{
  v3 = sub_100743B04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[qword_1009439E0] = a1;
  v7 = type metadata accessor for SearchButton(0);
  v15.receiver = v1;
  v15.super_class = v7;

  v8 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100747764();
  v9 = qword_100921B70;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_100982B88];
  if (qword_100921B78 != -1)
  {
    swift_once();
  }

  [v10 setTintColor:qword_100982B90];

  v11 = [v10 layer];
  [v11 setCornerRadius:22.0];

  [v10 setClipsToBounds:1];
  (*(v4 + 104))(v6, enum case for SystemImage.magnifyingglass(_:), v3);
  v12 = sub_100743AE4();
  (*(v4 + 8))(v6, v3);
  v13 = [v12 imageWithRenderingMode:2];

  [v10 setImage:v13 forState:0];
  [v10 addTarget:v10 action:"goToSearch" forControlEvents:64];

  return v10;
}

double sub_10065C1FC(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  if (qword_100920E28 != -1)
  {
    swift_once();
  }

  v3 = sub_100750534();
  v4 = sub_10000D0FC(v3, qword_1009807C8);
  sub_10010B3A8(v4, v2, 44.0);
  v6 = v5;

  return v6;
}

uint64_t sub_10065C2E4()
{
  v0 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v0 - 8);
  v33 = &v29 - v1;
  v32 = sub_100742CF4();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1007493D4();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = sub_10074F4D4();
  __chkstk_darwin(v18);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (*(v20 + 104))(&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
  v21 = sub_100741264();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_100743FE4();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v35 = 0u;
  v36 = 0u;
  sub_1007525F4();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.push(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.never(_:), v30);
  (*(v2 + 104))(v31, enum case for FlowOrigin.inapp(_:), v32);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v23 = v33;
  v24 = sub_100742C84();
  v25 = *(v34 + qword_1009439E0);
  v26 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v23, 1, v26) == 1)
  {

    return sub_100052F00(v23);
  }

  else
  {
    sub_1003C1424(v24, 1, v25, v23);

    return (*(v27 + 8))(v23, v26);
  }
}

void sub_10065C8B0(void *a1)
{
  v1 = a1;
  sub_10065C2E4();
}

void sub_10065C8F8(void *a1, uint64_t a2, void *a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchButton(0);
  v4 = a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", v4);
  [v5 invalidateIntrinsicContentSize];
  v6 = [v5 layer];
  [v5 intrinsicContentSize];
  [v6 setCornerRadius:v7 * 0.5];
}

id sub_10065CA00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10065CA50(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_1007506E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1007506B4();
  sub_1007506C4();
  sub_10000C824(v4 + 88, v12);
  v13[3] = sub_1007511A4();
  v13[4] = &protocol witness table for Margins;
  sub_10000D134(v13);
  sub_100751184();
  sub_1007506C4();
  sub_10000C620(v13);
  sub_100751254();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_10065CC2C()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1007507D4();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_100750694();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  sub_100750664();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  sub_100750654();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  return sub_100750674();
}

uint64_t sub_10065CDD4()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1007507D4();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_100750654();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  sub_100750664();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  return sub_100750674();
}

uint64_t sub_10065CF48()
{
  sub_1007506B4();
  sub_1007506C4();
  sub_10000C824(v0 + 88, &v2);
  v3[3] = sub_1007511A4();
  v3[4] = &protocol witness table for Margins;
  sub_10000D134(v3);
  sub_100751184();
  sub_1007506C4();
  return sub_10000C620(v3);
}

uint64_t sub_10065D034(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10065D07C(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

double sub_10065D0EC@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10065D118(uint64_t a1, uint64_t a2)
{
  v4 = sub_10065D238();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_10065D170()
{
  result = qword_100943A38;
  if (!qword_100943A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943A38);
  }

  return result;
}

unint64_t sub_10065D1C8()
{
  result = qword_100943A40;
  if (!qword_100943A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943A40);
  }

  return result;
}

unint64_t sub_10065D238()
{
  result = qword_100943A48;
  if (!qword_100943A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943A48);
  }

  return result;
}

uint64_t sub_10065D28C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10065D2E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_10065D394()
{
  v0 = sub_100752404();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100752E44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074F704();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100745224();
  sub_10065DADC(&qword_10093A8C0, &type metadata accessor for UnifiedMessage, &protocol conformance descriptor for UnifiedMessage);
  sub_1007468B4();
  v8 = v60[0];
  if (v60[0])
  {
    v56 = v2;
    sub_10074CC94();
    sub_100752754();
    v9 = v60[0];
    if (!v60[0])
    {

      return;
    }

    v55 = v1;
    sub_100745214();
    v10 = v9;
    v11 = sub_10074CC84();

    if (!v11)
    {

      return;
    }

    v54 = v10;
    sub_10000C518(&qword_1009307F8, &qword_1007B7658);
    sub_100752754();
    if (!v60[0])
    {

      return;
    }

    v53 = v60[0];
    v12 = v11;
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 superview];

      if (!v15)
      {
        v16 = [v12 view];
        if (!v16)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = v16;
        [v16 setHidden:1];

        v18 = [v53 view];
        if (!v18)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = v18;
        v20 = [v12 view];
        if (!v20)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v15 = v20;
        [v19 insertSubview:v20 atIndex:0];
      }

      v21 = [v12 view];
      if (v21)
      {
        v22 = v21;
        [v21 updateTraitsIfNeeded];

        swift_getKeyPath();
        sub_100746914();

        sub_10074F674();
        v24 = v23;
        v26 = v25;
        (*(v58 + 8))(v6, v4);
        v27 = (*(v59 + 144))(v24, v26);
        v29 = v28;
        v30 = [v12 view];
        if (v30)
        {
          v31 = v30;
          v32 = v12;
          [v30 sizeThatFits:{v27, v29}];
          v34 = v33;
          v36 = v35;

          v37 = v57;
          sub_100752E04();
          sub_10000C518(&qword_100923930, &qword_1007A6B60);
          sub_100752454();
          *(swift_allocObject() + 16) = xmmword_1007A5A00;
          sub_1007523F4();
          v62._object = 0x8000000100789720;
          v62._countAndFlagsBits = 0xD00000000000002CLL;
          sub_1007523E4(v62);
          v61 = v7;
          v60[0] = v8;

          sub_1007523C4();
          sub_1000277BC(v60);
          v63._countAndFlagsBits = 8250;
          v63._object = 0xE200000000000000;
          sub_1007523E4(v63);
          type metadata accessor for CGSize(0);
          v61 = v38;
          v60[0] = v34;
          v60[1] = v36;
          sub_1007523C4();
          sub_1000277BC(v60);
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_1007523E4(v64);
          sub_100752414();
          v39 = v55;
          sub_100752CF4();

          (*(v56 + 8))(v37, v39);
          v40 = [v12 view];
          v41 = v54;
          if (v40)
          {
            v42 = v40;
            v43 = [v40 superview];

            v44 = v53;
            v45 = [v53 view];
            v46 = v45;
            if (v43)
            {
              if (v45)
              {
                sub_100009D34();
                v47 = sub_100753FC4();

                if ((v47 & 1) == 0)
                {
LABEL_28:
                  v51 = [v32 view];

                  if (v51)
                  {
                    [v51 setHidden:0];

                    return;
                  }

                  goto LABEL_34;
                }

                goto LABEL_23;
              }

              v46 = v43;
            }

            else if (!v45)
            {
LABEL_23:
              v48 = [v32 view];
              if (!v48)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v49 = v48;
              [v48 removeFromSuperview];

              v50 = [v32 view];
              if (!v50)
              {
LABEL_39:
                __break(1u);
                return;
              }

              v46 = v50;
              [v50 updateTraitsIfNeeded];
            }

            goto LABEL_28;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

uint64_t sub_10065DADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10065DB28()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100982BA8);
  sub_10000D0FC(v4, qword_100982BA8);
  if (qword_1009212E8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009815F0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10065DD00(uint64_t a1)
{
  v36 = a1;
  v2 = sub_100750B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_arcadeWelcomeContentView) = [objc_allocWithZone(type metadata accessor for ArcadeWelcomeContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedTitledButton(0);
  if (qword_1009212E8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v6, qword_1009815F0);
  v11 = *(v7 + 16);
  v35[1] = v7 + 16;
  v11(v9, v10, v6);
  v35[0] = v6;
  if (qword_100921B80 != -1)
  {
    swift_once();
  }

  v12 = v2;
  v13 = sub_10000D0FC(v2, qword_100982BA8);
  v14 = *(v3 + 16);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_familyButton) = sub_1003878B0(v9, v5);
  v11(v9, v10, v35[0]);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_continueButton) = sub_1003878B0(v9, v5);
  v15 = v36;
  sub_1000DDB7C(v36, v37);
  v16 = sub_1000DD09C(v37);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_familyButton;
  v18 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_familyButton];
  v19 = objc_opt_self();
  v20 = v16;
  v21 = v18;
  v22 = [v19 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = *&v16[v17];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v24 = v23;
  v25 = sub_100753EF4();
  [v24 setTintColor:v25];

  v26 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_arcadeWelcomeContentView];
  v27 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentView];
  *&v20[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentView] = v26;
  v28 = v26;

  [*&v20[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentScrollView] addSubview:v28];
  [v20 setNeedsLayout];

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_continueButton;
  v30 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_continueButton];
  v31 = sub_100753EF4();
  [v30 setBackgroundColor:v31];

  v32 = *&v20[v29];
  v33 = [v19 whiteColor];
  [v32 setTintColor:v33];

  sub_1000DDC64(v15);
  return v20;
}

id sub_10065E1AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_continueButton];
  sub_1007489A4();
  sub_10074ECB4();
  v8 = v7;

  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v6 setTitle:v9 forState:0];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v6[qword_10097FD38];
  v12 = *&v6[qword_10097FD38];
  v13 = *&v6[qword_10097FD38 + 8];
  *v11 = sub_10065E860;
  v11[1] = v10;

  sub_1000164A8(v12, v13);

  v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayView];
  sub_1006EC9D0(v6, 0x4072C00000000000, 0);
  v15 = &stru_1008F2000;
  [v3 setNeedsLayout];
  v16 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_familyButton];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v18 = *&v14[v17];

  v19 = sub_1006ECDD4(v16, v18);

  if (v19)
  {
    v20 = swift_beginAccess();
    __chkstk_darwin(v20);
    result = sub_10065E898(&v14[v17], sub_10065EBDC);
    v22 = *(*&v14[v17] + 16);
    if (v22 < result)
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_10015D8D8(result, v22);
    swift_endAccess();
    v23 = [v16 superview];
    if (v23)
    {
      v24 = v23;
      v25 = a2;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v26 = v14;
      v27 = sub_100753FC4();

      if (v27)
      {
        [v16 removeFromSuperview];
      }

      a2 = v25;
      v15 = &stru_1008F2000;
    }
  }

  [v3 v15[51].attr];
  if (sub_100748994())
  {
    sub_10074ECB4();
    v28 = a2;
    if (v29)
    {
      v30 = sub_100753064();
    }

    else
    {
      v30 = 0;
    }

    [v16 setTitle:v30 forState:0];

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = &v16[qword_10097FD38];
    v41 = *&v16[qword_10097FD38];
    v42 = *&v16[qword_10097FD38 + 8];
    *v40 = sub_10065EA64;
    v40[1] = v39;

    sub_1000164A8(v41, v42);

    sub_1006EC9D0(v16, 0x4072C00000000000, 0);
    [v3 v15[51].attr];

    a2 = v28;
    goto LABEL_21;
  }

  v31 = *&v14[v17];

  v32 = sub_1006ECDD4(v16, v31);

  if (!v32)
  {
LABEL_18:
    [v3 v15[51].attr];
LABEL_21:
    sub_100384264(a1, a2);
    return [v3 v15[51].attr];
  }

  v33 = swift_beginAccess();
  __chkstk_darwin(v33);
  result = sub_10065E898(&v14[v17], sub_10065E890);
  v34 = *(*&v14[v17] + 16);
  if (v34 >= result)
  {
    sub_10015D8D8(result, v34);
    swift_endAccess();
    v35 = [v16 superview];
    if (v35)
    {
      v36 = v35;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v37 = v14;
      v38 = sub_100753FC4();

      if (v38)
      {
        [v16 removeFromSuperview];
      }
    }

    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

double sub_10065E6A8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a2();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10065E738()
{
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_delegate;

  return sub_10000C4F0(v1);
}

uint64_t sub_10065E828()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10065E898(void **a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v4 = *a1;
  v5 = *a1 + 2;
  v6 = *v5;
  if (!*v5)
  {
LABEL_5:
    if (!v2)
    {
      return *v5;
    }

    return v3;
  }

  v9 = 0;
  v3 = 0;
  while (1)
  {
    result = a2(v4[v9 + 4], &v4[v9 + 5]);
    if (result)
    {
      break;
    }

    ++v3;
    v9 += 11;
    if (v6 == v3)
    {
      goto LABEL_5;
    }
  }

  v19 = a1;
  if (v2)
  {
    return v3;
  }

  v11 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v12 = *v5;
    if (v11 == *v5)
    {
      return v3;
    }

    v13 = v9 * 8 + 120;
    while (v11 < v12)
    {
      sub_10065EA94(v4 + v13, &v17);
      v14 = a2(v17, &v18);
      result = sub_10065EB04(&v17);
      if ((v14 & 1) == 0)
      {
        if (v11 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = *v5;
          if (v3 >= v15)
          {
            goto LABEL_27;
          }

          result = sub_10065EA94(&v4[11 * v3 + 4], &v17);
          if (v11 >= v15)
          {
            goto LABEL_28;
          }

          sub_10065EA94(v4 + v13, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10025DABC(v4);
          }

          result = sub_10065EB6C(v16, &v4[11 * v3 + 4]);
          if (v11 >= v4[2])
          {
            goto LABEL_29;
          }

          result = sub_10065EB6C(&v17, v4 + v13);
          *v19 = v4;
        }

        ++v3;
      }

      ++v11;
      v5 = v4 + 2;
      v12 = v4[2];
      v13 += 88;
      if (v11 == v12)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10065EA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100929F28, &unk_1007AE128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10065EB04(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100929F28, &unk_1007AE128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10065EB6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100929F28, &unk_1007AE128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10065EBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v22 = a5;
  v23 = a2;
  v26 = sub_10074EAB4();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100749A94();
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - v11;
  v13 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100746944();
  sub_1007525C4();
  (*(v14 + 8))(v16, v13);
  sub_1007468F4();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  v17 = sub_10007DC04();
  (*(*(v22 + 8) + 80))(v27, v12, v23, v9, v6, v17, v25);
  swift_unknownObjectRelease();
  (*(v24 + 8))(v6, v26);
  (*(v7 + 8))(v9, v21);
  (*(v10 + 8))(v12, v20);
  return sub_10000C620(v27);
}

double sub_10065EF24()
{
  v1 = sub_100747C14();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  *&v32 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074F704();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F6E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  v12 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  ObjectType = swift_getObjectType();
  top = 20.0;
  bottom = 20.0;
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_useCardStyling) & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
  }

  sub_100753BA4();
  v19 = v18;
  v21 = v20;
  type metadata accessor for GenericProductReviewCollectionViewCell(0);
  if (swift_dynamicCastMetatype())
  {
    v30[1] = v19;
    v30[2] = v21;
    v32 = bottom;
    v33 = top;
    v22 = OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_itemLayoutContext;
    (*(v7 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v6);
    swift_getKeyPath();
    v31 = v22;
    sub_100746914();

    sub_10074F5D4();
    v23 = v35;
    (*(v3 + 8))(v5, v35);
    (*(v7 + 16))(v34, v11, v6);
    if (qword_1009207D8 != -1)
    {
      swift_once();
    }

    sub_10074F6B4();
    (*(v7 + 8))(v11, v6);
    (*(v3 + 56))(v14, 0, 1, v23);
    sub_1000E82B4(v0 + v31, v14);
    v25 = v24;
    sub_10000C8CC(v14, &unk_100926C40, qword_1007B9FE0);
    bottom = v32;
    top = v33;
  }

  else if (swift_conformsToProtocol2() && ObjectType)
  {
    sub_100748B84();
    v25 = v26;
  }

  else
  {
    v25 = 0.0;
    if (swift_conformsToProtocol2() && ObjectType)
    {
      v27 = v32;
      sub_100746884();
      sub_10074ABA4();
      v25 = v28;
      (*(*&v33 + 8))(COERCE_DOUBLE(*&v27), v1);
    }
  }

  return bottom + top + v25;
}

void sub_10065F490()
{
  sub_10000D198();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_100943AA0 = sub_100753EC4(v3, v2).super.isa;
}

id sub_10065F570()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v24 - v6;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewDidLoad", v5);
  v8 = v1[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_useCardStyling];
  v25 = v7;
  if (v8 == 1)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = result;
    v11 = [result layer];

    [v11 setCornerRadius:18.0];
    result = [v1 view];
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = result;
    if (qword_100921B88 != -1)
    {
      swift_once();
    }

    [v12 setBackgroundColor:qword_100943AA0];
LABEL_12:
    v17 = v4;

    result = [v1 view];
    if (result)
    {
      v18 = result;
      v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_scrollView];
      [result addSubview:v19];

      [v19 setDelegate:v1];
      [v19 setAlwaysBounceVertical:1];
      v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_componentView];
      v21 = swift_getObjectType();
      sub_100747B54();
      v22 = v25;
      sub_100746944();
      sub_1007525C4();
      (*(v17 + 8))(v22, v3);
      v26[3] = v21;
      v26[0] = v20;
      sub_1007442C4();
      sub_100752764();
      v23 = v20;
      sub_100752D34();
      sub_1007430A4();

      sub_10000C8CC(v27, &unk_1009297F0, &unk_1007AD7A0);
      sub_10000C620(v26);
      return [v19 addSubview:v23];
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_componentView];
  v14 = [v13 backgroundView];
  result = [v1 view];
  v12 = result;
  if (v14)
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = [v14 backgroundColor];
    [v12 setBackgroundColor:v15];

    goto LABEL_12;
  }

  if (result)
  {
    v16 = [v13 backgroundColor];
    [v12 setBackgroundColor:v16];

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_10065F9C4()
{
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  top = 20.0;
  left = 20.0;
  if ((v0[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_useCardStyling] & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  [result bounds];

  v15 = sub_10065EF24();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v58.origin.x = v18;
  v58.origin.y = v20;
  v58.size.width = v22;
  v58.size.height = v24;
  MinX = CGRectGetMinX(v58);
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = result;
  v26 = left;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v59.origin.x = v28;
  v59.origin.y = v30;
  v59.size.width = v32;
  v59.size.height = v34;
  MinY = CGRectGetMinY(v59);
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  Width = CGRectGetWidth(v60);
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_componentView] setFrame:{sub_10010FD98(MinX, MinY, Width, v15, top, v26)}];
  [v1 setContentSize:{Width, v15}];
  [v1 frame];
  Height = CGRectGetHeight(v61);
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = result;
  if (Height < v15)
  {
    v15 = Height;
  }

  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v62.origin.x = v49;
  v62.origin.y = v51;
  v62.size.width = v53;
  v62.size.height = v55;
  return [v0 setPreferredContentSize:{CGRectGetWidth(v62), v15}];
}

uint64_t type metadata accessor for ProductPageReviewsOverflowViewController(uint64_t a1)
{
  result = qword_100943AF8;
  if (!qword_100943AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065FEE0(uint64_t a1)
{
  result = sub_1007469A4();
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

double sub_10065FFA0()
{
  swift_getObjectType();
  sub_100747B54();
  return result;
}

void sub_10066000C(void *a1, id a2)
{
  if ([a2 horizontalSizeClass] == 2)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {

      [a1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

id sub_1006600B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_objectGraph] = a6;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_itemLayoutContext;
  v15 = sub_1007469A4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a1, v15);
  v17 = objc_allocWithZone(UIScrollView);

  v18 = [v17 init];
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_scrollView] = v18;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = &v8[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_componentView];
  *v20 = v19;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v8[OBJC_IVAR____TtC22SubscribePageExtension40ProductPageReviewsOverflowViewController_useCardStyling] = a7;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A5A00;
  *(v22 + 32) = sub_1007516F4();
  *(v22 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v23 = v21;
  sub_100753704();

  swift_unknownObjectRelease();

  (*(v16 + 8))(a1, v15);
  return v23;
}

double sub_100660328(uint64_t a1)
{
  v2 = sub_10074F6E4();
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v61 - v5;
  v6 = sub_10074E5E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v68 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&unk_100943B20, &qword_1007BD5F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v74 = &v61 - v12;
  v72 = sub_10074F704();
  v13 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  sub_10074E664();
  sub_100660BD4(&qword_100935368, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);
  v73 = a1;
  sub_1007468B4();
  v18 = v77;
  if (!v77)
  {
    return 0.0;
  }

  v64 = v11;
  v70 = v10;
  swift_getKeyPath();
  v75 = v18;
  sub_100746914();

  sub_10074F5E4();
  v20 = v19;
  v62 = v7;
  v21 = *(v13 + 8);
  v63 = v6;
  v22 = v72;
  v21(v17, v72);
  swift_getKeyPath();
  v23 = v71;
  sub_100746914();

  sub_10074F5D4();
  v25 = v24;
  v21(v23, v22);
  *&v26 = v20 - v25;
  sub_100746964();
  sub_100752EB4();
  swift_getKeyPath();
  sub_100746914();

  v27 = v77;
  v28 = v68;
  sub_10074E604();
  swift_getKeyPath();
  sub_1000F1EA0();
  sub_100752E94();

  v29 = v76;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v31 = v30;
  v61 = v17;
  v32 = v21;
  v21(v17, v22);
  sub_1006439D4(v27, v28, (v29 & 1) == 0, v31, v26, 0);
  v34 = v33;

  (*(v62 + 8))(v28, v63);
  v35 = sub_10074E614();
  if (v36)
  {
    v63 = v35;
    v68 = v36;
    v37 = v66;
    v38 = v67;
    (*(v66 + 104))(v69, enum case for PageGrid.Direction.vertical(_:), v67);
    swift_getKeyPath();
    v39 = v71;
    sub_100746914();

    sub_10074F674();
    v40 = v72;
    v32(v39, v72);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5D4();
    v32(v39, v40);
    v41 = v69;
    (*(v37 + 16))(v65, v69, v38);
    sub_1004E97E0(0.0);
    v42 = v61;
    sub_10074F6B4();
    (*(v37 + 8))(v41, v38);
    type metadata accessor for TitleHeaderView(0);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    v44 = v43;
    v46 = v45;
    v32(v39, v40);
    if (qword_100921E88 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for TitleHeaderView.Style(0);
    v48 = sub_10000D0FC(v47, qword_100983130);
    sub_10074F664();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    swift_getKeyPath();
    sub_100746914();

    v57 = v77;
    swift_getObjectType();
    sub_1001072B0(0, 0, 0, v63, v68, 0, 0, 0, v44, v46, 0.0, 0.0, v50, v52, v54, v56, 0, 0, 2, v48, 1, v57);
    v59 = v58;
    swift_unknownObjectRelease();

    v32(v42, v40);
    (*(v64 + 8))(v74, v70);
    return v34 + v59;
  }

  else
  {
    (*(v64 + 8))(v74, v70);
  }

  return v34;
}

uint64_t sub_100660BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100660C28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_100660C84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100660D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void *sub_100660DD4()
{
  v1 = sub_10074EA34();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_100748D64();
  v17 = *(v9 - 8);
  v18 = v9;
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746024();
  sub_10066111C();
  result = sub_1007468B4();
  if (v19)
  {
    v16 = v0;
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_1007525B4();

    (*(v6 + 8))(v8, v5);
    if ((*(v2 + 88))(v4, v1) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v2 + 96))(v4, v1);
      v13 = v17;
      v14 = v4;
      v15 = v18;
      (*(v17 + 32))(v11, v14, v18);
      *(*(v16 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = sub_100748D54();

      sub_10028864C();

      return (*(v13 + 8))(v11, v15);
    }

    else
    {

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

unint64_t sub_10066111C()
{
  result = qword_100923AF8;
  if (!qword_100923AF8)
  {
    sub_100746024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923AF8);
  }

  return result;
}

void sub_10066117C()
{
  qword_100943B50 = &type metadata for Double;
  unk_100943B58 = &protocol witness table for Double;
  qword_100943B38 = 0;
  qword_100943B78 = &type metadata for Double;
  unk_100943B80 = &protocol witness table for Double;
  qword_100943B60 = 0x4028000000000000;
  qword_100943BA0 = &type metadata for Double;
  unk_100943BA8 = &protocol witness table for Double;
  qword_100943B88 = 0x4014000000000000;
  qword_100943BC8 = &type metadata for Double;
  unk_100943BD0 = &protocol witness table for Double;
  qword_100943BB0 = 0x4041000000000000;
}

void sub_1006611C4()
{
  qword_100943BF0 = &type metadata for Double;
  unk_100943BF8 = &protocol witness table for Double;
  qword_100943BD8 = 0;
  qword_100943C18 = &type metadata for Double;
  unk_100943C20 = &protocol witness table for Double;
  qword_100943C00 = 0x4024000000000000;
  qword_100943C40 = &type metadata for Double;
  unk_100943C48 = &protocol witness table for Double;
  qword_100943C28 = 0x4014000000000000;
  qword_100943C68 = &type metadata for Double;
  unk_100943C70 = &protocol witness table for Double;
  qword_100943C50 = 0x4014000000000000;
}

char *sub_100661208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_presenter] = a1;
  v7 = &v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver];
  *(v7 + 3) = sub_10074BAA4();
  *(v7 + 4) = &protocol witness table for BasePresenter;
  *v7 = a1;
  sub_1007442C4();
  sub_100752764();
  swift_retain_n();

  sub_100752D34();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_artworkLoader] = v21[0];
  sub_1007495B4();
  sub_100752754();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_impressionsCalculator] = v21[0];
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    if (qword_100921B98 != -1)
    {
      swift_once();
    }

    v10 = &qword_100943BD8;
  }

  else
  {
    if (qword_100921B90 != -1)
    {
      swift_once();
    }

    v10 = &qword_100943B38;
  }

  sub_1000DDB7C(v10, v21);
  sub_1000DDB7C(v21, v20);
  v11 = objc_allocWithZone(type metadata accessor for ArcadeWelcomePageView());
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_pageView] = sub_10065DD00(v20);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  v13 = v12;
  if (*&v12[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_impressionsCalculator])
  {
    v14 = v12;

    sub_1007495A4();
  }

  else
  {
    v16 = v12;
  }

  sub_100662AD4(&qword_100943CE8, v15, type metadata accessor for ArcadeWelcomeViewController, &unk_1007D0B6C);
  v17 = v13;
  sub_10074BA94();

  sub_1000DDC64(v21);
  *(*&v17[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_pageView] + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomePageView_delegate + 8) = &off_10087F468;
  swift_unknownObjectWeakAssign();

  return v17;
}

void sub_100661560()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_pageView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 bounds];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 safeAreaInsets];

  sub_100753B14();
  [v1 setFrame:?];
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_overlayViewController];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [v7 view];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame:{v13, v15, v17, v19}];
}

id sub_100661770()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidLoad", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  result = [v1 view];
  if (result)
  {
    v9 = result;
    sub_10000D198();
    v10 = sub_100753E04();
    [v9 setBackgroundColor:v10];

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_pageView]];

      sub_100744314();
      v12 = [v1 navigationItem];
      [v12 setLargeTitleDisplayMode:2];

      return [v1 setTitle:0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006619E0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 setNavigationBarHidden:1 animated:0];
  }

  v12 = [v2 modalPresentationStyle];
  v13 = [v2 view];
  v14 = v13;
  if (v12 == 2)
  {
    if (v13)
    {
      [v13 setLayoutMargins:{20.0, 0.0, 0.0, 0.0}];
LABEL_8:

      return;
    }

    __break(1u);
  }

  else if (v13)
  {
    [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_100661C40(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1, v11);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  if (sub_1007442E4())
  {
    sub_100741444();
    sub_100741424();
    (*(v6 + 8))(v8, v5);
    sub_100746C04();
  }

  sub_100744254();
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

void sub_100661F6C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752BC4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&qword_100930220, &unk_1007BD870);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100742964();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1, v14);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_100742974();
  (*(v13 + 8))(v16, v12);
  if (sub_1007442E4())
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v21 + 8))(v7, v22);
    sub_100746C24();
    v17 = sub_100746C34();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_100746C14();
  }

  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_impressionsCalculator])
  {
    sub_1007495A4();
  }

  sub_100744254();
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 removeObserver:v2 name:UIApplicationDidBecomeActiveNotification object:0];

  v20 = [v18 defaultCenter];
  [v20 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];
}

uint64_t sub_100662500(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(&a1[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_100742974();

  return (*(v6 + 8))(v8, v5);
}

void sub_100662770()
{
  v0 = sub_100750FA4();
  __chkstk_darwin(v0 - 8);
  sub_100750F94();
  v1 = objc_allocWithZone(sub_100750FC4());
  v2 = sub_100750FB4();
  sub_100662B1C(v2);
}

void sub_100662828(uint64_t a1)
{
  sub_100751094();
  sub_100662AD4(&qword_100943CF0, 255, &type metadata accessor for ArcadeWelcomePagePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v1 = sub_100751054();
  sub_100662B1C(v1);
}

uint64_t sub_100662908(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_100052F00(v5);
  }

  sub_1003C0E00(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_100662AD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_100662B1C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_overlayViewController];
  sub_10074B974();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_10074B964();
    v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArcadeWelcomeViewController_pageView];
    v10 = *&v1[v3] != 0;

    return [v9 setHidden:v10];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100662C84()
{
  v0 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_100750534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100039C50(v15, qword_100982BD8);
  v16 = sub_10000D0FC(v15, qword_100982BD8);
  if (qword_1009214C0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v3, qword_100981B78);
  v18 = v4[2];
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_1009214D0 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v3, qword_100981BA8);
  v40 = v11;
  v18(v11, v19, v3);
  if (qword_1009214D8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v3, qword_100981BC0);
  v18(v2, v20, v3);
  v21 = v4[7];
  v21(v2, 0, 1, v3);
  if (qword_1009214E8 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_10000D0FC(v3, qword_100981BF0);
  v38 = v8;
  v18(v8, v22, v3);
  if (qword_1009214F0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v3, qword_100981C08);
  v18(v42, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v24 = v15[12];
  v25 = v16 + v15[11];
  v21((v16 + v24), 1, 1, v3);
  v26 = v16 + v15[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v16 + v15[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v15[23];
  *(v16 + v28) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v16 + v15[9], v39, v3);
  v29(v16 + v15[10], v40, v3);
  *v25 = 3;
  *(v25 + 8) = 0;
  v30 = v37;
  v31 = v37;
  sub_1006631B4(v41, v16 + v24);
  v29(v16 + v15[13], v38, v3);
  v29(v16 + v15[14], v42, v3);
  *(v16 + v15[15]) = 0x4044000000000000;
  *(v16 + v15[16]) = 0x4024000000000000;
  *(v16 + v15[17]) = 0x4042000000000000;
  *(v16 + v15[18]) = 0x403E000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v32 = *v16;
  *v16 = 0;

  v33 = *(v16 + 8);
  *(v16 + 8) = 0;

  v34 = *(v16 + 16);
  *(v16 + 16) = 0;

  v35 = *(v16 + 24);
  *(v16 + 24) = 0;

  *(v16 + v15[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v16 + v28);
  *(v16 + v28) = v30;

  *(v16 + v15[24]) = 0;
}

uint64_t sub_1006631B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100663224()
{
  v0 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_100750534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100039C50(v16, qword_100982BF0);
  v17 = sub_10000D0FC(v16, qword_100982BF0);
  if (qword_1009214C0 != -1)
  {
    swift_once();
  }

  v42 = v9;
  v18 = sub_10000D0FC(v3, qword_100981B78);
  v19 = v4[2];
  v39 = v15;
  v19(v15, v18, v3);
  if (qword_1009214E0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v3, qword_100981BD8);
  v40 = v12;
  v19(v12, v20, v3);
  v21 = v4[7];
  v21(v2, 1, 1, v3);
  if (qword_1009214E8 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_10000D0FC(v3, qword_100981BF0);
  v19(v42, v22, v3);
  if (qword_1009214F0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v3, qword_100981C08);
  v19(v6, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  v38 = v6;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v24 = v16[12];
  v25 = v17 + v16[11];
  v21((v17 + v24), 1, 1, v3);
  v26 = v17 + v16[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v17 + v16[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v16[23];
  *(v17 + v28) = 0;
  *(v17 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v17 + v16[9], v39, v3);
  v29(v17 + v16[10], v40, v3);
  *v25 = 0;
  *(v25 + 8) = 1;
  v30 = v37;
  v31 = v37;
  sub_1006631B4(v41, v17 + v24);
  v29(v17 + v16[13], v42, v3);
  v29(v17 + v16[14], v38, v3);
  *(v17 + v16[15]) = 0x4044000000000000;
  *(v17 + v16[16]) = 0x4024000000000000;
  *(v17 + v16[17]) = 0x4045000000000000;
  *(v17 + v16[18]) = 0x403E000000000000;
  *(v17 + v16[19]) = 0x4038000000000000;
  v32 = *v17;
  *v17 = 0;

  v33 = *(v17 + 8);
  *(v17 + 8) = 0;

  v34 = *(v17 + 16);
  *(v17 + 16) = 0;

  v35 = *(v17 + 24);
  *(v17 + 24) = 0;

  *(v17 + v16[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v17 + v28);
  *(v17 + v28) = v30;

  *(v17 + v16[24]) = 0;
}

void sub_100663708(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100039C50(v21, a3);
  v22 = sub_10000D0FC(v21, a3);
  if (qword_1009214C0 != -1)
  {
    swift_once();
  }

  v47 = v14;
  v23 = sub_10000D0FC(v8, qword_100981B78);
  v24 = v9[2];
  v44 = v20;
  v24(v20, v23, v8);
  if (qword_1009214C8 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v8, qword_100981B90);
  v45 = v17;
  v24(v17, v25, v8);
  v26 = v9[7];
  v26(v7, 1, 1, v8);
  if (qword_1009214E8 != -1)
  {
    swift_once();
  }

  v46 = v7;
  v27 = sub_10000D0FC(v8, qword_100981BF0);
  v24(v47, v27, v8);
  if (qword_1009214F0 != -1)
  {
    swift_once();
  }

  v28 = sub_10000D0FC(v8, qword_100981C08);
  v24(v11, v28, v8);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = v11;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v29 = v21[12];
  v30 = v22 + v21[11];
  v26((v22 + v29), 1, 1, v8);
  v31 = v22 + v21[21];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v22 + v21[22];
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v21[23];
  *(v22 + v33) = 0;
  *(v22 + 32) = 0x4030000000000000;
  v34 = v9[4];
  v34(v22 + v21[9], v44, v8);
  v34(v22 + v21[10], v45, v8);
  *v30 = 0;
  *(v30 + 8) = 1;
  v35 = v42;
  v36 = v42;
  sub_1006631B4(v46, v22 + v29);
  v34(v22 + v21[13], v47, v8);
  v34(v22 + v21[14], v43, v8);
  *(v22 + v21[15]) = a1;
  *(v22 + v21[16]) = 0x403C000000000000;
  *(v22 + v21[17]) = 0x403A000000000000;
  *(v22 + v21[18]) = 0x4038000000000000;
  *(v22 + v21[19]) = 0x4038000000000000;
  v37 = *v22;
  *v22 = 0;

  v38 = *(v22 + 8);
  *(v22 + 8) = 0;

  v39 = *(v22 + 16);
  *(v22 + 16) = 0;

  v40 = *(v22 + 24);
  *(v22 + 24) = 0;

  *(v22 + v21[20]) = 0x4034000000000000;
  *v31 = 0;
  *(v31 + 8) = 1;
  *v32 = 0;
  *(v32 + 8) = 1;
  v41 = *(v22 + v33);
  *(v22 + v33) = v35;

  *(v22 + v21[24]) = 0;
}

void sub_100663BDC()
{
  v0 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_100750534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100039C50(v15, qword_100982C20);
  v16 = sub_10000D0FC(v15, qword_100982C20);
  if (qword_1009214F8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v3, qword_100981C20);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_100921520 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v3, qword_100981C98);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_100921530 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_10000D0FC(v3, qword_100981CC8);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_1009214F0 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v3, qword_100981C08);
  v18(v43, v22, v3);
  sub_10000D198();
  v34 = sub_100753DD4();
  v35 = sub_100753DD4();
  v36 = sub_100753DF4();
  v37 = sub_100753DF4();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_1006631B4(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x4042000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x4043800000000000;
  *(v16 + v15[18]) = 0x4041000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

void sub_1006640DC()
{
  v0 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_100750534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100039C50(v15, qword_100982C38);
  v16 = sub_10000D0FC(v15, qword_100982C38);
  if (qword_1009214F8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v3, qword_100981C20);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_100921528 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v3, qword_100981CB0);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_100921538 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_10000D0FC(v3, qword_100981CE0);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_1009214F0 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v3, qword_100981C08);
  v18(v43, v22, v3);
  sub_10000D198();
  v34 = sub_100753DD4();
  v35 = sub_100753DD4();
  v36 = sub_100753DF4();
  v37 = sub_100753DF4();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x402A000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_1006631B4(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x402A000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x403F000000000000;
  *(v16 + v15[18]) = 0x403A000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

uint64_t type metadata accessor for TodayCardVideoView(uint64_t a1)
{
  result = qword_100943D20;
  if (!qword_100943D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1006646D0(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v95 = a7;
  v93 = a6;
  v96 = a5;
  v97 = a4;
  v98 = a3;
  v99 = a2;
  v88 = sub_100752AC4();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v78 - v15;
  v17 = sub_100747D94();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100741264();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v78 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v79 = &v78 - v25;
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  v29 = objc_allocWithZone(v8);
  v29[qword_100982C50] = 7;
  v29[qword_100982C58] = 0;
  v90 = a1;
  sub_100066198(a1, v104);
  v91 = v22;
  v30 = *(v22 + 16);
  v92 = v21;
  v80 = v30;
  v30(v28, v99, v21);
  v89 = v18;
  v31 = *(v18 + 16);
  v85 = v20;
  v94 = v17;
  v84 = v18 + 16;
  v83 = v31;
  v31(v20, v98, v17);
  v32 = v16;
  sub_100016B4C(v97, v16, &unk_1009281C0, qword_1007ABBB0);
  sub_100016B4C(v96, v13, &unk_1009281C0, qword_1007ABBB0);
  sub_100016B4C(v93, v103, &unk_10093CC90, qword_1007D0C70);
  swift_weakInit();
  *&v29[qword_10093CB38 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_10093CB40 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_10093CB48 + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = qword_10093CB50;
  *&v29[v33] = [objc_allocWithZone(UIImageView) init];
  v29[qword_10093CB58] = 0;
  v29[qword_10093CB60] = 0;
  v29[qword_10093CB68] = 0;
  *&v29[qword_10093CB70] = 0;
  *&v29[qword_10093CB78] = 0;
  v34 = qword_10093CB80;
  sub_10074C5F4();
  *&v29[v34] = sub_10074C5E4();
  v35 = qword_10093CB88;
  *&v29[v35] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v36 = v28;
  v37 = &v29[qword_100982238];
  v38 = *&UIEdgeInsetsZero.bottom;
  *v37 = *&UIEdgeInsetsZero.top;
  v37[1] = v38;
  v39 = &v29[qword_100982240];
  *v39 = 0;
  *(v39 + 1) = 0;
  v39[16] = 1;
  *&v29[qword_100982248] = 1;
  v29[qword_10093CB90] = 0;
  v40 = &v29[qword_100982258];
  *v40 = 0;
  v40[1] = 0;
  *&v29[qword_100982268 + 8] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_100982270] = 0;
  v29[qword_100982278] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_10093CB98] = 0;
  v29[qword_100982290] = 0;
  *&v29[qword_10093CBA0] = 0;
  v29[qword_10093CBA8] = 0;
  swift_beginAccess();
  swift_weakAssign();
  sub_100066198(v104, &v29[qword_100982260]);
  v41 = sub_100741244();
  v43 = v42;
  v44 = sub_10074F134();
  v82 = v36;
  if (v43)
  {
    if (v41 == v44 && v43 == v45)
    {

      v46 = v92;
    }

    else
    {
      v47 = sub_100754754();

      v46 = v92;
      if ((v47 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v48 = [objc_opt_self() mainBundle];
    sub_1007411F4();
    v49 = sub_100753064();

    v50 = [v48 URLForResource:v49 withExtension:0];

    if (v50)
    {
      v51 = v78;
      sub_100741224();

      v52 = *(v91 + 32);
      v53 = v79;
      v52(v79, v51, v46);
      v52(&v29[qword_100982250], v53, v46);
      goto LABEL_10;
    }
  }

  else
  {

    v46 = v92;
  }

LABEL_9:
  v80(&v29[qword_100982250], v36, v46);
LABEL_10:
  v81 = v32;
  sub_100016B4C(v32, &v29[qword_100982220], &unk_1009281C0, qword_1007ABBB0);
  v54 = v13;
  sub_100016B4C(v13, &v29[qword_100982228], &unk_1009281C0, qword_1007ABBB0);
  v55 = v85;
  v56 = v94;
  v83(&v29[qword_100982288], v85, v94);
  sub_100016B4C(v103, &v29[qword_100982230], &unk_10093CC90, qword_1007D0C70);
  v57 = type metadata accessor for VideoView(0);
  v102.receiver = v29;
  v102.super_class = v57;
  v58 = objc_msgSendSuper2(&v102, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v58 setClipsToBounds:0];
  v59 = qword_10093CB50;
  [*&v58[qword_10093CB50] setUserInteractionEnabled:0];
  [*&v58[v59] setClipsToBounds:1];
  [v58 addSubview:*&v58[v59]];
  v60 = objc_opt_self();
  v61 = [v60 defaultCenter];
  v62 = sub_1007538A4();
  [v61 addObserver:v58 selector:"didChangeAutoPlayVideoSetting" name:v62 object:0];

  v63 = [v60 defaultCenter];
  [v63 addObserver:v58 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v64 = qword_10093CB88;
  [*&v58[qword_10093CB88] setHidden:1];
  v65 = *&v58[v64];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock];
  v68 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock];
  v69 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock + 8];
  *v67 = sub_1005210B8;
  v67[1] = v66;
  v70 = v65;

  sub_1000164A8(v68, v69);

  memset(v101, 0, sizeof(v101));
  memset(v100, 0, sizeof(v100));
  v71 = v86;
  sub_100752A74();
  sub_10000C8CC(v100, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v101, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();
  (*(v87 + 8))(v71, v88);
  [v58 addSubview:*&v58[v64]];
  sub_10051F2AC();

  sub_10000C8CC(v103, &unk_10093CC90, qword_1007D0C70);
  sub_10000C8CC(v54, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v81, &unk_1009281C0, qword_1007ABBB0);
  v72 = *(v89 + 8);
  v72(v55, v56);
  v73 = *(v91 + 8);
  v74 = v92;
  v73(v82, v92);
  sub_100016994(v104);
  v75 = v58[qword_10093CB68];
  v58[qword_10093CB68] = 1;
  if (v75)
  {
  }

  else
  {
    v76 = v58;
    sub_10051A2F4();
  }

  sub_10000C8CC(v93, &unk_10093CC90, qword_1007D0C70);
  sub_10000C8CC(v96, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v97, &unk_1009281C0, qword_1007ABBB0);
  v72(v98, v94);
  v73(v99, v74);
  sub_100016994(v90);
  return v58;
}

void sub_100665360()
{
  v1 = v0;
  v2 = qword_100982C50;
  v3 = *(v0 + qword_100982C50);
  if (v3 == 4)
  {
    v5 = *(v0 + qword_100982C58);
    v6 = *(v0 + qword_10093CB68);
    *(v0 + qword_10093CB68) = v5 ^ 1;
    if (v5 & 1) != 0 || (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3 != 7)
  {
    *(v0 + qword_10093CB68) = 0;
    goto LABEL_9;
  }

  v4 = *(v0 + qword_10093CB68);
  *(v0 + qword_10093CB68) = 1;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    sub_10051A2F4();
  }

LABEL_9:
  v7 = qword_10093CB70;
  v8 = *(v0 + qword_10093CB70);
  if (v8)
  {
    v9 = v8;
    v10 = sub_100743C24();

    if (v10 & 1) != 0 || (v11 = *(v1 + v7)) != 0 && (v12 = v11, v13 = sub_100743B94(), v12, (v13))
    {
      if ((*(v1 + qword_100982C58) & 1) == 0)
      {
        v14 = *(v1 + v2);
        if (v14 == 7 || v14 == 4)
        {
          v16 = *(v1 + v7);
          if (v16)
          {
            v17 = v16;
            if (sub_100743B94())
            {
              [v17 pause];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1006654E0()
{
  v1 = v0;
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_100982288;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_100747CF4();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 || (sub_10074C5C4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + qword_100982C50);
  if (v7 == 7 || v7 == 4)
  {
    return *(v1 + qword_100982C58);
  }

  else
  {
    return 1;
  }
}

void sub_10066563C()
{
  v1 = v0;
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_100982C50;
  v7 = *(v0 + qword_100982C50);
  if (v7 == 4)
  {
    v9 = *(v0 + qword_100982C58);
    v10 = *(v0 + qword_10093CB68);
    *(v0 + qword_10093CB68) = v9 ^ 1;
    if (v9 & 1) != 0 || (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v7 != 7)
  {
    *(v0 + qword_10093CB68) = 0;
    goto LABEL_9;
  }

  v8 = *(v0 + qword_10093CB68);
  *(v0 + qword_10093CB68) = 1;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    sub_10051A2F4();
  }

LABEL_9:
  v11 = qword_100982C58;
  if (*(v0 + qword_100982C58) == 1 && (v12 = qword_100982288, swift_beginAccess(), (*(v3 + 16))(v5, v1 + v12, v2), LOBYTE(v12) = sub_100747CF4(), (*(v3 + 8))(v5, v2), (v12 & 1) != 0) && (sub_10074C5C4() & 1) != 0 && ((v13 = *(v1 + v6), v13 != 7) && v13 != 4 || *(v1 + v11) == 1))
  {
    sub_100518DCC();
  }

  else
  {
    v14 = qword_10093CB70;
    v15 = *(v1 + qword_10093CB70);
    if (v15)
    {
      v16 = v15;
      v17 = sub_100743C24();

      if (v17 & 1) != 0 || (v18 = *(v1 + v14)) != 0 && (v19 = v18, v20 = sub_100743B94(), v19, (v20))
      {
        if ((*(v1 + v11) & 1) == 0)
        {
          v21 = *(v1 + v6);
          if (v21 == 7 || v21 == 4)
          {
            v23 = *(v1 + v14);
            if (v23)
            {
              v24 = v23;
              if (sub_100743B94())
              {
                [v24 pause];
              }
            }
          }
        }
      }
    }
  }
}

void sub_1006658C0()
{
  v1 = *(v0 + qword_100982C50);
  v2 = v1 == 7 || v1 == 4;
  if (!v2 || *(v0 + qword_100982C58) == 1)
  {
    sub_100518DCC();
  }
}

uint64_t sub_1006658FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100665958(uint64_t a1)
{
  v1 = sub_10074F704();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResultBackgroundView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    sub_100746914();

    sub_10074F594();
    v8 = v7;
    (*(v2 + 8))(v4, v1);
    v9 = 0.0;
    if (v8 > 1.0)
    {
      v9 = 16.0;
    }

    return [v6 _setCornerRadius:v9];
  }

  return result;
}

void sub_100665A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  sub_1006FF748(a1, a3, a4, a5, a6);
  sub_100741D44();
  v8 = sub_10074EF34();
  v10 = v9;

  if (v10)
  {
    v26._countAndFlagsBits = 0x465F4E4F5F444441;
    v26._object = 0xEE005050415F524FLL;
    v27._object = 0x8000000100777750;
    v27._countAndFlagsBits = 0xD000000000000031;
    sub_1007458B4(v26, v27);
    sub_10000C518(&unk_100927770, &unk_1007BA6E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007A5A00;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000DD048();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;

    sub_1007530B4();

    v12 = objc_allocWithZone(NSMutableAttributedString);
    v13 = sub_100753064();
    v14 = [v12 initWithString:v13];

    v15 = objc_allocWithZone(NSString);
    v16 = sub_100753064();

    v17 = [v15 initWithString:v16];

    v18 = sub_100753064();

    v19 = [v17 rangeOfString:v18 options:4];
    v21 = v20;

    v25 = [v7 tintColor];
    sub_10000C518(&unk_100935100, &unk_1007C7BE0);
    v22 = sub_100754274();

    [v14 addAttribute:NSForegroundColorAttributeName value:v22 range:{v19, v21}];
    swift_unknownObjectRelease();
    v23 = *(*&v7[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel);
    if (v23)
    {
      v24 = v23;
      [v24 setAttributedText:v14];
    }
  }
}

double sub_100665D6C(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_100754724();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100751374();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100749A94();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749A44();
  sub_1004F52FC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v19 = sub_100754324();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  sub_100700E98(a5, v14);
  type metadata accessor for InAppPurchaseLockupView(0);
  v20 = sub_1005ACFB4(a5, a1, a2);
  if (v19)
  {
    v21 = v20;
    sub_100751304();
    v22 = v28;
    sub_10000C888(v27, v28);
    sub_100536120(v22);
    sub_100750564();
    (*(v25 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    sub_10000C620(v27);
  }

  else
  {
    sub_100753BD4();
    v21 = v23;
    (*(v12 + 8))(v14, v11);
  }

  return v21;
}

uint64_t sub_1006660B8(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v28[1] = a1;
  v8 = sub_100751374();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074EAB4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v17 = v16;
  type metadata accessor for InAppPurchaseLockupView(0);
  sub_1005ACFB4(a5, v17, a3);
  sub_10074EA84();
  sub_1004F52FC(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_100754324();
  (*(v13 + 8))(v15, v12);
  sub_100700E98(a5, v11);
  sub_100751334();
  (*(v9 + 8))(v11, v8);
  [a5 pageMarginInsets];
  v18 = [a5 traitCollection];
  LOBYTE(v8) = sub_1007537E4();

  if ((v8 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v19 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v23 = v24;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v21 = v20;
    PageTraitEnvironment.pageColumnMargin.getter();
    v23 = v21 - (v22 + v22);
  }

  v25 = [objc_opt_self() absoluteDimension:v23];
  v26 = sub_100749A04();

  return v26;
}

double sub_1006663D4(double a1, double a2)
{
  v5 = sub_1007479B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_100747064();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView);
  if (v19)
  {
    v33 = v8;
    v20 = v5;
    v21 = v19;
    sub_1001F5A40(v18);
    [v21 layoutMargins];
    v22 = [v21 traitCollection];
    (*(v13 + 16))(v15, v18, v12);
    v23 = sub_100746FD4();
    if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v26 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v26 = qword_10093FF58;
      }

      v28 = sub_10000D0FC(v20, v26);
      v29 = v33;
      (*(v6 + 16))(v33, v28, v20);
      (*(v6 + 32))(v11, v29, v20);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v6 + 8))(v11, v20);
    }

    sub_100746F14();

    v30 = *(v13 + 8);
    v30(v15, v12);

    v30(v18, v12);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView);
    if (v27)
    {
      [v27 sizeThatFits:{a1, a2}];
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_10066679C()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_100982C70);
  sub_10000D0FC(v0, qword_100982C70);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100666900(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_100746F44();
  if (qword_100920EE8 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v45 = sub_10000D0FC(v6, qword_100980A08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v41 = v6;
  v8(v5, v45, v6);
  v46 = enum case for FontSource.useCase(_:);
  v10 = v3 + 13;
  v48 = v3[13];
  v48(v5);
  v39 = sub_100750B04();
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v49);
  v12 = v3 + 2;
  v36 = v3[2];
  v36(v11, v5, v2);
  sub_100750B14();
  v14 = v3[1];
  v13 = v3 + 1;
  v43 = v14;
  v14(v5, v2);
  sub_100747034();
  v15 = v6;
  v16 = v8;
  v8(v5, v45, v15);
  v17 = v46;
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v49);
  v19 = v36;
  v36(v18, v5, v2);
  sub_100750B14();
  v43(v5, v2);
  sub_100747004();
  v44 = v9;
  v42 = v16;
  v16(v5, v45, v41);
  v20 = v17;
  v21 = v39;
  v45 = v10;
  (v48)(v5, v20, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v49);
  v19(v22, v5, v2);
  sub_100750B14();
  v43(v5, v2);
  sub_100746FF4();
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v24 = sub_10000D0FC(v41, qword_1009809C0);
  v42(v5, v24, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_10000D134(v49);
  v19(v25, v5, v2);
  sub_100750B14();
  v38 = v12;
  v26 = v43;
  v43(v5, v2);
  sub_100747054();
  v40 = v13;
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v23, qword_100980A80);
  (v42)(v5);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v49);
  v19(v27, v5, v2);
  sub_100750B14();
  v26(v5, v2);
  sub_100746FB4();
  if (qword_100920F30 != -1)
  {
    swift_once();
  }

  v28 = sub_10000D0FC(v23, qword_100980AE0);
  v42(v5, v28, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v29 = sub_10000D134(v49);
  v19(v29, v5, v2);
  sub_100750B14();
  v26(v5, v2);
  sub_100747044();
  if (qword_100920F18 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v23, qword_100980A98);
  v31 = v42;
  v42(v5, v30, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v49);
  v19(v32, v5, v2);
  sub_100750B14();
  v33 = v43;
  v43(v5, v2);
  sub_100746FC4();
  v31(v5, v37, v41);
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v49);
  v19(v34, v5, v2);
  sub_100750B14();
  v33(v5, v2);
  return sub_100746F54();
}

uint64_t sub_10066717C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747424();
  sub_100039C50(v4, qword_100982C88);
  v18 = sub_10000D0FC(v4, qword_100982C88);
  v25[24] = &protocol witness table for CGFloat;
  v25[23] = &type metadata for CGFloat;
  v25[20] = 0x4048000000000000;
  v25[18] = &type metadata for Double;
  v25[19] = &protocol witness table for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4030000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v16 = sub_10000D0FC(v5, qword_100980A80);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_100750B04();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000D134(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000D134(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v19);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100747404();
}

id sub_1006674F0()
{
  result = [objc_allocWithZone(UIGlassEffect) init];
  qword_100943E50 = result;
  return result;
}

id sub_10066753C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100936728, &qword_1007BEE40);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView] = 0;
  v5 = &v0[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_clickActionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_tapGestureRecognizer] = 0;
  if (qword_100921BE0 != -1)
  {
    swift_once();
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithEffect:", qword_100943E50);
  sub_1007517C4();
  v7 = sub_1007517E4();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_100753D64();
  [v6 setClipsToBounds:1];
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v6 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  return v6;
}

void sub_1006678DC()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView];
    if (!v3)
    {
      return;
    }

    v1 = v3;
    v2 = 0;
  }

  v4 = v2;
  sub_1007477B4();
  [v1 sizeThatFits:{v5, v6}];
  v8 = v7;
  sub_1007477B4();
  MinX = CGRectGetMinX(v12);
  sub_1007477B4();
  v10 = CGRectGetMidY(v13) + v8 * -0.5;
  sub_1007477B4();
  [v1 setFrame:{MinX, v10, CGRectGetWidth(v14), v8}];
}

void sub_100667BB0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_tapGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_tapGestureRecognizer])
  {
    v4 = a1;
    v5 = a2;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_tapGestureRecognizer] removeTarget:v2 action:"clickActionHandlerTrampoline"];
    a1 = v4;
    a2 = v5;
  }

  v6 = &v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_clickActionHandler];
  v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_clickActionHandler];
  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_clickActionHandler + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_10001B5AC(a1, a2);
  sub_1000164A8(v7, v8);
  if (*v6)
  {
    v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"clickActionHandlerTrampoline"];
    [v9 setDelegate:v2];
    if (*&v2[v3])
    {
      [v2 removeGestureRecognizer:?];
      v10 = *&v2[v3];
    }

    else
    {
      v10 = 0;
    }

    *&v2[v3] = v9;
    v11 = v9;

    [v2 addGestureRecognizer:v11];
  }
}

char *sub_100667CFC(void *a1)
{
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = sub_100747064();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for CrossLinkLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1001F4D8C(a1);
  if (qword_100921BD0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v5, qword_100982C70);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView;
  v16 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v14(v8, v11, v5);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v16[v17], v8, v5);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = v12;
  [v19 setNeedsLayout];
  v18(v11, v5);
  [v19 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];

  v20 = qword_100920EE8;
  v21 = *(*&v12[v15] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_100750534();
  v23 = sub_10000D0FC(v22, qword_100980A08);
  v24 = *(v22 - 8);
  v59 = *(v24 + 16);
  v60 = v24 + 16;
  v59(v4, v23, v22);
  v58 = *(v24 + 56);
  v58(v4, 0, 1, v22);
  sub_100745BA4();

  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v25 = sub_100753DD4();
  v26 = v25;
  v57 = v15;
  v27 = *&v12[v15];
  v28 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor);
  *(v27 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor) = v25;
  v56 = v19;
  if (!v28)
  {
    v32 = v25;
    v30 = 0;
    goto LABEL_9;
  }

  v29 = v25;
  v30 = v28;
  v31 = sub_100753FC4();

  if ((v31 & 1) == 0)
  {
LABEL_9:
    sub_1005A3560();
    v29 = v26;
  }

  v33 = v57;
  v34 = qword_100920F10;
  v35 = *(*&v12[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_10000D0FC(v22, qword_100980A80);
  v59(v4, v36, v22);
  v58(v4, 0, 1, v22);
  sub_100745BA4();

  v37 = *(*&v12[v33] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v38 = sub_100753DF4();
  [v37 setTextColor:v38];

  v39 = *(*&v12[v33] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  v40 = v56;
  if (v39)
  {
    v41 = qword_100920F30;
    v42 = v39;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_10000D0FC(v22, qword_100980AE0);
    v59(v4, v43, v22);
    v58(v4, 0, 1, v22);
    sub_100745BA4();

    v33 = v57;
    v44 = *(*&v12[v57] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v44)
    {
      v45 = v44;
      v46 = sub_100753DE4();
      [v45 setTextColor:v46];
    }
  }

  v47 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v48 = sub_100753DF4();
  [v47 setTextColor:v48];

  v49 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v50 = sub_100753DD4();
  [v49 setTextColor:v50];

  v51 = *(*&v12[v33] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v52 = qword_100920F18;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = sub_10000D0FC(v22, qword_100980A98);
  v59(v4, v54, v22);
  v58(v4, 0, 1, v22);
  sub_100745BA4();

  return v40;
}

uint64_t sub_100668404(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView);
  if (!v3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView);
    if (!v8)
    {
LABEL_9:
      v12 = 1;
      return v12 & 1;
    }

    v4 = v8;
    v9 = [a1 view];
    if (v9)
    {
      v6 = v9;
      v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton];
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(*&v4[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
LABEL_7:
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v10 = v7;
  v11 = sub_100753FC4();

  v12 = v11 ^ 1;
  return v12 & 1;
}

double sub_100668520@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

UIContentSizeCategory sub_100668580(uint64_t a1)
{
  v1 = sub_1006687BC(a1);
  v2 = v1;
  return v1;
}

uint64_t sub_1006685AC(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v2 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (sub_100753954())
  {
    v4 = sub_100753964();

    if (v4)
    {
      return 2;
    }
  }

  else
  {
  }

  v5 = UIContentSizeCategoryAccessibilityMedium;
  v6 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((sub_100753954() & 1) == 0)
  {

    return 2;
  }

  v7 = sub_100753964();

  if ((v7 & 1) == 0)
  {
    return 2;
  }

  v8 = sub_100753094();
  v10 = v9;
  if (v8 == sub_100753094() && v10 == v11)
  {

    return 2;
  }

  else
  {
    v12 = sub_100754754();

    if (v12)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

void *sub_10066873C(uint64_t a1)
{
  v1 = sub_10066886C(a1);
  v2 = v1;
  return v1;
}

uint64_t sub_100668768(uint64_t a1)
{
  if (sub_100753924())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

UIContentSizeCategory sub_1006687BC(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityMedium;
  v2 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_100753964();
  if (result)
  {
    if (sub_100753954())
    {
      v4 = sub_100753964();

      if (v4)
      {
        return UIContentSizeCategoryExtraExtraExtraLarge;
      }
    }

    else
    {
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10066886C(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityMedium;
  v2 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_100753964();
  if (result)
  {
    if (sub_100753954())
    {
      v4 = sub_100753964();

      if (v4)
      {
        v5 = &UIContentSizeCategoryAccessibilityLarge;
        return *v5;
      }
    }

    else
    {
    }

    v5 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
    return *v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100668924(char a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100923458, &qword_1007A6570);
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v5 - 8);
  v6 = sub_10074ED34();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10074A7F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  if ((a1 & 1) != 0 && (sub_100745E24(), v14 = *(v8 + 104), v38 = enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v39 = v8 + 104, v37 = v14, v14(v10), sub_100668DB4(), v15 = sub_100753014(), v16 = *(v8 + 8), v16(v10, v7), v16(v13, v7), (v15 & 1) == 0))
  {
    sub_10074EF44();
    sub_10074EF94();
    v36[25] = v17;
    v36[24] = sub_10074EF24();
    v18 = sub_10074EF74();
    v36[22] = v19;
    v36[23] = v18;
    v20 = sub_10074EF34();
    v36[20] = v21;
    v36[21] = v20;
    v22 = sub_10074EFB4();
    v36[18] = v23;
    v36[19] = v22;
    v24 = sub_10074EE64();
    v36[16] = v25;
    v36[17] = v24;
    v26 = sub_10074EE74();
    v36[14] = v27;
    v36[15] = v26;
    v28 = sub_10074EEE4();
    v36[12] = v29;
    v36[13] = v28;
    v30 = sub_10074EF14();
    v36[10] = v31;
    v36[11] = v30;
    v32 = sub_10074EF84();
    v36[8] = v33;
    v36[9] = v32;
    v36[7] = sub_10074EF54();
    v36[6] = sub_10074EDE4();
    v36[5] = v34;
    v36[4] = sub_10074EDF4();
    v36[3] = sub_10074EF04();
    v36[2] = sub_10074EDC4();
    v36[1] = sub_10074EE34();
    sub_10074EE94();
    sub_100745DB4();
    sub_100745E54();
    sub_100745DD4();
    v37(v13, v38, v7);
    sub_100745E34();
    sub_100745DA4();
    sub_100745E64();
    swift_allocObject();
    return sub_100745E44();
  }

  else
  {
  }

  return v2;
}

unint64_t sub_100668DB4()
{
  result = qword_10092E508;
  if (!qword_10092E508)
  {
    sub_10074A7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E508);
  }

  return result;
}

unint64_t sub_100668E0C(uint64_t a1)
{
  v1 = sub_100745DD4();
  if (v1 >> 62)
  {
    v4 = sub_100754664();

    if (v4)
    {
      return 1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      return 1;
    }
  }

  result = sub_100745E54();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:

    return 0;
  }

  v7 = result;
  v8 = sub_100754664();
  result = v7;
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v5 = sub_10074F794();

  if (v5 >> 62)
  {
    v6 = sub_100754664();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 != 0;
}

uint64_t sub_100668F80(uint64_t a1)
{
  result = sub_10074E6A4();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_100669078(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1007543E4();
    v5 = v4;
    v6 = sub_100754484();
    v8 = v7;
    v9 = sub_100754404();
    sub_1001D3DC4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1001D3DC4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1007543B4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10066FB64(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1001D3DC4(v3, v5, v2 != 0);
  return v12;
}

void sub_100669194(uint64_t a1)
{
  v2 = v1;
  v4 = qword_100943FE0;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 32);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *v8;
      v8 += 2;
      [v9 removeFromSuperview];
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:

  *&v2[v4] = _swiftEmptyArrayStorage;

  v10 = qword_100943FF8;
  swift_beginAccess();
  *&v2[v10] = _swiftEmptyArrayStorage;

  sub_10066C88C(_swiftEmptyArrayStorage);
  if (a1 < 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (a1)
  {
    type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    do
    {
      v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      if (qword_100921C00 != -1)
      {
        swift_once();
      }

      v13 = qword_100943FA8;
      sub_100743224();
      [*&v12[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder] setTextColor:v13];
      [*&v12[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder] setTextColor:v13];
      [*&v12[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder] setBackgroundColor:v13];
      [v2 addSubview:v12];
      swift_beginAccess();
      v14 = *&v2[v4];
      v15 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v4] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_10025513C(0, v14[2] + 1, 1, v14);
        *&v2[v4] = v14;
      }

      v18 = v14[2];
      v17 = v14[3];
      if (v18 >= v17 >> 1)
      {
        v14 = sub_10025513C((v17 > 1), v18 + 1, 1, v14);
      }

      v19 = sub_1006773AC(&qword_100944080, type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder, "9u\b");
      v14[2] = v18 + 1;
      v20 = &v14[2 * v18];
      v20[4] = v15;
      v20[5] = v19;
      *&v2[v4] = v14;
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  [*&v2[qword_100943FE8] setHidden:1];
  [v2 setNeedsLayout];
}

void sub_100669490(void **a1, uint64_t a2, int a3, void *a4)
{
  v126 = a4;
  LODWORD(ObjCClassFromMetadata) = a3;
  v116 = a2;
  v125 = a1;
  v5 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v5 - 8);
  v108 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v103 - v8;
  v115 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v107 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v9;
  __chkstk_darwin(v10);
  v105 = &v103 - v11;
  v130 = sub_10074ED34();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v103 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v113 = &v103 - v14;
  __chkstk_darwin(v15);
  v127 = &v103 - v16;
  v123 = sub_100752AC4();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100933200, qword_1007BD1F0);
  __chkstk_darwin(v19 - 8);
  v104 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v111 = &v103 - v22;
  __chkstk_darwin(v23);
  v25 = &v103 - v24;
  v124 = sub_10074E6A4();
  v26 = *(v124 - 1);
  __chkstk_darwin(v124);
  v120 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v103 - v29;
  v31 = qword_100943FE0;
  swift_beginAccess();
  v129 = v4;
  v32 = *&v4[v31];
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = (v32 + 32);
    while (v34 < *(v32 + 16))
    {
      ++v34;
      v36 = *v35;
      v35 += 2;
      [v36 removeFromSuperview];
      if (v33 == v34)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_24:
    v43 = sub_100754664();
    if (!v43)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

LABEL_5:

  v33 = v129;
  *&v129[v31] = _swiftEmptyArrayStorage;

  v37 = qword_100943FF8;
  swift_beginAccess();
  v35 = v125;
  *&v33[v37] = v125;

  swift_weakAssign();
  v33[qword_100944010] = ObjCClassFromMetadata & 1;
  sub_100016B4C(v116, v25, &unk_100933200, qword_1007BD1F0);
  v38 = *(v114 + 48);
  v39 = v115;
  v118 = v114 + 48;
  v117 = v38;
  if (v38(v25, 1, v115) == 1)
  {
    sub_10000C8CC(v25, &unk_100933200, qword_1007BD1F0);
    (v26)[13](v30, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), v124);
  }

  else
  {
    v40 = &v25[*(v39 + 20)];
    v41 = v120;
    v42 = v124;
    (v26)[2](v120, v40, v124);
    sub_100677414(v25);
    (v26)[4](v30, v41, v42);
  }

  sub_10066ABBC(v30);
  sub_1007442C4();
  v110 = sub_100752764();
  sub_100752D34();
  v124 = v132;
  v109 = v35 >> 62;
  if (v35 >> 62)
  {
    goto LABEL_24;
  }

  v43 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
    goto LABEL_25;
  }

LABEL_10:
  type metadata accessor for TodayCardLockupView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v43 < 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v44 = 0;
  v120 = *&v33[qword_100943FD8];
  v119 = v35 & 0xC000000000000001;
  v45 = (v128 + 8);
  v46 = (v121 + 8);
  v121 = v43;
  do
  {
    if (v119)
    {
      v47 = sub_100754574();
    }

    else
    {
      v47 = v35[v44 + 4];
    }

    v48 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    [v120 addSubview:v48];
    v49 = v127;
    sub_10074EF44();
    v50 = sub_10074ECF4();
    v52 = v51;
    (*v45)(v49, v130);
    v134 = &type metadata for String;
    v132 = v50;
    v133 = v52;
    memset(v131, 0, sizeof(v131));
    sub_100752AB4();
    sub_10000C8CC(v131, &unk_100923520, &qword_1007A5A70);
    sub_10000C8CC(&v132, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();
    (*v46)(v18, v123);
    sub_10066E714(v47, v124, v126);
    v53 = qword_100921C00;
    v54 = *&v48[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    if (v53 != -1)
    {
      swift_once();
    }

    v55 = qword_100943FA8;
    sub_100743264();

    v56 = v129;
    swift_beginAccess();
    v57 = *&v56[v31];
    v58 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56[v31] = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_10025513C(0, v57[2] + 1, 1, v57);
      *&v56[v31] = v57;
    }

    v61 = v57[2];
    v60 = v57[3];
    if (v61 >= v60 >> 1)
    {
      v57 = sub_10025513C((v60 > 1), v61 + 1, 1, v57);
    }

    ++v44;
    v62 = sub_1006773AC(&qword_100944098, type metadata accessor for TodayCardLockupView, &unk_1007B9104);
    v57[2] = v61 + 1;
    v63 = &v57[2 * v61];
    v63[4] = v58;
    v63[5] = v62;
    v33 = v129;
    *&v129[v31] = v57;
    swift_endAccess();

    v35 = v125;
  }

  while (v121 != v44);
LABEL_25:
  v64 = v116;
  v65 = v111;
  sub_100016B4C(v116, v111, &unk_100933200, qword_1007BD1F0);
  v66 = v115;
  if (v117(v65, 1, v115) == 1)
  {
    sub_10000C8CC(v65, &unk_100933200, qword_1007BD1F0);
    v67 = &v33[qword_100943FF0];
    *v67 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v67[1] = 0;
  }

  else
  {
    v68 = v65;
    v69 = v105;
    sub_100677FA0(v68, v105, type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v70 = v107;
    sub_100677FA0(v69, v107, type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration);
    v71 = (*(v114 + 80) + 24) & ~*(v114 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = v126;
    sub_100677FA0(v70, v72 + v71, type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration);
    v73 = &v33[qword_100943FF0];
    *v73 = sub_100677560;
    v73[1] = v72;
  }

  v74 = v113;
  v75 = v112;
  v76 = *&v33[qword_100943FE8];
  sub_100754214();
  v77 = sub_1007541F4();
  if ((*(*(v77 - 8) + 48))(v75, 1, v77))
  {
    sub_100016B4C(v75, v108, &qword_100932470, &unk_1007A5A90);
    sub_100754224();
    sub_10000C8CC(v75, &qword_100932470, &unk_1007A5A90);
  }

  else
  {
    v78 = v104;
    sub_100016B4C(v64, v104, &unk_100933200, qword_1007BD1F0);
    if (v117(v78, 1, v66) == 1)
    {
      sub_10000C8CC(v78, &unk_100933200, qword_1007BD1F0);
    }

    else
    {

      sub_100677414(v78);
      sub_10074ECB4();
    }

    sub_1007541C4();
    sub_100754224();
  }

  v79 = sub_100753064();
  [v76 setAccessibilityIdentifier:v79];

  [v76 setHidden:{v117(v64, 1, v66) == 1}];
  sub_10000C518(&unk_100925780, qword_1007AC630);
  sub_100752D34();
  v125 = v133;
  v126 = v132;
  if (v109)
  {
    v80 = sub_100754664();
  }

  else
  {
    v80 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v80)
  {
    v132 = _swiftEmptyArrayStorage;
    sub_10001E388(0, v80 & ~(v80 >> 63), 0);
    if (v80 < 0)
    {
LABEL_62:
      __break(1u);
      return;
    }

    v81 = v132;
    if ((v35 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v80; ++i)
      {
        sub_100754574();
        sub_10074EF44();
        swift_unknownObjectRelease();
        v132 = v81;
        v84 = v81[2];
        v83 = v81[3];
        if (v84 >= v83 >> 1)
        {
          sub_10001E388((v83 > 1), v84 + 1, 1);
          v81 = v132;
        }

        v81[2] = v84 + 1;
        (*(v128 + 32))(v81 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v84, v74, v130);
      }
    }

    else
    {
      v85 = v35 + 4;
      v86 = v103;
      do
      {

        sub_10074EF44();

        v132 = v81;
        v88 = v81[2];
        v87 = v81[3];
        if (v88 >= v87 >> 1)
        {
          sub_10001E388((v87 > 1), v88 + 1, 1);
          v81 = v132;
        }

        v81[2] = v88 + 1;
        (*(v128 + 32))(v81 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v88, v86, v130);
        ++v85;
        --v80;
      }

      while (v80);
    }

    v33 = v129;
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  v89 = v81[2];
  if (v89)
  {
    v132 = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_10001E368(0, v89, 0);
    v90 = v128;
    v123 = v81 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v91 = v132;
    ObjCClassFromMetadata = swift_getObjectType();
    v92 = 0;
    v121 = v90 + 16;
    v120 = (v90 + 8);
    while (v92 < v81[2])
    {
      v93 = v89;
      v94 = v127;
      v95 = v128;
      v96 = v130;
      (*(v128 + 16))(v127, v123 + *(v128 + 72) * v92, v130);
      v97 = sub_1007424E4();
      v99 = v98;
      (*(v95 + 8))(v94, v96);
      v132 = v91;
      v101 = v91[2];
      v100 = v91[3];
      if (v101 >= v100 >> 1)
      {
        sub_10001E368((v100 > 1), v101 + 1, 1);
        v91 = v132;
      }

      ++v92;
      v91[2] = v101 + 1;
      v102 = &v91[2 * v101];
      v102[4] = v97;
      v102[5] = v99;
      v89 = v93;
      if (v93 == v92)
      {
        swift_unknownObjectRelease();

        v33 = v129;
        goto LABEL_59;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v91 = _swiftEmptyArrayStorage;
LABEL_59:
  sub_10066C88C(v91);
  [v33 setNeedsLayout];

  swift_unknownObjectRelease();
}

void sub_10066A534()
{
  v1 = *&v0[qword_100943FD8];
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  [v1 setTransform:&aBlock];
  v2 = qword_100943FE0;
  swift_beginAccess();
  v18 = v0;
  v3 = *&v0[v2];
  v4 = *(v3 + 16);
  v20 = v3;

  v19 = v4;
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v20 + 16))
    {
      v6 = *(v20 + 32 + 16 * v5);
      v7 = [v6 subviews];
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v8 = sub_1007532A4();

      if (v8 >> 62)
      {
        v9 = sub_100754664();
        if (v9)
        {
LABEL_7:
          v10 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = sub_100754574();
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            [v11 setAlpha:0.0];

            ++v10;
            if (v13 == v9)
            {
              goto LABEL_3;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_7;
        }
      }

LABEL_3:
      ++v5;

      if (v5 == v19)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:

  v5 = v18;
  [*&v18[qword_100943FE8] setAlpha:0.0];
  if (qword_100921BE8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v14 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100943F90 timingParameters:0.0];
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *&aBlock.tx = sub_100677A84;
  *&aBlock.ty = v15;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000CF7B0;
  *&aBlock.d = &unk_10087F740;
  v16 = _Block_copy(&aBlock);
  v17 = v5;

  [v14 addAnimations:v16];
  _Block_release(v16);
  [v14 startAnimationAfterDelay:0.16];
}

id sub_10066A878()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_100943F90 = result;
  return result;
}

id sub_10066A8C8()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.450980392 blue:0.333333333 alpha:1.0];
  qword_100943F98 = result;
  return result;
}

id sub_10066A918()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.764705882 green:0.133333333 blue:0.180392157 alpha:1.0];
  qword_100943FA0 = result;
  return result;
}

id sub_10066A990()
{
  result = [objc_opt_self() whiteColor];
  qword_100943FB0 = result;
  return result;
}

void sub_10066AA04(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent:a1];

  *a4 = v7;
}

uint64_t (*sub_10066AA80(uint64_t a1))(void *a1)
{
  v3 = sub_10074E6A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  return sub_100677670;
}

uint64_t sub_10066ABBC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_100943FC8;
  swift_beginAccess();
  v5 = sub_10074E6A4();
  v6 = *(v5 - 8);
  (*(v6 + 24))(&v1[v4], a1, v5);
  swift_endAccess();
  v7 = *&v1[qword_100943FE8];
  v11[4] = sub_10066AA80(&v1[v4]);
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001A67C4;
  v11[3] = &unk_10087F678;
  v9 = _Block_copy(v11);

  [v7 setConfigurationUpdateHandler:v9];
  _Block_release(v9);
  [v2 setNeedsLayout];
  return (*(v6 + 8))(a1, v5);
}

char *sub_10066AD38(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = qword_100943FC8;
  v14 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  v15 = sub_10074E6A4();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v16 = &v4[qword_100982CA0];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = qword_100943FD0;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_100943FD8;
  *&v4[v18] = [objc_allocWithZone(UIView) init];
  *&v4[qword_100943FE0] = _swiftEmptyArrayStorage;
  v19 = qword_100943FE8;
  *&v4[v19] = [objc_opt_self() buttonWithType:0];
  v20 = &v4[qword_100943FF0];
  *v20 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v20[1] = 0;
  *&v4[qword_100943FF8] = _swiftEmptyArrayStorage;
  swift_weakInit();
  *&v4[qword_100944008] = _swiftEmptyArrayStorage;
  v4[qword_100944010] = 0;
  *&v4[qword_100944018] = 0;
  v4[qword_100982CA8] = 0;
  v21 = &v4[qword_100944020];
  *v21 = 0;
  v21[8] = 1;
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  [v22 _setCornerRadius:20.0];
  v23 = v22;
  [v23 setClipsToBounds:1];
  v24 = qword_100943FD0;
  [v23 addSubview:*&v23[qword_100943FD0]];
  [v23 addSubview:*&v23[qword_100943FD8]];
  v25 = qword_100943FE8;
  [v23 addSubview:*&v23[qword_100943FE8]];
  v26 = *&v23[v24];
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007A7210;
  v28 = qword_100921BF0;
  v29 = v26;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_100943F98;
  *(v27 + 32) = qword_100943F98;
  v31 = qword_100921BF8;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = qword_100943FA0;
  *(v27 + 40) = qword_100943FA0;
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v27;
  v34 = v33;

  sub_100037ED0();

  v35 = *&v23[v25];
  [v35 addTarget:v23 action:"didTapDownloadAllButton" forControlEvents:64];

  v36 = *&v23[v25];
  sub_1007541E4();
  v37 = sub_1007541F4();
  (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
  sub_100754224();

  v38 = [*&v23[v25] layer];
  [v38 setCompositingFilter:kCAFilterPlusL];

  [*&v23[v25] setOverrideUserInterfaceStyle:2];
  v39 = [v23 layer];

  [v39 setAllowsGroupBlending:0];
  [*&v23[v25] setHidden:1];

  return v23;
}

void sub_10066B25C()
{
  v1 = qword_100943FC8;
  v2 = sub_10074E6A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000C8CC(v0 + qword_100982CA0, &qword_100929FF0, &unk_1007AE380);

  swift_weakDestroy();

  v3 = *(v0 + qword_100944018);
}

void sub_10066B378()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[qword_100944008];
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    while (v4 < *(v2 + 16))
    {
      ++v4;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1007423C4();
      swift_unknownObjectRelease();
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, "dealloc");
  }
}

void sub_10066B484(uint64_t a1)
{
  v2 = qword_100943FC8;
  v3 = sub_10074E6A4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_10000C8CC(a1 + qword_100982CA0, &qword_100929FF0, &unk_1007AE380);

  swift_weakDestroy();

  v4 = *(a1 + qword_100944018);
}

void sub_10066B5A4()
{
  v1 = sub_100742284();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v37 - v6;
  v7 = sub_10000C518(&qword_1009232D0, &qword_1007D0FE0);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = qword_100944008;
  v58 = v0;
  v11 = *(v0 + qword_100944008);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    goto LABEL_29;
  }

  v44 = qword_100944008;
  v59 = _swiftEmptyArrayStorage;

  sub_10001E328(0, v12, 0);
  v13 = v59;
  v54 = (v2 + 32);
  v53 = (v2 + 88);
  v52 = enum case for LegacyAppState.waiting(_:);
  v49 = enum case for LegacyAppState.updatable(_:);
  v50 = enum case for LegacyAppState.purchased(_:);
  v45 = enum case for LegacyAppState.paused(_:);
  v46 = enum case for LegacyAppState.downloadable(_:);
  v41 = enum case for LegacyAppState.installing(_:);
  v42 = enum case for LegacyAppState.downloading(_:);
  v39 = enum case for LegacyAppState.buyable(_:);
  v40 = enum case for LegacyAppState.openable(_:);
  v47 = (v2 + 8);
  v38 = enum case for LegacyAppState.installed(_:);
  v51 = (v2 + 96);
  v43 = v11;
  v14 = v11 + 40;
  v37 = enum case for LegacyAppState.unknown(_:);
  v48 = enum case for PurchaseType.preorder(_:);
  v15 = v57;
  do
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100742404();
    sub_1007423D4();
    swift_unknownObjectRelease();
    (*v54)(v4, v15, v1);
    v16 = (*v53)(v4, v1);
    if (v16 == v52)
    {
      (*v51)(v4, v1);
      v17 = sub_100745D74();
LABEL_5:
      (*(*(v17 - 8) + 8))(v4, v17);
LABEL_6:
      v18 = 0;
      goto LABEL_14;
    }

    if (v16 == v50)
    {
      (*v51)(v4, v1);
      v19 = sub_100743FB4();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 88))(v4, v19);
      if (v21 != v48)
      {
        (*(v20 + 8))(v4, v19);
        goto LABEL_6;
      }
    }

    else if (v16 == v49 || v16 == v46)
    {
      (*v47)(v4, v1);
    }

    else if (v16 == v45)
    {
      (*v51)(v4, v1);
      v24 = sub_1007421F4();
      (*(*(v24 - 8) + 8))(v4, v24);
    }

    else
    {
      if (v16 == v42 || v16 == v41)
      {
        (*v51)(v4, v1);
        v17 = sub_1007421F4();
        goto LABEL_5;
      }

      if (v16 == v40)
      {
        (*v51)(v4, v1);

        v17 = sub_100748314();
        goto LABEL_5;
      }

      if (v16 != v39)
      {
        if (v16 == v38)
        {
          goto LABEL_6;
        }

        if (v16 != v37)
        {
          (*v47)(v4, v1);
          goto LABEL_6;
        }
      }
    }

    v18 = 1;
LABEL_14:
    v9[*(v56 + 48)] = v18;
    v59 = v13;
    v23 = v13[2];
    v22 = v13[3];
    if (v23 >= v22 >> 1)
    {
      sub_10001E328((v22 > 1), v23 + 1, 1);
      v13 = v59;
    }

    v13[2] = v23 + 1;
    sub_10066FD88(v9, v13 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v23);
    v14 += 16;
    --v12;
  }

  while (v12);

  v10 = v44;
LABEL_29:
  if (v13[2])
  {
    sub_10000C518(&qword_100944088, &unk_1007D0FE8);
    v25 = sub_1007546B4();
  }

  else
  {
    v25 = _swiftEmptyDictionarySingleton;
  }

  v59 = v25;

  sub_100676D5C(v26, 1, &v59);
  v27 = swift_allocObject();

  *(v27 + 16) = v59;
  v28 = swift_allocObject();
  v29 = v58;
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;

  sub_10066C10C(v31, v28);

  v32 = *(v29 + v10);
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = v32 + 40;
    while (v34 < *(v32 + 16))
    {
      ++v34;
      swift_getObjectType();
      v36 = swift_allocObject();
      v36[2] = v27;
      v36[3] = sub_100677358;
      v36[4] = v30;

      swift_unknownObjectRetain();

      sub_1007423A4();
      swift_unknownObjectRelease();

      v35 += 16;
      if (v33 == v34)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_36:
  }
}

uint64_t sub_10066BD6C()
{
  v1 = v0;
  v2 = sub_100742284();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = sub_100745D74();
LABEL_3:
    (*(*(v8 - 8) + 8))(v6, v8);
    return 0;
  }

  if (v7 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v3 + 96))(v6, v2);
    v10 = sub_100743FB4();
    v11 = *(v10 - 8);
    if ((*(v11 + 88))(v6, v10) != enum case for PurchaseType.preorder(_:))
    {
      (*(v11 + 8))(v6, v10);
      return 0;
    }
  }

  else if (v7 == enum case for LegacyAppState.updatable(_:) || v7 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  else if (v7 == enum case for LegacyAppState.paused(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = sub_1007421F4();
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  else
  {
    if (v7 == enum case for LegacyAppState.downloading(_:) || v7 == enum case for LegacyAppState.installing(_:))
    {
      (*(v3 + 96))(v6, v2);
      v8 = sub_1007421F4();
      goto LABEL_3;
    }

    if (v7 == enum case for LegacyAppState.openable(_:))
    {
      (*(v3 + 96))(v6, v2);

      v8 = sub_100748314();
      goto LABEL_3;
    }

    if (v7 != enum case for LegacyAppState.buyable(_:))
    {
      if (v7 == enum case for LegacyAppState.installed(_:))
      {
        return 0;
      }

      if (v7 != enum case for LegacyAppState.unknown(_:))
      {
        (*(v3 + 8))(v6, v2);
        return 0;
      }
    }
  }

  return 1;
}

void sub_10066C10C(uint64_t a1, uint64_t a2)
{
  v53[1] = a2;
  v62 = sub_10000C518(&qword_100944090, &qword_1007D0FF8);
  __chkstk_darwin(v62);
  v57 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = v53 - v5;
  __chkstk_darwin(v6);
  v59 = v53 - v7;
  __chkstk_darwin(v8);
  v58 = v53 - v9;
  swift_beginAccess();
  v54 = a1;
  v10 = *(a1 + 16);
  v11 = *(v10 + 64);
  v56 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v55 = (v12 + 63) >> 6;
  v61 = v10;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = v59;
  while (v14)
  {
    v17 = v15;
LABEL_10:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v61;
    v21 = *(v61 + 48);
    v22 = sub_10074ED34();
    v23 = *(v22 - 8);
    v24 = v58;
    (*(v23 + 16))(v58, v21 + *(v23 + 72) * v19, v22);
    v25 = *(*(v20 + 56) + v19);
    v26 = v62;
    *(v24 + *(v62 + 48)) = v25;
    sub_100016B4C(v24, v16, &qword_100944090, &qword_1007D0FF8);
    v27 = *(v26 + 48);
    LOBYTE(v21) = *(v16 + v27);
    v28 = v60;
    (*(v23 + 32))(v60, v16, v22);
    *(v28 + v27) = v21;
    sub_10000C8CC(v28, &qword_100944090, &qword_1007D0FF8);
    sub_10000C8CC(v24, &qword_100944090, &qword_1007D0FF8);
    if ((v21 & 1) == 0)
    {
      v29 = 1;
LABEL_13:

      v30 = v54;
      swift_beginAccess();
      v31 = *(v30 + 16);
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v31 + 64);
      v35 = (v32 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v36 = 0;
      while (v34)
      {
        v37 = v36;
LABEL_22:
        v38 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v39 = v38 | (v37 << 6);
        v40 = *(v31 + 48);
        v41 = sub_10074ED34();
        v42 = *(v41 - 8);
        v43 = v40 + *(v42 + 72) * v39;
        v44 = v57;
        (*(v42 + 16))(v57, v43, v41);
        LODWORD(v39) = *(*(v31 + 56) + v39);
        *(v44 + *(v62 + 48)) = v39;
        sub_10000C8CC(v44, &qword_100944090, &qword_1007D0FF8);
        if (v39 == 1)
        {
          v45 = 1;
LABEL_25:

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v47 = Strong;
            v48 = *(Strong + qword_100943FE8);

            [v48 setEnabled:v45];
          }

          swift_beginAccess();
          v49 = swift_unknownObjectWeakLoadStrong();
          if (v49)
          {
            v50 = v49;
            v51 = v49 + qword_100982CA0;
            swift_beginAccess();
            if (*(v51 + 24))
            {
              sub_10000C824(v51, v63);

              sub_10000C888(v63, v63[3]);
              if (v45)
              {
                v52 = 1;
              }

              else
              {
                v52 = 2;
              }

              if (!v29)
              {
                v52 = 0;
              }

              sub_100167960(v52);
              sub_10000C620(v63);
            }

            else
            {
            }
          }

          return;
        }
      }

      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_38;
        }

        if (v37 >= v35)
        {
          v45 = 0;
          goto LABEL_25;
        }

        v34 = *(v31 + 64 + 8 * v37);
        ++v36;
        if (v34)
        {
          v36 = v37;
          goto LABEL_22;
        }
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v55)
    {
      v29 = 0;
      goto LABEL_13;
    }

    v14 = *(v56 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_10066C688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v18 = a5;
  v19 = a4;
  v6 = sub_100742284();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074ED34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_100742404();
  sub_1007423D4();
  v14 = sub_10066BD6C();
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_100674674(v14 & 1, v13, isUniquelyReferenced_nonNull_native);
  (*(v11 + 8))(v13, v10);
  *(a3 + 16) = v20;
  v16 = swift_endAccess();
  return v19(v16);
}

void sub_10066C88C(uint64_t a1)
{
  v3 = qword_100944008;
  v4 = *(v1 + qword_100944008);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1007423C4();
      swift_unknownObjectRelease();
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + v3) = a1;

    sub_10066B5A4();
  }
}

uint64_t sub_10066C968(void *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_10000C518(&qword_1009440A0, &unk_1007D1000);
  __chkstk_darwin(v3 - 8);
  v5 = &v53[-v4];
  v6 = sub_100751604();
  v67 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v69 = &v53[-v9];
  v10 = sub_10000C518(&unk_100944920, &qword_1007B1FC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v53[-v11];
  v63 = sub_100754154();
  v61 = *(v63 - 1);
  __chkstk_darwin(v63);
  v62 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10074E6A4();
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v53[-v17];
  v19 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v19 - 8);
  v65 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v53[-v22];
  v24 = sub_1007541F4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100754214();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_10000C8CC(v23, &qword_100932470, &unk_1007A5A90);
  }

  v58 = v12;
  (*(v25 + 32))(v27, v23, v24);
  v29 = [a1 state];
  v59 = v5;
  v60 = v6;
  if (v29 == 2)
  {
    if (qword_100921C18 != -1)
    {
      swift_once();
    }

    v32 = sub_100753F04();
    v33 = qword_100921C10;
    v57 = v32;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = &qword_100943FB8;
  }

  else
  {
    if (v29 == 1)
    {
      if (qword_100921C18 != -1)
      {
        swift_once();
      }

      v30 = sub_100753F04();
      v31 = qword_100921C08;
    }

    else
    {
      if (qword_100921C18 != -1)
      {
        swift_once();
      }

      v31 = qword_100921C08;
      v30 = qword_100943FC0;
    }

    v57 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = &qword_100943FB0;
  }

  v35 = *v34;
  v36 = v68;
  v56 = *(v68 + 16);
  v56(v18, v70, v14);
  v55 = *(v36 + 88);
  v37 = v55(v18, v14);
  v54 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:))
  {
    v38 = v35;
    sub_1007540C4();
  }

  else if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
  {
    (*(v61 + 104))(v62, enum case for UIButton.Configuration.Size.large(_:), v63);
    v39 = v35;
    sub_100754064();
  }

  else
  {
    v63 = *(v68 + 8);
    v40 = v35;
    (v63)(v18, v14);
  }

  v41 = swift_allocObject();
  v63 = v35;
  *(v41 + 16) = v35;
  *(v41 + 24) = a1;
  a1;
  v42 = v58;
  sub_100751A04();
  v43 = sub_1007519F4();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_100754144();
  v44 = v69;
  sub_100754044();
  v45 = v64;
  v56(v64, v70, v14);
  v46 = v55(v45, v14);
  if (v46 == v54)
  {
    sub_1007515A4();
    v47 = v60;
    v48 = v67;
    v49 = v57;
  }

  else
  {
    v47 = v60;
    v48 = v67;
    v49 = v57;
    if (v46 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
    {
      v44 = v69;
      sub_1007515A4();
    }

    else
    {
      (*(v68 + 8))(v45, v14);
      v44 = v69;
    }
  }

  *(swift_allocObject() + 16) = v49;
  v50 = v59;
  sub_100751804();
  v51 = sub_1007517F4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_1007515E4();
  (*(v48 + 16))(v66, v44, v47);
  sub_100754054();
  v52 = v65;
  (*(v25 + 16))(v65, v27, v24);
  (*(v25 + 56))(v52, 0, 1, v24);
  sub_100754224();

  (*(v48 + 8))(v44, v47);
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_10066D260@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1007410D4();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  sub_1002205EC();
  v9 = a2;
  sub_1007410E4();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921518 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  sub_10000D0FC(v10, qword_100981C80);
  v11 = [a3 traitCollection];
  sub_100753C14();

  sub_1000168F0();
  sub_1007410E4();
  if (qword_100920140 != -1)
  {
    swift_once();
  }

  v12 = qword_10097D258;
  sub_1001D7314();
  v13 = v12;
  return sub_1007410E4();
}

uint64_t sub_10066D420@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1007506E4();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v56 - v7;
  v62 = sub_100751144();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v59 = (&v56 - v10);
  __chkstk_darwin(v11);
  v66 = (&v56 - v12);
  __chkstk_darwin(v13);
  v58 = (&v56 - v14);
  v65 = sub_100751154();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10074E6A4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v68 = sub_1007507B4();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750794();
  swift_beginAccess();

  v26 = sub_100158B1C(v25);

  v27 = qword_100943FC8;
  swift_beginAccess();
  v28 = *(v17 + 16);
  v74 = v2;
  v28(v22, v2 + v27, v16);
  (*(v17 + 104))(v19, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:), v16);
  sub_1006773AC(&qword_1009440B0, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle, &protocol conformance descriptor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
  sub_100753274();
  sub_100753274();
  if (v75 == v78)
  {
    v29 = *(v17 + 8);
    v29(v19, v16);
    v29(v22, v16);
  }

  else
  {
    LODWORD(v57) = sub_100754754();
    v30 = *(v17 + 8);
    v30(v19, v16);
    v30(v22, v16);

    if ((v57 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v31 = *(v74 + qword_100943FE8);
  if ([v31 isHidden])
  {
    goto LABEL_9;
  }

  v76 = sub_100016C60(0, &qword_10093B420, UIButton_ptr);
  v77 = &protocol witness table for UIButton;
  v57 = v31;
  *&v75 = v31;
  v32 = v58;
  *v58 = sub_1000B2740;
  v32[1] = 0;
  v33 = *(v60 + 104);
  v34 = v62;
  v33(v32, enum case for Resize.Rule.recalculated(_:), v62);
  v35 = enum case for Resize.Rule.unchanged(_:);
  v33(v66, enum case for Resize.Rule.unchanged(_:), v34);
  v33(v59, v35, v34);
  v33(v61, v35, v34);
  v36 = v57;
  v37 = v63;
  sub_100751164();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v38 = v65;
    v39 = v64;
    v41 = v26[2];
    v40 = v26[3];
    if (v41 >= v40 >> 1)
    {
      v26 = sub_100256718((v40 > 1), v41 + 1, 1, v26);
    }

    v76 = v38;
    v77 = &protocol witness table for Resize;
    v42 = sub_10000D134(&v75);
    (*(v39 + 16))(v42, v37, v38);
    v26[2] = v41 + 1;
    sub_100012160(&v75, &v26[5 * v41 + 4]);
    (*(v39 + 8))(v37, v38);
LABEL_9:
    v43 = v26[2];
    if (!v43)
    {
      break;
    }

    v44 = 0;
    v45 = (v26 + 4);
    v37 = &v75;
    while (v44 < v26[2])
    {
      *&v75 = v44;
      sub_10000C824(v45, &v75 + 8);
      sub_10066DD80(v44, &v75 + 8, v24, v43, ObjectType);
      sub_10000C8CC(&v75, &qword_1009440B8, &unk_1007D1060);
      v45 += 40;
      if (v43 == ++v44)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    v26 = sub_100256718(0, v26[2] + 1, 1, v26);
  }

LABEL_13:

  v46 = v69;
  sub_1007506B4();
  *&v78 = *(v74 + qword_100943FD8);
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_100750434();
  v47 = v70;
  sub_1007506D4();
  sub_10000C620(&v75);
  v48 = *(v72 + 8);
  v49 = v46;
  v50 = v73;
  v48(v49, v73);
  v51 = v68;
  v76 = v68;
  v77 = &protocol witness table for VerticalStack;
  v52 = sub_10000D134(&v75);
  v53 = v67;
  (*(v67 + 16))(v52, v24, v51);
  v54 = v71;
  v71[3] = v50;
  v54[4] = &protocol witness table for DisjointStack;
  sub_10000D134(v54);
  sub_1007506D4();
  v48(v47, v50);
  sub_10000C620(&v75);
  return (*(v53 + 8))(v24, v51);
}