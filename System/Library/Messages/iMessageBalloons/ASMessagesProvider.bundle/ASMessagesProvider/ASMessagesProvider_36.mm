id sub_419A64()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  objc_msgSendSuper2(&v15, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  sub_7591D0(v16, v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_940590);

    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v7 setImage:0];
  }

  sub_41ABAC();
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v1 contentView];
    [v11 addSubview:v10];

    [v1 setNeedsLayout];
  }

  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = 0;

  v12 = sub_4FD578();
  v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  return [v1 setNeedsLayout];
}

void sub_419C58()
{
  v1 = v0;
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  v47.receiver = v1;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_7666A0();
    v17 = [v1 contentView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_766660();
    v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    [v24 setFrame:{v19, v21, v23, v25}];
    v26 = [v1 contentView];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v48.origin.x = v28;
    v48.origin.y = v30;
    v48.size.width = v32;
    v48.size.height = v34;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v28;
    v49.origin.y = v30;
    v49.size.width = v32;
    v49.size.height = v34;
    [v24 setCenter:{MidX, CGRectGetMidY(v49)}];
    (*(v3 + 8))(v5, v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [v1 contentView];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    [v37 setFrame:{v40, v42, v44, v46}];
  }
}

void sub_419F7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_shouldForcePortrait);
      v9 = a1;
      v10 = v9;
      if (v8 == 1 && ([v9 size], v12 = v11, objc_msgSend(v10, "size"), v13 < v12) && (v14 = objc_msgSend(v10, "CGImage")) != 0)
      {
        v15 = v14;
        [v10 scale];
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:v16];

        v18 = v17;
      }

      else
      {
        v18 = v10;
      }

      v19 = *(*&v7[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v20 = v18;
      v21 = v19;
      v23.value.super.isa = v18;
      v23.is_nil = 1;
      sub_759140(v23, v22);
    }
  }
}

id sub_41A0F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductMediaItemCollectionViewCell(uint64_t a1)
{
  result = qword_954A40;
  if (!qword_954A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_41A228(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    sub_75DC30();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_41A338(uint64_t **a1))()
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
  v2[4] = sub_4194E4(v2);
  return sub_21028;
}

uint64_t sub_41A3A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_41A3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_41A468(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_41A594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_41A624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = sub_75DC30();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_766690();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v26);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_75BEC0();
  if (swift_dynamicCast())
  {
    v25[2] = v25[3];
    v17 = sub_75BEB0();
    if (v17)
    {
      v18 = v17;
      v25[1] = a2;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        v25[0] = v18;
        v21 = qword_99A200;
        swift_beginAccess();
        (*(v10 + 16))(v12, &v20[v21], v9);
        sub_75DB80();
        (*(v10 + 8))(v12, v9);
        if ((*(v14 + 48))(v8, 1, v13) != 1)
        {
          (*(v14 + 32))(v16, v8, v13);
          v23 = [v3 contentView];
          [v23 bounds];

          sub_766600();
          sub_764BC0();
          sub_765330();

          type metadata accessor for VideoView(0);
          sub_41A594(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
          sub_75A050();

          (*(v14 + 8))(v16, v13);
          return;
        }

        sub_10A2C(v8, &unk_948720, &unk_784970);
      }

      else
      {
      }
    }

    if (sub_75BEA0())
    {
      if ((*(v3 + OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_shouldForcePortrait) & 1) != 0 && (sub_7650D0() & 1) == 0)
      {
        v24 = [v3 contentView];
        [v24 bounds];

        v22 = [v3 contentView];
        [v22 bounds];
      }

      else
      {
        v22 = [v3 contentView];
        [v22 bounds];
      }

      sub_765330();
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_75A040();

      sub_10A2C(v26, &unk_9443A0, &unk_77E240);
    }
  }
}

void sub_41ABAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_41A594(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
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

char *sub_41AC7C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  sub_759210();
  sub_41A594(&qword_9496B0, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
  v4 = v3;
  sub_76A6E0();
  sub_75A0B0();
  sub_1EB60(v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[qword_940590];

    sub_BE70(0, &qword_949D90, UIImageView_ptr);
    sub_41ADDC();
    v8 = v7;
    sub_76A6E0();
    sub_75A0B0();

    return sub_1EB60(v9);
  }

  return result;
}

unint64_t sub_41ADDC()
{
  result = qword_94BA00;
  if (!qword_94BA00)
  {
    sub_BE70(255, &qword_949D90, UIImageView_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94BA00);
  }

  return result;
}

uint64_t sub_41AE44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_41AE84(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ReviewSummaryView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ReviewSummaryCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView]];

  return v12;
}

id sub_41B24C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewSummaryCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReviewSummaryCollectionViewCell(uint64_t a1)
{
  result = qword_954A88;
  if (!qword_954A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_41B3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v14[4] = a5;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_23F0CC;
    v14[3] = a6;
    v12 = _Block_copy(v14);
    v13 = v10;

    [a1 addAnimations:v12];
    _Block_release(v12);
  }
}

void *sub_41B4AC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_previewContainer);
  v2 = v1;
  return v1;
}

uint64_t sub_41B4EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_41B524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_41B548()
{
  sub_BD88(&qword_9452E0, &unk_7940D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DCF0;
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
  v1 = sub_10D54C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_9452E8, &unk_785090);
  result = swift_arrayDestroy();
  qword_954A98 = v1;
  return result;
}

void sub_41B75C(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_77B6C0;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent:a1];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 blackColor];
  v13 = [v12 colorWithAlphaComponent:a2];

  v14 = [v13 CGColor];
  *(v7 + 40) = v14;
  *a4 = v7;
}

char *sub_41B898(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] = 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HeroGradientView();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setUserInteractionEnabled:0];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient;
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setAnchorPoint:{0.0, 0.0}];
  v16 = qword_93D090;
  v17 = *&v14[v15];
  if (v16 != -1)
  {
    swift_once();
  }

  sub_BD88(&qword_9452F0, qword_78B4B0);
  isa = sub_7690E0().super.isa;
  [v17 setActions:isa];

  v19 = [v14 layer];
  [v19 addSublayer:*&v14[v15]];

  sub_41BBDC();
  return v14;
}

id sub_41BBDC()
{
  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient] & 1) != 0 || v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient];
    [v1 setHidden:0];
    [v0 bounds];
    sub_41BD4C(v2, v3);
    v5 = v4;
    sub_206378();

    isa = sub_769450().super.isa;

    [v1 setLocations:isa];

    sub_140730(v5);

    v7 = sub_769450().super.isa;

    [v1 setColors:v7];

    v8 = "setNeedsDisplay";
    v9 = v1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient];
    v8 = "setHidden:";
  }

  return [v9 v8];
}

uint64_t sub_41BD4C(double a1, double a2)
{
  v3 = v2;
  v4 = 174.0 / a2;
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:174.0 / a2];
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v4];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_77D9F0;
  sub_206378();
  *(v7 + 32) = sub_76A190(0.0);
  v20 = v7;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient;
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient) == 1)
  {
    v9 = v5;
    sub_769440();
    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v7 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    if (qword_93D098 != -1)
    {
      swift_once();
    }

    sub_10A6D8(v10);
    if ((*(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient) & 1) == 0)
    {
      v11 = [objc_opt_self() blackColor];
      v12 = [v11 colorWithAlphaComponent:0.0];

      v13 = [v12 CGColor];
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }
  }

  if (*(v3 + OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient) == 1)
  {
    v14 = v6;
    sub_769440();
    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v7 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    if ((*(v3 + v8) & 1) == 0)
    {
      v15 = [objc_opt_self() blackColor];
      v16 = [v15 colorWithAlphaComponent:0.0];

      v17 = [v16 CGColor];
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }

    if (qword_93D0A0 != -1)
    {
      swift_once();
    }

    sub_10A6D8(v18);
  }

  sub_76A190(1.0);
  sub_769440();
  if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v20 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();

  return v20;
}

id sub_41C190(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeroGradientView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_41C1F8(void *a1, uint64_t a2, void *a3, double a4)
{
  v82 = a2;
  v89 = sub_75F7E0();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_75F7C0();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75[0] = v75 - v10;
  __chkstk_darwin(v11);
  v84 = v75 - v12;
  v80 = sub_762D10();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75EE80();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v77 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v75 - v18;
  v90 = a1;
  v20 = sub_75B6F0();
  v92 = a3;
  v21 = [a3 traitCollection];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v91 = [v20 length];
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  *(v23 + 40) = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_266A8;
  *(v24 + 24) = v23;
  v104 = sub_26694;
  v105 = v24;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_10C1C;
  v103 = &unk_8912D8;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v22;

  [v20 enumerateAttributesInRange:0 options:v91 usingBlock:{0x100000, v25}];

  _Block_release(v25);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_7;
  }

  v91 = v27;
  sub_75B700();
  v28 = v77;
  v15[13](v77, enum case for TitledParagraphStyle.detail(_:), v14);
  sub_41E240(&unk_94B6D0, &type metadata accessor for TitledParagraphStyle, &protocol conformance descriptor for TitledParagraphStyle);
  v29 = v19;
  sub_769430();
  sub_769430();
  if (aBlock == v97[0] && v101 == v97[1])
  {
    v76 = 1;
  }

  else
  {
    v76 = sub_76A950();
  }

  v30 = v92;
  v31 = v15[1];
  v31(v28, v14);
  v31(v29, v14);

  sub_75B6D0();
  v75[2] = sub_75B6E0();
  v75[1] = v32;
  v77 = v91;
  v15 = [v30 traitCollection];
  sub_26F08();
  if (qword_93D610 != -1)
  {
    goto LABEL_23;
  }

LABEL_7:
  v33 = sub_7666D0();
  sub_BE38(v33, qword_99EA28);
  v90 = v15;
  v34 = sub_769E10();
  v35 = sub_7653B0();
  v103 = v35;
  v36 = sub_41E240(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v104 = v36;
  v37 = sub_B1B4(&aBlock);
  v38 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v39 = *(*(v35 - 1) + 104);
  v39(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
  v40 = v34;
  sub_765C30();
  sub_BEB8(&aBlock);
  v41 = v78;
  sub_762D00();
  sub_762CE0();
  v42 = v79[1];
  v43 = v80;
  v42(v41, v80);
  v98 = v35;
  v99 = v36;
  v44 = sub_B1B4(v97);
  v39(v44, v38, v35);
  v45 = v40;
  sub_765C30();
  sub_BEB8(v97);
  v79 = v45;
  sub_762D00();
  sub_762CE0();
  v42(v41, v43);
  v46 = 0;
  v47 = v76;
  if ((v76 & 1) == 0)
  {
    v46 = sub_75F770();
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v46 & 1;
  v49 = v92;
  *(v48 + 24) = v81;
  *(v48 + 32) = v49;
  v50 = v82;
  *(v48 + 40) = v91;
  *(v48 + 48) = v50;
  v51 = sub_7670D0();
  swift_allocObject();
  v52 = v77;
  swift_unknownObjectRetain();
  v53 = sub_767090();
  v96[3] = v51;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  v96[0] = v53;
  v54 = v87;
  v55 = v85;
  v56 = v84;
  if (v46)
  {
    if (qword_93CAE0 != -1)
    {
      swift_once();
    }

    v57 = sub_BE38(v54, qword_99CBC0);
    v58 = *(v55 + 16);
    v58(v56, v57, v54);
    sub_33E778(v49, a4);
    sub_75F790();
    [v49 pageMarginInsets];
    sub_75F7A0();
  }

  else
  {
    if (v47)
    {
      if (qword_93CAE8 != -1)
      {
        swift_once();
      }

      v59 = qword_99CBD8;
    }

    else
    {
      if (qword_93CAD8 != -1)
      {
        swift_once();
      }

      v59 = qword_99CBA8;
    }

    v60 = sub_BE38(v54, v59);
    v58 = *(v55 + 16);
    v61 = v75[0];
    v58(v75[0], v60, v54);
    (*(v55 + 32))(v56, v61, v54);
  }

  v58(v83, v56, v54);
  v62 = v103;
  v63 = v104;
  v64 = sub_B170(&aBlock, v103);
  v95[3] = v62;
  v95[4] = *(v63 + 1);
  v65 = sub_B1B4(v95);
  (*(*(v62 - 1) + 16))(v65, v64, v62);
  v66 = v98;
  v67 = v99;
  v68 = sub_B170(v97, v98);
  v94[3] = v66;
  v94[4] = *(v67 + 8);
  v69 = sub_B1B4(v94);
  (*(*(v66 - 8) + 16))(v69, v68, v66);
  sub_134D8(v96, v93);
  v70 = v86;
  sub_75F7D0();
  sub_41E240(&qword_954B50, &type metadata accessor for TitledParagraphLayout, &protocol conformance descriptor for TitledParagraphLayout);
  v71 = v89;
  sub_7665A0();
  v73 = v72;

  (*(v88 + 8))(v70, v71);
  (*(v55 + 8))(v56, v54);
  sub_BEB8(v96);
  sub_BEB8(v97);
  sub_BEB8(&aBlock);
  return v73;
}

uint64_t sub_41CE8C()
{
  sub_BD88(&qword_950688, qword_798060);
  sub_256230();
  sub_768AF0();
  return 3;
}

uint64_t sub_41CF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v7 = sub_766CA0();
  sub_BE38(v7, qword_99FE18);
  sub_766470();
  sub_766700();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

unint64_t sub_41D09C()
{
  result = qword_954B38;
  if (!qword_954B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954B38);
  }

  return result;
}

unint64_t sub_41D0F4()
{
  result = qword_954B40;
  if (!qword_954B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954B40);
  }

  return result;
}

void sub_41D148(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_BD88(&qword_94B6B8, &qword_78E620);
  sub_256230();
  sub_769030();
  if (v10 == 1)
  {
    if (qword_93CAD0 != -1)
    {
      swift_once();
    }

    v8 = sub_BD88(&unk_94B6E0, &qword_78E688);
    sub_BE38(v8, qword_99CB90);
    swift_unknownObjectRetain();
    sub_7592B0();
    swift_unknownObjectRelease();
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_41C1F8(a1, v9, a5, a2);
}

void sub_41D278(void *a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, void *a6)
{
  v113 = a3;
  v114 = a2;
  v119 = a1;
  v111 = sub_765920();
  v118 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v103 - v10;
  __chkstk_darwin(v11);
  v105 = &v103 - v12;
  __chkstk_darwin(v13);
  v104 = &v103 - v14;
  v15 = sub_BD88(&qword_952410, &qword_79A0E0);
  __chkstk_darwin(v15 - 8);
  v110 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v108 = &v103 - v18;
  __chkstk_darwin(v19);
  v109 = &v103 - v20;
  __chkstk_darwin(v21);
  v116 = &v103 - v22;
  v112 = sub_75FA00();
  v23 = *(v112 - 8);
  __chkstk_darwin(v112);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_75EE80();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = &v103 - v32;
  v115 = a6;
  v34 = [a6 snapshotPageTraitEnvironment];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_pageTraits;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_pageTraits] = v34;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*&v6[v35])
  {
    [v6 setNeedsLayout];
  }

  v117 = v6;
  swift_unknownObjectRelease();
  sub_75B700();
  (*(v27 + 104))(v29, enum case for TitledParagraphStyle.detail(_:), v26);
  sub_41E240(&unk_94B6D0, &type metadata accessor for TitledParagraphStyle, &protocol conformance descriptor for TitledParagraphStyle);
  sub_769430();
  sub_769430();
  if (aBlock == v126 && v121 == v127)
  {
    v36 = 1;
  }

  else
  {
    v36 = sub_76A950();
  }

  v37 = *(v27 + 8);
  v37(v29, v26);
  v37(v33, v26);

  v38 = v117;
  v117[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_useDetailPageStyling] = v36 & 1;
  sub_33D4F8();
  v39 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_separatorView];
  sub_75F9B0();
  sub_41E240(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v40 = v112;
  v41 = sub_76A520();
  (*(v23 + 8))(v25, v40);
  [v39 setHidden:v41 & 1];
  sub_BD88(&qword_950688, qword_798060);
  sub_256230();
  sub_768B00();
  v42 = aBlock;
  if (qword_93CAD0 != -1)
  {
    swift_once();
  }

  v43 = sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_BE38(v43, qword_99CB90);
  v44 = v115;
  v126 = v115;
  swift_unknownObjectRetain();
  sub_7592B0();
  swift_unknownObjectRelease();
  v45 = v119;
  v46 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
    goto LABEL_56;
  }

  type metadata accessor for TitledParagraphCollectionViewCell(0);
  [v38 frame];
  v48 = v47;
  sub_41C1F8(v45, v46, v44, v49);
  if (v48 < v50)
  {
    v51 = v42;
  }

  else
  {
    v51 = 0;
  }

  if ((v51 & 1) == 0)
  {
    v73 = sub_75B6F0();
    v74 = [v44 traitCollection];
    v75 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v73];
    v76 = [v73 length];
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = v74;
    *(v77 + 32) = v75;
    *(v77 + 40) = 1;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_119AC;
    *(v78 + 24) = v77;
    v124 = sub_2636C;
    v125 = v78;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_10C1C;
    v123 = &unk_8911E8;
    v79 = _Block_copy(&aBlock);
    v80 = v74;
    v81 = v75;

    [v73 enumerateAttributesInRange:0 options:v76 usingBlock:{0x100000, v79}];

    _Block_release(v79);
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    if (v73)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v72 = v108;
    v61 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView];
    v82 = v111;
    (*(v118 + 56))(v108, 1, 1, v111);
    v83 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v84 = v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
    v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
    v116 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
    v85 = *&v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v86 = v81;
    [v85 setNumberOfLines:0];
    if (v84 != v61[v83])
    {
      sub_1A5974();
    }

    v68 = v86;
    sub_1A532C(v86);
    v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v87 = v110;
    sub_3B28D4(v72, v110);
    v88 = v118;
    v71 = &unk_90D000;
    if ((*(v118 + 48))(v87, 1, v82) == 1)
    {
      sub_41E198(v87);
      goto LABEL_46;
    }

    v93 = v107;
    (*(v88 + 32))(v107, v87, v82);
    v94 = v106;
    (*(v88 + 16))(v106, v93, v82);
    v95 = (*(v88 + 88))(v94, v82);
    if (v95 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v95 == enum case for Paragraph.Alignment.center(_:))
      {
        v96 = 1;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.right(_:))
      {
        v96 = 2;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.justified(_:))
      {
        v96 = 3;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.localized(_:))
      {
        v96 = 4;
        goto LABEL_45;
      }

      (*(v88 + 8))(v106, v82);
    }

    v96 = 0;
LABEL_45:
    [*&v61[v116] setTextAlignment:v96];
    (*(v88 + 8))(v107, v82);
    goto LABEL_46;
  }

  v52 = sub_75B6C0();
  v53 = [v44 traitCollection];
  v54 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v52];
  v55 = [v52 length];
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = v53;
  *(v56 + 32) = v54;
  *(v56 + 40) = 1;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_266A8;
  *(v57 + 24) = v56;
  v124 = sub_26694;
  v125 = v57;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_10C1C;
  v123 = &unk_891260;
  v58 = _Block_copy(&aBlock);
  v59 = v53;
  v60 = v54;

  [v52 enumerateAttributesInRange:0 options:v55 usingBlock:{0x100000, v58}];

  _Block_release(v58);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v38 = v117;
  v61 = *&v117[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView];
  v62 = v111;
  (*(v118 + 56))(v116, 1, 1, v111);
  v63 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v64 = v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
  v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
  v65 = *&v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  v66 = *&v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
  v67 = v60;
  [v66 setNumberOfLines:v65];
  if (v64 != v61[v63])
  {
    sub_1A5974();
  }

  v68 = v67;
  sub_1A532C(v67);
  v61[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  v69 = v109;
  sub_3B28D4(v116, v109);
  v70 = v118;
  v71 = &unk_90D000;
  if ((*(v118 + 48))(v69, 1, v62) != 1)
  {
    v89 = v104;
    (*(v70 + 32))(v104, v69, v62);
    v90 = v105;
    (*(v70 + 16))(v105, v89, v62);
    v91 = (*(v70 + 88))(v90, v62);
    if (v91 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v91 == enum case for Paragraph.Alignment.center(_:))
      {
        v92 = 1;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.right(_:))
      {
        v92 = 2;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.justified(_:))
      {
        v92 = 3;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.localized(_:))
      {
        v92 = 4;
        goto LABEL_42;
      }

      (*(v70 + 8))(v105, v62);
    }

    v92 = 0;
LABEL_42:
    [v66 setTextAlignment:v92];
    (*(v70 + 8))(v89, v62);
    v72 = v116;
    goto LABEL_46;
  }

  sub_41E198(v69);
  v72 = v116;
LABEL_46:
  [v61 v71[463]];

  sub_41E198(v72);
  v97 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  sub_75B6D0();
  if (v98)
  {
    v99 = sub_769210();
  }

  else
  {
    v99 = 0;
  }

  [v97 setText:v99];

  v100 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  sub_75B6E0();
  if (v101)
  {
    v102 = sub_769210();
  }

  else
  {
    v102 = 0;
  }

  [v100 setText:v102];

  [v38 v71[463]];
}

double sub_41E180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_41E198(uint64_t a1)
{
  v2 = sub_BD88(&qword_952410, &qword_79A0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_41E200()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_41E240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_41E2CC()
{
  result = qword_954B58;
  if (!qword_954B58)
  {
    sub_75C1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954B58);
  }

  return result;
}

uint64_t sub_41E32C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v32 = a2;
  v29 = a1;
  v31 = sub_758B40();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_75F340();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760280();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7687B0();
  __chkstk_darwin(v12 - 8);
  v13 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = sub_765490();
  __chkstk_darwin(v19);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  (*(v21 + 104))(&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.shareSheet(_:));
  v22 = sub_7570A0();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = sub_759E30();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v34 = sub_75C1F0();
  v33 = v29;

  sub_768790();
  (*(v9 + 104))(v11, enum case for FlowPresentationContext.infer(_:), v8);
  (*(v5 + 104))(v7, enum case for FlowAnimationBehavior.infer(_:), v28);
  (*(v3 + 104))(v30, enum case for FlowOrigin.inapp(_:), v31);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v24 = sub_758AD0();
  v25 = sub_72D7A8(v24, 1, v32);

  return v25;
}

id sub_41E7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v7 - 8);
  v9 = &ObjectType - v8;
  v10 = sub_BD88(&unk_954ED0, &unk_77E060);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &ObjectType - v12;
  if (a1)
  {
    v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton];
    v15 = qword_93D168;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_99DCC0;
    v17 = sub_764C60();
    sub_47E4A8(v16, v17, v18);

    v19 = sub_76A3F0();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    sub_76A420();
    [v14 setHidden:{0, ObjectType}];
    v32 = a1;
    sub_764C80();
    sub_768900();
    sub_41EC9C();
    sub_768820();

    v20 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
    v21 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewAction;
    swift_beginAccess();
    sub_278AC(v9, &v4[v21]);
    swift_endAccess();
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton] setHidden:{1, v11, ObjectType}];
  }

  if (a2)
  {
    v22 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton];
    v23 = qword_93D170;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = qword_99DCC8;
    v25 = sub_764C60();
    sub_47E4A8(v24, v25, v26);

    v27 = sub_76A3F0();
    (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
    sub_76A420();
    [v22 setHidden:0];
    v32 = a2;
    sub_764C80();
    sub_768900();
    sub_41EC9C();
    sub_768820();

    v28 = sub_BD88(&unk_950960, &qword_793110);
    (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
    v29 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportAction;
    swift_beginAccess();
    sub_278AC(v9, &v4[v29]);
    swift_endAccess();
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton] setHidden:1];
  }

  return [v4 setNeedsLayout];
}

unint64_t sub_41EC9C()
{
  result = qword_951430;
  if (!qword_951430)
  {
    sub_764C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_951430);
  }

  return result;
}

double sub_41ED40()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_762D10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F660();
  sub_41F360(&qword_93F688, &type metadata accessor for SmallGameCenterPlayer, &protocol conformance descriptor for GameCenterPlayer);
  sub_75C750();
  v8 = v43[0];
  if (!v43[0])
  {
    return 0.0;
  }

  v34 = v5;
  if (qword_93D158 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v38 = v3;
  v39 = v1;
  v40 = v0;
  v36 = sub_7670D0();
  swift_allocObject();
  v35 = sub_7670B0();

  sub_75BB60();
  v9 = sub_26F08();
  v41 = v8;
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  sub_BE38(v10, qword_99F0E8);
  swift_getKeyPath();
  sub_75C7B0();

  v11 = v43[0];
  sub_769E10();

  v12 = sub_7653B0();
  v44 = v12;
  v33 = sub_41F360(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v45 = v33;
  v13 = sub_B1B4(v43);
  v30[1] = v9;
  v14 = *(v12 - 8);
  v15 = *(v14 + 104);
  v32 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v30[2] = v14 + 104;
  v31 = v15;
  v15(v13);
  sub_765C30();
  sub_BEB8(v43);
  sub_762D00();
  sub_762CE0();
  v16 = *(v34 + 8);
  v17 = v37;
  v16(v7, v37);
  v34 = sub_75BB50();
  v30[0] = v18;

  if (qword_93D858 != -1)
  {
    swift_once();
  }

  sub_BE38(v10, qword_99F100);
  swift_getKeyPath();
  sub_75C7B0();

  v19 = v43[0];
  sub_769E10();

  v44 = v12;
  v45 = v33;
  v20 = sub_B1B4(v43);
  v31(v20, v32, v12);
  sub_765C30();
  sub_BEB8(v43);
  sub_762D00();
  sub_762CE0();
  v16(v7, v17);
  sub_26F9C(&xmmword_99DBA0, v43);
  v47 = v36;
  v48 = &protocol witness table for LayoutViewPlaceholder;
  v46 = v35;
  sub_134D8(v52, &v50);
  sub_134D8(v51, &v49);
  swift_getKeyPath();
  v21 = v38;
  sub_75C7B0();

  sub_765630();
  v23 = v22;
  v25 = v24;
  (*(v39 + 8))(v21, v40);
  swift_getKeyPath();
  sub_75C7B0();

  v26 = v42;
  swift_getObjectType();
  sub_646C6C(v26, v43, v23, v25);
  v28 = v27;

  swift_unknownObjectRelease();
  sub_26FF8(v43);
  sub_BEB8(v51);
  sub_BEB8(v52);
  return v28;
}

uint64_t sub_41F360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_41F3B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  v13[1] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView] setClipsToBounds:1];
  v17 = [v14 contentView];

  [v17 addSubview:*&v14[v16]];
  return v14;
}

void sub_41F6A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_763FD0();
      if (swift_dynamicCast())
      {
        sub_763FC0();

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

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell(uint64_t a1)
{
  result = qword_954BA0;
  if (!qword_954BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_41FA10(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_41FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_4200F8(&qword_941110, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_79D010);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_41FB64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_41FBBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_41FC7C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v0[v1] = 0;

  return result;
}

double sub_41FCE4(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_763FD0();
  sub_4200F8(&qword_947AB8, &type metadata accessor for MediumAdLockupWithScreenshotsBackground, &protocol conformance descriptor for MediumAdLockupWithScreenshotsBackground);
  sub_75C750();
  if (v6)
  {
    sub_17EDF0(v6, a3);
    [v3 setNeedsLayout];
  }

  return result;
}

double sub_41FDA8()
{
  swift_beginAccess();

  return result;
}

double sub_41FDF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_41FEA8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_41FF04(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_41FFC4(uint64_t a1, uint64_t a2))()
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
  return sub_4201F8;
}

uint64_t sub_4200F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_420140()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_420178()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4201B0()
{

  sub_BEB8((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_420204()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_420304(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_75B650() & 1) == 0 || *(a1 + a3[5]) != *(a2 + a3[5]) || (sub_757580() & 1) == 0)
  {
    return 0;
  }

  return sub_75B650();
}

uint64_t sub_420394(uint64_t a1)
{
  v31 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v27 - v6;
  v7 = sub_BD88(&qword_94A490, &unk_7858C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_BD88(&qword_94A498, &unk_79D2A0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v30 = v1;
  sub_1ED18(v1 + v17, v16, &qword_94A490, &unk_7858C0);
  sub_1ED18(v31, &v16[v18], &qword_94A490, &unk_7858C0);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10A2C(v16, &qword_94A490, &unk_7858C0);
    }

    goto LABEL_6;
  }

  sub_1ED18(v16, v12, &qword_94A490, &unk_7858C0);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_205CA0(v12);
LABEL_6:
    v21 = &qword_94A498;
    v22 = &unk_79D2A0;
    goto LABEL_13;
  }

  v23 = v28;
  sub_205C3C(&v16[v18], v28);
  if (sub_75B650() & 1) != 0 && *&v12[*(v2 + 20)] == *(v23 + *(v2 + 20)) && (sub_757580())
  {
    v24 = sub_75B650();
    sub_205CA0(v23);
    sub_205CA0(v12);
    result = sub_10A2C(v16, &qword_94A490, &unk_7858C0);
    if (v24)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_205CA0(v23);
  sub_205CA0(v12);
  v21 = &qword_94A490;
  v22 = &unk_7858C0;
LABEL_13:
  sub_10A2C(v16, v21, v22);
LABEL_14:
  sub_1ED18(v30 + v17, v9, &qword_94A490, &unk_7858C0);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10A2C(v9, &qword_94A490, &unk_7858C0);
  }

  v25 = v29;
  sub_205C3C(v9, v29);
  sub_4207A4(v25, v26);
  return sub_205CA0(v25);
}

uint64_t sub_420778@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649A0();
  *a1 = result;
  return result;
}

uint64_t sub_4207A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  sub_7575D0();
  sub_7575B0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = Strong, type metadata accessor for InteractiveSectionBackgroundView(0), sub_769BC0(), v8 = sub_769210(), , isa = sub_757550().super.isa, v10 = [v7 _visibleDecorationViewOfKind:v8 atIndexPath:isa], v7, v8, isa, !v10) || (*&v18[0] = v10, sub_205E24(), sub_BD88(&unk_94A520, qword_78B9C0), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  sub_420A64(v20);
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11 || (v12 = v11, v13 = UICollectionElementKindSectionHeader, v14 = sub_757550().super.isa, v15 = [v12 _visibleSupplementaryViewOfKind:v13 atIndexPath:v14], v12, v13, v14, !v15) || (v17[1] = v15, sub_205E24(), sub_BD88(&unk_94A520, qword_78B9C0), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_420A64(v18);
  (*(v3 + 8))(v5, v2);
  sub_10A2C(v18, &unk_94A510, &unk_7AC3D0);
  return sub_10A2C(v20, &unk_94A510, &unk_7AC3D0);
}

uint64_t sub_420A64(uint64_t a1)
{
  v50 = sub_BD88(&qword_94A498, &unk_79D2A0);
  __chkstk_darwin(v50);
  v51 = &v44 - v3;
  v4 = sub_BD88(&qword_94A490, &unk_7858C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = (&v44 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  sub_1ED18(a1, &v52, &unk_94A510, &unk_7AC3D0);
  if (!v53)
  {
    return sub_10A2C(&v52, &unk_94A510, &unk_7AC3D0);
  }

  v48 = v12;
  v49 = v22;
  sub_10914(&v52, v55);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  sub_1ED18(v1 + v23, v15, &qword_94A490, &unk_7858C0);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &qword_94A490;
    v26 = &unk_7858C0;
    v27 = v15;
LABEL_21:
    sub_10A2C(v27, v25, v26);
    return sub_BEB8(v55);
  }

  v44 = v19;
  v45 = v6;
  v46 = a1;
  v47 = v1;
  v29 = v49;
  sub_205C3C(v15, v49);
  v30 = v56;
  v31 = v57;
  sub_B170(v55, v56);
  v32 = v48;
  (*(v31 + 8))(v30, v31);
  sub_11CB8C(v29, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v33 = v51;
  v34 = *(v50 + 48);
  sub_1ED18(v32, v51, &qword_94A490, &unk_7858C0);
  sub_1ED18(v9, v33 + v34, &qword_94A490, &unk_7858C0);
  if (v24(v33, 1, v16) == 1)
  {
    sub_10A2C(v9, &qword_94A490, &unk_7858C0);
    sub_10A2C(v32, &qword_94A490, &unk_7858C0);
    if (v24((v33 + v34), 1, v16) == 1)
    {
      sub_10A2C(v33, &qword_94A490, &unk_7858C0);
LABEL_8:
      sub_205CA0(v49);
      return sub_BEB8(v55);
    }

    goto LABEL_11;
  }

  v35 = v45;
  sub_1ED18(v33, v45, &qword_94A490, &unk_7858C0);
  if (v24((v33 + v34), 1, v16) == 1)
  {
    sub_10A2C(v9, &qword_94A490, &unk_7858C0);
    sub_10A2C(v48, &qword_94A490, &unk_7858C0);
    sub_205CA0(v35);
LABEL_11:
    sub_10A2C(v33, &qword_94A498, &unk_79D2A0);
    v36 = v47;
    goto LABEL_18;
  }

  v37 = v44;
  sub_205C3C(v33 + v34, v44);
  v38 = sub_75B650();
  v36 = v47;
  if (v38 & 1) != 0 && *(v35 + *(v16 + 20)) == *(v37 + *(v16 + 20)) && (sub_757580())
  {
    v39 = sub_75B650();
    sub_205CA0(v37);
    sub_10A2C(v9, &qword_94A490, &unk_7858C0);
    sub_10A2C(v48, &qword_94A490, &unk_7858C0);
    sub_205CA0(v35);
    sub_10A2C(v33, &qword_94A490, &unk_7858C0);
    if (v39)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_205CA0(v37);
    sub_10A2C(v9, &qword_94A490, &unk_7858C0);
    sub_10A2C(v48, &qword_94A490, &unk_7858C0);
    sub_205CA0(v35);
    sub_10A2C(v33, &qword_94A490, &unk_7858C0);
  }

LABEL_18:
  sub_1ED18(v46, &v52, &unk_94A510, &unk_7AC3D0);
  v40 = v53;
  if (!v53)
  {
    sub_205CA0(v49);
    v25 = &unk_94A510;
    v26 = &unk_7AC3D0;
    v27 = &v52;
    goto LABEL_21;
  }

  v41 = v54;
  sub_B170(&v52, v53);
  v42 = *(v36 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_objectGraph);
  v43 = v49;
  (*(v41 + 16))(v49, v42, v40, v41);
  sub_205CA0(v43);
  sub_BEB8(&v52);
  return sub_BEB8(v55);
}

uint64_t sub_421080()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v2 = sub_75DAB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState, &qword_94A490, &unk_7858C0);

  return swift_deallocClassInstance();
}

void sub_421184(uint64_t a1)
{
  sub_75DAB0();
  if (v1 <= 0x3F)
  {
    sub_11C704(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_42129C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_75B660();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = sub_757640();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_4213A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v9 = sub_75B660();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = sub_757640();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_42149C(uint64_t a1, __n128 a2)
{
  result = sub_75B660();
  if (v3 <= 0x3F)
  {
    result = sub_757640();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_421540()
{
  result = qword_954D98;
  if (!qword_954D98)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954D98);
  }

  return result;
}

uint64_t sub_421598(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2050BC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_421614(v6);
  return sub_76A7B0();
}

void sub_421614(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_76A900(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_BD88(&unk_94A500, &qword_7851B0);
        v6 = sub_7694E0();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_42194C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_421724(0, v2, 1, a1);
  }
}

void sub_421724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_757640();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_757590();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_757590();

      LOBYTE(v20) = sub_757570();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_42194C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_757640();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_204F10(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[2 * v101];
        v102 = v100;
        v103 = *&v100[2 * v101 + 3];
        sub_4221D4((*v16 + 8 * a4), (*v16 + 8 * *&v100[2 * v101 + 2]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_204F10(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[2 * v101];
        *v104 = a4;
        *(v104 + 1) = v103;
        v121 = v102;
        sub_204E84(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_757590();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_757590();

      LODWORD(v116) = sub_757570();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_757590();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_757590();

        LODWORD(v32) = sub_757570() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_7BFD4(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_7BFD4((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[2 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[2 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[2 * v60 + 4];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[2 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[2 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[2 * a4 + 4];
        v16 = *&v15[2 * v60 + 5];
        sub_4221D4((*a3 + 8 * v5), (*a3 + 8 * *&v15[2 * v60 + 4]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_204F10(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[2 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_204E84(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[2 * v5 + 4];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[2 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[2 * v60 + 4];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_757590();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_757590();

    LOBYTE(v49) = sub_757570();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_4221D4(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_757640();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = (a3 - 1);
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = (v30 + 8);
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_757590();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_757590();

        LOBYTE(v37) = sub_757570();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 8;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_757590();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_757590();

        LOBYTE(v21) = sub_757570();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

void sub_42266C(char **a1, double a2)
{
  v114 = a1;
  v4 = sub_BD88(&qword_94A490, &unk_7858C0);
  __chkstk_darwin(v4 - 8);
  v112 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v111 = v108 - v7;
  v127 = sub_757640();
  v121 = *(v127 - 8);
  __chkstk_darwin(v127);
  v120 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v113 = v108 - v10;
  __chkstk_darwin(v11);
  v117 = v108 - v12;
  __chkstk_darwin(v13);
  v118 = v108 - v14;
  __chkstk_darwin(v15);
  v119 = v108 - v16;
  v129 = sub_75B660();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v110 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v116 = v108 - v19;
  __chkstk_darwin(v20);
  v115 = v108 - v21;
  __chkstk_darwin(v22);
  v126 = (v108 - v23);
  __chkstk_darwin(v24);
  v125 = v108 - v25;
  v124 = sub_7656C0();
  v133 = *(v124 - 1);
  __chkstk_darwin(v124);
  v27 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_75DAB0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_BD88(&unk_94F1F0, &qword_782290);
  v122 = *(v131 - 8);
  v32 = __chkstk_darwin(v131);
  v130 = v108 - v33;
  v34 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v35 = *(v29 + 16);
  v132 = v2;
  v35(v31, v2 + OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v28, v32);
  v123 = v35;
  sub_75DAA0();
  v36 = *(v29 + 8);
  v36(v31, v28);
  (v35)(v31, v2 + v34, v28);
  sub_75DA20();
  v36(v31, v28);
  sub_765650();
  v38 = v37;
  v39 = *(v133 + 8);
  v133 += 8;
  v40 = v124;
  v39(v27, v124);
  v123(v31, v132 + v34, v28);
  sub_75DA20();
  v36(v31, v28);
  sub_7655F0();
  v42 = v41;
  v39(v27, v40);
  v43 = v130;
  v44 = v131;
  swift_getKeyPath();
  sub_768750();

  v133 = v139;
  swift_getKeyPath();
  v45 = v125;
  sub_768750();

  v46 = v128;
  v47 = v128 + 104;
  v48 = *(v128 + 104);
  v49 = v126;
  v50 = v129;
  v48(v126, enum case for ShelfBackground.interactive(_:), v129);
  LOBYTE(v34) = sub_75B650();
  v53 = *(v46 + 8);
  v51 = v46 + 8;
  v52 = v53;
  (v53)(v49, v50);
  (v53)(v45, v50);
  if ((v34 & 1) == 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*(v122 + 8))(v43, v44);
    return;
  }

  v55 = Strong;
  v108[2] = v47;

  v139 = sub_205028(v56);
  sub_421598(&v139);
  v109 = v48;
  v57 = v139;
  v58 = v133;
  v124 = v55;
  if (v139 < 0 || (v139 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v59 = sub_76A860();
  }

  else
  {
    v59 = *(v139 + 16);
  }

  v123 = v51;
  v114 = v52;
  if (!v59)
  {
    v126 = _swiftEmptyArrayStorage;
LABEL_30:

    if (!*(v126 + 2))
    {

LABEL_55:
      (*(v122 + 8))(v130, v131);
      return;
    }

    v71 = v121;
    v72 = v126 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v73 = v113;
    v74 = v127;
    v125 = *(v121 + 16);
    (v125)(v113, v72, v127);

    v75 = v117;
    (*(v71 + 32))(v117, v73, v74);
    if (__OFADD__(sub_7575C0(), v58))
    {
      goto LABEL_61;
    }

    sub_7575D0();
    sub_7575B0();
    swift_getKeyPath();
    sub_768750();

    v76 = *(v139 + 16);

    v77 = sub_7575C0();
    v78 = v129;
    v79 = v116;
    if ((v77 & 0x8000000000000000) == 0 && v77 < v76)
    {
      swift_getKeyPath();
      sub_768750();

      v80 = v138;
      v81 = sub_7575C0();
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v81 >= *(v80 + 16))
      {
        goto LABEL_64;
      }

      sub_134D8(v80 + 40 * v81 + 32, v137);

      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_BD88(&qword_954DA8, &qword_79D290);
      if (swift_dynamicCast())
      {
        sub_10914(&v134, &v139);
        sub_B170(&v139, v140);
        sub_760FA0();
        sub_BEB8(&v139);
LABEL_41:
        swift_getKeyPath();
        sub_768750();

        v82 = *(v139 + 16);

        v83 = sub_7575C0();
        if ((v83 & 0x8000000000000000) == 0 && v83 < v82)
        {
          swift_getKeyPath();
          sub_768750();

          v84 = v138;
          v85 = sub_7575C0();
          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v85 >= *(v84 + 16))
          {
            goto LABEL_65;
          }

          sub_134D8(v84 + 40 * v85 + 32, v137);

          sub_BD88(&unk_944DA0, &unk_77EB70);
          sub_BD88(&qword_954DA8, &qword_79D290);
          if (swift_dynamicCast())
          {
            sub_10914(&v134, &v139);
            sub_B170(&v139, v140);
            sub_760FA0();
            sub_BEB8(&v139);
            v86 = enum case for ShelfBackground.none(_:);
LABEL_49:
            v87 = v128;
            v88 = *(v128 + 16);
            v89 = v110;
            v88(v110, v79, v78);
            LODWORD(v87) = (*(v87 + 88))(v89, v78);
            (v114)(v89, v78);
            v90 = 1.0;
            if (v87 == v86)
            {
              v91 = v125;
            }

            else
            {
              v92 = [v124 collectionViewLayout];
              isa = sub_757550().super.isa;
              v94 = [v92 layoutAttributesForItemAtIndexPath:isa];

              v91 = v125;
              if (v94)
              {
                [v94 frame];
                v95 = CGRectGetMinX(v143) - v38 - a2;
                [v94 frame];
                Width = CGRectGetWidth(v144);

                v90 = (v95 + v42 + Width) / (v42 + Width);
                if (v90 >= 1.0)
                {
                  v90 = 1.0;
                }
              }
            }

            v97 = v111;
            v98 = v115;
            v88(v111, v115, v78);
            v99 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
            v100 = v75;
            v101 = v127;
            v91(v97 + v99[6], v100, v127);
            v102 = v116;
            v88((v97 + v99[7]), v116, v78);
            *(v97 + v99[5]) = v90;
            (*(*(v99 - 1) + 56))(v97, 0, 1, v99);
            v103 = OBJC_IVAR____TtC18ASMessagesProvider42InteractiveSectionBackgroundScrollObserver_currentState;
            v104 = v132;
            swift_beginAccess();
            v105 = v112;
            sub_1ED18(v104 + v103, v112, &qword_94A490, &unk_7858C0);
            swift_beginAccess();
            sub_205BCC(v97, v104 + v103);
            swift_endAccess();
            sub_420394(v105);

            sub_10A2C(v105, &qword_94A490, &unk_7858C0);
            sub_10A2C(v97, &qword_94A490, &unk_7858C0);
            v106 = v114;
            (v114)(v102, v78);
            (v106)(v98, v78);
            v107 = *(v121 + 8);
            v107(v120, v101);
            v107(v117, v101);
            goto LABEL_55;
          }

          v136 = 0;
          v134 = 0u;
          v135 = 0u;
          sub_10A2C(&v134, &unk_954DB0, &qword_79D298);
        }

        v86 = enum case for ShelfBackground.none(_:);
        v109(v79, enum case for ShelfBackground.none(_:), v78);
        goto LABEL_49;
      }

      v136 = 0;
      v134 = 0u;
      v135 = 0u;
      sub_10A2C(&v134, &unk_954DB0, &qword_79D298);
    }

    v109(v115, enum case for ShelfBackground.none(_:), v78);
    goto LABEL_41;
  }

  if (v59 < 1)
  {
    goto LABEL_60;
  }

  v60 = 0;
  v51 = v57 & 0xC000000000000001;
  v125 = (v121 + 8);
  v108[1] = v121 + 32;
  v126 = _swiftEmptyArrayStorage;
  v52 = &selRef_setSpeed_;
  while (1)
  {
    if (v51)
    {
      v61 = sub_76A770();
    }

    else
    {
      v61 = *(v57 + 8 * v60 + 32);
      swift_unknownObjectRetain();
    }

    if ([v61 representedElementCategory])
    {
      goto LABEL_20;
    }

    [v61 frame];
    v62 = CGRectGetMinX(v141) - v42 - a2;
    [v61 frame];
    v63 = CGRectGetMaxX(v142) - a2;
    if (v62 > v63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v62 > v38 || v38 >= v63)
    {
      goto LABEL_20;
    }

    v64 = [v61 indexPath];
    v65 = v119;
    sub_757590();

    v66 = sub_7575C0();
    (*v125)(v65, v127);
    if (!v58)
    {
      goto LABEL_57;
    }

    if (v66 == 0x8000000000000000 && v58 == -1)
    {
      break;
    }

    if (!(v66 % v58))
    {
      v67 = [v61 indexPath];
      sub_757590();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = sub_7BA20(0, *(v126 + 2) + 1, 1, v126);
      }

      v69 = *(v126 + 2);
      v68 = *(v126 + 3);
      if (v69 >= v68 >> 1)
      {
        v126 = sub_7BA20((v68 > 1), v69 + 1, 1, v126);
      }

      swift_unknownObjectRelease();
      v70 = v126;
      *(v126 + 2) = v69 + 1;
      (*(v121 + 32))(v70 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v69, v118, v127);
      goto LABEL_21;
    }

LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    if (v59 == ++v60)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);

  __break(1u);
}

uint64_t sub_4237F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649A0();
  *a1 = result;
  return result;
}

uint64_t sub_423824()
{
  sub_BD88(&qword_9477F0, qword_780200);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_784250;
  v1 = sub_7677C0();
  *(v0 + 32) = v1;
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = sub_767B80();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v0 + 64) = sub_7676E0();
  *(v0 + 72) = &protocol witness table for UITraitLayoutDirection;
  *(v0 + 80) = v1;
  *(v0 + 88) = &protocol witness table for UITraitUserInterfaceStyle;
  result = sub_767890();
  *(v0 + 96) = result;
  *(v0 + 104) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_954DC0 = v0;
  return result;
}

double sub_4238D8()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99DA20);
  sub_BE38(v0, qword_99DA20);
  sub_7666A0();
  return result;
}

__n128 sub_42392C()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_99DA40 = *&UIEdgeInsetsZero.top;
  *&qword_99DA50 = v1;
  return result;
}

uint64_t sub_423948()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_954DC8);
  sub_BE38(v0, qword_954DC8);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_423AAC(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v36 = a1;
  sub_75CE20();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8F0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_766CA0();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v14(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v6, qword_99E8D8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v38);
  v34(v15, v5, v2);
  sub_766CB0();
  v14(v5, v2);
  sub_75CE60();
  v32 = v14;
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99E8A8);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v38);
  v34(v18, v5, v2);
  sub_766CB0();
  v32(v5, v2);
  sub_75CE00();
  v19 = v11;
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v6, qword_99E8C0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_766CB0();
  v24 = v32;
  v32(v5, v2);
  sub_75CEF0();
  sub_75CE40();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v38);
  v23(v25, v5, v2);
  sub_766CB0();
  v24(v5, v2);
  return sub_75CE50();
}

uint64_t sub_424094()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_954DE0);
  sub_BE38(v0, qword_954DE0);
  if (qword_93D0C0 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_954DC8);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

char *sub_4241F8(uint64_t a1)
{
  v2 = v1;
  v113 = a1;
  v110[1] = swift_getObjectType();
  v3 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v3 - 8);
  v5 = v110 - v4;
  v6 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v6 - 8);
  v8 = v110 - v7;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator] = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView;
  *&v1[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView;
  sub_758E80();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView;
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView;
  *&v1[v13] = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView(0)) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView;
  v15 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView(0));
  *&v1[v14] = sub_3D0DA8(0);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView;
  v17 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView(0));
  *&v1[v16] = sub_6C5480(0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView(0);
  *&v2[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v2[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView;
  *&v2[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView] = 0;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *&v2[v21] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_videoBackgroundColor] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_haveFlashedScrollIndicators] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_isCollapsing] = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
  v23 = enum case for MediaOverlayStyle.matchSystem(_:);
  v24 = sub_75CA40();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_defaultPageMargin] = 0;
  v25 = [objc_opt_self() buttonWithType:7];
  sub_76A3D0();
  v26 = sub_76A3F0();
  (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
  sub_76A420();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton] = v25;
  v27 = type metadata accessor for AppPromotionDetailPageView(0);
  v115.receiver = v2;
  v115.super_class = v27;
  v28 = v25;
  v29 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v33 setClipsToBounds:0];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView;
  [*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView) setClipsToBounds:0];
  [*(v33 + v34) setContentInsetAdjustmentBehavior:2];
  [v33 addSubview:*(v33 + v34)];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView;
  v36 = qword_93C580;
  v37 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView);
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_765080();
  v39 = sub_BE38(v38, qword_99B5E0);
  v40 = *(v38 - 8);
  (*(v40 + 16))(v5, v39, v38);
  (*(v40 + 56))(v5, 0, 1, v38);
  sub_758E60();

  v41 = *(v33 + v35);
  sub_758E40();

  [*(v33 + v34) addSubview:*(v33 + v35)];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView;
  [*(v33 + v34) addSubview:*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView)];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView;
  *(*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_delegate + 8) = &off_891500;
  swift_unknownObjectWeakAssign();
  [*(v33 + v42) addSubview:*(v33 + v43)];
  v44 = *(v33 + v42);
  v112 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView;
  [v44 addSubview:*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView)];
  v45 = *(v33 + v42);
  v110[0] = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView;
  [v45 addSubview:*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView)];
  v46 = *(v33 + v42);
  v111 = v28;
  [v46 addSubview:v28];
  v47 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView;
  v48 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 labelColor];
  v52 = [v51 colorWithAlphaComponent:0.5];

  v53 = *&v50[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor];
  *&v50[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor] = v52;
  v54 = v52;

  [*&v50[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] setBackgroundColor:v54];
  [*(v33 + v42) addSubview:*(v33 + v47)];
  v55 = *(v33 + v42);
  v56 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView;
  [v55 addSubview:*(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView)];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView;
  v58 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView);
  v59 = [v49 whiteColor];
  v60 = [v59 colorWithAlphaComponent:0.2];

  sub_75CD00();
  v61 = *(v33 + v57);
  sub_75CD10();

  [*(v33 + v57) setUserInteractionEnabled:0];
  [*(v33 + v57) setHidden:1];
  [*(v33 + v34) addSubview:*(v33 + v57)];
  v62 = v112;
  v63 = *&v112[v33];
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v63;
  v65 = sub_76A1F0();
  sub_3D16AC(v65);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *&v62[v33];
  v68 = (*&v67[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock);
  v69 = *v68;
  v70 = v68[1];
  *v68 = sub_428F10;
  v68[1] = v66;
  swift_retain_n();
  v71 = v67;
  sub_F704(v69, v70);
  sub_3D85CC();

  v72 = *(v33 + v56);
  v73 = &v72[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock];
  v74 = *&v72[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock];
  v75 = *&v72[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_lockupTapBlock + 8];
  *v73 = sub_428F10;
  v73[1] = v66;

  v76 = v72;
  v77 = v110[0];
  v78 = v76;
  sub_F704(v74, v75);
  sub_3D85CC();

  v79 = *(v33 + v77);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = v79;
  v81 = sub_76A1F0();
  sub_6C53AC(v81);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = v33;
  v83 = sub_76A1F0();
  v84 = v111;
  [v111 addAction:v83 forControlEvents:64];

  if (qword_93D0A8 != -1)
  {
    swift_once();
  }

  sub_769F40();
  swift_unknownObjectRelease();
  v85 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  [*&v82[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_dismissTapGestureRecognizer] addTarget:v82 action:"dismissTapGestureRecognized"];
  v86 = *&v82[v85];
  [v86 setDelegate:v82];

  [v82 addGestureRecognizer:*&v82[v85]];
  sub_427730(0);
  v87 = *&v112[v33];
  v88 = *(v33 + v77);
  sub_761120();
  sub_768900();
  v89 = v87;
  v90 = v88;
  sub_768ED0();
  v91 = v114;
  type metadata accessor for AppPromotionDisplayModeTransitionCoordinator();
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 16) = 0;
  swift_unknownObjectWeakAssign();
  *(v92 + 40) = &off_890198;
  swift_unknownObjectWeakAssign();
  *(v92 + 56) = &off_89D0D8;
  swift_unknownObjectWeakAssign();
  *(v92 + 64) = v91;
  Strong = swift_unknownObjectWeakLoadStrong();
  v112 = v91;
  if (Strong)
  {
    v94 = Strong;
    v95 = *(v92 + 40);
    ObjectType = swift_getObjectType();
    v97 = v91;
    v98 = ObjectType;
    v99 = *(v95 + 8);
    v100 = v89;
    v101 = *(v99 + 16);
    v102 = v97;
    v103 = v99;
    v84 = v111;
    v101(0, v98, v103);
    v89 = v100;
  }

  else
  {
    v104 = v91;
  }

  v105 = swift_unknownObjectWeakLoadStrong();
  if (v105)
  {
    v106 = v105;
    v107 = *(v92 + 56);
    v108 = swift_getObjectType();
    (*(*(v107 + 8) + 16))(0, v108);
  }

  sub_3CAE9C(0);

  *&v82[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator] = v92;

  return v82;
}

void sub_424EA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_97D6C();
      swift_unknownObjectRelease();
    }

    v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v4)
    {
      v5 = *(v4 + 16);
      *(v4 + 16) = 1;

      sub_3CAE9C((v5 & 1) == 0);
    }
  }
}

void sub_424F58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_97620();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_424FD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_97D78();
      swift_unknownObjectRelease();
    }

    v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v4)
    {
      v5 = *(v4 + 16);
      *(v4 + 16) = 0;

      sub_3CAE9C(v5);
    }
  }
}

void sub_425080(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_268E5C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_97848();
      swift_unknownObjectRelease();
    }
  }
}

void sub_425138(uint64_t a1)
{
  v2 = v1;
  v3 = sub_75CA40();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v11 = v4[2];
  v11(v9, v1 + v10, v3);
  sub_428E60(&qword_953438, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v12 = sub_7691C0();
  v29 = v4[1];
  v29(v9, v3);
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    v27 = v11;
    v14 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
    v13(v9, v2 + v10, v3);
    v15 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_mediaOverlayStyle;
    swift_beginAccess();
    v28 = v10;
    v26 = v4[3];
    v26(&v14[v15], v9, v3);
    swift_endAccess();
    v16 = v27;
    v27(v6, &v14[v15], v3);
    v17 = sub_75CA20();
    v18 = v6;
    v19 = v29;
    v29(v18, v3);
    [v14 setOverrideUserInterfaceStyle:v17];
    v19(v9, v3);
    v20 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);
    v16(v9, v2 + v28, v3);
    v21 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_mediaOverlayStyle;
    swift_beginAccess();
    v22 = v26;
    v26((v20 + v21), v9, v3);
    swift_endAccess();
    sub_3D1780();
    v23 = v29;
    v29(v9, v3);
    v24 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView);
    v27(v9, v2 + v28, v3);
    v25 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle;
    swift_beginAccess();
    v22(v24 + v25, v9, v3);
    swift_endAccess();
    sub_6C5B90();
    v23(v9, v3);
    sub_427C9C();
    sub_427B84(0);
  }
}

void (*sub_4254C4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_videoView;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_42552C;
}

void sub_42552C(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_428E60(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v8 = v5;
      v9 = [v7 superview];
      if (v9)
      {
        v10 = v9;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v11 = v4;
        v12 = sub_76A1C0();

        v13 = *(a1 + 16);
        if (v12)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }

          [*(v13 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v5;
    }

    v24 = *(a1 + 8);
    swift_unknownObjectWeakAssign();
    sub_1EC0F4();
    v25 = [v24 traitCollection];
    LOBYTE(v24) = sub_7699E0();

    v26 = *(a1 + 8);
    if (v24)
    {
      sub_426F70();
    }

    [v26 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_428E60(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v31 = v5;
      v16 = [v7 superview];
      if (v16)
      {
        v17 = v16;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v18 = v4;
        v19 = sub_76A1C0();

        v20 = *(a1 + 16);
        if (v19)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }

          [*(v20 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }

      v23 = v31;
    }

    else
    {
      v23 = v5;
    }

    v28 = *(a1 + 8);
    v32 = v23;
    swift_unknownObjectWeakAssign();
    sub_1EC0F4();

    v29 = [v28 traitCollection];
    LOBYTE(v28) = sub_7699E0();

    v30 = *(a1 + 8);
    if (v28)
    {
      sub_426F70();
    }

    [v30 setNeedsLayout];
    v27 = v32;
  }
}

uint64_t sub_425864()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for AppPromotionDetailPageView(0);
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v0 bounds];
  result = CGRectIsEmpty(v23);
  if ((result & 1) == 0)
  {
    v3 = [v0 traitCollection];
    v4 = sub_7699E0();

    if (v4)
    {
      sub_425E8C();
    }

    else
    {
      sub_425B14();
    }

    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] bounds];
    [v5 setContentSize:{v6, v7}];
    [v1 bounds];
    [v5 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v8 = CGRectGetWidth(v24) * 0.5;
    [v1 bounds];
    [v5 setCenter:{v8, CGRectGetHeight(v25) * 0.5}];
    v9 = [v1 traitCollection];
    v10 = sub_7699E0();

    if (v10)
    {
      sub_426EA4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [v1 traitCollection];
      v14 = sub_7699D0();

      if (v14)
      {
        [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton] frame];
        v16 = v15;
        [v12 frame];
        v18.f64[0] = v17 + -53.0;
        v19 = &v12[qword_99A1B0];
        v20 = *&v12[qword_99A1B0];
        v21 = *&v12[qword_99A1B0 + 16];
        *v19 = xmmword_79D2B0;
        *(v19 + 2) = *&v18.f64[0];
        *(v19 + 3) = v16 + 25.0;
        v18.f64[1] = v16 + 25.0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_79D2B0, v20), vceqq_f64(v18, v21)))) & 1) == 0)
        {
          sub_54EB4();
        }
      }
    }

    sub_4261E4();
    return sub_426A78();
  }

  return result;
}

id sub_425B14()
{
  v1 = v0;
  [v0 bounds];
  Height = CGRectGetHeight(v33);
  if (qword_93D0B0 != -1)
  {
    swift_once();
  }

  v3 = sub_766690();
  sub_BE38(v3, qword_99DA20);
  [v0 bounds];
  CGRectGetWidth(v34);
  sub_766660();
  if (v4 >= Height)
  {
    v4 = Height;
  }

  v5 = ceil(v4);
  [v0 bounds];
  Width = CGRectGetWidth(v35);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView];
  v8 = type metadata accessor for AppPromotionMediaContainerView(0);
  v32.receiver = v7;
  v32.super_class = v8;
  objc_msgSendSuper2(&v32, "frame");
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v31.receiver = v7;
  v31.super_class = v8;
  objc_msgSendSuper2(&v31, "setFrame:", 0.0, 0.0, Width, v5);
  sub_1EC618(v10, v12, v14, v16);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView] setFrame:{0.0, 0.0, Width, v5}];
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView];
  sub_3D1D40(v30, v5);
  sub_3D1F8C(v30, v28);
  v18 = [v17 traitCollection];
  if (sub_7699D0())
  {
    v19 = sub_769A00();

    if (v19)
    {
      v20 = *v28;
      sub_577F7C(v18, v29, v26);
      sub_B170(v26, v27);
      sub_7673F0();
      v22 = v20 + v21;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (sub_7699D0())
  {
    sub_576290(v18, v26, 0.0, 0.0, Width, v5);
  }

  else
  {
    sub_576C98(v18, v26, 0.0, 0.0, Width, v5);
  }

  sub_B170(v26, v27);
  sub_7673F0();
  Width = v23;
  v22 = v24;
LABEL_13:
  sub_BEB8(v26);

  sub_3D6758(v28);
  sub_3D67AC(v30);
  [v17 setFrame:{0.0, 0.0, Width, v22}];
  [v17 setNeedsLayout];
  [v17 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0, Width, v22}];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, Width, v22}];
  return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, Width, v22}];
}

id sub_425E8C()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0}];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, v3, v5}];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, v3, v5}];
  if (qword_93D0B0 != -1)
  {
    swift_once();
  }

  v6 = sub_766690();
  sub_BE38(v6, qword_99DA20);
  [v0 bounds];
  CGRectGetHeight(v42);
  sub_766650();
  v39 = ceil(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v43);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView];
  v9 = [v1 traitCollection];
  [v1 bounds];
  sub_769CA0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = type metadata accessor for AppPromotionMediaContainerView(0);
  v41.receiver = v8;
  v41.super_class = v18;
  objc_msgSendSuper2(&v41, "frame");
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v40.receiver = v8;
  v40.super_class = v18;
  objc_msgSendSuper2(&v40, "setFrame:", v11, v13, v15, v17);
  sub_1EC618(v20, v22, v24, v26);
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = v39;
  v44.size.height = Height;
  CGRectGetMaxX(v44);
  [v1 bounds];
  CGRectGetWidth(v45);
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v39;
  v46.size.height = Height;
  CGRectGetWidth(v46);
  [v1 bounds];
  CGRectGetHeight(v47);
  v27 = [v1 traitCollection];
  [v1 bounds];
  sub_769CA0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView];
  [v36 setFrame:{v29, v31, v33, v35}];
  [v36 setNeedsLayout];
  [v36 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView] setFrame:{v29, v31, v33, v35}];
  result = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView];
  if (result)
  {
    return [result setFrame:{v29, v31, v33, v35}];
  }

  return result;
}

uint64_t sub_4261E4()
{
  v1 = v0;
  v80 = sub_767510();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_75D850();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v73 - v7;
  v8 = sub_75CF00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  *&v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v73 - v13;
  v15 = [v0 traitCollection];
  sub_7699D0();

  v83 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView];
  [v83 frame];
  sub_769D10();
  v82 = v16;
  v81 = v17;
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView];
  if (qword_93CFA8 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v8, qword_99D870);
  v24 = type metadata accessor for SubscriptionLockupView();
  v90.receiver = v22;
  v90.super_class = v24;
  v84 = v24;
  objc_msgSendSuper2(&v90, "layoutMargins");
  v26 = v25;
  v28 = v27;
  v29 = [v22 traitCollection];
  v86 = v9;
  v30 = *(v9 + 16);
  v79 = v8;
  v77 = v30;
  v30(v14, v23, v8);
  v31 = sub_75CE70();
  if ((v33 & 1) == 0 && ((v31 | v32) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v34 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v34 = qword_946938;
    }

    v35 = v76;
    v36 = sub_BE38(v76, v34);
    v37 = v74;
    (*(v4 + 16))(v74, v36, v35);
    v38 = v75;
    (*(v4 + 32))(v75, v37, v35);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v4 + 8))(v38, v35);
  }

  sub_75CDB0();
  v76 = v39;
  v41 = v40;

  v42 = *(v86 + 8);
  v43 = v79;
  v86 += 8;
  v42(v14, v79);
  v44 = v28 + v26 + v41;
  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView];
  v46 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v47 = v78;
  v48 = v80;
  (*(v78 + 16))(v3, &v45[v46], v80);
  sub_7674D0();
  v50 = v49;
  (*(v47 + 8))(v3, v48);
  v51 = [v1 traitCollection];
  v52 = v19;
  if (sub_769A00())
  {
    v53 = v85;
    if (qword_93D0C8 != -1)
    {
      swift_once();
    }

    v54 = qword_954DE0;
  }

  else
  {
    v53 = v85;
    if (qword_93D0C0 != -1)
    {
      swift_once();
    }

    v54 = qword_954DC8;
  }

  v55 = sub_BE38(v43, v54);
  v77(*&v53, v55, v43);

  sub_75CDD0();
  v57 = (v44 - v56) * 0.5;
  v58 = [v1 traitCollection];
  v59 = sub_769A00();

  if (v59)
  {
    v60 = 18.0;
  }

  else
  {
    v60 = 18.0 - v57;
  }

  v61 = v21 + v57;
  v62 = v50 + v44 + v60;
  v85 = v44;
  v63 = v50;
  v64 = v82;
  v91.origin.x = v82;
  v65 = v81;
  v91.origin.y = v81;
  v91.size.width = v52;
  v91.size.height = v61;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v64;
  v92.origin.y = v65;
  v92.size.width = v52;
  v92.size.height = v61;
  [v45 setFrame:{MinX, CGRectGetMaxY(v92) - v62, v52, v63}];
  v93.origin.x = v64;
  v93.origin.y = v65;
  v93.size.width = v52;
  v93.size.height = v61;
  v67 = CGRectGetMinX(v93);
  [v45 frame];
  [v22 setFrame:{v67, v60 + CGRectGetMaxY(v94), *&v76, v85}];
  v68 = v83;
  [v45 setHidden:{objc_msgSend(*&v83[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_separatorView], "isHidden") ^ 1}];
  [v22 setHidden:{objc_msgSend(*&v68[OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_lockupView], "isHidden") ^ 1}];
  if (qword_93D0B8 != -1)
  {
    swift_once();
  }

  v69 = v84;
  v89.receiver = v22;
  v89.super_class = v84;
  objc_msgSendSuper2(&v89, "setLayoutMargins:", xmmword_99DA40, *&qword_99DA50, unk_99DA58);
  v70 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v88.receiver = v22;
  v88.super_class = v69;
  objc_msgSendSuper2(&v88, "layoutMargins");
  [v70 setLayoutMargins:?];
  v71 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
  v87.receiver = v22;
  v87.super_class = v69;
  objc_msgSendSuper2(&v87, "layoutMargins");
  [v71 setLayoutMargins:?];
  return (v42)(*&v53, v43);
}

id sub_426A78()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_7699D0();

  [v1 bounds];
  CGRectGetMaxX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  v3 = [v1 traitCollection];
  [v1 bounds];
  sub_769CA0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton];

  return [v12 setFrame:{v5, v7, v9, v11}];
}

id sub_426BA8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699E0();

  if (v3)
  {
    sub_425E8C();
  }

  else
  {
    sub_425B14();
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView] layoutIfNeeded];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] bounds];

  return [v4 setContentSize:{v5, v6}];
}

void sub_426DA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_haveFlashedScrollIndicators;
  if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent;
    [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v5 = v4;
    [*(v1 + v3) bounds];
    if (CGRectGetHeight(v10) < v5)
    {
      [*(v1 + v3) flashScrollIndicators];
      *(v1 + v2) = 1;
    }
  }

  v6 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView);
    [v7 contentSize];
    v9 = v8;
    [v7 bounds];
    if (CGRectGetHeight(v11) < v9)
    {
      [v7 flashScrollIndicators];
      *(v0 + v6) = 1;
    }
  }
}

id sub_426EA4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699D0();

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView];
    v6 = OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent;
    [*(v5 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v8 = v7;
    [*(v5 + v6) bounds];
    v4 = CGRectGetHeight(v12) >= v8;
  }

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView];

  return [v9 setAlwaysBounceVertical:v4];
}

id sub_426F70()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView;
  v6 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView) isHidden];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView];
  if (v4 || (v6 & 1) == 0)
  {
    if (v8)
    {
      v10 = v6;
      type metadata accessor for VideoMirrorView();
      if (swift_dynamicCastClass())
      {
        if (v10)
        {
LABEL_25:
          v45 = *&v1[v7];
          if (v45)
          {
            [v45 setHidden:0];
          }

          return [v1 setNeedsLayout];
        }

LABEL_13:
        v11 = *(v2 + v5);
        v12 = type metadata accessor for MirrorView();
        v13 = objc_allocWithZone(v12);
        swift_unknownObjectWeakInit();
        v14 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
        v15 = objc_allocWithZone(CALayer);
        v16 = v11;
        *&v13[v14] = [v15 init];
        *&v13[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext] = 0;
        v13[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v13[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
        *&v13[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsVerticalOffset] = 0;
        v46.receiver = v13;
        v46.super_class = v12;
        v17 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v17 setClipsToBounds:1];
        [v17 setUserInteractionEnabled:0];
        v18 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
        [*&v17[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v19) = 1.0;
        [*&v17[v18] setOpacity:v19];
        [*&v17[v18] setAnchorPoint:{0.5, 0.5}];
        v20 = qword_93C498;
        v21 = *&v17[v18];
        if (v20 != -1)
        {
          swift_once();
        }

        sub_BD88(&qword_9452F0, qword_78B4B0);
        isa = sub_7690E0().super.isa;
        [v21 setActions:isa];

        v23 = *&v17[v18];
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 mainScreen];
        [v26 scale];
        v28 = v27;

        [v25 setContentsScale:v28];
        [*&v17[v18] setMasksToBounds:1];
        v29 = *&v17[v18];
        v30 = *&CATransform3DIdentity.m33;
        v51 = *&CATransform3DIdentity.m31;
        v52 = v30;
        v31 = *&CATransform3DIdentity.m43;
        v53 = *&CATransform3DIdentity.m41;
        v54 = v31;
        v32 = *&CATransform3DIdentity.m13;
        v47 = *&CATransform3DIdentity.m11;
        v48 = v32;
        v33 = *&CATransform3DIdentity.m23;
        v49 = *&CATransform3DIdentity.m21;
        v50 = v33;
        [v29 setTransform:&v47];
        sub_15F084();
        v34 = [v17 layer];

        [v34 addSublayer:*&v17[v18]];
        v35 = *&v1[v7];
        if (!v35)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else if (!v4)
    {
      if (v6)
      {
        return [v1 setNeedsLayout];
      }

      goto LABEL_13;
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    v39 = *&CATransform3DIdentity.m33;
    v51 = *&CATransform3DIdentity.m31;
    v52 = v39;
    v40 = *&CATransform3DIdentity.m43;
    v53 = *&CATransform3DIdentity.m41;
    v54 = v40;
    v41 = *&CATransform3DIdentity.m13;
    v47 = *&CATransform3DIdentity.m11;
    v48 = v41;
    v42 = *&CATransform3DIdentity.m23;
    v49 = *&CATransform3DIdentity.m21;
    v50 = v42;
    v43 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
    v17 = sub_69A56C(v38, &v47, 1.0, 0.0);
    v35 = *&v1[v7];
    if (!v35)
    {
LABEL_16:
      v36 = 0;
LABEL_24:
      *&v1[v7] = v17;
      v44 = v17;

      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_25;
    }

LABEL_23:
    [v35 removeFromSuperview];
    v36 = *&v1[v7];
    goto LABEL_24;
  }

  if (v8)
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView] removeFromSuperview];
    v9 = *&v1[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v1[v7] = 0;

  return [v1 setNeedsLayout];
}

void sub_427484(char a1, char a2)
{
  v5 = [v2 traitCollection];
  v6 = sub_7699E0();

  if ((v6 & 1) == 0)
  {
    if (a1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    if (a2)
    {
      v10 = objc_opt_self();
      v16[4] = sub_1EEBE0;
      v16[5] = v9;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_23F0CC;
      v16[3] = &unk_891560;
      v11 = _Block_copy(v16);

      [v10 animateWithDuration:4 delay:v11 options:0 animations:0.3 completion:0.0];

      _Block_release(v11);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);
        v14 = Strong;

        [v13 setAlpha:v7];
        v15 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton];
        [v15 setAlpha:v7];
      }
    }
  }
}

void sub_42769C(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView) setAlpha:a2];
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_closeButton] setAlpha:a2];
  }
}

id sub_427730(void *a1)
{
  v2 = v1;
  sub_4278C4(a1);
  sub_427B84(a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (v5)
  {
    v6 = -*&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_defaultPageMargin];
  }

  else
  {
    v6 = 0.0;
  }

  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v6}];
  sub_4280EC();
  sub_427C9C();
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator])
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v8 = [Strong traitCollection];

      if (v8)
      {
        v9 = v8;
        if (sub_7699D0())
        {
          LODWORD(v8) = sub_769A00();
        }

        else
        {
          LODWORD(v8) = 0;
        }

        if (!a1)
        {
LABEL_18:
          if ((v8 & 1) == 0)
          {
LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          sub_3CAE9C(0);
          goto LABEL_20;
        }

LABEL_11:
        v10 = a1;
        if (sub_7699D0())
        {
          v11 = sub_769A00();

          if (((v8 ^ v11) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if ((v8 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_21:

  return [v2 setNeedsLayout];
}

void sub_4278C4(void *a1)
{
  v2 = v1;
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 horizontalSizeClass];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (!a1 || v9 != v11)
  {
    sub_426EA4();
    v12 = [v2 traitCollection];
    sub_7699E0();

    v13 = enum case for CornerStyle.continuous(_:);
    v14 = *(v5 + 104);
    v14(v8, enum case for CornerStyle.continuous(_:), v4);
    sub_75CCD0();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v14(v8, v13, v4);
    sub_758E70();
    v15(v8, v4);
    v14(v8, v13, v4);
    sub_75CCD0();
    v15(v8, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong _setCornerRadius:26.0];

    v17 = [v2 traitCollection];
    v18 = sub_7699E0();

    if (v18)
    {
      sub_426F70();
    }

    else
    {
      v19 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView];
      if (v19)
      {
        [v19 setHidden:1];
      }
    }

    [v2 setNeedsLayout];
  }
}

void sub_427B84(id a1)
{
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode] == 1)
    {
      v6 = [v1 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v8 = v7 != &dword_0 + 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView];

    [v9 setHidden:v8];
  }
}

void sub_427C9C()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v43 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView);
  v8 = v43;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v48 = v3 + 16;
  v10(v7, v0 + v9, v2);
  v11 = sub_75CA20();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v8 setOverrideUserInterfaceStyle:v11];
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView);
  v44 = v9;
  v45 = v1;
  v14 = v7;
  v42 = v7;
  v15 = v7;
  v16 = v2;
  v10(v15, v1 + v9, v2);
  v41 = v10;
  v17 = sub_75CA20();
  v18 = v14;
  v19 = v16;
  v46 = v3 + 8;
  v12(v18, v16);
  v47 = v12;
  v20 = v13;
  [v13 setOverrideUserInterfaceStyle:v17];
  v21 = v40;
  v22 = v19;
  v10(v40, v1 + v9, v19);
  sub_75CA20();
  v12(v21, v19);
  sub_769240();
  v23 = sub_769210();

  v49[3] = sub_BE70(0, &qword_954EE0, NSString_ptr);
  v49[0] = v23;
  v24 = v23;
  sub_61D394(v49);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
  v26 = [*&v20[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView] isHidden];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v26)
  {
    v27 = v25;
  }

  v28 = [*(*&v20[v27] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v28 setCompositingFilter:v24];

  v29 = [*&v20[v25] isHidden];
  v30 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v29)
  {
    v30 = v25;
  }

  v31 = [*(*(*&v20[v30] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel) layer];
  [v31 setCompositingFilter:v24];

  v32 = [*&v20[v25] isHidden];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView;
  if (!v32)
  {
    v33 = v25;
  }

  v34 = *(*&v20[v33] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v35 = v42;
  v41(v42, v45 + v44, v22);
  v36 = v34;
  v37 = sub_75CA20();
  v47(v35, v22);
  if (v37 == 1)
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v38 = sub_76A0F0();
  }

  else
  {
    v38 = [objc_opt_self() whiteColor];
  }

  v39 = v38;
  [v36 setTintColor:v38];
}

uint64_t sub_4280EC()
{
  v1 = sub_75CF00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v18 - v7;
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView];
  v10 = [v0 traitCollection];
  if (sub_769A00())
  {
    if (qword_93D0C8 != -1)
    {
      swift_once();
    }

    v11 = qword_954DE0;
  }

  else
  {
    if (qword_93D0C0 != -1)
    {
      swift_once();
    }

    v11 = qword_954DC8;
  }

  v12 = sub_BE38(v1, v11);
  v13 = *(v2 + 16);
  v13(v8, v12, v1);

  v14 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v13(v4, v8, v1);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 24))(&v14[v15], v4, v1);
  swift_endAccess();
  [v14 setNeedsLayout];
  v16 = *(v2 + 8);
  v16(v4, v1);
  [v9 setNeedsLayout];
  return (v16)(v8, v1);
}

uint64_t sub_428384(uint64_t a1, id a2)
{
  [a2 locationInView:v2];
  v4 = v3;
  v6 = v5;
  v7 = [v2 hitTest:0 withEvent:?];
  sub_BE70(0, &qword_94AB00, NSObject_ptr);
  if ((sub_76A1C0() & 1) == 0)
  {

    return 1;
  }

  [v2 bounds];
  v12.x = v4;
  v12.y = v6;
  if (!CGRectContainsPoint(v13, v12))
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    return 0;
  }

  sub_BE70(0, &qword_93E550, UIView_ptr);
  v7 = v7;
  v8 = v2;
  v9 = sub_76A1C0();

  if ((v9 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return 0;
}

id sub_42867C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageView(uint64_t a1)
{
  result = qword_954EA8;
  if (!qword_954EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_428864(uint64_t a1)
{
  result = sub_75CA40();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_42895C()
{
  result = qword_954EB8;
  if (!qword_954EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_954EB8);
  }

  return result;
}

void sub_4289D0(void *a1)
{
  v2 = v1;
  sub_1EE378();
  swift_unknownObjectWeakAssign();
  sub_1EC0F4();
  v3 = [v1 traitCollection];
  v4 = sub_7699E0();

  if (v4)
  {
    sub_426F70();
  }

  [v2 setNeedsLayout];
}

uint64_t (*sub_428A88(uint64_t **a1))()
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
  v2[4] = sub_4254C4(v2);
  return sub_21028;
}

CGFloat sub_428B38()
{
  v1 = *v0;
  [*v0 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

uint64_t sub_428B94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_428BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_428C54(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_428CF0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

uint64_t sub_428E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_428ED0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_428F28()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_428F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_428F78()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_displayModeTransitionCoordinator) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageScrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_shadowView;
  sub_758E80();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView;
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView(0)) init];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView;
  v8 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView(0));
  *(v1 + v7) = sub_3D0DA8(0);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView;
  v10 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView(0));
  *(v1 + v9) = sub_6C5480(0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView(0);
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_borderView;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaReplicationView) = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_videoBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_isCollapsing) = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_75CA40();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_defaultPageMargin) = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_42921C(uint64_t a1, void *a2, uint64_t (*a3)(char *, char *, uint64_t), char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v249 = a4;
  v238 = a3;
  v237 = a2;
  v17 = sub_BD88(&qword_946D98, &qword_787F68);
  __chkstk_darwin(v17 - 8);
  v208 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v216 = &v201 - v20;
  v21 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v21 - 8);
  v226 = &v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v227 = &v201 - v24;
  v25 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v25 - 8);
  v225 = &v201 - v26;
  v27 = sub_75A6B0();
  __chkstk_darwin(v27 - 8);
  v214 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v213 = &v201 - v30;
  __chkstk_darwin(v31);
  v220 = &v201 - v32;
  __chkstk_darwin(v33);
  v219 = &v201 - v34;
  v224 = sub_75A6E0();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v212 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v218 = &v201 - v37;
  v229 = sub_75DC30();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v215 = &v201 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v241 = &v201 - v40;
  v207 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v236 = &v201 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v42 - 8);
  v209 = &v201 - v43;
  v222 = sub_766690();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v242 = &v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_75C9A0();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_75C930();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v205 = &v201 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v210 = (&v201 - v48);
  __chkstk_darwin(v49);
  v245 = &v201 - v50;
  __chkstk_darwin(v51);
  v217 = &v201 - v52;
  __chkstk_darwin(v53);
  v247 = &v201 - v54;
  v55 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v55 - 8);
  v211 = &v201 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v243 = &v201 - v58;
  __chkstk_darwin(v59);
  v250 = &v201 - v60;
  v61 = sub_760770();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v201 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v201 - v66;
  v68 = sub_BD88(&unk_93F620, &unk_77E220);
  *&v69 = __chkstk_darwin(v68 - 8).n128_u64[0];
  v71 = &v201 - v70;
  v72 = [v9 contentView];
  [v72 setLayoutMargins:{a6, a7, a8, a9}];

  v73 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView];
  *&v73[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v73 setNeedsLayout];
  v74 = sub_75C840();
  (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
  sub_223E1C(a1, v71, v249);
  sub_10A2C(v71, &unk_93F620, &unk_77E220);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v75 = sub_76A000();
  [v10 setBackgroundColor:v75];

  sub_75BCC0();
  (*(v62 + 13))(v64, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v61);
  sub_42D710(&qword_954EE8, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
  v252 = v67;
  v76 = sub_7691C0();
  v78 = (v62 + 8);
  v77 = *(v62 + 1);
  v251 = v61;
  (v77)(v64, v61);
  if (v76)
  {
    [*&v10[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots] setHidden:1];
    v62 = &unk_90D000;
LABEL_148:
    [v10 *(v62 + 463)];
    return (v77)(v252, v251);
  }

  v79 = sub_75BC70();
  if (v79 >> 62)
  {
    v76 = v79;
    v80 = sub_76A860();
    v79 = v76;
  }

  else
  {
    v80 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
  }

  v232 = v77;
  if (v80)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v76 = v79;
      v240 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_48;
      }

      v76 = v79;
      v240 = *(v79 + 32);
    }
  }

  else
  {

    v240 = 0;
  }

  v204 = v10;
  v67 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots];
  v231 = sub_75BCA0();
  v244 = sub_75BC80();
  v81 = sub_75BCF0();
  if (v81 >> 62)
  {
    v76 = v81;
    v82 = sub_76A860();
    v81 = v76;
  }

  else
  {
    v82 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = v240;
  if (v82)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v239 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_50;
      }

      v239 = *(v81 + 32);
    }
  }

  else
  {

    v239 = 0;
  }

  v83 = [v237 traitCollection];
  sub_42B534(v250);

  v77 = sub_75BCA0();
  v76 = sub_75BC80();
  v84 = sub_75BC70();
  if (v84 >> 62)
  {
    v88 = v84;
    v85 = sub_76A860();
    v84 = v88;
  }

  else
  {
    v85 = *(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8));
  }

  v230 = v62 + 8;
  if (v85)
  {
    if ((v84 & 0xC000000000000001) == 0)
    {
      if (!*(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_52;
      }

      v78 = *(v84 + 32);

      goto LABEL_25;
    }

LABEL_48:
    v78 = sub_76A770();
LABEL_25:

    goto LABEL_27;
  }

  v78 = 0;
LABEL_27:
  v86 = sub_75BCF0();
  if (v86 >> 62)
  {
    v89 = v86;
    v90 = sub_76A860();
    v86 = v89;
    if (v90)
    {
LABEL_29:
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
        {
          v87 = *(v86 + 32);

LABEL_32:

          goto LABEL_38;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_50:
      v87 = sub_76A770();
      goto LABEL_32;
    }
  }

  else if (*(&dword_10 + (v86 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_29;
  }

  v87 = 0;
LABEL_38:
  if ((sub_760760() & 1) == 0)
  {

    v94 = v246;
    v95 = v247;
    v96 = v248;
    (*(v246 + 104))(v247, enum case for LockupMediaLayout.DisplayType.none(_:), v248);
    goto LABEL_76;
  }

  if (v76 | v77)
  {
    v97 = v217;
    sub_7666A0();

    v94 = v246;
    v96 = v248;
    (*(v246 + 104))(v97, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v248);
    v95 = v247;
    (*(v94 + 32))(v247, v97, v96);
    goto LABEL_76;
  }

  v92 = sub_55BABC(v78, v87, 0, 1, v91);
  v77 = v92;
  v10 = (v92 >> 62);
  if (v92 >> 62)
  {
LABEL_53:
    v203 = sub_76A860();
    if (v78)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v203 = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8));
  if (v78)
  {
LABEL_42:
    v93 = sub_759690();
    goto LABEL_55;
  }

LABEL_54:
  v93 = 0;
LABEL_55:
  v201 = sub_55BE04(v93);

  v238 = v78;
  if (v78)
  {
    v98 = sub_759690();
  }

  else
  {
    v98 = 0;
  }

  v96 = v248;
  v99 = v209;
  v100 = v251;
  (*(v62 + 2))(v209, v252, v251);
  v101.n128_f64[0] = (*(v62 + 7))(v99, 0, 1, v100);
  v202 = sub_55C32C(v98, v99, v101);

  sub_10A2C(v99, &unk_94DF00, &unk_792100);
  if (v10)
  {
    v102 = sub_76A860();
  }

  else
  {
    v102 = *(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8));
  }

  v103 = v210;
  v104 = v238;
  if (!v102)
  {

LABEL_68:
    v107 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v108 = v246;
    v109 = *(v246 + 104);
    v237 = (v246 + 104);
    v210 = v109;
    (v109)(v103, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v96);
    v110 = sub_75C920();
    v111 = *(v108 + 8);
    (v111)(v103, v96);
    v112 = v203;
    if (((v203 >= v110) & v202) != 0 || (v107 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v209 = v111, v113 = v248, (v210)(v103, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v248), v114 = sub_75C920(), (v209)(v103, v113), ((v112 >= v114) & v201) != 0) || (v107 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v115 = v248, (v210)(v103, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v248), v116 = sub_75C920(), v117 = v115, v118 = v209, (v209)(v103, v117), v112 >= v116))
    {

      v106 = v217;
      v122 = v217;
      v123 = v107;
    }

    else
    {
      v202 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v119 = v118;
      v120 = v248;
      v210(v103);
      v121 = sub_75C920();

      (v119)(v103, v120);
      if (v112 == v121)
      {
        v106 = v217;
        v122 = v217;
        v123 = v202;
      }

      else
      {
        v123 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v106 = v217;
        v122 = v217;
      }
    }

    v96 = v248;
    (v210)(v122, v123, v248);
    v94 = v246;
    goto LABEL_75;
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_151;
    }
  }

  v105 = sub_765150();

  if ((v105 & 1) == 0)
  {
    goto LABEL_68;
  }

  v94 = v246;
  v106 = v217;
  (*(v246 + 104))(v217, enum case for LockupMediaLayout.DisplayType.landscape(_:), v96);
LABEL_75:
  v95 = v247;
  (*(v94 + 32))(v247, v106, v96);
  v10 = v240;
LABEL_76:
  v254[3] = &type metadata for CGFloat;
  v254[4] = &protocol witness table for CGFloat;
  v254[0] = 0x4021000000000000;
  sub_134D8(v254, v253);
  v104 = *(v94 + 16);
  v104(v245, v95, v96);
  if (v244 | v231)
  {
    goto LABEL_87;
  }

  result = sub_55BABC(v10, v239, 0, 1, v124);
  if (result >> 62)
  {
    v126 = result;
    v127 = sub_76A860();
    result = v126;
    if (v127)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_86:

LABEL_87:
    sub_7666A0();
    goto LABEL_88;
  }

LABEL_79:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_132;
    }
  }

  sub_765260();
  sub_7666A0();

LABEL_88:
  sub_1ED18(v250, v243, &unk_948720, &unk_784970);
  v128 = v233;
  sub_75C970();
  sub_BEB8(v254);
  v129 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v130 = v234;
  v131 = &v67[v129];
  v132 = v235;
  (*(v234 + 24))(v131, v128, v235);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v130 + 8))(v128, v132);
  if (v10)
  {
    v133 = sub_759690();
  }

  else
  {
    v133 = 0;
  }

  sub_7596B0();
  v134 = v236;
  sub_6C14C(v133, v236);

  v135 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_163BAC(v134, &v67[v135]);
  swift_endAccess();
  sub_559BA0();
  sub_161D14(v134);
  if (v10)
  {
    v10 = sub_759690();
  }

  *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = v10;

  sub_559DA4();

  v136 = v251;
  (*(v62 + 2))(v64, v252, v251);
  v137 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v62 + 3))(&v67[v137], v64, v136);
  swift_endAccess();
  v62 = &unk_90D000;
  [v67 setNeedsLayout];
  v232(v64, v136);
  if (v244)
  {
    (*(v223 + 104))(v218, enum case for VideoFillMode.scaleAspectFill(_:), v224);

    sub_764BC0();
    sub_765260();
    v138 = v243;
    sub_7666A0();

    (*(v221 + 56))(v138, 0, 1, v222);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v139 = v225;
    sub_764BD0();
    v140 = sub_7570A0();
    (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
    v141 = v227;
    sub_764B90();
    v142 = v226;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_42D710(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v143 = sub_75C340();
    sub_10A2C(v142, &unk_948710, &qword_77FF90);
    sub_10A2C(v141, &unk_948710, &qword_77FF90);
    sub_10A2C(v139, &unk_93FD30, qword_77F240);
    sub_10A2C(v254, &unk_9443A0, &unk_77E240);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v145 = Strong;
      v146 = [Strong superview];
      if (v146)
      {
        v147 = v146;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v148 = v67;
        v149 = sub_76A1C0();

        if ((v149 & 1) == 0)
        {
          goto LABEL_108;
        }

        v150 = swift_unknownObjectWeakLoadStrong();
        if (!v150)
        {
          goto LABEL_108;
        }

        v145 = v150;
        [v150 removeFromSuperview];
      }
    }

LABEL_108:
    swift_unknownObjectWeakAssign();
    v159 = swift_unknownObjectWeakLoadStrong();
    v62 = &unk_90D000;
    if (v159)
    {
      v160 = v159;
      [v67 addSubview:v159];
    }

    sub_55A7A8();
    [v67 setNeedsLayout];

    v161 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v162 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v154 = v246;
    if (v162)
    {
      [v162 removeFromSuperview];
      v163 = *&v67[v161];
    }

    else
    {
      v163 = 0;
    }

    v164 = v247;
    *&v67[v161] = 0;

    [v67 setNeedsLayout];

    (*(v228 + 8))(v241, v229);
LABEL_147:
    [v67 *(v62 + 463)];

    (*(v154 + 8))(v164, v248);
    sub_10A2C(v250, &unk_948720, &unk_784970);
    [v67 setHidden:0];

    v10 = v204;
    v77 = v232;
    goto LABEL_148;
  }

  if (!v239)
  {
LABEL_134:
    v189 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v190 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    if (v190)
    {
      [v190 removeFromSuperview];
      v191 = *&v67[v189];
    }

    else
    {
      v191 = 0;
    }

    v154 = v246;
    v164 = v247;
    *&v67[v189] = 0;

    [v67 *(v62 + 463)];
    v192 = swift_unknownObjectWeakLoadStrong();
    if (!v192)
    {
      goto LABEL_144;
    }

    v193 = v192;
    sub_42D710(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v194 = [v193 superview];
    if (v194)
    {
      v195 = v194;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v196 = v67;
      v197 = sub_76A1C0();

      v164 = v247;
      if ((v197 & 1) == 0)
      {
        goto LABEL_144;
      }

      v198 = swift_unknownObjectWeakLoadStrong();
      if (!v198)
      {
        goto LABEL_144;
      }

      v193 = v198;
      [v198 removeFromSuperview];
    }

    else
    {
      v164 = v247;
    }

LABEL_144:
    swift_unknownObjectWeakAssign();
    v199 = swift_unknownObjectWeakLoadStrong();
    if (v199)
    {
      v200 = v199;
      [v67 addSubview:v199];
    }

    sub_55A7A8();
    [v67 *(v62 + 463)];
    goto LABEL_147;
  }

  result = sub_765750();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_102;
    }

    goto LABEL_133;
  }

LABEL_132:
  v187 = result;
  v188 = sub_76A860();
  result = v187;
  if (!v188)
  {
LABEL_133:

    goto LABEL_134;
  }

LABEL_102:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_151:
    sub_76A770();
    v151 = v208;
LABEL_105:

    v152 = v205;
    v153 = v248;
    v104(v205, v247, v248);
    v154 = v246;
    v155 = (*(v246 + 88))(v152, v153);
    v156 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v154 + 8))(v152, v153);
    if (v155 == v156)
    {
      v157 = 1;
      v158 = v216;
    }

    else
    {
      v165 = sub_765740();
      v158 = v216;
      sub_6C14C(v165, v216);

      v157 = 0;
    }

    v166 = v206;
    v167 = v207;
    (*(v206 + 56))(v158, v157, 1, v207);
    (*(v223 + 104))(v212, enum case for VideoFillMode.scaleAspectFill(_:), v224);
    sub_764BC0();
    sub_765260();
    v168 = v211;
    sub_7666A0();

    (*(v221 + 56))(v168, 0, 1, v222);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_1ED18(v158, v151, &qword_946D98, &qword_787F68);
    if ((*(v166 + 48))(v151, 1, v167) == 1)
    {
      sub_10A2C(v151, &qword_946D98, &qword_787F68);
    }

    else
    {
      sub_161D14(v151);
    }

    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v169 = v225;
    sub_764BD0();
    v170 = sub_7570A0();
    (*(*(v170 - 8) + 56))(v169, 0, 1, v170);
    v171 = v227;
    sub_764B90();
    v172 = v226;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_42D710(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v173 = sub_75C340();
    sub_10A2C(v172, &unk_948710, &qword_77FF90);
    sub_10A2C(v171, &unk_948710, &qword_77FF90);
    sub_10A2C(v169, &unk_93FD30, qword_77F240);
    sub_10A2C(v254, &unk_9443A0, &unk_77E240);
    v174 = swift_unknownObjectWeakLoadStrong();
    if (!v174)
    {
      goto LABEL_124;
    }

    v175 = v174;
    v176 = [v174 superview];
    if (v176)
    {
      v177 = v176;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v178 = v67;
      v179 = sub_76A1C0();

      v154 = v246;
      if ((v179 & 1) == 0)
      {
        goto LABEL_124;
      }

      v180 = swift_unknownObjectWeakLoadStrong();
      if (!v180)
      {
        goto LABEL_124;
      }

      v175 = v180;
      [v180 removeFromSuperview];
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v181 = swift_unknownObjectWeakLoadStrong();
    if (v181)
    {
      v182 = v181;
      [v67 addSubview:v181];
    }

    sub_55A7A8();
    v62 = &unk_90D000;
    [v67 setNeedsLayout];

    v183 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    v184 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
    v185 = v216;
    if (v184)
    {
      [v184 removeFromSuperview];
      v186 = *&v67[v183];
    }

    else
    {
      v186 = 0;
    }

    *&v67[v183] = 0;

    [v67 setNeedsLayout];

    (*(v228 + 8))(v215, v229);
    sub_10A2C(v185, &qword_946D98, &qword_787F68);
    v164 = v247;
    goto LABEL_147;
  }

  v151 = v208;
  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_105;
  }

  __break(1u);
  return result;
}

uint64_t sub_42B534@<X0>(uint64_t a2@<X8>)
{
  if (sub_7699D0())
  {
    v4 = sub_766690();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a2;
    v8 = 1;
    goto LABEL_19;
  }

  v9 = sub_769240();
  v11 = v10;
  if (v9 == sub_769240() && v11 == v12)
  {

    goto LABEL_15;
  }

  v14 = sub_76A950();

  if (v14)
  {
LABEL_15:
    if (qword_93D0D0 != -1)
    {
      swift_once();
    }

    v22 = sub_766690();
    v23 = v22;
    v24 = qword_99DA78;
    goto LABEL_18;
  }

  v15 = sub_769240();
  v17 = v16;
  if (v15 == sub_769240() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_76A950();

    if ((v20 & 1) == 0)
    {
      sub_766670();
      v21 = sub_766690();
      v5 = *(*(v21 - 8) + 56);
      v6 = v21;
      v7 = a2;
      v8 = 0;
      goto LABEL_19;
    }
  }

  if (qword_93D0D8 != -1)
  {
    swift_once();
  }

  v22 = sub_766690();
  v23 = v22;
  v24 = qword_99DA90;
LABEL_18:
  v25 = sub_BE38(v22, v24);
  v27 = *(v23 - 8);
  (*(v27 + 16))(a2, v25, v23);
  v5 = *(v27 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v23;
LABEL_19:

  return v5(v7, v8, 1, v6);
}

void sub_42B7D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v10 = sub_760770();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v75 - v15);
  v17 = sub_7652D0();
  __chkstk_darwin(v17 - 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = a4;
    v79 = v13;
    v83 = a1;
    v19 = *(a2 + 16);
    v20 = *(a2 + 24);
    v84 = v5;
    v21 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots);
    v22 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
    swift_beginAccess();
    v81 = v21;
    v23 = *(v21 + v22);
    if (v23 >> 62)
    {
      v24 = sub_76A860();
    }

    else
    {
      v24 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
    }

    v82 = v16;
    v25 = v84;
    if (v24)
    {
      if (v24 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v26 = a3;
      v80 = v11;
      v76 = v10;

      v27 = 0;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v28 = sub_76A770();
        }

        else
        {
          v28 = *(v23 + v27 + 4);
        }

        v29 = v28;
        ++v27;
        v85 = v28;
        type metadata accessor for BorderedScreenshotView(0);
        sub_42D710(&qword_946D80, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
        v30 = v29;
        sub_76A6E0();
        sub_75A0B0();
        sub_1EB60(v86);
        v31 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
        v87.value.super.isa = 0;
        v87.is_nil = 0;
        sub_7591D0(v87, v32);
      }

      while (v24 != v27);

      v10 = v76;
      v11 = v80;
      a3 = v26;
      v16 = v82;
      v25 = v84;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      [*(Strong + qword_940590) setImage:0];
      v85 = v34;
      type metadata accessor for VideoView(0);
      sub_42D710(&qword_952550, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
      v35 = v34;
      sub_76A6E0();
      sub_75A0B0();
      v25 = v84;

      sub_1EB60(v86);
    }

    v25 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView);
    a2 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v36 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    v88.value.super.isa = 0;
    v88.is_nil = 0;
    sub_7591D0(v88, v37);

    v38 = *(v25 + a2);
    v39 = sub_759210();
    sub_42D710(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v40 = v38;
    v84 = a3;
    sub_75A0C0();

    if (!sub_764EE0())
    {
LABEL_19:
      sub_75BCC0();
      v44 = v79;
      (*(v11 + 104))(v79, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v10);
      sub_42D710(&qword_954EE8, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
      v45 = sub_7691C0();
      v48 = *(v11 + 8);
      v46 = v11 + 8;
      v47 = v48;
      v48(v44, v10);
      if (v45)
      {
LABEL_46:
        v47(v16, v10);
        return;
      }

      v80 = v46;
      v49 = sub_764EF0();
      v51 = v50;
      v52 = sub_764F70();
      v54 = v53;
      v55 = sub_764E90();
      if (v55)
      {
        v56 = sub_75E5C0();

        if (v56)
        {
          v57 = sub_765720();
          v55 = v58;
        }

        else
        {
          v57 = 0;
          v55 = 0;
        }
      }

      else
      {
        v57 = 0;
      }

      v59 = [v78 traitCollection];
      v60 = sub_24AE8C(v49, v51, v52, v54, v57, v55, v59, v19, v20);
      v62 = v61;

      v63 = sub_75BCA0();
      v64 = sub_75BC80();
      v65 = sub_75BC70();
      if (v65 >> 62)
      {
        v71 = v65;
        v66 = sub_76A860();
        v65 = v71;
      }

      else
      {
        v66 = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
      }

      v67 = v84;
      v16 = v82;
      if (v66)
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v68 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_51;
          }

          v68 = *(v65 + 32);
        }
      }

      else
      {

        v68 = 0;
      }

      v69 = sub_75BCF0();
      if (v69 >> 62)
      {
        v72 = v69;
        v73 = sub_76A860();
        v69 = v72;
        if (v73)
        {
          goto LABEL_35;
        }
      }

      else if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_35:
        if ((v69 & 0xC000000000000001) != 0)
        {
          v70 = sub_76A770();
          goto LABEL_38;
        }

        if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)))
        {
          v70 = *(v69 + 32);

LABEL_38:

LABEL_45:
          v74 = [v78 traitCollection];
          sub_1600F8(v63, v64, v68, v70, v74, v67, v16, v60, v62);

          goto LABEL_46;
        }

LABEL_51:
        __break(1u);
        return;
      }

      v70 = 0;
      goto LABEL_45;
    }

    v80 = v39;
    v41 = qword_93C668;
    v23 = *(v25 + a2);
    if (v41 == -1)
    {
LABEL_16:
      v42 = sub_75CF00();
      sub_BE38(v42, qword_99B898);
      sub_75CDD0();
      [v23 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v23 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      v43 = *(v25 + a2);
      sub_75A050();

      v16 = v82;
      goto LABEL_19;
    }

LABEL_41:
    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_42C0C4(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v150 = a11;
  v151 = a3;
  v183 = a2;
  v12 = sub_BD88(&unk_94DF00, &unk_792100);
  __chkstk_darwin(v12 - 8);
  v146 = &v145 - v13;
  v148 = sub_75C930();
  v155 = *(v148 - 8);
  __chkstk_darwin(v148);
  v15 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v145 - v17;
  __chkstk_darwin(v19);
  v149 = &v145 - v20;
  v21 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v21 - 8);
  v156 = &v145 - v22;
  v23 = sub_76A920();
  v153 = *(v23 - 8);
  v154 = v23;
  __chkstk_darwin(v23);
  v152 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_760770();
  v179 = *(v25 - 8);
  v180 = v25;
  __chkstk_darwin(v25);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_760840();
  v177 = *(v28 - 8);
  v178 = v28;
  __chkstk_darwin(v28);
  v176 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_762D10();
  v173 = *(v30 - 8);
  v174 = v30;
  __chkstk_darwin(v30);
  v172 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_75D850();
  v188 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v186 = &v145 - v36;
  v189 = sub_760820();
  v187 = *(v189 - 1);
  __chkstk_darwin(v189);
  v175 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v145 - v39;
  sub_769DA0();
  v42 = v41;
  v44 = v43;
  v45 = sub_764EF0();
  v162 = v46;
  v163 = v45;
  v47 = sub_764F70();
  v164 = v48;
  v165 = v47;
  if (sub_764E90() && (v49 = sub_75E5C0(), , v49))
  {
    v50 = sub_765720();
    v169 = v51;
    v170 = v50;
  }

  else
  {
    v169 = 0;
    v170 = 0;
  }

  sub_75BCD0();
  v52 = [v183 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v53 = v189;
  v54 = sub_BE38(v189, qword_99B150);
  v166 = *(v187 + 16);
  v167 = v187 + 16;
  v166(v40, v54, v53);
  v55 = sub_769A00();
  v181 = v27;
  v182 = a1;
  v147 = v18;
  v145 = v15;
  if (v55)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v56 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v56 = qword_946938;
  }

  v57 = sub_BE38(v32, v56);
  v58 = v188;
  (*(v188 + 16))(v34, v57, v32);
  (*(v58 + 32))();
  v59 = [v52 preferredContentSizeCategory];
  sub_769B20();
  v171 = v52;

  sub_75D800();
  sub_75D830();
  v185 = v40;
  sub_760810();
  sub_760800();
  v60 = sub_7670D0();
  swift_allocObject();
  v161 = sub_7670B0();
  v61 = objc_opt_self();
  v159 = v61;
  v62 = [v61 preferredFontForTextStyle:UIFontTextStyleBody];
  v63 = sub_7653B0();
  v226[3] = v63;
  v184 = sub_42D710(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v226[4] = v184;
  v64 = sub_B1B4(v226);
  v65 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = *(v63 - 8);
  v168 = v32;
  v160 = *(v66 + 104);
  v67 = v66 + 104;
  v157 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v160(v64, enum case for Feature.measurement_with_labelplaceholder(_:), v63);
  v158 = v67;
  sub_765C30();
  sub_BEB8(v226);
  v68 = v172;
  sub_762D00();
  sub_762CE0();
  v69 = v174;
  v173 = *(v173 + 8);
  (v173)(v68, v174);
  v70 = [v61 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v225[3] = v63;
  v225[4] = v184;
  v71 = sub_B1B4(v225);
  v72 = v65;
  v73 = v160;
  v160(v71, v72, v63);
  sub_765C30();
  sub_BEB8(v225);
  sub_762D00();
  sub_762CE0();
  v74 = v173;
  (v173)(v68, v69);
  v75 = [v159 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v224[3] = v63;
  v224[4] = v184;
  v76 = sub_B1B4(v224);
  v73(v76, v157, v63);
  sub_765C30();
  sub_BEB8(v224);
  sub_762D00();
  sub_762CE0();
  v74(v68, v69);
  sub_246DC();
  swift_allocObject();
  v77 = sub_7670B0();

  sub_246DC();
  swift_allocObject();
  v78 = sub_7670B0();
  v166(v175, v185, v189);
  v223 = &protocol witness table for LayoutViewPlaceholder;
  v222 = v60;
  v79 = v161;
  v221 = v161;
  v220 = 0;
  *&v218[40] = 0u;
  v219 = 0u;
  sub_134D8(v226, v218);
  sub_134D8(v225, &v217);
  v216 = 0;
  v214 = 0u;
  v215 = 0u;
  v213 = 0;
  v211 = 0u;
  v212 = 0u;

  v80 = sub_7670C0();
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v60;
  v208 = v80;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v204 = 0;
  v202 = 0u;
  v203 = 0u;
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v198 = 0;
  v197 = 0u;
  *&v196[40] = 0u;
  sub_134D8(v224, v196);
  v194 = v60;
  v195 = &protocol witness table for LayoutViewPlaceholder;
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v193 = v77;
  v191 = v60;
  v190 = v78;
  v81 = v176;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_77D9F0;
  v83 = v171;
  *(v82 + 32) = v171;
  v84 = v83;
  v85 = sub_7671E0();
  sub_42D710(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v86 = v178;
  sub_7665A0();

  (*(v177 + 8))(v81, v86);
  sub_BEB8(v224);
  sub_BEB8(v225);
  sub_BEB8(v226);
  (*(v188 + 8))(v186, v168);
  (*(v187 + 8))(v185, v189);
  v88 = v181;
  v87 = v182;
  sub_75BCC0();
  v89 = sub_760760();
  if ((v89 & 1) == 0 || (sub_65CB64(v89) & 1) == 0)
  {
    return (*(v179 + 8))(v88, v180);
  }

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v90 = sub_766CA0();
  sub_BE38(v90, qword_99FDE8);
  v91 = v152;
  sub_766470();
  v92 = v183;
  sub_766700();
  (*(v153 + 8))(v91, v154);
  v93 = sub_75BCA0();
  v94 = sub_75BC80();
  v95 = sub_75BC70();
  if (v95 >> 62)
  {
    v97 = v95;
    v98 = sub_76A860();
    v95 = v97;
    if (v98)
    {
      goto LABEL_20;
    }

LABEL_26:

    v79 = 0;
    goto LABEL_27;
  }

  if (!*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v95 & 0xC000000000000001) != 0)
  {
    v79 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_61;
    }

    v79 = *(v95 + 32);
  }

LABEL_27:
  v99 = sub_75BCF0();
  if (v99 >> 62)
  {
    v101 = v99;
    v102 = sub_76A860();
    v99 = v101;
    if (v102)
    {
      goto LABEL_29;
    }

LABEL_34:

    v189 = 0;
    goto LABEL_35;
  }

  if (!*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v99 & 0xC000000000000001) != 0)
  {
    v100 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v189 = v100;

LABEL_35:
  v103 = [v92 traitCollection];
  sub_42B534(v156);

  v77 = sub_75BCA0();
  v78 = sub_75BC80();
  v104 = sub_75BC70();
  if (v104 >> 62)
  {
    v105 = v104;
    v106 = sub_76A860();
    v104 = v105;
    if (v106)
    {
LABEL_37:
      if ((v104 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_65;
        }

        v87 = *(v104 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v87 = sub_76A770();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_37;
  }

  v87 = 0;
LABEL_43:
  v107 = sub_75BCF0();
  if (v107 >> 62)
  {
    v110 = v107;
    v111 = sub_76A860();
    v107 = v110;
    v188 = v79;
    if (v111)
    {
LABEL_45:
      if ((v107 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
        {
          v109 = *(v107 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v185 = sub_76A860();
        if (v87)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v109 = sub_76A770();
      goto LABEL_48;
    }
  }

  else
  {
    v108 = *(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8));
    v188 = v79;
    if (v108)
    {
      goto LABEL_45;
    }
  }

  v109 = 0;
LABEL_51:
  v112 = sub_760760();
  v187 = v94;
  if ((v112 & 1) == 0)
  {

    v116 = v155;
    v118 = v148;
    v117 = v149;
    (*(v155 + 104))(v149, enum case for LockupMediaLayout.DisplayType.none(_:), v148);
LABEL_88:
    v141 = v189;
    type metadata accessor for LockupMediaView(0);
    v142 = v156;
    v143 = v92;
    v144 = v181;
    sub_161888(v93, v187, v188, v141, v156, v117, v143, v181, v42, v44);

    (*(v116 + 8))(v117, v118);
    sub_10A2C(v142, &unk_948720, &unk_784970);
    return (*(v179 + 8))(v144, v180);
  }

  if (v78 | v77)
  {
    v119 = v147;
    sub_7666A0();

    v116 = v155;
    v118 = v148;
    (*(v155 + 104))(v119, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v148);
    v117 = v149;
    (*(v116 + 32))(v149, v119, v118);
    goto LABEL_88;
  }

  v114 = sub_55BABC(v87, v109, 0, 1, v113);
  v78 = v114;
  v94 = v114 >> 62;
  if (v114 >> 62)
  {
    goto LABEL_66;
  }

  v185 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
  if (v87)
  {
LABEL_55:
    v115 = sub_759690();
    goto LABEL_68;
  }

LABEL_67:
  v115 = 0;
LABEL_68:
  LODWORD(v182) = sub_55BE04(v115);

  v186 = v93;
  if (v87)
  {
    v120 = sub_759690();
  }

  else
  {
    v120 = 0;
  }

  v121 = v179;
  v122 = v146;
  v123 = v88;
  v124 = v180;
  (*(v179 + 16))(v146, v123, v180);
  v125.n128_f64[0] = (*(v121 + 56))(v122, 0, 1, v124);
  v126 = sub_55C32C(v120, v122, v125);

  sub_10A2C(v122, &unk_94DF00, &unk_792100);
  if (!v94)
  {
    result = *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8));
    v93 = v186;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_76A860();
  v93 = v186;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v78 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_76:

    v127 = sub_765150();

    if (v127)
    {

      v116 = v155;
      v128 = v147;
      v118 = v148;
      (*(v155 + 104))(v147, enum case for LockupMediaLayout.DisplayType.landscape(_:), v148);
      v117 = v149;
LABEL_87:
      (*(v116 + 32))(v117, v128, v118);
      goto LABEL_88;
    }

LABEL_80:
    v129 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v130 = v155;
    v131 = v145;
    v132 = v148;
    v184 = *(v155 + 104);
    v184(v145, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v148);
    v133 = sub_75C920();
    v178 = *(v130 + 8);
    v178(v131, v132);
    if (((v185 >= v133) & v126) != 0 || (v129 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v184(v131, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v132), v134 = sub_75C920(), v135 = v178, v178(v131, v132), ((v185 >= v134) & v182) != 0) || (v129 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v184(v131, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v132), v136 = sub_75C920(), v135(v131, v132), v185 >= v136))
    {

      v128 = v147;
      v184(v147, v129, v132);
      v92 = v183;
      v118 = v132;
    }

    else
    {
      v137 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v184(v131, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v132);
      v138 = sub_75C920();

      v135(v131, v132);
      v118 = v132;
      if (v185 == v138)
      {
        v128 = v147;
        v139 = v147;
        v140 = v137;
      }

      else
      {
        v140 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v128 = v147;
        v139 = v147;
      }

      v184(v139, v140, v132);
      v92 = v183;
    }

    v116 = v155;
    v117 = v149;
    v93 = v186;
    goto LABEL_87;
  }

  if (*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_42D710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_42D758()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_954EF0);
  sub_BE38(v4, qword_954EF0);
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F688);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

char *sub_42D92C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for InAppPurchaseShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView]];

  return v12;
}

id sub_42DC6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_954F30;
  if (!qword_954F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_42DD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_7591D0(v8, v4);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_7591D0(v9, v5);
  sub_759210();
  sub_14FA38();
  sub_75A0C0();
  sub_75A0C0();
}

void sub_42DE40(uint64_t a1, uint64_t a2)
{
  v5 = sub_757AA0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_134D8(a1, v22);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_757BE0();
  if (swift_dynamicCast())
  {
    v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView];
    v19 = v21;
    v13 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView);
    v17 = sub_757BC0();
    v20 = [v2 backgroundColor];
    sub_757B80();
    v18 = a2;
    v14 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v6 + 24))(&v13[v14], v11, v5);
    swift_endAccess();
    v15 = *(v6 + 16);
    v15(v8, &v13[v14], v5);
    sub_244454(v8);
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
    [v13 setBackgroundColor:v20];
    sub_6A9BFC(95.0, 95.0, v17, v13, v18);
    v15(v11, &v13[v14], v5);
    sub_244454(v11);
    v16(v11, v5);
    [v13 setNeedsLayout];
  }
}

uint64_t sub_42E108(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  (*(a2 + 80))(0, 0, v5, v6, a1, a2);
  swift_unknownObjectRelease();
  if ((*(a2 + 56))(a1, a2))
  {
    v7 = (v4)(a1, a2);
    v9 = v8;
    v10 = (*(a2 + 8))(a1, a2);
    sub_4AB724(v7, v9, v10, v11 & 1);

    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(0, 1, a1, a2);
  (*(a2 + 40))(0, 0, a1, a2);
  v12 = *(a2 + 64);

  return v12(0, a1, a2);
}

double sub_42E294(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a4;
  v45 = a3;
  v44 = a2;
  v10 = sub_765B10();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760260();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765AA0();
  v17 = sub_760220();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    v19 = sub_765B60();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_7688F0();
      v43 = v49[0];
      if (v49[0])
      {
        v41 = v10;
        (*(a6 + 8))(a5, a6);
        v22 = v21;
        sub_75C240();
        if ((v22 & 1) != 0 || (v23 = sub_75C230(), v23 != sub_75C230()))
        {
          v24 = sub_75C240();
          sub_4AB5A8(v24);
          v26 = v25;
          ObjectType = v20;
          v27 = a5;
          v29 = v28;
          v30 = *(a6 + 32);
          swift_unknownObjectRetain();
          v31 = v30(v27, a6);
          (*(a6 + 80))(v26, v29, v31, v32, v27, a6);
          swift_unknownObjectRelease();
          v33 = sub_75C240();
          (*(a6 + 16))(v33, 0, v27, a6);
          v34 = v29;
          a5 = v27;
          v20 = ObjectType;
          (*(a6 + 40))(v26, v34, a5, a6);
          swift_unknownObjectRelease();
        }

        v35 = *(a6 + 64);

        v35(v36, a5, a6);
        if ((*(a6 + 32))(a5, a6))
        {
          v38 = v37;
          ObjectType = swift_getObjectType();
          v49[3] = sub_75C250();
          v49[4] = sub_42E6EC();
          v49[0] = v20;

          sub_765B30();
          sub_75A110();
          sub_768900();
          v39 = v47;
          sub_768ED0();
          (*(v38 + 112))(v49, v39, v44, v12, v45, v48, ObjectType, v38);
          swift_unknownObjectRelease();

          (*(v46 + 8))(v12, v41);
          sub_BEB8(v49);
        }

        (*(a6 + 88))(a5, a6);
        [v7 setNeedsLayout];
      }
    }
  }

  return result;
}

unint64_t sub_42E6EC()
{
  result = qword_955A90;
  if (!qword_955A90)
  {
    sub_75C250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955A90);
  }

  return result;
}

void sub_42E744(void *a1)
{
  sub_43147C();
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

void sub_42E7F4()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_7591D0(v10, v3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setHidden:1];
  }

  [v1 setNeedsLayout];
  sub_43147C();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v1 contentView];
    [v8 addSubview:v7];

    [v1 setNeedsLayout];
  }
}

uint64_t sub_42E914()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_954F40);
  sub_BE38(v4, qword_954F40);
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F688);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

double sub_42EAE8()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_954F58);
  sub_BE38(v0, qword_954F58);
  sub_7666A0();
  return result;
}

char *sub_42EB3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_showcaseType;
  v14 = enum case for AppShowcaseType.large(_:);
  v15 = sub_7581D0();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView]];

  return v16;
}

void (*sub_42EE90(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_42EEE4;
}

void sub_42EEE4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_43147C();
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
    sub_43147C();
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

uint64_t sub_42F00C()
{
  v0 = sub_75DC30();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_766690();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  v12 = qword_99A200;
  v13 = Strong;
  swift_beginAccess();
  (*(v1 + 16))(v3, &v13[v12], v0);

  sub_75DB80();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_10A2C(v6, &unk_948720, &unk_784970);
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_7665F0();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

void sub_42F304()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v120 = sub_76A920();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_75DC30();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v5 - 8);
  v133 = &v118 - v6;
  v135 = sub_766690();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v124 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7581D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v122 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v118 - v12;
  __chkstk_darwin(v13);
  v132 = &v118 - v14;
  __chkstk_darwin(v15);
  v131 = &v118 - v16;
  __chkstk_darwin(v17);
  *&v140 = &v118 - v18;
  __chkstk_darwin(v19);
  v123 = &v118 - v20;
  __chkstk_darwin(v21);
  *&v128 = &v118 - v22;
  __chkstk_darwin(v23);
  v138 = &v118 - v24;
  __chkstk_darwin(v25);
  v27 = &v118 - v26;
  __chkstk_darwin(v28);
  v30 = &v118 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v118 - v33;
  v149.receiver = v1;
  v149.super_class = ObjectType;
  objc_msgSendSuper2(&v149, "layoutSubviews", v32);
  v35 = [v1 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v45 = v9[2];
  v142 = v44;
  v139 = *&v1;
  v143 = v45;
  v144 = v9 + 2;
  v45(v34, &v1[v44], v8);
  v46 = v9;
  v47 = v9[13];
  v141 = enum case for AppShowcaseType.large(_:);
  v47(v30);
  sub_431FC8(&qword_954FB8, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v145 == v147 && v146 == v148)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_76A950();
  }

  v49 = v9[1];
  v49(v30, v8);
  v137 = v9 + 1;
  v136 = v49;
  v49(v34, v8);

  if (v48)
  {
    v50 = v139;
    v130 = sub_42F00C();
  }

  else
  {
    v130 = 0;
    v50 = v139;
  }

  v51 = v138;
  v143(v27, *&v50 + v142, v8);
  sub_42F00C();
  v52 = v46;
  v53 = v46[4];
  v53(v51, v27, v8);
  v54 = v52[11];
  v138 = (v52 + 11);
  v55 = v54(v51, v8);
  v129 = v53;
  if (v55 == v141 || v55 == enum case for AppShowcaseType.small(_:))
  {
    v56 = v139;
  }

  else
  {
    v56 = v139;
    if (v55 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v136(v51, v8);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  Width = 0.0;
  v59 = &unk_90D000;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v60 = Strong;
  v61 = [Strong isHidden];

  v62 = v142;
  if (v61)
  {
    goto LABEL_27;
  }

  v63 = v128;
  v64 = v143;
  v143(*&v128, *&v56 + v142, v8);
  v65 = sub_42F00C();
  v150.origin.x = v37;
  v150.origin.y = v39;
  v150.size.width = v41;
  v150.size.height = v43;
  Width = CGRectGetWidth(v150);
  v66 = v123;
  v64(v123, *&v63, v8);
  v67 = v54(v66, v8);
  if (v67 != v141)
  {
    if (v67 != enum case for AppShowcaseType.small(_:) && v67 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v136(*&v128, v8);
      Width = 0.0;
      v128 = *&v123;
      v59 = &unk_90D000;
      goto LABEL_25;
    }

    v59 = &unk_90D000;
    if (qword_93D0F0 == -1)
    {
LABEL_24:
      sub_BE38(v135, qword_954F58);
      sub_766650();
      Width = v68;
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  if ((v65 & 1) == 0)
  {
    v59 = &unk_90D000;
    if (qword_93D0F0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v59 = &unk_90D000;
LABEL_25:
  v136(*&v128, v8);
LABEL_26:
  v62 = v142;
LABEL_27:
  v143(*&v140, *&v56 + v62, v8);
  v69 = swift_unknownObjectWeakLoadStrong();
  v128 = Width;
  if (v69)
  {
    v70 = v69;
    v71 = [v69 v59[473]];
  }

  else
  {
    v71 = 1;
  }

  v72 = v129;
  v73 = sub_42F00C();
  v151.origin.x = v37;
  v151.origin.y = v39;
  v151.size.width = v41;
  v151.size.height = v43;
  v74 = CGRectGetWidth(v151);
  v139 = v37;
  v75 = v141;
  if (v71 || (v73 & 1) != 0)
  {
    v136(*&v140, v8);
    v76 = v132;
    goto LABEL_46;
  }

  v77 = v121;
  v143(v121, *&v140, v8);
  v78 = v54(v77, v8);
  v76 = v132;
  if (v78 == v75)
  {
    if (qword_93D0F0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  if (v78 != enum case for AppShowcaseType.small(_:) && v78 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    v136(v77, v8);
    v79 = 0.0;
    goto LABEL_41;
  }

  if (qword_93D0F0 != -1)
  {
LABEL_70:
    swift_once();
  }

LABEL_40:
  sub_BE38(v135, qword_954F58);
  sub_766650();
  v79 = v80;
LABEL_41:
  v81 = v122;
  v72(v122, *&v140, v8);
  v82 = v54(v81, v8);
  v83 = 0.0;
  v84 = 25.0;
  if (v82 != v75)
  {
    v83 = 30.0;
    if (v82 != enum case for AppShowcaseType.small(_:))
    {
      v83 = 25.0;
      if (v82 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v136)(v81, v8, 25.0, 25.0);
        v84 = 0.0;
        v83 = 0.0;
      }
    }
  }

  v74 = v74 - (v79 + v84 + v83);
  v37 = v139;
LABEL_46:
  v85 = *(*&v56 + OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView);
  v152.origin.x = v37;
  v152.origin.y = v39;
  v152.size.width = v41;
  v152.size.height = v43;
  Height = CGRectGetHeight(v152);
  v87.n128_f64[0] = v74;
  v88 = sub_66744C(v87, Height);
  v90 = v89;
  v153.origin.x = v37;
  v153.origin.y = v39;
  v140 = v41;
  v153.size.width = v41;
  v153.size.height = v43;
  MinX = CGRectGetMinX(v153);
  v92 = v131;
  v143(v131, *&v56 + v142, v8);
  v72(v76, v92, v8);
  v93 = v54(v76, v8);
  v94 = 0.0;
  v95 = v43;
  v96 = v39;
  if (v93 == v75)
  {
    v97 = v135;
    v98 = v134;
    v99 = v130;
  }

  else
  {
    v94 = 30.0;
    v97 = v135;
    v98 = v134;
    v99 = v130;
    if (v93 != enum case for AppShowcaseType.small(_:))
    {
      v94 = 25.0;
      if (v93 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v136)(v76, v8, 25.0);
        v94 = 0.0;
      }
    }
  }

  v100 = MinX + v94;
  v101 = 20.0;
  if ((v99 & 1) == 0)
  {
    v154.origin.x = v139;
    v154.origin.y = v96;
    v154.size.width = v140;
    v154.size.height = v95;
    v101 = CGRectGetMidY(v154) + v90 * -0.5;
  }

  sub_769D20();
  [v85 setFrame:?];
  v102 = swift_unknownObjectWeakLoadStrong();
  if (!v102)
  {
    v109 = v133;
    (*(v98 + 56))(v133, 1, 1, v97);
    goto LABEL_59;
  }

  v103 = qword_99A200;
  v104 = v102;
  swift_beginAccess();
  v105 = v126;
  v106 = &v104[v103];
  v107 = v125;
  v108 = v127;
  (*(v126 + 16))(v125, v106, v127);

  v109 = v133;
  sub_75DB80();
  (*(v105 + 8))(v107, v108);
  if ((*(v98 + 48))(v109, 1, v97) == 1)
  {
LABEL_59:
    sub_10A2C(v109, &unk_948720, &unk_784970);
    goto LABEL_60;
  }

  v110 = v124;
  (*(v98 + 32))(v124, v109, v97);
  v111 = swift_unknownObjectWeakLoadStrong();
  if (v111 && (v112 = v111, v113 = [v111 isHidden], v112, v110 = v124, (v113 & 1) == 0))
  {
    sub_766660();
    if (v99)
    {
      v155.origin.x = v139;
      v155.origin.y = v96;
      v155.size.width = v140;
      v155.size.height = v95;
      CGRectGetMinX(v155);
      v156.origin.x = v100;
      v156.origin.y = v101;
      v156.size.width = v88;
      v156.size.height = v90;
      CGRectGetMaxY(v156);
      if (qword_93D0E8 != -1)
      {
        swift_once();
      }

      v116 = sub_766CA0();
      sub_BE38(v116, qword_954F40);
      v117 = v118;
      sub_766470();
      sub_766700();
      (*(v119 + 8))(v117, v120);
      (*(v98 + 8))(v124, v97);
    }

    else
    {
      v157.origin.x = v100;
      v157.origin.y = v101;
      v157.size.width = v88;
      v157.size.height = v90;
      CGRectGetMaxX(v157);
      v158.origin.x = v139;
      v158.origin.y = v96;
      v158.size.width = v140;
      v158.size.height = v95;
      CGRectGetHeight(v158);
      (*(v98 + 8))(v110, v97);
    }
  }

  else
  {
    (*(v98 + 8))(v110, v97);
  }

LABEL_60:
  v114 = swift_unknownObjectWeakLoadStrong();
  if (v114)
  {
    v115 = v114;
    sub_769D20();
    [v115 setFrame:?];
  }
}

uint64_t type metadata accessor for AppShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_954F98;
  if (!qword_954F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4305A4(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    sub_7581D0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_4306A8(uint64_t **a1))()
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
  v2[4] = sub_42EE90(v2);
  return sub_21028;
}

uint64_t sub_430718()
{
  ObjectType = swift_getObjectType();
  v1 = sub_431FC8(qword_954FC0, type metadata accessor for AppShowcaseCollectionViewCell, &unk_79D628);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_43078C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_431FC8(qword_954FC0, type metadata accessor for AppShowcaseCollectionViewCell, &unk_79D628);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_430818(uint64_t *a1))()
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
  sub_431FC8(qword_954FC0, type metadata accessor for AppShowcaseCollectionViewCell, &unk_79D628);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

void sub_4309AC(char *a1, void *a2, double a3, double a4)
{
  v82 = a2;
  v73 = sub_76A920();
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7581D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v68 - v12;
  __chkstk_darwin(v13);
  v70 = &v68 - v14;
  __chkstk_darwin(v15);
  v72 = &v68 - v16;
  __chkstk_darwin(v17);
  v81 = &v68 - v18;
  __chkstk_darwin(v19);
  v71 = &v68 - v20;
  __chkstk_darwin(v21);
  v84 = &v68 - v22;
  __chkstk_darwin(v23);
  v83 = &v68 - v24;
  __chkstk_darwin(v25);
  v27 = &v68 - v26;
  v28 = sub_766690();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v69 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v78 = &v68 - v32;
  __chkstk_darwin(v33);
  v35 = &v68 - v34;
  v36 = sub_758750();
  v79 = v29;
  v80 = v28;
  if (v36)
  {
    sub_764BC0();

    sub_765260();

    sub_7666A0();
    v37 = sub_7665F0();
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    v37 = 0;
  }

  if (!sub_758750())
  {
    v38 = v37;
    sub_758740();
    goto LABEL_8;
  }

  sub_758740();
  if (v37)
  {
    v38 = v37;
LABEL_8:
    v9[1](v27, v8);
    v39 = a3;
    goto LABEL_23;
  }

  v40 = v71;
  (v9[2])(v71, v27, v8);
  v41 = v9;
  v42 = v9[11];
  v43 = (v42)(v40, v8);
  v44 = enum case for AppShowcaseType.large(_:);
  if (v43 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_93D0F0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (v43 == enum case for AppShowcaseType.small(_:) || v43 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_93D0F0 == -1)
    {
LABEL_16:
      sub_BE38(v80, qword_954F58);
      sub_766650();
      v45 = v46;
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_16;
  }

  v41[1](v40, v8);
  v45 = 0.0;
LABEL_17:
  v47 = v81;
  (v41[4])(v81, v27, v8);
  v48 = (v42)(v47, v8);
  v49 = 0.0;
  v50 = 25.0;
  if (v48 == v44)
  {
    v9 = v41;
  }

  else
  {
    v49 = 30.0;
    v9 = v41;
    if (v48 != enum case for AppShowcaseType.small(_:))
    {
      v49 = 25.0;
      if (v48 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v41[1])(v47, v8, 25.0, 25.0);
        v50 = 0.0;
        v49 = 0.0;
      }
    }
  }

  v38 = v37;
  v39 = a3 - (v45 + v50 + v49);
LABEL_23:
  type metadata accessor for AppShowcaseLockupView(0);
  v51.n128_f64[0] = v39;
  sub_667848(a1, v82, v51, a4);
  v81 = a1;
  sub_758740();
  v52 = enum case for AppShowcaseType.large(_:);
  v53 = v9[13];
  (v53)(v84, enum case for AppShowcaseType.large(_:), v8);
  sub_431FC8(&qword_954FB8, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v87 != v85 || v88 != v86)
  {
    v38 &= sub_76A950();
  }

  v71 = v9;
  v54 = v9[1];
  v54(v84, v8);
  v54(v83, v8);

  if (v38)
  {
    if (qword_93D0E8 != -1)
    {
      swift_once();
    }

    v55 = sub_766CA0();
    sub_BE38(v55, qword_954F40);
    v56 = v75;
    sub_766470();
    sub_766700();
    (*(v77 + 8))(v56, v73);
    v57 = sub_758750();
    v59 = v79;
    v58 = v80;
    v60 = v78;
    if (v57)
    {
      sub_764BC0();

      sub_765260();

      v61 = v69;
      sub_7666A0();
      (*(v59 + 32))(v60, v61, v58);
      v62 = v72;
      sub_758740();
      v63 = v71;
      v64 = v70;
      (*(v71 + 2))(v70, v62, v8);
      v65 = (*(v63 + 11))(v64, v8);
      if (v65 != v52)
      {
        if (v65 == enum case for AppShowcaseType.small(_:) || v65 == enum case for AppShowcaseType.smallAlignedLeft(_:))
        {
          if (qword_93D0F0 != -1)
          {
            swift_once();
          }

          sub_BE38(v58, qword_954F58);
          sub_766650();
        }

        else
        {
          v54(v62, v8);
          v62 = v64;
        }
      }

      v54(v62, v8);
      sub_766660();
      (*(v59 + 8))(v60, v58);
    }
  }

  else
  {
    v66 = v74;
    sub_758740();
    v67 = v76;
    (v53)(v76, v52, v8);
    sub_769430();
    sub_769430();
    if (v87 != v85 || v88 != v86)
    {
      sub_76A950();
    }

    v54(v67, v8);
    v54(v66, v8);
  }
}

void sub_43147C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_431FC8(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
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

void sub_43154C(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v4 = sub_766690();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7652D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v54 = sub_7581D0();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v49 = &v46 - v19;
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  __chkstk_darwin(v23);
  v25 = &v46 - v24;
  sub_134D8(a1, v58);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_758770();
  if (!swift_dynamicCast())
  {
    return;
  }

  v47 = v17;
  v26 = v57;
  v27 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView);
  Strong = swift_unknownObjectWeakLoadStrong();
  v50 = v27;
  v28 = [v2 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();

  sub_758760();
  v29 = sub_764EE0();

  if (v29)
  {
    v46 = v26;
    sub_758740();
    v30 = v56;
    v31 = v54;
    (*(v56 + 32))(v22, v25, v54);
    v32 = (*(v30 + 88))(v22, v31);
    if (v32 != enum case for AppShowcaseType.large(_:) && v32 != enum case for AppShowcaseType.small(_:) && v32 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v56 + 8))(v22, v31);
    }

    sub_7652E0();
    (*(v7 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v6);
    sub_765290();
    v33 = *(v7 + 8);
    v33(v9, v6);
    v33(v12, v6);
    sub_7652B0();
    sub_765330();
    v34 = v50;
    sub_7652E0();
    sub_7591B0();
    [v34 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    sub_759210();
    sub_431FC8(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();

    v33(v15, v6);
  }

  if (!sub_758750())
  {

    return;
  }

  sub_764BC0();

  sub_765260();
  sub_765260();
  v35 = v51;
  sub_7666A0();
  v36 = v49;
  sub_758740();
  v37 = sub_7665F0();
  v38 = v56;
  v39 = v47;
  v40 = v54;
  (*(v56 + 16))(v47, v36, v54);
  v41 = (*(v38 + 88))(v39, v40);
  v42 = Strong;
  if (v41 == enum case for AppShowcaseType.large(_:))
  {
    v43 = v53;
    if (v37)
    {
LABEL_21:
      (*(v56 + 8))(v36, v40);
      goto LABEL_22;
    }

    if (qword_93D0F0 == -1)
    {
LABEL_20:
      sub_BE38(v43, qword_954F58);
      sub_766650();
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  v43 = v53;
  if (v41 == enum case for AppShowcaseType.small(_:) || v41 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_93D0F0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v44 = *(v56 + 8);
  v44(v36, v40);
  v44(v47, v40);
LABEL_22:
  sub_766660();
  sub_765330();
  if (v42)
  {
    type metadata accessor for VideoView(0);
    sub_431FC8(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
    v45 = v42;
    sub_75A050();
  }

  else
  {
    sub_75A060();
  }

  (*(v52 + 8))(v35, v43);
}

void sub_431E00(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_7591D0(v14, v6);

  v7 = *(v3 + v4);
  sub_759210();
  sub_431FC8(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v8 = v7;
  sub_75A0C0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = qword_940590;
    v12 = Strong;
    v11 = [*(Strong + qword_940590) layer];
    [v11 removeAllAnimations];

    [*&v12[v10] setImage:0];
    type metadata accessor for VideoView(0);
    sub_431FC8(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
    sub_75A0C0();
  }
}

uint64_t sub_431FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_432010()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    sub_759210();
    sub_14FA38();
    v11 = v10;
    sub_75A0C0();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_43214C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

id sub_432258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MetricsViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), *(&stru_20.maxprot + (swift_isaMask & *v4)), a4);
  v29.receiver = v4;
  v29.super_class = v5;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v6 = *(v4 + *&stru_68.sectname[swift_isaMask & *v4]);
  [v4 addChildViewController:v6];
  result = [v6 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v4 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  result = [v6 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  [v9 addSubview:result];

  result = [v6 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = [result superview];
  if (v12)
  {
    v13 = v12;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = objc_opt_self();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_77FA60;
    v16 = [v11 leftAnchor];
    v17 = [v13 leftAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v15 + 32) = v18;
    v19 = [v11 rightAnchor];
    v20 = [v13 rightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v15 + 40) = v21;
    v22 = [v11 topAnchor];
    v23 = [v13 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v15 + 48) = v24;
    v25 = [v11 bottomAnchor];
    v26 = [v13 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v15 + 56) = v27;
    sub_43288C();
    isa = sub_769450().super.isa;

    [v14 activateConstraints:isa];
  }

  return [v6 didMoveToParentViewController:v4];
}

void sub_43260C(void *a1)
{
  v4 = a1;
  sub_432258(v4, v1, v2, v3);
}

void sub_432654(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_43285C();
}

id sub_4326C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MetricsViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), *(&stru_20.maxprot + (swift_isaMask & *v4)), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_432734(char *a1)
{
  (*(*(*(&stru_20.filesize + (swift_isaMask & *a1)) - 8) + 8))(&a1[*(&stru_20.nsects + (swift_isaMask & *a1))]);
  v2 = *&a1[*&stru_68.sectname[swift_isaMask & *a1]];
}

unint64_t sub_43288C()
{
  result = qword_942270;
  if (!qword_942270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_942270);
  }

  return result;
}

uint64_t sub_4328D8()
{
  v0 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v0 - 8);
  v22 = &v20 - v1;
  v2 = sub_765900();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v23 = sub_765920();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v21 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = [objc_allocWithZone(NSMutableAttributedString) init];
  if (sub_75A640())
  {
    v15 = sub_7658D0();
    v20 = v5;
    v16 = v15;
    [v14 appendAttributedString:v15];

    v5 = v20;
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  if (sub_75A640())
  {
    v17 = v21;
    sub_765930();

    (*(v9 + 32))(v13, v17, v23);
  }

  else
  {
    (*(v9 + 104))(v13, enum case for Paragraph.Alignment.localized(_:), v23);
  }

  if (sub_75A640())
  {
    sub_765910();

    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    (*(v3 + 104))(v8, enum case for Paragraph.Style.standard(_:), v2);
  }

  if (sub_75A640())
  {
    sub_765890();
  }

  v18 = sub_768AB0();
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  sub_765940();
  swift_allocObject();
  return sub_7658C0();
}

uint64_t sub_432C88()
{
  v0 = sub_75A630();
  v2 = v1;
  if (v1)
  {
    v17._countAndFlagsBits = 0x5F53455441445055;
    v17._object = 0xEF4E4F4953524556;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_75B750(v17, v19);
    sub_BD88(&unk_944E30, &unk_784930);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_77B6D0;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_FA4CC();
    *(v3 + 32) = v0;
    *(v3 + 40) = v2;
    v0 = sub_769270();
    v5 = v4;

    v6 = sub_75A620();
    if ((v7 & 1) == 0)
    {
      v8.super.super.isa = [objc_allocWithZone(NSNumber) initWithLongLong:v6];
      isa = v8.super.super.isa;
      v10 = sub_75D120(v8);
      v12 = v11;

      if (v12)
      {
        sub_BD88(&unk_9562A0, &qword_79B540);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_77E280;
        *(inited + 32) = 0x6E6F6973726576;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = v0;
        *(inited + 56) = v5;
        strcpy((inited + 64), "version_size");
        *(inited + 77) = 0;
        *(inited + 78) = -5120;
        *(inited + 80) = v10;
        *(inited + 88) = v12;
        v14 = sub_10DD04(inited);
        swift_setDeallocating();
        sub_BD88(&qword_95DC30, qword_79F060);
        swift_arrayDestroy();
        v18._object = 0x80000000007E1150;
        v18._countAndFlagsBits = 0xD000000000000017;
        v15._rawValue = v14;
        v0 = sub_75B740(v18, v15);
      }
    }
  }

  return v0;
}

void sub_432E94(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, __n128 a6, double a7, double a8, double a9)
{
  v146 = a5;
  v13 = a6.n128_f64[0];
  v142 = a4;
  v145 = a3;
  v149 = a2;
  v15 = sub_765920();
  v143 = *(v15 - 8);
  v144 = v15;
  __chkstk_darwin(v15);
  v132 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v133 = &v131 - v18;
  __chkstk_darwin(v19);
  v135 = &v131 - v20;
  __chkstk_darwin(v21);
  v131 = &v131 - v22;
  v23 = sub_BD88(&qword_952410, &qword_79A0E0);
  __chkstk_darwin(v23 - 8);
  v137 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v147 = &v131 - v26;
  __chkstk_darwin(v27);
  v136 = &v131 - v28;
  __chkstk_darwin(v29);
  v141 = &v131 - v30;
  v31 = sub_762D10();
  v139 = *(v31 - 8);
  v140 = v31;
  __chkstk_darwin(v31);
  v138 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_76A920();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v37 - 8);
  v39 = &v131 - v38;
  v40 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v40 - 8);
  v42 = &v131 - v41;
  v43 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v43 - 8);
  v45 = &v131 - v44;
  v46 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v46 - 8);
  v48 = &v131 - v47;
  v49 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v49 - 8);
  v51 = &v131 - v50;
  [v9 setLayoutMargins:{v13, a7, a8, a9}];
  v148 = v9;
  v52 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_lockupView];
  v53 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  v54 = sub_758C70();
  (*(*(v54 - 8) + 56))(v48, 1, 1, v54);
  v55 = sub_75BD30();
  (*(*(v55 - 8) + 56))(v45, 1, 1, v55);
  v56 = sub_BD88(&unk_9457F0, qword_783FD0);
  (*(*(v56 - 8) + 56))(v42, 1, 1, v56);
  v57 = sub_765870();
  (*(*(v57 - 8) + 56))(v39, 1, 1, v57);
  sub_4A18A4(a1, v52, v51, v149, 0, 0, v48, v45, v39, v42);
  sub_10A2C(v39, &unk_9457D0, &unk_785630);
  v52[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1FD89C();
  [v52 setNeedsLayout];
  sub_10A2C(v42, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v45, &unk_9457E0, &qword_785640);
  sub_10A2C(v48, &unk_94A780, &unk_788DC0);
  sub_10A2C(v51, &unk_948730, &qword_788DD0);
  v149 = sub_4328D8();
  if (qword_93CD98 != -1)
  {
    swift_once();
  }

  v58 = qword_99D410;
  sub_B170(qword_99D3F8, qword_99D410);
  v59 = v146;
  swift_getObjectType();
  sub_33964(v58);
  sub_766700();
  v60 = *(v34 + 8);
  v60(v36, v33);
  type metadata accessor for SmallLockupView(0);
  v61 = v59;
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v62 = sub_75CF00();
  v63 = sub_BE38(v62, qword_99B898);
  sub_1FE304(v63, v59, 0.0, 0.0);
  v64 = sub_432C88();
  v65 = &selRef_setTextAlignment_;
  if (!v66)
  {
    goto LABEL_8;
  }

  v67 = *&v148[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_versionMetadata];
  v68 = v64;

  v134 = v68;
  v69 = v59;
  v70 = sub_769210();

  [v67 setText:v70];

  v71 = qword_99D410;
  sub_B170(qword_99D3F8, qword_99D410);
  sub_33964(v71);
  sub_766700();
  v60(v36, v33);
  sub_26F08();
  if (qword_93D608 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v72 = sub_7666D0();
    sub_BE38(v72, qword_99EA10);
    v73 = [v69 traitCollection];
    sub_769E10();

    v74 = sub_7653B0();
    v153 = v74;
    v154 = sub_4342DC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v75 = sub_B1B4(&aBlock);
    (*(*(v74 - 8) + 104))(v75, enum case for Feature.measurement_with_labelplaceholder(_:), v74);
    sub_765C30();
    sub_BEB8(&aBlock);
    v76 = v138;
    sub_762D00();
    type metadata accessor for UpdatesLockupCollectionViewCell(0);
    sub_75D650();
    sub_4342DC(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
    v77 = v140;
    sub_7665A0();
    (*(v139 + 8))(v76, v77);
    v61 = v69;
    v65 = &selRef_setTextAlignment_;
LABEL_8:
    type metadata accessor for UpdatesLockupCollectionViewCell(0);
    sub_75D650();
    CGRectGetWidth(v156);
    sub_75D650();
    CGRectGetHeight(v157);
    v78 = sub_7658D0();
    v79 = v65;
    v80 = [v61 v65[23]];
    v81 = v61;
    v82 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v78];
    v83 = [v78 length];
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = v80;
    *(v84 + 32) = v82;
    *(v84 + 40) = 1;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_119AC;
    *(v85 + 24) = v84;
    v154 = sub_2636C;
    v155 = v85;
    aBlock = _NSConcreteStackBlock;
    v151 = 1107296256;
    v152 = sub_10C1C;
    v153 = &unk_891690;
    v86 = _Block_copy(&aBlock);
    v69 = v80;
    v87 = v82;

    [v78 enumerateAttributesInRange:0 options:v83 usingBlock:{0x100000, v86}];

    _Block_release(v86);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if ((v78 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v146 = v87;
  if ((v145 & 1) == 0)
  {
    v97 = v148;
    v112 = *&v148[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
    v113 = v87;
    v114 = v147;
    sub_765930();
    v116 = v143;
    v115 = v144;
    (*(v143 + 56))(v114, 0, 1, v144);
    v117 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v118 = v112[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
    v112[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
    v119 = *&v112[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v120 = v113;
    [v119 setNumberOfLines:0];
    if (v118 != v112[v117])
    {
      sub_1A5974();
    }

    v108 = v120;
    sub_1A532C(v120);
    v112[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 1;
    v121 = v137;
    sub_3B28D4(v147, v137);
    if ((*(v116 + 48))(v121, 1, v115) == 1)
    {
      sub_10A2C(v121, &qword_952410, &qword_79A0E0);
      v111 = v142;
    }

    else
    {
      v122 = v133;
      (*(v116 + 32))(v133, v121, v115);
      v123 = v132;
      (*(v116 + 16))(v132, v122, v115);
      v124 = (*(v116 + 88))(v123, v115);
      if (v124 == enum case for Paragraph.Alignment.left(_:))
      {
        v125 = 0;
        v111 = v142;
      }

      else
      {
        v111 = v142;
        if (v124 == enum case for Paragraph.Alignment.center(_:))
        {
          v125 = 1;
        }

        else if (v124 == enum case for Paragraph.Alignment.right(_:))
        {
          v125 = 2;
        }

        else if (v124 == enum case for Paragraph.Alignment.justified(_:))
        {
          v125 = 3;
        }

        else if (v124 == enum case for Paragraph.Alignment.localized(_:))
        {
          v125 = 4;
        }

        else
        {
          (*(v116 + 8))(v123, v115);
          v125 = 0;
        }
      }

      [v119 setTextAlignment:v125];
      (*(v116 + 8))(v122, v115);
    }

    [v112 setNeedsLayout];
    v109 = v147;
    goto LABEL_45;
  }

  v88 = sub_7658A0();
  v89 = [v81 v79[23]];
  v90 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v88];
  v91 = [v88 length];
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  *(v92 + 24) = v89;
  *(v92 + 32) = v90;
  *(v92 + 40) = 1;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_266A8;
  *(v93 + 24) = v92;
  v154 = sub_26694;
  v155 = v93;
  aBlock = _NSConcreteStackBlock;
  v151 = 1107296256;
  v152 = sub_10C1C;
  v153 = &unk_891708;
  v94 = _Block_copy(&aBlock);
  v95 = v89;
  v96 = v90;

  [v88 enumerateAttributesInRange:0 options:v91 usingBlock:{0x100000, v94}];

  _Block_release(v94);
  LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

  if ((v88 & 1) == 0)
  {
    v97 = v148;
    v98 = *&v148[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_expandableTextView];
    v99 = v96;
    v100 = v141;
    sub_765930();
    v102 = v143;
    v101 = v144;
    (*(v143 + 56))(v100, 0, 1, v144);
    v103 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    v104 = v98[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
    v98[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
    v105 = *&v98[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
    v106 = *&v98[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v107 = v99;
    [v106 setNumberOfLines:v105];
    if (v104 != v98[v103])
    {
      sub_1A5974();
    }

    v108 = v107;
    sub_1A532C(v107);
    v98[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 1;
    v109 = v141;
    v110 = v136;
    sub_3B28D4(v141, v136);
    if ((*(v102 + 48))(v110, 1, v101) == 1)
    {
      sub_10A2C(v110, &qword_952410, &qword_79A0E0);
      v111 = v142;
    }

    else
    {
      v126 = v131;
      (*(v102 + 32))(v131, v110, v101);
      v127 = v135;
      (*(v102 + 16))(v135, v126, v101);
      v128 = (*(v102 + 88))(v127, v101);
      if (v128 == enum case for Paragraph.Alignment.left(_:))
      {
        v129 = 0;
        v111 = v142;
      }

      else
      {
        v111 = v142;
        if (v128 == enum case for Paragraph.Alignment.center(_:))
        {
          v129 = 1;
        }

        else if (v128 == enum case for Paragraph.Alignment.right(_:))
        {
          v129 = 2;
        }

        else if (v128 == enum case for Paragraph.Alignment.justified(_:))
        {
          v129 = 3;
        }

        else if (v128 == enum case for Paragraph.Alignment.localized(_:))
        {
          v129 = 4;
        }

        else
        {
          (*(v102 + 8))(v135, v101);
          v129 = 0;
        }
      }

      [v106 setTextAlignment:v129];
      (*(v102 + 8))(v126, v101);
    }

    [v98 setNeedsLayout];

LABEL_45:
    sub_10A2C(v109, &qword_952410, &qword_79A0E0);
    v97[OBJC_IVAR____TtC18ASMessagesProvider31UpdatesLockupCollectionViewCell_hasSeparator] = v111 & 1;
    sub_35D22C();
    [v97 setNeedsLayout];
    v130 = objc_opt_self();
    [v130 begin];
    [v130 setDisableActions:1];
    [v97 layoutIfNeeded];
    [v130 commit];

    return;
  }

  __break(1u);
}

double sub_4342C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4342DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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